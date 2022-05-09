; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/ar9003_calib.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/ar9003_calib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.coeff = type { [3 x [8 x [3 x i32]]], [3 x [8 x [3 x i32]]], [2 x i32] }
%struct.ath9k_percal_data = type { i32, i32, i32, ptr, ptr }
%struct.ath_hw = type { %struct.ath_ops, ptr, ptr, %struct.ath_common, %struct.ath9k_hw_version, %struct.ath9k_ops_config, %struct.ath9k_hw_capabilities, [38 x %struct.ath9k_channel], ptr, %union.anon.125, ptr, i8, i8, i8, i8, i8, i8, i16, [6 x i32], %struct.ath_nf_limits, %struct.ath_nf_limits, i16, i32, i32, i32, i16, i8, i8, i32, i32, i8, ptr, %struct.ath9k_pacal_info, %struct.ar5416Stats, [10 x %struct.ath9k_tx_queue_info], [4 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i8, i32, i32, i32, %struct.ath9k_cal_list, %struct.ath9k_cal_list, %struct.ath9k_cal_list, ptr, ptr, ptr, %union.anon.126, %union.anon.127, %union.anon.128, %union.anon.129, i16, i8, i32, i32, %struct.ath_hw_private_ops, %struct.ath_hw_ops, ptr, i32, i32, i32, i32, i32, i32, %struct.ar5416AniState, %struct.ath_btcoex_hw, i32, i8, i8, %struct.ath_hw_radar_conf, [22 x i32], i32, i32, i32, i32, i32, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], i32, i32, %struct.ath_gen_timer_table, ptr, i32, i32, i16, i16, i32, i32, i8, i32, i32, i32, i32, i8, [32 x i32], [32 x i8], i32, i32, %struct.ath9k_hw_wow, i8, ptr, ptr, i8, i8, ptr, ptr, i32, %struct.ath_dynack, i8, [36 x i8], [36 x i8], i8, i32, i32 }
%struct.ath_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.ath_cycle_counters = type { i32, i32, i32, i32 }
%struct.ath_regulatory = type { [2 x i8], i32, i16, i16, i16, i16, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ath9k_hw_version = type { i32, i16, i16, i32, i16, i16, i16, i16, i32 }
%struct.ath9k_ops_config = type { i32, i32, i8, i32, i8, i32, i32, i32, i32, i8, i32, i8, i8, i8, i16, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.ath9k_hw_capabilities = type { i32, i16, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8 }
%struct.ath9k_channel = type { ptr, i16, i16, i16 }
%union.anon.125 = type { %struct.ar5416_eeprom_def }
%struct.ar5416_eeprom_def = type { %struct.base_eep_header, [64 x i8], [2 x %struct.modal_eep_header], [8 x i8], [4 x i8], [3 x [8 x %struct.cal_data_per_freq]], [3 x [4 x %struct.cal_data_per_freq]], [8 x %struct.cal_target_power_leg], [8 x %struct.cal_target_power_ht], [8 x %struct.cal_target_power_ht], [3 x %struct.cal_target_power_leg], [4 x %struct.cal_target_power_leg], [4 x %struct.cal_target_power_ht], [4 x %struct.cal_target_power_ht], [24 x i8], [24 x %struct.cal_ctl_data], i8 }
%struct.base_eep_header = type <{ i16, i16, i16, i8, i8, [2 x i16], [6 x i8], i8, i8, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [21 x i8] }>
%struct.modal_eep_header = type { [3 x i32], i32, [3 x i8], i8, [3 x i8], [3 x i8], i8, i8, [3 x i8], i8, i8, i8, i8, [3 x i8], i8, i8, [3 x i8], [3 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8], [3 x i8], i8, [3 x i8], [3 x i8], i8, i8, i8, i8, [3 x i16], [6 x i8], [5 x %struct.spur_chan] }
%struct.spur_chan = type { i16, i8, i8 }
%struct.cal_data_per_freq = type { [4 x [5 x i8]], [4 x [5 x i8]] }
%struct.cal_target_power_leg = type { i8, [4 x i8] }
%struct.cal_target_power_ht = type { i8, [8 x i8] }
%struct.cal_ctl_data = type { [3 x [8 x %struct.cal_ctl_edges]] }
%struct.cal_ctl_edges = type { i8, i8 }
%struct.ath_nf_limits = type { i16, i16, i16, [3 x i16], [3 x i16] }
%struct.ath9k_pacal_info = type { i32, i8, i8 }
%struct.ar5416Stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ath9k_mib_stats }
%struct.ath9k_mib_stats = type { i32, i32, i32, i32, i32 }
%struct.ath9k_tx_queue_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.ath9k_cal_list = type { ptr, i32, ptr }
%union.anon.126 = type { [3 x i32] }
%union.anon.127 = type { [3 x i32] }
%union.anon.128 = type { [3 x i32] }
%union.anon.129 = type { [3 x i32] }
%struct.ath_hw_private_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ar5416AniState = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, %struct.ath9k_ani_default }
%struct.ath9k_ani_default = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.ath_btcoex_hw = type { i32, %struct.ath9k_hw_mci, %struct.ath9k_hw_aic, i8, i8, i8, i8, i32, i32, i32, i32, [4 x i32], [4 x i32], [5 x i8] }
%struct.ath9k_hw_mci = type { i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ath9k_hw_aic = type { i8, i8, i8, [79 x i32], i32 }
%struct.ath_hw_radar_conf = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.ar5416IniArray = type { ptr, i32, i32 }
%struct.ath_gen_timer_table = type { [16 x ptr], i16, i8 }
%struct.ath9k_hw_wow = type { i32, i32, i8 }
%struct.ath_dynack = type { i8, i32, i32, %struct.list_head, %struct.spinlock, %struct.ath_dyn_rxbuf, %struct.ath_dyn_txbuf }
%struct.list_head = type { ptr, ptr }
%struct.ath_dyn_rxbuf = type { i16, i16, [64 x i32] }
%struct.ath_dyn_txbuf = type { i16, i16, [64 x %struct.haddr_pair], [64 x %struct.ts_info] }
%struct.haddr_pair = type { [6 x i8], [6 x i8] }
%struct.ts_info = type { i32, i32 }
%struct.ath9k_hw_cal_data = type { i16, i16, i32, i32, i8, i8, [2 x i8], [3 x i16], [3 x [24 x i32]], [3 x i32], [8 x [3 x i32]], [3 x [16 x i32]], [3 x [6 x i32]], [6 x %struct.ath9k_nfcal_hist] }
%struct.ath9k_nfcal_hist = type { [5 x i16], i8, i16, i8 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"RTT calibration to be done\0A\00", [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"offset calibration failed to complete in %d ms; noisy environment?\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not stop baseband\0A\00", [39 x i8] zeroinitializer }, align 32
@__const.ar9003_hw_tx_iq_cal_post_proc.chan_info_tab = private unnamed_addr constant [3 x i32] [i32 39680, i32 43776, i32 47872], align 4
@ar9003_hw_tx_iq_cal_post_proc.coeff = internal global { %struct.coeff, [152 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Doing Tx IQ Cal for chain %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Tx IQ Cal failed for chain %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"IQ_RES[%d]=0x%x IQ_RES[%d]=0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed in calculation of IQ correction\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Tx IQ Cal failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Divide by 0:\0Aa0_d0=%d\0Aa0_d1=%d\0Aa2_d0=%d\0Aa1_d1=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Divide by 0: mag1=%d, mag2=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Call to ar9003_hw_solve_iq_cal() failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"chain %d: mag mismatch=%d phase mismatch=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Divide by 0: mag_tx=%d, res_scale=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"tx chain %d: mag corr=%d  phase corr=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tx chain %d: iq corr coeff=%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Divide by 0: mag_rx=%d, res_scale=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rx chain %d: mag corr=%d  phase corr=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rx chain %d: iq corr coeff=%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Divide by 0\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"IQCAL: Median [ch%d][gain%d]: mag = %d phase = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@__const.ar9003_hw_cl_cal_post_proc.cl_idx = private unnamed_addr constant [3 x i32] [i32 41728, i32 45824, i32 49920], align 4
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Tx IQ Cal is not completed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"AGC cal without offset cal failed to complete in 1ms\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DC offset cal failed to complete in 1ms\00", [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"offset calibration failed to complete in %d ms,noisy environment?\0A\00", [61 x i8] zeroinitializer }, align 32
@iq_cal_single_sample = internal constant { %struct.ath9k_percal_data, [44 x i8] } { %struct.ath9k_percal_data { i32 1, i32 1, i32 10, ptr @ar9003_hw_iqcal_collect, ptr @ar9003_hw_iqcalibrate }, [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%d: Chn %d pmi=0x%08x;pmq=0x%08x;iqcm=0x%08x;\0A\00", [49 x i8] zeroinitializer }, align 32
@ar9003_hw_iqcalibrate.offset_array = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 39132, i32 43228, i32 47324], [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Starting IQ Cal and Correction for Chain %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Original: Chn %d iq_corr_meas = 0x%08x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Chn %d pwr_meas_i = 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Chn %d pwr_meas_q = 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iqCorrNeg is 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Chn %d iCoff = 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Chn %d qCoff = 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Chn %d : iCoff = 0x%x  qCoff = 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Register offset (0x%04x) before update = 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Register offset (0x%04x) QI COFF (bitfields 0x%08x) after update = 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Register offset (0x%04x) QQ COFF (bitfields 0x%08x) after update = 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"IQ Cal and Correction done for Chain %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"IQ Cal and Correction (offset 0x%04x) enabled (bit position 0x%08x). New Value 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"starting IQ Mismatch Calibration\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid calibration type\0A\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 576, i64 640, i64 704]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 1024, i64 1280, i64 1536]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1414, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1517, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1533, i32 5 }
@___asan_gen_.59 = private unnamed_addr constant [6 x i8] c"coeff\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1068, i32 22 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1085, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1090, i32 5 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1117, i32 5 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1125, i32 5 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1151, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 690, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 743, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 761, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 771, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 776, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 789, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 803, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 807, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 820, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 834, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 572, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1028, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 997, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 360, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 397, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 1569, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [21 x i8] c"iq_cal_single_sample\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 309, i32 39 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 188, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant [13 x i8] c"offset_array\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 204, i32 25 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 215, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 218, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 229, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 231, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 233, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 241, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 243, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 265, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 268, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 284, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 289, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 295, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 302, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 55, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.177 = private constant [49 x i8] c"../drivers/net/wireless/ath/ath9k/ar9003_calib.c\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 62, i32 3 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ar9003_hw_tx_iq_cal_post_proc.coeff, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @iq_cal_single_sample, ptr @.str.26, ptr @ar9003_hw_iqcalibrate.offset_array, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9003_hw_tx_iq_cal_post_proc.coeff to i32), i32 584, i32 736, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iq_cal_single_sample to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9003_hw_iqcalibrate.offset_array to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ar9003_hw_attach_calib_ops(ptr nocapture noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %macVersion, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.else [
    i32 640, label %entry.if.end_crit_edge
    i32 576, label %entry.if.end_crit_edge17
    i32 704, label %entry.if.end_crit_edge18
  ]

entry.if.end_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge, %entry.if.end_crit_edge17, %entry.if.end_crit_edge18
  %ar9003_hw_init_cal_soc.sink = phi ptr [ @ar9003_hw_init_cal_soc, %if.else ], [ @ar9003_hw_init_cal_pcoem, %entry.if.end_crit_edge ], [ @ar9003_hw_init_cal_pcoem, %entry.if.end_crit_edge17 ], [ @ar9003_hw_init_cal_pcoem, %entry.if.end_crit_edge18 ]
  %init_cal9 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 4
  %3 = ptrtoint ptr %init_cal9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ar9003_hw_init_cal_soc.sink, ptr %init_cal9, align 4
  %init_cal_settings = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 3
  %4 = ptrtoint ptr %init_cal_settings to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ar9003_hw_init_cal_settings, ptr %init_cal_settings, align 4
  %setup_calibration = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 6
  %5 = ptrtoint ptr %setup_calibration to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ar9003_hw_setup_calibration, ptr %setup_calibration, align 4
  %calibrate = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 63, i32 3
  %6 = ptrtoint ptr %calibrate to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ar9003_hw_calibrate, ptr %calibrate, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ar9003_hw_init_cal_pcoem(ptr noundef %ah, ptr noundef %chan) #2 align 64 {
entry:
  %tx_corr_coeff.i = alloca [8 x [3 x i32]], align 4
  %is_reusable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %caldata1 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 31
  %0 = ptrtoint ptr %caldata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caldata1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %is_reusable) #5
  %2 = ptrtoint ptr %is_reusable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %is_reusable, align 1
  %caps = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6
  %3 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %caps, align 4
  %and = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %rx_chainmask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6, i32 3
  %5 = ptrtoint ptr %rx_chainmask to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rx_chainmask, align 1
  %tx_chainmask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6, i32 2
  %7 = ptrtoint ptr %tx_chainmask to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tx_chainmask, align 2
  tail call void @ar9003_hw_set_chain_masks(ptr noundef %ah, i8 noundef zeroext %6, i8 noundef zeroext %8) #5
  br i1 %tobool.not, label %entry.if.end38_crit_edge, label %if.then

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then:                                          ; preds = %entry
  %call6 = tail call zeroext i1 @ar9003_hw_rtt_restore(ptr noundef %ah, ptr noundef %chan) #5
  br i1 %call6, label %if.then24, label %do.body

do.body:                                          ; preds = %if.then
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug_mask, align 4
  %and10 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.body.if.else_crit_edge, label %if.then12

do.body.if.else_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1) #5
  br label %if.else

if.then24:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ah, align 4
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %14)
  %cmp = icmp ugt i32 %14, 447
  %cond = select i1 %cmp, i32 41668, i32 39008
  %call25 = tail call i32 %12(ptr noundef %ah, i32 noundef %cond) #5
  %and26 = and i32 %call25, 1116160
  %and27 = and i32 %call25, -1116161
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %15 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write, align 4
  %17 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %18)
  %cmp31 = icmp ugt i32 %18, 447
  %cond32 = select i1 %cmp31, i32 41668, i32 39008
  tail call void %16(ptr noundef %ah, i32 noundef %and27, i32 noundef %cond32) #5
  br label %if.end38

if.else:                                          ; preds = %if.then12, %do.body.if.else_crit_edge
  tail call void @ar9003_hw_rtt_enable(ptr noundef %ah) #5
  tail call void @ar9003_hw_rtt_set_mask(ptr noundef %ah, i32 noundef 0) #5
  tail call void @ar9003_hw_rtt_clear_hist(ptr noundef %ah) #5
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then24, %entry.if.end38_crit_edge
  %run_rtt_cal.1.off0403407 = phi i1 [ false, %if.then24 ], [ true, %if.else ], [ false, %entry.if.end38_crit_edge ]
  %agc_ctrl.0 = phi i32 [ %and27, %if.then24 ], [ 0, %if.else ], [ 0, %entry.if.end38_crit_edge ]
  %agc_supp_cals.0 = phi i32 [ %and26, %if.then24 ], [ 1116160, %if.else ], [ 1116160, %entry.if.end38_crit_edge ]
  %enabled_cals = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 59
  %19 = ptrtoint ptr %enabled_cals to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %enabled_cals, align 2
  %21 = and i8 %20, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool40.not = icmp eq i8 %21, 0
  br i1 %tobool40.not, label %if.end38.if.end53_crit_edge, label %if.then41

if.end38.if.end53_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then41:                                        ; preds = %if.end38
  %tobool42.not = icmp eq ptr %1, null
  br i1 %tobool42.not, label %if.then41.if.else48_crit_edge, label %land.lhs.true

if.then41.if.else48_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else48

land.lhs.true:                                    ; preds = %if.then41
  %cal_flags = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %cal_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %cal_flags, align 4
  %24 = and i32 %23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool44.not = icmp eq i32 %24, 0
  br i1 %tobool44.not, label %land.lhs.true.if.else48_crit_edge, label %if.then45

land.lhs.true.if.else48_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else48

if.then45:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %25 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmw, align 4
  %call47 = tail call i32 %26(ptr noundef %ah, i32 noundef 41688, i32 noundef 0, i32 noundef 2) #5
  br label %if.end53

if.else48:                                        ; preds = %land.lhs.true.if.else48_crit_edge, %if.then41.if.else48_crit_edge
  %rmw50 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %27 = ptrtoint ptr %rmw50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmw50, align 4
  %call51 = tail call i32 %28(ptr noundef %ah, i32 noundef 41688, i32 noundef 2, i32 noundef 0) #5
  br label %if.end53

if.end53:                                         ; preds = %if.else48, %if.then45, %if.end38.if.end53_crit_edge
  %run_agc_cal.1.shrunk = phi i1 [ %run_rtt_cal.1.off0403407, %if.then45 ], [ true, %if.else48 ], [ %run_rtt_cal.1.off0403407, %if.end38.if.end53_crit_edge ]
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %29 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %channelFlags, align 2
  %31 = and i16 %30, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %lor.lhs.false61, label %if.end53.skip_tx_iqcal_crit_edge

if.end53.skip_tx_iqcal_crit_edge:                 ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %skip_tx_iqcal

lor.lhs.false61:                                  ; preds = %if.end53
  %33 = ptrtoint ptr %enabled_cals to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %enabled_cals, align 2
  %35 = and i8 %34, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool65.not = icmp eq i8 %35, 0
  br i1 %tobool65.not, label %lor.lhs.false61.skip_tx_iqcal_crit_edge, label %if.end67

lor.lhs.false61.skip_tx_iqcal_crit_edge:          ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #7
  br label %skip_tx_iqcal

if.end67:                                         ; preds = %lor.lhs.false61
  %rmw69 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %36 = ptrtoint ptr %rmw69 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmw69, align 4
  %macVersion71 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %38 = ptrtoint ptr %macVersion71 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %macVersion71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %39)
  %cmp72 = icmp eq i32 %39, 576
  %add = select i1 %cmp72, i32 42440, i32 42568
  %call75 = tail call i32 %37(ptr noundef %ah, i32 noundef %add, i32 noundef 8388608, i32 noundef 33292288) #5
  %40 = ptrtoint ptr %enabled_cals to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %enabled_cals, align 2
  %42 = and i8 %41, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool79.not = icmp eq i8 %42, 0
  br i1 %tobool79.not, label %if.end67.skip_tx_iqcal_crit_edge, label %if.then80

if.end67.skip_tx_iqcal_crit_edge:                 ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %skip_tx_iqcal

if.then80:                                        ; preds = %if.end67
  %tobool81.not = icmp eq ptr %1, null
  br i1 %tobool81.not, label %if.then80.if.else96_crit_edge, label %land.lhs.true82

if.then80.if.else96_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else96

land.lhs.true82:                                  ; preds = %if.then80
  %cal_flags83 = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %1, i32 0, i32 2
  %43 = ptrtoint ptr %cal_flags83 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %cal_flags83, align 4
  %45 = and i32 %44, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool85.not = icmp eq i32 %45, 0
  br i1 %tobool85.not, label %if.then86, label %land.lhs.true82.if.else96_crit_edge

land.lhs.true82.if.else96_crit_edge:              ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else96

if.then86:                                        ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %rmw69 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmw69, align 4
  %48 = ptrtoint ptr %macVersion71 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %macVersion71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %49)
  %cmp91 = icmp eq i32 %49, 576
  %add94 = select i1 %cmp91, i32 42436, i32 42564
  %call95 = tail call i32 %47(ptr noundef %ah, i32 noundef %add94, i32 noundef -2147483648, i32 noundef 0) #5
  br label %skip_tx_iqcal

if.else96:                                        ; preds = %land.lhs.true82.if.else96_crit_edge, %if.then80.if.else96_crit_edge
  %50 = ptrtoint ptr %rmw69 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmw69, align 4
  %52 = ptrtoint ptr %macVersion71 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %macVersion71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %53)
  %cmp101 = icmp eq i32 %53, 576
  %add104 = select i1 %cmp101, i32 42436, i32 42564
  %call105 = tail call i32 %51(ptr noundef %ah, i32 noundef %add104, i32 noundef 0, i32 noundef -2147483648) #5
  br label %skip_tx_iqcal

skip_tx_iqcal:                                    ; preds = %if.else96, %if.then86, %if.end67.skip_tx_iqcal_crit_edge, %lor.lhs.false61.skip_tx_iqcal_crit_edge, %if.end53.skip_tx_iqcal_crit_edge
  %txiqcal_done.0.off0 = phi i1 [ false, %if.end53.skip_tx_iqcal_crit_edge ], [ false, %if.end67.skip_tx_iqcal_crit_edge ], [ false, %lor.lhs.false61.skip_tx_iqcal_crit_edge ], [ true, %if.else96 ], [ true, %if.then86 ]
  %run_agc_cal.2.shrunk = phi i1 [ %run_agc_cal.1.shrunk, %if.end53.skip_tx_iqcal_crit_edge ], [ %run_agc_cal.1.shrunk, %if.end67.skip_tx_iqcal_crit_edge ], [ %run_agc_cal.1.shrunk, %lor.lhs.false61.skip_tx_iqcal_crit_edge ], [ true, %if.else96 ], [ true, %if.then86 ]
  %btcoex_enabled.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 27
  %54 = ptrtoint ptr %btcoex_enabled.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %btcoex_enabled.i, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i = icmp eq i8 %55, 0
  br i1 %tobool.not.i, label %skip_tx_iqcal.if.end119_crit_edge, label %ath9k_hw_mci_is_enabled.exit

skip_tx_iqcal.if.end119_crit_edge:                ; preds = %skip_tx_iqcal
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end119

ath9k_hw_mci_is_enabled.exit:                     ; preds = %skip_tx_iqcal
  %56 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %caps, align 4
  %and.i = and i32 %57, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool1.i.not, label %ath9k_hw_mci_is_enabled.exit.if.end119_crit_edge, label %land.lhs.true110

ath9k_hw_mci_is_enabled.exit.if.end119_crit_edge: ; preds = %ath9k_hw_mci_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end119

land.lhs.true110:                                 ; preds = %ath9k_hw_mci_is_enabled.exit
  %58 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %channelFlags, align 2
  %60 = and i16 %59, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool114.not = icmp eq i16 %60, 0
  %61 = and i1 %run_agc_cal.2.shrunk, %tobool114.not
  br i1 %61, label %if.then118, label %land.lhs.true110.if.end119_crit_edge

land.lhs.true110.if.end119_crit_edge:             ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end119

if.then118:                                       ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #7
  call void @ar9003_mci_init_cal_req(ptr noundef %ah, ptr noundef nonnull %is_reusable) #5
  br label %if.end119

if.end119:                                        ; preds = %if.then118, %land.lhs.true110.if.end119_crit_edge, %ath9k_hw_mci_is_enabled.exit.if.end119_crit_edge, %skip_tx_iqcal.if.end119_crit_edge
  %62 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ah, align 4
  %call122 = call i32 %63(ptr noundef %ah, i32 noundef 41688) #5
  %and123 = and i32 %call122, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %if.end119.if.end135_crit_edge, label %if.then125

if.end119.if.end135_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end135

if.then125:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ah, align 4
  %call128 = call i32 %65(ptr noundef %ah, i32 noundef 41556) #5
  %write130 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %66 = ptrtoint ptr %write130 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write130, align 4
  call void %67(ptr noundef %ah, i32 noundef 0, i32 noundef 41484) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %68(i32 noundef 1073740) #5
  %69 = ptrtoint ptr %write130 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write130, align 4
  call void %70(ptr noundef %ah, i32 noundef 16383, i32 noundef 41556) #5
  %71 = ptrtoint ptr %write130 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write130, align 4
  call void %72(ptr noundef %ah, i32 noundef 1, i32 noundef 41484) #5
  br label %if.end135

if.end135:                                        ; preds = %if.then125, %if.end119.if.end135_crit_edge
  %rx_delay.0 = phi i32 [ %call128, %if.then125 ], [ 0, %if.end119.if.end135_crit_edge ]
  br i1 %run_agc_cal.2.shrunk, label %if.end135.if.then142_crit_edge, label %lor.lhs.false138

if.end135.if.then142_crit_edge:                   ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then142

lor.lhs.false138:                                 ; preds = %if.end135
  %ah_flags139 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 24
  %73 = ptrtoint ptr %ah_flags139 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ah_flags139, align 4
  %and140 = and i32 %74, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %lor.lhs.false138.if.then142_crit_edge, label %lor.lhs.false138.if.end166_crit_edge

lor.lhs.false138.if.end166_crit_edge:             ; preds = %lor.lhs.false138
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end166

lor.lhs.false138.if.then142_crit_edge:            ; preds = %lor.lhs.false138
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then142

if.then142:                                       ; preds = %lor.lhs.false138.if.then142_crit_edge, %if.end135.if.then142_crit_edge
  %write144 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %75 = ptrtoint ptr %write144 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write144, align 4
  %77 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ah, align 4
  %macVersion148 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %79 = ptrtoint ptr %macVersion148 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %macVersion148, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %80)
  %cmp149 = icmp ugt i32 %80, 447
  %cond151 = select i1 %cmp149, i32 41668, i32 39008
  %call152 = call i32 %78(ptr noundef %ah, i32 noundef %cond151) #5
  %or = or i32 %call152, 1
  %81 = ptrtoint ptr %macVersion148 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %macVersion148, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %82)
  %cmp155 = icmp ugt i32 %82, 447
  %cond157 = select i1 %cmp155, i32 41668, i32 39008
  call void %76(ptr noundef %ah, i32 noundef %or, i32 noundef %cond157) #5
  %83 = ptrtoint ptr %macVersion148 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %macVersion148, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %84)
  %cmp160 = icmp ugt i32 %84, 447
  %cond162 = select i1 %cmp160, i32 41668, i32 39008
  %call163 = call zeroext i1 @ath9k_hw_wait(ptr noundef %ah, i32 noundef %cond162, i32 noundef 1, i32 noundef 0, i32 noundef 100000) #5
  %85 = ptrtoint ptr %caldata1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %caldata1, align 4
  %87 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %caps, align 4
  %and.i379 = and i32 %88, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i379)
  %tobool.not.i380 = icmp eq i32 %and.i379, 0
  %brmerge.i = or i1 %run_rtt_cal.1.off0403407, %tobool.not.i380
  br i1 %brmerge.i, label %for.cond.preheader.i, label %if.then142.if.end166_crit_edge

if.then142.if.end166_crit_edge:                   ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end166

for.cond.preheader.i:                             ; preds = %if.then142
  %rxchainmask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 75
  %89 = ptrtoint ptr %rxchainmask.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %rxchainmask.i, align 1
  %91 = and i8 %90, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool4.not.i = icmp eq i8 %91, 0
  br i1 %tobool4.not.i, label %for.cond.preheader.i.for.inc.i_crit_edge, label %if.end6.i

for.cond.preheader.i.for.inc.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end6.i:                                        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  %92 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %channelFlags, align 2
  %94 = and i16 %93, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %tobool10.not.i = icmp eq i16 %94, 0
  call fastcc void @ar9003_hw_manual_peak_cal(ptr noundef %ah, i8 noundef zeroext 0, i1 noundef zeroext %tobool10.not.i) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end6.i, %for.cond.preheader.i.for.inc.i_crit_edge
  %95 = ptrtoint ptr %rxchainmask.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %rxchainmask.i, align 1
  %97 = and i8 %96, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool4.not.1.i = icmp eq i8 %97, 0
  br i1 %tobool4.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end6.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

if.end6.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %98 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %channelFlags, align 2
  %100 = and i16 %99, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool10.not.1.i = icmp eq i16 %100, 0
  call fastcc void @ar9003_hw_manual_peak_cal(ptr noundef %ah, i8 noundef zeroext 1, i1 noundef zeroext %tobool10.not.1.i) #5
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end6.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %101 = ptrtoint ptr %rxchainmask.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %rxchainmask.i, align 1
  %103 = and i8 %102, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool4.not.2.i = icmp eq i8 %103, 0
  br i1 %tobool4.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end6.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i

if.end6.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %104 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %channelFlags, align 2
  %106 = and i16 %105, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %106)
  %tobool10.not.2.i = icmp eq i16 %106, 0
  call fastcc void @ar9003_hw_manual_peak_cal(ptr noundef %ah, i8 noundef zeroext 2, i1 noundef zeroext %tobool10.not.2.i) #5
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end6.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %tobool13.not.i = icmp eq ptr %86, null
  br i1 %tobool13.not.i, label %for.inc.2.i.if.end166_crit_edge, label %if.end15.i

for.inc.2.i.if.end166_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end166

if.end15.i:                                       ; preds = %for.inc.2.i
  %cal_flags.i = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %86, i32 0, i32 2
  call void @_set_bit(i32 noundef 7, ptr noundef %cal_flags.i) #5
  %107 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %caps, align 4
  %and18.i = and i32 %108, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end15.i.if.end166_crit_edge, label %if.then22.i

if.end15.i.if.end166_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end166

if.then22.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  %109 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %channelFlags, align 2
  %111 = and i16 %110, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %tobool26.not.i = icmp eq i16 %111, 0
  %112 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ah, align 4
  %call.i = call i32 %113(ptr noundef %ah, i32 noundef 90124) #5
  %..i = select i1 %tobool26.not.i, i32 19, i32 9
  %and41.i = lshr i32 %call.i, %..i
  %114 = trunc i32 %and41.i to i8
  %conv43.i = and i8 %114, 63
  %caldac44.i = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %86, i32 0, i32 6
  %115 = ptrtoint ptr %caldac44.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv43.i, ptr %caldac44.i, align 2
  %116 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ah, align 4
  %call48.i = call i32 %117(ptr noundef %ah, i32 noundef 91148) #5
  %and49.i = lshr i32 %call48.i, %..i
  %118 = trunc i32 %and49.i to i8
  %conv51.i = and i8 %118, 63
  %arrayidx53.i = getelementptr %struct.ath9k_hw_cal_data, ptr %86, i32 0, i32 6, i32 1
  %119 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv51.i, ptr %arrayidx53.i, align 1
  br label %if.end166

if.end166:                                        ; preds = %if.then22.i, %if.end15.i.if.end166_crit_edge, %for.inc.2.i.if.end166_crit_edge, %if.then142.if.end166_crit_edge, %lor.lhs.false138.if.end166_crit_edge
  %status.0.off0 = phi i1 [ true, %lor.lhs.false138.if.end166_crit_edge ], [ %call163, %if.then142.if.end166_crit_edge ], [ %call163, %for.inc.2.i.if.end166_crit_edge ], [ %call163, %if.end15.i.if.end166_crit_edge ], [ %call163, %if.then22.i ]
  %120 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ah, align 4
  %call169 = call i32 %121(ptr noundef %ah, i32 noundef 41688) #5
  %and170 = and i32 %call169, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool171.not = icmp eq i32 %and170, 0
  br i1 %tobool171.not, label %if.end166.if.end175_crit_edge, label %if.then172

if.end166.if.end175_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end175

if.then172:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #7
  %write174 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %122 = ptrtoint ptr %write174 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %write174, align 4
  call void %123(ptr noundef %ah, i32 noundef %rx_delay.0, i32 noundef 41556) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %124(i32 noundef 1073740) #5
  br label %if.end175

if.end175:                                        ; preds = %if.then172, %if.end166.if.end175_crit_edge
  %125 = ptrtoint ptr %btcoex_enabled.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %btcoex_enabled.i, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool.not.i382 = icmp eq i8 %126, 0
  br i1 %tobool.not.i382, label %if.end175.if.end187_crit_edge, label %ath9k_hw_mci_is_enabled.exit387

if.end175.if.end187_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end187

ath9k_hw_mci_is_enabled.exit387:                  ; preds = %if.end175
  %127 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %caps, align 4
  %and.i384 = and i32 %128, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i384)
  %tobool1.i385.not = icmp eq i32 %and.i384, 0
  br i1 %tobool1.i385.not, label %ath9k_hw_mci_is_enabled.exit387.if.end187_crit_edge, label %land.lhs.true178

ath9k_hw_mci_is_enabled.exit387.if.end187_crit_edge: ; preds = %ath9k_hw_mci_is_enabled.exit387
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end187

land.lhs.true178:                                 ; preds = %ath9k_hw_mci_is_enabled.exit387
  %129 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %channelFlags, align 2
  %131 = and i16 %130, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %tobool182.not = icmp eq i16 %131, 0
  %132 = and i1 %run_agc_cal.2.shrunk, %tobool182.not
  br i1 %132, label %if.then186, label %land.lhs.true178.if.end187_crit_edge

land.lhs.true178.if.end187_crit_edge:             ; preds = %land.lhs.true178
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end187

if.then186:                                       ; preds = %land.lhs.true178
  call void @__sanitizer_cov_trace_pc() #7
  call void @ar9003_mci_init_cal_done(ptr noundef %ah) #5
  br label %if.end187

if.end187:                                        ; preds = %if.then186, %land.lhs.true178.if.end187_crit_edge, %ath9k_hw_mci_is_enabled.exit387.if.end187_crit_edge, %if.end175.if.end187_crit_edge
  %brmerge370 = or i1 %tobool.not, %run_rtt_cal.1.off0403407
  br i1 %brmerge370, label %if.end187.if.end201_crit_edge, label %if.then192

if.end187.if.end201_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end201

if.then192:                                       ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #7
  %or193 = or i32 %agc_supp_cals.0, %agc_ctrl.0
  %write195 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %133 = ptrtoint ptr %write195 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %write195, align 4
  %macVersion197 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %135 = ptrtoint ptr %macVersion197 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %macVersion197, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %136)
  %cmp198 = icmp ugt i32 %136, 447
  %cond200 = select i1 %cmp198, i32 41668, i32 39008
  call void %134(ptr noundef %ah, i32 noundef %or193, i32 noundef %cond200) #5
  br label %if.end201

if.end201:                                        ; preds = %if.then192, %if.end187.if.end201_crit_edge
  br i1 %status.0.off0, label %if.end215, label %if.then203

if.then203:                                       ; preds = %if.end201
  br i1 %run_rtt_cal.1.off0403407, label %if.then205, label %if.then203.do.body207_crit_edge

if.then203.do.body207_crit_edge:                  ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body207

if.then205:                                       ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #7
  call void @ar9003_hw_rtt_disable(ptr noundef %ah) #5
  br label %do.body207

do.body207:                                       ; preds = %if.then205, %if.then203.do.body207_crit_edge
  %debug_mask208 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %137 = ptrtoint ptr %debug_mask208 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %debug_mask208, align 4
  %and209 = and i32 %138, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209)
  %tobool210.not = icmp eq i32 %and209, 0
  br i1 %tobool210.not, label %do.body207.cleanup_crit_edge, label %if.then211

do.body207.cleanup_crit_edge:                     ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then211:                                       ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.2, i32 noundef 100) #5
  br label %cleanup

if.end215:                                        ; preds = %if.end201
  br i1 %txiqcal_done.0.off0, label %if.then217, label %if.else219

if.then217:                                       ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #7
  %139 = ptrtoint ptr %is_reusable to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %is_reusable, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool218 = icmp ne i8 %140, 0
  call fastcc void @ar9003_hw_tx_iq_cal_post_proc(ptr noundef %ah, i32 noundef 0, i1 noundef zeroext %tobool218)
  br label %if.end227

if.else219:                                       ; preds = %if.end215
  %tobool220.not = icmp eq ptr %1, null
  br i1 %tobool220.not, label %if.else219.if.end227_crit_edge, label %land.lhs.true221

if.else219.if.end227_crit_edge:                   ; preds = %if.else219
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end227

land.lhs.true221:                                 ; preds = %if.else219
  %cal_flags222 = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %1, i32 0, i32 2
  %141 = ptrtoint ptr %cal_flags222 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %cal_flags222, align 4
  %143 = and i32 %142, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool224.not = icmp eq i32 %143, 0
  br i1 %tobool224.not, label %land.lhs.true221.if.end227_crit_edge, label %if.then225

land.lhs.true221.if.end227_crit_edge:             ; preds = %land.lhs.true221
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end227

if.then225:                                       ; preds = %land.lhs.true221
  %144 = ptrtoint ptr %caldata1 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %caldata1, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tx_corr_coeff.i) #5
  %146 = getelementptr inbounds i8, ptr %tx_corr_coeff.i, i32 4
  %147 = call ptr @memset(ptr %146, i32 0, i32 92)
  %macVersion.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %148 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %149)
  %cmp2.i = icmp eq i32 %149, 576
  %add.i = select i1 %cmp2.i, i32 42448, i32 42576
  %arrayidx.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 1
  %150 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %add.i, ptr %arrayidx.i, align 4
  %151 = ptrtoint ptr %tx_corr_coeff.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %add.i, ptr %tx_corr_coeff.i, align 4
  br i1 %cmp2.i, label %for.inc.2.thread.i, label %if.then.3.i

for.inc.2.thread.i:                               ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #7
  %add3.1118.i = or i32 %add.i, 4
  %arrayidx.1119.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 3
  %152 = ptrtoint ptr %arrayidx.1119.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %add3.1118.i, ptr %arrayidx.1119.i, align 4
  br label %for.inc.3.i

if.then.3.i:                                      ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx17.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 1, i32 1
  %153 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 46672, ptr %arrayidx17.i, align 4
  %154 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 46672, ptr %146, align 4
  %arrayidx26.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 1, i32 2
  %155 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 50768, ptr %arrayidx26.i, align 4
  %arrayidx29.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 0, i32 2
  %156 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 50768, ptr %arrayidx29.i, align 4
  %add3.1.i = or i32 %add.i, 4
  %arrayidx.1.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 3
  %157 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %add3.1.i, ptr %arrayidx.1.i, align 4
  %arrayidx17.1.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 3, i32 1
  %158 = ptrtoint ptr %arrayidx17.1.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 46676, ptr %arrayidx17.1.i, align 4
  %arrayidx20.1.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 2, i32 1
  %159 = ptrtoint ptr %arrayidx20.1.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 46676, ptr %arrayidx20.1.i, align 4
  %arrayidx26.1.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 3, i32 2
  %160 = ptrtoint ptr %arrayidx26.1.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 50772, ptr %arrayidx26.1.i, align 4
  %arrayidx29.1.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 2, i32 2
  %161 = ptrtoint ptr %arrayidx29.1.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 50772, ptr %arrayidx29.1.i, align 4
  %arrayidx17.2.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 5, i32 1
  %162 = ptrtoint ptr %arrayidx17.2.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 46680, ptr %arrayidx17.2.i, align 4
  %arrayidx20.2.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 4, i32 1
  %163 = ptrtoint ptr %arrayidx20.2.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 46680, ptr %arrayidx20.2.i, align 4
  %arrayidx26.2.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 5, i32 2
  %164 = ptrtoint ptr %arrayidx26.2.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 50776, ptr %arrayidx26.2.i, align 4
  %arrayidx29.2.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 4, i32 2
  %165 = ptrtoint ptr %arrayidx29.2.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 50776, ptr %arrayidx29.2.i, align 4
  %arrayidx17.3.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 7, i32 1
  %166 = ptrtoint ptr %arrayidx17.3.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 46684, ptr %arrayidx17.3.i, align 4
  %arrayidx20.3.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 6, i32 1
  %167 = ptrtoint ptr %arrayidx20.3.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 46684, ptr %arrayidx20.3.i, align 4
  %arrayidx26.3.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 7, i32 2
  %168 = ptrtoint ptr %arrayidx26.3.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 50780, ptr %arrayidx26.3.i, align 4
  %arrayidx29.3.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 6, i32 2
  %169 = ptrtoint ptr %arrayidx29.3.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 50780, ptr %arrayidx29.3.i, align 4
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then.3.i, %for.inc.2.thread.i
  %add3.1.i.sink = phi i32 [ %add3.1118.i, %for.inc.2.thread.i ], [ %add3.1.i, %if.then.3.i ]
  %add3.3.i.sink410 = or i32 %add.i, 12
  %add3.2.i.sink411 = or i32 %add.i, 8
  %170 = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 2
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %add3.1.i.sink, ptr %170, align 4
  %172 = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 5
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %add3.2.i.sink411, ptr %172, align 4
  %174 = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 4
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %add3.2.i.sink411, ptr %174, align 4
  %176 = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 7
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %add3.3.i.sink410, ptr %176, align 4
  %178 = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 6
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %add3.3.i.sink410, ptr %178, align 4
  %txchainmask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 74
  %rmw52.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %180 = ptrtoint ptr %txchainmask.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %txchainmask.i, align 4
  %182 = and i8 %181, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool.not.i389 = icmp eq i8 %182, 0
  br i1 %tobool.not.i389, label %for.inc.3.i.for.inc65.i_crit_edge, label %for.cond36.preheader.i

for.inc.3.i.for.inc65.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc65.i

for.cond36.preheader.i:                           ; preds = %for.inc.3.i
  %arrayidx37.i = getelementptr %struct.ath9k_hw_cal_data, ptr %145, i32 0, i32 9, i32 0
  %183 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx37.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %cmp38112.not.i = icmp eq i32 %184, 0
  br i1 %cmp38112.not.i, label %for.cond36.preheader.i.for.inc65.i_crit_edge, label %for.cond36.preheader.i.for.body40.i_crit_edge

for.cond36.preheader.i.for.body40.i_crit_edge:    ; preds = %for.cond36.preheader.i
  br label %for.body40.i

for.cond36.preheader.i.for.inc65.i_crit_edge:     ; preds = %for.cond36.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc65.i

for.body40.i:                                     ; preds = %for.inc62.i.for.body40.i_crit_edge, %for.cond36.preheader.i.for.body40.i_crit_edge
  %im.0113.i = phi i32 [ %inc63.i, %for.inc62.i.for.body40.i_crit_edge ], [ 0, %for.cond36.preheader.i.for.body40.i_crit_edge ]
  %185 = and i32 %im.0113.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %cmp41.i = icmp eq i32 %185, 0
  %186 = ptrtoint ptr %rmw52.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %rmw52.i, align 4
  %arrayidx45.i = getelementptr [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 %im.0113.i, i32 0
  %188 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx45.i, align 4
  %arrayidx48.i = getelementptr %struct.ath9k_hw_cal_data, ptr %145, i32 0, i32 10, i32 %im.0113.i, i32 0
  %190 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx48.i, align 4
  br i1 %cmp41.i, label %if.then43.i, label %if.else.i

if.then43.i:                                      ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #7
  %and50.i = and i32 %191, 16383
  %call.i390 = call i32 %187(ptr noundef %ah, i32 noundef %189, i32 noundef %and50.i, i32 noundef 16383) #5
  br label %for.inc62.i

if.else.i:                                        ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #7
  %shl58.i = shl i32 %191, 14
  %and59.i = and i32 %shl58.i, 268419072
  %call60.i = call i32 %187(ptr noundef %ah, i32 noundef %189, i32 noundef %and59.i, i32 noundef 268419072) #5
  br label %for.inc62.i

for.inc62.i:                                      ; preds = %if.else.i, %if.then43.i
  %inc63.i = add nuw i32 %im.0113.i, 1
  %192 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx37.i, align 4
  %cmp38.i = icmp ult i32 %inc63.i, %193
  br i1 %cmp38.i, label %for.inc62.i.for.body40.i_crit_edge, label %for.inc62.i.for.inc65.i_crit_edge

for.inc62.i.for.inc65.i_crit_edge:                ; preds = %for.inc62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc65.i

for.inc62.i.for.body40.i_crit_edge:               ; preds = %for.inc62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body40.i

for.inc65.i:                                      ; preds = %for.inc62.i.for.inc65.i_crit_edge, %for.cond36.preheader.i.for.inc65.i_crit_edge, %for.inc.3.i.for.inc65.i_crit_edge
  %194 = ptrtoint ptr %txchainmask.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %txchainmask.i, align 4
  %196 = and i8 %195, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool.not.1.i = icmp eq i8 %196, 0
  br i1 %tobool.not.1.i, label %for.inc65.i.for.inc65.1.i_crit_edge, label %for.cond36.preheader.1.i

for.inc65.i.for.inc65.1.i_crit_edge:              ; preds = %for.inc65.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc65.1.i

for.cond36.preheader.1.i:                         ; preds = %for.inc65.i
  %arrayidx37.1.i = getelementptr %struct.ath9k_hw_cal_data, ptr %145, i32 0, i32 9, i32 1
  %197 = ptrtoint ptr %arrayidx37.1.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx37.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %cmp38112.not.1.i = icmp eq i32 %198, 0
  br i1 %cmp38112.not.1.i, label %for.cond36.preheader.1.i.for.inc65.1.i_crit_edge, label %for.cond36.preheader.1.i.for.body40.1.i_crit_edge

for.cond36.preheader.1.i.for.body40.1.i_crit_edge: ; preds = %for.cond36.preheader.1.i
  br label %for.body40.1.i

for.cond36.preheader.1.i.for.inc65.1.i_crit_edge: ; preds = %for.cond36.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc65.1.i

for.body40.1.i:                                   ; preds = %for.inc62.1.i.for.body40.1.i_crit_edge, %for.cond36.preheader.1.i.for.body40.1.i_crit_edge
  %im.0113.1.i = phi i32 [ %inc63.1.i, %for.inc62.1.i.for.body40.1.i_crit_edge ], [ 0, %for.cond36.preheader.1.i.for.body40.1.i_crit_edge ]
  %199 = and i32 %im.0113.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %cmp41.1.i = icmp eq i32 %199, 0
  %200 = ptrtoint ptr %rmw52.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %rmw52.i, align 4
  %arrayidx45.1.i = getelementptr [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 %im.0113.1.i, i32 1
  %202 = ptrtoint ptr %arrayidx45.1.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %arrayidx45.1.i, align 4
  %arrayidx48.1.i = getelementptr %struct.ath9k_hw_cal_data, ptr %145, i32 0, i32 10, i32 %im.0113.1.i, i32 1
  %204 = ptrtoint ptr %arrayidx48.1.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx48.1.i, align 4
  br i1 %cmp41.1.i, label %if.then43.1.i, label %if.else.1.i

if.else.1.i:                                      ; preds = %for.body40.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %shl58.1.i = shl i32 %205, 14
  %and59.1.i = and i32 %shl58.1.i, 268419072
  %call60.1.i = call i32 %201(ptr noundef %ah, i32 noundef %203, i32 noundef %and59.1.i, i32 noundef 268419072) #5
  br label %for.inc62.1.i

if.then43.1.i:                                    ; preds = %for.body40.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %and50.1.i = and i32 %205, 16383
  %call.1.i = call i32 %201(ptr noundef %ah, i32 noundef %203, i32 noundef %and50.1.i, i32 noundef 16383) #5
  br label %for.inc62.1.i

for.inc62.1.i:                                    ; preds = %if.then43.1.i, %if.else.1.i
  %inc63.1.i = add nuw i32 %im.0113.1.i, 1
  %206 = ptrtoint ptr %arrayidx37.1.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx37.1.i, align 4
  %cmp38.1.i = icmp ult i32 %inc63.1.i, %207
  br i1 %cmp38.1.i, label %for.inc62.1.i.for.body40.1.i_crit_edge, label %for.inc62.1.i.for.inc65.1.i_crit_edge

for.inc62.1.i.for.inc65.1.i_crit_edge:            ; preds = %for.inc62.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc65.1.i

for.inc62.1.i.for.body40.1.i_crit_edge:           ; preds = %for.inc62.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body40.1.i

for.inc65.1.i:                                    ; preds = %for.inc62.1.i.for.inc65.1.i_crit_edge, %for.cond36.preheader.1.i.for.inc65.1.i_crit_edge, %for.inc65.i.for.inc65.1.i_crit_edge
  %208 = ptrtoint ptr %txchainmask.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %txchainmask.i, align 4
  %210 = and i8 %209, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %210)
  %tobool.not.2.i = icmp eq i8 %210, 0
  br i1 %tobool.not.2.i, label %for.inc65.1.i.ar9003_hw_tx_iq_cal_reload.exit_crit_edge, label %for.cond36.preheader.2.i

for.inc65.1.i.ar9003_hw_tx_iq_cal_reload.exit_crit_edge: ; preds = %for.inc65.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ar9003_hw_tx_iq_cal_reload.exit

for.cond36.preheader.2.i:                         ; preds = %for.inc65.1.i
  %arrayidx37.2.i = getelementptr %struct.ath9k_hw_cal_data, ptr %145, i32 0, i32 9, i32 2
  %211 = ptrtoint ptr %arrayidx37.2.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %arrayidx37.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %cmp38112.not.2.i = icmp eq i32 %212, 0
  br i1 %cmp38112.not.2.i, label %for.cond36.preheader.2.i.ar9003_hw_tx_iq_cal_reload.exit_crit_edge, label %for.cond36.preheader.2.i.for.body40.2.i_crit_edge

for.cond36.preheader.2.i.for.body40.2.i_crit_edge: ; preds = %for.cond36.preheader.2.i
  br label %for.body40.2.i

for.cond36.preheader.2.i.ar9003_hw_tx_iq_cal_reload.exit_crit_edge: ; preds = %for.cond36.preheader.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ar9003_hw_tx_iq_cal_reload.exit

for.body40.2.i:                                   ; preds = %for.inc62.2.i.for.body40.2.i_crit_edge, %for.cond36.preheader.2.i.for.body40.2.i_crit_edge
  %im.0113.2.i = phi i32 [ %inc63.2.i, %for.inc62.2.i.for.body40.2.i_crit_edge ], [ 0, %for.cond36.preheader.2.i.for.body40.2.i_crit_edge ]
  %213 = and i32 %im.0113.2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %cmp41.2.i = icmp eq i32 %213, 0
  %214 = ptrtoint ptr %rmw52.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %rmw52.i, align 4
  %arrayidx45.2.i = getelementptr [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 %im.0113.2.i, i32 2
  %216 = ptrtoint ptr %arrayidx45.2.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx45.2.i, align 4
  %arrayidx48.2.i = getelementptr %struct.ath9k_hw_cal_data, ptr %145, i32 0, i32 10, i32 %im.0113.2.i, i32 2
  %218 = ptrtoint ptr %arrayidx48.2.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx48.2.i, align 4
  br i1 %cmp41.2.i, label %if.then43.2.i, label %if.else.2.i

if.else.2.i:                                      ; preds = %for.body40.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %shl58.2.i = shl i32 %219, 14
  %and59.2.i = and i32 %shl58.2.i, 268419072
  %call60.2.i = call i32 %215(ptr noundef %ah, i32 noundef %217, i32 noundef %and59.2.i, i32 noundef 268419072) #5
  br label %for.inc62.2.i

if.then43.2.i:                                    ; preds = %for.body40.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %and50.2.i = and i32 %219, 16383
  %call.2.i = call i32 %215(ptr noundef %ah, i32 noundef %217, i32 noundef %and50.2.i, i32 noundef 16383) #5
  br label %for.inc62.2.i

for.inc62.2.i:                                    ; preds = %if.then43.2.i, %if.else.2.i
  %inc63.2.i = add nuw i32 %im.0113.2.i, 1
  %220 = ptrtoint ptr %arrayidx37.2.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx37.2.i, align 4
  %cmp38.2.i = icmp ult i32 %inc63.2.i, %221
  br i1 %cmp38.2.i, label %for.inc62.2.i.for.body40.2.i_crit_edge, label %for.inc62.2.i.ar9003_hw_tx_iq_cal_reload.exit_crit_edge

for.inc62.2.i.ar9003_hw_tx_iq_cal_reload.exit_crit_edge: ; preds = %for.inc62.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ar9003_hw_tx_iq_cal_reload.exit

for.inc62.2.i.for.body40.2.i_crit_edge:           ; preds = %for.inc62.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body40.2.i

ar9003_hw_tx_iq_cal_reload.exit:                  ; preds = %for.inc62.2.i.ar9003_hw_tx_iq_cal_reload.exit_crit_edge, %for.cond36.preheader.2.i.ar9003_hw_tx_iq_cal_reload.exit_crit_edge, %for.inc65.1.i.ar9003_hw_tx_iq_cal_reload.exit_crit_edge
  %222 = ptrtoint ptr %rmw52.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %rmw52.i, align 4
  %call70.i = call i32 %223(ptr noundef %ah, i32 noundef 39088, i32 noundef -2147483648, i32 noundef -2147483648) #5
  %224 = ptrtoint ptr %rmw52.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %rmw52.i, align 4
  %call73.i = call i32 %225(ptr noundef %ah, i32 noundef 39132, i32 noundef 536870912, i32 noundef 536870912) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tx_corr_coeff.i) #5
  br label %if.end227

if.end227:                                        ; preds = %ar9003_hw_tx_iq_cal_reload.exit, %land.lhs.true221.if.end227_crit_edge, %if.else219.if.end227_crit_edge, %if.then217
  %226 = ptrtoint ptr %is_reusable to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %is_reusable, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %227)
  %tobool228.not = icmp eq i8 %227, 0
  %228 = ptrtoint ptr %caldata1 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %caldata1, align 4
  %tobool.not.i392 = icmp eq ptr %229, null
  br i1 %tobool.not.i392, label %if.end227.ar9003_hw_cl_cal_post_proc.exit_crit_edge, label %lor.lhs.false.i

if.end227.ar9003_hw_cl_cal_post_proc.exit_crit_edge: ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #7
  br label %ar9003_hw_cl_cal_post_proc.exit

lor.lhs.false.i:                                  ; preds = %if.end227
  %230 = ptrtoint ptr %enabled_cals to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %enabled_cals, align 2
  %232 = and i8 %231, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %232)
  %tobool2.not.i = icmp eq i8 %232, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.ar9003_hw_cl_cal_post_proc.exit_crit_edge, label %if.end.i

lor.lhs.false.i.ar9003_hw_cl_cal_post_proc.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ar9003_hw_cl_cal_post_proc.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %233 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %ah, align 4
  %macVersion.i393 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %235 = ptrtoint ptr %macVersion.i393 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %macVersion.i393, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %236)
  %cmp.i = icmp ugt i32 %236, 447
  %cond.i = select i1 %cmp.i, i32 41668, i32 39008
  %call.i394 = call i32 %234(ptr noundef %ah, i32 noundef %cond.i) #5
  %cal_flags.i395 = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 2
  %237 = ptrtoint ptr %cal_flags.i395 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load volatile i32, ptr %cal_flags.i395, align 4
  %239 = and i32 %238, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool9.not.i = icmp eq i32 %239, 0
  br i1 %tobool9.not.i, label %if.else.i399, label %for.cond.preheader.i397

for.cond.preheader.i397:                          ; preds = %if.end.i
  %txchainmask.i396 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 74
  %write.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc25.i.for.body.i_crit_edge, %for.cond.preheader.i397
  %i.0101.i = phi i32 [ 0, %for.cond.preheader.i397 ], [ %inc26.i, %for.inc25.i.for.body.i_crit_edge ]
  %240 = ptrtoint ptr %txchainmask.i396 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %txchainmask.i396, align 4
  %conv13.i = zext i8 %241 to i32
  %shl.i = shl nuw nsw i32 1, %i.0101.i
  %and14.i = and i32 %shl.i, %conv13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %for.body.i.for.inc25.i_crit_edge, label %for.cond18.preheader.i

for.body.i.for.inc25.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc25.i

for.cond18.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx24.i = getelementptr [3 x i32], ptr @__const.ar9003_hw_cl_cal_post_proc.cl_idx, i32 0, i32 %i.0101.i
  %242 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %arrayidx24.i, align 4
  %244 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %write.i, align 4
  %arrayidx23.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.0101.i, i32 0
  %246 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %arrayidx23.i, align 4
  call void %245(ptr noundef %ah, i32 noundef %247, i32 noundef %243) #5
  %248 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %write.i, align 4
  %arrayidx23.1.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.0101.i, i32 1
  %250 = ptrtoint ptr %arrayidx23.1.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %arrayidx23.1.i, align 4
  %add.1.i = add i32 %243, 4
  call void %249(ptr noundef %ah, i32 noundef %251, i32 noundef %add.1.i) #5
  %252 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %write.i, align 4
  %arrayidx23.2.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.0101.i, i32 2
  %254 = ptrtoint ptr %arrayidx23.2.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %arrayidx23.2.i, align 4
  %add.2.i = add i32 %243, 8
  call void %253(ptr noundef %ah, i32 noundef %255, i32 noundef %add.2.i) #5
  %256 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %write.i, align 4
  %arrayidx23.3.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.0101.i, i32 3
  %258 = ptrtoint ptr %arrayidx23.3.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %arrayidx23.3.i, align 4
  %add.3.i = add i32 %243, 12
  call void %257(ptr noundef %ah, i32 noundef %259, i32 noundef %add.3.i) #5
  %260 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %write.i, align 4
  %arrayidx23.4.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.0101.i, i32 4
  %262 = ptrtoint ptr %arrayidx23.4.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %arrayidx23.4.i, align 4
  %add.4.i = add i32 %243, 16
  call void %261(ptr noundef %ah, i32 noundef %263, i32 noundef %add.4.i) #5
  %264 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %write.i, align 4
  %arrayidx23.5.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.0101.i, i32 5
  %266 = ptrtoint ptr %arrayidx23.5.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %arrayidx23.5.i, align 4
  %add.5.i = add i32 %243, 20
  call void %265(ptr noundef %ah, i32 noundef %267, i32 noundef %add.5.i) #5
  %268 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %write.i, align 4
  %arrayidx23.6.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.0101.i, i32 6
  %270 = ptrtoint ptr %arrayidx23.6.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %arrayidx23.6.i, align 4
  %add.6.i = add i32 %243, 24
  call void %269(ptr noundef %ah, i32 noundef %271, i32 noundef %add.6.i) #5
  %272 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %write.i, align 4
  %arrayidx23.7.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.0101.i, i32 7
  %274 = ptrtoint ptr %arrayidx23.7.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %arrayidx23.7.i, align 4
  %add.7.i = add i32 %243, 28
  call void %273(ptr noundef %ah, i32 noundef %275, i32 noundef %add.7.i) #5
  %276 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %write.i, align 4
  %arrayidx23.8.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.0101.i, i32 8
  %278 = ptrtoint ptr %arrayidx23.8.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %arrayidx23.8.i, align 4
  %add.8.i = add i32 %243, 32
  call void %277(ptr noundef %ah, i32 noundef %279, i32 noundef %add.8.i) #5
  %280 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %write.i, align 4
  %arrayidx23.9.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.0101.i, i32 9
  %282 = ptrtoint ptr %arrayidx23.9.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %arrayidx23.9.i, align 4
  %add.9.i = add i32 %243, 36
  call void %281(ptr noundef %ah, i32 noundef %283, i32 noundef %add.9.i) #5
  %284 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %write.i, align 4
  %arrayidx23.10.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.0101.i, i32 10
  %286 = ptrtoint ptr %arrayidx23.10.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %arrayidx23.10.i, align 4
  %add.10.i = add i32 %243, 40
  call void %285(ptr noundef %ah, i32 noundef %287, i32 noundef %add.10.i) #5
  %288 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %write.i, align 4
  %arrayidx23.11.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.0101.i, i32 11
  %290 = ptrtoint ptr %arrayidx23.11.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %arrayidx23.11.i, align 4
  %add.11.i = add i32 %243, 44
  call void %289(ptr noundef %ah, i32 noundef %291, i32 noundef %add.11.i) #5
  %292 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %write.i, align 4
  %arrayidx23.12.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.0101.i, i32 12
  %294 = ptrtoint ptr %arrayidx23.12.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %arrayidx23.12.i, align 4
  %add.12.i = add i32 %243, 48
  call void %293(ptr noundef %ah, i32 noundef %295, i32 noundef %add.12.i) #5
  %296 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %write.i, align 4
  %arrayidx23.13.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.0101.i, i32 13
  %298 = ptrtoint ptr %arrayidx23.13.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %arrayidx23.13.i, align 4
  %add.13.i = add i32 %243, 52
  call void %297(ptr noundef %ah, i32 noundef %299, i32 noundef %add.13.i) #5
  %300 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %write.i, align 4
  %arrayidx23.14.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.0101.i, i32 14
  %302 = ptrtoint ptr %arrayidx23.14.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %arrayidx23.14.i, align 4
  %add.14.i = add i32 %243, 56
  call void %301(ptr noundef %ah, i32 noundef %303, i32 noundef %add.14.i) #5
  %304 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %write.i, align 4
  %arrayidx23.15.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.0101.i, i32 15
  %306 = ptrtoint ptr %arrayidx23.15.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %arrayidx23.15.i, align 4
  %add.15.i = add i32 %243, 60
  call void %305(ptr noundef %ah, i32 noundef %307, i32 noundef %add.15.i) #5
  br label %for.inc25.i

for.inc25.i:                                      ; preds = %for.cond18.preheader.i, %for.body.i.for.inc25.i_crit_edge
  %inc26.i = add nuw nsw i32 %i.0101.i, 1
  %exitcond.not.i = icmp eq i32 %inc26.i, 3
  br i1 %exitcond.not.i, label %for.inc25.i.ar9003_hw_cl_cal_post_proc.exit_crit_edge, label %for.inc25.i.for.body.i_crit_edge

for.inc25.i.for.body.i_crit_edge:                 ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc25.i.ar9003_hw_cl_cal_post_proc.exit_crit_edge: ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ar9003_hw_cl_cal_post_proc.exit

if.else.i399:                                     ; preds = %if.end.i
  %and4.i = and i32 %call.i394, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %brmerge.i398 = select i1 %tobool228.not, i1 true, i1 %tobool5.not.i
  br i1 %brmerge.i398, label %if.else.i399.ar9003_hw_cl_cal_post_proc.exit_crit_edge, label %for.cond33.preheader.i

if.else.i399.ar9003_hw_cl_cal_post_proc.exit_crit_edge: ; preds = %if.else.i399
  call void @__sanitizer_cov_trace_pc() #7
  br label %ar9003_hw_cl_cal_post_proc.exit

for.cond33.preheader.i:                           ; preds = %if.else.i399
  %txchainmask37.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 74
  br label %for.body36.i

for.body36.i:                                     ; preds = %for.inc60.i.for.body36.i_crit_edge, %for.cond33.preheader.i
  %i.1104.i = phi i32 [ 0, %for.cond33.preheader.i ], [ %inc61.i, %for.inc60.i.for.body36.i_crit_edge ]
  %308 = ptrtoint ptr %txchainmask37.i to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %txchainmask37.i, align 4
  %conv38.i = zext i8 %309 to i32
  %shl39.i = shl nuw nsw i32 1, %i.1104.i
  %and40.i = and i32 %shl39.i, %conv38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %for.body36.i.for.inc60.i_crit_edge, label %for.cond44.preheader.i

for.body36.i.for.inc60.i_crit_edge:               ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc60.i

for.cond44.preheader.i:                           ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx50.i = getelementptr [3 x i32], ptr @__const.ar9003_hw_cl_cal_post_proc.cl_idx, i32 0, i32 %i.1104.i
  %310 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %arrayidx50.i, align 4
  %312 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %ah, align 4
  %call53.i = call i32 %313(ptr noundef %ah, i32 noundef %311) #5
  %arrayidx56.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.1104.i, i32 0
  %314 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 %call53.i, ptr %arrayidx56.i, align 4
  %315 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %ah, align 4
  %add52.1.i = add i32 %311, 4
  %call53.1.i = call i32 %316(ptr noundef %ah, i32 noundef %add52.1.i) #5
  %arrayidx56.1.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.1104.i, i32 1
  %317 = ptrtoint ptr %arrayidx56.1.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %call53.1.i, ptr %arrayidx56.1.i, align 4
  %318 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %ah, align 4
  %add52.2.i = add i32 %311, 8
  %call53.2.i = call i32 %319(ptr noundef %ah, i32 noundef %add52.2.i) #5
  %arrayidx56.2.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.1104.i, i32 2
  %320 = ptrtoint ptr %arrayidx56.2.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 %call53.2.i, ptr %arrayidx56.2.i, align 4
  %321 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %ah, align 4
  %add52.3.i = add i32 %311, 12
  %call53.3.i = call i32 %322(ptr noundef %ah, i32 noundef %add52.3.i) #5
  %arrayidx56.3.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.1104.i, i32 3
  %323 = ptrtoint ptr %arrayidx56.3.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 %call53.3.i, ptr %arrayidx56.3.i, align 4
  %324 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %ah, align 4
  %add52.4.i = add i32 %311, 16
  %call53.4.i = call i32 %325(ptr noundef %ah, i32 noundef %add52.4.i) #5
  %arrayidx56.4.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.1104.i, i32 4
  %326 = ptrtoint ptr %arrayidx56.4.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 %call53.4.i, ptr %arrayidx56.4.i, align 4
  %327 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %ah, align 4
  %add52.5.i = add i32 %311, 20
  %call53.5.i = call i32 %328(ptr noundef %ah, i32 noundef %add52.5.i) #5
  %arrayidx56.5.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.1104.i, i32 5
  %329 = ptrtoint ptr %arrayidx56.5.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 %call53.5.i, ptr %arrayidx56.5.i, align 4
  %330 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %ah, align 4
  %add52.6.i = add i32 %311, 24
  %call53.6.i = call i32 %331(ptr noundef %ah, i32 noundef %add52.6.i) #5
  %arrayidx56.6.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.1104.i, i32 6
  %332 = ptrtoint ptr %arrayidx56.6.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 %call53.6.i, ptr %arrayidx56.6.i, align 4
  %333 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %ah, align 4
  %add52.7.i = add i32 %311, 28
  %call53.7.i = call i32 %334(ptr noundef %ah, i32 noundef %add52.7.i) #5
  %arrayidx56.7.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.1104.i, i32 7
  %335 = ptrtoint ptr %arrayidx56.7.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 %call53.7.i, ptr %arrayidx56.7.i, align 4
  %336 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %ah, align 4
  %add52.8.i = add i32 %311, 32
  %call53.8.i = call i32 %337(ptr noundef %ah, i32 noundef %add52.8.i) #5
  %arrayidx56.8.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.1104.i, i32 8
  %338 = ptrtoint ptr %arrayidx56.8.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 %call53.8.i, ptr %arrayidx56.8.i, align 4
  %339 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %ah, align 4
  %add52.9.i = add i32 %311, 36
  %call53.9.i = call i32 %340(ptr noundef %ah, i32 noundef %add52.9.i) #5
  %arrayidx56.9.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.1104.i, i32 9
  %341 = ptrtoint ptr %arrayidx56.9.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 %call53.9.i, ptr %arrayidx56.9.i, align 4
  %342 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %ah, align 4
  %add52.10.i = add i32 %311, 40
  %call53.10.i = call i32 %343(ptr noundef %ah, i32 noundef %add52.10.i) #5
  %arrayidx56.10.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.1104.i, i32 10
  %344 = ptrtoint ptr %arrayidx56.10.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 %call53.10.i, ptr %arrayidx56.10.i, align 4
  %345 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %ah, align 4
  %add52.11.i = add i32 %311, 44
  %call53.11.i = call i32 %346(ptr noundef %ah, i32 noundef %add52.11.i) #5
  %arrayidx56.11.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.1104.i, i32 11
  %347 = ptrtoint ptr %arrayidx56.11.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 %call53.11.i, ptr %arrayidx56.11.i, align 4
  %348 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %ah, align 4
  %add52.12.i = add i32 %311, 48
  %call53.12.i = call i32 %349(ptr noundef %ah, i32 noundef %add52.12.i) #5
  %arrayidx56.12.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.1104.i, i32 12
  %350 = ptrtoint ptr %arrayidx56.12.i to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 %call53.12.i, ptr %arrayidx56.12.i, align 4
  %351 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %ah, align 4
  %add52.13.i = add i32 %311, 52
  %call53.13.i = call i32 %352(ptr noundef %ah, i32 noundef %add52.13.i) #5
  %arrayidx56.13.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.1104.i, i32 13
  %353 = ptrtoint ptr %arrayidx56.13.i to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 %call53.13.i, ptr %arrayidx56.13.i, align 4
  %354 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %ah, align 4
  %add52.14.i = add i32 %311, 56
  %call53.14.i = call i32 %355(ptr noundef %ah, i32 noundef %add52.14.i) #5
  %arrayidx56.14.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.1104.i, i32 14
  %356 = ptrtoint ptr %arrayidx56.14.i to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 %call53.14.i, ptr %arrayidx56.14.i, align 4
  %357 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %ah, align 4
  %add52.15.i = add i32 %311, 60
  %call53.15.i = call i32 %358(ptr noundef %ah, i32 noundef %add52.15.i) #5
  %arrayidx56.15.i = getelementptr %struct.ath9k_hw_cal_data, ptr %229, i32 0, i32 11, i32 %i.1104.i, i32 15
  %359 = ptrtoint ptr %arrayidx56.15.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 %call53.15.i, ptr %arrayidx56.15.i, align 4
  br label %for.inc60.i

for.inc60.i:                                      ; preds = %for.cond44.preheader.i, %for.body36.i.for.inc60.i_crit_edge
  %inc61.i = add nuw nsw i32 %i.1104.i, 1
  %exitcond107.not.i = icmp eq i32 %inc61.i, 3
  br i1 %exitcond107.not.i, label %for.end62.i, label %for.inc60.i.for.body36.i_crit_edge

for.inc60.i.for.body36.i_crit_edge:               ; preds = %for.inc60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body36.i

for.end62.i:                                      ; preds = %for.inc60.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @_set_bit(i32 noundef 6, ptr noundef %cal_flags.i395) #5
  br label %ar9003_hw_cl_cal_post_proc.exit

ar9003_hw_cl_cal_post_proc.exit:                  ; preds = %for.end62.i, %if.else.i399.ar9003_hw_cl_cal_post_proc.exit_crit_edge, %for.inc25.i.ar9003_hw_cl_cal_post_proc.exit_crit_edge, %lor.lhs.false.i.ar9003_hw_cl_cal_post_proc.exit_crit_edge, %if.end227.ar9003_hw_cl_cal_post_proc.exit_crit_edge
  %run_rtt_cal.1.off0.not = xor i1 %run_rtt_cal.1.off0403407, true
  %tobool232.not = icmp eq ptr %1, null
  %or.cond371 = select i1 %run_rtt_cal.1.off0.not, i1 true, i1 %tobool232.not
  br i1 %or.cond371, label %ar9003_hw_cl_cal_post_proc.exit.if.end247_crit_edge, label %if.then233

ar9003_hw_cl_cal_post_proc.exit.if.end247_crit_edge: ; preds = %ar9003_hw_cl_cal_post_proc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end247

if.then233:                                       ; preds = %ar9003_hw_cl_cal_post_proc.exit
  %360 = ptrtoint ptr %is_reusable to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %is_reusable, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %361)
  %tobool234.not = icmp eq i8 %361, 0
  br i1 %tobool234.not, label %if.then233.if.end246_crit_edge, label %if.then235

if.then233.if.end246_crit_edge:                   ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end246

if.then235:                                       ; preds = %if.then233
  %rfbus_req.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 17
  %362 = ptrtoint ptr %rfbus_req.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %rfbus_req.i, align 4
  %call1.i = call zeroext i1 %363(ptr noundef %ah) #5
  br i1 %call1.i, label %if.else239, label %if.then237

if.then237:                                       ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.3, ptr noundef %common.i, ptr noundef nonnull @.str.4) #5
  br label %if.end245

if.else239:                                       ; preds = %if.then235
  call void @ar9003_hw_rtt_fill_hist(ptr noundef %ah) #5
  %cal_flags240 = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %1, i32 0, i32 2
  %364 = ptrtoint ptr %cal_flags240 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load volatile i32, ptr %cal_flags240, align 4
  %366 = and i32 %365, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %366)
  %tobool242.not = icmp eq i32 %366, 0
  br i1 %tobool242.not, label %if.else239.if.end245_crit_edge, label %if.then243

if.else239.if.end245_crit_edge:                   ; preds = %if.else239
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end245

if.then243:                                       ; preds = %if.else239
  call void @__sanitizer_cov_trace_pc() #7
  call void @ar9003_hw_rtt_load_hist(ptr noundef %ah) #5
  br label %if.end245

if.end245:                                        ; preds = %if.then243, %if.else239.if.end245_crit_edge, %if.then237
  %rfbus_done.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 18
  %367 = ptrtoint ptr %rfbus_done.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %rfbus_done.i, align 4
  call void %368(ptr noundef %ah) #5
  br label %if.end246

if.end246:                                        ; preds = %if.end245, %if.then233.if.end246_crit_edge
  call void @ar9003_hw_rtt_disable(ptr noundef %ah) #5
  br label %if.end247

if.end247:                                        ; preds = %if.end246, %ar9003_hw_cl_cal_post_proc.exit.if.end247_crit_edge
  %rxchainmask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 75
  %369 = ptrtoint ptr %rxchainmask to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %rxchainmask, align 1
  %txchainmask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 74
  %371 = ptrtoint ptr %txchainmask to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %txchainmask, align 4
  call void @ar9003_hw_set_chain_masks(ptr noundef %ah, i8 noundef zeroext %370, i8 noundef zeroext %372) #5
  %373 = ptrtoint ptr %caldata1 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %caldata1, align 4
  %cal_list_curr.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 53
  %cal_list_last.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 52
  %cal_list.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 51
  %iq_caldata.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 48
  %calState.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 48, i32 1
  %375 = ptrtoint ptr %calState.i to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 1, ptr %calState.i, align 4
  %calNext.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 48, i32 2
  %376 = ptrtoint ptr %cal_list_last.i to i32
  call void @__asan_store4_noabort(i32 %376)
  store ptr %iq_caldata.i, ptr %cal_list_last.i, align 4
  %377 = ptrtoint ptr %cal_list.i to i32
  call void @__asan_store4_noabort(i32 %377)
  store ptr %iq_caldata.i, ptr %cal_list.i, align 4
  %378 = ptrtoint ptr %calNext.i to i32
  call void @__asan_store4_noabort(i32 %378)
  store ptr %iq_caldata.i, ptr %calNext.i, align 4
  %379 = ptrtoint ptr %cal_list_curr.i to i32
  call void @__asan_store4_noabort(i32 %379)
  store ptr %iq_caldata.i, ptr %cal_list_curr.i, align 4
  call void @ath9k_hw_reset_calibration(ptr noundef %ah, ptr noundef nonnull %iq_caldata.i) #5
  %tobool27.not.i = icmp eq ptr %374, null
  br i1 %tobool27.not.i, label %if.end247.cleanup_crit_edge, label %if.then28.i

if.end247.cleanup_crit_edge:                      ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then28.i:                                      ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #7
  %CalValid.i = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %374, i32 0, i32 3
  %380 = ptrtoint ptr %CalValid.i to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 0, ptr %CalValid.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then28.i, %if.end247.cleanup_crit_edge, %if.then211, %do.body207.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %is_reusable) #5
  ret i1 %status.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ar9003_hw_init_cal_soc(ptr noundef %ah, ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_chainmask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6, i32 3
  %0 = ptrtoint ptr %rx_chainmask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rx_chainmask, align 1
  %tx_chainmask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6, i32 2
  %2 = ptrtoint ptr %tx_chainmask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_chainmask, align 2
  tail call void @ar9003_hw_set_chain_masks(ptr noundef %ah, i8 noundef zeroext %1, i8 noundef zeroext %3) #5
  %enabled_cals = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 59
  %4 = ptrtoint ptr %enabled_cals to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled_cals, align 2
  %6 = and i8 %5, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %7 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %channelFlags, align 2
  %9 = and i16 %8, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %if.end.if.end10_crit_edge, label %lor.lhs.false57

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.end.thread:                                    ; preds = %entry
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %11 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmw, align 4
  %call = tail call i32 %12(ptr noundef %ah, i32 noundef 41688, i32 noundef 2, i32 noundef 0) #5
  %channelFlags229 = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %13 = ptrtoint ptr %channelFlags229 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %channelFlags229, align 2
  %15 = and i16 %14, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %if.end.thread.if.end10_crit_edge, label %if.end.thread.if.then60_crit_edge

if.end.thread.if.then60_crit_edge:                ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then60

if.end.thread.if.end10_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.end10:                                         ; preds = %if.end.thread.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %channelFlags232 = phi ptr [ %channelFlags229, %if.end.thread.if.end10_crit_edge ], [ %channelFlags, %if.end.if.end10_crit_edge ]
  %rmw12 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %17 = ptrtoint ptr %rmw12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmw12, align 4
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %19 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %20)
  %cmp = icmp eq i32 %20, 576
  %add = select i1 %cmp, i32 42440, i32 42568
  %call14 = tail call i32 %18(ptr noundef %ah, i32 noundef %add, i32 noundef 8388608, i32 noundef 33292288) #5
  %21 = ptrtoint ptr %enabled_cals to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %enabled_cals, align 2
  %23 = and i8 %22, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool18.not = icmp eq i8 %23, 0
  br i1 %tobool18.not, label %if.then35, label %if.end33

if.end33:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ah, align 4
  %26 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %27)
  %cmp23 = icmp eq i32 %27, 576
  %add26 = select i1 %cmp23, i32 42436, i32 42564
  %call27 = tail call i32 %25(ptr noundef %ah, i32 noundef %add26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool29 = icmp slt i32 %call27, 0
  br label %if.end40

if.then35:                                        ; preds = %if.end10
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %28 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ah, align 4
  %call1.i = tail call i32 %29(ptr noundef %ah, i32 noundef 42072) #5
  %conv32.i = and i32 %call1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv32.i)
  %tobool.not.i = icmp eq i32 %conv32.i, 0
  br i1 %tobool.not.i, label %if.then35.if.end.i_crit_edge, label %if.then.i

if.then35.if.end.i_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %rmw12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmw12, align 4
  %call3.i = tail call i32 %31(ptr noundef %ah, i32 noundef 42072, i32 noundef 0, i32 noundef 1) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then35.if.end.i_crit_edge
  %32 = ptrtoint ptr %rmw12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmw12, align 4
  %34 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %35)
  %cmp.i = icmp eq i32 %35, 576
  %add.i = select i1 %cmp.i, i32 42436, i32 42560
  %call7.i = tail call i32 %33(ptr noundef %ah, i32 noundef %add.i, i32 noundef 1, i32 noundef 1) #5
  %36 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %37)
  %cmp10.i = icmp eq i32 %37, 576
  %add13.i = select i1 %cmp10.i, i32 42436, i32 42560
  %call14.i = tail call zeroext i1 @ath9k_hw_wait(ptr noundef %ah, i32 noundef %add13.i, i32 noundef 1, i32 noundef 0, i32 noundef 100000) #5
  br i1 %call14.i, label %if.end.i.ar9003_hw_tx_iq_cal_run.exit_crit_edge, label %do.body.i

if.end.i.ar9003_hw_tx_iq_cal_run.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ar9003_hw_tx_iq_cal_run.exit

do.body.i:                                        ; preds = %if.end.i
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %38 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %debug_mask.i, align 4
  %and16.i = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %do.body.i.ar9003_hw_tx_iq_cal_run.exit_crit_edge, label %if.then18.i

do.body.i.ar9003_hw_tx_iq_cal_run.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ar9003_hw_tx_iq_cal_run.exit

if.then18.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.22) #5
  br label %ar9003_hw_tx_iq_cal_run.exit

ar9003_hw_tx_iq_cal_run.exit:                     ; preds = %if.then18.i, %do.body.i.ar9003_hw_tx_iq_cal_run.exit_crit_edge, %if.end.i.ar9003_hw_tx_iq_cal_run.exit_crit_edge
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %40 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write, align 4
  tail call void %41(ptr noundef %ah, i32 noundef 0, i32 noundef 41484) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 1073740) #5
  %43 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write, align 4
  tail call void %44(ptr noundef %ah, i32 noundef 1, i32 noundef 41484) #5
  br label %if.end40

if.end40:                                         ; preds = %ar9003_hw_tx_iq_cal_run.exit, %if.end33
  %txiqcal_done.2.off0 = phi i1 [ %call14.i, %ar9003_hw_tx_iq_cal_run.exit ], [ %tobool29, %if.end33 ]
  %45 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %46)
  %cmp43 = icmp eq i32 %46, 1024
  br i1 %cmp43, label %land.lhs.true, label %if.end40.if.then60_crit_edge

if.end40.if.then60_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then60

land.lhs.true:                                    ; preds = %if.end40
  %47 = ptrtoint ptr %channelFlags232 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %channelFlags232, align 2
  %49 = and i16 %48, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool48.not = icmp eq i16 %49, 0
  br i1 %tobool48.not, label %if.then49, label %land.lhs.true.if.then60_crit_edge

land.lhs.true.if.then60_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then60

if.then49:                                        ; preds = %land.lhs.true
  %common.i.i168 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %50 = ptrtoint ptr %rmw12 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmw12, align 4
  %call1.i172 = tail call i32 %51(ptr noundef %ah, i32 noundef 41668, i32 noundef 0, i32 noundef 2048) #5
  %52 = ptrtoint ptr %rmw12 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmw12, align 4
  %54 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %55)
  %cmp6.i = icmp eq i32 %55, 576
  %add.i173 = select i1 %cmp6.i, i32 42436, i32 42564
  %call8.i = tail call i32 %53(ptr noundef %ah, i32 noundef %add.i173, i32 noundef 0, i32 noundef -2147483648) #5
  %write.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %56 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write.i, align 4
  %58 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ah, align 4
  %60 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %61)
  %cmp13.i = icmp ugt i32 %61, 447
  %cond14.i = select i1 %cmp13.i, i32 41668, i32 39008
  %call15.i = tail call i32 %59(ptr noundef %ah, i32 noundef %cond14.i) #5
  %or.i = or i32 %call15.i, 1
  %62 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %63)
  %cmp18.i = icmp ugt i32 %63, 447
  %cond19.i = select i1 %cmp18.i, i32 41668, i32 39008
  tail call void %57(ptr noundef %ah, i32 noundef %or.i, i32 noundef %cond19.i) #5
  %64 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %65)
  %cmp22.i = icmp ugt i32 %65, 447
  %cond23.i = select i1 %cmp22.i, i32 41668, i32 39008
  %call24.i = tail call zeroext i1 @ath9k_hw_wait(ptr noundef %ah, i32 noundef %cond23.i, i32 noundef 1, i32 noundef 0, i32 noundef 100000) #5
  br i1 %call24.i, label %if.end28.i, label %do.body.i175

do.body.i175:                                     ; preds = %if.then49
  %debug_mask.i174 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %66 = ptrtoint ptr %debug_mask.i174 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %debug_mask.i174, align 4
  %and.i = and i32 %67, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool26.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool26.not.i, label %do.body.i175.cleanup_crit_edge, label %if.then27.i

do.body.i175.cleanup_crit_edge:                   ; preds = %do.body.i175
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then27.i:                                      ; preds = %do.body.i175
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i168, ptr noundef nonnull @.str.23) #5
  br label %cleanup

if.end28.i:                                       ; preds = %if.then49
  %68 = ptrtoint ptr %rmw12 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rmw12, align 4
  %70 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %71)
  %cmp33.i = icmp ugt i32 %71, 447
  %cond34.i = select i1 %cmp33.i, i32 41668, i32 39008
  %call35.i = tail call i32 %69(ptr noundef %ah, i32 noundef %cond34.i, i32 noundef 2048, i32 noundef 0) #5
  %72 = ptrtoint ptr %rmw12 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rmw12, align 4
  %call38.i = tail call i32 %73(ptr noundef %ah, i32 noundef 41688, i32 noundef 0, i32 noundef 2) #5
  %74 = ptrtoint ptr %rmw12 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rmw12, align 4
  %76 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %77)
  %cmp43.i = icmp ugt i32 %77, 447
  %cond44.i = select i1 %cmp43.i, i32 41668, i32 39008
  %call45.i = tail call i32 %75(ptr noundef %ah, i32 noundef %cond44.i, i32 noundef 0, i32 noundef 65536) #5
  %78 = ptrtoint ptr %rmw12 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rmw12, align 4
  %80 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %81)
  %cmp50.i = icmp ugt i32 %81, 447
  %cond51.i = select i1 %cmp50.i, i32 41668, i32 39008
  %call52.i = tail call i32 %79(ptr noundef %ah, i32 noundef %cond51.i, i32 noundef 0, i32 noundef 1048576) #5
  br label %while.body.i

while.body.i:                                     ; preds = %if.end346.i.while.body.i_crit_edge, %if.end28.i
  %82 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ah, align 4
  %call58.i = tail call i32 %83(ptr noundef %ah, i32 noundef 90432) #5
  %84 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ah, align 4
  %call62.i = tail call i32 %85(ptr noundef %ah, i32 noundef 91456) #5
  %86 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ah, align 4
  %call67.i = tail call i32 %87(ptr noundef %ah, i32 noundef 92480) #5
  %88 = ptrtoint ptr %rmw12 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rmw12, align 4
  %call72.i = tail call i32 %89(ptr noundef %ah, i32 noundef 41484, i32 noundef 1, i32 noundef 0) #5
  %90 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write.i, align 4
  %92 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ah, align 4
  %94 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %95)
  %cmp79.i = icmp ugt i32 %95, 447
  %cond80.i = select i1 %cmp79.i, i32 41668, i32 39008
  %call81.i = tail call i32 %93(ptr noundef %ah, i32 noundef %cond80.i) #5
  %or82.i = or i32 %call81.i, 1
  %96 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %97)
  %cmp85.i = icmp ugt i32 %97, 447
  %cond86.i = select i1 %cmp85.i, i32 41668, i32 39008
  tail call void %91(ptr noundef %ah, i32 noundef %or82.i, i32 noundef %cond86.i) #5
  %98 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %99)
  %cmp89.i = icmp ugt i32 %99, 447
  %cond90.i = select i1 %cmp89.i, i32 41668, i32 39008
  %call91.i = tail call zeroext i1 @ath9k_hw_wait(ptr noundef %ah, i32 noundef %cond90.i, i32 noundef 1, i32 noundef 0, i32 noundef 100000) #5
  br i1 %call91.i, label %if.end103.i, label %do.body95.i

do.body95.i:                                      ; preds = %while.body.i
  %debug_mask96.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %100 = ptrtoint ptr %debug_mask96.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %debug_mask96.i, align 4
  %and97.i = and i32 %101, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i)
  %tobool98.not.i = icmp eq i32 %and97.i, 0
  br i1 %tobool98.not.i, label %do.body95.i.cleanup_crit_edge, label %if.then99.i

do.body95.i.cleanup_crit_edge:                    ; preds = %do.body95.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then99.i:                                      ; preds = %do.body95.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i168, ptr noundef nonnull @.str.24) #5
  br label %cleanup

if.end103.i:                                      ; preds = %while.body.i
  %102 = ptrtoint ptr %rmw12 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %rmw12, align 4
  %call106.i = tail call i32 %103(ptr noundef %ah, i32 noundef 41484, i32 noundef 0, i32 noundef 1) #5
  %104 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %write.i, align 4
  %106 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ah, align 4
  %call111.i = tail call i32 %107(ptr noundef %ah, i32 noundef 90440) #5
  %and112.i = and i32 %call111.i, -769
  %or113.i = or i32 %and112.i, 256
  tail call void %105(ptr noundef %ah, i32 noundef %or113.i, i32 noundef 90440) #5
  %108 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %write.i, align 4
  %110 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ah, align 4
  %call118.i = tail call i32 %111(ptr noundef %ah, i32 noundef 91464) #5
  %and119.i = and i32 %call118.i, -769
  %or120.i = or i32 %and119.i, 256
  tail call void %109(ptr noundef %ah, i32 noundef %or120.i, i32 noundef 91464) #5
  %112 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write.i, align 4
  %114 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ah, align 4
  %call125.i = tail call i32 %115(ptr noundef %ah, i32 noundef 92488) #5
  %and126.i = and i32 %call125.i, -769
  %or127.i = or i32 %and126.i, 256
  tail call void %113(ptr noundef %ah, i32 noundef %or127.i, i32 noundef 92488) #5
  %116 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ah, align 4
  %call130.i = tail call i32 %117(ptr noundef %ah, i32 noundef 90440) #5
  %shr131.i = lshr i32 %call130.i, 26
  %and132.i = and i32 %shr131.i, 31
  %shr133.i = lshr i32 %call130.i, 21
  %and134.i = and i32 %shr133.i, 31
  %118 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ah, align 4
  %call137.i = tail call i32 %119(ptr noundef %ah, i32 noundef 91464) #5
  %shr138.i = lshr i32 %call137.i, 26
  %and139.i = and i32 %shr138.i, 31
  %shr140.i = lshr i32 %call137.i, 21
  %and141.i = and i32 %shr140.i, 31
  %120 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ah, align 4
  %call144.i = tail call i32 %121(ptr noundef %ah, i32 noundef 92488) #5
  %shr145.i = lshr i32 %call144.i, 26
  %and146.i = and i32 %shr145.i, 31
  %shr147.i = lshr i32 %call144.i, 21
  %and148.i = and i32 %shr147.i, 31
  %122 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %write.i, align 4
  %124 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ah, align 4
  %call153.i = tail call i32 %125(ptr noundef %ah, i32 noundef 90440) #5
  %and154.i = and i32 %call153.i, -769
  %or155.i = or i32 %and154.i, 512
  tail call void %123(ptr noundef %ah, i32 noundef %or155.i, i32 noundef 90440) #5
  %126 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %write.i, align 4
  %128 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ah, align 4
  %call160.i = tail call i32 %129(ptr noundef %ah, i32 noundef 91464) #5
  %and161.i = and i32 %call160.i, -769
  %or162.i = or i32 %and161.i, 512
  tail call void %127(ptr noundef %ah, i32 noundef %or162.i, i32 noundef 91464) #5
  %130 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %write.i, align 4
  %132 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ah, align 4
  %call167.i = tail call i32 %133(ptr noundef %ah, i32 noundef 92488) #5
  %and168.i = and i32 %call167.i, -769
  %or169.i = or i32 %and168.i, 512
  tail call void %131(ptr noundef %ah, i32 noundef %or169.i, i32 noundef 92488) #5
  %134 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ah, align 4
  %call172.i = tail call i32 %135(ptr noundef %ah, i32 noundef 90440) #5
  %shr173.i = lshr i32 %call172.i, 26
  %and174.i = and i32 %shr173.i, 31
  %shr175.i = lshr i32 %call172.i, 21
  %and176.i = and i32 %shr175.i, 31
  %136 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ah, align 4
  %call179.i = tail call i32 %137(ptr noundef %ah, i32 noundef 91464) #5
  %shr180.i = lshr i32 %call179.i, 26
  %and181.i = and i32 %shr180.i, 31
  %shr182.i = lshr i32 %call179.i, 21
  %and183.i = and i32 %shr182.i, 31
  %138 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ah, align 4
  %call186.i = tail call i32 %139(ptr noundef %ah, i32 noundef 92488) #5
  %shr187.i = lshr i32 %call186.i, 26
  %and188.i = and i32 %shr187.i, 31
  %shr189.i = lshr i32 %call186.i, 21
  %and190.i = and i32 %shr189.i, 31
  %140 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %write.i, align 4
  %142 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ah, align 4
  %call195.i = tail call i32 %143(ptr noundef %ah, i32 noundef 90440) #5
  %or197.i = or i32 %call195.i, 768
  tail call void %141(ptr noundef %ah, i32 noundef %or197.i, i32 noundef 90440) #5
  %144 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %write.i, align 4
  %146 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ah, align 4
  %call202.i = tail call i32 %147(ptr noundef %ah, i32 noundef 91464) #5
  %or204.i = or i32 %call202.i, 768
  tail call void %145(ptr noundef %ah, i32 noundef %or204.i, i32 noundef 91464) #5
  %148 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %write.i, align 4
  %150 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ah, align 4
  %call209.i = tail call i32 %151(ptr noundef %ah, i32 noundef 92488) #5
  %or211.i = or i32 %call209.i, 768
  tail call void %149(ptr noundef %ah, i32 noundef %or211.i, i32 noundef 92488) #5
  %152 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ah, align 4
  %call214.i = tail call i32 %153(ptr noundef %ah, i32 noundef 90440) #5
  %shr215.i = lshr i32 %call214.i, 26
  %and216.i = and i32 %shr215.i, 31
  %shr217.i = lshr i32 %call214.i, 21
  %and218.i = and i32 %shr217.i, 31
  %154 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %ah, align 4
  %call221.i = tail call i32 %155(ptr noundef %ah, i32 noundef 91464) #5
  %shr222.i = lshr i32 %call221.i, 26
  %and223.i = and i32 %shr222.i, 31
  %shr224.i = lshr i32 %call221.i, 21
  %and225.i = and i32 %shr224.i, 31
  %156 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ah, align 4
  %call228.i = tail call i32 %157(ptr noundef %ah, i32 noundef 92488) #5
  %shr229.i = lshr i32 %call228.i, 26
  %and230.i = and i32 %shr229.i, 31
  %shr231.i = lshr i32 %call228.i, 21
  %and232.i = and i32 %shr231.i, 31
  %158 = add nsw i32 %and132.i, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %158)
  %159 = icmp ult i32 %158, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %and174.i)
  %cmp237.i = icmp ult i32 %and174.i, 25
  %or.cond3.i = select i1 %159, i1 %cmp237.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and174.i)
  %cmp239.i = icmp ugt i32 %and174.i, 6
  %or.cond4.i = select i1 %or.cond3.i, i1 %cmp239.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %and216.i)
  %cmp241.i = icmp ult i32 %and216.i, 25
  %or.cond5.i = select i1 %or.cond4.i, i1 %cmp241.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and216.i)
  %cmp243.i = icmp ugt i32 %and216.i, 6
  %or.cond6.i = select i1 %or.cond5.i, i1 %cmp243.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %and134.i)
  %cmp245.i = icmp ult i32 %and134.i, 25
  %or.cond7.i = select i1 %or.cond6.i, i1 %cmp245.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and134.i)
  %cmp247.i = icmp ugt i32 %and134.i, 6
  %or.cond8.i = select i1 %or.cond7.i, i1 %cmp247.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %and176.i)
  %cmp249.i = icmp ult i32 %and176.i, 25
  %or.cond9.i = select i1 %or.cond8.i, i1 %cmp249.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and176.i)
  %cmp251.i = icmp ugt i32 %and176.i, 6
  %or.cond10.i = select i1 %or.cond9.i, i1 %cmp251.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %and218.i)
  %cmp253.i = icmp ult i32 %and218.i, 25
  %or.cond11.i = select i1 %or.cond10.i, i1 %cmp253.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and218.i)
  %cmp255.i = icmp ugt i32 %and218.i, 6
  %or.cond12.i = select i1 %or.cond11.i, i1 %cmp255.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %call58.i)
  %cmp257.i = icmp ugt i32 %call58.i, -1073741825
  %or.cond35.i = select i1 %or.cond12.i, i1 true, i1 %cmp257.i
  br i1 %or.cond35.i, label %if.end103.i.if.end268.i_crit_edge, label %if.else.i

if.end103.i.if.end268.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end268.i

if.else.i:                                        ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #7
  %160 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ah, align 4
  %call261.i = tail call i32 %161(ptr noundef %ah, i32 noundef 90432) #5
  %and262.i = and i32 %call261.i, 1073741823
  %162 = add nuw i32 %call58.i, 1073741824
  %shl.i = and i32 %162, -1073741824
  %or263.i = or i32 %and262.i, %shl.i
  %163 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %write.i, align 4
  tail call void %164(ptr noundef %ah, i32 noundef %or263.i, i32 noundef 90432) #5
  br label %if.end268.i

if.end268.i:                                      ; preds = %if.else.i, %if.end103.i.if.end268.i_crit_edge
  %165 = add nsw i32 %and139.i, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %165)
  %166 = icmp ult i32 %165, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %and181.i)
  %cmp273.i = icmp ult i32 %and181.i, 25
  %or.cond14.i = select i1 %166, i1 %cmp273.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and181.i)
  %cmp275.i = icmp ugt i32 %and181.i, 6
  %or.cond15.i = select i1 %or.cond14.i, i1 %cmp275.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %and223.i)
  %cmp277.i = icmp ult i32 %and223.i, 25
  %or.cond16.i = select i1 %or.cond15.i, i1 %cmp277.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and223.i)
  %cmp279.i = icmp ugt i32 %and223.i, 6
  %or.cond17.i = select i1 %or.cond16.i, i1 %cmp279.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %and141.i)
  %cmp281.i = icmp ult i32 %and141.i, 25
  %or.cond18.i = select i1 %or.cond17.i, i1 %cmp281.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and141.i)
  %cmp283.i = icmp ugt i32 %and141.i, 6
  %or.cond19.i = select i1 %or.cond18.i, i1 %cmp283.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %and183.i)
  %cmp285.i = icmp ult i32 %and183.i, 25
  %or.cond20.i = select i1 %or.cond19.i, i1 %cmp285.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and183.i)
  %cmp287.i = icmp ugt i32 %and183.i, 6
  %or.cond21.i = select i1 %or.cond20.i, i1 %cmp287.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %and225.i)
  %cmp289.i = icmp ult i32 %and225.i, 25
  %or.cond22.i = select i1 %or.cond21.i, i1 %cmp289.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and225.i)
  %cmp291.i = icmp ugt i32 %and225.i, 6
  %or.cond23.i = select i1 %or.cond22.i, i1 %cmp291.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %call62.i)
  %cmp293.i = icmp ugt i32 %call62.i, -1073741825
  %or.cond36.i = select i1 %or.cond23.i, i1 true, i1 %cmp293.i
  br i1 %or.cond36.i, label %if.end268.i.if.end307.i_crit_edge, label %if.else295.i

if.end268.i.if.end307.i_crit_edge:                ; preds = %if.end268.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end307.i

if.else295.i:                                     ; preds = %if.end268.i
  call void @__sanitizer_cov_trace_pc() #7
  %167 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %ah, align 4
  %call299.i = tail call i32 %168(ptr noundef %ah, i32 noundef 91456) #5
  %and300.i = and i32 %call299.i, 1073741823
  %169 = add nuw i32 %call62.i, 1073741824
  %shl301.i = and i32 %169, -1073741824
  %or302.i = or i32 %and300.i, %shl301.i
  %170 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %write.i, align 4
  tail call void %171(ptr noundef %ah, i32 noundef %or302.i, i32 noundef 91456) #5
  br label %if.end307.i

if.end307.i:                                      ; preds = %if.else295.i, %if.end268.i.if.end307.i_crit_edge
  %172 = add nsw i32 %and146.i, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %172)
  %173 = icmp ult i32 %172, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %and188.i)
  %cmp312.i = icmp ult i32 %and188.i, 25
  %or.cond25.i = select i1 %173, i1 %cmp312.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and188.i)
  %cmp314.i = icmp ugt i32 %and188.i, 6
  %or.cond26.i = select i1 %or.cond25.i, i1 %cmp314.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %and230.i)
  %cmp316.i = icmp ult i32 %and230.i, 25
  %or.cond27.i = select i1 %or.cond26.i, i1 %cmp316.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and230.i)
  %cmp318.i = icmp ugt i32 %and230.i, 6
  %or.cond28.i = select i1 %or.cond27.i, i1 %cmp318.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %and148.i)
  %cmp320.i = icmp ult i32 %and148.i, 25
  %or.cond29.i = select i1 %or.cond28.i, i1 %cmp320.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and148.i)
  %cmp322.i = icmp ugt i32 %and148.i, 6
  %or.cond30.i = select i1 %or.cond29.i, i1 %cmp322.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %and190.i)
  %cmp324.i = icmp ult i32 %and190.i, 25
  %or.cond31.i = select i1 %or.cond30.i, i1 %cmp324.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and190.i)
  %cmp326.i = icmp ugt i32 %and190.i, 6
  %or.cond32.i = select i1 %or.cond31.i, i1 %cmp326.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %and232.i)
  %cmp328.i = icmp ult i32 %and232.i, 25
  %or.cond33.i = select i1 %or.cond32.i, i1 %cmp328.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and232.i)
  %cmp330.i = icmp ugt i32 %and232.i, 6
  %or.cond34.i = select i1 %or.cond33.i, i1 %cmp330.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %call67.i)
  %cmp332.i = icmp ugt i32 %call67.i, -1073741825
  %or.cond37.i = select i1 %or.cond34.i, i1 true, i1 %cmp332.i
  br i1 %or.cond37.i, label %if.end307.i.if.end346.i_crit_edge, label %if.else334.i

if.end307.i.if.end346.i_crit_edge:                ; preds = %if.end307.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end346.i

if.else334.i:                                     ; preds = %if.end307.i
  call void @__sanitizer_cov_trace_pc() #7
  %174 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %ah, align 4
  %call338.i = tail call i32 %175(ptr noundef %ah, i32 noundef 92480) #5
  %and339.i = and i32 %call338.i, 1073741823
  %176 = add nuw i32 %call67.i, 1073741824
  %shl340.i = and i32 %176, -1073741824
  %or341.i = or i32 %and339.i, %shl340.i
  %177 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %write.i, align 4
  tail call void %178(ptr noundef %ah, i32 noundef %or341.i, i32 noundef 92480) #5
  br label %if.end346.i

if.end346.i:                                      ; preds = %if.else334.i, %if.end307.i.if.end346.i_crit_edge
  %or.cond.demorgan.i = and i1 %or.cond35.i, %or.cond36.i
  %or.cond1.demorgan.i = and i1 %or.cond.demorgan.i, %or.cond37.i
  br i1 %or.cond1.demorgan.i, label %ar9003_hw_dynamic_osdac_selection.exit, label %if.end346.i.while.body.i_crit_edge

if.end346.i.while.body.i_crit_edge:               ; preds = %if.end346.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

ar9003_hw_dynamic_osdac_selection.exit:           ; preds = %if.end346.i
  call void @__sanitizer_cov_trace_pc() #7
  %179 = ptrtoint ptr %rmw12 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %rmw12, align 4
  %181 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %182)
  %cmp351.i = icmp ugt i32 %182, 447
  %cond352.i = select i1 %cmp351.i, i32 41668, i32 39008
  %call353.i = tail call i32 %180(ptr noundef %ah, i32 noundef %cond352.i, i32 noundef 0, i32 noundef 2048) #5
  %183 = ptrtoint ptr %rmw12 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %rmw12, align 4
  %call356.i = tail call i32 %184(ptr noundef %ah, i32 noundef 41484, i32 noundef 1, i32 noundef 0) #5
  %185 = ptrtoint ptr %rmw12 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %rmw12, align 4
  %187 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %188)
  %cmp361.i = icmp eq i32 %188, 576
  %add363.i = select i1 %cmp361.i, i32 42436, i32 42564
  %call364.i = tail call i32 %186(ptr noundef %ah, i32 noundef %add363.i, i32 noundef -2147483648, i32 noundef 0) #5
  br label %if.then60

lor.lhs.false57:                                  ; preds = %if.end
  %ah_flags = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 24
  %189 = ptrtoint ptr %ah_flags to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %ah_flags, align 4
  %and58 = and i32 %190, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %lor.lhs.false57.if.then60_crit_edge, label %lor.lhs.false57.if.end111_crit_edge

lor.lhs.false57.if.end111_crit_edge:              ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111

lor.lhs.false57.if.then60_crit_edge:              ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then60

if.then60:                                        ; preds = %lor.lhs.false57.if.then60_crit_edge, %ar9003_hw_dynamic_osdac_selection.exit, %land.lhs.true.if.then60_crit_edge, %if.end40.if.then60_crit_edge, %if.end.thread.if.then60_crit_edge
  %channelFlags230 = phi ptr [ %channelFlags, %lor.lhs.false57.if.then60_crit_edge ], [ %channelFlags232, %land.lhs.true.if.then60_crit_edge ], [ %channelFlags232, %ar9003_hw_dynamic_osdac_selection.exit ], [ %channelFlags232, %if.end40.if.then60_crit_edge ], [ %channelFlags229, %if.end.thread.if.then60_crit_edge ]
  %txiqcal_done.3.off0225 = phi i1 [ false, %lor.lhs.false57.if.then60_crit_edge ], [ %txiqcal_done.2.off0, %land.lhs.true.if.then60_crit_edge ], [ %txiqcal_done.2.off0, %ar9003_hw_dynamic_osdac_selection.exit ], [ %txiqcal_done.2.off0, %if.end40.if.then60_crit_edge ], [ false, %if.end.thread.if.then60_crit_edge ]
  %rxchainmask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 75
  %191 = ptrtoint ptr %rxchainmask to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %rxchainmask, align 1
  %193 = and i8 %192, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %tobool65.not = icmp eq i8 %193, 0
  br i1 %tobool65.not, label %if.then60.for.inc_crit_edge, label %if.end67

if.then60.for.inc_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end67:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #7
  %194 = ptrtoint ptr %channelFlags230 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %channelFlags230, align 2
  %196 = and i16 %195, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %196)
  %tobool72.not = icmp eq i16 %196, 0
  tail call fastcc void @ar9003_hw_manual_peak_cal(ptr noundef %ah, i8 noundef zeroext 0, i1 noundef zeroext %tobool72.not)
  br label %for.inc

for.inc:                                          ; preds = %if.end67, %if.then60.for.inc_crit_edge
  %197 = ptrtoint ptr %rxchainmask to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %rxchainmask, align 1
  %199 = and i8 %198, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool65.not.1 = icmp eq i8 %199, 0
  br i1 %tobool65.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end67.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.end67.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %200 = ptrtoint ptr %channelFlags230 to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %channelFlags230, align 2
  %202 = and i16 %201, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %202)
  %tobool72.not.1 = icmp eq i16 %202, 0
  tail call fastcc void @ar9003_hw_manual_peak_cal(ptr noundef %ah, i8 noundef zeroext 1, i1 noundef zeroext %tobool72.not.1)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end67.1, %for.inc.for.inc.1_crit_edge
  %203 = ptrtoint ptr %rxchainmask to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %rxchainmask, align 1
  %205 = and i8 %204, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %tobool65.not.2 = icmp eq i8 %205, 0
  br i1 %tobool65.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end67.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.end67.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %206 = ptrtoint ptr %channelFlags230 to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %channelFlags230, align 2
  %208 = and i16 %207, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %208)
  %tobool72.not.2 = icmp eq i16 %208, 0
  tail call fastcc void @ar9003_hw_manual_peak_cal(ptr noundef %ah, i8 noundef zeroext 2, i1 noundef zeroext %tobool72.not.2)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end67.2, %for.inc.1.for.inc.2_crit_edge
  %macVersion76 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %209 = ptrtoint ptr %macVersion76 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %macVersion76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %210)
  %cmp77 = icmp eq i32 %210, 1024
  br i1 %cmp77, label %if.else88, label %if.then79

if.then79:                                        ; preds = %for.inc.2
  %common.i.i176 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %write.i177 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %211 = ptrtoint ptr %write.i177 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %write.i177, align 4
  %213 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %ah, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %210)
  %cmp.i179 = icmp ugt i32 %210, 447
  %cond.i180 = select i1 %cmp.i179, i32 41668, i32 39008
  %call2.i = tail call i32 %214(ptr noundef %ah, i32 noundef %cond.i180) #5
  %or.i181 = or i32 %call2.i, 1
  %215 = ptrtoint ptr %macVersion76 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %macVersion76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %216)
  %cmp5.i = icmp ugt i32 %216, 447
  %cond6.i = select i1 %cmp5.i, i32 41668, i32 39008
  tail call void %212(ptr noundef %ah, i32 noundef %or.i181, i32 noundef %cond6.i) #5
  %217 = ptrtoint ptr %macVersion76 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %macVersion76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %218)
  %cmp9.i = icmp ugt i32 %218, 447
  %cond10.i = select i1 %cmp9.i, i32 41668, i32 39008
  %call11.i = tail call zeroext i1 @ath9k_hw_wait(ptr noundef %ah, i32 noundef %cond10.i, i32 noundef 1, i32 noundef 0, i32 noundef 100000) #5
  br i1 %call11.i, label %if.end84, label %do.body.i184

do.body.i184:                                     ; preds = %if.then79
  %debug_mask.i182 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %219 = ptrtoint ptr %debug_mask.i182 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %debug_mask.i182, align 4
  %and.i183 = and i32 %220, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i183)
  %tobool12.not.i = icmp eq i32 %and.i183, 0
  br i1 %tobool12.not.i, label %do.body.i184.cleanup_crit_edge, label %if.then13.i

do.body.i184.cleanup_crit_edge:                   ; preds = %do.body.i184
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then13.i:                                      ; preds = %do.body.i184
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i176, ptr noundef nonnull @.str.25, i32 noundef 100) #5
  br label %cleanup

if.end84:                                         ; preds = %if.then79
  br i1 %txiqcal_done.3.off0225, label %if.end84.if.end111.sink.split_crit_edge, label %if.end84.if.end111_crit_edge

if.end84.if.end111_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111

if.end84.if.end111.sink.split_crit_edge:          ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111.sink.split

if.else88:                                        ; preds = %for.inc.2
  br i1 %txiqcal_done.3.off0225, label %for.cond97.preheader, label %if.then90

for.cond97.preheader:                             ; preds = %if.else88
  %write.i204 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %221 = ptrtoint ptr %write.i204 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %write.i204, align 4
  %223 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %ah, align 4
  %225 = ptrtoint ptr %macVersion76 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %macVersion76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %226)
  %cmp.i206 = icmp ugt i32 %226, 447
  %cond.i207 = select i1 %cmp.i206, i32 41668, i32 39008
  %call2.i208 = tail call i32 %224(ptr noundef %ah, i32 noundef %cond.i207) #5
  %or.i209 = or i32 %call2.i208, 1
  %227 = ptrtoint ptr %macVersion76 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %macVersion76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %228)
  %cmp5.i210 = icmp ugt i32 %228, 447
  %cond6.i211 = select i1 %cmp5.i210, i32 41668, i32 39008
  tail call void %222(ptr noundef %ah, i32 noundef %or.i209, i32 noundef %cond6.i211) #5
  %229 = ptrtoint ptr %macVersion76 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %macVersion76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %230)
  %cmp9.i212 = icmp ugt i32 %230, 447
  %cond10.i213 = select i1 %cmp9.i212, i32 41668, i32 39008
  %call11.i214 = tail call zeroext i1 @ath9k_hw_wait(ptr noundef %ah, i32 noundef %cond10.i213, i32 noundef 1, i32 noundef 0, i32 noundef 100000) #5
  br i1 %call11.i214, label %if.end105, label %for.cond97.preheader.do.body.i218_crit_edge

for.cond97.preheader.do.body.i218_crit_edge:      ; preds = %for.cond97.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i218

if.then90:                                        ; preds = %if.else88
  %common.i.i185 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %write.i186 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %231 = ptrtoint ptr %write.i186 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %write.i186, align 4
  %233 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %ah, align 4
  %call2.i190 = tail call i32 %234(ptr noundef %ah, i32 noundef 41668) #5
  %or.i191 = or i32 %call2.i190, 1
  %235 = ptrtoint ptr %macVersion76 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %macVersion76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %236)
  %cmp5.i192 = icmp ugt i32 %236, 447
  %cond6.i193 = select i1 %cmp5.i192, i32 41668, i32 39008
  tail call void %232(ptr noundef %ah, i32 noundef %or.i191, i32 noundef %cond6.i193) #5
  %237 = ptrtoint ptr %macVersion76 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %macVersion76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %238)
  %cmp9.i194 = icmp ugt i32 %238, 447
  %cond10.i195 = select i1 %cmp9.i194, i32 41668, i32 39008
  %call11.i196 = tail call zeroext i1 @ath9k_hw_wait(ptr noundef %ah, i32 noundef %cond10.i195, i32 noundef 1, i32 noundef 0, i32 noundef 100000) #5
  br i1 %call11.i196, label %if.then90.if.end111_crit_edge, label %do.body.i200

if.then90.if.end111_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111

do.body.i200:                                     ; preds = %if.then90
  %debug_mask.i197 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %239 = ptrtoint ptr %debug_mask.i197 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %debug_mask.i197, align 4
  %and.i198 = and i32 %240, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i198)
  %tobool12.not.i199 = icmp eq i32 %and.i198, 0
  br i1 %tobool12.not.i199, label %do.body.i200.cleanup_crit_edge, label %if.then13.i201

do.body.i200.cleanup_crit_edge:                   ; preds = %do.body.i200
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then13.i201:                                   ; preds = %do.body.i200
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i185, ptr noundef nonnull @.str.25, i32 noundef 100) #5
  br label %cleanup

do.body.i218:                                     ; preds = %if.end105.1.do.body.i218_crit_edge, %if.end105.do.body.i218_crit_edge, %for.cond97.preheader.do.body.i218_crit_edge
  %debug_mask.i215 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %241 = ptrtoint ptr %debug_mask.i215 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %debug_mask.i215, align 4
  %and.i216 = and i32 %242, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i216)
  %tobool12.not.i217 = icmp eq i32 %and.i216, 0
  br i1 %tobool12.not.i217, label %do.body.i218.cleanup_crit_edge, label %if.then13.i219

do.body.i218.cleanup_crit_edge:                   ; preds = %do.body.i218
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then13.i219:                                   ; preds = %do.body.i218
  call void @__sanitizer_cov_trace_pc() #7
  %common.i.i203.le = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i203.le, ptr noundef nonnull @.str.25, i32 noundef 100) #5
  br label %cleanup

if.end105:                                        ; preds = %for.cond97.preheader
  tail call fastcc void @ar9003_hw_tx_iq_cal_post_proc(ptr noundef %ah, i32 noundef 0, i1 noundef zeroext false)
  %243 = ptrtoint ptr %write.i204 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %write.i204, align 4
  %245 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %ah, align 4
  %247 = ptrtoint ptr %macVersion76 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %macVersion76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %248)
  %cmp.i206.1 = icmp ugt i32 %248, 447
  %cond.i207.1 = select i1 %cmp.i206.1, i32 41668, i32 39008
  %call2.i208.1 = tail call i32 %246(ptr noundef %ah, i32 noundef %cond.i207.1) #5
  %or.i209.1 = or i32 %call2.i208.1, 1
  %249 = ptrtoint ptr %macVersion76 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %macVersion76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %250)
  %cmp5.i210.1 = icmp ugt i32 %250, 447
  %cond6.i211.1 = select i1 %cmp5.i210.1, i32 41668, i32 39008
  tail call void %244(ptr noundef %ah, i32 noundef %or.i209.1, i32 noundef %cond6.i211.1) #5
  %251 = ptrtoint ptr %macVersion76 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %macVersion76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %252)
  %cmp9.i212.1 = icmp ugt i32 %252, 447
  %cond10.i213.1 = select i1 %cmp9.i212.1, i32 41668, i32 39008
  %call11.i214.1 = tail call zeroext i1 @ath9k_hw_wait(ptr noundef %ah, i32 noundef %cond10.i213.1, i32 noundef 1, i32 noundef 0, i32 noundef 100000) #5
  br i1 %call11.i214.1, label %if.end105.1, label %if.end105.do.body.i218_crit_edge

if.end105.do.body.i218_crit_edge:                 ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i218

if.end105.1:                                      ; preds = %if.end105
  tail call fastcc void @ar9003_hw_tx_iq_cal_post_proc(ptr noundef %ah, i32 noundef 1, i1 noundef zeroext false)
  %253 = ptrtoint ptr %write.i204 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %write.i204, align 4
  %255 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %ah, align 4
  %257 = ptrtoint ptr %macVersion76 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %macVersion76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %258)
  %cmp.i206.2 = icmp ugt i32 %258, 447
  %cond.i207.2 = select i1 %cmp.i206.2, i32 41668, i32 39008
  %call2.i208.2 = tail call i32 %256(ptr noundef %ah, i32 noundef %cond.i207.2) #5
  %or.i209.2 = or i32 %call2.i208.2, 1
  %259 = ptrtoint ptr %macVersion76 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %macVersion76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %260)
  %cmp5.i210.2 = icmp ugt i32 %260, 447
  %cond6.i211.2 = select i1 %cmp5.i210.2, i32 41668, i32 39008
  tail call void %254(ptr noundef %ah, i32 noundef %or.i209.2, i32 noundef %cond6.i211.2) #5
  %261 = ptrtoint ptr %macVersion76 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %macVersion76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %262)
  %cmp9.i212.2 = icmp ugt i32 %262, 447
  %cond10.i213.2 = select i1 %cmp9.i212.2, i32 41668, i32 39008
  %call11.i214.2 = tail call zeroext i1 @ath9k_hw_wait(ptr noundef %ah, i32 noundef %cond10.i213.2, i32 noundef 1, i32 noundef 0, i32 noundef 100000) #5
  br i1 %call11.i214.2, label %if.end105.1.if.end111.sink.split_crit_edge, label %if.end105.1.do.body.i218_crit_edge

if.end105.1.do.body.i218_crit_edge:               ; preds = %if.end105.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i218

if.end105.1.if.end111.sink.split_crit_edge:       ; preds = %if.end105.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111.sink.split

if.end111.sink.split:                             ; preds = %if.end105.1.if.end111.sink.split_crit_edge, %if.end84.if.end111.sink.split_crit_edge
  %.sink = phi i32 [ 0, %if.end84.if.end111.sink.split_crit_edge ], [ 2, %if.end105.1.if.end111.sink.split_crit_edge ]
  tail call fastcc void @ar9003_hw_tx_iq_cal_post_proc(ptr noundef %ah, i32 noundef %.sink, i1 noundef zeroext false)
  br label %if.end111

if.end111:                                        ; preds = %if.end111.sink.split, %if.then90.if.end111_crit_edge, %if.end84.if.end111_crit_edge, %lor.lhs.false57.if.end111_crit_edge
  %rxchainmask112 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 75
  %263 = ptrtoint ptr %rxchainmask112 to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %rxchainmask112, align 1
  %txchainmask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 74
  %265 = ptrtoint ptr %txchainmask to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %txchainmask, align 4
  tail call void @ar9003_hw_set_chain_masks(ptr noundef %ah, i8 noundef zeroext %264, i8 noundef zeroext %266) #5
  %caldata1.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 31
  %267 = ptrtoint ptr %caldata1.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %caldata1.i, align 4
  %cal_list_curr.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 53
  %cal_list_last.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 52
  %cal_list.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 51
  %iq_caldata.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 48
  %calState.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 48, i32 1
  %269 = ptrtoint ptr %calState.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 1, ptr %calState.i, align 4
  %calNext.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 48, i32 2
  %270 = ptrtoint ptr %cal_list_last.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr %iq_caldata.i, ptr %cal_list_last.i, align 4
  %271 = ptrtoint ptr %cal_list.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr %iq_caldata.i, ptr %cal_list.i, align 4
  %272 = ptrtoint ptr %calNext.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr %iq_caldata.i, ptr %calNext.i, align 4
  %273 = ptrtoint ptr %cal_list_curr.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr %iq_caldata.i, ptr %cal_list_curr.i, align 4
  tail call void @ath9k_hw_reset_calibration(ptr noundef %ah, ptr noundef nonnull %iq_caldata.i) #5
  %tobool27.not.i = icmp eq ptr %268, null
  br i1 %tobool27.not.i, label %if.end111.cleanup_crit_edge, label %if.then28.i

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then28.i:                                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #7
  %CalValid.i = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %268, i32 0, i32 3
  %274 = ptrtoint ptr %CalValid.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 0, ptr %CalValid.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then28.i, %if.end111.cleanup_crit_edge, %if.then13.i219, %do.body.i218.cleanup_crit_edge, %if.then13.i201, %do.body.i200.cleanup_crit_edge, %if.then13.i, %do.body.i184.cleanup_crit_edge, %if.then99.i, %do.body95.i.cleanup_crit_edge, %if.then27.i, %do.body.i175.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end111.cleanup_crit_edge ], [ true, %if.then28.i ], [ false, %if.then27.i ], [ false, %do.body.i175.cleanup_crit_edge ], [ false, %if.then99.i ], [ false, %do.body95.i.cleanup_crit_edge ], [ false, %do.body.i184.cleanup_crit_edge ], [ false, %if.then13.i ], [ false, %do.body.i200.cleanup_crit_edge ], [ false, %if.then13.i201 ], [ false, %do.body.i218.cleanup_crit_edge ], [ false, %if.then13.i219 ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ar9003_hw_init_cal_settings(ptr nocapture noundef %ah) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %iq_caldata = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 48
  %0 = ptrtoint ptr %iq_caldata to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @iq_cal_single_sample, ptr %iq_caldata, align 4
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %1 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %2)
  %cmp = icmp ugt i32 %2, 447
  br i1 %cmp, label %if.then, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then:                                          ; preds = %entry
  %enabled_cals = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 59
  %3 = ptrtoint ptr %enabled_cals to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled_cals, align 2
  %5 = or i8 %4, 1
  store i8 %5, ptr %enabled_cals, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %2)
  %cmp4 = icmp ult i32 %2, 576
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %2)
  %cmp8 = icmp eq i32 %2, 768
  %or.cond = or i1 %cmp4, %cmp8
  br i1 %or.cond, label %if.then.if.end15_crit_edge, label %if.then10

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %6 = or i8 %4, 3
  %7 = ptrtoint ptr %enabled_cals to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %enabled_cals, align 2
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.then.if.end15_crit_edge, %entry.if.end15_crit_edge
  %supp_cals = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 46
  %8 = ptrtoint ptr %supp_cals to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %supp_cals, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9003_hw_setup_calibration(ptr noundef %ah, ptr nocapture noundef readonly %currCal) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %0 = ptrtoint ptr %currCal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %currCal, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cond = icmp eq i32 %3, 1
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %4 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmw, align 4
  %calCountMax = getelementptr inbounds %struct.ath9k_percal_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %calCountMax to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %calCountMax, align 4
  %shl = shl i32 %7, 12
  %and = and i32 %shl, 61440
  %call2 = tail call i32 %5(ptr noundef %ah, i32 noundef 38924, i32 noundef %and, i32 noundef 61440) #5
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %8 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write, align 4
  tail call void %9(ptr noundef %ah, i32 noundef 0, i32 noundef 41672) #5
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug_mask, align 4
  %and4 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %sw.bb.do.end_crit_edge, label %if.then

sw.bb.do.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.40) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %sw.bb.do.end_crit_edge
  %12 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmw, align 4
  %call7 = tail call i32 %13(ptr noundef %ah, i32 noundef 38924, i32 noundef 65536, i32 noundef 0) #5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.3, ptr noundef %common.i, ptr noundef nonnull @.str.41) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ar9003_hw_calibrate(ptr noundef %ah, ptr noundef %chan, i8 noundef zeroext %rxchainmask, i1 noundef zeroext %longcal) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cal_list_curr = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 53
  %0 = ptrtoint ptr %cal_list_curr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cal_list_curr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %land.lhs.true

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

land.lhs.true:                                    ; preds = %entry
  %calState = getelementptr inbounds %struct.ath9k_cal_list, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %calState to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %calState, align 4
  %.off = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then:                                          ; preds = %land.lhs.true
  %caldata1.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 31
  %4 = ptrtoint ptr %caldata1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caldata1.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %if.then.i, label %if.else19.i

if.then.i:                                        ; preds = %if.then
  %8 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ah, align 4
  %call.i = tail call i32 %9(ptr noundef %ah, i32 noundef 38924) #5
  %and.i = and i32 %call.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i.if.end11_crit_edge

if.then.i.if.end11_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.end.i:                                         ; preds = %if.then.i
  %calCollect.i = getelementptr inbounds %struct.ath9k_percal_data, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %calCollect.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %calCollect.i, align 4
  tail call void %11(ptr noundef %ah) #5
  %cal_samples.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 58
  %12 = ptrtoint ptr %cal_samples.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cal_samples.i, align 4
  %inc.i = add i16 %13, 1
  store i16 %inc.i, ptr %cal_samples.i, align 4
  %conv.i = zext i16 %inc.i to i32
  %calNumSamples.i = getelementptr inbounds %struct.ath9k_percal_data, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %calNumSamples.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %calNumSamples.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv.i)
  %cmp4.not.i = icmp ugt i32 %15, %conv.i
  br i1 %cmp4.not.i, label %if.else.i, label %if.then5

if.else.i:                                        ; preds = %if.end.i
  %common.i.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cond.i.i = icmp eq i32 %19, 1
  br i1 %cond.i.i, label %sw.bb.i.i, label %sw.default.i.i

sw.bb.i.i:                                        ; preds = %if.else.i
  %rmw.i.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %20 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmw.i.i, align 4
  %calCountMax.i.i = getelementptr inbounds %struct.ath9k_percal_data, ptr %17, i32 0, i32 2
  %22 = ptrtoint ptr %calCountMax.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %calCountMax.i.i, align 4
  %shl.i.i = shl i32 %23, 12
  %and.i.i = and i32 %shl.i.i, 61440
  %call2.i.i = tail call i32 %21(ptr noundef %ah, i32 noundef 38924, i32 noundef %and.i.i, i32 noundef 61440) #5
  %write.i.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %24 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write.i.i, align 4
  tail call void %25(ptr noundef %ah, i32 noundef 0, i32 noundef 41672) #5
  %debug_mask.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %debug_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %debug_mask.i.i, align 4
  %and4.i.i = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.i.do.end.i.i_crit_edge, label %if.then.i.i

sw.bb.i.i.do.end.i.i_crit_edge:                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i.i, ptr noundef nonnull @.str.40) #5
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %sw.bb.i.i.do.end.i.i_crit_edge
  %28 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmw.i.i, align 4
  %call7.i.i = tail call i32 %29(ptr noundef %ah, i32 noundef 38924, i32 noundef 65536, i32 noundef 0) #5
  br label %if.end11

sw.default.i.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.3, ptr noundef %common.i.i.i, ptr noundef nonnull @.str.41) #5
  br label %if.end11

if.else19.i:                                      ; preds = %if.then
  %CalValid20.i = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %5, i32 0, i32 3
  %30 = ptrtoint ptr %CalValid20.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %CalValid20.i, align 4
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %7, align 4
  %and22.i = and i32 %33, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %if.else19.i.if.end11_crit_edge

if.else19.i.if.end11_crit_edge:                   ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then24.i:                                      ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ath9k_hw_reset_calibration(ptr noundef %ah, ptr noundef nonnull %1) #5
  br label %if.end11

if.then5:                                         ; preds = %if.end.i
  %34 = and i8 %rxchainmask, 1
  %35 = lshr i8 %rxchainmask, 1
  %36 = and i8 %35, 1
  %spec.select.1.i = add nuw nsw i8 %36, %34
  %37 = lshr i8 %rxchainmask, 2
  %38 = and i8 %37, 1
  %spec.select.2.i = add nuw nsw i8 %spec.select.1.i, %38
  %calPostProc.i = getelementptr inbounds %struct.ath9k_percal_data, ptr %7, i32 0, i32 4
  %39 = ptrtoint ptr %calPostProc.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %calPostProc.i, align 4
  tail call void %40(ptr noundef %ah, i8 noundef zeroext %spec.select.2.i) #5
  %41 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %7, align 4
  %CalValid.i = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %5, i32 0, i32 3
  %43 = ptrtoint ptr %CalValid.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %CalValid.i, align 4
  %or.i = or i32 %44, %42
  store i32 %or.i, ptr %CalValid.i, align 4
  %45 = ptrtoint ptr %calState to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3, ptr %calState, align 4
  %calNext = getelementptr inbounds %struct.ath9k_cal_list, ptr %1, i32 0, i32 2
  %46 = ptrtoint ptr %calNext to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %calNext, align 4
  %48 = ptrtoint ptr %cal_list_curr to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %cal_list_curr, align 4
  %calState7 = getelementptr inbounds %struct.ath9k_cal_list, ptr %47, i32 0, i32 1
  %49 = ptrtoint ptr %calState7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %calState7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp8 = icmp eq i32 %50, 1
  br i1 %cmp8, label %if.then9, label %if.then5.if.end11_crit_edge

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ath9k_hw_reset_calibration(ptr noundef %ah, ptr noundef %47) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then5.if.end11_crit_edge, %if.then24.i, %if.else19.i.if.end11_crit_edge, %sw.default.i.i, %do.end.i.i, %if.then.i.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %entry.if.end11_crit_edge
  %iscaldone.0.shrunk = phi i32 [ 0, %if.then9 ], [ 1, %if.then5.if.end11_crit_edge ], [ 1, %entry.if.end11_crit_edge ], [ 1, %land.lhs.true.if.end11_crit_edge ], [ 0, %if.then.i.if.end11_crit_edge ], [ 0, %if.else19.i.if.end11_crit_edge ], [ 0, %if.then24.i ], [ 0, %do.end.i.i ], [ 0, %sw.default.i.i ]
  br i1 %longcal, label %land.lhs.true13, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true13:                                  ; preds = %if.end11
  %call14 = tail call zeroext i1 @ath9k_hw_getnf(ptr noundef %ah, ptr noundef %chan) #5
  br i1 %call14, label %if.then15, label %land.lhs.true13.cleanup_crit_edge

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then15:                                        ; preds = %land.lhs.true13
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 8
  %51 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %curchan, align 4
  %call16 = tail call i32 @ath9k_hw_loadnf(ptr noundef %ah, ptr noundef %52) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then15.cleanup_crit_edge, label %if.end19

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ath9k_hw_start_nfcal(ptr noundef %ah, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then15.cleanup_crit_edge, %land.lhs.true13.cleanup_crit_edge, %if.end11.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.then15.cleanup_crit_edge ], [ %iscaldone.0.shrunk, %if.end19 ], [ %iscaldone.0.shrunk, %land.lhs.true13.cleanup_crit_edge ], [ %iscaldone.0.shrunk, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ar9003_hw_set_chain_masks(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ar9003_hw_rtt_restore(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ar9003_hw_rtt_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ar9003_hw_rtt_set_mask(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ar9003_hw_rtt_clear_hist(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ar9003_mci_init_cal_req(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_wait(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ar9003_mci_init_cal_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ar9003_hw_rtt_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ar9003_hw_tx_iq_cal_post_proc(ptr noundef %ah, i32 noundef %iqcal_idx, i1 noundef zeroext %is_reusable) unnamed_addr #2 align 64 {
entry:
  %tx_corr_coeff.i = alloca [8 x [3 x i32]], align 4
  %txiqcal_status = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %txiqcal_status) #5
  %0 = getelementptr inbounds [3 x i32], ptr %txiqcal_status, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i32], ptr %txiqcal_status, i32 0, i32 2
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %3)
  %cmp = icmp eq i32 %3, 576
  %add = select i1 %cmp, i32 42480, i32 42636
  %4 = ptrtoint ptr %txiqcal_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %txiqcal_status, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 46732, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 50828, ptr %1, align 4
  %txchainmask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 74
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc132.for.body_crit_edge, %entry
  %nmeasurement.0303 = phi i32 [ 0, %entry ], [ %nmeasurement.1, %for.inc132.for.body_crit_edge ]
  %i.0300 = phi i32 [ 0, %entry ], [ %inc133, %for.inc132.for.body_crit_edge ]
  %7 = ptrtoint ptr %txchainmask to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %txchainmask, align 4
  %conv = zext i8 %8 to i32
  %shl = shl nuw nsw i32 1, %i.0300
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc132_crit_edge, label %if.end

for.body.for.inc132_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc132

if.end:                                           ; preds = %for.body
  %9 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ah, align 4
  %11 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %12)
  %cmp5 = icmp eq i32 %12, 576
  %add8 = select i1 %cmp5, i32 42480, i32 42636
  %call9 = tail call i32 %10(ptr noundef %ah, i32 noundef %add8) #5
  %and10 = lshr i32 %call9, 1
  %shr = and i32 %and10, 31
  %13 = tail call i32 @llvm.umin.i32(i32 %shr, i32 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp16298.not = icmp eq i32 %13, 0
  br i1 %cmp16298.not, label %if.end.for.inc132_crit_edge, label %do.body.lr.ph

if.end.for.inc132_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc132

do.body.lr.ph:                                    ; preds = %if.end
  %arrayidx = getelementptr [3 x i32], ptr %txiqcal_status, i32 0, i32 %i.0300
  %arrayidx55 = getelementptr [3 x i32], ptr @__const.ar9003_hw_tx_iq_cal_post_proc.chan_info_tab, i32 0, i32 %i.0300
  br label %do.body

do.body:                                          ; preds = %for.inc129.do.body_crit_edge, %do.body.lr.ph
  %im.0299 = phi i32 [ 0, %do.body.lr.ph ], [ %inc130, %for.inc129.do.body_crit_edge ]
  %14 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug_mask, align 4
  %and19 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body.do.end_crit_edge, label %if.then21

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.5, i32 noundef %i.0300) #5
  br label %do.end

do.end:                                           ; preds = %if.then21, %do.body.do.end_crit_edge
  %16 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ah, align 4
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %call25 = tail call i32 %17(ptr noundef %ah, i32 noundef %19) #5
  %and26 = and i32 %call25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %for.cond38.preheader, label %do.body29

for.cond38.preheader:                             ; preds = %do.end
  %mul44 = mul i32 %im.0299, 12
  %20 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmw, align 4
  %22 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %23)
  %cmp48 = icmp eq i32 %23, 1536
  %add51 = select i1 %cmp48, i32 41836, i32 41840
  %call52 = tail call i32 %21(ptr noundef %ah, i32 noundef %add51, i32 noundef 0, i32 noundef 8) #5
  %24 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ah, align 4
  %26 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx55, align 4
  %add56 = add i32 %27, %mul44
  %call57 = tail call i32 %25(ptr noundef %ah, i32 noundef %add56) #5
  %28 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmw, align 4
  %30 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %31)
  %cmp63 = icmp eq i32 %31, 1536
  %add66 = select i1 %cmp63, i32 41836, i32 41840
  %call67 = tail call i32 %29(ptr noundef %ah, i32 noundef %add66, i32 noundef 8, i32 noundef 8) #5
  %32 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ah, align 4
  %call72 = tail call i32 %33(ptr noundef %ah, i32 noundef %add56) #5
  %and73 = and i32 %call72, 65535
  %34 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %debug_mask, align 4
  %and78 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %for.cond38.preheader.do.end87_crit_edge, label %if.then80

for.cond38.preheader.do.end87_crit_edge:          ; preds = %for.cond38.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end87

do.body29:                                        ; preds = %do.end
  %36 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %debug_mask, align 4
  %and31 = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %do.body29.do.body147_crit_edge, label %if.then33

do.body29.do.body147_crit_edge:                   ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body147

if.then33:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.6, i32 noundef %i.0300) #5
  br label %do.body147

if.then80:                                        ; preds = %for.cond38.preheader
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef %call57, i32 noundef 1, i32 noundef %and73) #5
  br label %do.end87

do.end87:                                         ; preds = %if.then80, %for.cond38.preheader.do.end87_crit_edge
  %add43.1 = mul i32 %im.0299, 12
  %mul44.1 = add i32 %add43.1, 4
  %38 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmw, align 4
  %40 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %41)
  %cmp48.1 = icmp eq i32 %41, 1536
  %add51.1 = select i1 %cmp48.1, i32 41836, i32 41840
  %call52.1 = tail call i32 %39(ptr noundef %ah, i32 noundef %add51.1, i32 noundef 0, i32 noundef 8) #5
  %42 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ah, align 4
  %44 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx55, align 4
  %add56.1 = add i32 %45, %mul44.1
  %call57.1 = tail call i32 %43(ptr noundef %ah, i32 noundef %add56.1) #5
  %46 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmw, align 4
  %48 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %49)
  %cmp63.1 = icmp eq i32 %49, 1536
  %add66.1 = select i1 %cmp63.1, i32 41836, i32 41840
  %call67.1 = tail call i32 %47(ptr noundef %ah, i32 noundef %add66.1, i32 noundef 8, i32 noundef 8) #5
  %50 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ah, align 4
  %call72.1 = tail call i32 %51(ptr noundef %ah, i32 noundef %add56.1) #5
  %and73.1 = and i32 %call72.1, 65535
  %52 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %debug_mask, align 4
  %and78.1 = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.1)
  %tobool79.not.1 = icmp eq i32 %and78.1, 0
  br i1 %tobool79.not.1, label %do.end87.do.end87.1_crit_edge, label %if.then80.1

do.end87.do.end87.1_crit_edge:                    ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end87.1

if.then80.1:                                      ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.7, i32 noundef 2, i32 noundef %call57.1, i32 noundef 3, i32 noundef %and73.1) #5
  br label %do.end87.1

do.end87.1:                                       ; preds = %if.then80.1, %do.end87.do.end87.1_crit_edge
  %add43.2 = mul i32 %im.0299, 12
  %mul44.2 = add i32 %add43.2, 8
  %54 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmw, align 4
  %56 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %57)
  %cmp48.2 = icmp eq i32 %57, 1536
  %add51.2 = select i1 %cmp48.2, i32 41836, i32 41840
  %call52.2 = tail call i32 %55(ptr noundef %ah, i32 noundef %add51.2, i32 noundef 0, i32 noundef 8) #5
  %58 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ah, align 4
  %60 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx55, align 4
  %add56.2 = add i32 %61, %mul44.2
  %call57.2 = tail call i32 %59(ptr noundef %ah, i32 noundef %add56.2) #5
  %62 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rmw, align 4
  %64 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %65)
  %cmp63.2 = icmp eq i32 %65, 1536
  %add66.2 = select i1 %cmp63.2, i32 41836, i32 41840
  %call67.2 = tail call i32 %63(ptr noundef %ah, i32 noundef %add66.2, i32 noundef 8, i32 noundef 8) #5
  %66 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ah, align 4
  %call72.2 = tail call i32 %67(ptr noundef %ah, i32 noundef %add56.2) #5
  %and73.2 = and i32 %call72.2, 65535
  %68 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %debug_mask, align 4
  %and78.2 = and i32 %69, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.2)
  %tobool79.not.2 = icmp eq i32 %and78.2, 0
  br i1 %tobool79.not.2, label %do.end87.1.do.end87.2_crit_edge, label %if.then80.2

do.end87.1.do.end87.2_crit_edge:                  ; preds = %do.end87.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end87.2

if.then80.2:                                      ; preds = %do.end87.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.7, i32 noundef 4, i32 noundef %call57.2, i32 noundef 5, i32 noundef %and73.2) #5
  br label %do.end87.2

do.end87.2:                                       ; preds = %if.then80.2, %do.end87.1.do.end87.2_crit_edge
  %and.i = and i32 %call57, 4095
  %70 = lshr i32 %call57, 12
  %and2.i = and i32 %70, 4095
  %71 = lshr i32 %call57, 24
  %and7.i = shl nuw nsw i32 %and73, 8
  %shl.i = and i32 %and7.i, 3840
  %add.i = or i32 %shl.i, %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %and.i)
  %cmp.i = icmp ugt i32 %and.i, 2048
  %masksel.i = select i1 %cmp.i, i32 -4096, i32 0
  %spec.select.i = or i32 %masksel.i, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %and2.i)
  %cmp10.i = icmp ugt i32 %and2.i, 2048
  %masksel38.i = select i1 %cmp10.i, i32 -4096, i32 0
  %i2_p_q2_a0_d0.0.i = or i32 %masksel38.i, %and2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %add.i)
  %cmp16.i = icmp ugt i32 %add.i, 2048
  %add19.neg.i = or i32 %add.i, -4096
  %iq_corr_a0_d0.0.i = select i1 %cmp16.i, i32 %add19.neg.i, i32 %add.i
  %72 = lshr i32 %call72, 4
  %and24.i = and i32 %72, 4095
  %and26.i = and i32 %call57.1, 4095
  %73 = lshr i32 %call57.1, 12
  %and29.i = and i32 %73, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %and24.i)
  %cmp30.i = icmp ugt i32 %and24.i, 2048
  %masksel39.i = select i1 %cmp30.i, i32 -4096, i32 0
  %i2_m_q2_a0_d1.0.i = or i32 %masksel39.i, %and24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %and29.i)
  %cmp36.i = icmp ugt i32 %and29.i, 2048
  %masksel40.i = select i1 %cmp36.i, i32 -4096, i32 0
  %iq_corr_a0_d1.0.i = or i32 %masksel40.i, %and29.i
  %74 = lshr i32 %call57.1, 24
  %and46.i = shl nuw nsw i32 %and73.1, 8
  %shl47.i = and i32 %and46.i, 3840
  %add48.i = or i32 %shl47.i, %74
  %75 = lshr i32 %call72.1, 4
  %and51.i = and i32 %75, 4095
  %and53.i = and i32 %call57.2, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %add48.i)
  %cmp54.i = icmp ugt i32 %add48.i, 2048
  %add57.neg.i = or i32 %add48.i, -4096
  %i2_m_q2_a1_d0.0.i = select i1 %cmp54.i, i32 %add57.neg.i, i32 %add48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %and51.i)
  %cmp60.i = icmp ugt i32 %and51.i, 2048
  %masksel41.i = select i1 %cmp60.i, i32 -4096, i32 0
  %i2_p_q2_a1_d0.0.i = or i32 %masksel41.i, %and51.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %and53.i)
  %cmp66.i = icmp ugt i32 %and53.i, 2048
  %masksel42.i = select i1 %cmp66.i, i32 -4096, i32 0
  %iq_corr_a1_d0.0.i = or i32 %masksel42.i, %and53.i
  %76 = lshr i32 %call57.2, 12
  %and74.i = and i32 %76, 4095
  %77 = lshr i32 %call57.2, 24
  %and79.i = shl nuw nsw i32 %and73.2, 8
  %shl80.i = and i32 %and79.i, 3840
  %add81.i = or i32 %shl80.i, %77
  %78 = lshr i32 %call72.2, 4
  %and84.i = and i32 %78, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %and74.i)
  %cmp85.i = icmp ugt i32 %and74.i, 2048
  %masksel43.i = select i1 %cmp85.i, i32 -4096, i32 0
  %i2_m_q2_a1_d1.0.i = or i32 %masksel43.i, %and74.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %add81.i)
  %cmp91.i = icmp ugt i32 %add81.i, 2048
  %add94.neg.i = or i32 %add81.i, -4096
  %i2_p_q2_a1_d1.0.i = select i1 %cmp91.i, i32 %add94.neg.i, i32 %add81.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %and84.i)
  %cmp97.i = icmp ugt i32 %and84.i, 2048
  %masksel44.i = select i1 %cmp97.i, i32 -4096, i32 0
  %iq_corr_a1_d1.0.i = or i32 %masksel44.i, %and84.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i2_p_q2_a0_d0.0.i)
  %cmp103.i = icmp eq i32 %i2_p_q2_a0_d0.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %cmp104.i = icmp eq i32 %and26.i, 0
  %or.cond.i = select i1 %cmp103.i, i1 true, i1 %cmp104.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i2_p_q2_a1_d0.0.i)
  %cmp106.i = icmp eq i32 %i2_p_q2_a1_d0.0.i, 0
  %or.cond3.i = select i1 %or.cond.i, i1 true, i1 %cmp106.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i2_p_q2_a1_d1.0.i)
  %cmp108.i = icmp eq i32 %i2_p_q2_a1_d1.0.i, 0
  %or.cond4.i = select i1 %or.cond3.i, i1 true, i1 %cmp108.i
  br i1 %or.cond4.i, label %do.body.i, label %if.end113.i

do.body.i:                                        ; preds = %do.end87.2
  %79 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %debug_mask, align 4
  %and110.i = and i32 %80, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110.i)
  %tobool.not.i = icmp eq i32 %and110.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.body90_crit_edge, label %if.then111.i

do.body.i.do.body90_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body90

if.then111.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.10, i32 noundef %i2_p_q2_a0_d0.0.i, i32 noundef %and26.i, i32 noundef %i2_p_q2_a1_d0.0.i, i32 noundef %i2_p_q2_a1_d1.0.i) #5
  br label %do.body90

if.end113.i:                                      ; preds = %do.end87.2
  %81 = add nsw i32 %i2_p_q2_a0_d0.0.i, -2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1024, i32 %81)
  %82 = icmp ult i32 %81, -1024
  %or.cond6.i = select i1 %82, i1 true, i1 %cmp60.i
  %or.cond7.i = select i1 %or.cond6.i, i1 true, i1 %cmp91.i
  %or.cond7.not.i = xor i1 %or.cond7.i, true
  call void @__sanitizer_cov_trace_cmp4(i32 %i2_p_q2_a0_d0.0.i, i32 %spec.select.i)
  %cmp122.not.i = icmp sgt i32 %i2_p_q2_a0_d0.0.i, %spec.select.i
  %or.cond8.i = select i1 %or.cond7.not.i, i1 %cmp122.not.i, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %i2_p_q2_a0_d0.0.i, i32 %iq_corr_a0_d0.0.i)
  %cmp124.not.i = icmp sgt i32 %i2_p_q2_a0_d0.0.i, %iq_corr_a0_d0.0.i
  %or.cond9.i = select i1 %or.cond8.i, i1 %cmp124.not.i, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %and26.i, i32 %i2_m_q2_a0_d1.0.i)
  %cmp126.not.i = icmp sgt i32 %and26.i, %i2_m_q2_a0_d1.0.i
  %or.cond10.i = select i1 %or.cond9.i, i1 %cmp126.not.i, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %and26.i, i32 %iq_corr_a0_d1.0.i)
  %cmp128.not.i = icmp sgt i32 %and26.i, %iq_corr_a0_d1.0.i
  %or.cond11.i = select i1 %or.cond10.i, i1 %cmp128.not.i, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %i2_p_q2_a1_d0.0.i, i32 %i2_m_q2_a1_d0.0.i)
  %cmp130.not.i = icmp sgt i32 %i2_p_q2_a1_d0.0.i, %i2_m_q2_a1_d0.0.i
  %or.cond12.i = select i1 %or.cond11.i, i1 %cmp130.not.i, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %i2_p_q2_a1_d0.0.i, i32 %iq_corr_a1_d0.0.i)
  %cmp132.not.i = icmp sgt i32 %i2_p_q2_a1_d0.0.i, %iq_corr_a1_d0.0.i
  %or.cond13.i = select i1 %or.cond12.i, i1 %cmp132.not.i, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %i2_p_q2_a1_d1.0.i, i32 %i2_m_q2_a1_d1.0.i)
  %cmp134.not.i = icmp sgt i32 %i2_p_q2_a1_d1.0.i, %i2_m_q2_a1_d1.0.i
  %or.cond14.i = select i1 %or.cond13.i, i1 %cmp134.not.i, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %i2_p_q2_a1_d1.0.i, i32 %iq_corr_a1_d1.0.i)
  %cmp136.not.i = icmp sgt i32 %i2_p_q2_a1_d1.0.i, %iq_corr_a1_d1.0.i
  %or.cond15.i = select i1 %or.cond14.i, i1 %cmp136.not.i, i1 false
  br i1 %or.cond15.i, label %if.end138.i, label %if.end113.i.do.body90_crit_edge

if.end113.i.do.body90_crit_edge:                  ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body90

if.end138.i:                                      ; preds = %if.end113.i
  %mul.i = shl nsw i32 %spec.select.i, 15
  %div.i = sdiv i32 %mul.i, %i2_p_q2_a0_d0.0.i
  %mul139.i = shl nsw i32 %iq_corr_a0_d0.0.i, 15
  %div140.i = sdiv i32 %mul139.i, %i2_p_q2_a0_d0.0.i
  %mul141.i = shl nsw i32 %i2_m_q2_a0_d1.0.i, 15
  %div142.i = sdiv i32 %mul141.i, %and26.i
  %mul143.i = shl nsw i32 %iq_corr_a0_d1.0.i, 15
  %div144.i = sdiv i32 %mul143.i, %and26.i
  %mul145.i = shl nsw i32 %i2_m_q2_a1_d0.0.i, 15
  %div146.i = sdiv i32 %mul145.i, %i2_p_q2_a1_d0.0.i
  %mul147.i = shl nsw i32 %iq_corr_a1_d0.0.i, 15
  %div148.i = sdiv i32 %mul147.i, %i2_p_q2_a1_d0.0.i
  %mul149.i = shl nsw i32 %i2_m_q2_a1_d1.0.i, 15
  %div150.i = sdiv i32 %mul149.i, %i2_p_q2_a1_d1.0.i
  %mul151.i = shl nsw i32 %iq_corr_a1_d1.0.i, 15
  %div152.i = sdiv i32 %mul151.i, %i2_p_q2_a1_d1.0.i
  %sub153.i = sub i32 %div.i, %div142.i
  %mul154.i = shl i32 %sub153.i, 8
  %div155.i = sdiv i32 %mul154.i, 32
  %sub156.i = sub i32 %div144.i, %div140.i
  %mul157.i = shl i32 %sub156.i, 8
  %div158.i = sdiv i32 %mul157.i, 32
  %sub159.i = sub i32 %div146.i, %div150.i
  %mul160.i = shl i32 %sub159.i, 8
  %div161.i = sdiv i32 %mul160.i, 32
  %sub162.i = sub i32 %div152.i, %div148.i
  %mul163.i = shl i32 %sub162.i, 8
  %div164.i = sdiv i32 %mul163.i, 32
  %83 = tail call i32 @llvm.abs.i32(i32 %div158.i, i1 true) #5
  %84 = tail call i32 @llvm.abs.i32(i32 %div155.i, i1 true) #5
  %85 = tail call i32 @llvm.smax.i32(i32 %83, i32 %84) #5
  %86 = tail call i32 @llvm.smin.i32(i32 %83, i32 %84) #5
  %div.neg.i3145.i = lshr i32 %85, 5
  %sub10.i.i = sub nsw i32 %85, %div.neg.i3145.i
  %div11.i3246.i = lshr i32 %86, 3
  %add.i.i = add nsw i32 %sub10.i.i, %div11.i3246.i
  %div12.i3347.i = lshr i32 %86, 2
  %add13.i.i = add nsw i32 %add.i.i, %div12.i3347.i
  %87 = tail call i32 @llvm.abs.i32(i32 %div164.i, i1 true) #5
  %88 = tail call i32 @llvm.abs.i32(i32 %div161.i, i1 true) #5
  %89 = tail call i32 @llvm.smax.i32(i32 %87, i32 %88) #5
  %90 = tail call i32 @llvm.smin.i32(i32 %87, i32 %88) #5
  %div.neg.i173548.i = lshr i32 %89, 5
  %sub10.i18.i = sub nsw i32 %89, %div.neg.i173548.i
  %div11.i193649.i = lshr i32 %90, 3
  %add.i20.i = add nsw i32 %sub10.i18.i, %div11.i193649.i
  %div12.i213750.i = lshr i32 %90, 2
  %add13.i22.i = add nsw i32 %add.i20.i, %div12.i213750.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add13.i.i)
  %cmp167.i = icmp eq i32 %add13.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add13.i22.i)
  %cmp169.i = icmp eq i32 %add13.i22.i, 0
  %or.cond16.i = select i1 %cmp167.i, i1 true, i1 %cmp169.i
  br i1 %or.cond16.i, label %do.body171.i, label %if.end179.i

do.body171.i:                                     ; preds = %if.end138.i
  %91 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %debug_mask, align 4
  %and173.i = and i32 %92, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173.i)
  %tobool174.not.i = icmp eq i32 %and173.i, 0
  br i1 %tobool174.not.i, label %do.body171.i.do.body90_crit_edge, label %if.then175.i

do.body171.i.do.body90_crit_edge:                 ; preds = %do.body171.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body90

if.then175.i:                                     ; preds = %do.body171.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.11, i32 noundef %add13.i.i, i32 noundef %add13.i22.i) #5
  br label %do.body90

if.end179.i:                                      ; preds = %if.end138.i
  %mul180.i = shl i32 %div155.i, 15
  %div181.i = sdiv i32 %mul180.i, %add13.i.i
  %mul182.i = shl i32 %div158.i, 15
  %div183.i = sdiv i32 %mul182.i, %add13.i.i
  %mul184.i = shl i32 %div161.i, 15
  %div185.i = sdiv i32 %mul184.i, %add13.i22.i
  %mul186.i = shl i32 %div164.i, 15
  %div187.i = sdiv i32 %mul186.i, %add13.i22.i
  %sub.i.i = sub i32 %div183.i, %div187.i
  %sub1.i.i = sub i32 %div181.i, %div185.i
  %shr.i.i = ashr i32 %sub.i.i, 3
  %mul.i.i = mul i32 %shr.i.i, %shr.i.i
  %shr3.i.i = ashr i32 %sub1.i.i, 3
  %mul5.i.i = mul i32 %shr3.i.i, %shr3.i.i
  %add.i23.i = add i32 %mul.i.i, %mul5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add.i23.i)
  %tobool.not.i.i = icmp ult i32 %add.i23.i, 512
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.end198.i

do.body.i.i:                                      ; preds = %if.end179.i
  %93 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %debug_mask, align 4
  %and.i.i = and i32 %94, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool7.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool7.not.i.i, label %do.body.i.i.do.body190.i_crit_edge, label %if.then8.i.i

do.body.i.i.do.body190.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body190.i

if.then8.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.20) #5
  br label %do.body190.i

do.body190.i:                                     ; preds = %if.then8.i.i, %do.body.i.i.do.body190.i_crit_edge
  %95 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %debug_mask, align 4
  %and192.i = and i32 %96, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192.i)
  %tobool193.not.i = icmp eq i32 %and192.i, 0
  br i1 %tobool193.not.i, label %do.body190.i.do.body90_crit_edge, label %if.then194.i

do.body190.i.do.body90_crit_edge:                 ; preds = %do.body190.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body90

if.then194.i:                                     ; preds = %do.body190.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.12) #5
  br label %do.body90

if.end198.i:                                      ; preds = %if.end179.i
  %shr6.i.i = ashr i32 %add.i23.i, 9
  %sub10.i24.i = sub i32 %div.i, %div146.i
  %mul11.i.i = mul i32 %sub.i.i, %sub10.i24.i
  %sub12.i.i = sub i32 %div140.i, %div148.i
  %mul13.i.i = mul i32 %sub1.i.i, %sub12.i.i
  %add14.i.i = add i32 %mul11.i.i, %mul13.i.i
  %add16.i.i = sub i32 %div146.i, %div.i
  %mul17.i.i = mul i32 %sub1.i.i, %add16.i.i
  %mul19.i.i = mul i32 %sub.i.i, %sub12.i.i
  %add20.i.i = add i32 %mul19.i.i, %mul17.i.i
  %div.i.i = sdiv i32 %add14.i.i, %shr6.i.i
  %div21.i.i = sdiv i32 %add20.i.i, %shr6.i.i
  %mul22.i.i = mul i32 %div.i.i, %div183.i
  %mul23.i.i = mul i32 %div21.i.i, %div181.i
  %add24.i.i = add i32 %mul23.i.i, %mul22.i.i
  %div25.neg.i.i = sdiv i32 %add24.i.i, -32768
  %sub26.i.i = add i32 %div25.neg.i.i, %div.i
  %mul27.i.i = mul i32 %div.i.i, %div181.i
  %mul28.i.i = mul i32 %div21.i.i, %div183.i
  %sub29.i.i = sub i32 %mul27.i.i, %mul28.i.i
  %div30.i.neg.i = sdiv i32 %sub29.i.i, -32768
  %add31.i.neg.i = sub i32 %div30.i.neg.i, %div140.i
  %97 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %debug_mask, align 4
  %and205.i = and i32 %98, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and205.i)
  %tobool206.not.i = icmp eq i32 %and205.i, 0
  br i1 %tobool206.not.i, label %if.end198.i.do.end212.i_crit_edge, label %if.then207.i

if.end198.i.do.end212.i_crit_edge:                ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end212.i

if.then207.i:                                     ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #7
  %div208.i = sdiv i32 %div.i.i, 32768
  %div209.i = sdiv i32 %div21.i.i, 32768
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.13, i32 noundef %i.0300, i32 noundef %div208.i, i32 noundef %div209.i) #5
  br label %do.end212.i

do.end212.i:                                      ; preds = %if.then207.i, %if.end198.i.do.end212.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %div.i.i)
  %cmp213.i = icmp eq i32 %div.i.i, 32768
  br i1 %cmp213.i, label %do.body215.i, label %if.end223.i

do.body215.i:                                     ; preds = %do.end212.i
  %99 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %debug_mask, align 4
  %and217.i = and i32 %100, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217.i)
  %tobool218.not.i = icmp eq i32 %and217.i, 0
  br i1 %tobool218.not.i, label %do.body215.i.do.body90_crit_edge, label %if.then219.i

do.body215.i.do.body90_crit_edge:                 ; preds = %do.body215.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body90

if.then219.i:                                     ; preds = %do.body215.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.14, i32 noundef 32768, i32 noundef 32768) #5
  br label %do.body90

if.end223.i:                                      ; preds = %do.end212.i
  %mul224.i = shl i32 %div.i.i, 15
  %sub225.i = sub i32 32768, %div.i.i
  %div226.i = sdiv i32 %mul224.i, %sub225.i
  %mul228.i = shl i32 %div226.i, 7
  %div229.i = sdiv i32 %mul228.i, 32768
  %.neg.i = mul i32 %div21.i.i, -256
  %div231.i = sdiv i32 %.neg.i, 32768
  %101 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %debug_mask, align 4
  %and234.i = and i32 %102, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and234.i)
  %tobool235.not.i = icmp eq i32 %and234.i, 0
  br i1 %tobool235.not.i, label %if.end223.i.do.end239.i_crit_edge, label %if.then236.i

if.end223.i.do.end239.i_crit_edge:                ; preds = %if.end223.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end239.i

if.then236.i:                                     ; preds = %if.end223.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.15, i32 noundef %i.0300, i32 noundef %div229.i, i32 noundef %div231.i) #5
  br label %do.end239.i

do.end239.i:                                      ; preds = %if.then236.i, %if.end223.i.do.end239.i_crit_edge
  %103 = tail call i32 @llvm.smax.i32(i32 %div231.i, i32 -63) #5
  %104 = tail call i32 @llvm.smin.i32(i32 %103, i32 63) #5
  %105 = tail call i32 @llvm.smax.i32(i32 %div229.i, i32 -63) #5
  %106 = tail call i32 @llvm.smin.i32(i32 %105, i32 63) #5
  %mul252.i = shl nsw i32 %106, 7
  %and253.i = and i32 %104, 127
  %add254.i = or i32 %mul252.i, %and253.i
  store i32 %add254.i, ptr getelementptr inbounds (%struct.coeff, ptr @ar9003_hw_tx_iq_cal_post_proc.coeff, i32 0, i32 2), align 4
  %107 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %debug_mask, align 4
  %and258.i = and i32 %108, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and258.i)
  %tobool259.not.i = icmp eq i32 %and258.i, 0
  br i1 %tobool259.not.i, label %do.end239.i.do.end264.i_crit_edge, label %if.then260.i

do.end239.i.do.end264.i_crit_edge:                ; preds = %do.end239.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end264.i

if.then260.i:                                     ; preds = %do.end239.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.16, i32 noundef %i.0300, i32 noundef %add254.i) #5
  br label %do.end264.i

do.end264.i:                                      ; preds = %if.then260.i, %do.end239.i.do.end264.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32768, i32 %sub26.i.i)
  %cmp266.i = icmp eq i32 %sub26.i.i, -32768
  br i1 %cmp266.i, label %do.body268.i, label %if.end276.i

do.body268.i:                                     ; preds = %do.end264.i
  %109 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %debug_mask, align 4
  %and270.i = and i32 %110, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and270.i)
  %tobool271.not.i = icmp eq i32 %and270.i, 0
  br i1 %tobool271.not.i, label %do.body268.i.do.body90_crit_edge, label %if.then272.i

do.body268.i.do.body90_crit_edge:                 ; preds = %do.body268.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body90

if.then272.i:                                     ; preds = %do.body268.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.17, i32 noundef -32768, i32 noundef 32768) #5
  br label %do.body90

if.end276.i:                                      ; preds = %do.end264.i
  %.neg1.i = mul i32 %sub26.i.i, -32768
  %add279.i = add i32 %sub26.i.i, 32768
  %div280.i = sdiv i32 %.neg1.i, %add279.i
  %mul282.i = shl i32 %div280.i, 7
  %div283.i = sdiv i32 %mul282.i, 32768
  %.neg2.i = shl i32 %add31.i.neg.i, 8
  %div285.i = sdiv i32 %.neg2.i, 32768
  %111 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %debug_mask, align 4
  %and288.i = and i32 %112, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and288.i)
  %tobool289.not.i = icmp eq i32 %and288.i, 0
  br i1 %tobool289.not.i, label %if.end276.i.do.end293.i_crit_edge, label %if.then290.i

if.end276.i.do.end293.i_crit_edge:                ; preds = %if.end276.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end293.i

if.then290.i:                                     ; preds = %if.end276.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.18, i32 noundef %i.0300, i32 noundef %div283.i, i32 noundef %div285.i) #5
  br label %do.end293.i

do.end293.i:                                      ; preds = %if.then290.i, %if.end276.i.do.end293.i_crit_edge
  %113 = tail call i32 @llvm.smax.i32(i32 %div285.i, i32 -63) #5
  %114 = tail call i32 @llvm.smin.i32(i32 %113, i32 63) #5
  %115 = tail call i32 @llvm.smax.i32(i32 %div283.i, i32 -63) #5
  %116 = tail call i32 @llvm.smin.i32(i32 %115, i32 63) #5
  %mul306.i = shl nsw i32 %116, 7
  %and307.i = and i32 %114, 127
  %add308.i = or i32 %mul306.i, %and307.i
  store i32 %add308.i, ptr getelementptr inbounds (%struct.coeff, ptr @ar9003_hw_tx_iq_cal_post_proc.coeff, i32 0, i32 2, i32 1), align 4
  %117 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %debug_mask, align 4
  %and312.i = and i32 %118, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and312.i)
  %tobool313.not.i = icmp eq i32 %and312.i, 0
  br i1 %tobool313.not.i, label %do.end293.i.if.end98_crit_edge, label %if.then314.i

do.end293.i.if.end98_crit_edge:                   ; preds = %do.end293.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98

if.then314.i:                                     ; preds = %do.end293.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.19, i32 noundef %i.0300, i32 noundef %add308.i) #5
  br label %if.end98

do.body90:                                        ; preds = %if.then272.i, %do.body268.i.do.body90_crit_edge, %if.then219.i, %do.body215.i.do.body90_crit_edge, %if.then194.i, %do.body190.i.do.body90_crit_edge, %if.then175.i, %do.body171.i.do.body90_crit_edge, %if.end113.i.do.body90_crit_edge, %if.then111.i, %do.body.i.do.body90_crit_edge
  %119 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %debug_mask, align 4
  %and92 = and i32 %120, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %do.body90.do.body147_crit_edge, label %if.then94

do.body90.do.body147_crit_edge:                   ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body147

if.then94:                                        ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.8) #5
  br label %do.body147

if.end98:                                         ; preds = %if.then314.i, %do.end293.i.if.end98_crit_edge
  %121 = load i32, ptr getelementptr inbounds (%struct.coeff, ptr @ar9003_hw_tx_iq_cal_post_proc.coeff, i32 0, i32 2), align 4
  %and99 = and i32 %121, 127
  %arrayidx102 = getelementptr %struct.coeff, ptr @ar9003_hw_tx_iq_cal_post_proc.coeff, i32 0, i32 1, i32 %i.0300, i32 %im.0299, i32 %iqcal_idx
  %122 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %and99, ptr %arrayidx102, align 4
  %123 = load i32, ptr getelementptr inbounds (%struct.coeff, ptr @ar9003_hw_tx_iq_cal_post_proc.coeff, i32 0, i32 2), align 4
  %124 = lshr i32 %123, 7
  %and104 = and i32 %124, 127
  %arrayidx107 = getelementptr [3 x [8 x [3 x i32]]], ptr @ar9003_hw_tx_iq_cal_post_proc.coeff, i32 0, i32 %i.0300, i32 %im.0299, i32 %iqcal_idx
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %and104)
  %cmp111 = icmp ugt i32 %and104, 63
  %masksel = select i1 %cmp111, i32 -128, i32 0
  %spec.select = or i32 %masksel, %and104
  %125 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %spec.select, ptr %arrayidx107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %and99)
  %cmp121 = icmp ugt i32 %and99, 63
  br i1 %cmp121, label %if.then123, label %if.end98.for.inc129_crit_edge

if.end98.for.inc129_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc129

if.then123:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  %sub127 = or i32 %121, -128
  %126 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %sub127, ptr %arrayidx102, align 4
  br label %for.inc129

for.inc129:                                       ; preds = %if.then123, %if.end98.for.inc129_crit_edge
  %inc130 = add nuw nsw i32 %im.0299, 1
  %exitcond.not = icmp eq i32 %inc130, %13
  br i1 %exitcond.not, label %for.inc129.for.inc132_crit_edge, label %for.inc129.do.body_crit_edge

for.inc129.do.body_crit_edge:                     ; preds = %for.inc129
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

for.inc129.for.inc132_crit_edge:                  ; preds = %for.inc129
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc132

for.inc132:                                       ; preds = %for.inc129.for.inc132_crit_edge, %if.end.for.inc132_crit_edge, %for.body.for.inc132_crit_edge
  %nmeasurement.1 = phi i32 [ %nmeasurement.0303, %for.body.for.inc132_crit_edge ], [ 0, %if.end.for.inc132_crit_edge ], [ %13, %for.inc129.for.inc132_crit_edge ]
  %inc133 = add nuw nsw i32 %i.0300, 1
  %exitcond343.not = icmp eq i32 %inc133, 3
  br i1 %exitcond343.not, label %for.end134, label %for.inc132.for.body_crit_edge

for.inc132.for.body_crit_edge:                    ; preds = %for.inc132
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end134:                                       ; preds = %for.inc132
  %127 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %128)
  %cmp137 = icmp eq i32 %128, 1024
  br i1 %cmp137, label %if.then139, label %for.end134.if.then144_crit_edge

for.end134.if.then144_crit_edge:                  ; preds = %for.end134
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then144

if.then139:                                       ; preds = %for.end134
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %iqcal_idx)
  %cmp.not.i = icmp eq i32 %iqcal_idx, 2
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %if.then139.cleanup_crit_edge

if.then139.cleanup_crit_edge:                     ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.then139
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nmeasurement.1)
  %cmp4.i.i = icmp sgt i32 %nmeasurement.1, 0
  br label %for.body.i

for.body.i:                                       ; preds = %__ar955x_tx_iq_cal_sort.exit.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.01.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %__ar955x_tx_iq_cal_sort.exit.i.for.body.i_crit_edge ]
  br i1 %cmp4.i.i, label %for.body.i.for.body6.lr.ph.i.i_crit_edge, label %for.body.i.__ar955x_tx_iq_cal_sort.exit.i_crit_edge

for.body.i.__ar955x_tx_iq_cal_sort.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__ar955x_tx_iq_cal_sort.exit.i

for.body.i.for.body6.lr.ph.i.i_crit_edge:         ; preds = %for.body.i
  br label %for.body6.lr.ph.i.i

for.body6.lr.ph.1.i.i:                            ; preds = %do.body39.115.i.i, %if.end.114.i.i.for.body6.lr.ph.1.i.i_crit_edge
  %129 = ptrtoint ptr %arrayidx8.18.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx8.18.i.i, align 4
  %131 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx8.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %132)
  %cmp13.1.i.i = icmp slt i32 %130, %132
  br i1 %cmp13.1.i.i, label %do.body.1.i.i, label %for.body6.lr.ph.1.i.i.if.end.1.i.i_crit_edge

for.body6.lr.ph.1.i.i.if.end.1.i.i_crit_edge:     ; preds = %for.body6.lr.ph.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.1.i.i

do.body.1.i.i:                                    ; preds = %for.body6.lr.ph.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %133 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %130, ptr %arrayidx8.i.i, align 4
  %134 = ptrtoint ptr %arrayidx8.18.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %132, ptr %arrayidx8.18.i.i, align 4
  br label %if.end.1.i.i

if.end.1.i.i:                                     ; preds = %do.body.1.i.i, %for.body6.lr.ph.1.i.i.if.end.1.i.i_crit_edge
  %135 = ptrtoint ptr %arrayidx32.112.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx32.112.i.i, align 4
  %137 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx32.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %138)
  %cmp37.1.i.i = icmp slt i32 %136, %138
  br i1 %cmp37.1.i.i, label %do.body39.1.i.i, label %if.end.1.i.i.for.cond1.loopexit.1.i.i_crit_edge

if.end.1.i.i.for.cond1.loopexit.1.i.i_crit_edge:  ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond1.loopexit.1.i.i

do.body39.1.i.i:                                  ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %139 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %136, ptr %arrayidx32.i.i, align 4
  %140 = ptrtoint ptr %arrayidx32.112.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %138, ptr %arrayidx32.112.i.i, align 4
  br label %for.cond1.loopexit.1.i.i

for.cond1.loopexit.1.i.i:                         ; preds = %do.body39.1.i.i, %if.end.1.i.i.for.cond1.loopexit.1.i.i_crit_edge
  %141 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx8.i.i, align 4
  %143 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %arrayidx12.i.i, align 4
  %144 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx32.i.i, align 4
  %146 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %arrayidx36.i.i, align 4
  %147 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %debug_mask, align 4
  %and.i.i233 = and i32 %148, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i233)
  %tobool.not.i.i234 = icmp eq i32 %and.i.i233, 0
  br i1 %tobool.not.i.i234, label %for.cond1.loopexit.1.i.i.for.inc92.i.i_crit_edge, label %if.then80.i.i

for.cond1.loopexit.1.i.i.for.inc92.i.i_crit_edge: ; preds = %for.cond1.loopexit.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc92.i.i

for.body6.lr.ph.i.i:                              ; preds = %for.inc92.i.i.for.body6.lr.ph.i.i_crit_edge, %for.body.i.for.body6.lr.ph.i.i_crit_edge
  %im.05.i.i = phi i32 [ %inc93.i.i, %for.inc92.i.i.for.body6.lr.ph.i.i_crit_edge ], [ 0, %for.body.i.for.body6.lr.ph.i.i_crit_edge ]
  %arrayidx12.i.i = getelementptr [3 x [8 x [3 x i32]]], ptr @ar9003_hw_tx_iq_cal_post_proc.coeff, i32 0, i32 %i.01.i, i32 %im.05.i.i, i32 0
  %arrayidx36.i.i = getelementptr %struct.coeff, ptr @ar9003_hw_tx_iq_cal_post_proc.coeff, i32 0, i32 1, i32 %i.01.i, i32 %im.05.i.i, i32 0
  %arrayidx8.i.i = getelementptr [3 x [8 x [3 x i32]]], ptr @ar9003_hw_tx_iq_cal_post_proc.coeff, i32 0, i32 %i.01.i, i32 %im.05.i.i, i32 1
  %149 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx8.i.i, align 4
  %151 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx12.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %150, i32 %152)
  %cmp13.i.i = icmp slt i32 %150, %152
  br i1 %cmp13.i.i, label %do.body.i.i235, label %for.body6.lr.ph.i.i.if.end.i.i_crit_edge

for.body6.lr.ph.i.i.if.end.i.i_crit_edge:         ; preds = %for.body6.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

do.body.i.i235:                                   ; preds = %for.body6.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %153 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %150, ptr %arrayidx12.i.i, align 4
  %154 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %152, ptr %arrayidx8.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body.i.i235, %for.body6.lr.ph.i.i.if.end.i.i_crit_edge
  %arrayidx32.i.i = getelementptr %struct.coeff, ptr @ar9003_hw_tx_iq_cal_post_proc.coeff, i32 0, i32 1, i32 %i.01.i, i32 %im.05.i.i, i32 1
  %155 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx32.i.i, align 4
  %157 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx36.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %156, i32 %158)
  %cmp37.i.i = icmp slt i32 %156, %158
  br i1 %cmp37.i.i, label %do.body39.i.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

do.body39.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %159 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %156, ptr %arrayidx36.i.i, align 4
  %160 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %158, ptr %arrayidx32.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.body39.i.i, %if.end.i.i.for.inc.i.i_crit_edge
  %arrayidx8.18.i.i = getelementptr [3 x [8 x [3 x i32]]], ptr @ar9003_hw_tx_iq_cal_post_proc.coeff, i32 0, i32 %i.01.i, i32 %im.05.i.i, i32 2
  %161 = ptrtoint ptr %arrayidx8.18.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx8.18.i.i, align 4
  %163 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx12.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %162, i32 %164)
  %cmp13.19.i.i = icmp slt i32 %162, %164
  br i1 %cmp13.19.i.i, label %do.body.111.i.i, label %for.inc.i.i.if.end.114.i.i_crit_edge

for.inc.i.i.if.end.114.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.114.i.i

do.body.111.i.i:                                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %165 = ptrtoint ptr %arrayidx8.18.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %arrayidx8.18.i.i, align 4
  br label %if.end.114.i.i

if.end.114.i.i:                                   ; preds = %do.body.111.i.i, %for.inc.i.i.if.end.114.i.i_crit_edge
  %arrayidx32.112.i.i = getelementptr %struct.coeff, ptr @ar9003_hw_tx_iq_cal_post_proc.coeff, i32 0, i32 1, i32 %i.01.i, i32 %im.05.i.i, i32 2
  %166 = ptrtoint ptr %arrayidx32.112.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx32.112.i.i, align 4
  %168 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx36.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %167, i32 %169)
  %cmp37.113.i.i = icmp slt i32 %167, %169
  br i1 %cmp37.113.i.i, label %do.body39.115.i.i, label %if.end.114.i.i.for.body6.lr.ph.1.i.i_crit_edge

if.end.114.i.i.for.body6.lr.ph.1.i.i_crit_edge:   ; preds = %if.end.114.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body6.lr.ph.1.i.i

do.body39.115.i.i:                                ; preds = %if.end.114.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %170 = ptrtoint ptr %arrayidx32.112.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %arrayidx32.112.i.i, align 4
  br label %for.body6.lr.ph.1.i.i

if.then80.i.i:                                    ; preds = %for.cond1.loopexit.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.21, i32 noundef %i.01.i, i32 noundef %im.05.i.i, i32 noundef %142, i32 noundef %145) #5
  br label %for.inc92.i.i

for.inc92.i.i:                                    ; preds = %if.then80.i.i, %for.cond1.loopexit.1.i.i.for.inc92.i.i_crit_edge
  %inc93.i.i = add nuw nsw i32 %im.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc93.i.i, %nmeasurement.1
  br i1 %exitcond.not.i.i, label %for.inc92.i.i.__ar955x_tx_iq_cal_sort.exit.i_crit_edge, label %for.inc92.i.i.for.body6.lr.ph.i.i_crit_edge

for.inc92.i.i.for.body6.lr.ph.i.i_crit_edge:      ; preds = %for.inc92.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body6.lr.ph.i.i

for.inc92.i.i.__ar955x_tx_iq_cal_sort.exit.i_crit_edge: ; preds = %for.inc92.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__ar955x_tx_iq_cal_sort.exit.i

__ar955x_tx_iq_cal_sort.exit.i:                   ; preds = %for.inc92.i.i.__ar955x_tx_iq_cal_sort.exit.i_crit_edge, %for.body.i.__ar955x_tx_iq_cal_sort.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 3
  br i1 %exitcond.not.i, label %if.then144thread-pre-split, label %__ar955x_tx_iq_cal_sort.exit.i.for.body.i_crit_edge

__ar955x_tx_iq_cal_sort.exit.i.for.body.i_crit_edge: ; preds = %__ar955x_tx_iq_cal_sort.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.then144thread-pre-split:                       ; preds = %__ar955x_tx_iq_cal_sort.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %171 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %171)
  %.pr = load i32, ptr %macVersion, align 4
  br label %if.then144

if.then144:                                       ; preds = %if.then144thread-pre-split, %for.end134.if.then144_crit_edge
  %172 = phi i32 [ %.pr, %if.then144thread-pre-split ], [ %128, %for.end134.if.then144_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tx_corr_coeff.i) #5
  %caldata1.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 31
  %173 = ptrtoint ptr %caldata1.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %caldata1.i, align 4
  %175 = getelementptr inbounds i8, ptr %tx_corr_coeff.i, i32 4
  %176 = call ptr @memset(ptr %175, i32 0, i32 92)
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %172)
  %cmp2.i = icmp eq i32 %172, 576
  %add.i236 = select i1 %cmp2.i, i32 42448, i32 42576
  %arrayidx.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 1
  %177 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %add.i236, ptr %arrayidx.i, align 4
  %178 = ptrtoint ptr %tx_corr_coeff.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %add.i236, ptr %tx_corr_coeff.i, align 4
  br i1 %cmp2.i, label %for.inc.2.thread.i, label %if.then.3.i

for.inc.2.thread.i:                               ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #7
  %add3.172.i = or i32 %add.i236, 4
  %arrayidx.173.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 3
  %179 = ptrtoint ptr %arrayidx.173.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %add3.172.i, ptr %arrayidx.173.i, align 4
  br label %for.inc.3.i

if.then.3.i:                                      ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx17.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 1, i32 1
  %180 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 46672, ptr %arrayidx17.i, align 4
  %181 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 46672, ptr %175, align 4
  %arrayidx26.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 1, i32 2
  %182 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 50768, ptr %arrayidx26.i, align 4
  %arrayidx29.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 0, i32 2
  %183 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 50768, ptr %arrayidx29.i, align 4
  %add3.1.i = or i32 %add.i236, 4
  %arrayidx.1.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 3
  %184 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %add3.1.i, ptr %arrayidx.1.i, align 4
  %arrayidx17.1.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 3, i32 1
  %185 = ptrtoint ptr %arrayidx17.1.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 46676, ptr %arrayidx17.1.i, align 4
  %arrayidx20.1.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 2, i32 1
  %186 = ptrtoint ptr %arrayidx20.1.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 46676, ptr %arrayidx20.1.i, align 4
  %arrayidx26.1.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 3, i32 2
  %187 = ptrtoint ptr %arrayidx26.1.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 50772, ptr %arrayidx26.1.i, align 4
  %arrayidx29.1.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 2, i32 2
  %188 = ptrtoint ptr %arrayidx29.1.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 50772, ptr %arrayidx29.1.i, align 4
  %arrayidx17.2.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 5, i32 1
  %189 = ptrtoint ptr %arrayidx17.2.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 46680, ptr %arrayidx17.2.i, align 4
  %arrayidx20.2.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 4, i32 1
  %190 = ptrtoint ptr %arrayidx20.2.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 46680, ptr %arrayidx20.2.i, align 4
  %arrayidx26.2.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 5, i32 2
  %191 = ptrtoint ptr %arrayidx26.2.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 50776, ptr %arrayidx26.2.i, align 4
  %arrayidx29.2.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 4, i32 2
  %192 = ptrtoint ptr %arrayidx29.2.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 50776, ptr %arrayidx29.2.i, align 4
  %arrayidx17.3.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 7, i32 1
  %193 = ptrtoint ptr %arrayidx17.3.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 46684, ptr %arrayidx17.3.i, align 4
  %arrayidx20.3.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 6, i32 1
  %194 = ptrtoint ptr %arrayidx20.3.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 46684, ptr %arrayidx20.3.i, align 4
  %arrayidx26.3.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 7, i32 2
  %195 = ptrtoint ptr %arrayidx26.3.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 50780, ptr %arrayidx26.3.i, align 4
  %arrayidx29.3.i = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 6, i32 2
  %196 = ptrtoint ptr %arrayidx29.3.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 50780, ptr %arrayidx29.3.i, align 4
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then.3.i, %for.inc.2.thread.i
  %add3.1.i.sink = phi i32 [ %add3.172.i, %for.inc.2.thread.i ], [ %add3.1.i, %if.then.3.i ]
  %add3.3.i.sink344 = or i32 %add.i236, 12
  %add3.2.i.sink345 = or i32 %add.i236, 8
  %197 = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 2
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %add3.1.i.sink, ptr %197, align 4
  %199 = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 5
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %add3.2.i.sink345, ptr %199, align 4
  %201 = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 4
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %add3.2.i.sink345, ptr %201, align 4
  %203 = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 7
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %add3.3.i.sink344, ptr %203, align 4
  %205 = getelementptr inbounds [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 6
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %add3.3.i.sink344, ptr %205, align 4
  %tobool98.not.i = icmp eq ptr %174, null
  br label %for.body32.i

for.body32.i:                                     ; preds = %for.inc113.i.for.body32.i_crit_edge, %for.inc.3.i
  %i.167.i = phi i32 [ 0, %for.inc.3.i ], [ %inc114.i, %for.inc113.i.for.body32.i_crit_edge ]
  %207 = ptrtoint ptr %txchainmask to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %txchainmask, align 4
  %conv.i = zext i8 %208 to i32
  %shl33.i = shl nuw nsw i32 1, %i.167.i
  %and.i237 = and i32 %shl33.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i237)
  %tobool.not.i238 = icmp eq i32 %and.i237, 0
  br i1 %tobool.not.i238, label %for.body32.i.for.inc113.i_crit_edge, label %if.end35.i

for.body32.i.for.inc113.i_crit_edge:              ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc113.i

if.end35.i:                                       ; preds = %for.body32.i
  %209 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %ah, align 4
  %211 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %212)
  %cmp38.i = icmp eq i32 %212, 576
  %add41.i = select i1 %cmp38.i, i32 42480, i32 42636
  %call.i = tail call i32 %210(ptr noundef %ah, i32 noundef %add41.i) #5
  %and42.i = lshr i32 %call.i, 1
  %shr.i = and i32 %and42.i, 31
  %213 = tail call i32 @llvm.umin.i32(i32 %shr.i, i32 8) #5
  %214 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %215)
  %cmp49.i = icmp ne i32 %215, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %213)
  %cmp52.i = icmp ugt i32 %213, 1
  %or.cond.i239 = select i1 %cmp49.i, i1 %cmp52.i, i1 false
  br i1 %or.cond.i239, label %if.then54.i, label %if.end35.i.if.end60.i_crit_edge

if.end35.i.if.end60.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60.i

if.then54.i:                                      ; preds = %if.end35.i
  %arrayidx55.i = getelementptr [3 x [8 x [3 x i32]]], ptr @ar9003_hw_tx_iq_cal_post_proc.coeff, i32 0, i32 %i.167.i
  %216 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx55.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %217)
  %cmp2.i.i = icmp sgt i32 %217, -64
  %mp_min.1.i.i = select i1 %cmp2.i.i, i32 63, i32 %217
  %mp_max.1.i.i = select i1 %cmp2.i.i, i32 %217, i32 -64
  %arrayidx.i.i.1 = getelementptr [3 x i32], ptr %arrayidx55.i, i32 1
  %218 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx.i.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %219, i32 %mp_max.1.i.i)
  %cmp2.i.i.1 = icmp sgt i32 %219, %mp_max.1.i.i
  br i1 %cmp2.i.i.1, label %if.then54.i.for.inc.i.i241.1_crit_edge, label %if.else.i.i.1

if.then54.i.for.inc.i.i241.1_crit_edge:           ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i241.1

for.body14.lr.ph.i.i:                             ; preds = %if.else.i.i.7, %for.body.i.i.7.for.body14.lr.ph.i.i_crit_edge, %for.inc.i.i241.6.for.body14.lr.ph.i.i_crit_edge, %for.inc.i.i241.5.for.body14.lr.ph.i.i_crit_edge, %for.inc.i.i241.4.for.body14.lr.ph.i.i_crit_edge, %for.inc.i.i241.3.for.body14.lr.ph.i.i_crit_edge, %for.inc.i.i241.2.for.body14.lr.ph.i.i_crit_edge, %for.inc.i.i241.1.for.body14.lr.ph.i.i_crit_edge
  %min_idx.1.i.i.lcssa = phi i32 [ %min_idx.1.i.i.1, %for.inc.i.i241.1.for.body14.lr.ph.i.i_crit_edge ], [ %min_idx.1.i.i.2, %for.inc.i.i241.2.for.body14.lr.ph.i.i_crit_edge ], [ %min_idx.1.i.i.3, %for.inc.i.i241.3.for.body14.lr.ph.i.i_crit_edge ], [ %min_idx.1.i.i.4, %for.inc.i.i241.4.for.body14.lr.ph.i.i_crit_edge ], [ %min_idx.1.i.i.5, %for.inc.i.i241.5.for.body14.lr.ph.i.i_crit_edge ], [ %min_idx.1.i.i.6, %for.inc.i.i241.6.for.body14.lr.ph.i.i_crit_edge ], [ %min_idx.1.i.i.6, %for.body.i.i.7.for.body14.lr.ph.i.i_crit_edge ], [ %spec.select.i.i.7, %if.else.i.i.7 ]
  %mp_min.1.i.i.lcssa = phi i32 [ %mp_min.1.i.i.1, %for.inc.i.i241.1.for.body14.lr.ph.i.i_crit_edge ], [ %mp_min.1.i.i.2, %for.inc.i.i241.2.for.body14.lr.ph.i.i_crit_edge ], [ %mp_min.1.i.i.3, %for.inc.i.i241.3.for.body14.lr.ph.i.i_crit_edge ], [ %mp_min.1.i.i.4, %for.inc.i.i241.4.for.body14.lr.ph.i.i_crit_edge ], [ %mp_min.1.i.i.5, %for.inc.i.i241.5.for.body14.lr.ph.i.i_crit_edge ], [ %mp_min.1.i.i.6, %for.inc.i.i241.6.for.body14.lr.ph.i.i_crit_edge ], [ %mp_min.1.i.i.6, %for.body.i.i.7.for.body14.lr.ph.i.i_crit_edge ], [ %240, %if.else.i.i.7 ]
  %max_idx.1.i.i.lcssa = phi i32 [ %max_idx.1.i.i.1, %for.inc.i.i241.1.for.body14.lr.ph.i.i_crit_edge ], [ %max_idx.1.i.i.2, %for.inc.i.i241.2.for.body14.lr.ph.i.i_crit_edge ], [ %max_idx.1.i.i.3, %for.inc.i.i241.3.for.body14.lr.ph.i.i_crit_edge ], [ %max_idx.1.i.i.4, %for.inc.i.i241.4.for.body14.lr.ph.i.i_crit_edge ], [ %max_idx.1.i.i.5, %for.inc.i.i241.5.for.body14.lr.ph.i.i_crit_edge ], [ %max_idx.1.i.i.6, %for.inc.i.i241.6.for.body14.lr.ph.i.i_crit_edge ], [ 7, %for.body.i.i.7.for.body14.lr.ph.i.i_crit_edge ], [ %max_idx.1.i.i.6, %if.else.i.i.7 ]
  %mp_max.1.i.i.lcssa = phi i32 [ %mp_max.1.i.i.1, %for.inc.i.i241.1.for.body14.lr.ph.i.i_crit_edge ], [ %mp_max.1.i.i.2, %for.inc.i.i241.2.for.body14.lr.ph.i.i_crit_edge ], [ %mp_max.1.i.i.3, %for.inc.i.i241.3.for.body14.lr.ph.i.i_crit_edge ], [ %mp_max.1.i.i.4, %for.inc.i.i241.4.for.body14.lr.ph.i.i_crit_edge ], [ %mp_max.1.i.i.5, %for.inc.i.i241.5.for.body14.lr.ph.i.i_crit_edge ], [ %mp_max.1.i.i.6, %for.inc.i.i241.6.for.body14.lr.ph.i.i_crit_edge ], [ %239, %for.body.i.i.7.for.body14.lr.ph.i.i_crit_edge ], [ %mp_max.1.i.i.6, %if.else.i.i.7 ]
  %220 = tail call i32 @llvm.abs.i32(i32 %mp_max.1.i.i.lcssa, i1 false) #5
  %221 = tail call i32 @llvm.abs.i32(i32 %mp_min.1.i.i.lcssa, i1 false) #5
  br label %for.body14.i.i

if.else.i.i.1:                                    ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %219, i32 %mp_min.1.i.i)
  %cmp7.i.i.1 = icmp slt i32 %219, %mp_min.1.i.i
  %spec.select.i.i.1 = zext i1 %cmp7.i.i.1 to i32
  %222 = tail call i32 @llvm.smin.i32(i32 %219, i32 %mp_min.1.i.i) #5
  br label %for.inc.i.i241.1

for.inc.i.i241.1:                                 ; preds = %if.else.i.i.1, %if.then54.i.for.inc.i.i241.1_crit_edge
  %min_idx.1.i.i.1 = phi i32 [ 0, %if.then54.i.for.inc.i.i241.1_crit_edge ], [ %spec.select.i.i.1, %if.else.i.i.1 ]
  %mp_min.1.i.i.1 = phi i32 [ %mp_min.1.i.i, %if.then54.i.for.inc.i.i241.1_crit_edge ], [ %222, %if.else.i.i.1 ]
  %max_idx.1.i.i.1 = phi i32 [ 1, %if.then54.i.for.inc.i.i241.1_crit_edge ], [ 0, %if.else.i.i.1 ]
  %mp_max.1.i.i.1 = phi i32 [ %219, %if.then54.i.for.inc.i.i241.1_crit_edge ], [ %mp_max.1.i.i, %if.else.i.i.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %213)
  %exitcond.not.i.i240.1 = icmp eq i32 %213, 2
  br i1 %exitcond.not.i.i240.1, label %for.inc.i.i241.1.for.body14.lr.ph.i.i_crit_edge, label %for.body.i.i.2

for.inc.i.i241.1.for.body14.lr.ph.i.i_crit_edge:  ; preds = %for.inc.i.i241.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body14.lr.ph.i.i

for.body.i.i.2:                                   ; preds = %for.inc.i.i241.1
  %arrayidx.i.i.2 = getelementptr [3 x i32], ptr %arrayidx55.i, i32 2
  %223 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %arrayidx.i.i.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %224, i32 %mp_max.1.i.i.1)
  %cmp2.i.i.2 = icmp sgt i32 %224, %mp_max.1.i.i.1
  br i1 %cmp2.i.i.2, label %for.body.i.i.2.for.inc.i.i241.2_crit_edge, label %if.else.i.i.2

for.body.i.i.2.for.inc.i.i241.2_crit_edge:        ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i241.2

if.else.i.i.2:                                    ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %224, i32 %mp_min.1.i.i.1)
  %cmp7.i.i.2 = icmp slt i32 %224, %mp_min.1.i.i.1
  %spec.select.i.i.2 = select i1 %cmp7.i.i.2, i32 2, i32 %min_idx.1.i.i.1
  %225 = tail call i32 @llvm.smin.i32(i32 %224, i32 %mp_min.1.i.i.1) #5
  br label %for.inc.i.i241.2

for.inc.i.i241.2:                                 ; preds = %if.else.i.i.2, %for.body.i.i.2.for.inc.i.i241.2_crit_edge
  %min_idx.1.i.i.2 = phi i32 [ %min_idx.1.i.i.1, %for.body.i.i.2.for.inc.i.i241.2_crit_edge ], [ %spec.select.i.i.2, %if.else.i.i.2 ]
  %mp_min.1.i.i.2 = phi i32 [ %mp_min.1.i.i.1, %for.body.i.i.2.for.inc.i.i241.2_crit_edge ], [ %225, %if.else.i.i.2 ]
  %max_idx.1.i.i.2 = phi i32 [ 2, %for.body.i.i.2.for.inc.i.i241.2_crit_edge ], [ %max_idx.1.i.i.1, %if.else.i.i.2 ]
  %mp_max.1.i.i.2 = phi i32 [ %224, %for.body.i.i.2.for.inc.i.i241.2_crit_edge ], [ %mp_max.1.i.i.1, %if.else.i.i.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %213)
  %exitcond.not.i.i240.2 = icmp eq i32 %213, 3
  br i1 %exitcond.not.i.i240.2, label %for.inc.i.i241.2.for.body14.lr.ph.i.i_crit_edge, label %for.body.i.i.3

for.inc.i.i241.2.for.body14.lr.ph.i.i_crit_edge:  ; preds = %for.inc.i.i241.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body14.lr.ph.i.i

for.body.i.i.3:                                   ; preds = %for.inc.i.i241.2
  %arrayidx.i.i.3 = getelementptr [3 x i32], ptr %arrayidx55.i, i32 3
  %226 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %arrayidx.i.i.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %227, i32 %mp_max.1.i.i.2)
  %cmp2.i.i.3 = icmp sgt i32 %227, %mp_max.1.i.i.2
  br i1 %cmp2.i.i.3, label %for.body.i.i.3.for.inc.i.i241.3_crit_edge, label %if.else.i.i.3

for.body.i.i.3.for.inc.i.i241.3_crit_edge:        ; preds = %for.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i241.3

if.else.i.i.3:                                    ; preds = %for.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %227, i32 %mp_min.1.i.i.2)
  %cmp7.i.i.3 = icmp slt i32 %227, %mp_min.1.i.i.2
  %spec.select.i.i.3 = select i1 %cmp7.i.i.3, i32 3, i32 %min_idx.1.i.i.2
  %228 = tail call i32 @llvm.smin.i32(i32 %227, i32 %mp_min.1.i.i.2) #5
  br label %for.inc.i.i241.3

for.inc.i.i241.3:                                 ; preds = %if.else.i.i.3, %for.body.i.i.3.for.inc.i.i241.3_crit_edge
  %min_idx.1.i.i.3 = phi i32 [ %min_idx.1.i.i.2, %for.body.i.i.3.for.inc.i.i241.3_crit_edge ], [ %spec.select.i.i.3, %if.else.i.i.3 ]
  %mp_min.1.i.i.3 = phi i32 [ %mp_min.1.i.i.2, %for.body.i.i.3.for.inc.i.i241.3_crit_edge ], [ %228, %if.else.i.i.3 ]
  %max_idx.1.i.i.3 = phi i32 [ 3, %for.body.i.i.3.for.inc.i.i241.3_crit_edge ], [ %max_idx.1.i.i.2, %if.else.i.i.3 ]
  %mp_max.1.i.i.3 = phi i32 [ %227, %for.body.i.i.3.for.inc.i.i241.3_crit_edge ], [ %mp_max.1.i.i.2, %if.else.i.i.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %213)
  %exitcond.not.i.i240.3 = icmp eq i32 %213, 4
  br i1 %exitcond.not.i.i240.3, label %for.inc.i.i241.3.for.body14.lr.ph.i.i_crit_edge, label %for.body.i.i.4

for.inc.i.i241.3.for.body14.lr.ph.i.i_crit_edge:  ; preds = %for.inc.i.i241.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body14.lr.ph.i.i

for.body.i.i.4:                                   ; preds = %for.inc.i.i241.3
  %arrayidx.i.i.4 = getelementptr [3 x i32], ptr %arrayidx55.i, i32 4
  %229 = ptrtoint ptr %arrayidx.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %arrayidx.i.i.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %230, i32 %mp_max.1.i.i.3)
  %cmp2.i.i.4 = icmp sgt i32 %230, %mp_max.1.i.i.3
  br i1 %cmp2.i.i.4, label %for.body.i.i.4.for.inc.i.i241.4_crit_edge, label %if.else.i.i.4

for.body.i.i.4.for.inc.i.i241.4_crit_edge:        ; preds = %for.body.i.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i241.4

if.else.i.i.4:                                    ; preds = %for.body.i.i.4
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %230, i32 %mp_min.1.i.i.3)
  %cmp7.i.i.4 = icmp slt i32 %230, %mp_min.1.i.i.3
  %spec.select.i.i.4 = select i1 %cmp7.i.i.4, i32 4, i32 %min_idx.1.i.i.3
  %231 = tail call i32 @llvm.smin.i32(i32 %230, i32 %mp_min.1.i.i.3) #5
  br label %for.inc.i.i241.4

for.inc.i.i241.4:                                 ; preds = %if.else.i.i.4, %for.body.i.i.4.for.inc.i.i241.4_crit_edge
  %min_idx.1.i.i.4 = phi i32 [ %min_idx.1.i.i.3, %for.body.i.i.4.for.inc.i.i241.4_crit_edge ], [ %spec.select.i.i.4, %if.else.i.i.4 ]
  %mp_min.1.i.i.4 = phi i32 [ %mp_min.1.i.i.3, %for.body.i.i.4.for.inc.i.i241.4_crit_edge ], [ %231, %if.else.i.i.4 ]
  %max_idx.1.i.i.4 = phi i32 [ 4, %for.body.i.i.4.for.inc.i.i241.4_crit_edge ], [ %max_idx.1.i.i.3, %if.else.i.i.4 ]
  %mp_max.1.i.i.4 = phi i32 [ %230, %for.body.i.i.4.for.inc.i.i241.4_crit_edge ], [ %mp_max.1.i.i.3, %if.else.i.i.4 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %213)
  %exitcond.not.i.i240.4 = icmp eq i32 %213, 5
  br i1 %exitcond.not.i.i240.4, label %for.inc.i.i241.4.for.body14.lr.ph.i.i_crit_edge, label %for.body.i.i.5

for.inc.i.i241.4.for.body14.lr.ph.i.i_crit_edge:  ; preds = %for.inc.i.i241.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body14.lr.ph.i.i

for.body.i.i.5:                                   ; preds = %for.inc.i.i241.4
  %arrayidx.i.i.5 = getelementptr [3 x i32], ptr %arrayidx55.i, i32 5
  %232 = ptrtoint ptr %arrayidx.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx.i.i.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %233, i32 %mp_max.1.i.i.4)
  %cmp2.i.i.5 = icmp sgt i32 %233, %mp_max.1.i.i.4
  br i1 %cmp2.i.i.5, label %for.body.i.i.5.for.inc.i.i241.5_crit_edge, label %if.else.i.i.5

for.body.i.i.5.for.inc.i.i241.5_crit_edge:        ; preds = %for.body.i.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i241.5

if.else.i.i.5:                                    ; preds = %for.body.i.i.5
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %233, i32 %mp_min.1.i.i.4)
  %cmp7.i.i.5 = icmp slt i32 %233, %mp_min.1.i.i.4
  %spec.select.i.i.5 = select i1 %cmp7.i.i.5, i32 5, i32 %min_idx.1.i.i.4
  %234 = tail call i32 @llvm.smin.i32(i32 %233, i32 %mp_min.1.i.i.4) #5
  br label %for.inc.i.i241.5

for.inc.i.i241.5:                                 ; preds = %if.else.i.i.5, %for.body.i.i.5.for.inc.i.i241.5_crit_edge
  %min_idx.1.i.i.5 = phi i32 [ %min_idx.1.i.i.4, %for.body.i.i.5.for.inc.i.i241.5_crit_edge ], [ %spec.select.i.i.5, %if.else.i.i.5 ]
  %mp_min.1.i.i.5 = phi i32 [ %mp_min.1.i.i.4, %for.body.i.i.5.for.inc.i.i241.5_crit_edge ], [ %234, %if.else.i.i.5 ]
  %max_idx.1.i.i.5 = phi i32 [ 5, %for.body.i.i.5.for.inc.i.i241.5_crit_edge ], [ %max_idx.1.i.i.4, %if.else.i.i.5 ]
  %mp_max.1.i.i.5 = phi i32 [ %233, %for.body.i.i.5.for.inc.i.i241.5_crit_edge ], [ %mp_max.1.i.i.4, %if.else.i.i.5 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %213)
  %exitcond.not.i.i240.5 = icmp eq i32 %213, 6
  br i1 %exitcond.not.i.i240.5, label %for.inc.i.i241.5.for.body14.lr.ph.i.i_crit_edge, label %for.body.i.i.6

for.inc.i.i241.5.for.body14.lr.ph.i.i_crit_edge:  ; preds = %for.inc.i.i241.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body14.lr.ph.i.i

for.body.i.i.6:                                   ; preds = %for.inc.i.i241.5
  %arrayidx.i.i.6 = getelementptr [3 x i32], ptr %arrayidx55.i, i32 6
  %235 = ptrtoint ptr %arrayidx.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %arrayidx.i.i.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %236, i32 %mp_max.1.i.i.5)
  %cmp2.i.i.6 = icmp sgt i32 %236, %mp_max.1.i.i.5
  br i1 %cmp2.i.i.6, label %for.body.i.i.6.for.inc.i.i241.6_crit_edge, label %if.else.i.i.6

for.body.i.i.6.for.inc.i.i241.6_crit_edge:        ; preds = %for.body.i.i.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i241.6

if.else.i.i.6:                                    ; preds = %for.body.i.i.6
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %236, i32 %mp_min.1.i.i.5)
  %cmp7.i.i.6 = icmp slt i32 %236, %mp_min.1.i.i.5
  %spec.select.i.i.6 = select i1 %cmp7.i.i.6, i32 6, i32 %min_idx.1.i.i.5
  %237 = tail call i32 @llvm.smin.i32(i32 %236, i32 %mp_min.1.i.i.5) #5
  br label %for.inc.i.i241.6

for.inc.i.i241.6:                                 ; preds = %if.else.i.i.6, %for.body.i.i.6.for.inc.i.i241.6_crit_edge
  %min_idx.1.i.i.6 = phi i32 [ %min_idx.1.i.i.5, %for.body.i.i.6.for.inc.i.i241.6_crit_edge ], [ %spec.select.i.i.6, %if.else.i.i.6 ]
  %mp_min.1.i.i.6 = phi i32 [ %mp_min.1.i.i.5, %for.body.i.i.6.for.inc.i.i241.6_crit_edge ], [ %237, %if.else.i.i.6 ]
  %max_idx.1.i.i.6 = phi i32 [ 6, %for.body.i.i.6.for.inc.i.i241.6_crit_edge ], [ %max_idx.1.i.i.5, %if.else.i.i.6 ]
  %mp_max.1.i.i.6 = phi i32 [ %236, %for.body.i.i.6.for.inc.i.i241.6_crit_edge ], [ %mp_max.1.i.i.5, %if.else.i.i.6 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %213)
  %exitcond.not.i.i240.6 = icmp eq i32 %213, 7
  br i1 %exitcond.not.i.i240.6, label %for.inc.i.i241.6.for.body14.lr.ph.i.i_crit_edge, label %for.body.i.i.7

for.inc.i.i241.6.for.body14.lr.ph.i.i_crit_edge:  ; preds = %for.inc.i.i241.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body14.lr.ph.i.i

for.body.i.i.7:                                   ; preds = %for.inc.i.i241.6
  %arrayidx.i.i.7 = getelementptr [3 x i32], ptr %arrayidx55.i, i32 7
  %238 = ptrtoint ptr %arrayidx.i.i.7 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %arrayidx.i.i.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %239, i32 %mp_max.1.i.i.6)
  %cmp2.i.i.7 = icmp sgt i32 %239, %mp_max.1.i.i.6
  br i1 %cmp2.i.i.7, label %for.body.i.i.7.for.body14.lr.ph.i.i_crit_edge, label %if.else.i.i.7

for.body.i.i.7.for.body14.lr.ph.i.i_crit_edge:    ; preds = %for.body.i.i.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body14.lr.ph.i.i

if.else.i.i.7:                                    ; preds = %for.body.i.i.7
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %239, i32 %mp_min.1.i.i.6)
  %cmp7.i.i.7 = icmp slt i32 %239, %mp_min.1.i.i.6
  %spec.select.i.i.7 = select i1 %cmp7.i.i.7, i32 7, i32 %min_idx.1.i.i.6
  %240 = tail call i32 @llvm.smin.i32(i32 %239, i32 %mp_min.1.i.i.6) #5
  br label %for.body14.lr.ph.i.i

for.body14.i.i:                                   ; preds = %for.body14.i.i.for.body14.i.i_crit_edge, %for.body14.lr.ph.i.i
  %mp_avg.0162.i.i = phi i32 [ 0, %for.body14.lr.ph.i.i ], [ %mp_avg.1.i.i, %for.body14.i.i.for.body14.i.i_crit_edge ]
  %i.1161.i.i = phi i32 [ 0, %for.body14.lr.ph.i.i ], [ %inc52.i.i, %for.body14.i.i.for.body14.i.i_crit_edge ]
  %mp_count.0160.i.i = phi i32 [ 0, %for.body14.lr.ph.i.i ], [ %mp_count.1.i.i, %for.body14.i.i.for.body14.i.i_crit_edge ]
  %arrayidx15.i.i = getelementptr [3 x i32], ptr %arrayidx55.i, i32 %i.1161.i.i
  %241 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %arrayidx15.i.i, align 4
  %243 = tail call i32 @llvm.abs.i32(i32 %242, i1 false) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %243, i32 %220)
  %cmp26.i.i = icmp slt i32 %243, %220
  call void @__sanitizer_cov_trace_cmp4(i32 %243, i32 %221)
  %cmp45.i.i = icmp slt i32 %243, %221
  %or.cond.i.i = select i1 %cmp26.i.i, i1 true, i1 %cmp45.i.i
  %inc49.i.i = zext i1 %or.cond.i.i to i32
  %mp_count.1.i.i = add i32 %mp_count.0160.i.i, %inc49.i.i
  %add.i.i242 = select i1 %or.cond.i.i, i32 %242, i32 0
  %mp_avg.1.i.i = add i32 %add.i.i242, %mp_avg.0162.i.i
  %inc52.i.i = add nuw nsw i32 %i.1161.i.i, 1
  %exitcond165.not.i.i = icmp eq i32 %inc52.i.i, %213
  br i1 %exitcond165.not.i.i, label %for.end53.i.i, label %for.body14.i.i.for.body14.i.i_crit_edge

for.body14.i.i.for.body14.i.i_crit_edge:          ; preds = %for.body14.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body14.i.i

for.end53.i.i:                                    ; preds = %for.body14.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mp_count.1.i.i)
  %tobool.not.i.i243 = icmp eq i32 %mp_count.1.i.i, 0
  br i1 %tobool.not.i.i243, label %if.else55.i.i, label %if.then54.i.i

if.then54.i.i:                                    ; preds = %for.end53.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %div.i.i244 = sdiv i32 %mp_avg.1.i.i, %mp_count.1.i.i
  br label %if.end59.i.i

if.else55.i.i:                                    ; preds = %for.end53.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub56.i.i = add nsw i32 %213, -1
  %arrayidx57.i.i = getelementptr [3 x i32], ptr %arrayidx55.i, i32 %sub56.i.i
  %244 = ptrtoint ptr %arrayidx57.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %arrayidx57.i.i, align 4
  br label %if.end59.i.i

if.end59.i.i:                                     ; preds = %if.else55.i.i, %if.then54.i.i
  %mp_avg.2.i.i = phi i32 [ %div.i.i244, %if.then54.i.i ], [ %245, %if.else55.i.i ]
  %sub61.i.i = sub i32 %mp_max.1.i.i.lcssa, %mp_min.1.i.i.lcssa
  %246 = tail call i32 @llvm.abs.i32(i32 %sub61.i.i, i1 false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %246)
  %cmp69.i.i = icmp sgt i32 %246, 11
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end59.i.i.ar9003_hw_detect_outlier.exit.i_crit_edge

if.end59.i.i.ar9003_hw_detect_outlier.exit.i_crit_edge: ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ar9003_hw_detect_outlier.exit.i

if.then70.i.i:                                    ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub72.i.i = sub i32 %mp_max.1.i.i.lcssa, %mp_avg.2.i.i
  %247 = tail call i32 @llvm.abs.i32(i32 %sub72.i.i, i1 false) #5
  %sub81.i.i = sub i32 %mp_min.1.i.i.lcssa, %mp_avg.2.i.i
  %248 = tail call i32 @llvm.abs.i32(i32 %sub81.i.i, i1 false) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %247, i32 %248)
  %cmp89.i.i = icmp sgt i32 %247, %248
  %outlier_idx.0.i.i = select i1 %cmp89.i.i, i32 %max_idx.1.i.i.lcssa, i32 %min_idx.1.i.i.lcssa
  %arrayidx93.i.i = getelementptr [3 x i32], ptr %arrayidx55.i, i32 %outlier_idx.0.i.i
  %249 = ptrtoint ptr %arrayidx93.i.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %mp_avg.2.i.i, ptr %arrayidx93.i.i, align 4
  br label %ar9003_hw_detect_outlier.exit.i

ar9003_hw_detect_outlier.exit.i:                  ; preds = %if.then70.i.i, %if.end59.i.i.ar9003_hw_detect_outlier.exit.i_crit_edge
  %arrayidx57.i = getelementptr %struct.coeff, ptr @ar9003_hw_tx_iq_cal_post_proc.coeff, i32 0, i32 1, i32 %i.167.i
  br label %for.body.i11.i

for.body14.lr.ph.i3.i:                            ; preds = %for.inc.i21.i
  %250 = tail call i32 @llvm.abs.i32(i32 %mp_max.1.i18.i, i1 false) #5
  %251 = tail call i32 @llvm.abs.i32(i32 %mp_min.1.i16.i, i1 false) #5
  br label %for.body14.i35.i

for.body.i11.i:                                   ; preds = %for.inc.i21.i.for.body.i11.i_crit_edge, %ar9003_hw_detect_outlier.exit.i
  %mp_max.0155.i4.i = phi i32 [ %mp_max.1.i18.i, %for.inc.i21.i.for.body.i11.i_crit_edge ], [ -64, %ar9003_hw_detect_outlier.exit.i ]
  %max_idx.0154.i5.i = phi i32 [ %max_idx.1.i17.i, %for.inc.i21.i.for.body.i11.i_crit_edge ], [ 0, %ar9003_hw_detect_outlier.exit.i ]
  %mp_min.0153.i6.i = phi i32 [ %mp_min.1.i16.i, %for.inc.i21.i.for.body.i11.i_crit_edge ], [ 63, %ar9003_hw_detect_outlier.exit.i ]
  %min_idx.0152.i7.i = phi i32 [ %min_idx.1.i15.i, %for.inc.i21.i.for.body.i11.i_crit_edge ], [ 0, %ar9003_hw_detect_outlier.exit.i ]
  %i.0150.i8.i = phi i32 [ %inc.i19.i, %for.inc.i21.i.for.body.i11.i_crit_edge ], [ 0, %ar9003_hw_detect_outlier.exit.i ]
  %arrayidx.i9.i = getelementptr [3 x i32], ptr %arrayidx57.i, i32 %i.0150.i8.i
  %252 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx.i9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %253, i32 %mp_max.0155.i4.i)
  %cmp2.i10.i = icmp sgt i32 %253, %mp_max.0155.i4.i
  br i1 %cmp2.i10.i, label %for.body.i11.i.for.inc.i21.i_crit_edge, label %if.else.i14.i

for.body.i11.i.for.inc.i21.i_crit_edge:           ; preds = %for.body.i11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i21.i

if.else.i14.i:                                    ; preds = %for.body.i11.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %253, i32 %mp_min.0153.i6.i)
  %cmp7.i12.i = icmp slt i32 %253, %mp_min.0153.i6.i
  %spec.select.i13.i = select i1 %cmp7.i12.i, i32 %i.0150.i8.i, i32 %min_idx.0152.i7.i
  %254 = tail call i32 @llvm.smin.i32(i32 %253, i32 %mp_min.0153.i6.i) #5
  br label %for.inc.i21.i

for.inc.i21.i:                                    ; preds = %if.else.i14.i, %for.body.i11.i.for.inc.i21.i_crit_edge
  %min_idx.1.i15.i = phi i32 [ %min_idx.0152.i7.i, %for.body.i11.i.for.inc.i21.i_crit_edge ], [ %spec.select.i13.i, %if.else.i14.i ]
  %mp_min.1.i16.i = phi i32 [ %mp_min.0153.i6.i, %for.body.i11.i.for.inc.i21.i_crit_edge ], [ %254, %if.else.i14.i ]
  %max_idx.1.i17.i = phi i32 [ %i.0150.i8.i, %for.body.i11.i.for.inc.i21.i_crit_edge ], [ %max_idx.0154.i5.i, %if.else.i14.i ]
  %mp_max.1.i18.i = phi i32 [ %253, %for.body.i11.i.for.inc.i21.i_crit_edge ], [ %mp_max.0155.i4.i, %if.else.i14.i ]
  %inc.i19.i = add nuw nsw i32 %i.0150.i8.i, 1
  %exitcond.not.i20.i = icmp eq i32 %inc.i19.i, %213
  br i1 %exitcond.not.i20.i, label %for.body14.lr.ph.i3.i, label %for.inc.i21.i.for.body.i11.i_crit_edge

for.inc.i21.i.for.body.i11.i_crit_edge:           ; preds = %for.inc.i21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i11.i

for.body14.i35.i:                                 ; preds = %for.body14.i35.i.for.body14.i35.i_crit_edge, %for.body14.lr.ph.i3.i
  %mp_avg.0162.i22.i = phi i32 [ 0, %for.body14.lr.ph.i3.i ], [ %mp_avg.1.i32.i, %for.body14.i35.i.for.body14.i35.i_crit_edge ]
  %i.1161.i23.i = phi i32 [ 0, %for.body14.lr.ph.i3.i ], [ %inc52.i33.i, %for.body14.i35.i.for.body14.i35.i_crit_edge ]
  %mp_count.0160.i24.i = phi i32 [ 0, %for.body14.lr.ph.i3.i ], [ %mp_count.1.i30.i, %for.body14.i35.i.for.body14.i35.i_crit_edge ]
  %arrayidx15.i25.i = getelementptr [3 x i32], ptr %arrayidx57.i, i32 %i.1161.i23.i
  %255 = ptrtoint ptr %arrayidx15.i25.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %arrayidx15.i25.i, align 4
  %257 = tail call i32 @llvm.abs.i32(i32 %256, i1 false) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %257, i32 %250)
  %cmp26.i26.i = icmp slt i32 %257, %250
  call void @__sanitizer_cov_trace_cmp4(i32 %257, i32 %251)
  %cmp45.i27.i = icmp slt i32 %257, %251
  %or.cond.i28.i = select i1 %cmp26.i26.i, i1 true, i1 %cmp45.i27.i
  %inc49.i29.i = zext i1 %or.cond.i28.i to i32
  %mp_count.1.i30.i = add i32 %mp_count.0160.i24.i, %inc49.i29.i
  %add.i31.i = select i1 %or.cond.i28.i, i32 %256, i32 0
  %mp_avg.1.i32.i = add i32 %add.i31.i, %mp_avg.0162.i22.i
  %inc52.i33.i = add nuw nsw i32 %i.1161.i23.i, 1
  %exitcond165.not.i34.i = icmp eq i32 %inc52.i33.i, %213
  br i1 %exitcond165.not.i34.i, label %for.end53.i37.i, label %for.body14.i35.i.for.body14.i35.i_crit_edge

for.body14.i35.i.for.body14.i35.i_crit_edge:      ; preds = %for.body14.i35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body14.i35.i

for.end53.i37.i:                                  ; preds = %for.body14.i35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mp_count.1.i30.i)
  %tobool.not.i36.i = icmp eq i32 %mp_count.1.i30.i, 0
  br i1 %tobool.not.i36.i, label %if.else55.i46.i, label %if.then54.i39.i

if.then54.i39.i:                                  ; preds = %for.end53.i37.i
  call void @__sanitizer_cov_trace_pc() #7
  %div.i38.i = sdiv i32 %mp_avg.1.i32.i, %mp_count.1.i30.i
  br label %if.end59.i54.i

if.else55.i46.i:                                  ; preds = %for.end53.i37.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub56.i44.i = add nsw i32 %213, -1
  %arrayidx57.i45.i = getelementptr [3 x i32], ptr %arrayidx57.i, i32 %sub56.i44.i
  %258 = ptrtoint ptr %arrayidx57.i45.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %arrayidx57.i45.i, align 4
  br label %if.end59.i54.i

if.end59.i54.i:                                   ; preds = %if.else55.i46.i, %if.then54.i39.i
  %mp_avg.2.i51.i = phi i32 [ %div.i38.i, %if.then54.i39.i ], [ %259, %if.else55.i46.i ]
  %sub61.i52.i = sub i32 %mp_max.1.i18.i, %mp_min.1.i16.i
  %260 = tail call i32 @llvm.abs.i32(i32 %sub61.i52.i, i1 false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %260)
  %cmp69.i53.i = icmp sgt i32 %260, 10
  br i1 %cmp69.i53.i, label %if.then70.i60.i, label %if.end59.i54.i.if.end60.i_crit_edge

if.end59.i54.i.if.end60.i_crit_edge:              ; preds = %if.end59.i54.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60.i

if.then70.i60.i:                                  ; preds = %if.end59.i54.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub72.i55.i = sub i32 %mp_max.1.i18.i, %mp_avg.2.i51.i
  %261 = tail call i32 @llvm.abs.i32(i32 %sub72.i55.i, i1 false) #5
  %sub81.i56.i = sub i32 %mp_min.1.i16.i, %mp_avg.2.i51.i
  %262 = tail call i32 @llvm.abs.i32(i32 %sub81.i56.i, i1 false) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %261, i32 %262)
  %cmp89.i57.i = icmp sgt i32 %261, %262
  %outlier_idx.0.i58.i = select i1 %cmp89.i57.i, i32 %max_idx.1.i17.i, i32 %min_idx.1.i15.i
  %arrayidx93.i59.i = getelementptr [3 x i32], ptr %arrayidx57.i, i32 %outlier_idx.0.i58.i
  %263 = ptrtoint ptr %arrayidx93.i59.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %mp_avg.2.i51.i, ptr %arrayidx93.i59.i, align 4
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then70.i60.i, %if.end59.i54.i.if.end60.i_crit_edge, %if.end35.i.if.end60.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %cmp6263.not.i = icmp eq i32 %213, 0
  br i1 %cmp6263.not.i, label %if.end60.i.for.end108.i_crit_edge, label %if.end60.i.for.body64.i_crit_edge

if.end60.i.for.body64.i_crit_edge:                ; preds = %if.end60.i
  br label %for.body64.i

if.end60.i.for.end108.i_crit_edge:                ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end108.i

for.body64.i:                                     ; preds = %for.inc106.i.for.body64.i_crit_edge, %if.end60.i.for.body64.i_crit_edge
  %im.064.i = phi i32 [ %inc107.i, %for.inc106.i.for.body64.i_crit_edge ], [ 0, %if.end60.i.for.body64.i_crit_edge ]
  %arrayidx67.i = getelementptr [3 x [8 x [3 x i32]]], ptr @ar9003_hw_tx_iq_cal_post_proc.coeff, i32 0, i32 %i.167.i, i32 %im.064.i
  %264 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx67.i, align 4
  %arrayidx71.i = getelementptr %struct.coeff, ptr @ar9003_hw_tx_iq_cal_post_proc.coeff, i32 0, i32 1, i32 %i.167.i, i32 %im.064.i
  %266 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %arrayidx71.i, align 4
  %and73.i = and i32 %267, 127
  %and74.i245 = shl i32 %265, 7
  %shl75.i = and i32 %and74.i245, 16256
  %or.i = or i32 %and73.i, %shl75.i
  store i32 %or.i, ptr getelementptr inbounds (%struct.coeff, ptr @ar9003_hw_tx_iq_cal_post_proc.coeff, i32 0, i32 2), align 4
  %268 = and i32 %im.064.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %268)
  %cmp77.i = icmp eq i32 %268, 0
  %269 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %rmw, align 4
  %arrayidx82.i = getelementptr [8 x [3 x i32]], ptr %tx_corr_coeff.i, i32 0, i32 %im.064.i, i32 %i.167.i
  %271 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %arrayidx82.i, align 4
  br i1 %cmp77.i, label %if.then79.i, label %if.else.i

if.then79.i:                                      ; preds = %for.body64.i
  call void @__sanitizer_cov_trace_pc() #7
  %call87.i = tail call i32 %270(ptr noundef %ah, i32 noundef %272, i32 noundef %or.i, i32 noundef 16383) #5
  br label %if.end97.i

if.else.i:                                        ; preds = %for.body64.i
  call void @__sanitizer_cov_trace_pc() #7
  %shl94.i = shl nuw nsw i32 %or.i, 14
  %call96.i = tail call i32 %270(ptr noundef %ah, i32 noundef %272, i32 noundef %shl94.i, i32 noundef 268419072) #5
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.else.i, %if.then79.i
  br i1 %tobool98.not.i, label %if.end97.i.for.inc106.i_crit_edge, label %if.then99.i

if.end97.i.for.inc106.i_crit_edge:                ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc106.i

if.then99.i:                                      ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #7
  %273 = load i32, ptr getelementptr inbounds (%struct.coeff, ptr @ar9003_hw_tx_iq_cal_post_proc.coeff, i32 0, i32 2), align 4
  %arrayidx104.i = getelementptr %struct.ath9k_hw_cal_data, ptr %174, i32 0, i32 10, i32 %im.064.i, i32 %i.167.i
  %274 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %273, ptr %arrayidx104.i, align 4
  br label %for.inc106.i

for.inc106.i:                                     ; preds = %if.then99.i, %if.end97.i.for.inc106.i_crit_edge
  %inc107.i = add nuw nsw i32 %im.064.i, 1
  %exitcond.not.i246 = icmp eq i32 %inc107.i, %213
  br i1 %exitcond.not.i246, label %for.inc106.i.for.end108.i_crit_edge, label %for.inc106.i.for.body64.i_crit_edge

for.inc106.i.for.body64.i_crit_edge:              ; preds = %for.inc106.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body64.i

for.inc106.i.for.end108.i_crit_edge:              ; preds = %for.inc106.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end108.i

for.end108.i:                                     ; preds = %for.inc106.i.for.end108.i_crit_edge, %if.end60.i.for.end108.i_crit_edge
  br i1 %tobool98.not.i, label %for.end108.i.for.inc113.i_crit_edge, label %if.then110.i

for.end108.i.for.inc113.i_crit_edge:              ; preds = %for.end108.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc113.i

if.then110.i:                                     ; preds = %for.end108.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx111.i = getelementptr %struct.ath9k_hw_cal_data, ptr %174, i32 0, i32 9, i32 %i.167.i
  %275 = ptrtoint ptr %arrayidx111.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %213, ptr %arrayidx111.i, align 4
  br label %for.inc113.i

for.inc113.i:                                     ; preds = %if.then110.i, %for.end108.i.for.inc113.i_crit_edge, %for.body32.i.for.inc113.i_crit_edge
  %inc114.i = add nuw nsw i32 %i.167.i, 1
  %exitcond71.not.i = icmp eq i32 %inc114.i, 3
  br i1 %exitcond71.not.i, label %for.end115.i, label %for.inc113.i.for.body32.i_crit_edge

for.inc113.i.for.body32.i_crit_edge:              ; preds = %for.inc113.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body32.i

for.end115.i:                                     ; preds = %for.inc113.i
  %276 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %rmw, align 4
  %call118.i = tail call i32 %277(ptr noundef %ah, i32 noundef 39088, i32 noundef -2147483648, i32 noundef -2147483648) #5
  %278 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %rmw, align 4
  %call121.i = tail call i32 %279(ptr noundef %ah, i32 noundef 39132, i32 noundef 536870912, i32 noundef 536870912) #5
  br i1 %tobool98.not.i, label %for.end115.i.ar9003_hw_tx_iq_cal_outlier_detection.exit_crit_edge, label %if.then123.i

for.end115.i.ar9003_hw_tx_iq_cal_outlier_detection.exit_crit_edge: ; preds = %for.end115.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ar9003_hw_tx_iq_cal_outlier_detection.exit

if.then123.i:                                     ; preds = %for.end115.i
  %cal_flags.i = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %174, i32 0, i32 2
  br i1 %is_reusable, label %if.then125.i, label %if.else126.i

if.then125.i:                                     ; preds = %if.then123.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_set_bit(i32 noundef 5, ptr noundef %cal_flags.i) #5
  br label %ar9003_hw_tx_iq_cal_outlier_detection.exit

if.else126.i:                                     ; preds = %if.then123.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %cal_flags.i) #5
  br label %ar9003_hw_tx_iq_cal_outlier_detection.exit

ar9003_hw_tx_iq_cal_outlier_detection.exit:       ; preds = %if.else126.i, %if.then125.i, %for.end115.i.ar9003_hw_tx_iq_cal_outlier_detection.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tx_corr_coeff.i) #5
  br label %cleanup

do.body147:                                       ; preds = %if.then94, %do.body90.do.body147_crit_edge, %if.then33, %do.body29.do.body147_crit_edge
  %280 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %debug_mask, align 4
  %and149 = and i32 %281, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %do.body147.cleanup_crit_edge, label %if.then151

do.body147.cleanup_crit_edge:                     ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then151:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.9) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then151, %do.body147.cleanup_crit_edge, %ar9003_hw_tx_iq_cal_outlier_detection.exit, %if.then139.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %txiqcal_status) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ar9003_hw_rtt_fill_hist(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ar9003_hw_rtt_load_hist(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ar9003_hw_manual_peak_cal(ptr noundef %ah, i8 noundef zeroext %chain, i1 noundef zeroext %is_2g) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %macVersion, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %1, label %if.end8.fold.split [
    i32 1024, label %entry.if.end8_crit_edge
    i32 1280, label %entry.if.end8_crit_edge316
    i32 1536, label %if.then7
  ]

entry.if.end8_crit_edge316:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end8.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end8:                                          ; preds = %if.end8.fold.split, %if.then7, %entry.if.end8_crit_edge, %entry.if.end8_crit_edge316
  %peak_detect_threshold.0 = phi i32 [ 11, %if.then7 ], [ 8, %entry.if.end8_crit_edge ], [ 8, %entry.if.end8_crit_edge316 ], [ 0, %if.end8.fold.split ]
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %3 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmw, align 4
  %conv = zext i8 %chain to i32
  %mul = shl nuw nsw i32 %conv, 10
  %add9 = add nuw nsw i32 %mul, 90120
  %call = tail call i32 %4(ptr noundef %ah, i32 noundef %add9, i32 noundef -2147483648, i32 noundef -2147483648) #5
  %5 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmw, align 4
  %call16 = tail call i32 %6(ptr noundef %ah, i32 noundef %add9, i32 noundef 0, i32 noundef 2) #5
  %7 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %macVersion, align 4
  %9 = add i32 %8, -512
  %10 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 26)
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %10, label %if.end8.if.end58_crit_edge [
    i32 2, label %if.end8.if.then40_crit_edge
    i32 1, label %if.end8.if.then40_crit_edge317
    i32 3, label %if.end8.if.then40_crit_edge318
    i32 0, label %land.lhs.true
  ]

if.end8.if.then40_crit_edge318:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then40

if.end8.if.then40_crit_edge317:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then40

if.end8.if.then40_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then40

if.end8.if.end58_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

land.lhs.true:                                    ; preds = %if.end8
  %macRev = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 4
  %12 = ptrtoint ptr %macRev to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %macRev, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %13)
  %cmp38 = icmp eq i16 %13, 1
  br i1 %cmp38, label %land.lhs.true.if.then40_crit_edge, label %land.lhs.true.if.end58_crit_edge

land.lhs.true.if.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

land.lhs.true.if.then40_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then40

if.then40:                                        ; preds = %land.lhs.true.if.then40_crit_edge, %if.end8.if.then40_crit_edge, %if.end8.if.then40_crit_edge317, %if.end8.if.then40_crit_edge318
  %14 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmw, align 4
  %. = select i1 %is_2g, i32 1879048192, i32 58720256
  %call48 = tail call i32 %15(ptr noundef %ah, i32 noundef %add9, i32 noundef 0, i32 noundef %.) #5
  br label %if.end58

if.end58:                                         ; preds = %if.then40, %land.lhs.true.if.end58_crit_edge, %if.end8.if.end58_crit_edge
  %16 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmw, align 4
  %add64 = add nuw nsw i32 %mul, 90372
  %call65 = tail call i32 %17(ptr noundef %ah, i32 noundef %add64, i32 noundef 4096, i32 noundef 4096) #5
  %18 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmw, align 4
  %call72 = tail call i32 %19(ptr noundef %ah, i32 noundef %add64, i32 noundef 0, i32 noundef 2048) #5
  %20 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmw, align 4
  %add78 = add nuw nsw i32 %mul, 90124
  %call79 = tail call i32 %21(ptr noundef %ah, i32 noundef %add78, i32 noundef -2147483648, i32 noundef -2147483648) #5
  %22 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmw, align 4
  %call86 = tail call i32 %23(ptr noundef %ah, i32 noundef %add78, i32 noundef 1073741824, i32 noundef 1073741824) #5
  %24 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmw, align 4
  %call93 = tail call i32 %25(ptr noundef %ah, i32 noundef %add78, i32 noundef 536870912, i32 noundef 536870912) #5
  %26 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %27)
  %cmp96 = icmp eq i32 %27, 512
  br i1 %cmp96, label %land.lhs.true98, label %if.end58.if.end112_crit_edge

if.end58.if.end112_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end112

land.lhs.true98:                                  ; preds = %if.end58
  %macRev100 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 4
  %28 = ptrtoint ptr %macRev100 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %macRev100, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %29)
  %cmp102 = icmp eq i16 %29, 1
  br i1 %cmp102, label %if.then104, label %land.lhs.true98.if.end112_crit_edge

land.lhs.true98.if.end112_crit_edge:              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end112

if.then104:                                       ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmw, align 4
  %call111 = tail call i32 %31(ptr noundef %ah, i32 noundef %add78, i32 noundef 0, i32 noundef 33030144) #5
  br label %if.end112

if.end112:                                        ; preds = %if.then104, %land.lhs.true98.if.end112_crit_edge, %if.end58.if.end112_crit_edge
  %32 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmw, align 4
  %.310 = select i1 %is_2g, i32 25, i32 15
  %.311 = select i1 %is_2g, i32 503316480, i32 491520
  %shl129 = shl nuw nsw i32 %peak_detect_threshold.0, %.310
  %call131 = tail call i32 %33(ptr noundef %ah, i32 noundef %add78, i32 noundef %shl129, i32 noundef %.311) #5
  %.312 = select i1 %is_2g, i32 19, i32 9
  %.313 = select i1 %is_2g, i32 33030144, i32 32256
  %34 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmw, align 4
  %shl156 = shl nuw nsw i32 32, %.312
  %and157 = and i32 %shl156, %.313
  %call158 = tail call i32 %35(ptr noundef %ah, i32 noundef %add78, i32 noundef %and157, i32 noundef %.313) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 21474800) #5
  %37 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ah, align 4
  %call165 = tail call i32 %38(ptr noundef %ah, i32 noundef %add78) #5
  %39 = shl i32 %call165, 3
  %40 = and i32 %39, 32
  %shl171 = xor i32 %40, 32
  %add137.1 = or i32 %shl171, 16
  %41 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmw, align 4
  %shl156.1 = shl i32 %add137.1, %.312
  %and157.1 = and i32 %shl156.1, %.313
  %call158.1 = tail call i32 %42(ptr noundef %ah, i32 noundef %add78, i32 noundef %and157.1, i32 noundef %.313) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 21474800) #5
  %44 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ah, align 4
  %call165.1 = tail call i32 %45(ptr noundef %ah, i32 noundef %add78) #5
  %46 = shl i32 %call165.1, 2
  %47 = and i32 %46, 16
  %48 = or i32 %47, %shl171
  %add172.1 = xor i32 %48, 16
  %add137.2 = or i32 %add172.1, 8
  %49 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rmw, align 4
  %shl156.2 = shl i32 %add137.2, %.312
  %and157.2 = and i32 %shl156.2, %.313
  %call158.2 = tail call i32 %50(ptr noundef %ah, i32 noundef %add78, i32 noundef %and157.2, i32 noundef %.313) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 21474800) #5
  %52 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ah, align 4
  %call165.2 = tail call i32 %53(ptr noundef %ah, i32 noundef %add78) #5
  %54 = shl i32 %call165.2, 1
  %55 = and i32 %54, 8
  %56 = or i32 %55, %add172.1
  %add172.2 = xor i32 %56, 8
  %add137.3 = or i32 %add172.2, 4
  %57 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rmw, align 4
  %shl156.3 = shl i32 %add137.3, %.312
  %and157.3 = and i32 %shl156.3, %.313
  %call158.3 = tail call i32 %58(ptr noundef %ah, i32 noundef %add78, i32 noundef %and157.3, i32 noundef %.313) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 21474800) #5
  %60 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ah, align 4
  %call165.3 = tail call i32 %61(ptr noundef %ah, i32 noundef %add78) #5
  %.lobit.3 = and i32 %call165.3, 4
  %62 = or i32 %.lobit.3, %add172.2
  %add172.3 = xor i32 %62, 4
  %add137.4 = add i32 %add172.3, 2
  %63 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rmw, align 4
  %shl156.4 = shl i32 %add137.4, %.312
  %and157.4 = and i32 %shl156.4, %.313
  %call158.4 = tail call i32 %64(ptr noundef %ah, i32 noundef %add78, i32 noundef %and157.4, i32 noundef %.313) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 21474800) #5
  %66 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ah, align 4
  %call165.4 = tail call i32 %67(ptr noundef %ah, i32 noundef %add78) #5
  %68 = lshr i32 %call165.4, 1
  %69 = and i32 %68, 2
  %shl171.4 = xor i32 %69, 2
  %add172.4 = add i32 %shl171.4, %add172.3
  %add137.5 = add i32 %add172.4, 1
  %70 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rmw, align 4
  %shl156.5 = shl i32 %add137.5, %.312
  %and157.5 = and i32 %shl156.5, %.313
  %call158.5 = tail call i32 %71(ptr noundef %ah, i32 noundef %add78, i32 noundef %and157.5, i32 noundef %.313) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 21474800) #5
  %73 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ah, align 4
  %call165.5 = tail call i32 %74(ptr noundef %ah, i32 noundef %add78) #5
  %75 = lshr i32 %call165.5, 2
  %.lobit.5 = and i32 %75, 1
  %76 = xor i32 %.lobit.5, 1
  %add172.5 = add i32 %76, %add172.4
  %77 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rmw, align 4
  %shl191 = shl i32 %add172.5, %.312
  %and192 = and i32 %shl191, %.313
  %call193 = tail call i32 %78(ptr noundef %ah, i32 noundef %add78, i32 noundef %and192, i32 noundef %.313) #5
  %79 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rmw, align 4
  %call201 = tail call i32 %80(ptr noundef %ah, i32 noundef %add9, i32 noundef 0, i32 noundef -2147483648) #5
  %81 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rmw, align 4
  %call208 = tail call i32 %82(ptr noundef %ah, i32 noundef %add64, i32 noundef 0, i32 noundef 4096) #5
  %83 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rmw, align 4
  %call215 = tail call i32 %84(ptr noundef %ah, i32 noundef %add78, i32 noundef 0, i32 noundef 536870912) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_reset_calibration(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9003_hw_iqcal_collect(ptr noundef %ah) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %txchainmask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 74
  %meas0 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 54
  %meas1 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 55
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %cal_samples = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 58
  %0 = ptrtoint ptr %txchainmask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %txchainmask, align 4
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  %meas2 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 56
  %3 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ah, align 4
  %call = tail call i32 %4(ptr noundef %ah, i32 noundef 39104) #5
  %5 = ptrtoint ptr %meas0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %meas0, align 4
  %add1 = add i32 %6, %call
  store i32 %add1, ptr %meas0, align 4
  %7 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ah, align 4
  %call6 = tail call i32 %8(ptr noundef %ah, i32 noundef 39108) #5
  %9 = ptrtoint ptr %meas1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %meas1, align 4
  %add8 = add i32 %10, %call6
  store i32 %add8, ptr %meas1, align 4
  %11 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ah, align 4
  %call13 = tail call i32 %12(ptr noundef %ah, i32 noundef 39112) #5
  %13 = ptrtoint ptr %meas2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %meas2, align 4
  %add15 = add i32 %14, %call13
  store i32 %add15, ptr %meas2, align 4
  %15 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %debug_mask, align 4
  %and17 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then.for.inc_crit_edge, label %if.then19

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then19:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %cal_samples to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %cal_samples, align 4
  %conv21 = zext i16 %18 to i32
  %19 = ptrtoint ptr %meas0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %meas0, align 4
  %21 = ptrtoint ptr %meas1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %meas1, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.26, i32 noundef %conv21, i32 noundef 0, i32 noundef %20, i32 noundef %22, i32 noundef %add15) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %if.then.for.inc_crit_edge, %entry.for.inc_crit_edge
  %23 = ptrtoint ptr %txchainmask to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %txchainmask, align 4
  %25 = and i8 %24, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.1 = icmp eq i8 %25, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %26 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ah, align 4
  %call.1 = tail call i32 %27(ptr noundef %ah, i32 noundef 43200) #5
  %arrayidx.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 54, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.1, align 4
  %add1.1 = add i32 %29, %call.1
  store i32 %add1.1, ptr %arrayidx.1, align 4
  %30 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ah, align 4
  %call6.1 = tail call i32 %31(ptr noundef %ah, i32 noundef 43204) #5
  %arrayidx7.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 55, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx7.1, align 4
  %add8.1 = add i32 %33, %call6.1
  store i32 %add8.1, ptr %arrayidx7.1, align 4
  %34 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ah, align 4
  %call13.1 = tail call i32 %35(ptr noundef %ah, i32 noundef 43208) #5
  %arrayidx14.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 56, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx14.1, align 4
  %add15.1 = add i32 %37, %call13.1
  store i32 %add15.1, ptr %arrayidx14.1, align 4
  %38 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %debug_mask, align 4
  %and17.1 = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.1)
  %tobool18.not.1 = icmp eq i32 %and17.1, 0
  br i1 %tobool18.not.1, label %if.then.1.for.inc.1_crit_edge, label %if.then19.1

if.then.1.for.inc.1_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then19.1:                                      ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %cal_samples to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %cal_samples, align 4
  %conv21.1 = zext i16 %41 to i32
  %42 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.1, align 4
  %44 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx7.1, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.26, i32 noundef %conv21.1, i32 noundef 1, i32 noundef %43, i32 noundef %45, i32 noundef %add15.1) #5
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then19.1, %if.then.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %46 = ptrtoint ptr %txchainmask to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %txchainmask, align 4
  %48 = and i8 %47, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.2 = icmp eq i8 %48, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  %49 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ah, align 4
  %call.2 = tail call i32 %50(ptr noundef %ah, i32 noundef 47296) #5
  %arrayidx.2 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 54, i32 0, i32 2
  %51 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.2, align 4
  %add1.2 = add i32 %52, %call.2
  store i32 %add1.2, ptr %arrayidx.2, align 4
  %53 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ah, align 4
  %call6.2 = tail call i32 %54(ptr noundef %ah, i32 noundef 47300) #5
  %arrayidx7.2 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 55, i32 0, i32 2
  %55 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx7.2, align 4
  %add8.2 = add i32 %56, %call6.2
  store i32 %add8.2, ptr %arrayidx7.2, align 4
  %57 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ah, align 4
  %call13.2 = tail call i32 %58(ptr noundef %ah, i32 noundef 47304) #5
  %arrayidx14.2 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 56, i32 0, i32 2
  %59 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx14.2, align 4
  %add15.2 = add i32 %60, %call13.2
  store i32 %add15.2, ptr %arrayidx14.2, align 4
  %61 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %debug_mask, align 4
  %and17.2 = and i32 %62, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.2)
  %tobool18.not.2 = icmp eq i32 %and17.2, 0
  br i1 %tobool18.not.2, label %if.then.2.for.inc.2_crit_edge, label %if.then19.2

if.then.2.for.inc.2_crit_edge:                    ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then19.2:                                      ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %cal_samples to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %cal_samples, align 4
  %conv21.2 = zext i16 %64 to i32
  %65 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.2, align 4
  %67 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx7.2, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.26, i32 noundef %conv21.2, i32 noundef 2, i32 noundef %66, i32 noundef %68, i32 noundef %add15.2) #5
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then19.2, %if.then.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9003_hw_iqcalibrate(ptr noundef %ah, i8 noundef zeroext %numChains) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %conv = zext i8 %numChains to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %numChains)
  %cmp292.not = icmp eq i8 %numChains, 0
  br i1 %cmp292.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %meas0 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 54
  %meas1 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 55
  %meas2 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 56
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0293 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x i32], ptr %meas0, i32 0, i32 %i.0293
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [3 x i32], ptr %meas1, i32 0, i32 %i.0293
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr [3 x i32], ptr %meas2, i32 0, i32 %i.0293
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %6 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_mask, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.do.body4_crit_edge, label %if.then

for.body.do.body4_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body4

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.27, i32 noundef %i.0293) #5
  br label %do.body4

do.body4:                                         ; preds = %if.then, %for.body.do.body4_crit_edge
  %8 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug_mask, align 4
  %and6 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.body4.do.end13_crit_edge, label %if.then8

do.body4.do.end13_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end13

if.then8:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.28, i32 noundef %i.0293, i32 noundef %11) #5
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %do.body4.do.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %5)
  %cmp14 = icmp ugt i32 %5, -2147483648
  %add = sub i32 0, %5
  %spec.select = select i1 %cmp14, i32 %add, i32 %5
  %spec.select290 = zext i1 %cmp14 to i32
  %12 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug_mask, align 4
  %and20 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.end13.do.body26_crit_edge, label %if.then22

do.end13.do.body26_crit_edge:                     ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body26

if.then22:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.29, i32 noundef %i.0293, i32 noundef %1) #5
  br label %do.body26

do.body26:                                        ; preds = %if.then22, %do.end13.do.body26_crit_edge
  %14 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug_mask, align 4
  %and28 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.body26.do.body34_crit_edge, label %if.then30

do.body26.do.body34_crit_edge:                    ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body34

if.then30:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.30, i32 noundef %i.0293, i32 noundef %3) #5
  br label %do.body34

do.body34:                                        ; preds = %if.then30, %do.body26.do.body34_crit_edge
  %16 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug_mask, align 4
  %and36 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.body34.do.end41_crit_edge, label %if.then38

do.body34.do.end41_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end41

if.then38:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.31, i32 noundef %spec.select290) #5
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %do.body34.do.end41_crit_edge
  %div286 = lshr i32 %1, 1
  %div42287 = lshr i32 %3, 1
  %add43 = add nuw i32 %div42287, %div286
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add43)
  %cmp46.not = icmp ult i32 %add43, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %3)
  %cmp48.not = icmp ult i32 %3, 64
  %or.cond = select i1 %cmp46.not, i1 true, i1 %cmp48.not
  br i1 %or.cond, label %do.end41.for.inc_crit_edge, label %if.then50

do.end41.for.inc_crit_edge:                       ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then50:                                        ; preds = %do.end41
  %div45289 = lshr i32 %3, 6
  %div44288 = lshr i32 %add43, 8
  %div51 = udiv i32 %spec.select, %div44288
  %div52 = udiv i32 %1, %div45289
  %sub53 = add i32 %div52, -64
  %18 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug_mask, align 4
  %and56 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.then50.do.body62_crit_edge, label %if.then58

if.then50.do.body62_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body62

if.then58:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.32, i32 noundef %i.0293, i32 noundef %div51) #5
  br label %do.body62

do.body62:                                        ; preds = %if.then58, %if.then50.do.body62_crit_edge
  %20 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %debug_mask, align 4
  %and64 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %do.body62.do.end69_crit_edge, label %if.then66

do.body62.do.end69_crit_edge:                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end69

if.then66:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.33, i32 noundef %i.0293, i32 noundef %sub53) #5
  br label %do.end69

do.end69:                                         ; preds = %if.then66, %do.body62.do.end69_crit_edge
  %22 = tail call i32 @llvm.smax.i32(i32 %div51, i32 -63)
  %23 = tail call i32 @llvm.smin.i32(i32 %22, i32 63)
  %sub81 = sub nsw i32 0, %23
  %iCoff.1 = select i1 %cmp14, i32 %23, i32 %sub81
  %24 = tail call i32 @llvm.smax.i32(i32 %sub53, i32 -63)
  %25 = tail call i32 @llvm.smin.i32(i32 %24, i32 63)
  %and92 = and i32 %iCoff.1, 127
  %and93 = and i32 %25, 127
  %26 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %debug_mask, align 4
  %and96 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %do.end69.do.body102_crit_edge, label %if.then98

do.end69.do.body102_crit_edge:                    ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body102

if.then98:                                        ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.34, i32 noundef %i.0293, i32 noundef %and92, i32 noundef %and93) #5
  br label %do.body102

do.body102:                                       ; preds = %if.then98, %do.end69.do.body102_crit_edge
  %28 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %debug_mask, align 4
  %and104 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %do.body102.do.end112_crit_edge, label %if.then106

do.body102.do.end112_crit_edge:                   ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end112

if.then106:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx107 = getelementptr [3 x i32], ptr @ar9003_hw_iqcalibrate.offset_array, i32 0, i32 %i.0293
  %30 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx107, align 4
  %32 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ah, align 4
  %call109 = tail call i32 %33(ptr noundef %ah, i32 noundef %31) #5
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.35, i32 noundef %31, i32 noundef %call109) #5
  br label %do.end112

do.end112:                                        ; preds = %if.then106, %do.body102.do.end112_crit_edge
  %34 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 704, i32 %35)
  %cmp113 = icmp eq i32 %35, 704
  br i1 %cmp113, label %land.lhs.true115, label %do.end112.if.end127_crit_edge

do.end112.if.end127_crit_edge:                    ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end127

land.lhs.true115:                                 ; preds = %do.end112
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %and92)
  %cmp116 = icmp eq i32 %and92, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %and93)
  %cmp118 = icmp eq i32 %and93, 63
  %or.cond291 = select i1 %cmp116, i1 true, i1 %cmp118
  br i1 %or.cond291, label %land.lhs.true115.cleanup_crit_edge, label %land.lhs.true115.if.end127_crit_edge

land.lhs.true115.if.end127_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end127

land.lhs.true115.cleanup_crit_edge:               ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end127:                                        ; preds = %land.lhs.true115.if.end127_crit_edge, %do.end112.if.end127_crit_edge
  %36 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmw, align 4
  %arrayidx129 = getelementptr [3 x i32], ptr @ar9003_hw_iqcalibrate.offset_array, i32 0, i32 %i.0293
  %38 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx129, align 4
  %shl = shl nuw nsw i32 %and92, 7
  %call131 = tail call i32 %37(ptr noundef %ah, i32 noundef %39, i32 noundef %shl, i32 noundef 16256) #5
  %40 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmw, align 4
  %call137 = tail call i32 %41(ptr noundef %ah, i32 noundef %39, i32 noundef %and93, i32 noundef 127) #5
  %42 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %debug_mask, align 4
  %and140 = and i32 %43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %if.end127.do.body151_crit_edge, label %if.then142

if.end127.do.body151_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body151

if.then142:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ah, align 4
  %call147 = tail call i32 %45(ptr noundef %ah, i32 noundef %39) #5
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.36, i32 noundef %39, i32 noundef 16256, i32 noundef %call147) #5
  br label %do.body151

do.body151:                                       ; preds = %if.then142, %if.end127.do.body151_crit_edge
  %46 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %debug_mask, align 4
  %and153 = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %do.body151.do.body164_crit_edge, label %if.then155

do.body151.do.body164_crit_edge:                  ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body164

if.then155:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ah, align 4
  %call160 = tail call i32 %49(ptr noundef %ah, i32 noundef %39) #5
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.37, i32 noundef %39, i32 noundef 127, i32 noundef %call160) #5
  br label %do.body164

do.body164:                                       ; preds = %if.then155, %do.body151.do.body164_crit_edge
  %50 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %debug_mask, align 4
  %and166 = and i32 %51, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %do.body164.for.inc_crit_edge, label %if.then168

do.body164.for.inc_crit_edge:                     ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then168:                                       ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.38, i32 noundef %i.0293) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then168, %do.body164.for.inc_crit_edge, %do.end41.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0293, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %rmw174 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %52 = ptrtoint ptr %rmw174 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmw174, align 4
  %call175 = tail call i32 %53(ptr noundef %ah, i32 noundef 39132, i32 noundef 16384, i32 noundef 0) #5
  %debug_mask177 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %54 = ptrtoint ptr %debug_mask177 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %debug_mask177, align 4
  %and178 = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178)
  %tobool179.not = icmp eq i32 %and178, 0
  br i1 %tobool179.not, label %for.end.cleanup_crit_edge, label %if.then180

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then180:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ah, align 4
  %call183 = tail call i32 %57(ptr noundef %ah, i32 noundef 39132) #5
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.39, i32 noundef 39132, i32 noundef 16384, i32 noundef %call183) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then180, %for.end.cleanup_crit_edge, %land.lhs.true115.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_getnf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_hw_loadnf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_start_nfcal(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 1414, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 1517, i32 3}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 1533, i32 5}
!7 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ar9003_hw_tx_iq_cal_post_proc.coeff, !9, !"coeff", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 1068, i32 22}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 1085, i32 4}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 1090, i32 5}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 1117, i32 5}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 1125, i32 5}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 1151, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 690, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 743, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 761, i32 3}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 771, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 776, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 789, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 803, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 807, i32 3}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 820, i32 2}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 834, i32 2}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 572, i32 3}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 1028, i32 3}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 997, i32 3}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 360, i32 3}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 397, i32 4}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 1569, i32 3}
!52 = !{ptr @iq_cal_single_sample, !53, !"iq_cal_single_sample", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 309, i32 39}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 188, i32 4}
!56 = !{ptr @ar9003_hw_iqcalibrate.offset_array, !57, !"offset_array", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 204, i32 25}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 215, i32 3}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 218, i32 3}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 229, i32 3}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 231, i32 3}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 233, i32 3}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 241, i32 4}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 243, i32 4}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 265, i32 4}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 268, i32 4}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 284, i32 4}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 289, i32 4}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 295, i32 4}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 302, i32 2}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 55, i32 3}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/ath9k/ar9003_calib.c", i32 62, i32 3}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{i8 0, i8 2}
