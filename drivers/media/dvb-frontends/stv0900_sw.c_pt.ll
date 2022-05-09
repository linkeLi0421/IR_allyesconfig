; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/stv0900_sw.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/stv0900_sw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.stv0900_internal = type { i32, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x %struct.stv0900_signal_info], [2 x i32], ptr, i8, i8, i8, ptr, i32, i32 }
%struct.stv0900_signal_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.stv0900_state = type { ptr, ptr, ptr, %struct.dvb_frontend, i32 }

@stvdebug = external dso_local local_unnamed_addr global i32, align 4
@stv0900_get_standard._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: standard %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stv0900_get_standard\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/dvb-frontends/stv0900_sw.c\00", [55 x i8] zeroinitializer }, align 32
@stv0900_get_standard._entry_ptr = internal global ptr @stv0900_get_standard._entry, section ".printk_index", align 4
@stv0900_algo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 1819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\017%s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stv0900_algo\00", [19 x i8] zeroinitializer }, align 32
@stv0900_algo._entry_ptr = internal global ptr @stv0900_algo._entry, section ".printk_index", align 4
@stv0900_algo._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 1911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: NO AGC1, POWERI, POWERQ\0A\00", [33 x i8] zeroinitializer }, align 32
@stv0900_algo._entry_ptr.7 = internal global ptr @stv0900_algo._entry.5, section ".printk_index", align 4
@stv0900_set_symbol_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: Mclk %d, SR %d, Dmd %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stv0900_set_symbol_rate\00", [40 x i8] zeroinitializer }, align 32
@stv0900_set_symbol_rate._entry_ptr = internal global ptr @stv0900_set_symbol_rate._entry, section ".printk_index", align 4
@stv0900_set_search_standard._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.10, ptr @.str.2, i32 1713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"stv0900_set_search_standard\00", [36 x i8] zeroinitializer }, align 32
@stv0900_set_search_standard._entry_ptr = internal global ptr @stv0900_set_search_standard._entry, section ".printk_index", align 4
@stv0900_set_search_standard._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 1717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017Search Standard = DVBS1\0A\00", [37 x i8] zeroinitializer }, align 32
@stv0900_set_search_standard._entry_ptr.13 = internal global ptr @stv0900_set_search_standard._entry.11, section ".printk_index", align 4
@stv0900_set_search_standard._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.2, i32 1720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017Search Standard = DSS\0A\00", [39 x i8] zeroinitializer }, align 32
@stv0900_set_search_standard._entry_ptr.16 = internal global ptr @stv0900_set_search_standard._entry.14, section ".printk_index", align 4
@stv0900_set_search_standard._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str.2, i32 1723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017Search Standard = DVBS2\0A\00", [37 x i8] zeroinitializer }, align 32
@stv0900_set_search_standard._entry_ptr.19 = internal global ptr @stv0900_set_search_standard._entry.17, section ".printk_index", align 4
@stv0900_set_search_standard._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.10, ptr @.str.2, i32 1727, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017Search Standard = AUTO\0A\00", [38 x i8] zeroinitializer }, align 32
@stv0900_set_search_standard._entry_ptr.22 = internal global ptr @stv0900_set_search_standard._entry.20, section ".printk_index", align 4
@stv0900_set_viterbi_acq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.23, ptr @.str.2, i32 1699, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stv0900_set_viterbi_acq\00", [40 x i8] zeroinitializer }, align 32
@stv0900_set_viterbi_acq._entry_ptr = internal global ptr @stv0900_set_viterbi_acq._entry, section ".printk_index", align 4
@stv0900_set_viterbi_standard._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: ViterbiStandard = \00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"stv0900_set_viterbi_standard\00", [35 x i8] zeroinitializer }, align 32
@stv0900_set_viterbi_standard._entry_ptr = internal global ptr @stv0900_set_viterbi_standard._entry, section ".printk_index", align 4
@stv0900_set_viterbi_standard._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\017Auto\0A\00", [24 x i8] zeroinitializer }, align 32
@stv0900_set_viterbi_standard._entry_ptr.28 = internal global ptr @stv0900_set_viterbi_standard._entry.26, section ".printk_index", align 4
@stv0900_set_viterbi_standard._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\017DVBS1\0A\00", [23 x i8] zeroinitializer }, align 32
@stv0900_set_viterbi_standard._entry_ptr.31 = internal global ptr @stv0900_set_viterbi_standard._entry.29, section ".printk_index", align 4
@stv0900_set_viterbi_standard._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.2, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\017DSS\0A\00", [25 x i8] zeroinitializer }, align 32
@stv0900_set_viterbi_standard._entry_ptr.34 = internal global ptr @stv0900_set_viterbi_standard._entry.32, section ".printk_index", align 4
@stv0900_set_viterbi_tracq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.35, ptr @.str.2, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stv0900_set_viterbi_tracq\00", [38 x i8] zeroinitializer }, align 32
@stv0900_set_viterbi_tracq._entry_ptr = internal global ptr @stv0900_set_viterbi_tracq._entry, section ".printk_index", align 4
@stv0900_blind_search_algo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.36, ptr @.str.2, i32 1603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stv0900_blind_search_algo\00", [38 x i8] zeroinitializer }, align 32
@stv0900_blind_search_algo._entry_ptr = internal global ptr @stv0900_blind_search_algo._entry, section ".printk_index", align 4
@stv0900_blind_search_algo._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 1620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s agc2_int=%d agc2_th=%d \0A\00", [34 x i8] zeroinitializer }, align 32
@stv0900_blind_search_algo._entry_ptr.39 = internal global ptr @stv0900_blind_search_algo._entry.37, section ".printk_index", align 4
@stv0900_blind_check_agc2_min_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.40, ptr @.str.2, i32 1332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"stv0900_blind_check_agc2_min_level\00", [61 x i8] zeroinitializer }, align 32
@stv0900_blind_check_agc2_min_level._entry_ptr = internal global ptr @stv0900_blind_check_agc2_min_level._entry, section ".printk_index", align 4
@stv0900_search_srate_coarse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 1475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\017lock: I2C_DEMOD_MODE_FIELD =0. Search started. tuner freq=%d agc2=0x%x srate_coarse=%d tmg_cpt=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"stv0900_search_srate_coarse\00", [36 x i8] zeroinitializer }, align 32
@stv0900_search_srate_coarse._entry_ptr = internal global ptr @stv0900_search_srate_coarse._entry, section ".printk_index", align 4
@stv0900_get_symbol_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017lock: srate=%d r0=0x%x r1=0x%x r2=0x%x r3=0x%x \0A\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stv0900_get_symbol_rate\00", [40 x i8] zeroinitializer }, align 32
@stv0900_get_symbol_rate._entry_ptr = internal global ptr @stv0900_get_symbol_rate._entry, section ".printk_index", align 4
@stv0900_get_signal_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 1215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: modcode=0x%x \0A\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stv0900_get_signal_params\00", [38 x i8] zeroinitializer }, align 32
@stv0900_get_signal_params._entry_ptr = internal global ptr @stv0900_get_signal_params._entry, section ".printk_index", align 4
@stv0900_get_signal_params._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 1258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: range %d\0A\00", [16 x i8] zeroinitializer }, align 32
@stv0900_get_signal_params._entry_ptr.49 = internal global ptr @stv0900_get_signal_params._entry.47, section ".printk_index", align 4
@stv0900_get_tuner_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 1161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: Invalid parameter\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stv0900_get_tuner_freq\00", [41 x i8] zeroinitializer }, align 32
@stv0900_get_tuner_freq._entry_ptr = internal global ptr @stv0900_get_tuner_freq._entry, section ".printk_index", align 4
@stv0900_get_tuner_freq._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 1163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: Frequency=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@stv0900_get_tuner_freq._entry_ptr.54 = internal global ptr @stv0900_get_tuner_freq._entry.52, section ".printk_index", align 4
@stv0900_track_optimization._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.55, ptr @.str.2, i32 826, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stv0900_track_optimization\00", [37 x i8] zeroinitializer }, align 32
@stv0900_track_optimization._entry_ptr = internal global ptr @stv0900_track_optimization._entry, section ".printk_index", align 4
@stv0900_track_optimization._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.2, i32 834, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: found DVB-S or DSS\0A\00", [38 x i8] zeroinitializer }, align 32
@stv0900_track_optimization._entry_ptr.58 = internal global ptr @stv0900_track_optimization._entry.56, section ".printk_index", align 4
@stv0900_track_optimization._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.2, i32 859, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: found DVB-S2\0A\00", [44 x i8] zeroinitializer }, align 32
@stv0900_track_optimization._entry_ptr.61 = internal global ptr @stv0900_track_optimization._entry.59, section ".printk_index", align 4
@stv0900_track_optimization._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.55, ptr @.str.2, i32 920, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: found unknown standard\0A\00", [34 x i8] zeroinitializer }, align 32
@stv0900_track_optimization._entry_ptr.64 = internal global ptr @stv0900_track_optimization._entry.62, section ".printk_index", align 4
@stv0900_wait_for_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.65, ptr @.str.2, i32 1065, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stv0900_wait_for_lock\00", [42 x i8] zeroinitializer }, align 32
@stv0900_wait_for_lock._entry_ptr = internal global ptr @stv0900_wait_for_lock._entry, section ".printk_index", align 4
@stv0900_wait_for_lock._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.2, i32 1076, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: Timer = %d, time_out = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@stv0900_wait_for_lock._entry_ptr.68 = internal global ptr @stv0900_wait_for_lock._entry.66, section ".printk_index", align 4
@stv0900_wait_for_lock._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.2, i32 1086, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: DEMOD LOCK OK\0A\00", [43 x i8] zeroinitializer }, align 32
@stv0900_wait_for_lock._entry_ptr.71 = internal global ptr @stv0900_wait_for_lock._entry.69, section ".printk_index", align 4
@stv0900_wait_for_lock._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.65, ptr @.str.2, i32 1088, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: DEMOD LOCK FAIL\0A\00", [41 x i8] zeroinitializer }, align 32
@stv0900_wait_for_lock._entry_ptr.74 = internal global ptr @stv0900_wait_for_lock._entry.72, section ".printk_index", align 4
@stv0900_get_fec_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.75, ptr @.str.2, i32 1025, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stv0900_get_fec_lock\00", [43 x i8] zeroinitializer }, align 32
@stv0900_get_fec_lock._entry_ptr = internal global ptr @stv0900_get_fec_lock._entry, section ".printk_index", align 4
@stv0900_get_fec_lock._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 1051, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: DEMOD FEC LOCK OK\0A\00", [39 x i8] zeroinitializer }, align 32
@stv0900_get_fec_lock._entry_ptr.78 = internal global ptr @stv0900_get_fec_lock._entry.76, section ".printk_index", align 4
@stv0900_get_fec_lock._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.2, i32 1053, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: DEMOD FEC LOCK FAIL\0A\00", [37 x i8] zeroinitializer }, align 32
@stv0900_get_fec_lock._entry_ptr.81 = internal global ptr @stv0900_get_fec_lock._entry.79, section ".printk_index", align 4
@switch.table.stv0900_get_signal_params = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 0, i32 8, i32 8, i32 8, i32 8, i32 1, i32 8, i32 8, i32 2, i32 8, i32 8, i32 4, i32 5, i32 6], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.102 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.103 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.104 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.105 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.108 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.109 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.110 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 5]
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1120, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1819, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1911, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 328, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1713, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1717, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1720, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1723, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1727, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1699, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 693, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 697, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 702, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 728, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 678, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1603, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1620, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1332, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1474, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 304, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1215, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1258, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1161, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1163, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 826, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 834, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 859, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 920, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1065, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1075, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1086, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1088, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1025, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1051, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.345 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.346 = private constant [44 x i8] c"../drivers/media/dvb-frontends/stv0900_sw.c\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1053, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant [39 x i8] c"switch.table.stv0900_get_signal_params\00", align 1
@llvm.compiler.used = appending global [115 x ptr] [ptr @stv0900_algo._entry, ptr @stv0900_algo._entry.5, ptr @stv0900_algo._entry_ptr, ptr @stv0900_algo._entry_ptr.7, ptr @stv0900_blind_check_agc2_min_level._entry, ptr @stv0900_blind_check_agc2_min_level._entry_ptr, ptr @stv0900_blind_search_algo._entry, ptr @stv0900_blind_search_algo._entry.37, ptr @stv0900_blind_search_algo._entry_ptr, ptr @stv0900_blind_search_algo._entry_ptr.39, ptr @stv0900_get_fec_lock._entry, ptr @stv0900_get_fec_lock._entry.76, ptr @stv0900_get_fec_lock._entry.79, ptr @stv0900_get_fec_lock._entry_ptr, ptr @stv0900_get_fec_lock._entry_ptr.78, ptr @stv0900_get_fec_lock._entry_ptr.81, ptr @stv0900_get_signal_params._entry, ptr @stv0900_get_signal_params._entry.47, ptr @stv0900_get_signal_params._entry_ptr, ptr @stv0900_get_signal_params._entry_ptr.49, ptr @stv0900_get_standard._entry, ptr @stv0900_get_standard._entry_ptr, ptr @stv0900_get_symbol_rate._entry, ptr @stv0900_get_symbol_rate._entry_ptr, ptr @stv0900_get_tuner_freq._entry, ptr @stv0900_get_tuner_freq._entry.52, ptr @stv0900_get_tuner_freq._entry_ptr, ptr @stv0900_get_tuner_freq._entry_ptr.54, ptr @stv0900_search_srate_coarse._entry, ptr @stv0900_search_srate_coarse._entry_ptr, ptr @stv0900_set_search_standard._entry, ptr @stv0900_set_search_standard._entry.11, ptr @stv0900_set_search_standard._entry.14, ptr @stv0900_set_search_standard._entry.17, ptr @stv0900_set_search_standard._entry.20, ptr @stv0900_set_search_standard._entry_ptr, ptr @stv0900_set_search_standard._entry_ptr.13, ptr @stv0900_set_search_standard._entry_ptr.16, ptr @stv0900_set_search_standard._entry_ptr.19, ptr @stv0900_set_search_standard._entry_ptr.22, ptr @stv0900_set_symbol_rate._entry, ptr @stv0900_set_symbol_rate._entry_ptr, ptr @stv0900_set_viterbi_acq._entry, ptr @stv0900_set_viterbi_acq._entry_ptr, ptr @stv0900_set_viterbi_standard._entry, ptr @stv0900_set_viterbi_standard._entry.26, ptr @stv0900_set_viterbi_standard._entry.29, ptr @stv0900_set_viterbi_standard._entry.32, ptr @stv0900_set_viterbi_standard._entry_ptr, ptr @stv0900_set_viterbi_standard._entry_ptr.28, ptr @stv0900_set_viterbi_standard._entry_ptr.31, ptr @stv0900_set_viterbi_standard._entry_ptr.34, ptr @stv0900_set_viterbi_tracq._entry, ptr @stv0900_set_viterbi_tracq._entry_ptr, ptr @stv0900_track_optimization._entry, ptr @stv0900_track_optimization._entry.56, ptr @stv0900_track_optimization._entry.59, ptr @stv0900_track_optimization._entry.62, ptr @stv0900_track_optimization._entry_ptr, ptr @stv0900_track_optimization._entry_ptr.58, ptr @stv0900_track_optimization._entry_ptr.61, ptr @stv0900_track_optimization._entry_ptr.64, ptr @stv0900_wait_for_lock._entry, ptr @stv0900_wait_for_lock._entry.66, ptr @stv0900_wait_for_lock._entry.69, ptr @stv0900_wait_for_lock._entry.72, ptr @stv0900_wait_for_lock._entry_ptr, ptr @stv0900_wait_for_lock._entry_ptr.68, ptr @stv0900_wait_for_lock._entry_ptr.71, ptr @stv0900_wait_for_lock._entry_ptr.74, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @switch.table.stv0900_get_signal_params], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_get_standard._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_algo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_algo._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_set_symbol_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_set_search_standard._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_set_search_standard._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_set_search_standard._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_set_search_standard._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_set_search_standard._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_set_viterbi_acq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_set_viterbi_standard._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_set_viterbi_standard._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_set_viterbi_standard._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_set_viterbi_standard._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_set_viterbi_tracq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_blind_search_algo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_blind_search_algo._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_blind_check_agc2_min_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_search_srate_coarse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_get_symbol_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_get_signal_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_get_signal_params._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_get_tuner_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_get_tuner_freq._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_track_optimization._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_track_optimization._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_track_optimization._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_track_optimization._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_wait_for_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_wait_for_lock._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_wait_for_lock._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_wait_for_lock._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_get_fec_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_get_fec_lock._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0900_get_fec_lock._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stv0900_get_signal_params to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @shiftx(i32 noundef %x, i32 noundef %demod, i32 noundef %shift) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %demod)
  %cmp = icmp eq i32 %demod, 1
  %sub = select i1 %cmp, i32 %shift, i32 0
  %retval.0 = sub i32 %x, %sub
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stv0900_check_signal_presence(ptr noundef %intp, i32 noundef %demod) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %demod)
  %cmp.i = icmp eq i32 %demod, 1
  %0 = select i1 %cmp.i, i16 512, i16 0
  %conv = sub nuw nsw i16 -2996, %0
  %call1 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %intp, i16 noundef zeroext %conv) #6
  %conv2 = zext i8 %call1 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %conv4 = sub nuw nsw i16 -2995, %0
  %call5 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %intp, i16 noundef zeroext %conv4) #6
  %conv6 = zext i8 %call5 to i32
  %or = or i32 %shl, %conv6
  %call7 = tail call i32 @ge2comp(i32 noundef %or, i32 noundef 16) #6
  %conv9 = sub nuw nsw i16 -3018, %0
  %call10 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %intp, i16 noundef zeroext %conv9) #6
  %conv11 = zext i8 %call10 to i32
  %shl12 = shl nuw nsw i32 %conv11, 8
  %conv14 = sub nuw nsw i16 -3017, %0
  %call15 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %intp, i16 noundef zeroext %conv14) #6
  %conv16 = zext i8 %call15 to i32
  %or17 = or i32 %shl12, %conv16
  %arrayidx = getelementptr %struct.stv0900_internal, ptr %intp, i32 0, i32 7, i32 %demod
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %div = sdiv i32 %2, 1000
  %div18 = sdiv i32 %2, 10000
  %add = add nsw i32 %div, %div18
  %div19 = sdiv i32 %add, 2
  %mul = shl i32 %div19, 16
  %mclk = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 1
  %3 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mclk, align 4
  %div20 = sdiv i32 %4, 1000
  %div21 = sdiv i32 %mul, %div20
  %5 = tail call i32 @llvm.smin.i32(i32 %div21, i32 16384)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %or17)
  %cmp23 = icmp ugt i32 %or17, 8192
  %mul25 = shl i32 %5, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %mul25)
  %cmp26 = icmp sgt i32 %call7, %mul25
  %or.cond = select i1 %cmp23, i1 true, i1 %cmp26
  %mul29 = mul i32 %5, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %mul29)
  %cmp30 = icmp slt i32 %call7, %mul29
  %or.cond51 = select i1 %or.cond, i1 true, i1 %cmp30
  %no_signal.0 = zext i1 %or.cond51 to i32
  ret i32 %no_signal.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @stv0900_read_reg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ge2comp(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stv0900_get_standard(ptr nocapture noundef readonly %fe, i32 noundef %demod) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %demod)
  %cmp.i = icmp eq i32 %demod, 1
  %sub.i = select i1 %cmp.i, i32 33554432, i32 0
  %retval.0.i = sub nuw nsw i32 -199557024, %sub.i
  %call1 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %retval.0.i) #6
  %4 = zext i8 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %call1, label %sw.default [
    i8 2, label %entry.do.body_crit_edge
    i8 3, label %sw.bb2
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %retval.0.i18 = sub nuw nsw i32 -181206912, %sub.i
  %call4 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %retval.0.i18) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call4)
  %cmp = icmp eq i8 %call4, 1
  %. = select i1 %cmp, i32 2, i32 0
  br label %do.body

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %sw.default, %sw.bb2, %entry.do.body_crit_edge
  %fnd_standard.0 = phi i32 [ 4, %sw.default ], [ 1, %entry.do.body_crit_edge ], [ %., %sw.bb2 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %5 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.body.do.end12_crit_edge, label %do.end

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %fnd_standard.0) #9
  br label %do.end12

do.end12:                                         ; preds = %do.end, %do.body.do.end12_crit_edge
  ret i32 %fnd_standard.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @stv0900_get_bits(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stv0900_algo(ptr noundef %fe) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %demod1 = getelementptr inbounds %struct.stv0900_state, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %demod1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %demod1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %6 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %arrayidx = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 9, i32 %5
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  %sub.i = select i1 %cmp.i, i32 33554432, i32 0
  %retval.0.i = sub nuw nsw i32 -177078271, %sub.i
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i, i8 noundef zeroext 1) #6
  %9 = select i1 %cmp.i, i16 512, i16 0
  %conv = sub nuw nsw i16 -3050, %9
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv, i8 noundef zeroext 92) #6
  %chip_id = getelementptr inbounds %struct.stv0900_internal, ptr %3, i32 0, i32 20
  %10 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %11)
  %cmp = icmp ugt i8 %11, 31
  br i1 %cmp, label %if.then9, label %if.else19

if.then9:                                         ; preds = %do.end4
  %arrayidx10 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 6, i32 %5
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000000, i32 %13)
  %cmp11 = icmp sgt i32 %13, 5000000
  %conv15 = sub nuw nsw i16 -3039, %9
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv15, i8 noundef zeroext -98) #6
  br label %if.end22

if.else:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv15, i8 noundef zeroext -126) #6
  br label %if.end22

if.else19:                                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  %conv21 = sub nuw nsw i16 -3039, %9
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv21, i8 noundef zeroext -120) #6
  br label %if.end22

if.end22:                                         ; preds = %if.else19, %if.else, %if.then13
  %arrayidx24 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 6, i32 %5
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx24, align 4
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cond.i = icmp eq i32 %17, 0
  br i1 %cond.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500001, i32 %15)
  %cmp.i577 = icmp slt i32 %15, 1500001
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000001, i32 %15)
  %cmp1.i = icmp ult i32 %15, 5000001
  %spec.select = select i1 %cmp1.i, i32 1000, i32 700
  %spec.select931 = select i1 %cmp1.i, i32 300, i32 100
  %demod_timeout.0.ph = select i1 %cmp.i577, i32 1500, i32 %spec.select
  %fec_timeout.0.ph = select i1 %cmp.i577, i32 400, i32 %spec.select931
  %arrayidx32 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 5, i32 %5
  %18 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 72000000, ptr %arrayidx32, align 4
  %conv34 = sub nuw nsw i16 -2982, %9
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv34, i8 noundef zeroext -64) #6
  %conv36 = sub nuw nsw i16 -3040, %9
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv36, i8 noundef zeroext 112) #6
  %mclk = getelementptr inbounds %struct.stv0900_internal, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mclk, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %21 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %sw.bb.i.stv0900_set_symbol_rate.exit_crit_edge, label %do.end.i

sw.bb.i.stv0900_set_symbol_rate.exit_crit_edge:   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0900_set_symbol_rate.exit

sw.default.i:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000001, i32 %15)
  %cmp6.i = icmp slt i32 %15, 1000001
  br i1 %cmp6.i, label %sw.default.i.sw.epilog.i_crit_edge, label %if.else8.i

sw.default.i.sw.epilog.i_crit_edge:               ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.else8.i:                                       ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000001, i32 %15)
  %cmp9.i = icmp ult i32 %15, 2000001
  br i1 %cmp9.i, label %if.else8.i.sw.epilog.i_crit_edge, label %if.else11.i

if.else8.i.sw.epilog.i_crit_edge:                 ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.else11.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000001, i32 %15)
  %cmp12.i = icmp ult i32 %15, 5000001
  br i1 %cmp12.i, label %if.else11.i.sw.epilog.i_crit_edge, label %if.else14.i

if.else11.i.sw.epilog.i_crit_edge:                ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.else14.i:                                      ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000001, i32 %15)
  %cmp15.i = icmp ult i32 %15, 10000001
  br i1 %cmp15.i, label %if.else14.i.sw.epilog.i_crit_edge, label %if.else17.i

if.else14.i.sw.epilog.i_crit_edge:                ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.else17.i:                                      ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000001, i32 %15)
  %cmp18.i = icmp ult i32 %15, 20000001
  %..i = select i1 %cmp18.i, i32 400, i32 300
  %.55.i = select i1 %cmp18.i, i32 130, i32 100
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.else17.i, %if.else14.i.sw.epilog.i_crit_edge, %if.else11.i.sw.epilog.i_crit_edge, %if.else8.i.sw.epilog.i_crit_edge, %sw.default.i.sw.epilog.i_crit_edge
  %.sink54.i = phi i32 [ 3000, %sw.default.i.sw.epilog.i_crit_edge ], [ 2500, %if.else8.i.sw.epilog.i_crit_edge ], [ 1000, %if.else11.i.sw.epilog.i_crit_edge ], [ 700, %if.else14.i.sw.epilog.i_crit_edge ], [ %..i, %if.else17.i ]
  %.sink.i = phi i32 [ 1700, %sw.default.i.sw.epilog.i_crit_edge ], [ 1100, %if.else8.i.sw.epilog.i_crit_edge ], [ 550, %if.else11.i.sw.epilog.i_crit_edge ], [ 250, %if.else14.i.sw.epilog.i_crit_edge ], [ %.55.i, %if.else17.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp26.i = icmp eq i32 %17, 2
  %div.i929930932 = zext i1 %cmp26.i to i32
  %demod_timeout.0 = lshr exact i32 %.sink54.i, %div.i929930932
  %conv39 = sub nuw nsw i16 -3049, %9
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv39, i8 noundef zeroext 32) #6
  %conv41 = sub nuw nsw i16 -2992, %9
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv41, i8 noundef zeroext -46) #6
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %23)
  %cmp44 = icmp slt i32 %23, 2000000
  %conv48 = sub nuw nsw i16 -3040, %9
  %. = select i1 %cmp44, i8 99, i8 112
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv48, i8 noundef zeroext %.) #6
  %conv54 = sub nuw nsw i16 -3027, %9
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv54, i8 noundef zeroext 56) #6
  %24 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx24, align 4
  %rolloff = getelementptr inbounds %struct.stv0900_internal, ptr %3, i32 0, i32 2
  %26 = ptrtoint ptr %rolloff to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rolloff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %switch.selectcmp.i = icmp eq i32 %27, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 25, i32 35
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %switch.selectcmp4.i = icmp eq i32 %27, 2
  %switch.select5.i = select i1 %switch.selectcmp4.i, i32 20, i32 %switch.select.i
  %mul.i = mul i32 %switch.select5.i, %25
  %div.i599 = udiv i32 %mul.i, 100
  %add.i = add i32 %div.i599, %25
  %arrayidx59 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 5, i32 %5
  %28 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add.i, ptr %arrayidx59, align 4
  %29 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %30)
  %cmp62 = icmp ugt i8 %30, 31
  %conv66 = sub nuw nsw i16 -2984, %9
  br i1 %cmp62, label %if.then64, label %if.else89

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %20, i32 noundef 1000000, i32 noundef %5) #9
  br label %stv0900_set_symbol_rate.exit

stv0900_set_symbol_rate.exit:                     ; preds = %do.end.i, %sw.bb.i.stv0900_set_symbol_rate.exit_crit_edge
  %shr8.i = lshr i32 %20, 7
  %div9.i = udiv i32 512000000, %shr8.i
  %conv.i = select i1 %cmp.i, i16 -3490, i16 -2978
  %shr17.i = lshr i32 %div9.i, 8
  %31 = trunc i32 %shr17.i to i8
  %conv18.i = and i8 %31, 127
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv.i, i8 noundef zeroext %conv18.i) #6
  %conv20.i = or i16 %conv.i, 1
  %conv22.i = trunc i32 %div9.i to i8
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv20.i, i8 noundef zeroext %conv22.i) #6
  br label %if.end120

if.then64:                                        ; preds = %sw.epilog.i
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv66, i8 noundef zeroext 90) #6
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %33, label %if.then64.if.end101_crit_edge [
    i32 1, label %if.then71
    i32 2, label %if.then83
  ]

if.then64.if.end101_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

if.then71:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx59, align 4
  %37 = mul i32 %36, 15
  %mul = add i32 %37, 150000000
  %div = sdiv i32 %mul, 10
  br label %if.end101.sink.split

if.then83:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx59, align 4
  %add86 = add i32 %39, 10000000
  br label %if.end101.sink.split

if.else89:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv66, i8 noundef zeroext -63) #6
  %40 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx59, align 4
  %42 = mul i32 %41, 15
  %mul97 = add i32 %42, 150000000
  %div100 = sdiv i32 %mul97, 10
  br label %if.end101.sink.split

if.end101.sink.split:                             ; preds = %if.else89, %if.then83, %if.then71
  %div.sink = phi i32 [ %div, %if.then71 ], [ %add86, %if.then83 ], [ %div100, %if.else89 ]
  %43 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %div.sink, ptr %arrayidx59, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.end101.sink.split, %if.then64.if.end101_crit_edge
  %conv103 = sub nuw nsw i16 -2982, %9
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv103, i8 noundef zeroext -63) #6
  %mclk104 = getelementptr inbounds %struct.stv0900_internal, ptr %3, i32 0, i32 1
  %44 = ptrtoint ptr %mclk104 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mclk104, align 4
  %46 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx24, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %48 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i609 = icmp eq i32 %48, 0
  br i1 %tobool.not.i609, label %if.end101.stv0900_set_symbol_rate.exit623_crit_edge, label %do.end.i611

if.end101.stv0900_set_symbol_rate.exit623_crit_edge: ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0900_set_symbol_rate.exit623

do.end.i611:                                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  %call.i610 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %45, i32 noundef %47, i32 noundef %5) #9
  br label %stv0900_set_symbol_rate.exit623

stv0900_set_symbol_rate.exit623:                  ; preds = %do.end.i611, %if.end101.stv0900_set_symbol_rate.exit623_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 60000000, i32 %47)
  %cmp.i612 = icmp ugt i32 %47, 60000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %47)
  %cmp5.i = icmp ugt i32 %47, 6000000
  %..i613 = select i1 %cmp5.i, i32 6, i32 9
  %.42.i = select i1 %cmp5.i, i32 10, i32 7
  %.sink41.i = select i1 %cmp.i612, i32 4, i32 %..i613
  %.sink.i614 = select i1 %cmp.i612, i32 12, i32 %.42.i
  %shl7.i = shl i32 %47, %.sink41.i
  %shr8.i615 = lshr i32 %45, %.sink.i614
  %div9.i616 = udiv i32 %shl7.i, %shr8.i615
  %conv.i618 = select i1 %cmp.i, i16 -3490, i16 -2978
  %shr17.i619 = lshr i32 %div9.i616, 8
  %49 = trunc i32 %shr17.i619 to i8
  %conv18.i620 = and i8 %49, 127
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv.i618, i8 noundef zeroext %conv18.i620) #6
  %conv20.i621 = or i16 %conv.i618, 1
  %conv22.i622 = trunc i32 %div9.i616 to i8
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv20.i621, i8 noundef zeroext %conv22.i622) #6
  %50 = ptrtoint ptr %mclk104 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mclk104, align 4
  %52 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx24, align 4
  %div.i624 = udiv i32 %53, 100
  %mul.i625 = mul i32 %div.i624, 105
  call void @__sanitizer_cov_trace_const_cmp4(i32 60000000, i32 %mul.i625)
  %cmp.i626 = icmp ugt i32 %mul.i625, 60000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %mul.i625)
  %cmp2.i = icmp ugt i32 %mul.i625, 6000000
  %..i627 = select i1 %cmp2.i, i32 6720, i32 53760
  %.55.i628 = select i1 %cmp2.i, i32 10, i32 7
  %.sink54.i629 = select i1 %cmp.i626, i32 1680, i32 %..i627
  %.sink.i630 = select i1 %cmp.i626, i32 12, i32 %.55.i628
  %shl4.i = mul i32 %.sink54.i629, %div.i624
  %shr5.i = lshr i32 %51, %.sink.i630
  %div6.i = udiv i32 %shl4.i, %shr5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %div6.i)
  %cmp12.i631 = icmp ult i32 %div6.i, 32767
  %conv.i633 = select i1 %cmp.i, i16 -3488, i16 -2976
  br i1 %cmp12.i631, label %if.then13.i, label %if.else20.i

if.then13.i:                                      ; preds = %stv0900_set_symbol_rate.exit623
  call void @__sanitizer_cov_trace_pc() #8
  %shr14.i = lshr i32 %div6.i, 8
  %54 = trunc i32 %shr14.i to i8
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv.i633, i8 noundef zeroext %54) #6
  %conv17.i = or i16 %conv.i633, 1
  %conv19.i = trunc i32 %div6.i to i8
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv17.i, i8 noundef zeroext %conv19.i) #6
  br label %stv0900_set_max_symbol_rate.exit

if.else20.i:                                      ; preds = %stv0900_set_symbol_rate.exit623
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv.i633, i8 noundef zeroext 127) #6
  %conv25.i = or i16 %conv.i633, 1
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv25.i, i8 noundef zeroext -1) #6
  br label %stv0900_set_max_symbol_rate.exit

stv0900_set_max_symbol_rate.exit:                 ; preds = %if.else20.i, %if.then13.i
  %55 = ptrtoint ptr %mclk104 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mclk104, align 4
  %57 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx24, align 4
  %div.i634 = udiv i32 %58, 100
  %mul.i635 = mul nuw i32 %div.i634, 95
  call void @__sanitizer_cov_trace_const_cmp4(i32 60000000, i32 %mul.i635)
  %cmp.i636 = icmp ugt i32 %mul.i635, 60000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %mul.i635)
  %cmp2.i637 = icmp ugt i32 %mul.i635, 6000000
  %..i638 = select i1 %cmp2.i637, i32 6080, i32 48640
  %.35.i = select i1 %cmp2.i637, i32 10, i32 7
  %.sink34.i = select i1 %cmp.i636, i32 1520, i32 %..i638
  %.sink.i639 = select i1 %cmp.i636, i32 12, i32 %.35.i
  %shl4.i640 = mul i32 %.sink34.i, %div.i634
  %shr5.i641 = lshr i32 %56, %.sink.i639
  %div6.i642 = udiv i32 %shl4.i640, %shr5.i641
  %conv.i644 = select i1 %cmp.i, i16 -3486, i16 -2974
  %shr12.i = lshr i32 %div6.i642, 8
  %conv13.i = trunc i32 %shr12.i to i8
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv.i644, i8 noundef zeroext %conv13.i) #6
  %conv15.i = or i16 %conv.i644, 1
  %conv17.i645 = trunc i32 %div6.i642 to i8
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv15.i, i8 noundef zeroext %conv17.i645) #6
  %59 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999999, i32 %60)
  %cmp115 = icmp sgt i32 %60, 9999999
  br label %if.end120

if.end120:                                        ; preds = %stv0900_set_max_symbol_rate.exit, %stv0900_set_symbol_rate.exit
  %fec_timeout.0897 = phi i32 [ %fec_timeout.0.ph, %stv0900_set_symbol_rate.exit ], [ %.sink.i, %stv0900_set_max_symbol_rate.exit ]
  %demod_timeout.0895 = phi i32 [ %demod_timeout.0.ph, %stv0900_set_symbol_rate.exit ], [ %demod_timeout.0, %stv0900_set_max_symbol_rate.exit ]
  %cmp230 = phi i1 [ true, %stv0900_set_symbol_rate.exit ], [ %cmp115, %stv0900_set_max_symbol_rate.exit ]
  %arrayidx121 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 8, i32 %5
  %61 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %62)
  %cmp122 = icmp eq i32 %62, 3
  %arrayidx125 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 4, i32 %5
  %63 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx125, align 4
  %arrayidx127 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 5, i32 %5
  %65 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx127, align 4
  br i1 %cmp122, label %if.then124, label %if.else128

if.then124:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stv0900_set_tuner_auto(ptr noundef %3, i32 noundef %64, i32 noundef %66, i32 noundef %5) #6
  br label %if.end133

if.else128:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stv0900_set_tuner(ptr noundef %fe, i32 noundef %64, i32 noundef %66) #6
  br label %if.end133

if.end133:                                        ; preds = %if.else128, %if.then124
  %retval.0.i648 = sub nuw nsw i32 -200408833, %sub.i
  %call135 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %retval.0.i648) #6
  %conv136 = zext i8 %call135 to i32
  %shl = shl nuw nsw i32 %conv136, 8
  %retval.0.i651 = sub nuw nsw i32 -200343297, %sub.i
  %call138 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %retval.0.i651) #6
  %conv139 = zext i8 %call138 to i32
  %add140 = or i32 %shl, %conv139
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add140)
  %cmp141 = icmp eq i32 %add140, 0
  br i1 %cmp141, label %for.cond.preheader, label %if.end133.if.else174_crit_edge

if.end133.if.else174_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else174

for.cond.preheader:                               ; preds = %if.end133
  %retval.0.i654 = sub nuw nsw i32 -200670977, %sub.i
  %retval.0.i657 = sub nuw nsw i32 -200605441, %sub.i
  %call147 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %retval.0.i654) #6
  %conv148 = zext i8 %call147 to i32
  %call150 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %retval.0.i657) #6
  %conv151 = zext i8 %call150 to i32
  %add152 = add nuw nsw i32 %conv151, %conv148
  %div153562 = lshr i32 %add152, 1
  %call147.1 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %retval.0.i654) #6
  %conv148.1 = zext i8 %call147.1 to i32
  %call150.1 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %retval.0.i657) #6
  %conv151.1 = zext i8 %call150.1 to i32
  %add152.1 = add nuw nsw i32 %conv151.1, %conv148.1
  %div153562.1 = lshr i32 %add152.1, 1
  %add154.1 = add nuw nsw i32 %div153562.1, %div153562
  %call147.2 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %retval.0.i654) #6
  %conv148.2 = zext i8 %call147.2 to i32
  %call150.2 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %retval.0.i657) #6
  %conv151.2 = zext i8 %call150.2 to i32
  %add152.2 = add nuw nsw i32 %conv151.2, %conv148.2
  %div153562.2 = lshr i32 %add152.2, 1
  %add154.2 = add nuw nsw i32 %div153562.2, %add154.1
  %call147.3 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %retval.0.i654) #6
  %conv148.3 = zext i8 %call147.3 to i32
  %call150.3 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %retval.0.i657) #6
  %conv151.3 = zext i8 %call150.3 to i32
  %add152.3 = add nuw nsw i32 %conv151.3, %conv148.3
  %div153562.3 = lshr i32 %add152.3, 1
  %add154.3 = add nuw nsw i32 %div153562.3, %add154.2
  %call147.4 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %retval.0.i654) #6
  %conv148.4 = zext i8 %call147.4 to i32
  %call150.4 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %retval.0.i657) #6
  %conv151.4 = zext i8 %call150.4 to i32
  %add152.4 = add nuw nsw i32 %conv151.4, %conv148.4
  %div153562.4 = lshr i32 %add152.4, 1
  %add154.4 = add nuw nsw i32 %div153562.4, %add154.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 150, i32 %add154.4)
  %cmp159 = icmp ult i32 %add154.4, 150
  br i1 %cmp159, label %if.then161, label %for.cond.preheader.if.else174_crit_edge

for.cond.preheader.if.else174_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else174

if.then161:                                       ; preds = %for.cond.preheader
  %arrayidx162 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 15, i32 %5
  %67 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %arrayidx162, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %68 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool164.not = icmp eq i32 %68, 0
  br i1 %tobool164.not, label %if.then161.cleanup_crit_edge, label %do.end168

if.then161.cleanup_crit_edge:                     ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end168:                                        ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #8
  %call170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.else174:                                       ; preds = %for.cond.preheader.if.else174_crit_edge, %if.end133.if.else174_crit_edge
  %retval.0.i660 = sub nuw nsw i32 -200277968, %sub.i
  %arrayidx176 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 11, i32 %5
  %69 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx176, align 4
  %conv177 = trunc i32 %70 to i8
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i660, i8 noundef zeroext %conv177) #6
  %71 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %72)
  %cmp180 = icmp ult i8 %72, 33
  %.946 = select i1 %cmp180, i32 -200278012, i32 -200277888
  %retval.0.i666 = sub nuw nsw i32 %.946, %sub.i
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i666, i8 noundef zeroext 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %73 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i667 = icmp eq i32 %73, 0
  br i1 %tobool.not.i667, label %if.else174.do.end2.i_crit_edge, label %do.end.i669

if.else174.do.end2.i_crit_edge:                   ; preds = %if.else174
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end2.i

do.end.i669:                                      ; preds = %if.else174
  call void @__sanitizer_cov_trace_pc() #8
  %call.i668 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.10) #9
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i669, %if.else174.do.end2.i_crit_edge
  %arrayidx.i = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 10, i32 %5
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i, align 4
  %76 = zext i32 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %75, label %do.body33.i [
    i32 1, label %do.body3.i
    i32 3, label %do.body13.i
    i32 2, label %do.body23.i
  ]

do.body3.i:                                       ; preds = %do.end2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %77 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool4.not.i = icmp eq i32 %77, 0
  br i1 %tobool4.not.i, label %do.body3.i.sw.bb44.i_crit_edge, label %do.body3.i.sw.epilogthread-pre-split.i_crit_edge

do.body3.i.sw.epilogthread-pre-split.i_crit_edge: ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilogthread-pre-split.i

do.body3.i.sw.bb44.i_crit_edge:                   ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb44.i

do.body13.i:                                      ; preds = %do.end2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %78 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool14.not.i = icmp eq i32 %78, 0
  br i1 %tobool14.not.i, label %do.body13.i.sw.bb44.i_crit_edge, label %do.body13.i.sw.epilogthread-pre-split.i_crit_edge

do.body13.i.sw.epilogthread-pre-split.i_crit_edge: ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilogthread-pre-split.i

do.body13.i.sw.bb44.i_crit_edge:                  ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb44.i

do.body23.i:                                      ; preds = %do.end2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %79 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool24.not.i = icmp eq i32 %79, 0
  br i1 %tobool24.not.i, label %do.body23.i.sw.bb53.i_crit_edge, label %do.body23.i.sw.epilogthread-pre-split.i_crit_edge

do.body23.i.sw.epilogthread-pre-split.i_crit_edge: ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilogthread-pre-split.i

do.body23.i.sw.bb53.i_crit_edge:                  ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb53.i

do.body33.i:                                      ; preds = %do.end2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %80 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool34.not.i = icmp eq i32 %80, 0
  br i1 %tobool34.not.i, label %do.body33.i.sw.epilog.i670_crit_edge, label %do.body33.i.sw.epilogthread-pre-split.i_crit_edge

do.body33.i.sw.epilogthread-pre-split.i_crit_edge: ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilogthread-pre-split.i

do.body33.i.sw.epilog.i670_crit_edge:             ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i670

sw.epilogthread-pre-split.i:                      ; preds = %do.body33.i.sw.epilogthread-pre-split.i_crit_edge, %do.body23.i.sw.epilogthread-pre-split.i_crit_edge, %do.body13.i.sw.epilogthread-pre-split.i_crit_edge, %do.body3.i.sw.epilogthread-pre-split.i_crit_edge
  %.str.12.sink.i = phi ptr [ @.str.12, %do.body3.i.sw.epilogthread-pre-split.i_crit_edge ], [ @.str.15, %do.body13.i.sw.epilogthread-pre-split.i_crit_edge ], [ @.str.18, %do.body23.i.sw.epilogthread-pre-split.i_crit_edge ], [ @.str.21, %do.body33.i.sw.epilogthread-pre-split.i_crit_edge ]
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.12.sink.i) #9
  %81 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pr.i = load i32, ptr %arrayidx.i, align 4
  br label %sw.epilog.i670

sw.epilog.i670:                                   ; preds = %sw.epilogthread-pre-split.i, %do.body33.i.sw.epilog.i670_crit_edge
  %82 = phi i32 [ %.pr.i, %sw.epilogthread-pre-split.i ], [ %75, %do.body33.i.sw.epilog.i670_crit_edge ]
  %83 = zext i32 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %82, label %sw.default82.i [
    i32 1, label %sw.epilog.i670.sw.bb44.i_crit_edge
    i32 3, label %sw.epilog.i670.sw.bb44.i_crit_edge951
    i32 2, label %sw.epilog.i670.sw.bb53.i_crit_edge
  ]

sw.epilog.i670.sw.bb53.i_crit_edge:               ; preds = %sw.epilog.i670
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb53.i

sw.epilog.i670.sw.bb44.i_crit_edge951:            ; preds = %sw.epilog.i670
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb44.i

sw.epilog.i670.sw.bb44.i_crit_edge:               ; preds = %sw.epilog.i670
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb44.i

sw.bb44.i:                                        ; preds = %sw.epilog.i670.sw.bb44.i_crit_edge, %sw.epilog.i670.sw.bb44.i_crit_edge951, %do.body13.i.sw.bb44.i_crit_edge, %do.body3.i.sw.bb44.i_crit_edge
  %retval.0.i.i = sub nuw nsw i32 -200015808, %sub.i
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i.i, i8 noundef zeroext 1) #6
  %retval.0.i205.i = sub nuw nsw i32 -200015744, %sub.i
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i205.i, i8 noundef zeroext 0) #6
  %retval.0.i208.i = select i1 %cmp.i, i32 -238878716, i32 -238878718
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i208.i, i8 noundef zeroext 0) #6
  %84 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx24, align 4
  tail call fastcc void @stv0900_set_dvbs1_track_car_loop(ptr noundef %3, i32 noundef %5, i32 noundef %85) #6
  %conv.i672 = select i1 %cmp.i, i16 -3440, i16 -2928
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv.i672, i8 noundef zeroext 34) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %86 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i.i = icmp eq i32 %86, 0
  br i1 %tobool.not.i.i, label %sw.bb44.i.stv0900_set_viterbi_acq.exit.i_crit_edge, label %do.end.i.i

sw.bb44.i.stv0900_set_viterbi_acq.exit.i_crit_edge: ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0900_set_viterbi_acq.exit.i

do.end.i.i:                                       ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.23) #9
  br label %stv0900_set_viterbi_acq.exit.i

stv0900_set_viterbi_acq.exit.i:                   ; preds = %do.end.i.i, %sw.bb44.i.stv0900_set_viterbi_acq.exit.i_crit_edge
  %conv.i.i = select i1 %cmp.i, i16 -3276, i16 -2764
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv.i.i, i8 noundef zeroext -106) #6
  %conv6.i.i = or i16 %conv.i.i, 1
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv6.i.i, i8 noundef zeroext 100) #6
  %conv8.i.i = or i16 %conv.i.i, 2
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv8.i.i, i8 noundef zeroext 54) #6
  %conv10.i.i = or i16 %conv.i.i, 3
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv10.i.i, i8 noundef zeroext 35) #6
  %conv12.i.i = add nuw nsw i16 %conv.i.i, 4
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv12.i.i, i8 noundef zeroext 30) #6
  %conv14.i.i = add nuw nsw i16 %conv.i.i, 5
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv14.i.i, i8 noundef zeroext 25) #6
  %87 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.i, align 4
  %arrayidx52.i = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 14, i32 %5
  %89 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx52.i, align 4
  tail call fastcc void @stv0900_set_viterbi_standard(ptr noundef %3, i32 noundef %88, i32 noundef %90, i32 noundef %5) #6
  br label %stv0900_set_search_standard.exit

sw.bb53.i:                                        ; preds = %sw.epilog.i670.sw.bb53.i_crit_edge, %do.body23.i.sw.bb53.i_crit_edge
  %retval.0.i214.i = sub nuw nsw i32 -200015808, %sub.i
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i214.i, i8 noundef zeroext 0) #6
  %retval.0.i217.i = sub nuw nsw i32 -200015744, %sub.i
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i217.i, i8 noundef zeroext 1) #6
  %retval.0.i220.i = select i1 %cmp.i, i32 -238878716, i32 -238878718
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i220.i, i8 noundef zeroext 1) #6
  %91 = select i1 %cmp.i, i16 512, i16 0
  %conv58.i = sub nuw nsw i16 -3015, %91
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv58.i, i8 noundef zeroext 26) #6
  %conv60.i = sub nuw nsw i16 -3014, %91
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv60.i, i8 noundef zeroext 9) #6
  %92 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %93)
  %cmp.i673 = icmp ult i8 %93, 33
  %conv65.i = sub nuw nsw i16 -2928, %91
  %..i674 = select i1 %cmp.i673, i8 38, i8 102
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv65.i, i8 noundef zeroext %..i674) #6
  %demod_mode.i = getelementptr inbounds %struct.stv0900_internal, ptr %3, i32 0, i32 3
  %94 = ptrtoint ptr %demod_mode.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %demod_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp69.not.i = icmp eq i32 %95, 0
  br i1 %cmp69.not.i, label %if.else79.i, label %if.then71.i

if.then71.i:                                      ; preds = %sw.bb53.i
  %96 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %97)
  %cmp74.i = icmp ult i8 %97, 18
  br i1 %cmp74.i, label %if.then76.i, label %if.else77.i

if.then76.i:                                      ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stv0900_stop_all_s2_modcod(ptr noundef %3, i32 noundef %5) #6
  br label %if.end80.i

if.else77.i:                                      ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stv0900_activate_s2_modcod(ptr noundef %3, i32 noundef %5) #6
  br label %if.end80.i

if.else79.i:                                      ; preds = %sw.bb53.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stv0900_activate_s2_modcod_single(ptr noundef %3, i32 noundef %5) #6
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.else79.i, %if.else77.i, %if.then76.i
  tail call fastcc void @stv0900_set_viterbi_tracq(ptr noundef %3, i32 noundef %5) #6
  br label %stv0900_set_search_standard.exit

sw.default82.i:                                   ; preds = %sw.epilog.i670
  %retval.0.i235.i = sub nuw nsw i32 -200015808, %sub.i
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i235.i, i8 noundef zeroext 1) #6
  %retval.0.i238.i = sub nuw nsw i32 -200015744, %sub.i
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i238.i, i8 noundef zeroext 1) #6
  %retval.0.i241.i = select i1 %cmp.i, i32 -238878716, i32 -238878718
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i241.i, i8 noundef zeroext 0) #6
  %98 = select i1 %cmp.i, i16 512, i16 0
  %conv87.i = sub nuw nsw i16 -3015, %98
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv87.i, i8 noundef zeroext 26) #6
  %conv89.i = sub nuw nsw i16 -3014, %98
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv89.i, i8 noundef zeroext 9) #6
  %99 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx24, align 4
  tail call fastcc void @stv0900_set_dvbs1_track_car_loop(ptr noundef %3, i32 noundef %5, i32 noundef %100) #6
  %101 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %102)
  %cmp94.i = icmp ult i8 %102, 33
  %conv98.i = sub nuw nsw i16 -2928, %98
  %.256.i = select i1 %cmp94.i, i8 38, i8 102
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv98.i, i8 noundef zeroext %.256.i) #6
  %demod_mode103.i = getelementptr inbounds %struct.stv0900_internal, ptr %3, i32 0, i32 3
  %103 = ptrtoint ptr %demod_mode103.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %demod_mode103.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp104.not.i = icmp eq i32 %104, 0
  br i1 %cmp104.not.i, label %if.else114.i, label %if.then106.i

if.then106.i:                                     ; preds = %sw.default82.i
  %105 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %106)
  %cmp109.i = icmp ult i8 %106, 18
  br i1 %cmp109.i, label %if.then111.i, label %if.else112.i

if.then111.i:                                     ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stv0900_stop_all_s2_modcod(ptr noundef %3, i32 noundef %5) #6
  br label %if.end115.i

if.else112.i:                                     ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stv0900_activate_s2_modcod(ptr noundef %3, i32 noundef %5) #6
  br label %if.end115.i

if.else114.i:                                     ; preds = %sw.default82.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stv0900_activate_s2_modcod_single(ptr noundef %3, i32 noundef %5) #6
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.else114.i, %if.else112.i, %if.then111.i
  tail call fastcc void @stv0900_set_viterbi_tracq(ptr noundef %3, i32 noundef %5) #6
  %107 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx.i, align 4
  %arrayidx119.i = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 14, i32 %5
  %109 = ptrtoint ptr %arrayidx119.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx119.i, align 4
  tail call fastcc void @stv0900_set_viterbi_standard(ptr noundef %3, i32 noundef %108, i32 noundef %110, i32 noundef %5) #6
  br label %stv0900_set_search_standard.exit

stv0900_set_search_standard.exit:                 ; preds = %if.end115.i, %if.end80.i, %stv0900_set_viterbi_acq.exit.i
  %111 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp189.not = icmp eq i32 %112, 0
  br i1 %cmp189.not, label %stv0900_set_search_standard.exit.if.end197_crit_edge, label %if.then191

stv0900_set_search_standard.exit.if.end197_crit_edge: ; preds = %stv0900_set_search_standard.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end197

if.then191:                                       ; preds = %stv0900_set_search_standard.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stv0900_start_search(ptr noundef %3, i32 noundef %5) #6
  br label %if.end197

if.end197:                                        ; preds = %if.then191, %stv0900_set_search_standard.exit.if.end197_crit_edge
  %113 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %114)
  %cmp200 = icmp eq i8 %114, 18
  br i1 %cmp200, label %if.then202, label %if.end197.if.end206_crit_edge

if.end197.if.end206_crit_edge:                    ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end206

if.then202:                                       ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i, i8 noundef zeroext 0) #6
  tail call void @msleep(i32 noundef 3) #6
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i, i8 noundef zeroext 1) #6
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i, i8 noundef zeroext 0) #6
  br label %if.end206

if.end206:                                        ; preds = %if.then202, %if.end197.if.end206_crit_edge
  %115 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %8, label %if.end206.cleanup_crit_edge [
    i32 0, label %if.then209
    i32 1, label %if.then214
    i32 2, label %if.then219
  ]

if.end206.cleanup_crit_edge:                      ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then209:                                       ; preds = %if.end206
  %116 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %demodulator_priv, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %demod1.i = getelementptr inbounds %struct.stv0900_state, ptr %117, i32 0, i32 4
  %120 = ptrtoint ptr %demod1.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %demod1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %122 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool.not.i684 = icmp eq i32 %122, 0
  br i1 %tobool.not.i684, label %if.then209.do.end4.i_crit_edge, label %do.end.i686

if.then209.do.end4.i_crit_edge:                   ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i

do.end.i686:                                      ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #8
  %call.i685 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.36) #9
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i686, %if.then209.do.end4.i_crit_edge
  %chip_id.i687 = getelementptr inbounds %struct.stv0900_internal, ptr %119, i32 0, i32 20
  %123 = ptrtoint ptr %chip_id.i687 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %chip_id.i687, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %124)
  %cmp.i688 = icmp ult i8 %124, 32
  %..i689 = select i1 %cmp.i688, i8 -23, i8 110
  %.210.i = select i1 %cmp.i688, i32 143, i32 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %124)
  %cmp10.i = icmp ult i8 %124, 33
  %agc2_th.0.i = select i1 %cmp10.i, i32 700, i32 1400
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %125 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool.not.i.i690 = icmp eq i32 %125, 0
  br i1 %tobool.not.i.i690, label %do.end4.i.do.end3.i.i_crit_edge, label %do.end.i.i691

do.end4.i.do.end3.i.i_crit_edge:                  ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i.i

do.end.i.i691:                                    ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.40) #9
  br label %do.end3.i.i

do.end3.i.i:                                      ; preds = %do.end.i.i691, %do.end4.i.do.end3.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %121)
  %cmp.i.i.i = icmp eq i32 %121, 1
  %126 = select i1 %cmp.i.i.i, i16 512, i16 0
  %conv.i.i692 = sub nuw nsw i16 -3027, %126
  tail call void @stv0900_write_reg(ptr noundef %119, i16 noundef zeroext %conv.i.i692, i8 noundef zeroext 56) #6
  %sub.i107.i.i = select i1 %cmp.i.i.i, i32 33554432, i32 0
  %retval.0.i108.i.i = sub nuw nsw i32 -200015856, %sub.i107.i.i
  tail call void @stv0900_write_bits(ptr noundef %119, i32 noundef %retval.0.i108.i.i, i8 noundef zeroext 0) #6
  %retval.0.i111.i.i = sub nuw nsw i32 -200015864, %sub.i107.i.i
  tail call void @stv0900_write_bits(ptr noundef %119, i32 noundef %retval.0.i111.i.i, i8 noundef zeroext 0) #6
  %retval.0.i114.i.i = sub nuw nsw i32 -195035008, %sub.i107.i.i
  tail call void @stv0900_write_bits(ptr noundef %119, i32 noundef %retval.0.i114.i.i, i8 noundef zeroext 1) #6
  %retval.0.i117.i.i = sub nuw nsw i32 -194903936, %sub.i107.i.i
  tail call void @stv0900_write_bits(ptr noundef %119, i32 noundef %retval.0.i117.i.i, i8 noundef zeroext 1) #6
  %conv10.i.i693 = sub nuw nsw i16 -3049, %126
  tail call void @stv0900_write_reg(ptr noundef %119, i16 noundef zeroext %conv10.i.i693, i8 noundef zeroext 0) #6
  %mclk.i.i = getelementptr inbounds %struct.stv0900_internal, ptr %119, i32 0, i32 1
  %127 = ptrtoint ptr %mclk.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %mclk.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %129 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool.not.i.i.i = icmp eq i32 %129, 0
  br i1 %tobool.not.i.i.i, label %do.end3.i.i.stv0900_set_symbol_rate.exit.i.i_crit_edge, label %do.end.i.i.i

do.end3.i.i.stv0900_set_symbol_rate.exit.i.i_crit_edge: ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0900_set_symbol_rate.exit.i.i

do.end.i.i.i:                                     ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %128, i32 noundef 1000000, i32 noundef %121) #9
  br label %stv0900_set_symbol_rate.exit.i.i

stv0900_set_symbol_rate.exit.i.i:                 ; preds = %do.end.i.i.i, %do.end3.i.i.stv0900_set_symbol_rate.exit.i.i_crit_edge
  %shr8.i.i.i = lshr i32 %128, 7
  %div9.i.i.i = udiv i32 512000000, %shr8.i.i.i
  %conv.i.i.i = select i1 %cmp.i.i.i, i16 -3490, i16 -2978
  %shr17.i.i.i = lshr i32 %div9.i.i.i, 8
  %130 = trunc i32 %shr17.i.i.i to i8
  %conv18.i.i.i = and i8 %130, 127
  tail call void @stv0900_write_reg(ptr noundef %119, i16 noundef zeroext %conv.i.i.i, i8 noundef zeroext %conv18.i.i.i) #6
  %conv20.i.i.i = or i16 %conv.i.i.i, 1
  %conv22.i.i.i = trunc i32 %div9.i.i.i to i8
  tail call void @stv0900_write_reg(ptr noundef %119, i16 noundef zeroext %conv20.i.i.i, i8 noundef zeroext %conv22.i.i.i) #6
  %arrayidx.i.i = getelementptr %struct.stv0900_internal, ptr %119, i32 0, i32 7, i32 %121
  %131 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx.i.i, align 4
  %div.i.i = sdiv i32 %132, 1000000
  %133 = trunc i32 %div.i.i to i16
  %div11.lhs.trunc.i.i = add nsw i16 %133, -1
  %div11139.i.i = sdiv i16 %div11.lhs.trunc.i.i, 2
  %div11.sext.i.i = sext i16 %div11139.i.i to i32
  %mul.i.i = shl nsw i32 %div11.sext.i.i, 1
  %add12.i.i = or i32 %mul.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add12.i.i)
  %cmp.i.i694 = icmp slt i32 %add12.i.i, 0
  %spec.store.select.i.i = select i1 %cmp.i.i694, i32 1, i32 %add12.i.i
  %134 = ptrtoint ptr %mclk.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %mclk.i.i, align 4
  %shr.i.i = ashr i32 %135, 8
  %div17.i.i = sdiv i32 256000000, %shr.i.i
  %conv29.i.i = sub nuw nsw i16 -3050, %126
  %conv31.i.i = sub nuw nsw i16 -3000, %126
  %conv35.i.i = sub nuw nsw i16 -2999, %126
  %conv45.i.i = sub nuw nsw i16 -3018, %126
  %conv49.i.i = sub nuw nsw i16 -3017, %126
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %stv0900_set_symbol_rate.exit.i.i
  %minagc2level.0146.i.i = phi i32 [ 65535, %stv0900_set_symbol_rate.exit.i.i ], [ %137, %for.body.i.i.for.body.i.i_crit_edge ]
  %direction.0145.i.i = phi i32 [ 1, %stv0900_set_symbol_rate.exit.i.i ], [ %mul27.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %i.0144.i.i = phi i32 [ 0, %stv0900_set_symbol_rate.exit.i.i ], [ %inc59.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %init_freq.0143.i.i = phi i32 [ 0, %stv0900_set_symbol_rate.exit.i.i ], [ %init_freq.1.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direction.0145.i.i)
  %cmp20.i.i = icmp sgt i32 %direction.0145.i.i, 0
  %mul23.i.i = mul i32 %i.0144.i.i, %div17.i.i
  %136 = sub i32 0, %mul23.i.i
  %init_freq.1.p.i.i = select i1 %cmp20.i.i, i32 %mul23.i.i, i32 %136
  %init_freq.1.i.i = add i32 %init_freq.1.p.i.i, %init_freq.0143.i.i
  tail call void @stv0900_write_reg(ptr noundef %119, i16 noundef zeroext %conv29.i.i, i8 noundef zeroext 92) #6
  %shr32.i.i = lshr i32 %init_freq.1.i.i, 8
  %conv33.i.i = trunc i32 %shr32.i.i to i8
  tail call void @stv0900_write_reg(ptr noundef %119, i16 noundef zeroext %conv31.i.i, i8 noundef zeroext %conv33.i.i) #6
  %conv37.i.i = trunc i32 %init_freq.1.i.i to i8
  tail call void @stv0900_write_reg(ptr noundef %119, i16 noundef zeroext %conv35.i.i, i8 noundef zeroext %conv37.i.i) #6
  tail call void @stv0900_write_reg(ptr noundef %119, i16 noundef zeroext %conv29.i.i, i8 noundef zeroext 88) #6
  tail call void @msleep(i32 noundef 10) #6
  %call46.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %119, i16 noundef zeroext %conv45.i.i) #6
  %conv47.i.i = zext i8 %call46.i.i to i32
  %shl.i.i = shl nuw nsw i32 %conv47.i.i, 8
  %call50.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %119, i16 noundef zeroext %conv49.i.i) #6
  %conv51.i.i = zext i8 %call50.i.i to i32
  %call46.1.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %119, i16 noundef zeroext %conv45.i.i) #6
  %conv47.1.i.i = zext i8 %call46.1.i.i to i32
  %call50.1.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %119, i16 noundef zeroext %conv49.i.i) #6
  %conv51.1.i.i = zext i8 %call50.1.i.i to i32
  %call46.2.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %119, i16 noundef zeroext %conv45.i.i) #6
  %conv47.2.i.i = zext i8 %call46.2.i.i to i32
  %call50.2.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %119, i16 noundef zeroext %conv49.i.i) #6
  %conv51.2.i.i = zext i8 %call50.2.i.i to i32
  %call46.3.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %119, i16 noundef zeroext %conv45.i.i) #6
  %conv47.3.i.i = zext i8 %call46.3.i.i to i32
  %call50.3.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %119, i16 noundef zeroext %conv49.i.i) #6
  %conv51.3.i.i = zext i8 %call50.3.i.i to i32
  %call46.4.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %119, i16 noundef zeroext %conv45.i.i) #6
  %conv47.4.i.i = zext i8 %call46.4.i.i to i32
  %call50.4.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %119, i16 noundef zeroext %conv49.i.i) #6
  %conv51.4.i.i = zext i8 %call50.4.i.i to i32
  %call46.5.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %119, i16 noundef zeroext %conv45.i.i) #6
  %conv47.5.i.i = zext i8 %call46.5.i.i to i32
  %call50.5.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %119, i16 noundef zeroext %conv49.i.i) #6
  %conv51.5.i.i = zext i8 %call50.5.i.i to i32
  %call46.6.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %119, i16 noundef zeroext %conv45.i.i) #6
  %conv47.6.i.i = zext i8 %call46.6.i.i to i32
  %call50.6.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %119, i16 noundef zeroext %conv49.i.i) #6
  %conv51.6.i.i = zext i8 %call50.6.i.i to i32
  %call46.7.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %119, i16 noundef zeroext %conv45.i.i) #6
  %conv47.7.i.i = zext i8 %call46.7.i.i to i32
  %call50.7.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %119, i16 noundef zeroext %conv49.i.i) #6
  %conv51.7.i.i = zext i8 %call50.7.i.i to i32
  %call46.8.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %119, i16 noundef zeroext %conv45.i.i) #6
  %conv47.8.i.i = zext i8 %call46.8.i.i to i32
  %call50.8.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %119, i16 noundef zeroext %conv49.i.i) #6
  %conv51.8.i.i = zext i8 %call50.8.i.i to i32
  %call46.9.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %119, i16 noundef zeroext %conv45.i.i) #6
  %conv47.9.i.i = zext i8 %call46.9.i.i to i32
  %call50.9.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %119, i16 noundef zeroext %conv49.i.i) #6
  %conv51.9.i.i = zext i8 %call50.9.i.i to i32
  %reass.add.i = add nuw nsw i32 %conv47.2.i.i, %conv47.1.i.i
  %reass.add292.i = add nuw nsw i32 %reass.add.i, %conv47.3.i.i
  %reass.add293.i = add nuw nsw i32 %reass.add292.i, %conv47.4.i.i
  %reass.add294.i = add nuw nsw i32 %reass.add293.i, %conv47.5.i.i
  %reass.add295.i = add nuw nsw i32 %reass.add294.i, %conv47.6.i.i
  %reass.add296.i = add nuw nsw i32 %reass.add295.i, %conv47.7.i.i
  %reass.add297.i = add nuw nsw i32 %reass.add296.i, %conv47.8.i.i
  %reass.add298.i = add nuw nsw i32 %reass.add297.i, %conv47.9.i.i
  %reass.mul.i = shl nuw nsw i32 %reass.add298.i, 8
  %add52.4.i.i = or i32 %shl.i.i, %conv51.i.i
  %or.5.i.i = add nuw nsw i32 %add52.4.i.i, %conv51.1.i.i
  %add52.5.i.i = add nuw nsw i32 %or.5.i.i, %conv51.2.i.i
  %or.6.i.i = add nuw nsw i32 %add52.5.i.i, %conv51.3.i.i
  %add52.6.i.i = add nuw nsw i32 %or.6.i.i, %conv51.4.i.i
  %or.7.i.i = add i32 %add52.6.i.i, %conv51.5.i.i
  %add52.7.i.i = add i32 %or.7.i.i, %conv51.6.i.i
  %or.8.i.i = add i32 %add52.7.i.i, %conv51.7.i.i
  %add52.8.i.i = add i32 %or.8.i.i, %conv51.8.i.i
  %or.9.i.i = add i32 %add52.8.i.i, %conv51.9.i.i
  %add52.9.i.i = add i32 %or.9.i.i, %reass.mul.i
  %mul27.i.i = sub i32 0, %direction.0145.i.i
  %div53.i.i = udiv i32 %add52.9.i.i, 10
  %137 = tail call i32 @llvm.umin.i32(i32 %div53.i.i, i32 %minagc2level.0146.i.i) #6
  %inc59.i.i = add nuw nsw i32 %i.0144.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc59.i.i, %spec.store.select.i.i
  br i1 %exitcond.not.i.i, label %stv0900_blind_check_agc2_min_level.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

stv0900_blind_check_agc2_min_level.exit.i:        ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %138 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool17.not.i = icmp eq i32 %138, 0
  %.pre.i = and i32 %137, 65535
  br i1 %tobool17.not.i, label %stv0900_blind_check_agc2_min_level.exit.i.do.end27.i_crit_edge, label %do.end21.i

stv0900_blind_check_agc2_min_level.exit.i.do.end27.i_crit_edge: ; preds = %stv0900_blind_check_agc2_min_level.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end27.i

do.end21.i:                                       ; preds = %stv0900_blind_check_agc2_min_level.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, i32 noundef %.pre.i, i32 noundef %agc2_th.0.i) #9
  br label %do.end27.i

do.end27.i:                                       ; preds = %do.end21.i, %stv0900_blind_check_agc2_min_level.exit.i.do.end27.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %agc2_th.0.i, i32 %.pre.i)
  %cmp29.i = icmp ult i32 %agc2_th.0.i, %.pre.i
  br i1 %cmp29.i, label %do.end27.i.land.lhs.true226_crit_edge, label %if.end32.i

do.end27.i.land.lhs.true226_crit_edge:            ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true226

if.end32.i:                                       ; preds = %do.end27.i
  %139 = ptrtoint ptr %chip_id.i687 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %chip_id.i687, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %140)
  %cmp35.i = icmp eq i8 %140, 16
  br i1 %cmp35.i, label %if.then37.i, label %if.end32.i.if.end40.i_crit_edge

if.end32.i.if.end40.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

if.then37.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv39.i = select i1 %cmp.i.i.i, i16 -3550, i16 -3038
  tail call void @stv0900_write_reg(ptr noundef %119, i16 noundef zeroext %conv39.i, i8 noundef zeroext -86) #6
  %141 = ptrtoint ptr %chip_id.i687 to i32
  call void @__asan_load1_noabort(i32 %141)
  %.pr.i695 = load i8, ptr %chip_id.i687, align 2
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then37.i, %if.end32.i.if.end40.i_crit_edge
  %142 = phi i8 [ %.pr.i695, %if.then37.i ], [ %140, %if.end32.i.if.end40.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %142)
  %cmp43.i = icmp ult i8 %142, 32
  %conv47.i = select i1 %cmp.i.i.i, i16 -3522, i16 -3010
  %.306.i = select i1 %cmp43.i, i8 85, i8 32
  tail call void @stv0900_write_reg(ptr noundef %119, i16 noundef zeroext %conv47.i, i8 noundef zeroext %.306.i) #6
  %143 = ptrtoint ptr %chip_id.i687 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %chip_id.i687, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %144)
  %cmp54.i = icmp ult i8 %144, 33
  %.sink305.i = select i1 %cmp54.i, i8 -60, i8 6
  %conv61.i = select i1 %cmp.i.i.i, i16 -3528, i16 -3016
  tail call void @stv0900_write_reg(ptr noundef %119, i16 noundef zeroext %conv61.i, i8 noundef zeroext %.sink305.i) #6
  %conv64.i = sub nuw nsw i16 -2990, %126
  tail call void @stv0900_write_reg(ptr noundef %119, i16 noundef zeroext %conv64.i, i8 noundef zeroext 68) #6
  %145 = ptrtoint ptr %chip_id.i687 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %chip_id.i687, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %146)
  %cmp67.i = icmp ugt i8 %146, 31
  br i1 %cmp67.i, label %if.then69.i, label %if.end40.i.if.end78.i_crit_edge

if.end40.i.if.end78.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78.i

if.then69.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv71.i = sub nuw nsw i16 -2961, %126
  tail call void @stv0900_write_reg(ptr noundef %119, i16 noundef zeroext %conv71.i, i8 noundef zeroext 65) #6
  %conv73.i = sub nuw nsw i16 -2856, %126
  tail call void @stv0900_write_reg(ptr noundef %119, i16 noundef zeroext %conv73.i, i8 noundef zeroext 65) #6
  %conv75.i = sub nuw nsw i16 -2766, %126
  tail call void @stv0900_write_reg(ptr noundef %119, i16 noundef zeroext %conv75.i, i8 noundef zeroext -126) #6
  %conv77.i = sub nuw nsw i16 -2755, %126
  tail call void @stv0900_write_reg(ptr noundef %119, i16 noundef zeroext %conv77.i, i8 noundef zeroext 0) #6
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.then69.i, %if.end40.i.if.end78.i_crit_edge
  %conv81.i = sub nuw nsw i16 -2984, %126
  %conv111.i = sub nuw nsw i16 -3053, %126
  br label %do.body79.i

do.body79.i:                                      ; preds = %if.end129.i.do.body79.i_crit_edge, %if.end78.i
  %k_ref_tmg.0.i = phi i8 [ %..i689, %if.end78.i ], [ %sub.i700, %if.end129.i.do.body79.i_crit_edge ]
  tail call void @stv0900_write_reg(ptr noundef %119, i16 noundef zeroext %conv81.i, i8 noundef zeroext %k_ref_tmg.0.i) #6
  %147 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %demodulator_priv, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %148, align 4
  %demod1.i.i = getelementptr inbounds %struct.stv0900_state, ptr %148, i32 0, i32 4
  %151 = ptrtoint ptr %demod1.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %demod1.i.i, align 4
  %chip_id.i.i = getelementptr inbounds %struct.stv0900_internal, ptr %150, i32 0, i32 20
  %153 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %chip_id.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %154)
  %cmp.i245.i = icmp ugt i8 %154, 47
  %..i.i = select i1 %cmp.i245.i, i32 11776, i32 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %152)
  %cmp.i.i246.i = icmp eq i32 %152, 1
  %sub.i.i.i = select i1 %cmp.i.i246.i, i32 33554432, i32 0
  %retval.0.i.i.i = sub nuw nsw i32 -199884769, %sub.i.i.i
  tail call void @stv0900_write_bits(ptr noundef %150, i32 noundef %retval.0.i.i.i, i8 noundef zeroext 31) #6
  %155 = select i1 %cmp.i.i246.i, i16 512, i16 0
  %conv4.i.i = sub nuw nsw i16 -2992, %155
  tail call void @stv0900_write_reg(ptr noundef %150, i16 noundef zeroext %conv4.i.i, i8 noundef zeroext 18) #6
  %conv6.i.i696 = sub nuw nsw i16 -2989, %155
  tail call void @stv0900_write_reg(ptr noundef %150, i16 noundef zeroext %conv6.i.i696, i8 noundef zeroext -16) #6
  %conv8.i.i697 = sub nuw nsw i16 -2988, %155
  tail call void @stv0900_write_reg(ptr noundef %150, i16 noundef zeroext %conv8.i.i697, i8 noundef zeroext -32) #6
  %retval.0.i279.i.i = sub nuw nsw i32 -200015856, %sub.i.i.i
  tail call void @stv0900_write_bits(ptr noundef %150, i32 noundef %retval.0.i279.i.i, i8 noundef zeroext 1) #6
  %retval.0.i282.i.i = sub nuw nsw i32 -200015864, %sub.i.i.i
  tail call void @stv0900_write_bits(ptr noundef %150, i32 noundef %retval.0.i282.i.i, i8 noundef zeroext 1) #6
  %conv12.i.i698 = sub nuw nsw i16 -2976, %155
  tail call void @stv0900_write_reg(ptr noundef %150, i16 noundef zeroext %conv12.i.i698, i8 noundef zeroext -125) #6
  %conv14.i.i699 = sub nuw nsw i16 -2975, %155
  tail call void @stv0900_write_reg(ptr noundef %150, i16 noundef zeroext %conv14.i.i699, i8 noundef zeroext -64) #6
  %conv16.i.i = sub nuw nsw i16 -2974, %155
  tail call void @stv0900_write_reg(ptr noundef %150, i16 noundef zeroext %conv16.i.i, i8 noundef zeroext -126) #6
  %conv18.i.i = sub nuw nsw i16 -2973, %155
  tail call void @stv0900_write_reg(ptr noundef %150, i16 noundef zeroext %conv18.i.i, i8 noundef zeroext -96) #6
  %conv20.i.i = sub nuw nsw i16 -3049, %155
  tail call void @stv0900_write_reg(ptr noundef %150, i16 noundef zeroext %conv20.i.i, i8 noundef zeroext 0) #6
  %conv22.i.i = sub nuw nsw i16 -3027, %155
  tail call void @stv0900_write_reg(ptr noundef %150, i16 noundef zeroext %conv22.i.i, i8 noundef zeroext 80) #6
  %156 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %chip_id.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %157)
  %cmp25.i.i = icmp ugt i8 %157, 47
  br i1 %cmp25.i.i, label %if.then27.i.i, label %if.else32.i.i

if.then27.i.i:                                    ; preds = %do.body79.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv29.i247.i = sub nuw nsw i16 -3011, %155
  tail call void @stv0900_write_reg(ptr noundef %150, i16 noundef zeroext %conv29.i247.i, i8 noundef zeroext -103) #6
  br label %if.end48.i.i

if.else32.i.i:                                    ; preds = %do.body79.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %157)
  %cmp35.i.i = icmp ugt i8 %157, 31
  %conv39.i.i = sub nuw nsw i16 -3011, %155
  br i1 %cmp35.i.i, label %if.then37.i.i, label %if.else42.i.i

if.then37.i.i:                                    ; preds = %if.else32.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stv0900_write_reg(ptr noundef %150, i16 noundef zeroext %conv39.i.i, i8 noundef zeroext 106) #6
  br label %if.end48.i.i

if.else42.i.i:                                    ; preds = %if.else32.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stv0900_write_reg(ptr noundef %150, i16 noundef zeroext %conv39.i.i, i8 noundef zeroext -19) #6
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.else42.i.i, %if.then37.i.i, %if.then27.i.i
  %.sink.i.i = phi i8 [ -107, %if.then37.i.i ], [ 115, %if.else42.i.i ], [ -104, %if.then27.i.i ]
  %conv41.i.i = sub nuw nsw i16 -2983, %155
  tail call void @stv0900_write_reg(ptr noundef %150, i16 noundef zeroext %conv41.i.i, i8 noundef zeroext %.sink.i.i) #6
  %arrayidx.i248.i = getelementptr %struct.stv0900_internal, ptr %150, i32 0, i32 6, i32 %152
  %158 = ptrtoint ptr %arrayidx.i248.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx.i248.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000001, i32 %159)
  %cmp49.i.i = icmp slt i32 %159, 2000001
  br i1 %cmp49.i.i, label %if.end48.i.i.if.end67.i.i_crit_edge, label %if.else52.i.i

if.end48.i.i.if.end67.i.i_crit_edge:              ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67.i.i

if.else52.i.i:                                    ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000001, i32 %159)
  %cmp55.i.i = icmp ult i32 %159, 5000001
  br i1 %cmp55.i.i, label %if.else52.i.i.if.end67.i.i_crit_edge, label %if.else58.i.i

if.else52.i.i.if.end67.i.i_crit_edge:             ; preds = %if.else52.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67.i.i

if.else58.i.i:                                    ; preds = %if.else52.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000001, i32 %159)
  %cmp61.i.i = icmp ult i32 %159, 12000001
  %.264.i.i = select i1 %cmp61.i.i, i32 3000, i32 5000
  br label %if.end67.i.i

if.end67.i.i:                                     ; preds = %if.else58.i.i, %if.else52.i.i.if.end67.i.i_crit_edge, %if.end48.i.i.if.end67.i.i_crit_edge
  %currier_step.0.i.i = phi i32 [ 1000, %if.end48.i.i.if.end67.i.i_crit_edge ], [ 2000, %if.else52.i.i.if.end67.i.i_crit_edge ], [ %.264.i.i, %if.else58.i.i ]
  %arrayidx68.i.i = getelementptr %struct.stv0900_internal, ptr %150, i32 0, i32 7, i32 %152
  %160 = ptrtoint ptr %arrayidx68.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx68.i.i, align 4
  %div.i249.i = sdiv i32 %161, 1000
  %div69.i.i = udiv i32 %div.i249.i, %currier_step.0.i.i
  %add.i.i = add nsw i32 %div69.i.i, -1
  %div70.i.i = sdiv i32 %add.i.i, 2
  %mul.i250.i = shl nuw nsw i32 %div70.i.i, 1
  %add71.i.i = or i32 %mul.i250.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %add71.i.i)
  %cmp76.i.i = icmp sgt i32 %add71.i.i, 10
  %div82.i.i = sdiv i32 %161, 10000
  %nb_steps.0.i.i = select i1 %cmp76.i.i, i32 11, i32 %add71.i.i
  %currier_step.1.i.i = select i1 %cmp76.i.i, i32 %div82.i.i, i32 %currier_step.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nb_steps.0.i.i)
  %cmp88337.i.i = icmp sgt i32 %nb_steps.0.i.i, 0
  br i1 %cmp88337.i.i, label %while.body.lr.ph.i.i, label %if.end67.i.i.for.body.i.preheader_crit_edge

if.end67.i.i.for.body.i.preheader_crit_edge:      ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %stv0900_search_srate_coarse.exit.i.for.body.i.preheader_crit_edge, %if.else133.i.i.for.body.i.preheader_crit_edge, %if.end67.i.i.for.body.i.preheader_crit_edge
  br label %for.body.i

while.body.lr.ph.i.i:                             ; preds = %if.end67.i.i
  %arrayidx85.i.i = getelementptr %struct.stv0900_internal, ptr %150, i32 0, i32 4, i32 %152
  %162 = ptrtoint ptr %arrayidx85.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx85.i.i, align 4
  %conv91.i.i = sub nuw nsw i16 -3050, %155
  %retval.0.i327.i.i = sub nuw nsw i32 -200146848, %sub.i.i.i
  %conv103.i.i = sub nuw nsw i16 -3018, %155
  %conv107.i.i = sub nuw nsw i16 -3017, %155
  %mclk.i251.i = getelementptr inbounds %struct.stv0900_internal, ptr %150, i32 0, i32 1
  %arrayidx145.i.i = getelementptr %struct.stv0900_internal, ptr %150, i32 0, i32 8, i32 %152
  %arrayidx152.i.i = getelementptr %struct.stv0900_internal, ptr %150, i32 0, i32 5, i32 %152
  %164 = add nsw i32 %nb_steps.0.i.i, -1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.backedge, %while.body.lr.ph.i.i
  %agc2_integr.0343.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %div112.i.i, %while.body.i.i.backedge ]
  %tuner_freq.0342.i.i = phi i32 [ %163, %while.body.lr.ph.i.i ], [ %tuner_freq.1.i.i, %while.body.i.i.backedge ]
  %current_step.0341.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %inc114.i.i, %while.body.i.i.backedge ]
  %direction.0340.i.i = phi i32 [ 1, %while.body.lr.ph.i.i ], [ %direction.0.neg339.i.i, %while.body.i.i.backedge ]
  %direction.0.neg339.i.i = phi i32 [ -1, %while.body.lr.ph.i.i ], [ %direction.0340.i.i, %while.body.i.i.backedge ]
  %timingcpt.0338.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %spec.select.i.i, %while.body.i.i.backedge ]
  tail call void @stv0900_write_reg(ptr noundef %150, i16 noundef zeroext %conv91.i.i, i8 noundef zeroext 95) #6
  tail call void @stv0900_write_bits(ptr noundef %150, i32 noundef %retval.0.i.i.i, i8 noundef zeroext 0) #6
  tail call void @msleep(i32 noundef 50) #6
  br label %for.body.i254.i

for.body.i254.i:                                  ; preds = %for.body.i254.i.for.body.i254.i_crit_edge, %while.body.i.i
  %agc2_integr.1336.i.i = phi i32 [ %agc2_integr.0343.i.i, %while.body.i.i ], [ %add110.i.i, %for.body.i254.i.for.body.i254.i_crit_edge ]
  %timingcpt.1335.i.i = phi i32 [ %timingcpt.0338.i.i, %while.body.i.i ], [ %spec.select.i.i, %for.body.i254.i.for.body.i254.i_crit_edge ]
  %i.0334.i.i = phi i32 [ 0, %while.body.i.i ], [ %inc111.i.i, %for.body.i254.i.for.body.i254.i_crit_edge ]
  %call96.i.i = tail call zeroext i8 @stv0900_get_bits(ptr noundef %150, i32 noundef %retval.0.i327.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call96.i.i)
  %cmp98.i.i = icmp ugt i8 %call96.i.i, 1
  %inc.i.i = zext i1 %cmp98.i.i to i32
  %spec.select.i.i = add i32 %timingcpt.1335.i.i, %inc.i.i
  %call104.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %150, i16 noundef zeroext %conv103.i.i) #6
  %conv105.i.i = zext i8 %call104.i.i to i32
  %shl.i252.i = shl nuw nsw i32 %conv105.i.i, 8
  %call108.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %150, i16 noundef zeroext %conv107.i.i) #6
  %conv109.i.i = zext i8 %call108.i.i to i32
  %or.i.i = add i32 %agc2_integr.1336.i.i, %conv109.i.i
  %add110.i.i = add i32 %or.i.i, %shl.i252.i
  %inc111.i.i = add nuw nsw i32 %i.0334.i.i, 1
  %exitcond.not.i253.i = icmp eq i32 %inc111.i.i, 10
  br i1 %exitcond.not.i253.i, label %for.end.i.i, label %for.body.i254.i.for.body.i254.i_crit_edge

for.body.i254.i.for.body.i254.i_crit_edge:        ; preds = %for.body.i254.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i254.i

for.end.i.i:                                      ; preds = %for.body.i254.i
  %div112.i.i = udiv i32 %add110.i.i, 10
  %165 = ptrtoint ptr %mclk.i251.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %mclk.i251.i, align 4
  %call113.i.i = tail call fastcc i32 @stv0900_get_symbol_rate(ptr noundef %150, i32 noundef %166, i32 noundef %152) #6
  %inc114.i.i = add nuw nsw i32 %current_step.0341.i.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %167 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool.not.i255.i = icmp eq i32 %167, 0
  br i1 %tobool.not.i255.i, label %for.end.i.i.do.end121.i.i_crit_edge, label %do.end.i256.i

for.end.i.i.do.end121.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end121.i.i

do.end.i256.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call118.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %tuner_freq.0342.i.i, i32 noundef %div112.i.i, i32 noundef %call113.i.i, i32 noundef %spec.select.i.i) #9
  br label %do.end121.i.i

do.end121.i.i:                                    ; preds = %do.end.i256.i, %for.end.i.i.do.end121.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %spec.select.i.i)
  %cmp122.i.i = icmp sgt i32 %spec.select.i.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div112.i.i, i32 %..i.i)
  %cmp124.i.i = icmp ult i32 %div112.i.i, %..i.i
  %or.cond265.i.i = select i1 %cmp122.i.i, i1 %cmp124.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 55000000, i32 %call113.i.i)
  %cmp127.i.i = icmp ult i32 %call113.i.i, 55000000
  %or.cond266.i.i = select i1 %or.cond265.i.i, i1 %cmp127.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 850000, i32 %call113.i.i)
  %cmp130.i.i = icmp ugt i32 %call113.i.i, 850000
  %or.cond267.i.i = select i1 %or.cond266.i.i, i1 %cmp130.i.i, i1 false
  br i1 %or.cond267.i.i, label %stv0900_search_srate_coarse.exit.i, label %if.else133.i.i

if.else133.i.i:                                   ; preds = %do.end121.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %current_step.0341.i.i, i32 %164)
  %exitcond.not.i = icmp eq i32 %current_step.0341.i.i, %164
  br i1 %exitcond.not.i, label %if.else133.i.i.for.body.i.preheader_crit_edge, label %if.then136.i.i

if.else133.i.i.for.body.i.preheader_crit_edge:    ; preds = %if.else133.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader

if.then136.i.i:                                   ; preds = %if.else133.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direction.0.neg339.i.i)
  %cmp137.i.i = icmp sgt i32 %direction.0.neg339.i.i, 0
  %mul140.i.i = mul i32 %inc114.i.i, %currier_step.1.i.i
  %168 = sub i32 0, %mul140.i.i
  %tuner_freq.1.p.i.i = select i1 %cmp137.i.i, i32 %mul140.i.i, i32 %168
  %tuner_freq.1.i.i = add i32 %tuner_freq.1.p.i.i, %tuner_freq.0342.i.i
  %169 = ptrtoint ptr %arrayidx145.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx145.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %170)
  %cmp146.i.i = icmp eq i32 %170, 3
  %171 = ptrtoint ptr %arrayidx152.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx152.i.i, align 4
  br i1 %cmp146.i.i, label %if.then148.i.i, label %if.else150.i.i

if.then148.i.i:                                   ; preds = %if.then136.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stv0900_set_tuner_auto(ptr noundef %150, i32 noundef %tuner_freq.1.i.i, i32 noundef %172, i32 noundef %152) #6
  br label %while.body.i.i.backedge

if.else150.i.i:                                   ; preds = %if.then136.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stv0900_set_tuner(ptr noundef %fe, i32 noundef %tuner_freq.1.i.i, i32 noundef %172) #6
  br label %while.body.i.i.backedge

while.body.i.i.backedge:                          ; preds = %if.else150.i.i, %if.then148.i.i
  br label %while.body.i.i

stv0900_search_srate_coarse.exit.i:               ; preds = %do.end121.i.i
  %173 = ptrtoint ptr %mclk.i251.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %mclk.i251.i, align 4
  %call161.i.i = tail call fastcc i32 @stv0900_get_symbol_rate(ptr noundef %150, i32 noundef %174, i32 noundef %152) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161.i.i)
  %cmp83.not.i = icmp eq i32 %call161.i.i, 0
  br i1 %cmp83.not.i, label %stv0900_search_srate_coarse.exit.i.for.body.i.preheader_crit_edge, label %if.then85.i

stv0900_search_srate_coarse.exit.i.for.body.i.preheader_crit_edge: ; preds = %stv0900_search_srate_coarse.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader

if.then85.i:                                      ; preds = %stv0900_search_srate_coarse.exit.i
  %175 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %demodulator_priv, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %176, align 4
  %demod1.i258.i = getelementptr inbounds %struct.stv0900_state, ptr %176, i32 0, i32 4
  %179 = ptrtoint ptr %demod1.i258.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %demod1.i258.i, align 4
  %mclk.i259.i = getelementptr inbounds %struct.stv0900_internal, ptr %178, i32 0, i32 1
  %181 = ptrtoint ptr %mclk.i259.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %mclk.i259.i, align 4
  %call.i260.i = tail call fastcc i32 @stv0900_get_symbol_rate(ptr noundef %178, i32 noundef %182, i32 noundef %180) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %call.i260.i)
  %cmp.i261.i = icmp ugt i32 %call.i260.i, 3000000
  %div.i262.i = udiv i32 %call.i260.i, 10
  %mul.i263.i = mul i32 %div.i262.i, 13
  br i1 %cmp.i261.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #8
  %div2.i.i = udiv i32 %mul.i263.i, 1000
  %mul3.i.i = shl i32 %div2.i.i, 16
  %183 = ptrtoint ptr %mclk.i259.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %mclk.i259.i, align 4
  %div5.i.i = sdiv i32 %184, 1000
  %div6.i.i = udiv i32 %mul3.i.i, %div5.i.i
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #8
  %div21.i.i = udiv i32 %mul.i263.i, 100
  %mul22.i.i = shl nuw i32 %div21.i.i, 16
  %185 = ptrtoint ptr %mclk.i259.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %mclk.i259.i, align 4
  %div24.i.i = sdiv i32 %186, 100
  %div25.i.i = udiv i32 %mul22.i.i, %div24.i.i
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %.sink264.i.i = phi i32 [ 140, %if.else.i.i ], [ 1300, %if.then.i.i ]
  %div24.sink263.i.i = phi i32 [ %div24.i.i, %if.else.i.i ], [ %div5.i.i, %if.then.i.i ]
  %.sink.i264.i = phi i32 [ 100, %if.else.i.i ], [ 1000, %if.then.i.i ]
  %symbmax.0.i.i = phi i32 [ %div25.i.i, %if.else.i.i ], [ %div6.i.i, %if.then.i.i ]
  %div28.i.i = udiv i32 %call.i260.i, %.sink264.i.i
  %mul29.i.i = shl i32 %div28.i.i, 16
  %div32.i.i = udiv i32 %mul29.i.i, %div24.sink263.i.i
  %div33.i.i = udiv i32 %call.i260.i, %.sink.i264.i
  %mul34.i.i = shl i32 %div33.i.i, 16
  %div37.i.i = udiv i32 %mul34.i.i, %div24.sink263.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %180)
  %cmp.i.i265.i = icmp eq i32 %180, 1
  %187 = select i1 %cmp.i.i265.i, i16 512, i16 0
  %conv.i266.i = sub nuw nsw i16 -2996, %187
  %call41.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %178, i16 noundef zeroext %conv.i266.i) #6
  %conv44.i.i = sub nuw nsw i16 -2995, %187
  %call45.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %178, i16 noundef zeroext %conv44.i.i) #6
  %arrayidx.i267.i = getelementptr %struct.stv0900_internal, ptr %178, i32 0, i32 6, i32 %180
  %188 = ptrtoint ptr %arrayidx.i267.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx.i267.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i263.i, i32 %189)
  %cmp47.i.i = icmp ult i32 %mul.i263.i, %189
  br i1 %cmp47.i.i, label %if.end.i.i.if.end129.i_crit_edge, label %if.else50.i.i

if.end.i.i.if.end129.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end129.i

if.else50.i.i:                                    ; preds = %if.end.i.i
  %conv52.i.i = sub nuw nsw i16 -3050, %187
  tail call void @stv0900_write_reg(ptr noundef %178, i16 noundef zeroext %conv52.i.i, i8 noundef zeroext 31) #6
  %conv54.i.i = sub nuw nsw i16 -2982, %187
  tail call void @stv0900_write_reg(ptr noundef %178, i16 noundef zeroext %conv54.i.i, i8 noundef zeroext -63) #6
  %conv56.i.i = sub nuw nsw i16 -2989, %187
  tail call void @stv0900_write_reg(ptr noundef %178, i16 noundef zeroext %conv56.i.i, i8 noundef zeroext 32) #6
  %conv58.i.i = sub nuw nsw i16 -2988, %187
  tail call void @stv0900_write_reg(ptr noundef %178, i16 noundef zeroext %conv58.i.i, i8 noundef zeroext 0) #6
  %conv60.i.i = sub nuw nsw i16 -2992, %187
  tail call void @stv0900_write_reg(ptr noundef %178, i16 noundef zeroext %conv60.i.i, i8 noundef zeroext -46) #6
  %retval.0.i220.i.i = select i1 %cmp.i.i265.i, i32 -233570296, i32 -200015864
  tail call void @stv0900_write_bits(ptr noundef %178, i32 noundef %retval.0.i220.i.i, i8 noundef zeroext 0) #6
  %conv63.i.i = sub nuw nsw i16 -3027, %187
  tail call void @stv0900_write_reg(ptr noundef %178, i16 noundef zeroext %conv63.i.i, i8 noundef zeroext 56) #6
  %chip_id.i268.i = getelementptr inbounds %struct.stv0900_internal, ptr %178, i32 0, i32 20
  %190 = ptrtoint ptr %chip_id.i268.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %chip_id.i268.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %191)
  %cmp65.i.i = icmp ugt i8 %191, 47
  br i1 %cmp65.i.i, label %if.then67.i.i, label %if.else70.i.i

if.then67.i.i:                                    ; preds = %if.else50.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv69.i.i = sub nuw nsw i16 -3011, %187
  tail call void @stv0900_write_reg(ptr noundef %178, i16 noundef zeroext %conv69.i.i, i8 noundef zeroext 121) #6
  br label %stv0900_search_srate_fine.exit.i

if.else70.i.i:                                    ; preds = %if.else50.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %191)
  %cmp73.i.i = icmp ugt i8 %191, 31
  %conv77.i.i = sub nuw nsw i16 -3011, %187
  br i1 %cmp73.i.i, label %if.then75.i.i, label %if.else78.i.i

if.then75.i.i:                                    ; preds = %if.else70.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stv0900_write_reg(ptr noundef %178, i16 noundef zeroext %conv77.i.i, i8 noundef zeroext 73) #6
  br label %stv0900_search_srate_fine.exit.i

if.else78.i.i:                                    ; preds = %if.else70.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stv0900_write_reg(ptr noundef %178, i16 noundef zeroext %conv77.i.i, i8 noundef zeroext -19) #6
  br label %stv0900_search_srate_fine.exit.i

stv0900_search_srate_fine.exit.i:                 ; preds = %if.else78.i.i, %if.then75.i.i, %if.then67.i.i
  %conv84.i.i = sub nuw nsw i16 -2976, %187
  %shr.i269.i = lshr i32 %symbmax.0.i.i, 8
  %192 = trunc i32 %shr.i269.i to i8
  %conv85.i.i = and i8 %192, 127
  tail call void @stv0900_write_reg(ptr noundef %178, i16 noundef zeroext %conv84.i.i, i8 noundef zeroext %conv85.i.i) #6
  %conv87.i.i = sub nuw nsw i16 -2975, %187
  %conv89.i.i = trunc i32 %symbmax.0.i.i to i8
  tail call void @stv0900_write_reg(ptr noundef %178, i16 noundef zeroext %conv87.i.i, i8 noundef zeroext %conv89.i.i) #6
  %conv91.i270.i = sub nuw nsw i16 -2974, %187
  %shr92.i.i = lshr i32 %div32.i.i, 8
  %193 = trunc i32 %shr92.i.i to i8
  %conv94.i.i = and i8 %193, 127
  tail call void @stv0900_write_reg(ptr noundef %178, i16 noundef zeroext %conv91.i270.i, i8 noundef zeroext %conv94.i.i) #6
  %conv96.i.i = sub nuw nsw i16 -2973, %187
  %conv98.i.i = trunc i32 %div32.i.i to i8
  tail call void @stv0900_write_reg(ptr noundef %178, i16 noundef zeroext %conv96.i.i, i8 noundef zeroext %conv98.i.i) #6
  %conv100.i.i = sub nuw nsw i16 -2978, %187
  %shr101.i.i = lshr i32 %div37.i.i, 8
  %conv103.i271.i = trunc i32 %shr101.i.i to i8
  tail call void @stv0900_write_reg(ptr noundef %178, i16 noundef zeroext %conv100.i.i, i8 noundef zeroext %conv103.i271.i) #6
  %conv105.i272.i = sub nuw nsw i16 -2977, %187
  %conv107.i273.i = trunc i32 %div37.i.i to i8
  tail call void @stv0900_write_reg(ptr noundef %178, i16 noundef zeroext %conv105.i272.i, i8 noundef zeroext %conv107.i273.i) #6
  %conv109.i274.i = sub nuw nsw i16 -3049, %187
  tail call void @stv0900_write_reg(ptr noundef %178, i16 noundef zeroext %conv109.i274.i, i8 noundef zeroext 32) #6
  %conv111.i.i = sub nuw nsw i16 -3000, %187
  tail call void @stv0900_write_reg(ptr noundef %178, i16 noundef zeroext %conv111.i.i, i8 noundef zeroext %call41.i.i) #6
  %conv116.i.i = sub nuw nsw i16 -2999, %187
  tail call void @stv0900_write_reg(ptr noundef %178, i16 noundef zeroext %conv116.i.i, i8 noundef zeroext %call45.i.i) #6
  tail call void @stv0900_write_reg(ptr noundef %178, i16 noundef zeroext %conv52.i.i, i8 noundef zeroext 21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i260.i)
  %cmp87.not.i = icmp eq i32 %call.i260.i, 0
  br i1 %cmp87.not.i, label %stv0900_search_srate_fine.exit.i.if.end129.i_crit_edge, label %if.then89.i

stv0900_search_srate_fine.exit.i.if.end129.i_crit_edge: ; preds = %stv0900_search_srate_fine.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end129.i

if.then89.i:                                      ; preds = %stv0900_search_srate_fine.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500001, i32 %call.i260.i)
  %cmp.i276.i = icmp slt i32 %call.i260.i, 1500001
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000001, i32 %call.i260.i)
  %cmp1.i.i = icmp ult i32 %call.i260.i, 5000001
  %spec.select291.i = select i1 %cmp1.i.i, i32 1000, i32 700
  %demod_timeout.0.i = select i1 %cmp.i276.i, i32 1500, i32 %spec.select291.i
  %call90.i = tail call i32 @stv0900_get_demod_lock(ptr noundef %119, i32 noundef %121, i32 noundef %demod_timeout.0.i) #6
  br label %if.end129.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %agc2_overflow.0301.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %i.0300.i = phi i32 [ %inc122.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %fail_cpt.0299.i = phi i32 [ %fail_cpt.1.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %call98.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %119, i16 noundef zeroext %conv45.i.i) #6
  %call102.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %119, i16 noundef zeroext %conv49.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call98.i)
  %cmp106.i = icmp eq i8 %call98.i, -1
  %inc.i = zext i1 %cmp106.i to i32
  %spec.select.i = add i32 %agc2_overflow.0301.i, %inc.i
  %call112.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %119, i16 noundef zeroext %conv111.i) #6
  %194 = and i8 %call112.i, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %194)
  %.not.i = icmp eq i8 %194, -127
  %inc120.i = zext i1 %.not.i to i32
  %fail_cpt.1.i = add i32 %fail_cpt.0299.i, %inc120.i
  %inc122.i = add nuw nsw i32 %i.0300.i, 1
  %exitcond302.not.i = icmp eq i32 %inc122.i, 10
  br i1 %exitcond302.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %fail_cpt.1.i)
  %cmp123.i = icmp sgt i32 %fail_cpt.1.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %spec.select.i)
  %cmp125.i = icmp sgt i32 %spec.select.i, 7
  %or.cond211.i = select i1 %cmp123.i, i1 true, i1 %cmp125.i
  %coarse_fail.1.i = zext i1 %or.cond211.i to i32
  br label %if.end129.i

if.end129.i:                                      ; preds = %for.end.i, %if.then89.i, %stv0900_search_srate_fine.exit.i.if.end129.i_crit_edge, %if.end.i.i.if.end129.i_crit_edge
  %lock.0.i = phi i32 [ %call90.i, %if.then89.i ], [ 0, %for.end.i ], [ 0, %stv0900_search_srate_fine.exit.i.if.end129.i_crit_edge ], [ 0, %if.end.i.i.if.end129.i_crit_edge ]
  %coarse_fail.2.i = phi i32 [ 0, %if.then89.i ], [ %coarse_fail.1.i, %for.end.i ], [ 0, %stv0900_search_srate_fine.exit.i.if.end129.i_crit_edge ], [ 0, %if.end.i.i.if.end129.i_crit_edge ]
  %sub.i700 = add i8 %k_ref_tmg.0.i, -30
  %conv133.i = zext i8 %sub.i700 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %.210.i, i32 %conv133.i)
  %cmp135.not.i = icmp ule i32 %.210.i, %conv133.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lock.0.i)
  %cmp138.i = icmp eq i32 %lock.0.i, 0
  %or.cond212.i = select i1 %cmp135.not.i, i1 %cmp138.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %coarse_fail.2.i)
  %cmp140.i = icmp eq i32 %coarse_fail.2.i, 0
  %or.cond213.i = select i1 %or.cond212.i, i1 %cmp140.i, i1 false
  br i1 %or.cond213.i, label %if.end129.i.do.body79.i_crit_edge, label %if.end129.i.if.end223_crit_edge

if.end129.i.if.end223_crit_edge:                  ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end223

if.end129.i.do.body79.i_crit_edge:                ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body79.i

if.then214:                                       ; preds = %if.end206
  %195 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %demodulator_priv, align 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %196, align 4
  %demod1.i703 = getelementptr inbounds %struct.stv0900_state, ptr %196, i32 0, i32 4
  %199 = ptrtoint ptr %demod1.i703 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %demod1.i703, align 4
  %arrayidx.i704 = getelementptr %struct.stv0900_internal, ptr %198, i32 0, i32 6, i32 %200
  %201 = ptrtoint ptr %arrayidx.i704 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx.i704, align 4
  %arrayidx2.i = getelementptr %struct.stv0900_internal, ptr %198, i32 0, i32 7, i32 %200
  %203 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999999, i32 %202)
  %cmp.i705 = icmp sgt i32 %202, 9999999
  %div.i706937.lhs.trunc = trunc i32 %demod_timeout.0895 to i16
  %div.i706937938 = udiv i16 %div.i706937.lhs.trunc, 3
  %div.i706937.zext = zext i16 %div.i706937938 to i32
  %div3.i939940947 = lshr i32 %demod_timeout.0895, 1
  %div3.i939.zext = and i32 %div3.i939940947, 32767
  %locktimeout.0.i = select i1 %cmp.i705, i32 %div.i706937.zext, i32 %div3.i939.zext
  %call.i707 = tail call i32 @stv0900_get_demod_lock(ptr noundef %198, i32 noundef %200, i32 noundef %locktimeout.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i707)
  %cmp4.not.i = icmp eq i32 %call.i707, 0
  br i1 %cmp4.not.i, label %if.end6.i, label %if.then214.if.end240_crit_edge

if.then214.if.end240_crit_edge:                   ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end240

if.end6.i:                                        ; preds = %if.then214
  br i1 %cmp.i705, label %if.then8.i, label %if.end18.i

if.then8.i:                                       ; preds = %if.end6.i
  %call9.i708 = tail call fastcc i32 @stv0900_check_timing_lock(ptr noundef %198, i32 noundef %200) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i708)
  %cmp10.i709 = icmp eq i32 %call9.i708, 1
  br i1 %cmp10.i709, label %if.then11.i, label %if.then8.i.land.lhs.true226_crit_edge

if.then8.i.land.lhs.true226_crit_edge:            ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true226

if.then11.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %200)
  %cmp.i.i710 = icmp eq i32 %200, 1
  %conv.i711 = select i1 %cmp.i.i710, i16 -3562, i16 -3050
  tail call void @stv0900_write_reg(ptr noundef %198, i16 noundef zeroext %conv.i711, i8 noundef zeroext 31) #6
  tail call void @stv0900_write_reg(ptr noundef %198, i16 noundef zeroext %conv.i711, i8 noundef zeroext 21) #6
  %call15.i = tail call i32 @stv0900_get_demod_lock(ptr noundef %198, i32 noundef %200, i32 noundef %demod_timeout.0895) #6
  br label %if.end223

if.end18.i:                                       ; preds = %if.end6.i
  %chip_id.i712 = getelementptr inbounds %struct.stv0900_internal, ptr %198, i32 0, i32 20
  %205 = ptrtoint ptr %chip_id.i712 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %chip_id.i712, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %206)
  %cmp20.i = icmp ult i8 %206, 33
  br i1 %cmp20.i, label %if.then22.i, label %if.else54.i

if.then22.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000001, i32 %202)
  %cmp23.i = icmp slt i32 %202, 1000001
  br i1 %cmp23.i, label %if.then22.i.if.end57.i_crit_edge, label %if.else26.i

if.then22.i.if.end57.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57.i

if.else26.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000001, i32 %202)
  %cmp27.i = icmp ult i32 %202, 4000001
  br i1 %cmp27.i, label %if.end42.i, label %if.end42.thread.i

if.end42.thread.i:                                ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000001, i32 %202)
  %cmp31.i = icmp ult i32 %202, 7000001
  %spec.select248.i = select i1 %cmp31.i, i32 2000, i32 3000
  br label %if.then45.i

if.end42.i:                                       ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999999, i32 %202)
  %cmp43.i713 = icmp ugt i32 %202, 1999999
  br i1 %cmp43.i713, label %if.end42.i.if.then45.i_crit_edge, label %if.end42.i.if.end57.i_crit_edge

if.end42.i.if.end57.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57.i

if.end42.i.if.then45.i_crit_edge:                 ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45.i

if.then45.i:                                      ; preds = %if.end42.i.if.then45.i_crit_edge, %if.end42.thread.i
  %currier_step.0284.i = phi i32 [ %spec.select248.i, %if.end42.thread.i ], [ 1000, %if.end42.i.if.then45.i_crit_edge ]
  br label %if.end57.i

if.else54.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  %div55.i = sdiv i32 %202, 4000
  %div56.i941.lhs.trunc = mul nsw i32 %demod_timeout.0895, 3
  %div56.i941942948 = lshr i32 %div56.i941.lhs.trunc, 2
  %div56.i941.zext = and i32 %div56.i941942948, 16383
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.else54.i, %if.then45.i, %if.end42.i.if.end57.i_crit_edge, %if.then22.i.if.end57.i_crit_edge
  %currier_step.1.i = phi i32 [ %currier_step.0284.i, %if.then45.i ], [ %div55.i, %if.else54.i ], [ 1000, %if.end42.i.if.end57.i_crit_edge ], [ 500, %if.then22.i.if.end57.i_crit_edge ]
  %timeout.0.i = phi i32 [ %div.i706937.zext, %if.then45.i ], [ %div56.i941.zext, %if.else54.i ], [ %div3.i939.zext, %if.end42.i.if.end57.i_crit_edge ], [ %div3.i939.zext, %if.then22.i.if.end57.i_crit_edge ]
  %div58.i = sdiv i32 %204, 1000
  %div59.i = sdiv i32 %div58.i, %currier_step.1.i
  %207 = and i32 %div59.i, 1
  %spec.select.i715 = add nsw i32 %207, %div59.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.i715)
  %cmp64.i = icmp slt i32 %spec.select.i715, 1
  %208 = tail call i32 @llvm.smin.i32(i32 %spec.select.i715, i32 12) #6
  %nb_steps.1.i = select i1 %cmp64.i, i32 2, i32 %208
  br i1 %cmp20.i, label %if.then77.i, label %if.end57.i.if.end88.i_crit_edge

if.end57.i.if.end88.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88.i

if.then77.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx79.i = getelementptr %struct.stv0900_internal, ptr %198, i32 0, i32 4, i32 %200
  %209 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %arrayidx79.i, align 4
  %211 = ptrtoint ptr %arrayidx.i704 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %arrayidx.i704, align 4
  %rolloff.i = getelementptr inbounds %struct.stv0900_internal, ptr %198, i32 0, i32 2
  %213 = ptrtoint ptr %rolloff.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %rolloff.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %214)
  %switch.selectcmp.i.i = icmp eq i32 %214, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 25, i32 35
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %214)
  %switch.selectcmp4.i.i = icmp eq i32 %214, 2
  %switch.select5.i.i = select i1 %switch.selectcmp4.i.i, i32 20, i32 %switch.select.i.i
  %mul.i.i716 = mul i32 %switch.select5.i.i, %212
  %div.i.i717 = udiv i32 %mul.i.i716, 100
  %reass.add.i718 = shl i32 %212, 1
  %add85.i = add i32 %div.i.i717, %reass.add.i718
  %arrayidx86.i = getelementptr %struct.stv0900_internal, ptr %198, i32 0, i32 5, i32 %200
  %215 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %add85.i, ptr %arrayidx86.i, align 4
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then77.i, %if.end57.i.if.end88.i_crit_edge
  %tuner_freq.0.i = phi i32 [ %210, %if.then77.i ], [ 0, %if.end57.i.if.end88.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nb_steps.1.i)
  %cmp89.not289.i = icmp sgt i32 %nb_steps.1.i, 0
  br i1 %cmp89.not289.i, label %while.body.lr.ph.i, label %if.end88.i.land.lhs.true226_crit_edge

if.end88.i.land.lhs.true226_crit_edge:            ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true226

while.body.lr.ph.i:                               ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %200)
  %cmp.i267.i = icmp eq i32 %200, 1
  %conv128.i = select i1 %cmp.i267.i, i16 -3562, i16 -3050
  %mclk.i = getelementptr inbounds %struct.stv0900_internal, ptr %198, i32 0, i32 1
  %sub.i271.i = select i1 %cmp.i267.i, i32 33554432, i32 0
  %retval.0.i272.i = sub nuw nsw i32 -196607489, %sub.i271.i
  %retval.0.i275.i = sub nuw nsw i32 -196542209, %sub.i271.i
  %arrayidx106.i = getelementptr %struct.stv0900_internal, ptr %198, i32 0, i32 8, i32 %200
  %arrayidx114.i = getelementptr %struct.stv0900_internal, ptr %198, i32 0, i32 5, i32 %200
  %216 = select i1 %cmp.i267.i, i16 512, i16 0
  %conv117.i = sub nuw nsw i16 -3050, %216
  %conv119.i = sub nuw nsw i16 -3000, %216
  %conv121.i = sub nuw nsw i16 -2999, %216
  br label %while.body.i

while.body.i:                                     ; preds = %if.end141.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %tuner_freq.1292.i = phi i32 [ %tuner_freq.0.i, %while.body.lr.ph.i ], [ %tuner_freq.2.i, %if.end141.i.while.body.i_crit_edge ]
  %direction.0291.i = phi i32 [ 1, %while.body.lr.ph.i ], [ %mul143.i, %if.end141.i.while.body.i_crit_edge ]
  %current_step.0290.i = phi i32 [ 1, %while.body.lr.ph.i ], [ %inc.i722, %if.end141.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direction.0291.i)
  %cmp93.i = icmp sgt i32 %direction.0291.i, 0
  %mul96.i = mul i32 %current_step.0290.i, %currier_step.1.i
  %217 = sub i32 0, %mul96.i
  %tuner_freq.2.p.i = select i1 %cmp93.i, i32 %mul96.i, i32 %217
  %tuner_freq.2.i = add i32 %tuner_freq.2.p.i, %tuner_freq.1292.i
  %218 = ptrtoint ptr %chip_id.i712 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %chip_id.i712, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %219)
  %cmp103.i = icmp ult i8 %219, 33
  br i1 %cmp103.i, label %if.then105.i, label %if.else126.i

if.then105.i:                                     ; preds = %while.body.i
  %220 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx106.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %221)
  %cmp107.i = icmp eq i32 %221, 3
  %222 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx114.i, align 4
  br i1 %cmp107.i, label %if.then109.i, label %if.else112.i719

if.then109.i:                                     ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stv0900_set_tuner_auto(ptr noundef %198, i32 noundef %tuner_freq.2.i, i32 noundef %223, i32 noundef %200) #6
  br label %if.end115.i720

if.else112.i719:                                  ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stv0900_set_tuner(ptr noundef %fe, i32 noundef %tuner_freq.2.i, i32 noundef %223) #6
  br label %if.end115.i720

if.end115.i720:                                   ; preds = %if.else112.i719, %if.then109.i
  tail call void @stv0900_write_reg(ptr noundef %198, i16 noundef zeroext %conv117.i, i8 noundef zeroext 28) #6
  tail call void @stv0900_write_reg(ptr noundef %198, i16 noundef zeroext %conv119.i, i8 noundef zeroext 0) #6
  tail call void @stv0900_write_reg(ptr noundef %198, i16 noundef zeroext %conv121.i, i8 noundef zeroext 0) #6
  tail call void @stv0900_write_reg(ptr noundef %198, i16 noundef zeroext %conv117.i, i8 noundef zeroext 31) #6
  tail call void @stv0900_write_reg(ptr noundef %198, i16 noundef zeroext %conv117.i, i8 noundef zeroext 21) #6
  br label %if.end141.i

if.else126.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stv0900_write_reg(ptr noundef %198, i16 noundef zeroext %conv128.i, i8 noundef zeroext 28) #6
  %mul129.i = shl i32 %tuner_freq.2.i, 16
  %224 = ptrtoint ptr %mclk.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %mclk.i, align 4
  %div130.i = sdiv i32 %225, 1000
  %div131.i = sdiv i32 %mul129.i, %div130.i
  %226 = lshr i32 %div131.i, 8
  %conv133.i721 = trunc i32 %226 to i8
  tail call void @stv0900_write_bits(ptr noundef %198, i32 noundef %retval.0.i272.i, i8 noundef zeroext %conv133.i721) #6
  %conv136.i = trunc i32 %div131.i to i8
  tail call void @stv0900_write_bits(ptr noundef %198, i32 noundef %retval.0.i275.i, i8 noundef zeroext %conv136.i) #6
  tail call void @stv0900_write_reg(ptr noundef %198, i16 noundef zeroext %conv128.i, i8 noundef zeroext 31) #6
  tail call void @stv0900_write_reg(ptr noundef %198, i16 noundef zeroext %conv128.i, i8 noundef zeroext 5) #6
  br label %if.end141.i

if.end141.i:                                      ; preds = %if.else126.i, %if.end115.i720
  %call142.i = tail call i32 @stv0900_get_demod_lock(ptr noundef %198, i32 noundef %200, i32 noundef %timeout.0.i) #6
  %mul143.i = sub i32 0, %direction.0291.i
  %inc.i722 = add i32 %current_step.0290.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i722, i32 %nb_steps.1.i)
  %cmp89.not.i = icmp sle i32 %inc.i722, %nb_steps.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142.i)
  %cmp91.i = icmp eq i32 %call142.i, 0
  %or.cond.i = select i1 %cmp89.not.i, i1 %cmp91.i, i1 false
  br i1 %or.cond.i, label %if.end141.i.while.body.i_crit_edge, label %if.end141.i.if.end223_crit_edge

if.end141.i.if.end223_crit_edge:                  ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end223

if.end141.i.while.body.i_crit_edge:               ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.then219:                                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #8
  %call220 = tail call i32 @stv0900_get_demod_lock(ptr noundef %3, i32 noundef %5, i32 noundef %demod_timeout.0895) #6
  br label %if.end223

if.end223:                                        ; preds = %if.then219, %if.end141.i.if.end223_crit_edge, %if.then11.i, %if.end129.i.if.end223_crit_edge
  %lock.0 = phi i32 [ %call220, %if.then219 ], [ %call15.i, %if.then11.i ], [ %lock.0.i, %if.end129.i.if.end223_crit_edge ], [ %call142.i, %if.end141.i.if.end223_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lock.0)
  %cmp224 = icmp eq i32 %lock.0, 0
  br i1 %cmp224, label %if.end223.land.lhs.true226_crit_edge, label %if.end223.if.end240_crit_edge

if.end223.if.end240_crit_edge:                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end240

if.end223.land.lhs.true226_crit_edge:             ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true226

land.lhs.true226:                                 ; preds = %if.end223.land.lhs.true226_crit_edge, %if.end88.i.land.lhs.true226_crit_edge, %if.then8.i.land.lhs.true226_crit_edge, %do.end27.i.land.lhs.true226_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp227 = icmp ne i32 %8, 1
  %cmp230.not = xor i1 %cmp230, true
  %brmerge = select i1 %cmp227, i1 true, i1 %cmp230.not
  br i1 %brmerge, label %land.lhs.true226.cleanup_crit_edge, label %if.then232

land.lhs.true226.cleanup_crit_edge:               ; preds = %land.lhs.true226
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then232:                                       ; preds = %land.lhs.true226
  %call233 = tail call fastcc i32 @stv0900_check_timing_lock(ptr noundef %3, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call233)
  %cmp234 = icmp eq i32 %call233, 1
  br i1 %cmp234, label %if.then236, label %if.then232.cleanup_crit_edge

if.then232.cleanup_crit_edge:                     ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then236:                                       ; preds = %if.then232
  %227 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %arrayidx24, align 4
  %arrayidx1.i.i = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 7, i32 %5
  %229 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %arrayidx1.i.i, align 4
  %231 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx.i, align 4
  %mclk.i.i725 = getelementptr inbounds %struct.stv0900_internal, ptr %3, i32 0, i32 1
  %233 = ptrtoint ptr %mclk.i.i725 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %mclk.i.i725, align 4
  %shr.i.i726 = ashr i32 %234, 10
  %div8.i.i = sdiv i32 %228, %shr.i.i726
  %235 = zext i32 %232 to i64
  call void @__sanitizer_cov_trace_switch(i64 %235, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %232, label %sw.default.i.i [
    i32 1, label %if.then236.sw.bb.i.i_crit_edge
    i32 3, label %if.then236.sw.bb.i.i_crit_edge952
    i32 2, label %sw.bb10.i.i
  ]

if.then236.sw.bb.i.i_crit_edge952:                ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

if.then236.sw.bb.i.i_crit_edge:                   ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %if.then236.sw.bb.i.i_crit_edge, %if.then236.sw.bb.i.i_crit_edge952
  %mul9.i.i = mul i32 %div8.i.i, 192
  br label %sw.epilog.i.i

sw.bb10.i.i:                                      ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #8
  %mul11.i.i = shl i32 %div8.i.i, 8
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #8
  %mul13.i.i = mul i32 %div8.i.i, 192
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.default.i.i, %sw.bb10.i.i, %sw.bb.i.i
  %freq_inc.0.i.i = phi i32 [ %mul13.i.i, %sw.default.i.i ], [ %mul11.i.i, %sw.bb10.i.i ], [ %mul9.i.i, %sw.bb.i.i ]
  %timeout.0.i.i = phi i32 [ 687500, %sw.default.i.i ], [ 687500, %sw.bb10.i.i ], [ 550000, %sw.bb.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %cmp21.i.i = icmp sgt i32 %228, 0
  br i1 %cmp21.i.i, label %if.then22.i.i, label %sw.epilog.i.i.stv0900_get_sw_loop_params.exit.i_crit_edge

sw.epilog.i.i.stv0900_get_sw_loop_params.exit.i_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0900_get_sw_loop_params.exit.i

if.then22.i.i:                                    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %div2372.i.i = udiv i32 %228, 1000
  %div2473.i.i = udiv i32 %timeout.0.i.i, %div2372.i.i
  br label %stv0900_get_sw_loop_params.exit.i

stv0900_get_sw_loop_params.exit.i:                ; preds = %if.then22.i.i, %sw.epilog.i.i.stv0900_get_sw_loop_params.exit.i_crit_edge
  %timeout.1.i.i = phi i32 [ %div2473.i.i, %if.then22.i.i ], [ %timeout.0.i.i, %sw.epilog.i.i.stv0900_get_sw_loop_params.exit.i_crit_edge ]
  %div14.i.i = sdiv i32 %freq_inc.0.i.i, 100
  %div.i.i727 = sdiv i32 %230, 1000
  %div2.i.i728 = sdiv i32 %230, 10000
  %add.i.i729 = add nsw i32 %div.i.i727, %div2.i.i728
  %div4.i.i = sdiv i32 %add.i.i729, 2
  %mul.i.i730 = shl i32 %div4.i.i, 16
  %div5.i.i731 = sdiv i32 %234, 1000
  %div6.i.i732 = sdiv i32 %mul.i.i730, %div5.i.i731
  %236 = tail call i32 @llvm.smin.i32(i32 %div6.i.i732, i32 16384) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %div14.i.i, i32 %236)
  %cmp15.i.i = icmp sgt i32 %div14.i.i, %236
  call void @__sanitizer_cov_trace_const_cmp4(i32 -99, i32 %freq_inc.0.i.i)
  %cmp16.i.i = icmp slt i32 %freq_inc.0.i.i, -99
  %or.cond.i.i = or i1 %cmp16.i.i, %cmp15.i.i
  %div18.i.i = sdiv i32 %236, 2
  %freq_inc.1.i.i = select i1 %or.cond.i.i, i32 %div18.i.i, i32 %div14.i.i
  %237 = tail call i32 @llvm.umin.i32(i32 %timeout.1.i.i, i32 100) #6
  %div31.i.i = sdiv i32 %236, %freq_inc.1.i.i
  %add32.i.i = add i32 %div31.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %add32.i.i)
  %238 = icmp ugt i32 %add32.i.i, 100
  %div37.i.i733 = sdiv i32 %236, 100
  %freq_inc.2.i.i = select i1 %238, i32 %div37.i.i733, i32 %freq_inc.1.i.i
  %239 = tail call i32 @llvm.umin.i32(i32 %add32.i.i, i32 100) #6
  %240 = zext i32 %232 to i64
  call void @__sanitizer_cov_trace_switch(i64 %240, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %232, label %sw.default.i741 [
    i32 1, label %stv0900_get_sw_loop_params.exit.i.sw.bb.i738_crit_edge
    i32 3, label %stv0900_get_sw_loop_params.exit.i.sw.bb.i738_crit_edge953
    i32 2, label %sw.bb7.i
  ]

stv0900_get_sw_loop_params.exit.i.sw.bb.i738_crit_edge953: ; preds = %stv0900_get_sw_loop_params.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i738

stv0900_get_sw_loop_params.exit.i.sw.bb.i738_crit_edge: ; preds = %stv0900_get_sw_loop_params.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i738

sw.bb.i738:                                       ; preds = %stv0900_get_sw_loop_params.exit.i.sw.bb.i738_crit_edge, %stv0900_get_sw_loop_params.exit.i.sw.bb.i738_crit_edge953
  %241 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %242)
  %cmp.i735 = icmp ugt i8 %242, 31
  %conv2.i = select i1 %cmp.i, i16 -3523, i16 -3011
  %..i737 = select i1 %cmp.i735, i8 59, i8 -17
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv2.i, i8 noundef zeroext %..i737) #6
  %conv6.i = select i1 %cmp.i, i16 -3564, i16 -3052
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv6.i, i8 noundef zeroext 73) #6
  br label %sw.epilog.i750

sw.bb7.i:                                         ; preds = %stv0900_get_sw_loop_params.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %243 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %244)
  %cmp10.i739 = icmp ugt i8 %244, 31
  %conv14.i = select i1 %cmp.i, i16 -3551, i16 -3039
  %.278.i = select i1 %cmp10.i739, i8 121, i8 104
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv14.i, i8 noundef zeroext %.278.i) #6
  %conv20.i740 = select i1 %cmp.i, i16 -3564, i16 -3052
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv20.i740, i8 noundef zeroext -119) #6
  br label %sw.epilog.i750

sw.default.i741:                                  ; preds = %stv0900_get_sw_loop_params.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %245 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %246)
  %cmp24.i = icmp ugt i8 %246, 31
  %247 = select i1 %cmp.i, i16 512, i16 0
  %conv28.i = sub nuw nsw i16 -3011, %247
  %.279.i = select i1 %cmp24.i, i8 59, i8 -17
  %.280.i = select i1 %cmp24.i, i8 121, i8 104
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv28.i, i8 noundef zeroext %.279.i) #6
  %conv35.i = sub nuw nsw i16 -3039, %247
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv35.i, i8 noundef zeroext %.280.i) #6
  %conv38.i = select i1 %cmp.i, i16 -3564, i16 -3052
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv38.i, i8 noundef zeroext -55) #6
  br label %sw.epilog.i750

sw.epilog.i750:                                   ; preds = %sw.default.i741, %sw.bb7.i, %sw.bb.i738
  %conv100.pre-phi.i = phi i16 [ %conv38.i, %sw.default.i741 ], [ %conv20.i740, %sw.bb7.i ], [ %conv6.i, %sw.bb.i738 ]
  %cmp5.i.i = phi i1 [ false, %sw.default.i741 ], [ true, %sw.bb7.i ], [ false, %sw.bb.i738 ]
  %248 = select i1 %cmp.i, i16 512, i16 0
  %conv.i.i743 = sub nuw nsw i16 -3050, %248
  %conv10.i.i744 = sub nuw nsw i16 -3000, %248
  %conv14.i.i745 = sub nuw nsw i16 -2999, %248
  %retval.0.i120.i.i = sub nuw nsw i32 -179306495, %sub.i
  %mul40.i.i = shl nsw i32 %freq_inc.2.i.i, 1
  %mul34.neg.i.i = mul i32 %freq_inc.2.i.i, -2
  %conv.i.i.i747 = sub nuw nsw i16 -2996, %248
  %conv4.i.i.i = sub nuw nsw i16 -2995, %248
  %conv9.i.i.i = sub nuw nsw i16 -3018, %248
  %conv14.i.i.i = sub nuw nsw i16 -3017, %248
  %conv60.i748 = sub nuw nsw i16 -3011, %248
  %conv62.i = sub nuw nsw i16 -3039, %248
  %retval.0.i244.i = sub nuw nsw i32 -199557024, %sub.i
  %retval.0.i247.i = sub nuw nsw i32 -199491569, %sub.i
  %conv97.i749 = select i1 %cmp.i, i16 -3551, i16 -3039
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %sw.epilog.i750
  %cmp46.i = phi i1 [ false, %sw.epilog.i750 ], [ true, %do.cond.i.do.body.i_crit_edge ]
  %249 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %arrayidx1.i.i, align 4
  %div.i210.i = sdiv i32 %250, 1000
  %div1.i.i = sdiv i32 %250, 10000
  %add.i211.i = add nsw i32 %div.i210.i, %div1.i.i
  %div2.i212.i = sdiv i32 %add.i211.i, 2
  %mul.i213.i = shl i32 %div2.i212.i, 16
  %251 = ptrtoint ptr %mclk.i.i725 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %mclk.i.i725, align 4
  %div3.i.i = sdiv i32 %252, 1000
  %div4.i215.i = sdiv i32 %mul.i213.i, %div3.i.i
  %253 = tail call i32 @llvm.smin.i32(i32 %div4.i215.i, i32 16384) #6
  %add7.i.i = sub i32 %freq_inc.2.i.i, %253
  %freqOffset.0.i.i = select i1 %cmp5.i.i, i32 0, i32 %add7.i.i
  %sub55.i.i = sub nsw i32 0, %253
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %land.lhs.true53.i.i.do.body.i.i_crit_edge, %do.body.i
  %stepCpt.0.i.i = phi i32 [ 0, %do.body.i ], [ %inc.i.i753, %land.lhs.true53.i.i.do.body.i.i_crit_edge ]
  %freqOffset.1.i.i = phi i32 [ %freqOffset.0.i.i, %do.body.i ], [ %freqOffset.2.i.i, %land.lhs.true53.i.i.do.body.i.i_crit_edge ]
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv.i.i743, i8 noundef zeroext 28) #6
  %div11.i.i = sdiv i32 %freqOffset.1.i.i, 256
  %conv12.i.i751 = trunc i32 %div11.i.i to i8
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv10.i.i744, i8 noundef zeroext %conv12.i.i751) #6
  %conv16.i.i752 = trunc i32 %freqOffset.1.i.i to i8
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv14.i.i745, i8 noundef zeroext %conv16.i.i752) #6
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv.i.i743, i8 noundef zeroext 24) #6
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i120.i.i, i8 noundef zeroext 1) #6
  %254 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %255)
  %cmp21.i216.i = icmp eq i8 %255, 18
  br i1 %cmp21.i216.i, label %if.then23.i.i, label %do.body.i.i.if.end26.i.i_crit_edge

do.body.i.i.if.end26.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i.i

if.then23.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i, i8 noundef zeroext 1) #6
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i, i8 noundef zeroext 0) #6
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.then23.i.i, %do.body.i.i.if.end26.i.i_crit_edge
  br i1 %cmp5.i.i, label %if.then29.i.i, label %if.else39.i.i

if.then29.i.i:                                    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %freqOffset.1.i.i)
  %cmp30.i.i = icmp sgt i32 %freqOffset.1.i.i, -1
  br i1 %cmp30.i.i, label %if.then32.i.i, label %if.else36.i.i

if.then32.i.i:                                    ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub35.i.i = sub i32 %mul34.neg.i.i, %freqOffset.1.i.i
  br label %if.end42.i.i

if.else36.i.i:                                    ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub37.i.i = sub i32 0, %freqOffset.1.i.i
  br label %if.end42.i.i

if.else39.i.i:                                    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add41.i.i = add i32 %freqOffset.1.i.i, %mul40.i.i
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.else39.i.i, %if.else36.i.i, %if.then32.i.i
  %freqOffset.2.i.i = phi i32 [ %sub35.i.i, %if.then32.i.i ], [ %sub37.i.i, %if.else36.i.i ], [ %add41.i.i, %if.else39.i.i ]
  %call43.i.i = tail call i32 @stv0900_get_demod_lock(ptr noundef %3, i32 noundef %5, i32 noundef %237) #6
  %call1.i.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv.i.i.i747) #6
  %conv2.i.i.i = zext i8 %call1.i.i.i to i32
  %shl.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 8
  %call5.i.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv4.i.i.i) #6
  %conv6.i.i.i = zext i8 %call5.i.i.i to i32
  %or.i.i.i = or i32 %shl.i.i.i, %conv6.i.i.i
  %call7.i.i.i = tail call i32 @ge2comp(i32 noundef %or.i.i.i, i32 noundef 16) #6
  %call10.i.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv9.i.i.i) #6
  %conv11.i.i.i = zext i8 %call10.i.i.i to i32
  %shl12.i.i.i = shl nuw nsw i32 %conv11.i.i.i, 8
  %call15.i.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv14.i.i.i) #6
  %conv16.i.i.i = zext i8 %call15.i.i.i to i32
  %or17.i.i.i = or i32 %shl12.i.i.i, %conv16.i.i.i
  %256 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %arrayidx1.i.i, align 4
  %div.i.i.i = sdiv i32 %257, 1000
  %div18.i.i.i = sdiv i32 %257, 10000
  %add.i.i.i = add nsw i32 %div.i.i.i, %div18.i.i.i
  %div19.i.i.i = sdiv i32 %add.i.i.i, 2
  %mul.i.i.i = shl i32 %div19.i.i.i, 16
  %258 = ptrtoint ptr %mclk.i.i725 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %mclk.i.i725, align 4
  %div20.i.i.i = sdiv i32 %259, 1000
  %div21.i.i.i = sdiv i32 %mul.i.i.i, %div20.i.i.i
  %260 = tail call i32 @llvm.smin.i32(i32 %div21.i.i.i, i32 16384) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %or17.i.i.i)
  %cmp23.i.i.i = icmp ult i32 %or17.i.i.i, 8193
  %mul25.i.i.i = shl i32 %260, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i.i.i, i32 %mul25.i.i.i)
  %cmp26.i.i.i = icmp sle i32 %call7.i.i.i, %mul25.i.i.i
  %mul29.i.i.i = mul i32 %260, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i.i.i, i32 %mul29.i.i.i)
  %cmp30.i.i.i = icmp sge i32 %call7.i.i.i, %mul29.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i.i)
  %cmp45.i.i = icmp eq i32 %call43.i.i, 0
  %261 = select i1 %cmp45.i.i, i1 %cmp23.i.i.i, i1 false
  %262 = select i1 %261, i1 %cmp26.i.i.i, i1 false
  %or.cond.i217.i = select i1 %262, i1 %cmp30.i.i.i, i1 false
  %sub50.i.i = sub i32 %freqOffset.2.i.i, %freq_inc.2.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub50.i.i, i32 %253)
  %cmp51.i.i = icmp slt i32 %sub50.i.i, %253
  %or.cond107.i.i = select i1 %or.cond.i217.i, i1 %cmp51.i.i, i1 false
  br i1 %or.cond107.i.i, label %land.lhs.true53.i.i, label %if.end42.i.i.stv0900_search_carr_sw_loop.exit.i_crit_edge

if.end42.i.i.stv0900_search_carr_sw_loop.exit.i_crit_edge: ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0900_search_carr_sw_loop.exit.i

land.lhs.true53.i.i:                              ; preds = %if.end42.i.i
  %inc.i.i753 = add nuw nsw i32 %stepCpt.0.i.i, 1
  %add54.i.i = add i32 %freqOffset.2.i.i, %freq_inc.2.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add54.i.i, i32 %sub55.i.i)
  %cmp56.i.i = icmp sgt i32 %add54.i.i, %sub55.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i753, i32 %239)
  %cmp58.i.i = icmp ult i32 %inc.i.i753, %239
  %or.cond108.i.i = select i1 %cmp56.i.i, i1 %cmp58.i.i, i1 false
  br i1 %or.cond108.i.i, label %land.lhs.true53.i.i.do.body.i.i_crit_edge, label %land.lhs.true53.i.i.stv0900_search_carr_sw_loop.exit.i_crit_edge

land.lhs.true53.i.i.stv0900_search_carr_sw_loop.exit.i_crit_edge: ; preds = %land.lhs.true53.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0900_search_carr_sw_loop.exit.i

land.lhs.true53.i.i.do.body.i.i_crit_edge:        ; preds = %land.lhs.true53.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

stv0900_search_carr_sw_loop.exit.i:               ; preds = %land.lhs.true53.i.i.stv0900_search_carr_sw_loop.exit.i_crit_edge, %if.end42.i.i.stv0900_search_carr_sw_loop.exit.i_crit_edge
  %call43.lcssa.i.i = phi i32 [ %call43.i.i, %if.end42.i.i.stv0900_search_carr_sw_loop.exit.i_crit_edge ], [ 0, %land.lhs.true53.i.i.stv0900_search_carr_sw_loop.exit.i_crit_edge ]
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i120.i.i, i8 noundef zeroext 0) #6
  %call1.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv.i.i.i747) #6
  %conv2.i.i = zext i8 %call1.i.i to i32
  %shl.i.i754 = shl nuw nsw i32 %conv2.i.i, 8
  %call5.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv4.i.i.i) #6
  %conv6.i.i755 = zext i8 %call5.i.i to i32
  %or.i.i756 = or i32 %shl.i.i754, %conv6.i.i755
  %call7.i.i = tail call i32 @ge2comp(i32 noundef %or.i.i756, i32 noundef 16) #6
  %call10.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv9.i.i.i) #6
  %conv11.i.i = zext i8 %call10.i.i to i32
  %shl12.i.i = shl nuw nsw i32 %conv11.i.i, 8
  %call15.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv14.i.i.i) #6
  %conv16.i221.i = zext i8 %call15.i.i to i32
  %or17.i.i = or i32 %shl12.i.i, %conv16.i221.i
  %263 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %arrayidx1.i.i, align 4
  %div.i223.i = sdiv i32 %264, 1000
  %div18.i224.i = sdiv i32 %264, 10000
  %add.i225.i = add nsw i32 %div.i223.i, %div18.i224.i
  %div19.i.i = sdiv i32 %add.i225.i, 2
  %mul.i226.i = shl i32 %div19.i.i, 16
  %265 = ptrtoint ptr %mclk.i.i725 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %mclk.i.i725, align 4
  %div20.i.i = sdiv i32 %266, 1000
  %div21.i.i757 = sdiv i32 %mul.i226.i, %div20.i.i
  %267 = tail call i32 @llvm.smin.i32(i32 %div21.i.i757, i32 16384) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %or17.i.i)
  %cmp23.i.i = icmp ugt i32 %or17.i.i, 8192
  %mul25.i.i = shl i32 %267, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i.i, i32 %mul25.i.i)
  %cmp26.i.i = icmp sgt i32 %call7.i.i, %mul25.i.i
  %or.cond.i228.i = select i1 %cmp23.i.i, i1 true, i1 %cmp26.i.i
  %mul29.i.i758 = mul i32 %267, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i.i, i32 %mul29.i.i758)
  %cmp30.i229.i = icmp slt i32 %call7.i.i, %mul29.i.i758
  %or.cond51.i.i = select i1 %or.cond.i228.i, i1 true, i1 %cmp30.i229.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call43.lcssa.i.i)
  %cmp41.i = icmp eq i32 %call43.lcssa.i.i, 1
  %or.cond.i759 = select i1 %cmp41.i, i1 true, i1 %or.cond51.i.i
  %brmerge.i = or i1 %cmp46.i, %or.cond.i759
  br i1 %brmerge.i, label %if.then48.i, label %stv0900_search_carr_sw_loop.exit.i.do.cond.i_crit_edge

stv0900_search_carr_sw_loop.exit.i.do.cond.i_crit_edge: ; preds = %stv0900_search_carr_sw_loop.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond.i

if.then48.i:                                      ; preds = %stv0900_search_carr_sw_loop.exit.i
  %268 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %269)
  %cmp51.i = icmp ugt i8 %269, 31
  %.281.i = select i1 %cmp51.i, i8 73, i8 -19
  %.282.i = select i1 %cmp51.i, i8 -98, i8 -120
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv60.i748, i8 noundef zeroext %.281.i) #6
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv62.i, i8 noundef zeroext %.282.i) #6
  %call65.i = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %retval.0.i244.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call65.i)
  %cmp67.i760 = icmp ne i8 %call65.i, 2
  %cmp41.not.i = xor i1 %cmp41.i, true
  %brmerge174.i = select i1 %cmp67.i760, i1 true, i1 %cmp41.not.i
  br i1 %brmerge174.i, label %if.then48.i.do.cond.i_crit_edge, label %if.then71.i761

if.then48.i.do.cond.i_crit_edge:                  ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond.i

if.then71.i761:                                   ; preds = %if.then48.i
  tail call void @msleep(i32 noundef %237) #6
  %call73.i = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %retval.0.i247.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %call73.i)
  %cmp75.i = icmp ult i8 %call73.i, 13
  br i1 %cmp75.i, label %if.end81.i, label %if.then71.i761.if.end245_crit_edge

if.then71.i761.if.end245_crit_edge:               ; preds = %if.then71.i761
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end245

if.end81.i:                                       ; preds = %if.then71.i761
  tail call void @msleep(i32 noundef %237) #6
  %call79.i = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %retval.0.i247.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %call79.i)
  %cmp82.i = icmp ugt i8 %call79.i, 12
  %brmerge175.i = or i1 %cmp46.i, %cmp82.i
  %.mux.i = zext i1 %cmp82.i to i32
  br i1 %brmerge175.i, label %if.end81.i.do.cond.i_crit_edge, label %if.then87.i

if.end81.i.do.cond.i_crit_edge:                   ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond.i

if.then87.i:                                      ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #8
  %270 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %271)
  %cmp90.i = icmp ugt i8 %271, 31
  %.283.i = select i1 %cmp90.i, i8 121, i8 104
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv97.i749, i8 noundef zeroext %.283.i) #6
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv100.pre-phi.i, i8 noundef zeroext -119) #6
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then87.i, %if.end81.i.do.cond.i_crit_edge, %if.then48.i.do.cond.i_crit_edge, %stv0900_search_carr_sw_loop.exit.i.do.cond.i_crit_edge
  %lock.0.i762 = phi i32 [ 0, %if.then87.i ], [ %.mux.i, %if.end81.i.do.cond.i_crit_edge ], [ %call43.lcssa.i.i, %if.then48.i.do.cond.i_crit_edge ], [ %call43.lcssa.i.i, %stv0900_search_carr_sw_loop.exit.i.do.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lock.0.i762)
  %cmp105.i = icmp ne i32 %lock.0.i762, 0
  %brmerge177.i = or i1 %cmp46.i, %cmp105.i
  %272 = select i1 %brmerge177.i, i1 true, i1 %or.cond51.i.i
  br i1 %272, label %do.cond.i.if.end240_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.cond.i.if.end240_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end240

if.end240:                                        ; preds = %do.cond.i.if.end240_crit_edge, %if.end223.if.end240_crit_edge, %if.then214.if.end240_crit_edge
  %lock.1 = phi i32 [ %lock.0, %if.end223.if.end240_crit_edge ], [ %call.i707, %if.then214.if.end240_crit_edge ], [ %lock.0.i762, %do.cond.i.if.end240_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %lock.1)
  %cmp241 = icmp eq i32 %lock.1, 1
  br i1 %cmp241, label %if.end240.if.end245_crit_edge, label %if.end240.cleanup_crit_edge

if.end240.cleanup_crit_edge:                      ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end240.if.end245_crit_edge:                    ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end245

if.end245:                                        ; preds = %if.end240.if.end245_crit_edge, %if.then71.i761.if.end245_crit_edge
  %call244 = tail call fastcc i32 @stv0900_get_signal_params(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call244)
  %cmp249 = icmp eq i32 %call244, 12
  br i1 %cmp249, label %if.then251, label %if.end245.if.end312_crit_edge

if.end245.if.end312_crit_edge:                    ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end312

if.then251:                                       ; preds = %if.end245
  tail call fastcc void @stv0900_track_optimization(ptr noundef %fe)
  %273 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %274)
  %cmp254 = icmp ult i8 %274, 18
  br i1 %cmp254, label %if.then256, label %if.else271

if.then256:                                       ; preds = %if.then251
  %275 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %demodulator_priv, align 4
  %277 = ptrtoint ptr %276 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %276, align 4
  %call1.i = tail call zeroext i8 @stv0900_get_bits(ptr noundef %278, i32 noundef -199557024) #6
  %279 = zext i8 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %279, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %call1.i, label %sw.default.i767 [
    i8 2, label %if.then256.do.body.i769_crit_edge
    i8 3, label %sw.bb2.i
  ]

if.then256.do.body.i769_crit_edge:                ; preds = %if.then256
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i769

sw.bb2.i:                                         ; preds = %if.then256
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call zeroext i8 @stv0900_get_bits(ptr noundef %278, i32 noundef -181206912) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call4.i)
  %cmp.i765 = icmp eq i8 %call4.i, 1
  %..i766 = select i1 %cmp.i765, i32 2, i32 0
  br label %do.body.i769

sw.default.i767:                                  ; preds = %if.then256
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i769

do.body.i769:                                     ; preds = %sw.default.i767, %sw.bb2.i, %if.then256.do.body.i769_crit_edge
  %fnd_standard.0.i = phi i32 [ 4, %sw.default.i767 ], [ 1, %if.then256.do.body.i769_crit_edge ], [ %..i766, %sw.bb2.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %280 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %280)
  %tobool.not.i768 = icmp eq i32 %280, 0
  br i1 %tobool.not.i768, label %do.body.i769.stv0900_get_standard.exit_crit_edge, label %do.end.i771

do.body.i769.stv0900_get_standard.exit_crit_edge: ; preds = %do.body.i769
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0900_get_standard.exit

do.end.i771:                                      ; preds = %do.body.i769
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i770 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %fnd_standard.0.i) #9
  br label %stv0900_get_standard.exit

stv0900_get_standard.exit:                        ; preds = %do.end.i771, %do.body.i769.stv0900_get_standard.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fnd_standard.0.i)
  %cmp258 = icmp eq i32 %fnd_standard.0.i, 0
  br i1 %cmp258, label %land.lhs.true260, label %stv0900_get_standard.exit.if.else266_crit_edge

stv0900_get_standard.exit.if.else266_crit_edge:   ; preds = %stv0900_get_standard.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else266

land.lhs.true260:                                 ; preds = %stv0900_get_standard.exit
  %281 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %demodulator_priv, align 4
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %282, align 4
  %call1.i773 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %284, i32 noundef -233111456) #6
  %285 = zext i8 %call1.i773 to i64
  call void @__sanitizer_cov_trace_switch(i64 %285, ptr @__sancov_gen_cov_switch_values.89)
  switch i8 %call1.i773, label %sw.default.i778 [
    i8 2, label %land.lhs.true260.do.body.i781_crit_edge
    i8 3, label %sw.bb2.i777
  ]

land.lhs.true260.do.body.i781_crit_edge:          ; preds = %land.lhs.true260
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i781

sw.bb2.i777:                                      ; preds = %land.lhs.true260
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i774 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %284, i32 noundef -214761344) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call4.i774)
  %cmp.i775 = icmp eq i8 %call4.i774, 1
  %..i776 = select i1 %cmp.i775, i32 2, i32 0
  br label %do.body.i781

sw.default.i778:                                  ; preds = %land.lhs.true260
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i781

do.body.i781:                                     ; preds = %sw.default.i778, %sw.bb2.i777, %land.lhs.true260.do.body.i781_crit_edge
  %fnd_standard.0.i779 = phi i32 [ 4, %sw.default.i778 ], [ 1, %land.lhs.true260.do.body.i781_crit_edge ], [ %..i776, %sw.bb2.i777 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %286 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %286)
  %tobool.not.i780 = icmp eq i32 %286, 0
  br i1 %tobool.not.i780, label %do.body.i781.stv0900_get_standard.exit784_crit_edge, label %do.end.i783

do.body.i781.stv0900_get_standard.exit784_crit_edge: ; preds = %do.body.i781
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0900_get_standard.exit784

do.end.i783:                                      ; preds = %do.body.i781
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i782 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %fnd_standard.0.i779) #9
  br label %stv0900_get_standard.exit784

stv0900_get_standard.exit784:                     ; preds = %do.end.i783, %do.body.i781.stv0900_get_standard.exit784_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fnd_standard.0.i779)
  %cmp262 = icmp eq i32 %fnd_standard.0.i779, 0
  br i1 %cmp262, label %if.then264, label %stv0900_get_standard.exit784.if.else266_crit_edge

stv0900_get_standard.exit784.if.else266_crit_edge: ; preds = %stv0900_get_standard.exit784
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else266

if.then264:                                       ; preds = %stv0900_get_standard.exit784
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 20) #6
  br label %if.end281.sink.split

if.else266:                                       ; preds = %stv0900_get_standard.exit784.if.else266_crit_edge, %stv0900_get_standard.exit.if.else266_crit_edge
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i, i8 noundef zeroext 0) #6
  tail call void @msleep(i32 noundef 3) #6
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i, i8 noundef zeroext 1) #6
  br label %if.end281.sink.split

if.else271:                                       ; preds = %if.then251
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %274)
  %cmp274 = icmp ugt i8 %274, 31
  br i1 %cmp274, label %if.then276, label %if.else271.if.end281_crit_edge

if.else271.if.end281_crit_edge:                   ; preds = %if.else271
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end281

if.then276:                                       ; preds = %if.else271
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i, i8 noundef zeroext 0) #6
  tail call void @msleep(i32 noundef 3) #6
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i, i8 noundef zeroext 1) #6
  br label %if.end281.sink.split

if.end281.sink.split:                             ; preds = %if.then276, %if.else266, %if.then264
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i, i8 noundef zeroext 0) #6
  br label %if.end281

if.end281:                                        ; preds = %if.end281.sink.split, %if.else271.if.end281_crit_edge
  %call282 = tail call fastcc i32 @stv0900_wait_for_lock(ptr noundef %3, i32 noundef %5, i32 noundef %fec_timeout.0897, i32 noundef %fec_timeout.0897)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call282)
  %cmp283 = icmp eq i32 %call282, 1
  br i1 %cmp283, label %if.then285, label %if.else306

if.then285:                                       ; preds = %if.end281
  %arrayidx287 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 15, i32 %5
  %287 = ptrtoint ptr %arrayidx287 to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 1, ptr %arrayidx287, align 4
  %standard = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 15, i32 %5, i32 3
  %288 = ptrtoint ptr %standard to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %standard, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %289)
  %cmp291 = icmp eq i32 %289, 1
  br i1 %cmp291, label %if.then293, label %if.then285.if.end301_crit_edge

if.then285.if.end301_crit_edge:                   ; preds = %if.then285
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end301

if.then293:                                       ; preds = %if.then285
  %290 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %291)
  %cmp.i807 = icmp eq i8 %291, 16
  br i1 %cmp.i807, label %if.then.i812, label %if.else.i814

if.then.i812:                                     ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #8
  %retval.0.i.i810 = sub nuw nsw i32 -200278012, %sub.i
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i.i810, i8 noundef zeroext 1) #6
  %conv3.i = select i1 %cmp.i, i16 -3232, i16 -2720
  %call4.i811 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv3.i) #6
  %292 = and i8 %call4.i811, 3
  %retval.0.i32.i = sub nuw nsw i32 -200278013, %sub.i
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i32.i, i8 noundef zeroext %292) #6
  br label %stv0900_set_dvbs2_rolloff.exit

if.else.i814:                                     ; preds = %if.then293
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %291)
  %cmp10.i813 = icmp ult i8 %291, 33
  br i1 %cmp10.i813, label %if.then12.i, label %if.else14.i815

if.then12.i:                                      ; preds = %if.else.i814
  call void @__sanitizer_cov_trace_pc() #8
  %retval.0.i35.i = select i1 %cmp.i, i32 -233832444, i32 -200278012
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i35.i, i8 noundef zeroext 0) #6
  br label %stv0900_set_dvbs2_rolloff.exit

if.else14.i815:                                   ; preds = %if.else.i814
  call void @__sanitizer_cov_trace_pc() #8
  %retval.0.i38.i = select i1 %cmp.i, i32 -233832320, i32 -200277888
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i38.i, i8 noundef zeroext 0) #6
  br label %stv0900_set_dvbs2_rolloff.exit

stv0900_set_dvbs2_rolloff.exit:                   ; preds = %if.else14.i815, %if.then12.i, %if.then.i812
  %retval.0.i818 = sub nuw nsw i32 -179240896, %sub.i
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i818, i8 noundef zeroext 1) #6
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i818, i8 noundef zeroext 0) #6
  br label %if.end301

if.end301:                                        ; preds = %stv0900_set_dvbs2_rolloff.exit, %if.then285.if.end301_crit_edge
  %.sink945 = phi i8 [ 103, %stv0900_set_dvbs2_rolloff.exit ], [ 117, %if.then285.if.end301_crit_edge ]
  %conv300 = sub nuw nsw i16 -2664, %9
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv300, i8 noundef zeroext %.sink945) #6
  %conv303 = sub nuw nsw i16 -2648, %9
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv303, i8 noundef zeroext 0) #6
  %conv305 = sub nuw nsw i16 -2660, %9
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv305, i8 noundef zeroext -63) #6
  br label %cleanup

if.else306:                                       ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #8
  %293 = select i1 %cmp.i, i16 512, i16 0
  %conv.i835 = sub nuw nsw i16 -2996, %293
  %call1.i836 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv.i835) #6
  %conv2.i837 = zext i8 %call1.i836 to i32
  %shl.i = shl nuw nsw i32 %conv2.i837, 8
  %conv4.i = sub nuw nsw i16 -2995, %293
  %call5.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv4.i) #6
  %conv6.i838 = zext i8 %call5.i to i32
  %or.i = or i32 %shl.i, %conv6.i838
  %call7.i = tail call i32 @ge2comp(i32 noundef %or.i, i32 noundef 16) #6
  %conv9.i = sub nuw nsw i16 -3018, %293
  %call10.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv9.i) #6
  %conv11.i = zext i8 %call10.i to i32
  %shl12.i = shl nuw nsw i32 %conv11.i, 8
  %conv14.i839 = sub nuw nsw i16 -3017, %293
  %call15.i840 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv14.i839) #6
  %conv16.i = zext i8 %call15.i840 to i32
  %or17.i = or i32 %shl12.i, %conv16.i
  %arrayidx.i841 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 7, i32 %5
  %294 = ptrtoint ptr %arrayidx.i841 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %arrayidx.i841, align 4
  %div.i842 = sdiv i32 %295, 1000
  %div18.i = sdiv i32 %295, 10000
  %add.i843 = add nsw i32 %div.i842, %div18.i
  %div19.i = sdiv i32 %add.i843, 2
  %mul.i844 = shl i32 %div19.i, 16
  %mclk.i845 = getelementptr inbounds %struct.stv0900_internal, ptr %3, i32 0, i32 1
  %296 = ptrtoint ptr %mclk.i845 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %mclk.i845, align 4
  %div20.i = sdiv i32 %297, 1000
  %div21.i = sdiv i32 %mul.i844, %div20.i
  %298 = tail call i32 @llvm.smin.i32(i32 %div21.i, i32 16384) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %or17.i)
  %cmp23.i846 = icmp ult i32 %or17.i, 8193
  %mul25.i = shl i32 %298, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i, i32 %mul25.i)
  %cmp26.i847 = icmp sle i32 %call7.i, %mul25.i
  %or.cond.i848 = select i1 %cmp23.i846, i1 %cmp26.i847, i1 false
  %mul29.i = mul i32 %298, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i, i32 %mul29.i)
  %cmp30.i = icmp sge i32 %call7.i, %mul29.i
  %or.cond51.i = select i1 %or.cond.i848, i1 %cmp30.i, i1 false
  %arrayidx309 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 15, i32 %5
  %299 = ptrtoint ptr %arrayidx309 to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 0, ptr %arrayidx309, align 4
  br label %if.end312

if.end312:                                        ; preds = %if.else306, %if.end245.if.end312_crit_edge
  %signal_type.2 = phi i32 [ 9, %if.else306 ], [ %call244, %if.end245.if.end312_crit_edge ]
  %no_signal.0 = phi i1 [ %or.cond51.i, %if.else306 ], [ true, %if.end245.if.end312_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %signal_type.2)
  %cmp313.not = icmp eq i32 %signal_type.2, 9
  %or.cond564 = select i1 %cmp313.not, i1 %no_signal.0, i1 false
  br i1 %or.cond564, label %if.end318, label %if.end312.cleanup_crit_edge

if.end312.cleanup_crit_edge:                      ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end318:                                        ; preds = %if.end312
  %300 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %301)
  %cmp321 = icmp ugt i8 %301, 17
  br i1 %cmp321, label %if.then323, label %if.end327

if.then323:                                       ; preds = %if.end318
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx325 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 15, i32 %5
  %302 = ptrtoint ptr %arrayidx325 to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 0, ptr %arrayidx325, align 4
  br label %cleanup

if.end327:                                        ; preds = %if.end318
  %retval.0.i851 = sub nuw nsw i32 -199557024, %sub.i
  %call329 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %retval.0.i851) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %call329)
  %cmp331 = icmp eq i8 %call329, 3
  br i1 %cmp331, label %land.lhs.true333, label %if.end327.cleanup_crit_edge

if.end327.cleanup_crit_edge:                      ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true333:                                 ; preds = %if.end327
  %303 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %arrayidx176, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %304)
  %cmp336 = icmp ult i32 %304, 2
  br i1 %cmp336, label %if.then338, label %land.lhs.true333.cleanup_crit_edge

land.lhs.true333.cleanup_crit_edge:               ; preds = %land.lhs.true333
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then338:                                       ; preds = %land.lhs.true333
  %305 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %demodulator_priv, align 4
  %307 = ptrtoint ptr %306 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %306, align 4
  %demod1.i853 = getelementptr inbounds %struct.stv0900_state, ptr %306, i32 0, i32 4
  %309 = ptrtoint ptr %demod1.i853 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %demod1.i853, align 4
  %arrayidx.i854 = getelementptr %struct.stv0900_internal, ptr %308, i32 0, i32 15, i32 %310
  %311 = ptrtoint ptr %arrayidx.i854 to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 0, ptr %arrayidx.i854, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %310)
  %cmp.i.i855 = icmp eq i32 %310, 1
  %sub.i.i856 = select i1 %cmp.i.i855, i32 33554432, i32 0
  %retval.0.i.i857 = sub nuw nsw i32 -199557024, %sub.i.i856
  %call2.i = tail call zeroext i8 @stv0900_get_bits(ptr noundef %308, i32 noundef %retval.0.i.i857) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %call2.i)
  %cmp.i858 = icmp eq i8 %call2.i, 3
  br i1 %cmp.i858, label %if.then.i876, label %if.else60.i

if.then.i876:                                     ; preds = %if.then338
  %mclk.i859 = getelementptr inbounds %struct.stv0900_internal, ptr %308, i32 0, i32 1
  %312 = ptrtoint ptr %mclk.i859 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %mclk.i859, align 4
  %call4.i860 = tail call fastcc i32 @stv0900_get_symbol_rate(ptr noundef %308, i32 noundef %313, i32 noundef %310) #6, !range !158
  %conv.i.i861 = select i1 %cmp.i.i855, i16 -3480, i16 -2968
  %call1.i.i862 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %308, i16 noundef zeroext %conv.i.i861) #6
  %conv2.i.i863 = zext i8 %call1.i.i862 to i32
  %shl.i.i864 = shl nuw nsw i32 %conv2.i.i863, 16
  %conv4.i.i865 = or i16 %conv.i.i861, 1
  %call5.i.i866 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %308, i16 noundef zeroext %conv4.i.i865) #6
  %conv6.i.i867 = zext i8 %call5.i.i866 to i32
  %shl7.i.i = shl nuw nsw i32 %conv6.i.i867, 8
  %add8.i.i = or i32 %shl7.i.i, %shl.i.i864
  %conv11.i.i868 = or i16 %conv.i.i861, 2
  %call12.i.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %308, i16 noundef zeroext %conv11.i.i868) #6
  %conv13.i.i = zext i8 %call12.i.i to i32
  %add14.i.i = or i32 %add8.i.i, %conv13.i.i
  %call15.i.i869 = tail call i32 @ge2comp(i32 noundef %add14.i.i, i32 noundef 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i869)
  %cmp.i123.i = icmp eq i32 %call15.i.i869, 0
  %spec.store.select.i.i870 = select i1 %cmp.i123.i, i32 1, i32 %call15.i.i869
  %mul.i.i871 = mul i32 %call4.i860, 10
  %div.i.i872 = sdiv i32 16777216, %spec.store.select.i.i870
  %div17.i.i873 = sdiv i32 %mul.i.i871, %div.i.i872
  %div18.i.i874 = sdiv i32 %div17.i.i873, 320
  %add.i875 = add i32 %div18.i.i874, %call4.i860
  %arrayidx6.i = getelementptr %struct.stv0900_internal, ptr %308, i32 0, i32 9, i32 %310
  %314 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %315)
  %cmp7.i = icmp eq i32 %315, 0
  br i1 %cmp7.i, label %if.then9.i, label %if.then.i876.if.end.i_crit_edge

if.then.i876.if.end.i_crit_edge:                  ; preds = %if.then.i876
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then9.i:                                       ; preds = %if.then.i876
  %316 = ptrtoint ptr %mclk.i859 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %mclk.i859, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %318 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %318)
  %tobool.not.i.i877 = icmp eq i32 %318, 0
  br i1 %tobool.not.i.i877, label %if.then9.i.stv0900_set_symbol_rate.exit.i_crit_edge, label %do.end.i.i879

if.then9.i.stv0900_set_symbol_rate.exit.i_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0900_set_symbol_rate.exit.i

do.end.i.i879:                                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i878 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %317, i32 noundef %add.i875, i32 noundef %310) #9
  br label %stv0900_set_symbol_rate.exit.i

stv0900_set_symbol_rate.exit.i:                   ; preds = %do.end.i.i879, %if.then9.i.stv0900_set_symbol_rate.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 60000000, i32 %add.i875)
  %cmp.i124.i = icmp ugt i32 %add.i875, 60000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %add.i875)
  %cmp5.i.i880 = icmp ugt i32 %add.i875, 6000000
  %..i.i881 = select i1 %cmp5.i.i880, i32 6, i32 9
  %.42.i.i = select i1 %cmp5.i.i880, i32 10, i32 7
  %.sink41.i.i = select i1 %cmp.i124.i, i32 4, i32 %..i.i881
  %.sink.i.i882 = select i1 %cmp.i124.i, i32 12, i32 %.42.i.i
  %shl7.i125.i = shl i32 %add.i875, %.sink41.i.i
  %shr8.i.i = lshr i32 %317, %.sink.i.i882
  %div9.i.i = udiv i32 %shl7.i125.i, %shr8.i.i
  %conv.i127.i = select i1 %cmp.i.i855, i16 -3490, i16 -2978
  %shr17.i.i = lshr i32 %div9.i.i, 8
  %319 = trunc i32 %shr17.i.i to i8
  %conv18.i.i883 = and i8 %319, 127
  tail call void @stv0900_write_reg(ptr noundef %308, i16 noundef zeroext %conv.i127.i, i8 noundef zeroext %conv18.i.i883) #6
  %conv20.i.i884 = or i16 %conv.i127.i, 1
  %conv22.i.i885 = trunc i32 %div9.i.i to i8
  tail call void @stv0900_write_reg(ptr noundef %308, i16 noundef zeroext %conv20.i.i884, i8 noundef zeroext %conv22.i.i885) #6
  br label %if.end.i

if.end.i:                                         ; preds = %stv0900_set_symbol_rate.exit.i, %if.then.i876.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000001, i32 %add.i875)
  %cmp6.i.i = icmp slt i32 %add.i875, 1000001
  br i1 %cmp6.i.i, label %if.end.i.stv0900_get_lock_timeout.exit.i_crit_edge, label %if.else8.i.i

if.end.i.stv0900_get_lock_timeout.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0900_get_lock_timeout.exit.i

if.else8.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000001, i32 %add.i875)
  %cmp9.i.i = icmp ult i32 %add.i875, 2000001
  br i1 %cmp9.i.i, label %if.else8.i.i.stv0900_get_lock_timeout.exit.i_crit_edge, label %if.else11.i.i

if.else8.i.i.stv0900_get_lock_timeout.exit.i_crit_edge: ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0900_get_lock_timeout.exit.i

if.else11.i.i:                                    ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000001, i32 %add.i875)
  %cmp12.i.i = icmp ult i32 %add.i875, 5000001
  br i1 %cmp12.i.i, label %if.else11.i.i.stv0900_get_lock_timeout.exit.i_crit_edge, label %if.else14.i.i

if.else11.i.i.stv0900_get_lock_timeout.exit.i_crit_edge: ; preds = %if.else11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0900_get_lock_timeout.exit.i

if.else14.i.i:                                    ; preds = %if.else11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000001, i32 %add.i875)
  %cmp15.i.i886 = icmp ult i32 %add.i875, 10000001
  br i1 %cmp15.i.i886, label %if.else14.i.i.stv0900_get_lock_timeout.exit.i_crit_edge, label %if.else17.i.i

if.else14.i.i.stv0900_get_lock_timeout.exit.i_crit_edge: ; preds = %if.else14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0900_get_lock_timeout.exit.i

if.else17.i.i:                                    ; preds = %if.else14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000001, i32 %add.i875)
  %cmp18.i.i = icmp ult i32 %add.i875, 20000001
  %.55.i.i = select i1 %cmp18.i.i, i32 130, i32 100
  %phi.cast.i = select i1 %cmp18.i.i, i32 200, i32 150
  br label %stv0900_get_lock_timeout.exit.i

stv0900_get_lock_timeout.exit.i:                  ; preds = %if.else17.i.i, %if.else14.i.i.stv0900_get_lock_timeout.exit.i_crit_edge, %if.else11.i.i.stv0900_get_lock_timeout.exit.i_crit_edge, %if.else8.i.i.stv0900_get_lock_timeout.exit.i_crit_edge, %if.end.i.stv0900_get_lock_timeout.exit.i_crit_edge
  %.sink54.i.i = phi i32 [ 1500, %if.end.i.stv0900_get_lock_timeout.exit.i_crit_edge ], [ 1250, %if.else8.i.i.stv0900_get_lock_timeout.exit.i_crit_edge ], [ 500, %if.else11.i.i.stv0900_get_lock_timeout.exit.i_crit_edge ], [ 350, %if.else14.i.i.stv0900_get_lock_timeout.exit.i_crit_edge ], [ %phi.cast.i, %if.else17.i.i ]
  %.sink.i129.i = phi i32 [ 1700, %if.end.i.stv0900_get_lock_timeout.exit.i_crit_edge ], [ 1100, %if.else8.i.i.stv0900_get_lock_timeout.exit.i_crit_edge ], [ 550, %if.else11.i.i.stv0900_get_lock_timeout.exit.i_crit_edge ], [ 250, %if.else14.i.i.stv0900_get_lock_timeout.exit.i_crit_edge ], [ %.55.i.i, %if.else17.i.i ]
  %320 = select i1 %cmp.i.i855, i16 512, i16 0
  %conv12.i = sub nuw nsw i16 -2996, %320
  %call13.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %308, i16 noundef zeroext %conv12.i) #6
  %conv16.i887 = sub nuw nsw i16 -2995, %320
  %call17.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %308, i16 noundef zeroext %conv16.i887) #6
  %retval.0.i139.i = sub nuw nsw i32 -200015864, %sub.i.i856
  tail call void @stv0900_write_bits(ptr noundef %308, i32 noundef %retval.0.i139.i, i8 noundef zeroext 0) #6
  %retval.0.i142.i = sub nuw nsw i32 -200277968, %sub.i.i856
  tail call void @stv0900_write_bits(ptr noundef %308, i32 noundef %retval.0.i142.i, i8 noundef zeroext 3) #6
  %conv22.i888 = sub nuw nsw i16 -3050, %320
  tail call void @stv0900_write_reg(ptr noundef %308, i16 noundef zeroext %conv22.i888, i8 noundef zeroext 28) #6
  %conv24.i = sub nuw nsw i16 -3000, %320
  tail call void @stv0900_write_reg(ptr noundef %308, i16 noundef zeroext %conv24.i, i8 noundef zeroext %call13.i) #6
  %conv27.i = sub nuw nsw i16 -2999, %320
  tail call void @stv0900_write_reg(ptr noundef %308, i16 noundef zeroext %conv27.i, i8 noundef zeroext %call17.i) #6
  tail call void @stv0900_write_reg(ptr noundef %308, i16 noundef zeroext %conv22.i888, i8 noundef zeroext 24) #6
  %call31.i = tail call fastcc i32 @stv0900_wait_for_lock(ptr noundef %308, i32 noundef %310, i32 noundef %.sink54.i.i, i32 noundef %.sink.i129.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call31.i)
  %cmp32.i = icmp eq i32 %call31.i, 1
  br i1 %cmp32.i, label %if.then34.i, label %if.else.i890

if.then34.i:                                      ; preds = %stv0900_get_lock_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %321 = ptrtoint ptr %arrayidx.i854 to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 1, ptr %arrayidx.i854, align 4
  %call38.i = tail call fastcc i32 @stv0900_get_signal_params(ptr noundef %fe) #6
  tail call fastcc void @stv0900_track_optimization(ptr noundef %fe) #6
  br label %cleanup

if.else.i890:                                     ; preds = %stv0900_get_lock_timeout.exit.i
  tail call void @stv0900_write_bits(ptr noundef %308, i32 noundef %retval.0.i142.i, i8 noundef zeroext 2) #6
  tail call void @stv0900_write_reg(ptr noundef %308, i16 noundef zeroext %conv22.i888, i8 noundef zeroext 28) #6
  tail call void @stv0900_write_reg(ptr noundef %308, i16 noundef zeroext %conv24.i, i8 noundef zeroext %call13.i) #6
  tail call void @stv0900_write_reg(ptr noundef %308, i16 noundef zeroext %conv27.i, i8 noundef zeroext %call17.i) #6
  tail call void @stv0900_write_reg(ptr noundef %308, i16 noundef zeroext %conv22.i888, i8 noundef zeroext 24) #6
  %call50.i = tail call fastcc i32 @stv0900_wait_for_lock(ptr noundef %308, i32 noundef %310, i32 noundef %.sink54.i.i, i32 noundef %.sink.i129.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call50.i)
  %cmp51.i889 = icmp eq i32 %call50.i, 1
  br i1 %cmp51.i889, label %if.then53.i, label %if.else.i890.cleanup_crit_edge

if.else.i890.cleanup_crit_edge:                   ; preds = %if.else.i890
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then53.i:                                      ; preds = %if.else.i890
  call void @__sanitizer_cov_trace_pc() #8
  %322 = ptrtoint ptr %arrayidx.i854 to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 1, ptr %arrayidx.i854, align 4
  %call57.i = tail call fastcc i32 @stv0900_get_signal_params(ptr noundef %fe) #6
  tail call fastcc void @stv0900_track_optimization(ptr noundef %fe) #6
  br label %cleanup

if.else60.i:                                      ; preds = %if.then338
  call void @__sanitizer_cov_trace_pc() #8
  %323 = ptrtoint ptr %arrayidx.i854 to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 0, ptr %arrayidx.i854, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else60.i, %if.then53.i, %if.else.i890.cleanup_crit_edge, %if.then34.i, %land.lhs.true333.cleanup_crit_edge, %if.end327.cleanup_crit_edge, %if.then323, %if.end312.cleanup_crit_edge, %if.end301, %if.end240.cleanup_crit_edge, %if.then232.cleanup_crit_edge, %land.lhs.true226.cleanup_crit_edge, %if.end206.cleanup_crit_edge, %do.end168, %if.then161.cleanup_crit_edge
  %retval.0 = phi i32 [ 9, %if.then323 ], [ %signal_type.2, %if.end312.cleanup_crit_edge ], [ 9, %land.lhs.true333.cleanup_crit_edge ], [ 9, %if.end327.cleanup_crit_edge ], [ %call38.i, %if.then34.i ], [ %call57.i, %if.then53.i ], [ 9, %if.else.i890.cleanup_crit_edge ], [ 9, %if.else60.i ], [ 0, %if.then161.cleanup_crit_edge ], [ 0, %do.end168 ], [ 12, %if.end301 ], [ 7, %if.end240.cleanup_crit_edge ], [ 7, %if.then232.cleanup_crit_edge ], [ 7, %land.lhs.true226.cleanup_crit_edge ], [ 7, %if.end206.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stv0900_write_bits(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @stv0900_write_reg(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @stv0900_set_tuner_auto(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @stv0900_set_tuner(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @stv0900_start_search(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stv0900_get_demod_lock(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stv0900_check_timing_lock(ptr noundef %intp, i32 noundef %demod) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %demod)
  %cmp.i = icmp eq i32 %demod, 1
  %0 = select i1 %cmp.i, i16 512, i16 0
  %conv = sub nuw nsw i16 -3011, %0
  %call1 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %intp, i16 noundef zeroext %conv) #6
  %conv3 = sub nuw nsw i16 -2989, %0
  %call4 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %intp, i16 noundef zeroext %conv3) #6
  %conv6 = sub nuw nsw i16 -2988, %0
  %call7 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %intp, i16 noundef zeroext %conv6) #6
  tail call void @stv0900_write_reg(ptr noundef %intp, i16 noundef zeroext %conv3, i8 noundef zeroext 32) #6
  tail call void @stv0900_write_reg(ptr noundef %intp, i16 noundef zeroext %conv6, i8 noundef zeroext 0) #6
  %sub.i104 = select i1 %cmp.i, i32 33554432, i32 0
  %retval.0.i105 = sub nuw nsw i32 -200015864, %sub.i104
  tail call void @stv0900_write_bits(ptr noundef %intp, i32 noundef %retval.0.i105, i8 noundef zeroext 0) #6
  %conv14 = sub nuw nsw i16 -2991, %0
  tail call void @stv0900_write_reg(ptr noundef %intp, i16 noundef zeroext %conv14, i8 noundef zeroext -128) #6
  %conv16 = sub nuw nsw i16 -2990, %0
  tail call void @stv0900_write_reg(ptr noundef %intp, i16 noundef zeroext %conv16, i8 noundef zeroext 64) #6
  tail call void @stv0900_write_reg(ptr noundef %intp, i16 noundef zeroext %conv, i8 noundef zeroext 0) #6
  %conv20 = sub nuw nsw i16 -3000, %0
  tail call void @stv0900_write_reg(ptr noundef %intp, i16 noundef zeroext %conv20, i8 noundef zeroext 0) #6
  %conv22 = sub nuw nsw i16 -2999, %0
  tail call void @stv0900_write_reg(ptr noundef %intp, i16 noundef zeroext %conv22, i8 noundef zeroext 0) #6
  %conv24 = sub nuw nsw i16 -3027, %0
  tail call void @stv0900_write_reg(ptr noundef %intp, i16 noundef zeroext %conv24, i8 noundef zeroext 101) #6
  %conv26 = sub nuw nsw i16 -3050, %0
  tail call void @stv0900_write_reg(ptr noundef %intp, i16 noundef zeroext %conv26, i8 noundef zeroext 24) #6
  tail call void @msleep(i32 noundef 7) #6
  %retval.0.i129 = sub nuw nsw i32 -200146848, %sub.i104
  %call29 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %intp, i32 noundef %retval.0.i129) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call29)
  %cmp31 = icmp ugt i8 %call29, 1
  %inc = zext i1 %cmp31 to i32
  tail call void @msleep(i32 noundef 1) #6
  %call29.1 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %intp, i32 noundef %retval.0.i129) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call29.1)
  %cmp31.1 = icmp ugt i8 %call29.1, 1
  %inc.1 = zext i1 %cmp31.1 to i32
  %spec.select.1 = add nuw nsw i32 %inc, %inc.1
  tail call void @msleep(i32 noundef 1) #6
  %call29.2 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %intp, i32 noundef %retval.0.i129) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call29.2)
  %cmp31.2 = icmp ugt i8 %call29.2, 1
  %inc.2 = zext i1 %cmp31.2 to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %inc.2
  tail call void @msleep(i32 noundef 1) #6
  %call29.3 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %intp, i32 noundef %retval.0.i129) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call29.3)
  %cmp31.3 = icmp ugt i8 %call29.3, 1
  %inc.3 = zext i1 %cmp31.3 to i32
  %spec.select.3 = add nuw nsw i32 %spec.select.2, %inc.3
  tail call void @msleep(i32 noundef 1) #6
  %call29.4 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %intp, i32 noundef %retval.0.i129) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call29.4)
  %cmp31.4 = icmp ugt i8 %call29.4, 1
  %inc.4 = zext i1 %cmp31.4 to i32
  %spec.select.4 = add nuw nsw i32 %spec.select.3, %inc.4
  tail call void @msleep(i32 noundef 1) #6
  %call29.5 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %intp, i32 noundef %retval.0.i129) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call29.5)
  %cmp31.5 = icmp ugt i8 %call29.5, 1
  %inc.5 = zext i1 %cmp31.5 to i32
  %spec.select.5 = add nuw nsw i32 %spec.select.4, %inc.5
  tail call void @msleep(i32 noundef 1) #6
  %call29.6 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %intp, i32 noundef %retval.0.i129) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call29.6)
  %cmp31.6 = icmp ugt i8 %call29.6, 1
  %inc.6 = zext i1 %cmp31.6 to i32
  %spec.select.6 = add nuw nsw i32 %spec.select.5, %inc.6
  tail call void @msleep(i32 noundef 1) #6
  %call29.7 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %intp, i32 noundef %retval.0.i129) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call29.7)
  %cmp31.7 = icmp ugt i8 %call29.7, 1
  %inc.7 = zext i1 %cmp31.7 to i32
  %spec.select.7 = add nuw nsw i32 %spec.select.6, %inc.7
  tail call void @msleep(i32 noundef 1) #6
  %call29.8 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %intp, i32 noundef %retval.0.i129) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call29.8)
  %cmp31.8 = icmp ugt i8 %call29.8, 1
  %inc.8 = zext i1 %cmp31.8 to i32
  %spec.select.8 = add nuw nsw i32 %spec.select.7, %inc.8
  tail call void @msleep(i32 noundef 1) #6
  %call29.9 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %intp, i32 noundef %retval.0.i129) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call29.9)
  %cmp31.9 = icmp ugt i8 %call29.9, 1
  %inc.9 = zext i1 %cmp31.9 to i32
  %spec.select.9 = add nuw nsw i32 %spec.select.8, %inc.9
  tail call void @msleep(i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %spec.select.9)
  %cmp34 = icmp ugt i32 %spec.select.9, 2
  %spec.select90 = zext i1 %cmp34 to i32
  tail call void @stv0900_write_reg(ptr noundef %intp, i16 noundef zeroext %conv24, i8 noundef zeroext 56) #6
  tail call void @stv0900_write_reg(ptr noundef %intp, i16 noundef zeroext %conv14, i8 noundef zeroext -120) #6
  tail call void @stv0900_write_reg(ptr noundef %intp, i16 noundef zeroext %conv16, i8 noundef zeroext 104) #6
  tail call void @stv0900_write_reg(ptr noundef %intp, i16 noundef zeroext %conv, i8 noundef zeroext %call1) #6
  tail call void @stv0900_write_reg(ptr noundef %intp, i16 noundef zeroext %conv3, i8 noundef zeroext %call4) #6
  tail call void @stv0900_write_reg(ptr noundef %intp, i16 noundef zeroext %conv6, i8 noundef zeroext %call7) #6
  ret i32 %spec.select90
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stv0900_get_signal_params(ptr noundef %fe) unnamed_addr #1 align 64 {
entry:
  %freq.i323 = alloca i32, align 4
  %freq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %demod1 = getelementptr inbounds %struct.stv0900_state, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %demod1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %demod1, align 4
  tail call void @msleep(i32 noundef 5) #6
  %arrayidx3 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 9, i32 %5
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  %8 = select i1 %cmp.i, i16 512, i16 0
  %conv = sub nuw nsw i16 -2968, %8
  %call4 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv) #6
  %conv6 = sub nuw nsw i16 -2983, %8
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv6, i8 noundef zeroext 92) #6
  %9 = zext i8 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.90)
  switch i8 %call4, label %while.body [
    i8 -1, label %if.then.if.end_crit_edge
    i8 0, label %if.then.if.end_crit_edge342
  ]

if.then.if.end_crit_edge342:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body:                                       ; preds = %if.then
  %call17 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv) #6
  tail call void @msleep(i32 noundef 5) #6
  %10 = zext i8 %call17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.91)
  switch i8 %call17, label %while.body.1 [
    i8 -1, label %while.body.if.end_crit_edge
    i8 0, label %while.body.if.end_crit_edge343
  ]

while.body.if.end_crit_edge343:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.1:                                     ; preds = %while.body
  %call17.1 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv) #6
  tail call void @msleep(i32 noundef 5) #6
  %11 = zext i8 %call17.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.92)
  switch i8 %call17.1, label %while.body.2 [
    i8 -1, label %while.body.1.if.end_crit_edge
    i8 0, label %while.body.1.if.end_crit_edge344
  ]

while.body.1.if.end_crit_edge344:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.1.if.end_crit_edge:                    ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.2:                                     ; preds = %while.body.1
  %call17.2 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv) #6
  tail call void @msleep(i32 noundef 5) #6
  %12 = zext i8 %call17.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.93)
  switch i8 %call17.2, label %while.body.3 [
    i8 -1, label %while.body.2.if.end_crit_edge
    i8 0, label %while.body.2.if.end_crit_edge345
  ]

while.body.2.if.end_crit_edge345:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.2.if.end_crit_edge:                    ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.3:                                     ; preds = %while.body.2
  %call17.3 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv) #6
  tail call void @msleep(i32 noundef 5) #6
  %13 = zext i8 %call17.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.94)
  switch i8 %call17.3, label %while.body.4 [
    i8 -1, label %while.body.3.if.end_crit_edge
    i8 0, label %while.body.3.if.end_crit_edge346
  ]

while.body.3.if.end_crit_edge346:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.3.if.end_crit_edge:                    ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.4:                                     ; preds = %while.body.3
  %call17.4 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv) #6
  tail call void @msleep(i32 noundef 5) #6
  %14 = zext i8 %call17.4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.95)
  switch i8 %call17.4, label %while.body.5 [
    i8 -1, label %while.body.4.if.end_crit_edge
    i8 0, label %while.body.4.if.end_crit_edge347
  ]

while.body.4.if.end_crit_edge347:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.4.if.end_crit_edge:                    ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.5:                                     ; preds = %while.body.4
  %call17.5 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv) #6
  tail call void @msleep(i32 noundef 5) #6
  %15 = zext i8 %call17.5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.96)
  switch i8 %call17.5, label %while.body.6 [
    i8 -1, label %while.body.5.if.end_crit_edge
    i8 0, label %while.body.5.if.end_crit_edge348
  ]

while.body.5.if.end_crit_edge348:                 ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.5.if.end_crit_edge:                    ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.6:                                     ; preds = %while.body.5
  %call17.6 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv) #6
  tail call void @msleep(i32 noundef 5) #6
  %16 = zext i8 %call17.6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.97)
  switch i8 %call17.6, label %while.body.7 [
    i8 -1, label %while.body.6.if.end_crit_edge
    i8 0, label %while.body.6.if.end_crit_edge349
  ]

while.body.6.if.end_crit_edge349:                 ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.6.if.end_crit_edge:                    ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.7:                                     ; preds = %while.body.6
  %call17.7 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv) #6
  tail call void @msleep(i32 noundef 5) #6
  %17 = zext i8 %call17.7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.98)
  switch i8 %call17.7, label %while.body.8 [
    i8 -1, label %while.body.7.if.end_crit_edge
    i8 0, label %while.body.7.if.end_crit_edge350
  ]

while.body.7.if.end_crit_edge350:                 ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.7.if.end_crit_edge:                    ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.8:                                     ; preds = %while.body.7
  %call17.8 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv) #6
  tail call void @msleep(i32 noundef 5) #6
  %18 = zext i8 %call17.8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.99)
  switch i8 %call17.8, label %while.body.9 [
    i8 -1, label %while.body.8.if.end_crit_edge
    i8 0, label %while.body.8.if.end_crit_edge351
  ]

while.body.8.if.end_crit_edge351:                 ; preds = %while.body.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.8.if.end_crit_edge:                    ; preds = %while.body.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.9:                                     ; preds = %while.body.8
  %call17.9 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv) #6
  tail call void @msleep(i32 noundef 5) #6
  %19 = zext i8 %call17.9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.100)
  switch i8 %call17.9, label %while.body.10 [
    i8 -1, label %while.body.9.if.end_crit_edge
    i8 0, label %while.body.9.if.end_crit_edge352
  ]

while.body.9.if.end_crit_edge352:                 ; preds = %while.body.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.9.if.end_crit_edge:                    ; preds = %while.body.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.10:                                    ; preds = %while.body.9
  call void @__sanitizer_cov_trace_pc() #8
  %call17.10 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv) #6
  tail call void @msleep(i32 noundef 5) #6
  br label %if.end

if.end:                                           ; preds = %while.body.10, %while.body.9.if.end_crit_edge, %while.body.9.if.end_crit_edge352, %while.body.8.if.end_crit_edge, %while.body.8.if.end_crit_edge351, %while.body.7.if.end_crit_edge, %while.body.7.if.end_crit_edge350, %while.body.6.if.end_crit_edge, %while.body.6.if.end_crit_edge349, %while.body.5.if.end_crit_edge, %while.body.5.if.end_crit_edge348, %while.body.4.if.end_crit_edge, %while.body.4.if.end_crit_edge347, %while.body.3.if.end_crit_edge, %while.body.3.if.end_crit_edge346, %while.body.2.if.end_crit_edge, %while.body.2.if.end_crit_edge345, %while.body.1.if.end_crit_edge, %while.body.1.if.end_crit_edge344, %while.body.if.end_crit_edge, %while.body.if.end_crit_edge343, %if.then.if.end_crit_edge, %if.then.if.end_crit_edge342, %entry.if.end_crit_edge
  %20 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %demodulator_priv, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 1
  %sub.i.i = select i1 %cmp.i.i, i32 33554432, i32 0
  %retval.0.i.i = sub nuw nsw i32 -199557024, %sub.i.i
  %call1.i = tail call zeroext i8 @stv0900_get_bits(ptr noundef %23, i32 noundef %retval.0.i.i) #6
  %24 = zext i8 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.101)
  switch i8 %call1.i, label %sw.default.i [
    i8 2, label %if.end.do.body.i_crit_edge
    i8 3, label %sw.bb2.i
  ]

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %retval.0.i18.i = sub nuw nsw i32 -181206912, %sub.i.i
  %call4.i = tail call zeroext i8 @stv0900_get_bits(ptr noundef %23, i32 noundef %retval.0.i18.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call4.i)
  %cmp.i283 = icmp eq i8 %call4.i, 1
  %..i = select i1 %cmp.i283, i32 2, i32 0
  br label %do.body.i

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.body.i:                                        ; preds = %sw.default.i, %sw.bb2.i, %if.end.do.body.i_crit_edge
  %fnd_standard.0.i = phi i32 [ 4, %sw.default.i ], [ 1, %if.end.do.body.i_crit_edge ], [ %..i, %sw.bb2.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %25 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %do.body.i.stv0900_get_standard.exit_crit_edge, label %do.end.i

do.body.i.stv0900_get_standard.exit_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0900_get_standard.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %fnd_standard.0.i) #9
  br label %stv0900_get_standard.exit

stv0900_get_standard.exit:                        ; preds = %do.end.i, %do.body.i.stv0900_get_standard.exit_crit_edge
  %standard = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 15, i32 %5, i32 3
  %26 = ptrtoint ptr %standard to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %fnd_standard.0.i, ptr %standard, align 4
  %arrayidx19 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 8, i32 %5
  %27 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp20 = icmp eq i32 %28, 3
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %stv0900_get_standard.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call23 = tail call i32 @stv0900_get_freq_auto(ptr noundef %3, i32 noundef %5) #6
  br label %if.end26

if.else:                                          ; preds = %stv0900_get_standard.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq.i) #6
  %29 = ptrtoint ptr %freq.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %freq.i, align 4
  %get_frequency.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 9
  %30 = ptrtoint ptr %get_frequency.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_frequency.i, align 4
  %tobool.not.i284 = icmp eq ptr %31, null
  br i1 %tobool.not.i284, label %if.else.stv0900_get_tuner_freq.exit_crit_edge, label %if.then.i

if.else.stv0900_get_tuner_freq.exit_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0900_get_tuner_freq.exit

if.then.i:                                        ; preds = %if.else
  %call.i = call i32 %31(ptr noundef %fe, ptr noundef nonnull %freq.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i285 = icmp slt i32 %call.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %32 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool4.not.i = icmp eq i32 %32, 0
  br i1 %cmp.i285, label %do.body.i286, label %do.body10.i

do.body.i286:                                     ; preds = %if.then.i
  br i1 %tobool4.not.i, label %do.body.i286.stv0900_get_tuner_freq.exit_crit_edge, label %do.end.i287

do.body.i286.stv0900_get_tuner_freq.exit_crit_edge: ; preds = %do.body.i286
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0900_get_tuner_freq.exit

do.end.i287:                                      ; preds = %do.body.i286
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #9
  br label %stv0900_get_tuner_freq.exit

do.body10.i:                                      ; preds = %if.then.i
  br i1 %tobool4.not.i, label %do.body10.i.stv0900_get_tuner_freq.exit_crit_edge, label %do.end15.i

do.body10.i.stv0900_get_tuner_freq.exit_crit_edge: ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0900_get_tuner_freq.exit

do.end15.i:                                       ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %freq.i, align 4
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.51, i32 noundef %34) #9
  br label %stv0900_get_tuner_freq.exit

stv0900_get_tuner_freq.exit:                      ; preds = %do.end15.i, %do.body10.i.stv0900_get_tuner_freq.exit_crit_edge, %do.end.i287, %do.body.i286.stv0900_get_tuner_freq.exit_crit_edge, %if.else.stv0900_get_tuner_freq.exit_crit_edge
  %35 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %freq.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.i) #6
  br label %if.end26

if.end26:                                         ; preds = %stv0900_get_tuner_freq.exit, %if.then22
  %.sink = phi i32 [ %36, %stv0900_get_tuner_freq.exit ], [ %call23, %if.then22 ]
  %frequency25 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 15, i32 %5, i32 1
  %37 = ptrtoint ptr %frequency25 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink, ptr %frequency25, align 4
  %mclk = getelementptr inbounds %struct.stv0900_internal, ptr %3, i32 0, i32 1
  %38 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mclk, align 4
  %retval.0.i.i290 = sub nuw nsw i32 -196345345, %sub.i.i
  %call1.i291 = call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %retval.0.i.i290) #6
  %conv.i = zext i8 %call1.i291 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %retval.0.i31.i = sub nuw nsw i32 -196280065, %sub.i.i
  %call3.i = call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %retval.0.i31.i) #6
  %conv4.i = zext i8 %call3.i to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 8
  %add.i = or i32 %shl5.i, %shl.i
  %retval.0.i34.i = sub nuw nsw i32 -196214529, %sub.i.i
  %call7.i292 = call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %retval.0.i34.i) #6
  %conv8.i = zext i8 %call7.i292 to i32
  %add9.i = or i32 %add.i, %conv8.i
  %call10.i = call i32 @ge2comp(i32 noundef %add9.i, i32 noundef 24) #6
  %shr.i = lshr i32 %39, 12
  %shr11.i = ashr i32 %call10.i, 12
  %rem.i = and i32 %39, 4095
  %rem12.i = srem i32 %call10.i, 4096
  %mul.i = mul i32 %shr11.i, %shr.i
  %mul13.i = mul i32 %rem12.i, %shr.i
  %shr14.i = ashr i32 %mul13.i, 12
  %add15.i = add i32 %shr14.i, %mul.i
  %mul16.i = mul nsw i32 %shr11.i, %rem.i
  %shr17.i = ashr i32 %mul16.i, 12
  %add18.i = add i32 %add15.i, %shr17.i
  %div = sdiv i32 %add18.i, 1000
  %frequency28 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 15, i32 %5, i32 1
  %40 = ptrtoint ptr %frequency28 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %frequency28, align 4
  %add29 = add i32 %div, %41
  store i32 %add29, ptr %frequency28, align 4
  %42 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mclk, align 4
  %call31 = call fastcc i32 @stv0900_get_symbol_rate(ptr noundef %3, i32 noundef %43, i32 noundef %5), !range !158
  %symbol_rate = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 15, i32 %5, i32 2
  %44 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call31, ptr %symbol_rate, align 4
  %conv.i294 = select i1 %cmp.i.i, i16 -3480, i16 -2968
  %call1.i295 = call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv.i294) #6
  %conv2.i = zext i8 %call1.i295 to i32
  %shl.i296 = shl nuw nsw i32 %conv2.i, 16
  %conv4.i297 = or i16 %conv.i294, 1
  %call5.i = call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv4.i297) #6
  %conv6.i = zext i8 %call5.i to i32
  %shl7.i = shl nuw nsw i32 %conv6.i, 8
  %add8.i = or i32 %shl7.i, %shl.i296
  %conv11.i = or i16 %conv.i294, 2
  %call12.i = call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv11.i) #6
  %conv13.i = zext i8 %call12.i to i32
  %add14.i = or i32 %add8.i, %conv13.i
  %call15.i = call i32 @ge2comp(i32 noundef %add14.i, i32 noundef 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp.i298 = icmp eq i32 %call15.i, 0
  %spec.store.select.i = select i1 %cmp.i298, i32 1, i32 %call15.i
  %mul.i299 = mul i32 %call31, 10
  %div.i = sdiv i32 16777216, %spec.store.select.i
  %div17.i = sdiv i32 %mul.i299, %div.i
  %div18.i = sdiv i32 %div17.i, 320
  %45 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %symbol_rate, align 4
  %add35 = add i32 %46, %div18.i
  store i32 %add35, ptr %symbol_rate, align 4
  %retval.0.i.i301 = select i1 %cmp.i.i, i32 -214302689, i32 -180748257
  %call1.i302 = call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %retval.0.i.i301) #6
  %switch.tableidx = add i8 %call1.i302, -13
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %switch.tableidx)
  %47 = icmp ult i8 %switch.tableidx, 14
  br i1 %47, label %switch.lookup, label %if.end26.stv0900_get_vit_fec.exit_crit_edge

if.end26.stv0900_get_vit_fec.exit_crit_edge:      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0900_get_vit_fec.exit

switch.lookup:                                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %48 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [14 x i32], ptr @switch.table.stv0900_get_signal_params, i32 0, i32 %48
  %49 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %49)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %stv0900_get_vit_fec.exit

stv0900_get_vit_fec.exit:                         ; preds = %switch.lookup, %if.end26.stv0900_get_vit_fec.exit_crit_edge
  %prate.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 8, %if.end26.stv0900_get_vit_fec.exit_crit_edge ]
  %fec = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 15, i32 %5, i32 4
  %50 = ptrtoint ptr %fec to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %prate.0.i, ptr %fec, align 4
  %retval.0.i307 = sub nuw nsw i32 -200212356, %sub.i.i
  %call38 = call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %retval.0.i307) #6
  %conv39 = zext i8 %call38 to i32
  %modcode = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 15, i32 %5, i32 5
  %51 = ptrtoint ptr %modcode to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv39, ptr %modcode, align 4
  %retval.0.i310 = sub nuw nsw i32 -200212477, %sub.i.i
  %call41 = call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %retval.0.i310) #6
  %52 = and i8 %call41, 1
  %and = zext i8 %52 to i32
  %pilot = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 15, i32 %5, i32 7
  %53 = ptrtoint ptr %pilot to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and, ptr %pilot, align 4
  %call44 = call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %retval.0.i310) #6
  %54 = lshr i8 %call44, 1
  %shr = zext i8 %54 to i32
  %frame_len = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 15, i32 %5, i32 8
  %55 = ptrtoint ptr %frame_len to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %shr, ptr %frame_len, align 4
  %retval.0.i316 = sub nuw nsw i32 -194182976, %sub.i.i
  %call47 = call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %retval.0.i316) #6
  %conv48 = zext i8 %call47 to i32
  %rolloff = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 15, i32 %5, i32 10
  %56 = ptrtoint ptr %rolloff to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv48, ptr %rolloff, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %57 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not = icmp eq i32 %57, 0
  br i1 %tobool.not, label %stv0900_get_vit_fec.exit.do.end55_crit_edge, label %do.end

stv0900_get_vit_fec.exit.do.end55_crit_edge:      ; preds = %stv0900_get_vit_fec.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end55

do.end:                                           ; preds = %stv0900_get_vit_fec.exit
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %modcode to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %modcode, align 4
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef %59) #9
  br label %do.end55

do.end55:                                         ; preds = %do.end, %stv0900_get_vit_fec.exit.do.end55_crit_edge
  %60 = ptrtoint ptr %standard to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %standard, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %61, label %do.end55.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %do.end55.sw.bb88_crit_edge
    i32 2, label %do.end55.sw.bb88_crit_edge353
  ]

do.end55.sw.bb88_crit_edge353:                    ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb88

do.end55.sw.bb88_crit_edge:                       ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb88

do.end55.sw.epilog_crit_edge:                     ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end55
  %retval.0.i319 = sub nuw nsw i32 -198967168, %sub.i.i
  %call58 = call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %retval.0.i319) #6
  %conv59 = zext i8 %call58 to i32
  %spectrum = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 15, i32 %5, i32 9
  %63 = ptrtoint ptr %spectrum to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv59, ptr %spectrum, align 4
  %64 = ptrtoint ptr %modcode to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %modcode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %65)
  %cmp61 = icmp ult i32 %65, 12
  br i1 %cmp61, label %if.then63, label %if.else64

if.then63:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %modulation = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 15, i32 %5, i32 6
  %66 = ptrtoint ptr %modulation to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %modulation, align 4
  br label %sw.epilog

if.else64:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %65)
  %cmp66 = icmp ult i32 %65, 18
  br i1 %cmp66, label %if.then68, label %if.else70

if.then68:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #8
  %modulation69 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 15, i32 %5, i32 6
  %67 = ptrtoint ptr %modulation69 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %modulation69, align 4
  br label %sw.epilog

if.else70:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %65)
  %cmp72 = icmp ult i32 %65, 24
  br i1 %cmp72, label %if.then74, label %if.else76

if.then74:                                        ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #8
  %modulation75 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 15, i32 %5, i32 6
  %68 = ptrtoint ptr %modulation75 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 2, ptr %modulation75, align 4
  br label %sw.epilog

if.else76:                                        ; preds = %if.else70
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %65)
  %cmp78 = icmp ult i32 %65, 29
  %modulation81 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 15, i32 %5, i32 6
  br i1 %cmp78, label %if.then80, label %if.else82

if.then80:                                        ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %modulation81 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 3, ptr %modulation81, align 4
  br label %sw.epilog

if.else82:                                        ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %modulation81 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 4, ptr %modulation81, align 4
  br label %sw.epilog

sw.bb88:                                          ; preds = %do.end55.sw.bb88_crit_edge, %do.end55.sw.bb88_crit_edge353
  %retval.0.i322 = sub nuw nsw i32 -181207039, %sub.i.i
  %call90 = call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %retval.0.i322) #6
  %conv91 = zext i8 %call90 to i32
  %spectrum92 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 15, i32 %5, i32 9
  %71 = ptrtoint ptr %spectrum92 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv91, ptr %spectrum92, align 4
  %modulation93 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 15, i32 %5, i32 6
  %72 = ptrtoint ptr %modulation93 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %modulation93, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb88, %if.else82, %if.then80, %if.then74, %if.then68, %if.then63, %do.end55.sw.epilog_crit_edge
  %73 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp96 = icmp eq i32 %74, 0
  br i1 %cmp96, label %sw.epilog.if.then102_crit_edge, label %lor.lhs.false

sw.epilog.if.then102_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then102

lor.lhs.false:                                    ; preds = %sw.epilog
  %arrayidx99 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 6, i32 %5
  %75 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %76)
  %cmp100 = icmp slt i32 %76, 10000000
  br i1 %cmp100, label %lor.lhs.false.if.then102_crit_edge, label %if.else147

lor.lhs.false.if.then102_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then102

if.then102:                                       ; preds = %lor.lhs.false.if.then102_crit_edge, %sw.epilog.if.then102_crit_edge
  %77 = ptrtoint ptr %frequency28 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %frequency28, align 4
  %arrayidx104 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 4, i32 %5
  %79 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx104, align 4
  %sub = sub i32 %78, %80
  %81 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %82)
  %cmp107 = icmp eq i32 %82, 3
  br i1 %cmp107, label %if.then109, label %if.else113

if.then109:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #8
  %call110 = call i32 @stv0900_get_freq_auto(ptr noundef %3, i32 noundef %5) #6
  br label %if.end117

if.else113:                                       ; preds = %if.then102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq.i323) #6
  %83 = ptrtoint ptr %freq.i323 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %freq.i323, align 4
  %get_frequency.i324 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 9
  %84 = ptrtoint ptr %get_frequency.i324 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %get_frequency.i324, align 4
  %tobool.not.i325 = icmp eq ptr %85, null
  br i1 %tobool.not.i325, label %if.else113.stv0900_get_tuner_freq.exit336_crit_edge, label %if.then.i329

if.else113.stv0900_get_tuner_freq.exit336_crit_edge: ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0900_get_tuner_freq.exit336

if.then.i329:                                     ; preds = %if.else113
  %call.i326 = call i32 %85(ptr noundef %fe, ptr noundef nonnull %freq.i323) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i326)
  %cmp.i327 = icmp slt i32 %call.i326, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %86 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool4.not.i328 = icmp eq i32 %86, 0
  br i1 %cmp.i327, label %do.body.i330, label %do.body10.i333

do.body.i330:                                     ; preds = %if.then.i329
  br i1 %tobool4.not.i328, label %do.body.i330.stv0900_get_tuner_freq.exit336_crit_edge, label %do.end.i332

do.body.i330.stv0900_get_tuner_freq.exit336_crit_edge: ; preds = %do.body.i330
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0900_get_tuner_freq.exit336

do.end.i332:                                      ; preds = %do.body.i330
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i331 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #9
  br label %stv0900_get_tuner_freq.exit336

do.body10.i333:                                   ; preds = %if.then.i329
  br i1 %tobool4.not.i328, label %do.body10.i333.stv0900_get_tuner_freq.exit336_crit_edge, label %do.end15.i335

do.body10.i333.stv0900_get_tuner_freq.exit336_crit_edge: ; preds = %do.body10.i333
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0900_get_tuner_freq.exit336

do.end15.i335:                                    ; preds = %do.body10.i333
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %freq.i323 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %freq.i323, align 4
  %call17.i334 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.51, i32 noundef %88) #9
  br label %stv0900_get_tuner_freq.exit336

stv0900_get_tuner_freq.exit336:                   ; preds = %do.end15.i335, %do.body10.i333.stv0900_get_tuner_freq.exit336_crit_edge, %do.end.i332, %do.body.i330.stv0900_get_tuner_freq.exit336_crit_edge, %if.else113.stv0900_get_tuner_freq.exit336_crit_edge
  %89 = ptrtoint ptr %freq.i323 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %freq.i323, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.i323) #6
  br label %if.end117

if.end117:                                        ; preds = %stv0900_get_tuner_freq.exit336, %if.then109
  %storemerge = phi i32 [ %90, %stv0900_get_tuner_freq.exit336 ], [ %call110, %if.then109 ]
  %91 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %storemerge, ptr %arrayidx104, align 4
  %92 = call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %arrayidx122 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 7, i32 %5
  %93 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx122, align 4
  %div123 = sdiv i32 %94, 2000
  %add124 = add nsw i32 %div123, 500
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %add124)
  %cmp125.not = icmp sgt i32 %92, %add124
  br i1 %cmp125.not, label %if.else128, label %if.end117.do.body166_crit_edge

if.end117.do.body166_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body166

if.else128:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %symbol_rate, align 4
  %97 = ptrtoint ptr %rolloff to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %rolloff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %98)
  %switch.selectcmp.i = icmp eq i32 %98, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 25, i32 35
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %98)
  %switch.selectcmp4.i = icmp eq i32 %98, 2
  %switch.select5.i = select i1 %switch.selectcmp4.i, i32 20, i32 %switch.select.i
  %mul.i337 = mul i32 %switch.select5.i, %96
  %div.i338 = udiv i32 %mul.i337, 100
  %add.i339 = add i32 %div.i338, %96
  %div141 = udiv i32 %add.i339, 2000
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %div141)
  %cmp142.not = icmp ugt i32 %92, %div141
  %spec.select = select i1 %cmp142.not, i32 11, i32 12
  br label %do.body166

if.else147:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -999, i32 %add18.i)
  %cmp150 = icmp slt i32 %add18.i, -999
  %sub153 = sub nsw i32 0, %div
  %cond156 = select i1 %cmp150, i32 %sub153, i32 %div
  %arrayidx158 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 7, i32 %5
  %99 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx158, align 4
  %div159 = sdiv i32 %100, 2000
  %add160 = add nsw i32 %div159, 500
  call void @__sanitizer_cov_trace_cmp4(i32 %cond156, i32 %add160)
  %cmp161.not = icmp sgt i32 %cond156, %add160
  %spec.select276 = select i1 %cmp161.not, i32 11, i32 12
  br label %do.body166

do.body166:                                       ; preds = %if.else147, %if.else128, %if.end117.do.body166_crit_edge
  %range.0 = phi i32 [ 12, %if.end117.do.body166_crit_edge ], [ %spec.select, %if.else128 ], [ %spec.select276, %if.else147 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %101 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool167.not = icmp eq i32 %101, 0
  br i1 %tobool167.not, label %do.body166.do.end176_crit_edge, label %do.end171

do.body166.do.end176_crit_edge:                   ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end176

do.end171:                                        ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #8
  %call173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.46, i32 noundef %range.0) #9
  br label %do.end176

do.end176:                                        ; preds = %do.end171, %do.body166.do.end176_crit_edge
  ret i32 %range.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stv0900_track_optimization(ptr noundef %fe) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %demod1 = getelementptr inbounds %struct.stv0900_state, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %demod1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %demod1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %6 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.55) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %mclk = getelementptr inbounds %struct.stv0900_internal, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mclk, align 4
  %call5 = tail call fastcc i32 @stv0900_get_symbol_rate(ptr noundef %3, i32 noundef %8, i32 noundef %5), !range !158
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 1
  %conv.i = select i1 %cmp.i.i, i16 -3480, i16 -2968
  %call1.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv.i) #6
  %conv2.i = zext i8 %call1.i to i32
  %shl.i = shl nuw nsw i32 %conv2.i, 16
  %conv4.i = or i16 %conv.i, 1
  %call5.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv4.i) #6
  %conv6.i = zext i8 %call5.i to i32
  %shl7.i = shl nuw nsw i32 %conv6.i, 8
  %add8.i = or i32 %shl7.i, %shl.i
  %conv11.i = or i16 %conv.i, 2
  %call12.i = tail call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv11.i) #6
  %conv13.i = zext i8 %call12.i to i32
  %add14.i = or i32 %add8.i, %conv13.i
  %call15.i = tail call i32 @ge2comp(i32 noundef %add14.i, i32 noundef 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp.i = icmp eq i32 %call15.i, 0
  %spec.store.select.i = select i1 %cmp.i, i32 1, i32 %call15.i
  %mul.i = mul i32 %call5, 10
  %div.i = sdiv i32 16777216, %spec.store.select.i
  %div17.i = sdiv i32 %mul.i, %div.i
  %div18.i = sdiv i32 %div17.i, 320
  %add = add i32 %div18.i, %call5
  %standard = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 15, i32 %5, i32 3
  %9 = ptrtoint ptr %standard to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %standard, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %10, label %do.body180 [
    i32 0, label %do.end4.do.body7_crit_edge
    i32 2, label %do.end4.do.body7_crit_edge798
    i32 1, label %do.body48
  ]

do.end4.do.body7_crit_edge798:                    ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7

do.end4.do.body7_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7

do.body7:                                         ; preds = %do.end4.do.body7_crit_edge, %do.end4.do.body7_crit_edge798
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %12 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %do.body7.do.end17_crit_edge, label %do.end12

do.body7.do.end17_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

do.end12:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.55) #9
  br label %do.end17

do.end17:                                         ; preds = %do.end12, %do.body7.do.end17_crit_edge
  %arrayidx18 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 10, i32 %5
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  %sub.i = select i1 %cmp.i.i, i32 33554432, i32 0
  br i1 %cmp, label %if.then19, label %do.end17.if.end22_crit_edge

do.end17.if.end22_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then19:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  %retval.0.i = sub nuw nsw i32 -200015808, %sub.i
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i, i8 noundef zeroext 1) #6
  %retval.0.i598 = sub nuw nsw i32 -200015744, %sub.i
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i598, i8 noundef zeroext 0) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %do.end17.if.end22_crit_edge
  %retval.0.i601 = sub nuw nsw i32 -200278013, %sub.i
  %rolloff = getelementptr inbounds %struct.stv0900_internal, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %rolloff to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rolloff, align 4
  %conv = trunc i32 %16 to i8
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i601, i8 noundef zeroext %conv) #6
  %retval.0.i604 = sub nuw nsw i32 -200278012, %sub.i
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i604, i8 noundef zeroext 1) #6
  %chip_id = getelementptr inbounds %struct.stv0900_internal, ptr %3, i32 0, i32 20
  %17 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %18)
  %cmp26 = icmp ult i8 %18, 48
  br i1 %cmp26, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %conv30 = select i1 %cmp.i.i, i16 -3176, i16 -2664
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv30, i8 noundef zeroext 117) #6
  br label %sw.epilog

if.end31:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %retval.0.i.i = select i1 %cmp.i.i, i32 -214302689, i32 -180748257
  %call1.i609 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %retval.0.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %call1.i609)
  %cond = icmp eq i8 %call1.i609, 13
  %19 = select i1 %cmp.i.i, i16 512, i16 0
  %conv37 = sub nuw nsw i16 -2880, %19
  %. = select i1 %cond, i8 -104, i8 24
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv37, i8 noundef zeroext %.) #6
  %conv43 = sub nuw nsw i16 -2879, %19
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv43, i8 noundef zeroext 24) #6
  %conv46 = select i1 %cmp.i.i, i16 -3176, i16 -2664
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv46, i8 noundef zeroext 117) #6
  br label %sw.epilog

do.body48:                                        ; preds = %do.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %20 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool49.not = icmp eq i32 %20, 0
  br i1 %tobool49.not, label %do.body48.do.end58_crit_edge, label %do.end53

do.body48.do.end58_crit_edge:                     ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end58

do.end53:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.55) #9
  br label %do.end58

do.end58:                                         ; preds = %do.end53, %do.body48.do.end58_crit_edge
  %sub.i626 = select i1 %cmp.i.i, i32 33554432, i32 0
  %retval.0.i627 = sub nuw nsw i32 -200015808, %sub.i626
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i627, i8 noundef zeroext 0) #6
  %retval.0.i630 = sub nuw nsw i32 -200015744, %sub.i626
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i630, i8 noundef zeroext 1) #6
  %21 = select i1 %cmp.i.i, i16 512, i16 0
  %conv62 = sub nuw nsw i16 -3015, %21
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv62, i8 noundef zeroext 0) #6
  %conv64 = sub nuw nsw i16 -3014, %21
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv64, i8 noundef zeroext 0) #6
  %frame_len = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 15, i32 %5, i32 8
  %22 = ptrtoint ptr %frame_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %frame_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp67 = icmp eq i32 %23, 0
  br i1 %cmp67, label %if.then69, label %if.else121

if.then69:                                        ; preds = %do.end58
  %retval.0.i639 = sub nuw nsw i32 -200212356, %sub.i626
  %call71 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %retval.0.i639) #6
  %conv72 = zext i8 %call71 to i32
  %retval.0.i642 = sub nuw nsw i32 -200212477, %sub.i626
  %call74 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %3, i32 noundef %retval.0.i642) #6
  %24 = and i8 %call74, 1
  %and = zext i8 %24 to i32
  %chip_id76 = getelementptr inbounds %struct.stv0900_internal, ptr %3, i32 0, i32 20
  %25 = ptrtoint ptr %chip_id76 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %chip_id76, align 2
  %call77 = tail call zeroext i8 @stv0900_get_optim_carr_loop(i32 noundef %add, i32 noundef %conv72, i32 noundef %and, i8 noundef zeroext %26) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %call71)
  %cmp79 = icmp ult i8 %call71, 12
  br i1 %cmp79, label %if.then69.if.end165.sink.split_crit_edge, label %if.else85

if.then69.if.end165.sink.split_crit_edge:         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165.sink.split

if.else85:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %call71)
  %cmp86 = icmp ult i8 %call71, 18
  br i1 %cmp86, label %if.else85.if.end165.sink.split.sink.split_crit_edge, label %if.end95

if.else85.if.end165.sink.split.sink.split_crit_edge: ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165.sink.split.sink.split

if.end95:                                         ; preds = %if.else85
  %demod_mode = getelementptr inbounds %struct.stv0900_internal, ptr %3, i32 0, i32 3
  %27 = ptrtoint ptr %demod_mode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %demod_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp96 = icmp eq i32 %28, 0
  br i1 %cmp96, label %if.then100, label %if.end95.if.end165_crit_edge

if.end95.if.end165_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165

if.then100:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %call71)
  %cmp101 = icmp ult i8 %call71, 24
  br i1 %cmp101, label %if.then100.if.end165.sink.split.sink.split_crit_edge, label %if.else109

if.then100.if.end165.sink.split.sink.split_crit_edge: ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165.sink.split.sink.split

if.else109:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_const_cmp1(i8 29, i8 %call71)
  %cmp110 = icmp ult i8 %call71, 29
  br i1 %cmp110, label %if.else109.if.end165.sink.split.sink.split_crit_edge, label %if.else109.if.end165_crit_edge

if.else109.if.end165_crit_edge:                   ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165

if.else109.if.end165.sink.split.sink.split_crit_edge: ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165.sink.split.sink.split

if.else121:                                       ; preds = %do.end58
  %modulation124 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 15, i32 %5, i32 6
  %29 = ptrtoint ptr %modulation124 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %modulation124, align 4
  %chip_id125 = getelementptr inbounds %struct.stv0900_internal, ptr %3, i32 0, i32 20
  %31 = ptrtoint ptr %chip_id125 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %chip_id125, align 2
  %call126 = tail call zeroext i8 @stv0900_get_optim_short_carr_loop(i32 noundef %add, i32 noundef %30, i8 noundef zeroext %32) #6
  %33 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %30, label %if.else121.if.end165_crit_edge [
    i32 0, label %if.else121.if.end165.sink.split_crit_edge
    i32 1, label %if.else121.if.end165.sink.split.sink.split_crit_edge
    i32 2, label %if.then146
    i32 3, label %if.then155
  ]

if.else121.if.end165.sink.split.sink.split_crit_edge: ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165.sink.split.sink.split

if.else121.if.end165.sink.split_crit_edge:        ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165.sink.split

if.else121.if.end165_crit_edge:                   ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165

if.then146:                                       ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165.sink.split.sink.split

if.then155:                                       ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165.sink.split.sink.split

if.end165.sink.split.sink.split:                  ; preds = %if.then155, %if.then146, %if.else121.if.end165.sink.split.sink.split_crit_edge, %if.else109.if.end165.sink.split.sink.split_crit_edge, %if.then100.if.end165.sink.split.sink.split_crit_edge, %if.else85.if.end165.sink.split.sink.split_crit_edge
  %.sink796.ph = phi i16 [ -2918, %if.then155 ], [ -2919, %if.then146 ], [ -2920, %if.else85.if.end165.sink.split.sink.split_crit_edge ], [ -2919, %if.then100.if.end165.sink.split.sink.split_crit_edge ], [ -2918, %if.else109.if.end165.sink.split.sink.split_crit_edge ], [ -2920, %if.else121.if.end165.sink.split.sink.split_crit_edge ]
  %call77.sink.ph = phi i8 [ %call126, %if.then155 ], [ %call126, %if.then146 ], [ %call77, %if.else85.if.end165.sink.split.sink.split_crit_edge ], [ %call77, %if.then100.if.end165.sink.split.sink.split_crit_edge ], [ %call77, %if.else109.if.end165.sink.split.sink.split_crit_edge ], [ %call126, %if.else121.if.end165.sink.split.sink.split_crit_edge ]
  %conv105 = sub nuw nsw i16 -2921, %21
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv105, i8 noundef zeroext 42) #6
  br label %if.end165.sink.split

if.end165.sink.split:                             ; preds = %if.end165.sink.split.sink.split, %if.else121.if.end165.sink.split_crit_edge, %if.then69.if.end165.sink.split_crit_edge
  %.sink796 = phi i16 [ -2921, %if.then69.if.end165.sink.split_crit_edge ], [ -2921, %if.else121.if.end165.sink.split_crit_edge ], [ %.sink796.ph, %if.end165.sink.split.sink.split ]
  %call77.sink = phi i8 [ %call77, %if.then69.if.end165.sink.split_crit_edge ], [ %call126, %if.else121.if.end165.sink.split_crit_edge ], [ %call77.sink.ph, %if.end165.sink.split.sink.split ]
  %conv83 = sub nuw nsw i16 %.sink796, %21
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv83, i8 noundef zeroext %call77.sink) #6
  br label %if.end165

if.end165:                                        ; preds = %if.end165.sink.split, %if.else121.if.end165_crit_edge, %if.else109.if.end165_crit_edge, %if.end95.if.end165_crit_edge
  %chip_id166 = getelementptr inbounds %struct.stv0900_internal, ptr %3, i32 0, i32 20
  %34 = ptrtoint ptr %chip_id166 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %chip_id166, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %35)
  %cmp168 = icmp ult i8 %35, 18
  br i1 %cmp168, label %if.then170, label %if.end165.if.end176_crit_edge

if.end165.if.end176_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end176

if.then170:                                       ; preds = %if.end165
  %demod_mode171 = getelementptr inbounds %struct.stv0900_internal, ptr %3, i32 0, i32 3
  %36 = ptrtoint ptr %demod_mode171 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %demod_mode171, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp172.not = icmp eq i32 %37, 0
  br i1 %cmp172.not, label %if.then170.if.end176_crit_edge, label %if.then174

if.then170.if.end176_crit_edge:                   ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end176

if.then174:                                       ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stv0900_activate_s2_modcod(ptr noundef %3, i32 noundef %5) #6
  br label %if.end176

if.end176:                                        ; preds = %if.then174, %if.then170.if.end176_crit_edge, %if.end165.if.end176_crit_edge
  %conv178 = sub nuw nsw i16 -2664, %21
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv178, i8 noundef zeroext 103) #6
  br label %sw.epilog

do.body180:                                       ; preds = %do.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %38 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool181.not = icmp eq i32 %38, 0
  br i1 %tobool181.not, label %do.body180.do.end190_crit_edge, label %do.end185

do.body180.do.end190_crit_edge:                   ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end190

do.end185:                                        ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #8
  %call187 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.55) #9
  br label %do.end190

do.end190:                                        ; preds = %do.end185, %do.body180.do.end190_crit_edge
  %sub.i689 = select i1 %cmp.i.i, i32 33554432, i32 0
  %retval.0.i690 = sub nuw nsw i32 -200015808, %sub.i689
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i690, i8 noundef zeroext 1) #6
  %retval.0.i693 = sub nuw nsw i32 -200015744, %sub.i689
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i693, i8 noundef zeroext 1) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end190, %if.end176, %if.end31, %if.then28
  %39 = select i1 %cmp.i.i, i16 512, i16 0
  %conv194 = sub nuw nsw i16 -2996, %39
  %call195 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv194) #6
  %conv198 = sub nuw nsw i16 -2995, %39
  %call199 = tail call zeroext i8 @stv0900_read_reg(ptr noundef %3, i16 noundef zeroext %conv198) #6
  %arrayidx201 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 9, i32 %5
  %40 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp202 = icmp eq i32 %41, 0
  br i1 %cmp202, label %if.then204, label %sw.epilog.if.end219_crit_edge

sw.epilog.if.end219_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end219

if.then204:                                       ; preds = %sw.epilog
  %conv206 = sub nuw nsw i16 -2983, %39
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv206, i8 noundef zeroext 0) #6
  %sub.i704 = select i1 %cmp.i.i, i32 33554432, i32 0
  %retval.0.i705 = sub nuw nsw i32 -200015856, %sub.i704
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i705, i8 noundef zeroext 0) #6
  %retval.0.i708 = sub nuw nsw i32 -200015864, %sub.i704
  tail call void @stv0900_write_bits(ptr noundef %3, i32 noundef %retval.0.i708, i8 noundef zeroext 0) #6
  %conv210 = sub nuw nsw i16 -2982, %39
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv210, i8 noundef zeroext -63) #6
  %42 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mclk, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %44 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i, label %if.then204.stv0900_set_symbol_rate.exit_crit_edge, label %do.end.i

if.then204.stv0900_set_symbol_rate.exit_crit_edge: ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0900_set_symbol_rate.exit

do.end.i:                                         ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %43, i32 noundef %add, i32 noundef %5) #9
  br label %stv0900_set_symbol_rate.exit

stv0900_set_symbol_rate.exit:                     ; preds = %do.end.i, %if.then204.stv0900_set_symbol_rate.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 60000000, i32 %add)
  %cmp.i712 = icmp ugt i32 %add, 60000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %add)
  %cmp5.i = icmp ugt i32 %add, 6000000
  %..i = select i1 %cmp5.i, i32 6, i32 9
  %.42.i = select i1 %cmp5.i, i32 10, i32 7
  %.sink41.i = select i1 %cmp.i712, i32 4, i32 %..i
  %.sink.i = select i1 %cmp.i712, i32 12, i32 %.42.i
  %shl7.i713 = shl i32 %add, %.sink41.i
  %shr8.i = lshr i32 %43, %.sink.i
  %div9.i = udiv i32 %shl7.i713, %shr8.i
  %conv.i715 = select i1 %cmp.i.i, i16 -3490, i16 -2978
  %shr17.i = lshr i32 %div9.i, 8
  %45 = trunc i32 %shr17.i to i8
  %conv18.i = and i8 %45, 127
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv.i715, i8 noundef zeroext %conv18.i) #6
  %conv20.i = or i16 %conv.i715, 1
  %conv22.i = trunc i32 %div9.i to i8
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv20.i, i8 noundef zeroext %conv22.i) #6
  %46 = ptrtoint ptr %standard to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %standard, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp215.not = icmp eq i32 %47, 1
  br i1 %cmp215.not, label %stv0900_set_symbol_rate.exit.if.end219_crit_edge, label %if.then217

stv0900_set_symbol_rate.exit.if.end219_crit_edge: ; preds = %stv0900_set_symbol_rate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end219

if.then217:                                       ; preds = %stv0900_set_symbol_rate.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @stv0900_set_dvbs1_track_car_loop(ptr noundef %3, i32 noundef %5, i32 noundef %add)
  br label %if.end219

if.end219:                                        ; preds = %if.then217, %stv0900_set_symbol_rate.exit.if.end219_crit_edge, %sw.epilog.if.end219_crit_edge
  %chip_id220 = getelementptr inbounds %struct.stv0900_internal, ptr %3, i32 0, i32 20
  %48 = ptrtoint ptr %chip_id220 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %chip_id220, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %49)
  %cmp222 = icmp ugt i8 %49, 31
  br i1 %cmp222, label %if.then224, label %if.end219.if.end252_crit_edge

if.end219.if.end252_crit_edge:                    ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end252

if.then224:                                       ; preds = %if.end219
  %arrayidx226 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 10, i32 %5
  %50 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx226, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %51, label %if.then224.if.end260_crit_edge [
    i32 1, label %if.then224.if.end244_crit_edge
    i32 3, label %if.then224.if.end244_crit_edge799
    i32 0, label %if.then224.if.end244_crit_edge800
  ]

if.then224.if.end244_crit_edge800:                ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end244

if.then224.if.end244_crit_edge799:                ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end244

if.then224.if.end244_crit_edge:                   ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end244

if.then224.if.end260_crit_edge:                   ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end260

if.end244:                                        ; preds = %if.then224.if.end244_crit_edge, %if.then224.if.end244_crit_edge799, %if.then224.if.end244_crit_edge800
  %conv240 = sub nuw nsw i16 -2755, %39
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv240, i8 noundef zeroext 10) #6
  %conv242 = sub nuw nsw i16 -2766, %39
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv242, i8 noundef zeroext 0) #6
  %53 = ptrtoint ptr %chip_id220 to i32
  call void @__asan_load1_noabort(i32 %53)
  %.pr = load i8, ptr %chip_id220, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %.pr)
  %cmp247 = icmp ult i8 %.pr, 32
  br i1 %cmp247, label %if.end244.if.end252_crit_edge, label %if.end244.if.end260_crit_edge

if.end244.if.end260_crit_edge:                    ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end260

if.end244.if.end252_crit_edge:                    ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end252

if.end252:                                        ; preds = %if.end244.if.end252_crit_edge, %if.end219.if.end252_crit_edge
  %conv251 = sub nuw nsw i16 -3010, %39
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv251, i8 noundef zeroext 8) #6
  %54 = ptrtoint ptr %chip_id220 to i32
  call void @__asan_load1_noabort(i32 %54)
  %.pr781.pr = load i8, ptr %chip_id220, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %.pr781.pr)
  %cmp255 = icmp eq i8 %.pr781.pr, 16
  br i1 %cmp255, label %if.then257, label %if.end252.if.end260_crit_edge

if.end252.if.end260_crit_edge:                    ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end260

if.then257:                                       ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #8
  %conv259 = sub nuw nsw i16 -3038, %39
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv259, i8 noundef zeroext 10) #6
  br label %if.end260

if.end260:                                        ; preds = %if.then257, %if.end252.if.end260_crit_edge, %if.end244.if.end260_crit_edge, %if.then224.if.end260_crit_edge
  %conv262 = sub nuw nsw i16 -3027, %39
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv262, i8 noundef zeroext 56) #6
  %55 = ptrtoint ptr %chip_id220 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %chip_id220, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %56)
  %cmp265 = icmp ugt i8 %56, 31
  %brmerge = select i1 %cmp265, i1 true, i1 %cmp202
  br i1 %brmerge, label %if.end260.if.then274_crit_edge, label %lor.lhs.false270

if.end260.if.then274_crit_edge:                   ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then274

lor.lhs.false270:                                 ; preds = %if.end260
  %arrayidx271 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 6, i32 %5
  %57 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx271, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %58)
  %cmp272 = icmp slt i32 %58, 10000000
  br i1 %cmp272, label %lor.lhs.false270.if.then274_crit_edge, label %lor.lhs.false270.if.end354_crit_edge

lor.lhs.false270.if.end354_crit_edge:             ; preds = %lor.lhs.false270
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end354

lor.lhs.false270.if.then274_crit_edge:            ; preds = %lor.lhs.false270
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then274

if.then274:                                       ; preds = %lor.lhs.false270.if.then274_crit_edge, %if.end260.if.then274_crit_edge
  %conv276 = sub nuw nsw i16 -3000, %39
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv276, i8 noundef zeroext %call195) #6
  %conv279 = sub nuw nsw i16 -2999, %39
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv279, i8 noundef zeroext %call199) #6
  %rolloff281 = getelementptr inbounds %struct.stv0900_internal, ptr %3, i32 0, i32 2
  %59 = ptrtoint ptr %rolloff281 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rolloff281, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %switch.selectcmp.i = icmp eq i32 %60, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 25, i32 35
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %60)
  %switch.selectcmp4.i = icmp eq i32 %60, 2
  %switch.select5.i = select i1 %switch.selectcmp4.i, i32 20, i32 %switch.select.i
  %mul.i737 = mul i32 %switch.select5.i, %add
  %div.i738 = udiv i32 %mul.i737, 100
  %add.i = add i32 %add, 10000000
  %add283 = add i32 %add.i, %div.i738
  %arrayidx284 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 5, i32 %5
  %61 = ptrtoint ptr %arrayidx284 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add283, ptr %arrayidx284, align 4
  %62 = ptrtoint ptr %chip_id220 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %chip_id220, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %63)
  %cmp287 = icmp ugt i8 %63, 31
  %brmerge593 = select i1 %cmp287, i1 true, i1 %cmp202
  br i1 %brmerge593, label %if.then292, label %if.then274.if.end310_crit_edge

if.then274.if.end310_crit_edge:                   ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end310

if.then292:                                       ; preds = %if.then274
  %64 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %cmp295.not = icmp eq i32 %65, 2
  br i1 %cmp295.not, label %if.then292.lor.lhs.false315_crit_edge, label %if.then297

if.then292.lor.lhs.false315_crit_edge:            ; preds = %if.then292
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false315

if.then297:                                       ; preds = %if.then292
  %arrayidx298 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 8, i32 %5
  %66 = ptrtoint ptr %arrayidx298 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx298, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %67)
  %cmp299 = icmp eq i32 %67, 3
  br i1 %cmp299, label %if.then301, label %if.else305

if.then301:                                       ; preds = %if.then297
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx302 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 4, i32 %5
  %68 = ptrtoint ptr %arrayidx302 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx302, align 4
  tail call void @stv0900_set_tuner_auto(ptr noundef %3, i32 noundef %69, i32 noundef %add283, i32 noundef %5) #6
  br label %if.end310

if.else305:                                       ; preds = %if.then297
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stv0900_set_bandwidth(ptr noundef %fe, i32 noundef %add283) #6
  br label %if.end310

if.end310:                                        ; preds = %if.else305, %if.then301, %if.then274.if.end310_crit_edge
  %70 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pr783 = load i32, ptr %arrayidx201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr783)
  %cmp313 = icmp eq i32 %.pr783, 0
  br i1 %cmp313, label %if.end310.if.end322_crit_edge, label %if.end310.lor.lhs.false315_crit_edge

if.end310.lor.lhs.false315_crit_edge:             ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false315

if.end310.if.end322_crit_edge:                    ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end322

lor.lhs.false315:                                 ; preds = %if.end310.lor.lhs.false315_crit_edge, %if.then292.lor.lhs.false315_crit_edge
  %arrayidx317 = getelementptr %struct.stv0900_internal, ptr %3, i32 0, i32 6, i32 %5
  %71 = ptrtoint ptr %arrayidx317 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx317, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %72)
  %cmp318 = icmp slt i32 %72, 10000000
  %spec.select = select i1 %cmp318, i32 50, i32 5
  br label %if.end322

if.end322:                                        ; preds = %lor.lhs.false315, %if.end310.if.end322_crit_edge
  %.sink797 = phi i32 [ 50, %if.end310.if.end322_crit_edge ], [ %spec.select, %lor.lhs.false315 ]
  tail call void @msleep(i32 noundef %.sink797) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000001, i32 %add)
  %cmp6.i = icmp slt i32 %add, 1000001
  br i1 %cmp6.i, label %if.end322.stv0900_get_lock_timeout.exit_crit_edge, label %if.else8.i

if.end322.stv0900_get_lock_timeout.exit_crit_edge: ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0900_get_lock_timeout.exit

if.else8.i:                                       ; preds = %if.end322
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000001, i32 %add)
  %cmp9.i = icmp ult i32 %add, 2000001
  br i1 %cmp9.i, label %if.else8.i.stv0900_get_lock_timeout.exit_crit_edge, label %if.else11.i

if.else8.i.stv0900_get_lock_timeout.exit_crit_edge: ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0900_get_lock_timeout.exit

if.else11.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000001, i32 %add)
  %cmp12.i = icmp ult i32 %add, 5000001
  br i1 %cmp12.i, label %if.else11.i.stv0900_get_lock_timeout.exit_crit_edge, label %if.else14.i

if.else11.i.stv0900_get_lock_timeout.exit_crit_edge: ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0900_get_lock_timeout.exit

if.else14.i:                                      ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000001, i32 %add)
  %cmp15.i = icmp ult i32 %add, 10000001
  br i1 %cmp15.i, label %if.else14.i.stv0900_get_lock_timeout.exit_crit_edge, label %if.else17.i

if.else14.i.stv0900_get_lock_timeout.exit_crit_edge: ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stv0900_get_lock_timeout.exit

if.else17.i:                                      ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000001, i32 %add)
  %cmp18.i = icmp ult i32 %add, 20000001
  %phi.cast = select i1 %cmp18.i, i32 100, i32 75
  br label %stv0900_get_lock_timeout.exit

stv0900_get_lock_timeout.exit:                    ; preds = %if.else17.i, %if.else14.i.stv0900_get_lock_timeout.exit_crit_edge, %if.else11.i.stv0900_get_lock_timeout.exit_crit_edge, %if.else8.i.stv0900_get_lock_timeout.exit_crit_edge, %if.end322.stv0900_get_lock_timeout.exit_crit_edge
  %.sink54.i = phi i32 [ 750, %if.end322.stv0900_get_lock_timeout.exit_crit_edge ], [ 625, %if.else8.i.stv0900_get_lock_timeout.exit_crit_edge ], [ 250, %if.else11.i.stv0900_get_lock_timeout.exit_crit_edge ], [ 175, %if.else14.i.stv0900_get_lock_timeout.exit_crit_edge ], [ %phi.cast, %if.else17.i ]
  %call323 = tail call i32 @stv0900_get_demod_lock(ptr noundef %3, i32 noundef %5, i32 noundef %.sink54.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call323)
  %cmp324 = icmp eq i32 %call323, 0
  br i1 %cmp324, label %if.then326, label %stv0900_get_lock_timeout.exit.if.end354_crit_edge

stv0900_get_lock_timeout.exit.if.end354_crit_edge: ; preds = %stv0900_get_lock_timeout.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end354

if.then326:                                       ; preds = %stv0900_get_lock_timeout.exit
  %conv328 = sub nuw nsw i16 -3050, %39
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv328, i8 noundef zeroext 31) #6
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv276, i8 noundef zeroext %call195) #6
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv279, i8 noundef zeroext %call199) #6
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv328, i8 noundef zeroext 24) #6
  %call338793 = tail call i32 @stv0900_get_demod_lock(ptr noundef %3, i32 noundef %5, i32 noundef %.sink54.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call338793)
  %cmp339794 = icmp eq i32 %call338793, 0
  br i1 %cmp339794, label %while.body, label %if.then326.if.end354_crit_edge

if.then326.if.end354_crit_edge:                   ; preds = %if.then326
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end354

while.body:                                       ; preds = %if.then326
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv328, i8 noundef zeroext 31) #6
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv276, i8 noundef zeroext %call195) #6
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv279, i8 noundef zeroext %call199) #6
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv328, i8 noundef zeroext 24) #6
  %call338 = tail call i32 @stv0900_get_demod_lock(ptr noundef %3, i32 noundef %5, i32 noundef %.sink54.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call338)
  %cmp339 = icmp eq i32 %call338, 0
  br i1 %cmp339, label %while.body.1, label %while.body.if.end354_crit_edge

while.body.if.end354_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end354

while.body.1:                                     ; preds = %while.body
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv328, i8 noundef zeroext 31) #6
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv276, i8 noundef zeroext %call195) #6
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv279, i8 noundef zeroext %call199) #6
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv328, i8 noundef zeroext 24) #6
  %call338.1 = tail call i32 @stv0900_get_demod_lock(ptr noundef %3, i32 noundef %5, i32 noundef %.sink54.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call338.1)
  %cmp339.1 = icmp eq i32 %call338.1, 0
  br i1 %cmp339.1, label %while.body.2, label %while.body.1.if.end354_crit_edge

while.body.1.if.end354_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end354

while.body.2:                                     ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv328, i8 noundef zeroext 31) #6
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv276, i8 noundef zeroext %call195) #6
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv279, i8 noundef zeroext %call199) #6
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv328, i8 noundef zeroext 24) #6
  %call338.2 = tail call i32 @stv0900_get_demod_lock(ptr noundef %3, i32 noundef %5, i32 noundef %.sink54.i) #6
  br label %if.end354

if.end354:                                        ; preds = %while.body.2, %while.body.1.if.end354_crit_edge, %while.body.if.end354_crit_edge, %if.then326.if.end354_crit_edge, %stv0900_get_lock_timeout.exit.if.end354_crit_edge, %lor.lhs.false270.if.end354_crit_edge
  %73 = ptrtoint ptr %chip_id220 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %chip_id220, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %74)
  %cmp357 = icmp ugt i8 %74, 31
  br i1 %cmp357, label %if.then359, label %if.end354.if.end362_crit_edge

if.end354.if.end362_crit_edge:                    ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end362

if.then359:                                       ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #8
  %conv361 = sub nuw nsw i16 -3011, %39
  tail call void @stv0900_write_reg(ptr noundef %3, i16 noundef zeroext %conv361, i8 noundef zeroext 73) #6
  br label %if.end362

if.end362:                                        ; preds = %if.then359, %if.end354.if.end362_crit_edge
  %75 = ptrtoint ptr %standard to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %standard, align 4
  %77 = zext i32 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %76, label %if.end362.if.end375_crit_edge [
    i32 0, label %if.end362.if.then374_crit_edge
    i32 2, label %if.end362.if.then374_crit_edge801
  ]

if.end362.if.then374_crit_edge801:                ; preds = %if.end362
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then374

if.end362.if.then374_crit_edge:                   ; preds = %if.end362
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then374

if.end362.if.end375_crit_edge:                    ; preds = %if.end362
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end375

if.then374:                                       ; preds = %if.end362.if.then374_crit_edge, %if.end362.if.then374_crit_edge801
  tail call fastcc void @stv0900_set_viterbi_tracq(ptr noundef %3, i32 noundef %5)
  br label %if.end375

if.end375:                                        ; preds = %if.then374, %if.end362.if.end375_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stv0900_wait_for_lock(ptr noundef %intp, i32 noundef %demod, i32 noundef %dmd_timeout, i32 noundef %fec_timeout) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %0 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.65) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call i32 @stv0900_get_demod_lock(ptr noundef %intp, i32 noundef %demod, i32 noundef %dmd_timeout) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.end3.do.body39_crit_edge, label %if.then6

do.end3.do.body39_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body39

if.then6:                                         ; preds = %do.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %1 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.then6.do.end3.i_crit_edge, label %do.end.i

if.then6.do.end3.i_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i

do.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.75) #9
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.then6.do.end3.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %demod)
  %cmp.i.i = icmp eq i32 %demod, 1
  %sub.i.i = select i1 %cmp.i.i, i32 33554432, i32 0
  %retval.0.i.i = sub nuw nsw i32 -199557024, %sub.i.i
  %call5.i = tail call zeroext i8 @stv0900_get_bits(ptr noundef %intp, i32 noundef %retval.0.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fec_timeout)
  %cmp65.i = icmp sgt i32 %fec_timeout, 0
  br i1 %cmp65.i, label %do.end3.i.while.body.i_crit_edge, label %do.end3.i.do.body34.i_crit_edge

do.end3.i.do.body34.i_crit_edge:                  ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body34.i

do.end3.i.while.body.i_crit_edge:                 ; preds = %do.end3.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end20.i.while.body.i_crit_edge, %do.end3.i.while.body.i_crit_edge
  %timer.066.i = phi i32 [ %timer.1.i, %if.end20.i.while.body.i_crit_edge ], [ 0, %do.end3.i.while.body.i_crit_edge ]
  %2 = zext i8 %call5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.107)
  switch i8 %call5.i, label %while.body.i.if.then19.i_crit_edge [
    i8 3, label %sw.bb13.i
    i8 2, label %while.body.i.sw.epilog.i_crit_edge
  ]

while.body.i.sw.epilog.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

while.body.i.if.then19.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19.i

sw.bb13.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb13.i, %while.body.i.sw.epilog.i_crit_edge
  %.pn.i = phi i32 [ -180486136, %sw.bb13.i ], [ -177668094, %while.body.i.sw.epilog.i_crit_edge ]
  %retval.0.i59.sink.i = sub nuw nsw i32 %.pn.i, %sub.i.i
  %call15.i = tail call zeroext i8 @stv0900_get_bits(ptr noundef %intp, i32 noundef %retval.0.i59.sink.i) #6
  %lock.1.i = zext i8 %call15.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call15.i)
  %cmp17.i = icmp eq i8 %call15.i, 0
  br i1 %cmp17.i, label %sw.epilog.i.if.then19.i_crit_edge, label %sw.epilog.i.if.end20.i_crit_edge

sw.epilog.i.if.end20.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

sw.epilog.i.if.then19.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19.i

if.then19.i:                                      ; preds = %sw.epilog.i.if.then19.i_crit_edge, %while.body.i.if.then19.i_crit_edge
  tail call void @msleep(i32 noundef 10) #6
  %add.i = add i32 %timer.066.i, 10
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then19.i, %sw.epilog.i.if.end20.i_crit_edge
  %lock.163.i = phi i32 [ 0, %if.then19.i ], [ %lock.1.i, %sw.epilog.i.if.end20.i_crit_edge ]
  %timer.1.i = phi i32 [ %add.i, %if.then19.i ], [ %timer.066.i, %sw.epilog.i.if.end20.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %timer.1.i, i32 %fec_timeout)
  %cmp.i = icmp slt i32 %timer.1.i, %fec_timeout
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lock.163.i)
  %cmp7.i = icmp eq i32 %lock.163.i, 0
  %or.cond.i = select i1 %cmp.i, i1 %cmp7.i, i1 false
  br i1 %or.cond.i, label %if.end20.i.while.body.i_crit_edge, label %while.end.i

if.end20.i.while.body.i_crit_edge:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.end.i:                                      ; preds = %if.end20.i
  br i1 %cmp7.i, label %while.end.i.do.body34.i_crit_edge, label %do.body23.i

while.end.i.do.body34.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body34.i

do.body23.i:                                      ; preds = %while.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %3 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool24.not.i = icmp eq i32 %3, 0
  br i1 %tobool24.not.i, label %do.body23.i.while.body.lr.ph_crit_edge, label %if.then10

do.body23.i.while.body.lr.ph_crit_edge:           ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.lr.ph

do.body34.i:                                      ; preds = %while.end.i.do.body34.i_crit_edge, %do.end3.i.do.body34.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %4 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool35.not.i = icmp eq i32 %4, 0
  br i1 %tobool35.not.i, label %do.body34.i.if.end50_crit_edge, label %stv0900_get_fec_lock.exit.thread73

do.body34.i.if.end50_crit_edge:                   ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

stv0900_get_fec_lock.exit.thread73:               ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #8
  %call41.i76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.75) #9
  br label %do.body39

if.then10:                                        ; preds = %do.body23.i
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.75) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %.pr = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool12.not = icmp eq i32 %.pr, 0
  br i1 %tobool12.not, label %if.then10.while.body.lr.ph_crit_edge, label %do.end16

if.then10.while.body.lr.ph_crit_edge:             ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.lr.ph

do.end16:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.65, i32 noundef 0, i32 noundef %fec_timeout) #9
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %do.end16, %if.then10.while.body.lr.ph_crit_edge, %do.body23.i.while.body.lr.ph_crit_edge
  %retval.0.i = sub nuw nsw i32 -176095104, %sub.i.i
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %timer.088 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %while.body.while.body_crit_edge ]
  %call24 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %intp, i32 noundef %retval.0.i) #6
  tail call void @msleep(i32 noundef 1) #6
  %inc = add nuw nsw i32 %timer.088, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %fec_timeout)
  %cmp = icmp slt i32 %inc, %fec_timeout
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call24)
  %cmp22 = icmp eq i8 %call24, 0
  %or.cond = select i1 %cmp, i1 %cmp22, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %if.end25

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end25:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call24)
  %phi.cmp = icmp eq i8 %call24, 0
  br i1 %phi.cmp, label %if.end25.do.body39_crit_edge, label %do.body28

if.end25.do.body39_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body39

do.body28:                                        ; preds = %if.end25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %5 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool29.not = icmp eq i32 %5, 0
  br i1 %tobool29.not, label %do.body28.if.end50_crit_edge, label %do.body28.if.end50.sink.split_crit_edge

do.body28.if.end50.sink.split_crit_edge:          ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.sink.split

do.body28.if.end50_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

do.body39:                                        ; preds = %if.end25.do.body39_crit_edge, %stv0900_get_fec_lock.exit.thread73, %do.end3.do.body39_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %.pr83 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr83)
  %tobool40.not = icmp eq i32 %.pr83, 0
  br i1 %tobool40.not, label %do.body39.if.end50_crit_edge, label %do.body39.if.end50.sink.split_crit_edge

do.body39.if.end50.sink.split_crit_edge:          ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.sink.split

do.body39.if.end50_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.end50.sink.split:                              ; preds = %do.body39.if.end50.sink.split_crit_edge, %do.body28.if.end50.sink.split_crit_edge
  %.str.73.sink = phi ptr [ @.str.70, %do.body28.if.end50.sink.split_crit_edge ], [ @.str.73, %do.body39.if.end50.sink.split_crit_edge ]
  %.ph = phi i32 [ 1, %do.body28.if.end50.sink.split_crit_edge ], [ 0, %do.body39.if.end50.sink.split_crit_edge ]
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.73.sink, ptr noundef nonnull @.str.65) #9
  br label %if.end50

if.end50:                                         ; preds = %if.end50.sink.split, %do.body39.if.end50_crit_edge, %do.body28.if.end50_crit_edge, %do.body34.i.if.end50_crit_edge
  %6 = phi i32 [ 1, %do.body28.if.end50_crit_edge ], [ 0, %do.body39.if.end50_crit_edge ], [ 0, %do.body34.i.if.end50_crit_edge ], [ %.ph, %if.end50.sink.split ]
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stv0900_set_dvbs1_track_car_loop(ptr noundef %intp, i32 noundef %demod, i32 noundef %srate) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_id = getelementptr inbounds %struct.stv0900_internal, ptr %intp, i32 0, i32 20
  %0 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %1)
  %cmp = icmp ugt i8 %1, 47
  br i1 %cmp, label %if.then, label %if.else27

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 14999999, i32 %srate)
  %cmp2 = icmp ugt i32 %srate, 14999999
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %demod)
  %cmp.i = icmp eq i32 %demod, 1
  %2 = select i1 %cmp.i, i16 512, i16 0
  %conv5 = sub nuw nsw i16 -3015, %2
  tail call void @stv0900_write_reg(ptr noundef %intp, i16 noundef zeroext %conv5, i8 noundef zeroext 43) #6
  br label %if.end32

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 6999999, i32 %srate)
  %cmp8 = icmp ugt i32 %srate, 6999999
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %demod)
  %cmp.i54 = icmp eq i32 %demod, 1
  %3 = select i1 %cmp.i54, i16 512, i16 0
  %conv14 = sub nuw nsw i16 -3015, %3
  br i1 %cmp8, label %if.then12, label %if.then20

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stv0900_write_reg(ptr noundef %intp, i16 noundef zeroext %conv14, i8 noundef zeroext 12) #6
  br label %if.end32

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @stv0900_write_reg(ptr noundef %intp, i16 noundef zeroext %conv14, i8 noundef zeroext 44) #6
  br label %if.end32

if.else27:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %demod)
  %cmp.i66 = icmp eq i32 %demod, 1
  %4 = select i1 %cmp.i66, i16 512, i16 0
  %conv29 = sub nuw nsw i16 -3015, %4
  tail call void @stv0900_write_reg(ptr noundef %intp, i16 noundef zeroext %conv29, i8 noundef zeroext 26) #6
  br label %if.end32

if.end32:                                         ; preds = %if.else27, %if.then20, %if.then12, %if.then4
  %.sink72 = phi i16 [ %2, %if.then4 ], [ %3, %if.then20 ], [ %3, %if.then12 ], [ %4, %if.else27 ]
  %.sink = phi i8 [ 26, %if.then4 ], [ 28, %if.then20 ], [ 27, %if.then12 ], [ 9, %if.else27 ]
  %conv7 = sub nuw nsw i16 -3014, %.sink72
  tail call void @stv0900_write_reg(ptr noundef %intp, i16 noundef zeroext %conv7, i8 noundef zeroext %.sink) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stv0900_set_viterbi_standard(ptr noundef %intp, i32 noundef %standard, i32 noundef %fec, i32 noundef %demod) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %0 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25) #9
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %1 = zext i32 %standard to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %standard, label %do.end2.sw.epilog72_crit_edge [
    i32 0, label %do.body3
    i32 1, label %do.body16
    i32 3, label %do.body46
  ]

do.end2.sw.epilog72_crit_edge:                    ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog72

do.body3:                                         ; preds = %do.end2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %2 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool4.not = icmp eq i32 %2, 0
  br i1 %tobool4.not, label %do.body3.do.end11_crit_edge, label %do.end7

do.body3.do.end11_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

do.end7:                                          ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #9
  br label %do.end11

do.end11:                                         ; preds = %do.end7, %do.body3.do.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %demod)
  %cmp.i = icmp eq i32 %demod, 1
  %3 = select i1 %cmp.i, i16 512, i16 0
  %conv = sub nuw nsw i16 -2765, %3
  tail call void @stv0900_write_reg(ptr noundef %intp, i16 noundef zeroext %conv, i8 noundef zeroext 16) #6
  br label %sw.epilog72.sink.split

do.body16:                                        ; preds = %do.end2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %4 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool17.not = icmp eq i32 %4, 0
  br i1 %tobool17.not, label %do.body16.do.end24_crit_edge, label %do.end20

do.body16.do.end24_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

do.end20:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #9
  br label %do.end24

do.end24:                                         ; preds = %do.end20, %do.body16.do.end24_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %demod)
  %cmp.i103 = icmp eq i32 %demod, 1
  %5 = select i1 %cmp.i103, i16 512, i16 0
  %conv26 = sub nuw nsw i16 -2765, %5
  tail call void @stv0900_write_reg(ptr noundef %intp, i16 noundef zeroext %conv26, i8 noundef zeroext 0) #6
  %6 = zext i32 %fec to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %fec, label %do.end24.sw.epilog72.sink.split_crit_edge [
    i32 6, label %sw.bb42
    i32 0, label %sw.bb30
    i32 1, label %sw.bb33
    i32 2, label %sw.bb36
    i32 4, label %sw.bb39
  ]

do.end24.sw.epilog72.sink.split_crit_edge:        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog72.sink.split

sw.bb30:                                          ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog72.sink.split

sw.bb33:                                          ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog72.sink.split

sw.bb36:                                          ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog72.sink.split

sw.bb39:                                          ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog72.sink.split

sw.bb42:                                          ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog72.sink.split

do.body46:                                        ; preds = %do.end2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %7 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool47.not = icmp eq i32 %7, 0
  br i1 %tobool47.not, label %do.body46.do.end54_crit_edge, label %do.end50

do.body46.do.end54_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end54

do.end50:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #9
  br label %do.end54

do.end54:                                         ; preds = %do.end50, %do.body46.do.end54_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %demod)
  %cmp.i124 = icmp eq i32 %demod, 1
  %8 = select i1 %cmp.i124, i16 512, i16 0
  %conv56 = sub nuw nsw i16 -2765, %8
  tail call void @stv0900_write_reg(ptr noundef %intp, i16 noundef zeroext %conv56, i8 noundef zeroext -128) #6
  %9 = zext i32 %fec to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %fec, label %do.end54.sw.epilog72.sink.split_crit_edge [
    i32 5, label %sw.bb67
    i32 0, label %sw.bb61
    i32 1, label %sw.bb64
  ]

do.end54.sw.epilog72.sink.split_crit_edge:        ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog72.sink.split

sw.bb61:                                          ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog72.sink.split

sw.bb64:                                          ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog72.sink.split

sw.bb67:                                          ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog72.sink.split

sw.epilog72.sink.split:                           ; preds = %sw.bb67, %sw.bb64, %sw.bb61, %do.end54.sw.epilog72.sink.split_crit_edge, %sw.bb42, %sw.bb39, %sw.bb36, %sw.bb33, %sw.bb30, %do.end24.sw.epilog72.sink.split_crit_edge, %do.end11
  %.sink139 = phi i16 [ %8, %sw.bb61 ], [ %8, %sw.bb64 ], [ %8, %sw.bb67 ], [ %5, %sw.bb30 ], [ %5, %sw.bb33 ], [ %5, %sw.bb36 ], [ %5, %sw.bb39 ], [ %5, %sw.bb42 ], [ %3, %do.end11 ], [ %5, %do.end24.sw.epilog72.sink.split_crit_edge ], [ %8, %do.end54.sw.epilog72.sink.split_crit_edge ]
  %.sink = phi i8 [ 1, %sw.bb61 ], [ 2, %sw.bb64 ], [ 16, %sw.bb67 ], [ 1, %sw.bb30 ], [ 2, %sw.bb33 ], [ 4, %sw.bb36 ], [ 8, %sw.bb39 ], [ 32, %sw.bb42 ], [ 63, %do.end11 ], [ 47, %do.end24.sw.epilog72.sink.split_crit_edge ], [ 19, %do.end54.sw.epilog72.sink.split_crit_edge ]
  %conv60 = sub nuw nsw i16 -2756, %.sink139
  tail call void @stv0900_write_reg(ptr noundef %intp, i16 noundef zeroext %conv60, i8 noundef zeroext %.sink) #6
  br label %sw.epilog72

sw.epilog72:                                      ; preds = %sw.epilog72.sink.split, %do.end2.sw.epilog72_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stv0900_stop_all_s2_modcod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @stv0900_activate_s2_modcod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @stv0900_activate_s2_modcod_single(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stv0900_set_viterbi_tracq(ptr noundef %intp, i32 noundef %demod) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %0 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.35) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %demod)
  %cmp.i = icmp eq i32 %demod, 1
  %conv = select i1 %cmp.i, i16 -3276, i16 -2764
  tail call void @stv0900_write_reg(ptr noundef %intp, i16 noundef zeroext %conv, i8 noundef zeroext -48) #6
  %conv6 = or i16 %conv, 1
  tail call void @stv0900_write_reg(ptr noundef %intp, i16 noundef zeroext %conv6, i8 noundef zeroext 125) #6
  %conv8 = or i16 %conv, 2
  tail call void @stv0900_write_reg(ptr noundef %intp, i16 noundef zeroext %conv8, i8 noundef zeroext 83) #6
  %conv10 = or i16 %conv, 3
  tail call void @stv0900_write_reg(ptr noundef %intp, i16 noundef zeroext %conv10, i8 noundef zeroext 47) #6
  %conv12 = add nuw nsw i16 %conv, 4
  tail call void @stv0900_write_reg(ptr noundef %intp, i16 noundef zeroext %conv12, i8 noundef zeroext 36) #6
  %conv14 = add nuw nsw i16 %conv, 5
  tail call void @stv0900_write_reg(ptr noundef %intp, i16 noundef zeroext %conv14, i8 noundef zeroext 31) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stv0900_get_symbol_rate(ptr noundef %intp, i32 noundef %mclk, i32 noundef %demod) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %demod)
  %cmp.i = icmp eq i32 %demod, 1
  %sub.i = select i1 %cmp.i, i32 33554432, i32 0
  %retval.0.i = sub nuw nsw i32 -194772737, %sub.i
  %call1 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %intp, i32 noundef %retval.0.i) #6
  %conv = zext i8 %call1 to i32
  %shl = shl nuw i32 %conv, 24
  %retval.0.i61 = sub nuw nsw i32 -194707201, %sub.i
  %call3 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %intp, i32 noundef %retval.0.i61) #6
  %conv4 = zext i8 %call3 to i32
  %shl5 = shl nuw nsw i32 %conv4, 16
  %add = or i32 %shl5, %shl
  %retval.0.i64 = sub nuw nsw i32 -194641665, %sub.i
  %call7 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %intp, i32 noundef %retval.0.i64) #6
  %conv8 = zext i8 %call7 to i32
  %shl9 = shl nuw nsw i32 %conv8, 8
  %add10 = or i32 %add, %shl9
  %retval.0.i67 = sub nuw nsw i32 -194576129, %sub.i
  %call12 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %intp, i32 noundef %retval.0.i67) #6
  %conv13 = zext i8 %call12 to i32
  %add14 = or i32 %add10, %conv13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @stvdebug to i32))
  %0 = load i32, ptr @stvdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end30_crit_edge, label %do.end

entry.do.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %intp, i32 noundef %retval.0.i67) #6
  %conv18 = zext i8 %call17 to i32
  %call20 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %intp, i32 noundef %retval.0.i64) #6
  %conv21 = zext i8 %call20 to i32
  %call23 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %intp, i32 noundef %retval.0.i61) #6
  %conv24 = zext i8 %call23 to i32
  %call26 = tail call zeroext i8 @stv0900_get_bits(ptr noundef %intp, i32 noundef %retval.0.i) #6
  %conv27 = zext i8 %call26 to i32
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %add14, i32 noundef %conv18, i32 noundef %conv21, i32 noundef %conv24, i32 noundef %conv27) #9
  br label %do.end30

do.end30:                                         ; preds = %do.end, %entry.do.end30_crit_edge
  %shr = lshr i32 %mclk, 16
  %shr31 = ashr exact i32 %add, 16
  %rem = and i32 %mclk, 65535
  %rem32 = srem i32 %add14, 65536
  %mul = mul nsw i32 %shr31, %shr
  %mul33 = mul i32 %rem32, %shr
  %shr34 = ashr i32 %mul33, 16
  %mul36 = mul nsw i32 %shr31, %rem
  %shr37 = ashr i32 %mul36, 16
  %add35 = add nsw i32 %shr37, %mul
  %add38 = add i32 %add35, %shr34
  ret i32 %add38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stv0900_get_freq_auto(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @stv0900_get_optim_carr_loop(i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @stv0900_get_optim_short_carr_loop(i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @stv0900_set_bandwidth(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148}
!llvm.module.flags = !{!149, !150, !151, !152, !153, !154, !155, !156}
!llvm.ident = !{!157}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 1120, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @stv0900_get_standard._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @stv0900_get_standard._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 1819, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @stv0900_algo._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @stv0900_algo._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 1911, i32 3}
!13 = !{ptr @stv0900_algo._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @stv0900_algo._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 328, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @stv0900_set_symbol_rate._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @stv0900_set_symbol_rate._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 1713, i32 2}
!22 = !{ptr @stv0900_set_search_standard._entry, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @stv0900_set_search_standard._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 1717, i32 3}
!26 = !{ptr @stv0900_set_search_standard._entry.11, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @stv0900_set_search_standard._entry_ptr.13, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 1720, i32 3}
!30 = !{ptr @stv0900_set_search_standard._entry.14, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @stv0900_set_search_standard._entry_ptr.16, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 1723, i32 3}
!34 = !{ptr @stv0900_set_search_standard._entry.17, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @stv0900_set_search_standard._entry_ptr.19, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 1727, i32 3}
!38 = !{ptr @stv0900_set_search_standard._entry.20, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @stv0900_set_search_standard._entry_ptr.22, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 1699, i32 2}
!42 = !{ptr @stv0900_set_viterbi_acq._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @stv0900_set_viterbi_acq._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 693, i32 2}
!46 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @stv0900_set_viterbi_standard._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @stv0900_set_viterbi_standard._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 697, i32 3}
!51 = !{ptr @stv0900_set_viterbi_standard._entry.26, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @stv0900_set_viterbi_standard._entry_ptr.28, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 702, i32 3}
!55 = !{ptr @stv0900_set_viterbi_standard._entry.29, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @stv0900_set_viterbi_standard._entry_ptr.31, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.33, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 728, i32 3}
!59 = !{ptr @stv0900_set_viterbi_standard._entry.32, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @stv0900_set_viterbi_standard._entry_ptr.34, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 678, i32 2}
!63 = !{ptr @stv0900_set_viterbi_tracq._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @stv0900_set_viterbi_tracq._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 1603, i32 2}
!67 = !{ptr @stv0900_blind_search_algo._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @stv0900_blind_search_algo._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 1620, i32 2}
!71 = !{ptr @stv0900_blind_search_algo._entry.37, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @stv0900_blind_search_algo._entry_ptr.39, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 1332, i32 2}
!75 = !{ptr @stv0900_blind_check_agc2_min_level._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @stv0900_blind_check_agc2_min_level._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 1474, i32 3}
!79 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @stv0900_search_srate_coarse._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @stv0900_search_srate_coarse._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 304, i32 2}
!84 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @stv0900_get_symbol_rate._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @stv0900_get_symbol_rate._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 1215, i32 2}
!89 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @stv0900_get_signal_params._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @stv0900_get_signal_params._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 1258, i32 2}
!94 = !{ptr @stv0900_get_signal_params._entry.47, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @stv0900_get_signal_params._entry_ptr.49, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 1161, i32 4}
!98 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @stv0900_get_tuner_freq._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @stv0900_get_tuner_freq._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 1163, i32 4}
!103 = !{ptr @stv0900_get_tuner_freq._entry.52, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @stv0900_get_tuner_freq._entry_ptr.54, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 826, i32 2}
!107 = !{ptr @stv0900_track_optimization._entry, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @stv0900_track_optimization._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 834, i32 3}
!111 = !{ptr @stv0900_track_optimization._entry.56, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @stv0900_track_optimization._entry_ptr.58, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.60, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 859, i32 3}
!115 = !{ptr @stv0900_track_optimization._entry.59, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @stv0900_track_optimization._entry_ptr.61, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.63, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 920, i32 3}
!119 = !{ptr @stv0900_track_optimization._entry.62, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @stv0900_track_optimization._entry_ptr.64, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.65, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 1065, i32 2}
!123 = !{ptr @stv0900_wait_for_lock._entry, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @stv0900_wait_for_lock._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.67, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 1075, i32 3}
!127 = !{ptr @stv0900_wait_for_lock._entry.66, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @stv0900_wait_for_lock._entry_ptr.68, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.70, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 1086, i32 3}
!131 = !{ptr @stv0900_wait_for_lock._entry.69, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @stv0900_wait_for_lock._entry_ptr.71, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.73, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 1088, i32 3}
!135 = !{ptr @stv0900_wait_for_lock._entry.72, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @stv0900_wait_for_lock._entry_ptr.74, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.75, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 1025, i32 2}
!139 = !{ptr @stv0900_get_fec_lock._entry, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @stv0900_get_fec_lock._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.77, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 1051, i32 3}
!143 = !{ptr @stv0900_get_fec_lock._entry.76, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @stv0900_get_fec_lock._entry_ptr.78, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.80, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/dvb-frontends/stv0900_sw.c", i32 1053, i32 3}
!147 = !{ptr @stv0900_get_fec_lock._entry.79, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @stv0900_get_fec_lock._entry_ptr.81, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{i32 1, !"wchar_size", i32 2}
!150 = !{i32 1, !"min_enum_size", i32 4}
!151 = !{i32 8, !"branch-target-enforcement", i32 0}
!152 = !{i32 8, !"sign-return-address", i32 0}
!153 = !{i32 8, !"sign-return-address-all", i32 0}
!154 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!155 = !{i32 7, !"uwtable", i32 1}
!156 = !{i32 7, !"frame-pointer", i32 2}
!157 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!158 = !{i32 2147450880, i32 2147450879}
