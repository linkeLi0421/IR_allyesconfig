; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/ar9002_calib.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/ar9002_calib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ath9k_percal_data = type { i32, i32, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.eeprom_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@iq_cal_multi_sample = internal constant { %struct.ath9k_percal_data, [44 x i8] } { %struct.ath9k_percal_data { i32 4, i32 64, i32 2, ptr @ar9002_hw_iqcal_collect, ptr @ar9002_hw_iqcalibrate }, [44 x i8] zeroinitializer }, align 32
@iq_cal_single_sample = internal constant { %struct.ath9k_percal_data, [44 x i8] } { %struct.ath9k_percal_data { i32 4, i32 1, i32 10, ptr @ar9002_hw_iqcal_collect, ptr @ar9002_hw_iqcalibrate }, [44 x i8] zeroinitializer }, align 32
@adc_gain_cal_single_sample = internal constant { %struct.ath9k_percal_data, [44 x i8] } { %struct.ath9k_percal_data { i32 1, i32 1, i32 10, ptr @ar9002_hw_adc_gaincal_collect, ptr @ar9002_hw_adc_gaincal_calibrate }, [44 x i8] zeroinitializer }, align 32
@adc_dc_cal_single_sample = internal constant { %struct.ath9k_percal_data, [44 x i8] } { %struct.ath9k_percal_data { i32 2, i32 1, i32 10, ptr @ar9002_hw_adc_dccal_collect, ptr @ar9002_hw_adc_dccal_calibrate }, [44 x i8] zeroinitializer }, align 32
@adc_gain_cal_multi_sample = internal constant { %struct.ath9k_percal_data, [44 x i8] } { %struct.ath9k_percal_data { i32 1, i32 64, i32 2, ptr @ar9002_hw_adc_gaincal_collect, ptr @ar9002_hw_adc_gaincal_calibrate }, [44 x i8] zeroinitializer }, align 32
@adc_dc_cal_multi_sample = internal constant { %struct.ath9k_percal_data, [44 x i8] } { %struct.ath9k_percal_data { i32 2, i32 64, i32 2, ptr @ar9002_hw_adc_dccal_collect, ptr @ar9002_hw_adc_dccal_calibrate }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%d: Chn %d pmi=0x%08x;pmq=0x%08x;iqcm=0x%08x;\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Starting IQ Cal and Correction for Chain %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Original: Chn %d iq_corr_meas = 0x%08x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Chn %d pwr_meas_i = 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Chn %d pwr_meas_q = 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iqCorrNeg is 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Chn %d iCoff = 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Chn %d qCoff = 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"New: Chn %d iCoff = 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Chn %d : iCoff = 0x%x  qCoff = 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"IQ Cal and Correction done for Chain %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%d: Chn %d oddi=0x%08x; eveni=0x%08x; oddq=0x%08x; evenq=0x%08x;\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Starting ADC Gain Cal for Chain %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Chn %d pwr_meas_odd_i = 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Chn %d pwr_meas_even_i = 0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Chn %d pwr_meas_odd_q = 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Chn %d pwr_meas_even_q = 0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Chn %d gain_mismatch_i = 0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Chn %d gain_mismatch_q = 0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADC Gain Cal done for Chain %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Starting ADC DC Offset Cal for Chain %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Chn %d pwr_meas_odd_i = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Chn %d pwr_meas_even_i = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Chn %d pwr_meas_odd_q = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Chn %d pwr_meas_even_q = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Chn %d dc_offset_mismatch_i = 0x%08x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Chn %d dc_offset_mismatch_q = 0x%08x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ADC DC Offset Cal done for Chain %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"offset calibration failed to complete in %d ms; noisy environment?\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"enabling ADC Gain Calibration\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"enabling ADC DC Calibration\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"enabling IQ Calibration\0A\00", [39 x i8] zeroinitializer }, align 32
@__const.ar9271_hw_pa_cal.regList = private unnamed_addr constant [8 x [2 x i32]] [[2 x i32] [i32 30828, i32 0], [2 x i32] [i32 30804, i32 0], [2 x i32] [i32 30752, i32 0], [2 x i32] [i32 30756, i32 0], [2 x i32] [i32 30824, i32 0], [2 x i32] [i32 30780, i32 0], [2 x i32] [i32 30776, i32 0], [2 x i32] [i32 30760, i32 0]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Running PA Calibration\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"starting IQ Mismatch Calibration\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"starting ADC Gain Calibration\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"starting ADC DC Calibration\0A\00", [35 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"calibration timeout\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 192, i64 320]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.39 = private unnamed_addr constant [20 x i8] c"iq_cal_multi_sample\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 937, i32 39 }
@___asan_gen_.42 = private unnamed_addr constant [21 x i8] c"iq_cal_single_sample\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 944, i32 39 }
@___asan_gen_.45 = private unnamed_addr constant [27 x i8] c"adc_gain_cal_single_sample\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 958, i32 39 }
@___asan_gen_.48 = private unnamed_addr constant [25 x i8] c"adc_dc_cal_single_sample\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 972, i32 39 }
@___asan_gen_.51 = private unnamed_addr constant [26 x i8] c"adc_gain_cal_multi_sample\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 951, i32 39 }
@___asan_gen_.54 = private unnamed_addr constant [24 x i8] c"adc_dc_cal_multi_sample\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 965, i32 39 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 136, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 205, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 209, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 220, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 222, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 224, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 233, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 235, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 239, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 249, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 259, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 158, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 281, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 284, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 286, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 288, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 290, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 301, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 304, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 313, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 339, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 342, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 344, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 346, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 348, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 356, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 359, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 368, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 873, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 908, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 915, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 922, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 557, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 62, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 67, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 71, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.169 = private constant [49 x i8] c"../drivers/net/wireless/ath/ath9k/ar9002_calib.c\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 113, i32 4 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @iq_cal_multi_sample, ptr @iq_cal_single_sample, ptr @adc_gain_cal_single_sample, ptr @adc_dc_cal_single_sample, ptr @adc_gain_cal_multi_sample, ptr @adc_dc_cal_multi_sample, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iq_cal_multi_sample to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iq_cal_single_sample to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_gain_cal_single_sample to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_dc_cal_single_sample to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_gain_cal_multi_sample to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_dc_cal_multi_sample to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ar9002_hw_attach_calib_ops(ptr nocapture noundef writeonly %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %init_cal_settings = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 3
  %0 = ptrtoint ptr %init_cal_settings to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ar9002_hw_init_cal_settings, ptr %init_cal_settings, align 4
  %init_cal = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 4
  %1 = ptrtoint ptr %init_cal to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ar9002_hw_init_cal, ptr %init_cal, align 4
  %setup_calibration = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 62, i32 6
  %2 = ptrtoint ptr %setup_calibration to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ar9002_hw_setup_calibration, ptr %setup_calibration, align 4
  %calibrate = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 63, i32 3
  %3 = ptrtoint ptr %calibrate to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ar9002_hw_calibrate, ptr %calibrate, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ar9002_hw_init_cal_settings(ptr nocapture noundef %ah) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %1)
  %cmp = icmp eq i32 %1, 20
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %iq_caldata = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 48
  %2 = ptrtoint ptr %iq_caldata to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @iq_cal_multi_sample, ptr %iq_caldata, align 4
  %supp_cals = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 46
  %3 = ptrtoint ptr %supp_cals to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %supp_cals, align 4
  br label %if.end27

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %1)
  %cmp3 = icmp ugt i32 %1, 63
  br i1 %cmp3, label %if.then4, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %1)
  %cmp7 = icmp ugt i32 %1, 127
  %iq_cal_multi_sample.sink = select i1 %cmp7, ptr @iq_cal_single_sample, ptr @iq_cal_multi_sample
  %adc_gain_cal_multi_sample.sink = select i1 %cmp7, ptr @adc_gain_cal_single_sample, ptr @adc_gain_cal_multi_sample
  %adc_dc_cal_multi_sample.sink = select i1 %cmp7, ptr @adc_dc_cal_single_sample, ptr @adc_dc_cal_multi_sample
  %4 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 48
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %iq_cal_multi_sample.sink, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 49
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %adc_gain_cal_multi_sample.sink, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 50
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %adc_dc_cal_multi_sample.sink, ptr %8, align 4
  %supp_cals20 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 46
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %1)
  %cmp23 = icmp eq i32 %1, 384
  %spec.store.select = select i1 %cmp23, i32 6, i32 7
  %10 = ptrtoint ptr %supp_cals20 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.store.select, ptr %supp_cals20, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then4, %if.end.if.end27_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ar9002_hw_init_cal(ptr noundef %ah, ptr noundef %chan) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %macVersion, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.else13 [
    i32 320, label %if.then
    i32 192, label %if.then9
  ]

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc zeroext i1 @ar9285_hw_cl_cal(ptr noundef %ah, ptr noundef %chan)
  br i1 %call1, label %if.then.if.end72_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.if.end72_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then9:                                         ; preds = %entry
  %call.i = tail call fastcc zeroext i1 @ar9285_hw_cl_cal(ptr noundef %ah, ptr noundef %chan) #6
  br i1 %call.i, label %if.end.i, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then9
  %3 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ah, align 4
  %call1.i = tail call i32 %4(ptr noundef %ah, i32 noundef 41588) #6
  %and.i = lshr i32 %call1.i, 13
  %shr.i = and i32 %and.i, 63
  br label %for.body.i

for.cond14.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clc_num.1.i)
  %cmp15116.not.i = icmp eq i32 %clc_num.1.i, 0
  br i1 %cmp15116.not.i, label %for.cond14.preheader.i.if.end72_crit_edge, label %for.cond14.preheader.i.for.body16.i_crit_edge

for.cond14.preheader.i.for.body16.i_crit_edge:    ; preds = %for.cond14.preheader.i
  br label %for.body16.i

for.cond14.preheader.i.if.end72_crit_edge:        ; preds = %for.cond14.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i
  %clc_num.0115.i = phi i32 [ 0, %if.end.i ], [ %clc_num.1.i, %for.body.i.for.body.i_crit_edge ]
  %gain_mask.0114.i = phi i32 [ 0, %if.end.i ], [ %gain_mask.1.i, %for.body.i.for.body.i_crit_edge ]
  %i.0113.i = phi i32 [ 0, %if.end.i ], [ %inc13.i, %for.body.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ah, align 4
  %shl.i = shl i32 %i.0113.i, 2
  %add4.i = add nuw nsw i32 %shl.i, 41728
  %call5.i = tail call i32 %6(ptr noundef %ah, i32 noundef %add4.i) #6
  %and6.i = lshr i32 %call5.i, 1
  %shr7.i = and i32 %and6.i, 15
  %shl8.i = shl nuw nsw i32 1, %shr7.i
  %and9.i = and i32 %shl8.i, %gain_mask.0114.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool.not.i = icmp eq i32 %and9.i, 0
  %or.i = select i1 %tobool.not.i, i32 %shl8.i, i32 0
  %gain_mask.1.i = or i32 %or.i, %gain_mask.0114.i
  %inc.i = zext i1 %tobool.not.i to i32
  %clc_num.1.i = add i32 %clc_num.0115.i, %inc.i
  %inc13.i = add nuw nsw i32 %i.0113.i, 1
  %exitcond.i = icmp eq i32 %i.0113.i, %shr.i
  br i1 %exitcond.i, label %for.cond14.preheader.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body16.i:                                     ; preds = %for.body16.i.for.body16.i_crit_edge, %for.cond14.preheader.i.for.body16.i_crit_edge
  %q0_num.0119.i = phi i32 [ %q0_num.1.i, %for.body16.i.for.body16.i_crit_edge ], [ 0, %for.cond14.preheader.i.for.body16.i_crit_edge ]
  %i0_num.0118.i = phi i32 [ %spec.select.i, %for.body16.i.for.body16.i_crit_edge ], [ 0, %for.cond14.preheader.i.for.body16.i_crit_edge ]
  %i.1117.i = phi i32 [ %inc40.i, %for.body16.i.for.body16.i_crit_edge ], [ 0, %for.cond14.preheader.i.for.body16.i_crit_edge ]
  %7 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ah, align 4
  %shl19.i = shl i32 %i.1117.i, 2
  %add20.i = add i32 %shl19.i, 41820
  %call21.i = tail call i32 %8(ptr noundef %ah, i32 noundef %add20.i) #6
  %9 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ah, align 4
  %call28.i = tail call i32 %10(ptr noundef %ah, i32 noundef %add20.i) #6
  %11 = and i32 %call21.i, 134152192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp31.i = icmp eq i32 %11, 0
  %inc33.i = zext i1 %cmp31.i to i32
  %spec.select.i = add i32 %i0_num.0118.i, %inc33.i
  %12 = and i32 %call28.i, 65472
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp35.i = icmp eq i32 %12, 0
  %inc37.i = zext i1 %cmp35.i to i32
  %q0_num.1.i = add i32 %q0_num.0119.i, %inc37.i
  %inc40.i = add nuw i32 %i.1117.i, 1
  %exitcond121.not.i = icmp eq i32 %inc40.i, %clc_num.1.i
  br i1 %exitcond121.not.i, label %for.end41.i, label %for.body16.i.for.body16.i_crit_edge

for.body16.i.for.body16.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body16.i

for.end41.i:                                      ; preds = %for.body16.i
  %13 = add i32 %q0_num.1.i, %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %phi.cmp.i = icmp ugt i32 %13, 1
  br i1 %phi.cmp.i, label %if.then44.i, label %for.end41.i.if.end72_crit_edge

for.end41.i.if.end72_crit_edge:                   ; preds = %for.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then44.i:                                      ; preds = %for.end41.i
  %14 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ah, align 4
  %call47.i = tail call i32 %15(ptr noundef %ah, i32 noundef 30768) #6
  %16 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 191, i32 %17)
  %cmp48.i = icmp ugt i32 %17, 191
  br i1 %cmp48.i, label %land.lhs.true.i, label %if.then44.i.if.else.i_crit_edge

if.then44.i.if.else.i_crit_edge:                  ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then44.i
  %18 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ah, align 4
  %call51.i = tail call i32 %19(ptr noundef %ah, i32 noundef 30824) #6
  %and52.i = and i32 %call51.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and52.i)
  %cmp53.i = icmp eq i32 %and52.i, 1
  br i1 %cmp53.i, label %land.lhs.true.i.ar9285_hw_clc.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i.ar9285_hw_clc.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ar9285_hw_clc.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then44.i.if.else.i_crit_edge
  br label %ar9285_hw_clc.exit

ar9285_hw_clc.exit:                               ; preds = %if.else.i, %land.lhs.true.i.ar9285_hw_clc.exit_crit_edge
  %.sink123.i = phi i32 [ 1024, %if.else.i ], [ 1280, %land.lhs.true.i.ar9285_hw_clc.exit_crit_edge ]
  %write59.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %20 = ptrtoint ptr %write59.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write59.i, align 4
  %and60.i = and i32 %call47.i, -1793
  %or61.i = or i32 %.sink123.i, %and60.i
  tail call void %21(ptr noundef %ah, i32 noundef %or61.i, i32 noundef 30768) #6
  %call63.i = tail call fastcc zeroext i1 @ar9285_hw_cl_cal(ptr noundef %ah, ptr noundef %chan) #6
  %22 = ptrtoint ptr %write59.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write59.i, align 4
  tail call void %23(ptr noundef %ah, i32 noundef %call47.i, i32 noundef 30768) #6
  br i1 %call63.i, label %ar9285_hw_clc.exit.if.end72_crit_edge, label %ar9285_hw_clc.exit.cleanup_crit_edge

ar9285_hw_clc.exit.cleanup_crit_edge:             ; preds = %ar9285_hw_clc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ar9285_hw_clc.exit.if.end72_crit_edge:            ; preds = %ar9285_hw_clc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.else13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %1)
  %cmp16 = icmp ugt i32 %1, 127
  br i1 %cmp16, label %if.then17, label %if.else13.if.end30_crit_edge

if.else13.if.end30_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then17:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_const_cmp4(i32 383, i32 %1)
  %cmp20 = icmp ugt i32 %1, 383
  br i1 %cmp20, label %if.then17.if.end23_crit_edge, label %if.then21

if.then17.if.end23_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %24 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmw, align 4
  %call22 = tail call i32 %25(ptr noundef %ah, i32 noundef 38956, i32 noundef 0, i32 noundef 32768) #6
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then17.if.end23_crit_edge
  %rmw25 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %26 = ptrtoint ptr %rmw25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmw25, align 4
  %28 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %29)
  %cmp28 = icmp ugt i32 %29, 447
  %cond = select i1 %cmp28, i32 41668, i32 39008
  %call29 = tail call i32 %27(ptr noundef %ah, i32 noundef %cond, i32 noundef 65536, i32 noundef 0) #6
  br label %if.end30

if.end30:                                         ; preds = %if.end23, %if.else13.if.end30_crit_edge
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %30 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write, align 4
  %32 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ah, align 4
  %34 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %35)
  %cmp35 = icmp ugt i32 %35, 447
  %cond36 = select i1 %cmp35, i32 41668, i32 39008
  %call37 = tail call i32 %33(ptr noundef %ah, i32 noundef %cond36) #6
  %or = or i32 %call37, 1
  %36 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %37)
  %cmp40 = icmp ugt i32 %37, 447
  %cond41 = select i1 %cmp40, i32 41668, i32 39008
  tail call void %31(ptr noundef %ah, i32 noundef %or, i32 noundef %cond41) #6
  %38 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %39)
  %cmp44 = icmp ugt i32 %39, 447
  %cond45 = select i1 %cmp44, i32 41668, i32 39008
  %call46 = tail call zeroext i1 @ath9k_hw_wait(ptr noundef %ah, i32 noundef %cond45, i32 noundef 1, i32 noundef 0, i32 noundef 100000) #6
  br i1 %call46, label %if.end50, label %do.body

do.body:                                          ; preds = %if.end30
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %40 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %debug_mask, align 4
  %and = and i32 %41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then48

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then48:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.29, i32 noundef 100) #6
  br label %cleanup

if.end50:                                         ; preds = %if.end30
  %42 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %43)
  %cmp53 = icmp ugt i32 %43, 127
  br i1 %cmp53, label %if.then54, label %if.end50.if.end72_crit_edge

if.end50.if.end72_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_const_cmp4(i32 383, i32 %43)
  %cmp57 = icmp ugt i32 %43, 383
  br i1 %cmp57, label %if.then54.if.end62_crit_edge, label %if.then58

if.then54.if.end62_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then58:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  %rmw60 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %44 = ptrtoint ptr %rmw60 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmw60, align 4
  %call61 = tail call i32 %45(ptr noundef %ah, i32 noundef 38956, i32 noundef 32768, i32 noundef 0) #6
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %if.then54.if.end62_crit_edge
  %rmw64 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %46 = ptrtoint ptr %rmw64 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmw64, align 4
  %48 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %49)
  %cmp67 = icmp ugt i32 %49, 447
  %cond68 = select i1 %cmp67, i32 41668, i32 39008
  %call69 = tail call i32 %47(ptr noundef %ah, i32 noundef %cond68, i32 noundef 0, i32 noundef 65536) #6
  br label %if.end72

if.end72:                                         ; preds = %if.end62, %if.end50.if.end72_crit_edge, %ar9285_hw_clc.exit.if.end72_crit_edge, %for.end41.i.if.end72_crit_edge, %for.cond14.preheader.i.if.end72_crit_edge, %if.then.if.end72_crit_edge
  tail call fastcc void @ar9002_hw_pa_cal(ptr noundef %ah, i1 noundef zeroext true)
  %call73 = tail call i32 @ath9k_hw_loadnf(ptr noundef %ah, ptr noundef %chan) #6
  tail call void @ath9k_hw_start_nfcal(ptr noundef %ah, i1 noundef zeroext true) #6
  %cal_list_curr = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 53
  %50 = ptrtoint ptr %cal_list_curr to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %cal_list_curr, align 4
  %cal_list_last = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 52
  %51 = ptrtoint ptr %cal_list_last to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %cal_list_last, align 4
  %cal_list = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 51
  %52 = ptrtoint ptr %cal_list to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %cal_list, align 4
  %53 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %54)
  %cmp76 = icmp eq i32 %54, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %54)
  %cmp79 = icmp ugt i32 %54, 63
  %or.cond = or i1 %cmp76, %cmp79
  br i1 %or.cond, label %if.then80, label %if.end72.if.end217_crit_edge

if.end72.if.end217_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end217

if.then80:                                        ; preds = %if.end72
  %supp_cals = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 46
  %spec.store.select = select i1 %cmp79, i32 7, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %54)
  %cmp90 = icmp eq i32 %54, 384
  %and93 = and i32 %spec.store.select, 6
  %spec.select = select i1 %cmp90, i32 %and93, i32 %spec.store.select
  %55 = ptrtoint ptr %supp_cals to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %spec.select, ptr %supp_cals, align 4
  %and.i334 = and i32 %spec.select, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i334)
  %cond364.not = icmp eq i32 %and.i334, 0
  br i1 %cond364.not, label %if.then80.if.end131_crit_edge, label %ar9002_hw_is_cal_supported.exit

if.then80.if.end131_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131

ar9002_hw_is_cal_supported.exit:                  ; preds = %if.then80
  %channelFlags.i = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %56 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %channelFlags.i, align 2
  %58 = and i16 %57, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool.not.i335.not = icmp eq i16 %58, 0
  br i1 %tobool.not.i335.not, label %ar9002_hw_is_cal_supported.exit.if.end131_crit_edge, label %do.body123

ar9002_hw_is_cal_supported.exit.if.end131_crit_edge: ; preds = %ar9002_hw_is_cal_supported.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131

do.body123:                                       ; preds = %ar9002_hw_is_cal_supported.exit
  %adcgain_caldata = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 49
  %calState = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 49, i32 1
  %59 = ptrtoint ptr %calState to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %calState, align 4
  %calNext = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 49, i32 2
  %60 = ptrtoint ptr %cal_list_last to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %adcgain_caldata, ptr %cal_list_last, align 4
  %61 = ptrtoint ptr %cal_list to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %adcgain_caldata, ptr %cal_list, align 4
  %62 = ptrtoint ptr %calNext to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %adcgain_caldata, ptr %calNext, align 4
  %debug_mask124 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %63 = ptrtoint ptr %debug_mask124 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %debug_mask124, align 4
  %and125 = and i32 %64, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %do.body123.if.end131_crit_edge, label %if.then127

do.body123.if.end131_crit_edge:                   ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131

if.then127:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.30) #6
  br label %if.end131

if.end131:                                        ; preds = %if.then127, %do.body123.if.end131_crit_edge, %ar9002_hw_is_cal_supported.exit.if.end131_crit_edge, %if.then80.if.end131_crit_edge
  %65 = ptrtoint ptr %supp_cals to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %supp_cals, align 4
  %and.i337 = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i337)
  %switch.not = icmp eq i32 %and.i337, 0
  br i1 %switch.not, label %if.end131.if.end170_crit_edge, label %ar9002_hw_is_cal_supported.exit343

if.end131.if.end170_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end170

ar9002_hw_is_cal_supported.exit343:               ; preds = %if.end131
  %channelFlags.i339 = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %67 = ptrtoint ptr %channelFlags.i339 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %channelFlags.i339, align 2
  %69 = and i16 %68, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool.not.i340.not = icmp eq i16 %69, 0
  br i1 %tobool.not.i340.not, label %ar9002_hw_is_cal_supported.exit343.if.end170_crit_edge, label %do.body134

ar9002_hw_is_cal_supported.exit343.if.end170_crit_edge: ; preds = %ar9002_hw_is_cal_supported.exit343
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end170

do.body134:                                       ; preds = %ar9002_hw_is_cal_supported.exit343
  %adcdc_caldata = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 50
  %calState135 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 50, i32 1
  %70 = ptrtoint ptr %calState135 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %calState135, align 4
  %calNext137 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 50, i32 2
  %71 = ptrtoint ptr %cal_list_last to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cal_list_last, align 4
  %cmp142 = icmp eq ptr %72, null
  br i1 %cmp142, label %if.then143, label %if.else150

if.then143:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %cal_list_last to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %adcdc_caldata, ptr %cal_list_last, align 4
  %74 = ptrtoint ptr %cal_list to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %adcdc_caldata, ptr %cal_list, align 4
  br label %do.body162

if.else150:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #8
  %calNext153 = getelementptr inbounds %struct.ath9k_cal_list, ptr %72, i32 0, i32 2
  %75 = ptrtoint ptr %calNext153 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %adcdc_caldata, ptr %calNext153, align 4
  %76 = ptrtoint ptr %cal_list_last to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %adcdc_caldata, ptr %cal_list_last, align 4
  %77 = ptrtoint ptr %cal_list to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cal_list, align 4
  br label %do.body162

do.body162:                                       ; preds = %if.else150, %if.then143
  %storemerge366 = phi ptr [ %78, %if.else150 ], [ %adcdc_caldata, %if.then143 ]
  %79 = ptrtoint ptr %calNext137 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %storemerge366, ptr %calNext137, align 4
  %debug_mask163 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %80 = ptrtoint ptr %debug_mask163 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %debug_mask163, align 4
  %and164 = and i32 %81, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %do.body162.if.end170_crit_edge, label %if.then166

do.body162.if.end170_crit_edge:                   ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end170

if.then166:                                       ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.31) #6
  br label %if.end170

if.end170:                                        ; preds = %if.then166, %do.body162.if.end170_crit_edge, %ar9002_hw_is_cal_supported.exit343.if.end170_crit_edge, %if.end131.if.end170_crit_edge
  %82 = ptrtoint ptr %supp_cals to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %supp_cals, align 4
  %and.i345 = and i32 %83, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i345)
  %cond365.not = icmp eq i32 %and.i345, 0
  br i1 %cond365.not, label %if.end170.if.end209_crit_edge, label %do.body173

if.end170.if.end209_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end209

do.body173:                                       ; preds = %if.end170
  %iq_caldata = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 48
  %calState174 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 48, i32 1
  %84 = ptrtoint ptr %calState174 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %calState174, align 4
  %calNext176 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 48, i32 2
  %85 = ptrtoint ptr %cal_list_last to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cal_list_last, align 4
  %cmp181 = icmp eq ptr %86, null
  br i1 %cmp181, label %if.then182, label %if.else189

if.then182:                                       ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %cal_list_last to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %iq_caldata, ptr %cal_list_last, align 4
  %88 = ptrtoint ptr %cal_list to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %iq_caldata, ptr %cal_list, align 4
  br label %do.body201

if.else189:                                       ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #8
  %calNext192 = getelementptr inbounds %struct.ath9k_cal_list, ptr %86, i32 0, i32 2
  %89 = ptrtoint ptr %calNext192 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %iq_caldata, ptr %calNext192, align 4
  %90 = ptrtoint ptr %cal_list_last to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %iq_caldata, ptr %cal_list_last, align 4
  %91 = ptrtoint ptr %cal_list to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cal_list, align 4
  br label %do.body201

do.body201:                                       ; preds = %if.else189, %if.then182
  %storemerge = phi ptr [ %92, %if.else189 ], [ %iq_caldata, %if.then182 ]
  %93 = ptrtoint ptr %calNext176 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %storemerge, ptr %calNext176, align 4
  %debug_mask202 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %94 = ptrtoint ptr %debug_mask202 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %debug_mask202, align 4
  %and203 = and i32 %95, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and203)
  %tobool204.not = icmp eq i32 %and203, 0
  br i1 %tobool204.not, label %do.body201.if.end209_crit_edge, label %if.then205

do.body201.if.end209_crit_edge:                   ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end209

if.then205:                                       ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.32) #6
  br label %if.end209

if.end209:                                        ; preds = %if.then205, %do.body201.if.end209_crit_edge, %if.end170.if.end209_crit_edge
  %96 = ptrtoint ptr %cal_list to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cal_list, align 4
  %98 = ptrtoint ptr %cal_list_curr to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %97, ptr %cal_list_curr, align 4
  %tobool213.not = icmp eq ptr %97, null
  br i1 %tobool213.not, label %if.end209.if.end217_crit_edge, label %if.then214

if.end209.if.end217_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end217

if.then214:                                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ath9k_hw_reset_calibration(ptr noundef %ah, ptr noundef nonnull %97) #6
  br label %if.end217

if.end217:                                        ; preds = %if.then214, %if.end209.if.end217_crit_edge, %if.end72.if.end217_crit_edge
  %caldata = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 31
  %99 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %caldata, align 4
  %tobool218.not = icmp eq ptr %100, null
  br i1 %tobool218.not, label %if.end217.cleanup_crit_edge, label %if.then219

if.end217.cleanup_crit_edge:                      ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then219:                                       ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #8
  %CalValid = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %CalValid to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %CalValid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then219, %if.end217.cleanup_crit_edge, %if.then48, %do.body.cleanup_crit_edge, %ar9285_hw_clc.exit.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then.cleanup_crit_edge ], [ false, %ar9285_hw_clc.exit.cleanup_crit_edge ], [ false, %if.then48 ], [ false, %do.body.cleanup_crit_edge ], [ true, %if.then219 ], [ true, %if.end217.cleanup_crit_edge ], [ false, %if.then9.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9002_hw_setup_calibration(ptr noundef %ah, ptr nocapture noundef readonly %currCal) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %0 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmw, align 4
  %2 = ptrtoint ptr %currCal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %currCal, align 4
  %calCountMax = getelementptr inbounds %struct.ath9k_percal_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %calCountMax to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %calCountMax, align 4
  %shl = shl i32 %5, 12
  %and = and i32 %shl, 61440
  %call1 = tail call i32 %1(ptr noundef %ah, i32 noundef 39200, i32 noundef %and, i32 noundef 61440) #6
  %6 = ptrtoint ptr %currCal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %currCal, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %9, label %entry.sw.epilog_crit_edge [
    i32 4, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb16
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %11 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write, align 4
  tail call void %12(ptr noundef %ah, i32 noundef 0, i32 noundef 39408) #6
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug_mask, align 4
  %and4 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.sw.epilog.sink.split_crit_edge

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %write7 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %15 = ptrtoint ptr %write7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write7, align 4
  tail call void %16(ptr noundef %ah, i32 noundef 1, i32 noundef 39408) #6
  %debug_mask9 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %debug_mask9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %debug_mask9, align 4
  %and10 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %sw.bb5.sw.epilog_crit_edge, label %sw.bb5.sw.epilog.sink.split_crit_edge

sw.bb5.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %write18 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %19 = ptrtoint ptr %write18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write18, align 4
  tail call void %20(ptr noundef %ah, i32 noundef 2, i32 noundef 39408) #6
  %debug_mask20 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %debug_mask20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %debug_mask20, align 4
  %and21 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %sw.bb16.sw.epilog_crit_edge, label %sw.bb16.sw.epilog.sink.split_crit_edge

sw.bb16.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.bb16.sw.epilog.sink.split_crit_edge, %sw.bb5.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %.str.36.sink = phi ptr [ @.str.34, %sw.bb.sw.epilog.sink.split_crit_edge ], [ @.str.35, %sw.bb5.sw.epilog.sink.split_crit_edge ], [ @.str.36, %sw.bb16.sw.epilog.sink.split_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull %.str.36.sink) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb16.sw.epilog_crit_edge, %sw.bb5.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %23 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmw, align 4
  %call29 = tail call i32 %24(ptr noundef %ah, i32 noundef 39200, i32 noundef 65536, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ar9002_hw_calibrate(ptr noundef %ah, ptr noundef %chan, i8 noundef zeroext %rxchainmask, i1 noundef zeroext %longcal) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cal_list_curr = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 53
  %0 = ptrtoint ptr %cal_list_curr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cal_list_curr, align 4
  %2 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah, align 4
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %5)
  %cmp = icmp ugt i32 %5, 447
  %cond = select i1 %cmp, i32 41668, i32 39008
  %call = tail call i32 %3(ptr noundef %ah, i32 noundef %cond) #6
  %and = and i32 %call, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %caldata = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 31
  %6 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %caldata, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then:                                          ; preds = %entry
  %cal_flags = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %cal_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %cal_flags, align 4
  %10 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6 = icmp ne i32 %10, 0
  br i1 %longcal, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 8, ptr noundef %cal_flags) #6
  br label %if.end18

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %cal_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %cal_flags, align 4
  %13 = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool15.not = icmp ne i32 %13, 0
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then9, %entry.if.end18_crit_edge
  %longcal.addr.0.shrunk = phi i1 [ true, %if.then9 ], [ %longcal, %entry.if.end18_crit_edge ], [ %tobool15.not, %if.else ]
  %nfcal_pending.0.shrunk = phi i1 [ %tobool6, %if.then9 ], [ false, %entry.if.end18_crit_edge ], [ %tobool6, %if.else ]
  %tobool19.not = icmp eq ptr %1, null
  br i1 %tobool19.not, label %if.end18.if.end51_crit_edge, label %land.end

if.end18.if.end51_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

land.end:                                         ; preds = %if.end18
  %calState = getelementptr inbounds %struct.ath9k_cal_list, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %calState to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %calState, align 4
  %16 = add i32 %15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %17 = icmp ult i32 %16, 2
  %.not = xor i1 %17, true
  %brmerge = select i1 %.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %land.end.if.end44_crit_edge, label %if.then26

land.end.if.end44_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then26:                                        ; preds = %land.end
  %18 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %caldata, align 4
  %20 = ptrtoint ptr %calState to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %calState, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.i = icmp eq i32 %21, 2
  br i1 %cmp.i, label %if.then.i, label %if.else37.i

if.then.i:                                        ; preds = %if.then26
  %22 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ah, align 4
  %call.i = tail call i32 %23(ptr noundef %ah, i32 noundef 39200) #6
  %and.i = and i32 %call.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then2.i, label %if.else21.i

if.then2.i:                                       ; preds = %if.then.i
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %calCollect.i = getelementptr inbounds %struct.ath9k_percal_data, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %calCollect.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %calCollect.i, align 4
  tail call void %27(ptr noundef %ah) #6
  %cal_samples.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 58
  %28 = ptrtoint ptr %cal_samples.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %cal_samples.i, align 4
  %inc.i = add i16 %29, 1
  store i16 %inc.i, ptr %cal_samples.i, align 4
  %conv.i = zext i16 %inc.i to i32
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %calNumSamples.i = getelementptr inbounds %struct.ath9k_percal_data, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %calNumSamples.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %calNumSamples.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv.i)
  %cmp5.not.i = icmp ugt i32 %33, %conv.i
  br i1 %cmp5.not.i, label %if.else.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = and i8 %rxchainmask, 1
  %35 = lshr i8 %rxchainmask, 1
  %36 = and i8 %35, 1
  %spec.select.1.i = add nuw nsw i8 %36, %34
  %37 = lshr i8 %rxchainmask, 2
  %38 = and i8 %37, 1
  %spec.select.2.i = add nuw nsw i8 %spec.select.1.i, %38
  %calPostProc.i = getelementptr inbounds %struct.ath9k_percal_data, ptr %31, i32 0, i32 4
  %39 = ptrtoint ptr %calPostProc.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %calPostProc.i, align 4
  tail call void %40(ptr noundef %ah, i8 noundef zeroext %spec.select.2.i) #6
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %CalValid.i = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %19, i32 0, i32 3
  %45 = ptrtoint ptr %CalValid.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %CalValid.i, align 4
  %or.i = or i32 %46, %44
  store i32 %or.i, ptr %CalValid.i, align 4
  br label %ar9002_hw_per_calibration.exit

if.else.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ar9002_hw_setup_calibration(ptr noundef %ah, ptr noundef nonnull %1) #6
  br label %cleanup

if.else21.i:                                      ; preds = %if.then.i
  %cal_start_time.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 47
  %47 = ptrtoint ptr %cal_start_time.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cal_start_time.i, align 4
  %add.i = add i32 %48, 3000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp23.i = icmp slt i32 %sub.i, 0
  br i1 %cmp23.i, label %if.then25.i, label %if.else21.i.cleanup_crit_edge

if.else21.i.cleanup_crit_edge:                    ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then25.i:                                      ; preds = %if.else21.i
  %rmw.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %50 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmw.i, align 4
  %call27.i = tail call i32 %51(ptr noundef %ah, i32 noundef 39200, i32 noundef 0, i32 noundef 65536) #6
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %52 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %debug_mask.i, align 4
  %and29.i = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.then25.i.ar9002_hw_per_calibration.exit_crit_edge, label %if.then31.i

if.then25.i.ar9002_hw_per_calibration.exit_crit_edge: ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ar9002_hw_per_calibration.exit

if.then31.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #8
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.37) #6
  br label %ar9002_hw_per_calibration.exit

if.else37.i:                                      ; preds = %if.then26
  %CalValid38.i = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %19, i32 0, i32 3
  %54 = ptrtoint ptr %CalValid38.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %CalValid38.i, align 4
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %and41.i = and i32 %59, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.then43.i, label %if.else37.i.cleanup_crit_edge

if.else37.i.cleanup_crit_edge:                    ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then43.i:                                      ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ath9k_hw_reset_calibration(ptr noundef %ah, ptr noundef nonnull %1) #6
  br label %cleanup

ar9002_hw_per_calibration.exit:                   ; preds = %if.then31.i, %if.then25.i.ar9002_hw_per_calibration.exit_crit_edge, %for.cond.preheader.i
  %storemerge = phi i32 [ 3, %for.cond.preheader.i ], [ 1, %if.then31.i ], [ 1, %if.then25.i.ar9002_hw_per_calibration.exit_crit_edge ]
  %60 = ptrtoint ptr %calState to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %storemerge, ptr %calState, align 4
  %61 = ptrtoint ptr %cal_list_curr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cal_list_curr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %ar9002_hw_per_calibration.exit
  %.pn = phi ptr [ %1, %ar9002_hw_per_calibration.exit ], [ %currCal.0, %for.body.for.cond_crit_edge ]
  %currCal.0.in = getelementptr inbounds %struct.ath9k_cal_list, ptr %.pn, i32 0, i32 2
  %63 = ptrtoint ptr %currCal.0.in to i32
  call void @__asan_load4_noabort(i32 %63)
  %currCal.0 = load ptr, ptr %currCal.0.in, align 4
  %cmp31.not = icmp eq ptr %currCal.0, %62
  br i1 %cmp31.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.cond
  %calState32 = getelementptr inbounds %struct.ath9k_cal_list, ptr %currCal.0, i32 0, i32 1
  %64 = ptrtoint ptr %calState32 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %calState32, align 4
  %cmp33 = icmp eq i32 %65, 1
  br i1 %cmp33, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %currCal.0.lcssa = phi ptr [ %currCal.0, %for.body.for.end_crit_edge ], [ %62, %for.cond.for.end_crit_edge ]
  %calState37 = getelementptr inbounds %struct.ath9k_cal_list, ptr %currCal.0.lcssa, i32 0, i32 1
  %66 = ptrtoint ptr %calState37 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %calState37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp38 = icmp eq i32 %67, 1
  br i1 %cmp38, label %if.then39, label %if.else41

if.then39:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %cal_list_curr to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %currCal.0.lcssa, ptr %cal_list_curr, align 4
  br label %if.end44

if.else41:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %cal_list = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 51
  %69 = ptrtoint ptr %cal_list to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cal_list, align 4
  %71 = ptrtoint ptr %cal_list_curr to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %cal_list_curr, align 4
  br label %if.end51

if.end44:                                         ; preds = %if.then39, %land.end.if.end44_crit_edge
  %currCal.1 = phi ptr [ %currCal.0.lcssa, %if.then39 ], [ %1, %land.end.if.end44_crit_edge ]
  %percal_pending.0.shrunk = phi i1 [ true, %if.then39 ], [ %17, %land.end.if.end44_crit_edge ]
  %percal_pending.0.shrunk.not = xor i1 %percal_pending.0.shrunk, true
  %brmerge122 = select i1 %percal_pending.0.shrunk.not, i1 true, i1 %tobool.not
  %brmerge123 = select i1 %brmerge122, i1 true, i1 %longcal.addr.0.shrunk
  br i1 %brmerge123, label %if.end44.if.end51_crit_edge, label %if.then50

if.end44.if.end51_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then50:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ath9k_hw_reset_calibration(ptr noundef %ah, ptr noundef %currCal.1) #6
  br label %cleanup

if.end51:                                         ; preds = %if.end44.if.end51_crit_edge, %if.else41, %if.end18.if.end51_crit_edge
  %percal_pending.0.shrunk.not143 = phi i1 [ %percal_pending.0.shrunk.not, %if.end44.if.end51_crit_edge ], [ true, %if.else41 ], [ true, %if.end18.if.end51_crit_edge ]
  %brmerge124 = select i1 %longcal.addr.0.shrunk, i1 true, i1 %nfcal_pending.0.shrunk
  br i1 %brmerge124, label %if.then54, label %if.end51.if.end71_crit_edge

if.end51.if.end71_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then54:                                        ; preds = %if.end51
  %call55 = tail call zeroext i1 @ath9k_hw_getnf(ptr noundef %ah, ptr noundef %chan) #6
  br i1 %call55, label %if.then56, label %if.then54.if.end61_crit_edge

if.then54.if.end61_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then56:                                        ; preds = %if.then54
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 8
  %72 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %curchan, align 4
  %call57 = tail call i32 @ath9k_hw_loadnf(ptr noundef %ah, ptr noundef %73) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.then56.cleanup_crit_edge, label %if.then56.if.end61_crit_edge

if.then56.if.end61_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end61:                                         ; preds = %if.then56.if.end61_crit_edge, %if.then54.if.end61_crit_edge
  br i1 %longcal.addr.0.shrunk, label %if.then63, label %if.end61.if.end71_crit_edge

if.end61.if.end71_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then63:                                        ; preds = %if.end61
  %74 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %caldata, align 4
  %tobool65.not = icmp eq ptr %75, null
  br i1 %tobool65.not, label %if.then63.if.end69_crit_edge, label %if.then66

if.then63.if.end69_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then66:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  %cal_flags68 = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %75, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %cal_flags68) #6
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %if.then63.if.end69_crit_edge
  tail call void @ath9k_hw_start_nfcal(ptr noundef %ah, i1 noundef zeroext false) #6
  tail call fastcc void @ar9002_hw_pa_cal(ptr noundef %ah, i1 noundef zeroext false)
  %76 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 383, i32 %77)
  %cmp.i127 = icmp ugt i32 %77, 383
  br i1 %cmp.i127, label %land.lhs.true.i, label %if.end69.if.else.i131_crit_edge

if.end69.if.else.i131_crit_edge:                  ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i131

land.lhs.true.i:                                  ; preds = %if.end69
  %eep_ops.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 10
  %78 = ptrtoint ptr %eep_ops.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %eep_ops.i, align 4
  %get_eeprom.i = getelementptr inbounds %struct.eeprom_ops, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %get_eeprom.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %get_eeprom.i, align 4
  %call.i128 = tail call i32 %81(ptr noundef %ah, i32 noundef 17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool.not.i129 = icmp eq i32 %call.i128, 0
  br i1 %tobool.not.i129, label %if.elsethread-pre-split.i, label %if.then.i130

if.then.i130:                                     ; preds = %land.lhs.true.i
  %82 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ah, align 4
  %call.i.i = tail call i32 %83(ptr noundef %ah, i32 noundef 41572) #6
  %and.i.i = lshr i32 %call.i.i, 1
  %shr.i.i = and i32 %and.i.i, 255
  %initPDADC.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 78
  %84 = ptrtoint ptr %initPDADC.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %initPDADC.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp.i.i = icmp eq i32 %85, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i.i)
  %cmp1.i.i = icmp eq i32 %shr.i.i, 0
  %or.cond.i.i = select i1 %cmp.i.i, i1 true, i1 %cmp1.i.i
  br i1 %or.cond.i.i, label %if.then.i130.if.end71_crit_edge, label %if.else.i.i

if.then.i130.if.end71_crit_edge:                  ; preds = %if.then.i130
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.else.i.i:                                      ; preds = %if.then.i130
  %86 = ptrtoint ptr %eep_ops.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %eep_ops.i, align 4
  %get_eeprom.i.i = getelementptr inbounds %struct.eeprom_ops, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %get_eeprom.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %get_eeprom.i.i, align 4
  %call2.i.i = tail call i32 %89(ptr noundef %ah, i32 noundef 23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %if.else.i.i.if.end.i.i_crit_edge, label %if.else5.i.i

if.else.i.i.if.end.i.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.else5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %initPDADC.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %initPDADC.i.i, align 4
  %sub.i.i = sub i32 %shr.i.i, %91
  %mul.i.i = shl i32 %sub.i.i, 2
  %div.i.i = sdiv i32 %mul.i.i, %call2.i.i
  %phi.bo.i.i = shl i32 %div.i.i, 10
  %phi.bo31.i.i = and i32 %phi.bo.i.i, 64512
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else5.i.i, %if.else.i.i.if.end.i.i_crit_edge
  %delta.0.i.i = phi i32 [ %phi.bo31.i.i, %if.else5.i.i ], [ 0, %if.else.i.i.if.end.i.i_crit_edge ]
  %rmw.i.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %92 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rmw.i.i, align 4
  %call9.i.i = tail call i32 %93(ptr noundef %ah, i32 noundef 41880, i32 noundef %delta.0.i.i, i32 noundef 64512) #6
  %94 = ptrtoint ptr %rmw.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rmw.i.i, align 4
  %call14.i.i = tail call i32 %95(ptr noundef %ah, i32 noundef 45976, i32 noundef %delta.0.i.i, i32 noundef 64512) #6
  br label %if.end71

if.elsethread-pre-split.i:                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %96)
  %.pr.i = load i32, ptr %macVersion, align 4
  br label %if.else.i131

if.else.i131:                                     ; preds = %if.elsethread-pre-split.i, %if.end69.if.else.i131_crit_edge
  %97 = phi i32 [ %.pr.i, %if.elsethread-pre-split.i ], [ %77, %if.end69.if.else.i131_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %97)
  %cmp3.i = icmp ugt i32 %97, 127
  br i1 %cmp3.i, label %land.lhs.true4.i, label %if.else.i131.if.end71_crit_edge

if.else.i131.if.end71_crit_edge:                  ; preds = %if.else.i131
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

land.lhs.true4.i:                                 ; preds = %if.else.i131
  %eep_ops5.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 10
  %98 = ptrtoint ptr %eep_ops5.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %eep_ops5.i, align 4
  %get_eeprom6.i = getelementptr inbounds %struct.eeprom_ops, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %get_eeprom6.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %get_eeprom6.i, align 4
  %call7.i = tail call i32 %101(ptr noundef %ah, i32 noundef 17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true4.i.if.end71_crit_edge, label %if.then9.i

land.lhs.true4.i.if.end71_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then9.i:                                       ; preds = %land.lhs.true4.i
  %102 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ah, align 4
  %call.i18.i = tail call i32 %103(ptr noundef %ah, i32 noundef 41572) #6
  %and.i19.i = lshr i32 %call.i18.i, 1
  %shr.i20.i = and i32 %and.i19.i, 255
  %initPDADC.i21.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 78
  %104 = ptrtoint ptr %initPDADC.i21.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %initPDADC.i21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp.i22.i = icmp eq i32 %105, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i20.i)
  %cmp1.i23.i = icmp eq i32 %shr.i20.i, 0
  %or.cond.i24.i = select i1 %cmp.i22.i, i1 true, i1 %cmp1.i23.i
  br i1 %or.cond.i24.i, label %if.then9.i.if.end71_crit_edge, label %if.end.i28.i

if.then9.i.if.end71_crit_edge:                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.end.i28.i:                                     ; preds = %if.then9.i
  %106 = ptrtoint ptr %eep_ops5.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %eep_ops5.i, align 4
  %get_eeprom.i26.i = getelementptr inbounds %struct.eeprom_ops, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %get_eeprom.i26.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %get_eeprom.i26.i, align 4
  %call2.i27.i = tail call i32 %109(ptr noundef %ah, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i27.i)
  %tobool.not.i.i = icmp eq i32 %call2.i27.i, 0
  %110 = ptrtoint ptr %initPDADC.i21.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %initPDADC.i21.i, align 4
  %..i.i = select i1 %tobool.not.i.i, i32 5, i32 4
  %.49.i.i = select i1 %tobool.not.i.i, i32 10, i32 8
  %sub6.i.i = sub i32 %shr.i20.i, %111
  %add7.i.i = add i32 %sub6.i.i, %..i.i
  %div8.i.i = sdiv i32 %add7.i.i, %.49.i.i
  %PDADCdelta.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 79
  %112 = ptrtoint ptr %PDADCdelta.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %PDADCdelta.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div8.i.i, i32 %113)
  %cmp10.not.i.i = icmp eq i32 %div8.i.i, %113
  br i1 %cmp10.not.i.i, label %if.end.i28.i.if.end71_crit_edge, label %if.then11.i.i

if.end.i28.i.if.end71_crit_edge:                  ; preds = %if.end.i28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then11.i.i:                                    ; preds = %if.end.i28.i
  %114 = ptrtoint ptr %PDADCdelta.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %div8.i.i, ptr %PDADCdelta.i.i, align 4
  %rmw.i29.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then11.i.i
  %i.047.i.i = phi i32 [ 1, %if.then11.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 77, i32 %i.047.i.i
  %115 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx.i.i, align 4
  %sub14.i.i = sub i32 %116, %div8.i.i
  %117 = tail call i32 @llvm.smax.i32(i32 %sub14.i.i, i32 0) #6
  %118 = ptrtoint ptr %rmw.i29.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %rmw.i29.i, align 4
  %mul.i30.i = shl nuw nsw i32 %i.047.i.i, 2
  %add19.i.i = add nuw nsw i32 %mul.i30.i, 41728
  %shl.i.i = shl i32 %117, 12
  %and20.i.i = and i32 %shl.i.i, 520192
  %call21.i.i = tail call i32 %119(ptr noundef %ah, i32 noundef %add19.i.i, i32 noundef %and20.i.i, i32 noundef 520192) #6
  %inc.i.i = add nuw nsw i32 %i.047.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 22
  br i1 %exitcond.not.i.i, label %for.body.i.i.if.end71_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body.i.i.if.end71_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.end71:                                         ; preds = %for.body.i.i.if.end71_crit_edge, %if.end.i28.i.if.end71_crit_edge, %if.then9.i.if.end71_crit_edge, %land.lhs.true4.i.if.end71_crit_edge, %if.else.i131.if.end71_crit_edge, %if.end.i.i, %if.then.i130.if.end71_crit_edge, %if.end61.if.end71_crit_edge, %if.end51.if.end71_crit_edge
  %lnot.ext = zext i1 %percal_pending.0.shrunk.not143 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.then56.cleanup_crit_edge, %if.then50, %if.then43.i, %if.else37.i.cleanup_crit_edge, %if.else21.i.cleanup_crit_edge, %if.else.i
  %retval.0 = phi i32 [ %lnot.ext, %if.end71 ], [ 0, %if.then50 ], [ %call57, %if.then56.cleanup_crit_edge ], [ 0, %if.else21.i.cleanup_crit_edge ], [ 0, %if.else.i ], [ 0, %if.else37.i.cleanup_crit_edge ], [ 0, %if.then43.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9002_hw_iqcal_collect(ptr noundef %ah) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %meas0 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 54
  %meas1 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 55
  %meas2 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 56
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %cal_samples = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 58
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %call = tail call i32 %1(ptr noundef %ah, i32 noundef 39952) #6
  %2 = ptrtoint ptr %meas0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %meas0, align 4
  %add1 = add i32 %3, %call
  store i32 %add1, ptr %meas0, align 4
  %4 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ah, align 4
  %call6 = tail call i32 %5(ptr noundef %ah, i32 noundef 39956) #6
  %6 = ptrtoint ptr %meas1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %meas1, align 4
  %add8 = add i32 %7, %call6
  store i32 %add8, ptr %meas1, align 4
  %8 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ah, align 4
  %call13 = tail call i32 %9(ptr noundef %ah, i32 noundef 39960) #6
  %10 = ptrtoint ptr %meas2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %meas2, align 4
  %add15 = add i32 %11, %call13
  store i32 %add15, ptr %meas2, align 4
  %12 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug_mask, align 4
  %and = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %cal_samples to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cal_samples, align 4
  %conv = zext i16 %15 to i32
  %16 = ptrtoint ptr %meas0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %meas0, align 4
  %18 = ptrtoint ptr %meas1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %meas1, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef 0, i32 noundef %17, i32 noundef %19, i32 noundef %add15) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %20 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ah, align 4
  %call.1 = tail call i32 %21(ptr noundef %ah, i32 noundef 44048) #6
  %arrayidx.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 54, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.1, align 4
  %add1.1 = add i32 %23, %call.1
  store i32 %add1.1, ptr %arrayidx.1, align 4
  %24 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ah, align 4
  %call6.1 = tail call i32 %25(ptr noundef %ah, i32 noundef 44052) #6
  %arrayidx7.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 55, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx7.1, align 4
  %add8.1 = add i32 %27, %call6.1
  store i32 %add8.1, ptr %arrayidx7.1, align 4
  %28 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ah, align 4
  %call13.1 = tail call i32 %29(ptr noundef %ah, i32 noundef 44056) #6
  %arrayidx14.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 56, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx14.1, align 4
  %add15.1 = add i32 %31, %call13.1
  store i32 %add15.1, ptr %arrayidx14.1, align 4
  %32 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %debug_mask, align 4
  %and.1 = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %cal_samples to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %cal_samples, align 4
  %conv.1 = zext i16 %35 to i32
  %36 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.1, align 4
  %38 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx7.1, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1, i32 noundef %conv.1, i32 noundef 1, i32 noundef %37, i32 noundef %39, i32 noundef %add15.1) #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %40 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ah, align 4
  %call.2 = tail call i32 %41(ptr noundef %ah, i32 noundef 48144) #6
  %arrayidx.2 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 54, i32 0, i32 2
  %42 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.2, align 4
  %add1.2 = add i32 %43, %call.2
  store i32 %add1.2, ptr %arrayidx.2, align 4
  %44 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ah, align 4
  %call6.2 = tail call i32 %45(ptr noundef %ah, i32 noundef 48148) #6
  %arrayidx7.2 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 55, i32 0, i32 2
  %46 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx7.2, align 4
  %add8.2 = add i32 %47, %call6.2
  store i32 %add8.2, ptr %arrayidx7.2, align 4
  %48 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ah, align 4
  %call13.2 = tail call i32 %49(ptr noundef %ah, i32 noundef 48152) #6
  %arrayidx14.2 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 56, i32 0, i32 2
  %50 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx14.2, align 4
  %add15.2 = add i32 %51, %call13.2
  store i32 %add15.2, ptr %arrayidx14.2, align 4
  %52 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %debug_mask, align 4
  %and.2 = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %cal_samples to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %cal_samples, align 4
  %conv.2 = zext i16 %55 to i32
  %56 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.2, align 4
  %58 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx7.2, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1, i32 noundef %conv.2, i32 noundef 2, i32 noundef %57, i32 noundef %59, i32 noundef %add15.2) #6
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9002_hw_iqcalibrate(ptr noundef %ah, i8 noundef zeroext %numChains) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %conv = zext i8 %numChains to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %numChains)
  %cmp197.not = icmp eq i8 %numChains, 0
  br i1 %cmp197.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %meas0 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 54
  %meas1 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 55
  %meas2 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 56
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0198 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x i32], ptr %meas0, i32 0, i32 %i.0198
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [3 x i32], ptr %meas1, i32 0, i32 %i.0198
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr [3 x i32], ptr %meas2, i32 0, i32 %i.0198
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body4

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.2, i32 noundef %i.0198) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13

if.then8:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.3, i32 noundef %i.0198, i32 noundef %11) #6
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %do.body4.do.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %5)
  %cmp14 = icmp ugt i32 %5, -2147483648
  %add = sub i32 0, %5
  %spec.select = select i1 %cmp14, i32 %add, i32 %5
  %spec.select194 = zext i1 %cmp14 to i32
  %12 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug_mask, align 4
  %and20 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.end13.do.body26_crit_edge, label %if.then22

do.end13.do.body26_crit_edge:                     ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body26

if.then22:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.4, i32 noundef %i.0198, i32 noundef %1) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body34

if.then30:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.5, i32 noundef %i.0198, i32 noundef %3) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end41

if.then38:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.6, i32 noundef %spec.select194) #6
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %do.body34.do.end41_crit_edge
  %div190 = lshr i32 %1, 1
  %div42191 = lshr i32 %3, 1
  %add43 = add nuw i32 %div42191, %div190
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add43)
  %cmp48.not = icmp ult i32 %add43, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %3)
  %cmp51.not = icmp ult i32 %3, 64
  %or.cond195 = select i1 %cmp51.not, i1 true, i1 %cmp48.not
  br i1 %or.cond195, label %do.end41.for.inc_crit_edge, label %if.then53

do.end41.for.inc_crit_edge:                       ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then53:                                        ; preds = %do.end41
  %div45193 = lshr i32 %3, 6
  %div44192 = lshr i32 %add43, 7
  %div54 = udiv i32 %spec.select, %div44192
  %div55 = udiv i32 %1, %div45193
  %sub56 = add i32 %div55, -64
  %18 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug_mask, align 4
  %and59 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.then53.do.body65_crit_edge, label %if.then61

if.then53.do.body65_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body65

if.then61:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.7, i32 noundef %i.0198, i32 noundef %div54) #6
  br label %do.body65

do.body65:                                        ; preds = %if.then61, %if.then53.do.body65_crit_edge
  %20 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %debug_mask, align 4
  %and67 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %do.body65.do.end72_crit_edge, label %if.then69

do.body65.do.end72_crit_edge:                     ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end72

if.then69:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.8, i32 noundef %i.0198, i32 noundef %sub56) #6
  br label %do.end72

do.end72:                                         ; preds = %if.then69, %do.body65.do.end72_crit_edge
  %and73 = and i32 %div54, 63
  %22 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %debug_mask, align 4
  %and76 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %do.end72.do.end81_crit_edge, label %if.then78

do.end72.do.end81_crit_edge:                      ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end81

if.then78:                                        ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.9, i32 noundef %i.0198, i32 noundef %and73) #6
  br label %do.end81

do.end81:                                         ; preds = %if.then78, %do.end72.do.end81_crit_edge
  %sub85 = sub nuw nsw i32 64, %and73
  %spec.select196 = select i1 %cmp14, i32 %and73, i32 %sub85
  %24 = tail call i32 @llvm.smax.i32(i32 %sub56, i32 -16)
  %25 = tail call i32 @llvm.smin.i32(i32 %24, i32 15)
  %26 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %debug_mask, align 4
  %and97 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %do.end81.do.end102_crit_edge, label %if.then99

do.end81.do.end102_crit_edge:                     ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end102

if.then99:                                        ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.10, i32 noundef %i.0198, i32 noundef %spec.select196, i32 noundef %25) #6
  br label %do.end102

do.end102:                                        ; preds = %if.then99, %do.end81.do.end102_crit_edge
  %28 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmw, align 4
  %shl = shl i32 %i.0198, 12
  %add103 = add nuw nsw i32 %shl, 39200
  %shl104 = shl nuw nsw i32 %spec.select196, 5
  %and105 = and i32 %shl104, 2016
  %call106 = tail call i32 %29(ptr noundef %ah, i32 noundef %add103, i32 noundef %and105, i32 noundef 2016) #6
  %30 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmw, align 4
  %and112 = and i32 %25, 31
  %call113 = tail call i32 %31(ptr noundef %ah, i32 noundef %add103, i32 noundef %and112, i32 noundef 31) #6
  %32 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %debug_mask, align 4
  %and116 = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %do.end102.for.inc_crit_edge, label %if.then118

do.end102.for.inc_crit_edge:                      ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then118:                                       ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.11, i32 noundef %i.0198) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then118, %do.end102.for.inc_crit_edge, %do.end41.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0198, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %rmw124 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %34 = ptrtoint ptr %rmw124 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmw124, align 4
  %call125 = tail call i32 %35(ptr noundef %ah, i32 noundef 39200, i32 noundef 2048, i32 noundef 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9002_hw_adc_gaincal_collect(ptr noundef %ah) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %meas0 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 54
  %meas1 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 55
  %meas2 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 56
  %meas3 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 57
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %cal_samples = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 58
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %call = tail call i32 %1(ptr noundef %ah, i32 noundef 39952) #6
  %2 = ptrtoint ptr %meas0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %meas0, align 4
  %add1 = add i32 %3, %call
  store i32 %add1, ptr %meas0, align 4
  %4 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ah, align 4
  %call6 = tail call i32 %5(ptr noundef %ah, i32 noundef 39956) #6
  %6 = ptrtoint ptr %meas1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %meas1, align 4
  %add8 = add i32 %7, %call6
  store i32 %add8, ptr %meas1, align 4
  %8 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ah, align 4
  %call13 = tail call i32 %9(ptr noundef %ah, i32 noundef 39960) #6
  %10 = ptrtoint ptr %meas2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %meas2, align 4
  %add15 = add i32 %11, %call13
  store i32 %add15, ptr %meas2, align 4
  %12 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ah, align 4
  %call20 = tail call i32 %13(ptr noundef %ah, i32 noundef 39964) #6
  %14 = ptrtoint ptr %meas3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %meas3, align 4
  %add22 = add i32 %15, %call20
  store i32 %add22, ptr %meas3, align 4
  %16 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug_mask, align 4
  %and = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %cal_samples to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %cal_samples, align 4
  %conv = zext i16 %19 to i32
  %20 = ptrtoint ptr %meas0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %meas0, align 4
  %22 = ptrtoint ptr %meas1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %meas1, align 4
  %24 = ptrtoint ptr %meas2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %meas2, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.12, i32 noundef %conv, i32 noundef 0, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %add22) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %26 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ah, align 4
  %call.1 = tail call i32 %27(ptr noundef %ah, i32 noundef 44048) #6
  %arrayidx.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 54, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.1, align 4
  %add1.1 = add i32 %29, %call.1
  store i32 %add1.1, ptr %arrayidx.1, align 4
  %30 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ah, align 4
  %call6.1 = tail call i32 %31(ptr noundef %ah, i32 noundef 44052) #6
  %arrayidx7.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 55, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx7.1, align 4
  %add8.1 = add i32 %33, %call6.1
  store i32 %add8.1, ptr %arrayidx7.1, align 4
  %34 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ah, align 4
  %call13.1 = tail call i32 %35(ptr noundef %ah, i32 noundef 44056) #6
  %arrayidx14.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 56, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx14.1, align 4
  %add15.1 = add i32 %37, %call13.1
  store i32 %add15.1, ptr %arrayidx14.1, align 4
  %38 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ah, align 4
  %call20.1 = tail call i32 %39(ptr noundef %ah, i32 noundef 44060) #6
  %arrayidx21.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 57, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx21.1, align 4
  %add22.1 = add i32 %41, %call20.1
  store i32 %add22.1, ptr %arrayidx21.1, align 4
  %42 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %debug_mask, align 4
  %and.1 = and i32 %43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %cal_samples to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %cal_samples, align 4
  %conv.1 = zext i16 %45 to i32
  %46 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.1, align 4
  %48 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx7.1, align 4
  %50 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx14.1, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.12, i32 noundef %conv.1, i32 noundef 1, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %add22.1) #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %52 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ah, align 4
  %call.2 = tail call i32 %53(ptr noundef %ah, i32 noundef 48144) #6
  %arrayidx.2 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 54, i32 0, i32 2
  %54 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.2, align 4
  %add1.2 = add i32 %55, %call.2
  store i32 %add1.2, ptr %arrayidx.2, align 4
  %56 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ah, align 4
  %call6.2 = tail call i32 %57(ptr noundef %ah, i32 noundef 48148) #6
  %arrayidx7.2 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 55, i32 0, i32 2
  %58 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx7.2, align 4
  %add8.2 = add i32 %59, %call6.2
  store i32 %add8.2, ptr %arrayidx7.2, align 4
  %60 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ah, align 4
  %call13.2 = tail call i32 %61(ptr noundef %ah, i32 noundef 48152) #6
  %arrayidx14.2 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 56, i32 0, i32 2
  %62 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx14.2, align 4
  %add15.2 = add i32 %63, %call13.2
  store i32 %add15.2, ptr %arrayidx14.2, align 4
  %64 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ah, align 4
  %call20.2 = tail call i32 %65(ptr noundef %ah, i32 noundef 48156) #6
  %arrayidx21.2 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 57, i32 0, i32 2
  %66 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx21.2, align 4
  %add22.2 = add i32 %67, %call20.2
  store i32 %add22.2, ptr %arrayidx21.2, align 4
  %68 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %debug_mask, align 4
  %and.2 = and i32 %69, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %cal_samples to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %cal_samples, align 4
  %conv.2 = zext i16 %71 to i32
  %72 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.2, align 4
  %74 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx7.2, align 4
  %76 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx14.2, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.12, i32 noundef %conv.2, i32 noundef 2, i32 noundef %73, i32 noundef %75, i32 noundef %77, i32 noundef %add22.2) #6
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9002_hw_adc_gaincal_calibrate(ptr noundef %ah, i8 noundef zeroext %numChains) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %conv = zext i8 %numChains to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %numChains)
  %cmp137.not = icmp eq i8 %numChains, 0
  br i1 %cmp137.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %meas0 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 54
  %meas1 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 55
  %meas2 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 56
  %meas3 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 57
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0138 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x i32], ptr %meas0, i32 0, i32 %i.0138
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [3 x i32], ptr %meas1, i32 0, i32 %i.0138
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr [3 x i32], ptr %meas2, i32 0, i32 %i.0138
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr [3 x i32], ptr %meas3, i32 0, i32 %i.0138
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  %8 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug_mask, align 4
  %and = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.do.body5_crit_edge, label %if.then

for.body.do.body5_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.13, i32 noundef %i.0138) #6
  br label %do.body5

do.body5:                                         ; preds = %if.then, %for.body.do.body5_crit_edge
  %10 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug_mask, align 4
  %and7 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.body5.do.body13_crit_edge, label %if.then9

do.body5.do.body13_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body13

if.then9:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.14, i32 noundef %i.0138, i32 noundef %1) #6
  br label %do.body13

do.body13:                                        ; preds = %if.then9, %do.body5.do.body13_crit_edge
  %12 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug_mask, align 4
  %and15 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.body13.do.body21_crit_edge, label %if.then17

do.body13.do.body21_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body21

if.then17:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.15, i32 noundef %i.0138, i32 noundef %3) #6
  br label %do.body21

do.body21:                                        ; preds = %if.then17, %do.body13.do.body21_crit_edge
  %14 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug_mask, align 4
  %and23 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body21.do.body29_crit_edge, label %if.then25

do.body21.do.body29_crit_edge:                    ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body29

if.then25:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.16, i32 noundef %i.0138, i32 noundef %5) #6
  br label %do.body29

do.body29:                                        ; preds = %if.then25, %do.body21.do.body29_crit_edge
  %16 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug_mask, align 4
  %and31 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %do.body29.do.end36_crit_edge, label %if.then33

do.body29.do.end36_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end36

if.then33:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.17, i32 noundef %i.0138, i32 noundef %7) #6
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %do.body29.do.end36_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp37.not = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp39.not = icmp eq i32 %7, 0
  %or.cond = select i1 %cmp37.not, i1 true, i1 %cmp39.not
  br i1 %or.cond, label %do.end36.for.inc_crit_edge, label %if.then41

do.end36.for.inc_crit_edge:                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then41:                                        ; preds = %do.end36
  %mul = shl i32 %3, 5
  %div = udiv i32 %mul, %1
  %and42 = and i32 %div, 63
  %mul43 = shl i32 %5, 5
  %div44 = udiv i32 %mul43, %7
  %and45 = and i32 %div44, 63
  %18 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug_mask, align 4
  %and48 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.then41.do.body54_crit_edge, label %if.then50

if.then41.do.body54_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body54

if.then50:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.18, i32 noundef %i.0138, i32 noundef %and42) #6
  br label %do.body54

do.body54:                                        ; preds = %if.then50, %if.then41.do.body54_crit_edge
  %20 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %debug_mask, align 4
  %and56 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %do.body54.do.end61_crit_edge, label %if.then58

do.body54.do.end61_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end61

if.then58:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.19, i32 noundef %i.0138, i32 noundef %and45) #6
  br label %do.end61

do.end61:                                         ; preds = %if.then58, %do.body54.do.end61_crit_edge
  %22 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ah, align 4
  %shl = shl i32 %i.0138, 12
  %add = add nuw nsw i32 %shl, 39348
  %call62 = tail call i32 %23(ptr noundef %ah, i32 noundef %add) #6
  %and63 = and i32 %call62, -4096
  %shl64 = shl nuw nsw i32 %and42, 6
  %or = or i32 %and45, %shl64
  %or65 = or i32 %and63, %or
  %24 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write, align 4
  tail call void %25(ptr noundef %ah, i32 noundef %or65, i32 noundef %add) #6
  %26 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %debug_mask, align 4
  %and71 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %do.end61.for.inc_crit_edge, label %if.then73

do.end61.for.inc_crit_edge:                       ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then73:                                        ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.20, i32 noundef %i.0138) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then73, %do.end61.for.inc_crit_edge, %do.end36.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0138, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %write79 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %28 = ptrtoint ptr %write79 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write79, align 4
  %30 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ah, align 4
  %call82 = tail call i32 %31(ptr noundef %ah, i32 noundef 39348) #6
  %or83 = or i32 %call82, 1073741824
  tail call void %29(ptr noundef %ah, i32 noundef %or83, i32 noundef 39348) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9002_hw_adc_dccal_collect(ptr noundef %ah) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %meas0 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 54
  %meas1 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 55
  %meas2 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 56
  %meas3 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 57
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %cal_samples = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 58
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %call = tail call i32 %1(ptr noundef %ah, i32 noundef 39952) #6
  %2 = ptrtoint ptr %meas0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %meas0, align 4
  %add1 = add i32 %3, %call
  store i32 %add1, ptr %meas0, align 4
  %4 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ah, align 4
  %call6 = tail call i32 %5(ptr noundef %ah, i32 noundef 39956) #6
  %6 = ptrtoint ptr %meas1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %meas1, align 4
  %add8 = add i32 %7, %call6
  store i32 %add8, ptr %meas1, align 4
  %8 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ah, align 4
  %call13 = tail call i32 %9(ptr noundef %ah, i32 noundef 39960) #6
  %10 = ptrtoint ptr %meas2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %meas2, align 4
  %add15 = add i32 %11, %call13
  store i32 %add15, ptr %meas2, align 4
  %12 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ah, align 4
  %call20 = tail call i32 %13(ptr noundef %ah, i32 noundef 39964) #6
  %14 = ptrtoint ptr %meas3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %meas3, align 4
  %add22 = add i32 %15, %call20
  store i32 %add22, ptr %meas3, align 4
  %16 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug_mask, align 4
  %and = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %cal_samples to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %cal_samples, align 4
  %conv = zext i16 %19 to i32
  %20 = ptrtoint ptr %meas0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %meas0, align 4
  %22 = ptrtoint ptr %meas1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %meas1, align 4
  %24 = ptrtoint ptr %meas2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %meas2, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.12, i32 noundef %conv, i32 noundef 0, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %add22) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %26 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ah, align 4
  %call.1 = tail call i32 %27(ptr noundef %ah, i32 noundef 44048) #6
  %arrayidx.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 54, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.1, align 4
  %add1.1 = add i32 %29, %call.1
  store i32 %add1.1, ptr %arrayidx.1, align 4
  %30 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ah, align 4
  %call6.1 = tail call i32 %31(ptr noundef %ah, i32 noundef 44052) #6
  %arrayidx7.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 55, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx7.1, align 4
  %add8.1 = add i32 %33, %call6.1
  store i32 %add8.1, ptr %arrayidx7.1, align 4
  %34 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ah, align 4
  %call13.1 = tail call i32 %35(ptr noundef %ah, i32 noundef 44056) #6
  %arrayidx14.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 56, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx14.1, align 4
  %add15.1 = add i32 %37, %call13.1
  store i32 %add15.1, ptr %arrayidx14.1, align 4
  %38 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ah, align 4
  %call20.1 = tail call i32 %39(ptr noundef %ah, i32 noundef 44060) #6
  %arrayidx21.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 57, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx21.1, align 4
  %add22.1 = add i32 %41, %call20.1
  store i32 %add22.1, ptr %arrayidx21.1, align 4
  %42 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %debug_mask, align 4
  %and.1 = and i32 %43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %cal_samples to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %cal_samples, align 4
  %conv.1 = zext i16 %45 to i32
  %46 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.1, align 4
  %48 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx7.1, align 4
  %50 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx14.1, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.12, i32 noundef %conv.1, i32 noundef 1, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %add22.1) #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %52 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ah, align 4
  %call.2 = tail call i32 %53(ptr noundef %ah, i32 noundef 48144) #6
  %arrayidx.2 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 54, i32 0, i32 2
  %54 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.2, align 4
  %add1.2 = add i32 %55, %call.2
  store i32 %add1.2, ptr %arrayidx.2, align 4
  %56 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ah, align 4
  %call6.2 = tail call i32 %57(ptr noundef %ah, i32 noundef 48148) #6
  %arrayidx7.2 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 55, i32 0, i32 2
  %58 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx7.2, align 4
  %add8.2 = add i32 %59, %call6.2
  store i32 %add8.2, ptr %arrayidx7.2, align 4
  %60 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ah, align 4
  %call13.2 = tail call i32 %61(ptr noundef %ah, i32 noundef 48152) #6
  %arrayidx14.2 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 56, i32 0, i32 2
  %62 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx14.2, align 4
  %add15.2 = add i32 %63, %call13.2
  store i32 %add15.2, ptr %arrayidx14.2, align 4
  %64 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ah, align 4
  %call20.2 = tail call i32 %65(ptr noundef %ah, i32 noundef 48156) #6
  %arrayidx21.2 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 57, i32 0, i32 2
  %66 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx21.2, align 4
  %add22.2 = add i32 %67, %call20.2
  store i32 %add22.2, ptr %arrayidx21.2, align 4
  %68 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %debug_mask, align 4
  %and.2 = and i32 %69, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %cal_samples to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %cal_samples, align 4
  %conv.2 = zext i16 %71 to i32
  %72 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.2, align 4
  %74 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx7.2, align 4
  %76 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx14.2, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.12, i32 noundef %conv.2, i32 noundef 2, i32 noundef %73, i32 noundef %75, i32 noundef %77, i32 noundef %add22.2) #6
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ar9002_hw_adc_dccal_calibrate(ptr noundef %ah, i8 noundef zeroext %numChains) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %cal_list_curr = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 53
  %0 = ptrtoint ptr %cal_list_curr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cal_list_curr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %calCountMax = getelementptr inbounds %struct.ath9k_percal_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %calCountMax to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %calCountMax, align 4
  %add = add i32 %5, 5
  %calNumSamples = getelementptr inbounds %struct.ath9k_percal_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %calNumSamples to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %calNumSamples, align 4
  %mul = shl i32 %7, %add
  %conv = zext i8 %numChains to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %numChains)
  %cmp137.not = icmp eq i8 %numChains, 0
  br i1 %cmp137.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %meas0 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 54
  %meas1 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 55
  %meas2 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 56
  %meas3 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 57
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0138 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x i32], ptr %meas0, i32 0, i32 %i.0138
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr [3 x i32], ptr %meas1, i32 0, i32 %i.0138
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr [3 x i32], ptr %meas2, i32 0, i32 %i.0138
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr [3 x i32], ptr %meas3, i32 0, i32 %i.0138
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx5, align 4
  %16 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug_mask, align 4
  %and = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.do.body6_crit_edge, label %if.then

for.body.do.body6_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body6

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.21, i32 noundef %i.0138) #6
  br label %do.body6

do.body6:                                         ; preds = %if.then, %for.body.do.body6_crit_edge
  %18 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug_mask, align 4
  %and8 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body6.do.body14_crit_edge, label %if.then10

do.body6.do.body14_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14

if.then10:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.22, i32 noundef %i.0138, i32 noundef %9) #6
  br label %do.body14

do.body14:                                        ; preds = %if.then10, %do.body6.do.body14_crit_edge
  %20 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %debug_mask, align 4
  %and16 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body14.do.body22_crit_edge, label %if.then18

do.body14.do.body22_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body22

if.then18:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.23, i32 noundef %i.0138, i32 noundef %11) #6
  br label %do.body22

do.body22:                                        ; preds = %if.then18, %do.body14.do.body22_crit_edge
  %22 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %debug_mask, align 4
  %and24 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body22.do.body30_crit_edge, label %if.then26

do.body22.do.body30_crit_edge:                    ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body30

if.then26:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.24, i32 noundef %i.0138, i32 noundef %13) #6
  br label %do.body30

do.body30:                                        ; preds = %if.then26, %do.body22.do.body30_crit_edge
  %24 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %debug_mask, align 4
  %and32 = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.body30.do.end37_crit_edge, label %if.then34

do.body30.do.end37_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end37

if.then34:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.25, i32 noundef %i.0138, i32 noundef %15) #6
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %do.body30.do.end37_crit_edge
  %sub = sub i32 %11, %9
  %mul38 = shl i32 %sub, 1
  %div = udiv i32 %mul38, %mul
  %and39 = and i32 %div, 511
  %sub40 = sub i32 %13, %15
  %mul41 = shl i32 %sub40, 1
  %div42 = udiv i32 %mul41, %mul
  %and43 = and i32 %div42, 511
  %26 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %debug_mask, align 4
  %and46 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %do.end37.do.body52_crit_edge, label %if.then48

do.end37.do.body52_crit_edge:                     ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body52

if.then48:                                        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.26, i32 noundef %i.0138, i32 noundef %and39) #6
  br label %do.body52

do.body52:                                        ; preds = %if.then48, %do.end37.do.body52_crit_edge
  %28 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %debug_mask, align 4
  %and54 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %do.body52.do.end59_crit_edge, label %if.then56

do.body52.do.end59_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end59

if.then56:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.27, i32 noundef %i.0138, i32 noundef %and43) #6
  br label %do.end59

do.end59:                                         ; preds = %if.then56, %do.body52.do.end59_crit_edge
  %30 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ah, align 4
  %shl60 = shl i32 %i.0138, 12
  %add61 = add nuw nsw i32 %shl60, 39348
  %call62 = tail call i32 %31(ptr noundef %ah, i32 noundef %add61) #6
  %and63 = and i32 %call62, -1073737729
  %shl64 = shl nuw nsw i32 %and43, 12
  %shl65 = shl nuw nsw i32 %and39, 21
  %or = or i32 %shl64, %shl65
  %or66 = or i32 %and63, %or
  %32 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write, align 4
  tail call void %33(ptr noundef %ah, i32 noundef %or66, i32 noundef %add61) #6
  %34 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %debug_mask, align 4
  %and72 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %do.end59.for.inc_crit_edge, label %if.then74

do.end59.for.inc_crit_edge:                       ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then74:                                        ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.28, i32 noundef %i.0138) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then74, %do.end59.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0138, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %write79 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %36 = ptrtoint ptr %write79 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write79, align 4
  %38 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ah, align 4
  %call82 = tail call i32 %39(ptr noundef %ah, i32 noundef 39348) #6
  %or83 = or i32 %call82, -2147483648
  tail call void %37(ptr noundef %ah, i32 noundef %or83, i32 noundef 39348) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ar9285_hw_cl_cal(ptr noundef %ah, ptr nocapture noundef readonly %chan) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %0 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmw, align 4
  %call1 = tail call i32 %1(ptr noundef %ah, i32 noundef 41816, i32 noundef 2, i32 noundef 0) #6
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %2 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %channelFlags, align 2
  %4 = and i16 %3, 56
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %4)
  %5 = icmp eq i16 %4, 8
  br i1 %5, label %if.then, label %entry.if.end47_crit_edge

entry.if.end47_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmw, align 4
  %call8 = tail call i32 %7(ptr noundef %ah, i32 noundef 41816, i32 noundef 1, i32 noundef 0) #6
  %8 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmw, align 4
  %call11 = tail call i32 %9(ptr noundef %ah, i32 noundef 38916, i32 noundef 4, i32 noundef 0) #6
  %10 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmw, align 4
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %13)
  %cmp = icmp ugt i32 %13, 447
  %cond = select i1 %cmp, i32 41668, i32 39008
  %call15 = tail call i32 %11(ptr noundef %ah, i32 noundef %cond, i32 noundef 0, i32 noundef 65536) #6
  %14 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmw, align 4
  %call18 = tail call i32 %15(ptr noundef %ah, i32 noundef 41560, i32 noundef 0, i32 noundef 4194304) #6
  %16 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmw, align 4
  %18 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %19)
  %cmp23 = icmp ugt i32 %19, 447
  %cond25 = select i1 %cmp23, i32 41668, i32 39008
  %call26 = tail call i32 %17(ptr noundef %ah, i32 noundef %cond25, i32 noundef 1, i32 noundef 0) #6
  %20 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %21)
  %cmp29 = icmp ugt i32 %21, 447
  %cond31 = select i1 %cmp29, i32 41668, i32 39008
  %call32 = tail call zeroext i1 @ath9k_hw_wait(ptr noundef %ah, i32 noundef %cond31, i32 noundef 1, i32 noundef 0, i32 noundef 100000) #6
  br i1 %call32, label %if.end37, label %do.body

do.body:                                          ; preds = %if.then
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %debug_mask, align 4
  %and34 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %do.body.cleanup_crit_edge, label %if.then36

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then36:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.29, i32 noundef 100) #6
  br label %cleanup

if.end37:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmw, align 4
  %call40 = tail call i32 %25(ptr noundef %ah, i32 noundef 38916, i32 noundef 0, i32 noundef 4) #6
  %26 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmw, align 4
  %call43 = tail call i32 %27(ptr noundef %ah, i32 noundef 41816, i32 noundef 0, i32 noundef 1) #6
  %28 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmw, align 4
  %call46 = tail call i32 %29(ptr noundef %ah, i32 noundef 41816, i32 noundef 0, i32 noundef 2) #6
  br label %if.end47

if.end47:                                         ; preds = %if.end37, %entry.if.end47_crit_edge
  %30 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmw, align 4
  %call50 = tail call i32 %31(ptr noundef %ah, i32 noundef 38956, i32 noundef 0, i32 noundef 32768) #6
  %32 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmw, align 4
  %macVersion54 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %34 = ptrtoint ptr %macVersion54 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %macVersion54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %35)
  %cmp55 = icmp ugt i32 %35, 447
  %cond57 = select i1 %cmp55, i32 41668, i32 39008
  %call58 = tail call i32 %33(ptr noundef %ah, i32 noundef %cond57, i32 noundef 65536, i32 noundef 0) #6
  %36 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmw, align 4
  %call61 = tail call i32 %37(ptr noundef %ah, i32 noundef 41560, i32 noundef 4194304, i32 noundef 0) #6
  %38 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmw, align 4
  %40 = ptrtoint ptr %macVersion54 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %macVersion54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %41)
  %cmp66 = icmp ugt i32 %41, 447
  %cond68 = select i1 %cmp66, i32 41668, i32 39008
  %call69 = tail call i32 %39(ptr noundef %ah, i32 noundef %cond68, i32 noundef 1, i32 noundef 0) #6
  %42 = ptrtoint ptr %macVersion54 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %macVersion54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %43)
  %cmp72 = icmp ugt i32 %43, 447
  %cond74 = select i1 %cmp72, i32 41668, i32 39008
  %call75 = tail call zeroext i1 @ath9k_hw_wait(ptr noundef %ah, i32 noundef %cond74, i32 noundef 1, i32 noundef 0, i32 noundef 100000) #6
  br i1 %call75, label %if.end85, label %do.body77

do.body77:                                        ; preds = %if.end47
  %debug_mask78 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %44 = ptrtoint ptr %debug_mask78 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %debug_mask78, align 4
  %and79 = and i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %do.body77.cleanup_crit_edge, label %if.then81

do.body77.cleanup_crit_edge:                      ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then81:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.29, i32 noundef 100) #6
  br label %cleanup

if.end85:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmw, align 4
  %call88 = tail call i32 %47(ptr noundef %ah, i32 noundef 38956, i32 noundef 32768, i32 noundef 0) #6
  %48 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rmw, align 4
  %call91 = tail call i32 %49(ptr noundef %ah, i32 noundef 41816, i32 noundef 0, i32 noundef 2) #6
  %50 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmw, align 4
  %52 = ptrtoint ptr %macVersion54 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %macVersion54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %53)
  %cmp96 = icmp ugt i32 %53, 447
  %cond98 = select i1 %cmp96, i32 41668, i32 39008
  %call99 = tail call i32 %51(ptr noundef %ah, i32 noundef %cond98, i32 noundef 0, i32 noundef 65536) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %if.then81, %do.body77.cleanup_crit_edge, %if.then36, %do.body.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end85 ], [ false, %if.then36 ], [ false, %do.body.cleanup_crit_edge ], [ false, %if.then81 ], [ false, %do.body77.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_wait(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ar9002_hw_pa_cal(ptr noundef %ah, i1 noundef zeroext %is_reset) unnamed_addr #3 align 64 {
entry:
  %regList.i = alloca [8 x [2 x i32]], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %1)
  %cmp = icmp eq i32 %1, 320
  br i1 %cmp, label %if.then, label %if.else6

if.then:                                          ; preds = %entry
  br i1 %is_reset, label %if.then.if.then2_crit_edge, label %lor.lhs.false

if.then.if.then2_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

lor.lhs.false:                                    ; preds = %if.then
  %skipcount = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 32, i32 2
  %2 = ptrtoint ptr %skipcount to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %skipcount, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.then2_crit_edge, label %if.else

lor.lhs.false.if.then2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.then2:                                         ; preds = %lor.lhs.false.if.then2_crit_edge, %if.then.if.then2_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %regList.i) #6
  %4 = call ptr @memcpy(ptr %regList.i, ptr @__const.ar9271_hw_pa_cal.regList, i32 64)
  call void @ath9k_hw_read_array(ptr noundef %ah, ptr noundef nonnull %regList.i, i32 noundef 8) #6
  %enable_rmw_buffer.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 6
  %5 = ptrtoint ptr %enable_rmw_buffer.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %enable_rmw_buffer.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then2.do.end.i_crit_edge, label %if.then.i

if.then2.do.end.i_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  call void %6(ptr noundef %ah) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then2.do.end.i_crit_edge
  %rmw.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %7 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmw.i, align 4
  %call.i = call i32 %8(ptr noundef %ah, i32 noundef 30772, i32 noundef 0, i32 noundef 1) #6
  %9 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmw.i, align 4
  %call6.i = call i32 %10(ptr noundef %ah, i32 noundef 38920, i32 noundef 134217728, i32 noundef 0) #6
  %11 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmw.i, align 4
  %call9.i = call i32 %12(ptr noundef %ah, i32 noundef 30828, i32 noundef 8388608, i32 noundef 0) #6
  %13 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmw.i, align 4
  %call12.i = call i32 %14(ptr noundef %ah, i32 noundef 30804, i32 noundef 32, i32 noundef 0) #6
  %15 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmw.i, align 4
  %call15.i = call i32 %16(ptr noundef %ah, i32 noundef 30804, i32 noundef 128, i32 noundef 0) #6
  %17 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmw.i, align 4
  %call18.i = call i32 %18(ptr noundef %ah, i32 noundef 30804, i32 noundef 256, i32 noundef 0) #6
  %19 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmw.i, align 4
  %call21.i = call i32 %20(ptr noundef %ah, i32 noundef 30756, i32 noundef 0, i32 noundef 4096) #6
  %21 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmw.i, align 4
  %call24.i = call i32 %22(ptr noundef %ah, i32 noundef 30776, i32 noundef 0, i32 noundef 2) #6
  %23 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmw.i, align 4
  %call27.i = call i32 %24(ptr noundef %ah, i32 noundef 30752, i32 noundef 0, i32 noundef 2048) #6
  %25 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmw.i, align 4
  %call30.i = call i32 %26(ptr noundef %ah, i32 noundef 30752, i32 noundef 0, i32 noundef 33554432) #6
  %27 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmw.i, align 4
  %call33.i = call i32 %28(ptr noundef %ah, i32 noundef 30752, i32 noundef 0, i32 noundef 16777216) #6
  %29 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmw.i, align 4
  %call36.i = call i32 %30(ptr noundef %ah, i32 noundef 30752, i32 noundef 0, i32 noundef 8388608) #6
  %31 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rmw.i, align 4
  %call39.i = call i32 %32(ptr noundef %ah, i32 noundef 30780, i32 noundef 114688, i32 noundef 114688) #6
  %33 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmw.i, align 4
  %call42.i = call i32 %34(ptr noundef %ah, i32 noundef 30776, i32 noundef 0, i32 noundef -536870912) #6
  %35 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmw.i, align 4
  %call45.i = call i32 %36(ptr noundef %ah, i32 noundef 30760, i32 noundef 4095, i32 noundef 4095) #6
  %rmw_flush.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 7
  %37 = ptrtoint ptr %rmw_flush.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmw_flush.i, align 4
  %tobool48.not.i = icmp eq ptr %38, null
  br i1 %tobool48.not.i, label %do.end.i.do.end54.i_crit_edge, label %if.then49.i

do.end.i.do.end54.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end54.i

if.then49.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void %38(ptr noundef %ah) #6
  br label %do.end54.i

do.end54.i:                                       ; preds = %if.then49.i, %do.end.i.do.end54.i_crit_edge
  %write.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %39 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write.i, align 4
  call void %40(ptr noundef %ah, i32 noundef -905750368, i32 noundef 30824) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %41(i32 noundef 6442440) #6
  %42 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmw.i, align 4
  %call58.i = call i32 %43(ptr noundef %ah, i32 noundef 30772, i32 noundef 0, i32 noundef 133169152) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end54.i
  %i.0251.i = phi i32 [ 6, %do.end54.i ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %44 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ah, align 4
  %call60.i = call i32 %45(ptr noundef %ah, i32 noundef 30772) #6
  %add.i = add nuw nsw i32 %i.0251.i, 20
  %shl.i = shl i32 1048576, %i.0251.i
  %or.i = or i32 %call60.i, %shl.i
  %46 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write.i, align 4
  call void %47(ptr noundef %ah, i32 noundef %or.i, i32 noundef 30772) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %48(i32 noundef 214748) #6
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %call60.i, %neg.i
  %49 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ah, align 4
  %call67.i = call i32 %50(ptr noundef %ah, i32 noundef 30784) #6
  %and68.i = and i32 %call67.i, 1
  %shl70.i = shl nuw i32 %and68.i, %add.i
  %or71.i = or i32 %shl70.i, %and.i
  %51 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write.i, align 4
  call void %52(ptr noundef %ah, i32 noundef %or71.i, i32 noundef 30772) #6
  %dec.i = add nsw i32 %i.0251.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %phi.bo.le.i = lshr i32 %or71.i, 20
  %phi.bo250.le.i = and i32 %phi.bo.le.i, 127
  br i1 %is_reset, label %for.end.i.if.else.i_crit_edge, label %land.lhs.true.i

for.end.i.if.else.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %for.end.i
  %pacal_info.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 32
  %53 = ptrtoint ptr %pacal_info.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pacal_info.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %phi.bo250.le.i)
  %cmp77.i = icmp eq i32 %54, %phi.bo250.le.i
  br i1 %cmp77.i, label %if.then78.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then78.i:                                      ; preds = %land.lhs.true.i
  %max_skipcount.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 32, i32 1
  %55 = ptrtoint ptr %max_skipcount.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %max_skipcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %56)
  %cmp80.i = icmp slt i8 %56, 8
  br i1 %cmp80.i, label %if.then82.i, label %if.then78.i.if.end89.i_crit_edge

if.then78.i.if.end89.i_crit_edge:                 ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89.i

if.then82.i:                                      ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i = shl i8 %56, 1
  %57 = ptrtoint ptr %max_skipcount.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %mul.i, ptr %max_skipcount.i, align 4
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then82.i, %if.then78.i.if.end89.i_crit_edge
  %58 = ptrtoint ptr %max_skipcount.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %max_skipcount.i, align 4
  %skipcount.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 32, i32 2
  %60 = ptrtoint ptr %skipcount.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %skipcount.i, align 1
  br label %do.body100.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %for.end.i.if.else.i_crit_edge
  %pacal_info93.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 32
  %max_skipcount94.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 32, i32 1
  %61 = ptrtoint ptr %max_skipcount94.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %max_skipcount94.i, align 4
  %skipcount96.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 32, i32 2
  %62 = ptrtoint ptr %skipcount96.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %skipcount96.i, align 1
  %63 = ptrtoint ptr %pacal_info93.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %phi.bo250.le.i, ptr %pacal_info93.i, align 4
  br label %do.body100.i

do.body100.i:                                     ; preds = %if.else.i, %if.end89.i
  %64 = ptrtoint ptr %enable_rmw_buffer.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %enable_rmw_buffer.i, align 4
  %tobool103.not.i = icmp eq ptr %65, null
  br i1 %tobool103.not.i, label %do.body100.i.do.end109.i_crit_edge, label %if.then104.i

do.body100.i.do.end109.i_crit_edge:               ; preds = %do.body100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end109.i

if.then104.i:                                     ; preds = %do.body100.i
  call void @__sanitizer_cov_trace_pc() #8
  call void %65(ptr noundef %ah) #6
  br label %do.end109.i

do.end109.i:                                      ; preds = %if.then104.i, %do.body100.i.do.end109.i_crit_edge
  %66 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rmw.i, align 4
  %call112.i = call i32 %67(ptr noundef %ah, i32 noundef 30772, i32 noundef 1, i32 noundef 0) #6
  %68 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rmw.i, align 4
  %call115.i = call i32 %69(ptr noundef %ah, i32 noundef 38920, i32 noundef 0, i32 noundef 134217728) #6
  %70 = ptrtoint ptr %rmw_flush.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rmw_flush.i, align 4
  %tobool119.not.i = icmp eq ptr %71, null
  br i1 %tobool119.not.i, label %do.end109.i.do.body126.i_crit_edge, label %if.then120.i

do.end109.i.do.body126.i_crit_edge:               ; preds = %do.end109.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body126.i

if.then120.i:                                     ; preds = %do.end109.i
  call void @__sanitizer_cov_trace_pc() #8
  call void %71(ptr noundef %ah) #6
  br label %do.body126.i

do.body126.i:                                     ; preds = %if.then120.i, %do.end109.i.do.body126.i_crit_edge
  %enable_write_buffer.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 3
  %72 = ptrtoint ptr %enable_write_buffer.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %enable_write_buffer.i, align 4
  %tobool128.not.i = icmp eq ptr %73, null
  br i1 %tobool128.not.i, label %do.body126.i.do.end134.i_crit_edge, label %if.then129.i

do.body126.i.do.end134.i_crit_edge:               ; preds = %do.body126.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end134.i

if.then129.i:                                     ; preds = %do.body126.i
  call void @__sanitizer_cov_trace_pc() #8
  call void %73(ptr noundef %ah) #6
  br label %do.end134.i

do.end134.i:                                      ; preds = %if.then129.i, %do.body126.i.do.end134.i_crit_edge
  %74 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write.i, align 4
  %arrayidx141.i = getelementptr inbounds [8 x [2 x i32]], ptr %regList.i, i32 0, i32 0, i32 1
  %76 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx141.i, align 4
  %78 = ptrtoint ptr %regList.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %regList.i, align 4
  call void %75(ptr noundef %ah, i32 noundef %77, i32 noundef %79) #6
  %80 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write.i, align 4
  %arrayidx.1.i = getelementptr inbounds [8 x [2 x i32]], ptr %regList.i, i32 0, i32 1
  %arrayidx141.1.i = getelementptr inbounds [8 x [2 x i32]], ptr %regList.i, i32 0, i32 1, i32 1
  %82 = ptrtoint ptr %arrayidx141.1.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx141.1.i, align 4
  %84 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx.1.i, align 4
  call void %81(ptr noundef %ah, i32 noundef %83, i32 noundef %85) #6
  %86 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write.i, align 4
  %arrayidx.2.i = getelementptr inbounds [8 x [2 x i32]], ptr %regList.i, i32 0, i32 2
  %arrayidx141.2.i = getelementptr inbounds [8 x [2 x i32]], ptr %regList.i, i32 0, i32 2, i32 1
  %88 = ptrtoint ptr %arrayidx141.2.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx141.2.i, align 4
  %90 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.2.i, align 4
  call void %87(ptr noundef %ah, i32 noundef %89, i32 noundef %91) #6
  %92 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write.i, align 4
  %arrayidx.3.i = getelementptr inbounds [8 x [2 x i32]], ptr %regList.i, i32 0, i32 3
  %arrayidx141.3.i = getelementptr inbounds [8 x [2 x i32]], ptr %regList.i, i32 0, i32 3, i32 1
  %94 = ptrtoint ptr %arrayidx141.3.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx141.3.i, align 4
  %96 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.3.i, align 4
  call void %93(ptr noundef %ah, i32 noundef %95, i32 noundef %97) #6
  %98 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write.i, align 4
  %arrayidx.4.i = getelementptr inbounds [8 x [2 x i32]], ptr %regList.i, i32 0, i32 4
  %arrayidx141.4.i = getelementptr inbounds [8 x [2 x i32]], ptr %regList.i, i32 0, i32 4, i32 1
  %100 = ptrtoint ptr %arrayidx141.4.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx141.4.i, align 4
  %102 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx.4.i, align 4
  call void %99(ptr noundef %ah, i32 noundef %101, i32 noundef %103) #6
  %104 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %write.i, align 4
  %arrayidx.5.i = getelementptr inbounds [8 x [2 x i32]], ptr %regList.i, i32 0, i32 5
  %arrayidx141.5.i = getelementptr inbounds [8 x [2 x i32]], ptr %regList.i, i32 0, i32 5, i32 1
  %106 = ptrtoint ptr %arrayidx141.5.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx141.5.i, align 4
  %108 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx.5.i, align 4
  call void %105(ptr noundef %ah, i32 noundef %107, i32 noundef %109) #6
  %110 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %write.i, align 4
  %arrayidx.6.i = getelementptr inbounds [8 x [2 x i32]], ptr %regList.i, i32 0, i32 6
  %arrayidx141.6.i = getelementptr inbounds [8 x [2 x i32]], ptr %regList.i, i32 0, i32 6, i32 1
  %112 = ptrtoint ptr %arrayidx141.6.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx141.6.i, align 4
  %114 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx.6.i, align 4
  call void %111(ptr noundef %ah, i32 noundef %113, i32 noundef %115) #6
  %116 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %write.i, align 4
  %arrayidx.7.i = getelementptr inbounds [8 x [2 x i32]], ptr %regList.i, i32 0, i32 7
  %arrayidx141.7.i = getelementptr inbounds [8 x [2 x i32]], ptr %regList.i, i32 0, i32 7, i32 1
  %118 = ptrtoint ptr %arrayidx141.7.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx141.7.i, align 4
  %120 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx.7.i, align 4
  call void %117(ptr noundef %ah, i32 noundef %119, i32 noundef %121) #6
  %write_flush.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 4
  %122 = ptrtoint ptr %write_flush.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %write_flush.i, align 4
  %tobool148.not.i = icmp eq ptr %123, null
  br i1 %tobool148.not.i, label %do.end134.i.ar9271_hw_pa_cal.exit_crit_edge, label %if.then149.i

do.end134.i.ar9271_hw_pa_cal.exit_crit_edge:      ; preds = %do.end134.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ar9271_hw_pa_cal.exit

if.then149.i:                                     ; preds = %do.end134.i
  call void @__sanitizer_cov_trace_pc() #8
  call void %123(ptr noundef %ah) #6
  br label %ar9271_hw_pa_cal.exit

ar9271_hw_pa_cal.exit:                            ; preds = %if.then149.i, %do.end134.i.ar9271_hw_pa_cal.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %regList.i) #6
  br label %if.end24

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %dec = add i8 %3, -1
  %124 = ptrtoint ptr %skipcount to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %dec, ptr %skipcount, align 1
  br label %if.end24

if.else6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 191, i32 %1)
  %cmp9 = icmp ugt i32 %1, 191
  br i1 %cmp9, label %if.then10, label %if.else6.if.end24_crit_edge

if.else6.if.end24_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then10:                                        ; preds = %if.else6
  br i1 %is_reset, label %if.then10.if.then16_crit_edge, label %lor.lhs.false12

if.then10.if.then16_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

lor.lhs.false12:                                  ; preds = %if.then10
  %skipcount14 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 32, i32 2
  %125 = ptrtoint ptr %skipcount14 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %skipcount14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool15.not = icmp eq i8 %126, 0
  br i1 %tobool15.not, label %lor.lhs.false12.if.then16_crit_edge, label %if.else18

lor.lhs.false12.if.then16_crit_edge:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

if.then16:                                        ; preds = %lor.lhs.false12.if.then16_crit_edge, %if.then10.if.then16_crit_edge
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %127 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %debug_mask.i, align 4
  %and.i37 = and i32 %128, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37)
  %tobool.not.i38 = icmp eq i32 %and.i37, 0
  br i1 %tobool.not.i38, label %if.then16.do.end.i40_crit_edge, label %if.then.i39

if.then16.do.end.i40_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i40

if.then.i39:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.33) #6
  br label %do.end.i40

do.end.i40:                                       ; preds = %if.then.i39, %if.then16.do.end.i40_crit_edge
  %eep_ops.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 10
  %129 = ptrtoint ptr %eep_ops.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %eep_ops.i, align 4
  %get_eeprom.i = getelementptr inbounds %struct.eeprom_ops, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %get_eeprom.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %get_eeprom.i, align 4
  %call1.i = tail call i32 %132(ptr noundef %ah, i32 noundef 18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 1
  br i1 %cmp.i, label %do.end.i40.if.end24_crit_edge, label %for.body.preheader.i

do.end.i40.if.end24_crit_edge:                    ; preds = %do.end.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

for.body.preheader.i:                             ; preds = %do.end.i40
  %133 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ah, align 4
  %call6.i41 = tail call i32 %134(ptr noundef %ah, i32 noundef 30828) #6
  %135 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ah, align 4
  %call6.1.i = tail call i32 %136(ptr noundef %ah, i32 noundef 30804) #6
  %137 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ah, align 4
  %call6.2.i = tail call i32 %138(ptr noundef %ah, i32 noundef 30752) #6
  %139 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ah, align 4
  %call6.3.i = tail call i32 %140(ptr noundef %ah, i32 noundef 30756) #6
  %141 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ah, align 4
  %call6.4.i = tail call i32 %142(ptr noundef %ah, i32 noundef 30824) #6
  %143 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ah, align 4
  %call6.5.i = tail call i32 %144(ptr noundef %ah, i32 noundef 30780) #6
  %145 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ah, align 4
  %call6.6.i = tail call i32 %146(ptr noundef %ah, i32 noundef 30776) #6
  %147 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ah, align 4
  %call11.i = tail call i32 %148(ptr noundef %ah, i32 noundef 30772) #6
  %and12.i = and i32 %call11.i, -2
  %write.i42 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %149 = ptrtoint ptr %write.i42 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %write.i42, align 4
  tail call void %150(ptr noundef %ah, i32 noundef %and12.i, i32 noundef 30772) #6
  %151 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ah, align 4
  %call16.i = tail call i32 %152(ptr noundef %ah, i32 noundef 38920) #6
  %or.i43 = or i32 %call16.i, 134217728
  %153 = ptrtoint ptr %write.i42 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %write.i42, align 4
  tail call void %154(ptr noundef %ah, i32 noundef %or.i43, i32 noundef 38920) #6
  %rmw.i44 = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %155 = ptrtoint ptr %rmw.i44 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %rmw.i44, align 4
  %call20.i = tail call i32 %156(ptr noundef %ah, i32 noundef 30828, i32 noundef 8388608, i32 noundef 8388608) #6
  %157 = ptrtoint ptr %rmw.i44 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %rmw.i44, align 4
  %call23.i = tail call i32 %158(ptr noundef %ah, i32 noundef 30804, i32 noundef 32, i32 noundef 32) #6
  %159 = ptrtoint ptr %rmw.i44 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %rmw.i44, align 4
  %call26.i = tail call i32 %160(ptr noundef %ah, i32 noundef 30804, i32 noundef 128, i32 noundef 128) #6
  %161 = ptrtoint ptr %rmw.i44 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %rmw.i44, align 4
  %call29.i = tail call i32 %162(ptr noundef %ah, i32 noundef 30804, i32 noundef 256, i32 noundef 256) #6
  %163 = ptrtoint ptr %rmw.i44 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %rmw.i44, align 4
  %call32.i = tail call i32 %164(ptr noundef %ah, i32 noundef 30756, i32 noundef 0, i32 noundef 4096) #6
  %165 = ptrtoint ptr %rmw.i44 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %rmw.i44, align 4
  %call35.i = tail call i32 %166(ptr noundef %ah, i32 noundef 30776, i32 noundef 0, i32 noundef 2) #6
  %167 = ptrtoint ptr %rmw.i44 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %rmw.i44, align 4
  %call38.i = tail call i32 %168(ptr noundef %ah, i32 noundef 30752, i32 noundef 0, i32 noundef 2048) #6
  %169 = ptrtoint ptr %rmw.i44 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %rmw.i44, align 4
  %call41.i = tail call i32 %170(ptr noundef %ah, i32 noundef 30752, i32 noundef 0, i32 noundef 33554432) #6
  %171 = ptrtoint ptr %rmw.i44 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %rmw.i44, align 4
  %call44.i = tail call i32 %172(ptr noundef %ah, i32 noundef 30752, i32 noundef 0, i32 noundef 16777216) #6
  %173 = ptrtoint ptr %rmw.i44 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %rmw.i44, align 4
  %call47.i = tail call i32 %174(ptr noundef %ah, i32 noundef 30752, i32 noundef 0, i32 noundef 8388608) #6
  %175 = ptrtoint ptr %rmw.i44 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %rmw.i44, align 4
  %call50.i = tail call i32 %176(ptr noundef %ah, i32 noundef 30780, i32 noundef 114688, i32 noundef 114688) #6
  %177 = ptrtoint ptr %rmw.i44 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %rmw.i44, align 4
  %call53.i = tail call i32 %178(ptr noundef %ah, i32 noundef 30776, i32 noundef 0, i32 noundef -536870912) #6
  %179 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %ah, align 4
  %call56.i = tail call i32 %180(ptr noundef %ah, i32 noundef 30772) #6
  %181 = ptrtoint ptr %rmw.i44 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %rmw.i44, align 4
  %call60.i45 = tail call i32 %182(ptr noundef %ah, i32 noundef 30772, i32 noundef 30720, i32 noundef 30720) #6
  %183 = ptrtoint ptr %write.i42 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %write.i42, align 4
  tail call void %184(ptr noundef %ah, i32 noundef -905750368, i32 noundef 30824) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %185 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %185(i32 noundef 6442440) #6
  %186 = ptrtoint ptr %rmw.i44 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %rmw.i44, align 4
  %call65.i = tail call i32 %187(ptr noundef %ah, i32 noundef 30772, i32 noundef 0, i32 noundef 66060288) #6
  %188 = ptrtoint ptr %rmw.i44 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %rmw.i44, align 4
  %call68.i = tail call i32 %189(ptr noundef %ah, i32 noundef 30760, i32 noundef 0, i32 noundef 33554432) #6
  br label %for.body71.i

for.body71.i:                                     ; preds = %for.body71.i.for.body71.i_crit_edge, %for.body.preheader.i
  %i.1319.i = phi i32 [ 6, %for.body.preheader.i ], [ %dec.i49, %for.body71.i.for.body71.i_crit_edge ]
  %190 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %ah, align 4
  %call74.i = tail call i32 %191(ptr noundef %ah, i32 noundef 30772) #6
  %add.i46 = add nuw nsw i32 %i.1319.i, 19
  %shl.i47 = shl i32 524288, %i.1319.i
  %or75.i = or i32 %call74.i, %shl.i47
  %192 = ptrtoint ptr %write.i42 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %write.i42, align 4
  tail call void %193(ptr noundef %ah, i32 noundef %or75.i, i32 noundef 30772) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %194 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %194(i32 noundef 214748) #6
  %195 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %ah, align 4
  %call80.i = tail call i32 %196(ptr noundef %ah, i32 noundef 30772) #6
  %neg.i48 = xor i32 %shl.i47, -1
  %and83.i = and i32 %call80.i, %neg.i48
  %197 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %ah, align 4
  %call86.i = tail call i32 %198(ptr noundef %ah, i32 noundef 30784) #6
  %and87.i = and i32 %call86.i, 1
  %shl90.i = shl nuw i32 %and87.i, %add.i46
  %or91.i = or i32 %shl90.i, %and83.i
  %199 = ptrtoint ptr %write.i42 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %write.i42, align 4
  tail call void %200(ptr noundef %ah, i32 noundef %or91.i, i32 noundef 30772) #6
  %dec.i49 = add nsw i32 %i.1319.i, -1
  %cmp70.i = icmp ugt i32 %i.1319.i, 1
  br i1 %cmp70.i, label %for.body71.i.for.body71.i_crit_edge, label %for.end95.i

for.body71.i.for.body71.i_crit_edge:              ; preds = %for.body71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body71.i

for.end95.i:                                      ; preds = %for.body71.i
  %shr.i = and i32 %call56.i, 30720
  %201 = ptrtoint ptr %rmw.i44 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %rmw.i44, align 4
  %call98.i = tail call i32 %202(ptr noundef %ah, i32 noundef 30760, i32 noundef 33554432, i32 noundef 33554432) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %203 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %203(i32 noundef 214748) #6
  %204 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %ah, align 4
  %call101.i = tail call i32 %205(ptr noundef %ah, i32 noundef 30784) #6
  %206 = ptrtoint ptr %rmw.i44 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %rmw.i44, align 4
  %and102.i = shl i32 %call101.i, 25
  %shl106.i = and i32 %and102.i, 33554432
  %call108.i = tail call i32 %207(ptr noundef %ah, i32 noundef 30760, i32 noundef %shl106.i, i32 noundef 33554432) #6
  %208 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %ah, align 4
  %call111.i = tail call i32 %209(ptr noundef %ah, i32 noundef 30772) #6
  %210 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %ah, align 4
  %call116.i = tail call i32 %211(ptr noundef %ah, i32 noundef 30760) #6
  %and117.i = lshr i32 %call116.i, 25
  %shr118.i = and i32 %and117.i, 1
  %212 = lshr i32 %call111.i, 19
  %shl119.i = and i32 %212, 126
  %or120.i = or i32 %shr118.i, %shl119.i
  br i1 %is_reset, label %for.end95.i.if.else.i56_crit_edge, label %land.lhs.true.i51

for.end95.i.if.else.i56_crit_edge:                ; preds = %for.end95.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i56

land.lhs.true.i51:                                ; preds = %for.end95.i
  %pacal_info.i50 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 32
  %213 = ptrtoint ptr %pacal_info.i50 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %pacal_info.i50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %214, i32 %or120.i)
  %cmp124.i = icmp eq i32 %214, %or120.i
  br i1 %cmp124.i, label %if.then125.i, label %land.lhs.true.i51.if.else.i56_crit_edge

land.lhs.true.i51.if.else.i56_crit_edge:          ; preds = %land.lhs.true.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i56

if.then125.i:                                     ; preds = %land.lhs.true.i51
  %max_skipcount.i52 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 32, i32 1
  %215 = ptrtoint ptr %max_skipcount.i52 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %max_skipcount.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %216)
  %cmp127.i = icmp slt i8 %216, 8
  br i1 %cmp127.i, label %if.then129.i54, label %if.then125.i.if.end136.i_crit_edge

if.then125.i.if.end136.i_crit_edge:               ; preds = %if.then125.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end136.i

if.then129.i54:                                   ; preds = %if.then125.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i53 = shl i8 %216, 1
  %217 = ptrtoint ptr %max_skipcount.i52 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %mul.i53, ptr %max_skipcount.i52, align 4
  br label %if.end136.i

if.end136.i:                                      ; preds = %if.then129.i54, %if.then125.i.if.end136.i_crit_edge
  %218 = ptrtoint ptr %max_skipcount.i52 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %max_skipcount.i52, align 4
  %skipcount.i55 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 32, i32 2
  %220 = ptrtoint ptr %skipcount.i55 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %219, ptr %skipcount.i55, align 1
  br label %if.end146.i

if.else.i56:                                      ; preds = %land.lhs.true.i51.if.else.i56_crit_edge, %for.end95.i.if.else.i56_crit_edge
  %pacal_info140.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 32
  %max_skipcount141.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 32, i32 1
  %221 = ptrtoint ptr %max_skipcount141.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 1, ptr %max_skipcount141.i, align 4
  %skipcount143.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 32, i32 2
  %222 = ptrtoint ptr %skipcount143.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 0, ptr %skipcount143.i, align 1
  %223 = ptrtoint ptr %pacal_info140.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %or120.i, ptr %pacal_info140.i, align 4
  br label %if.end146.i

if.end146.i:                                      ; preds = %if.else.i56, %if.end136.i
  %224 = ptrtoint ptr %rmw.i44 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %rmw.i44, align 4
  %shl149.i = shl nuw nsw i32 %shl119.i, 19
  %call151.i = tail call i32 %225(ptr noundef %ah, i32 noundef 30772, i32 noundef %shl149.i, i32 noundef 66060288) #6
  %226 = ptrtoint ptr %rmw.i44 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %rmw.i44, align 4
  %shl154.i = shl nuw nsw i32 %shr118.i, 25
  %call156.i = tail call i32 %227(ptr noundef %ah, i32 noundef 30760, i32 noundef %shl154.i, i32 noundef 33554432) #6
  %228 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %ah, align 4
  %call159.i = tail call i32 %229(ptr noundef %ah, i32 noundef 30772) #6
  %or160.i = or i32 %call159.i, 1
  %230 = ptrtoint ptr %write.i42 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %write.i42, align 4
  tail call void %231(ptr noundef %ah, i32 noundef %or160.i, i32 noundef 30772) #6
  %232 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %ah, align 4
  %call165.i = tail call i32 %233(ptr noundef %ah, i32 noundef 38920) #6
  %and166.i = and i32 %call165.i, -134217729
  %234 = ptrtoint ptr %write.i42 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %write.i42, align 4
  tail call void %235(ptr noundef %ah, i32 noundef %and166.i, i32 noundef 38920) #6
  %236 = ptrtoint ptr %write.i42 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %write.i42, align 4
  tail call void %237(ptr noundef %ah, i32 noundef %call6.i41, i32 noundef 30828) #6
  %238 = ptrtoint ptr %write.i42 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %write.i42, align 4
  tail call void %239(ptr noundef %ah, i32 noundef %call6.1.i, i32 noundef 30804) #6
  %240 = ptrtoint ptr %write.i42 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %write.i42, align 4
  tail call void %241(ptr noundef %ah, i32 noundef %call6.2.i, i32 noundef 30752) #6
  %242 = ptrtoint ptr %write.i42 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %write.i42, align 4
  tail call void %243(ptr noundef %ah, i32 noundef %call6.3.i, i32 noundef 30756) #6
  %244 = ptrtoint ptr %write.i42 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %write.i42, align 4
  tail call void %245(ptr noundef %ah, i32 noundef %call6.4.i, i32 noundef 30824) #6
  %246 = ptrtoint ptr %write.i42 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %write.i42, align 4
  tail call void %247(ptr noundef %ah, i32 noundef %call6.5.i, i32 noundef 30780) #6
  %248 = ptrtoint ptr %write.i42 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %write.i42, align 4
  tail call void %249(ptr noundef %ah, i32 noundef %call6.6.i, i32 noundef 30776) #6
  %250 = ptrtoint ptr %rmw.i44 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %rmw.i44, align 4
  %call186.i = tail call i32 %251(ptr noundef %ah, i32 noundef 30772, i32 noundef %shr.i, i32 noundef 30720) #6
  br label %if.end24

if.else18:                                        ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #8
  %dec21 = add i8 %126, -1
  %252 = ptrtoint ptr %skipcount14 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %dec21, ptr %skipcount14, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.else18, %if.end146.i, %do.end.i40.if.end24_crit_edge, %if.else6.if.end24_crit_edge, %if.else, %ar9271_hw_pa_cal.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_hw_loadnf(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_start_nfcal(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_reset_calibration(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_read_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_getnf(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @iq_cal_multi_sample, !1, !"iq_cal_multi_sample", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 937, i32 39}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 136, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 205, i32 3}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 209, i32 3}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 220, i32 3}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 222, i32 3}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 224, i32 3}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 233, i32 4}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 235, i32 4}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 239, i32 4}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 249, i32 4}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 259, i32 4}
!25 = !{ptr @iq_cal_single_sample, !26, !"iq_cal_single_sample", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 944, i32 39}
!27 = !{ptr @adc_gain_cal_single_sample, !28, !"adc_gain_cal_single_sample", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 958, i32 39}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 158, i32 3}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 281, i32 3}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 284, i32 3}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 286, i32 3}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 288, i32 3}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 290, i32 3}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 301, i32 4}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 304, i32 4}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 313, i32 4}
!47 = !{ptr @adc_dc_cal_single_sample, !48, !"adc_dc_cal_single_sample", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 972, i32 39}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 339, i32 3}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 342, i32 3}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 344, i32 3}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 346, i32 3}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 348, i32 3}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 356, i32 3}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 359, i32 3}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 368, i32 3}
!65 = !{ptr @adc_gain_cal_multi_sample, !66, !"adc_gain_cal_multi_sample", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 951, i32 39}
!67 = !{ptr @adc_dc_cal_multi_sample, !68, !"adc_dc_cal_multi_sample", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 965, i32 39}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 873, i32 4}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 908, i32 4}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 915, i32 4}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 922, i32 4}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 557, i32 2}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 62, i32 3}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 67, i32 3}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 71, i32 3}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/ath/ath9k/ar9002_calib.c", i32 113, i32 4}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
