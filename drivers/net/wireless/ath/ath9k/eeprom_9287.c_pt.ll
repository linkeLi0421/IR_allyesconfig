; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/eeprom_9287.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/eeprom_9287.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.eeprom_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.modal_eep_ar9287_header = type <{ [2 x i32], i32, [2 x i8], i8, [2 x i8], [2 x i8], i8, i8, i8, i8, i8, [2 x i8], i8, i8, [2 x i8], [2 x i8], i8, i8, i8, i8, i8, [2 x i8], [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, [30 x i8], [5 x %struct.spur_chan] }>
%struct.chan_centers = type { i16, i16, i16 }
%struct.cal_ctl_data_ar9287 = type { [2 x [4 x %struct.cal_ctl_edges]] }
%union.cal_data_per_freq_ar9287_u = type { %struct.cal_data_op_loop_ar9287 }
%struct.cal_data_op_loop_ar9287 = type { [2 x [5 x i8]], [2 x [5 x i8]], [2 x [5 x i8]], [2 x [5 x i8]] }

@eep_ar9287_ops = dso_local constant { %struct.eeprom_ops, [52 x i8] } { %struct.eeprom_ops { ptr @ath9k_hw_ar9287_check_eeprom, ptr @ath9k_hw_ar9287_get_eeprom, ptr @ath9k_hw_ar9287_fill_eeprom, ptr @ath9k_hw_ar9287_dump_eeprom, ptr @ath9k_hw_ar9287_get_eeprom_ver, ptr @ath9k_hw_ar9287_get_eeprom_rev, ptr @ath9k_hw_ar9287_set_board_values, ptr null, ptr @ath9k_hw_ar9287_set_txpower, ptr @ath9k_hw_ar9287_get_spur_channel, ptr @ath9k_hw_ar9287_get_eepmisc }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Reading from EEPROM, not flash\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%20s :\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"2GHz modal Header\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%20s : %10d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Major Version\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Minor Version\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Checksum\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Length\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RegDomain1\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RegDomain2\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TX Mask\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RX Mask\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Allow 5GHz\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Allow 2GHz\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Disable 2GHz HT20\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Disable 2GHz HT40\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Disable 5Ghz HT20\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Disable 5Ghz HT40\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Big Endian\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cal Bin Major Ver\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cal Bin Minor Ver\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Cal Bin Build\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Power Table Offset\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"OpenLoop Power Ctrl\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%20s : %pM\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MacAddress\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Chain0 Ant. Control\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Chain1 Ant. Control\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Ant. Common Control\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chain0 Ant. Gain\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chain1 Ant. Gain\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Switch Settle\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chain0 TxRxAtten\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chain1 TxRxAtten\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Chain0 RxTxMargin\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Chain1 RxTxMargin\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC Desired size\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"txEndToXpaOff\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"txEndToRxOn\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"txFrameToXpaOn\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CCA Threshold)\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Chain0 NF Threshold\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Chain1 NF Threshold\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"xpdGain\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"External PD\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Chain0 I Coefficient\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Chain1 I Coefficient\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Chain0 Q Coefficient\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Chain1 Q Coefficient\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pdGainOverlap\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xPA Bias Level\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"txFrameToDataStart\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"txFrameToPaOn\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HT40 Power Inc.\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Chain0 bswAtten\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Chain1 bswAtten\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chain0 bswMargin\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chain1 bswMargin\00", [47 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HT40 Switch Settle\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AR92x7 Version\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DriverBias1\00", [20 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DriverBias2\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CCK OutputBias\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PSK OutputBias\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"QAM OutputBias\00", [17 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PAL_OFF OutputBias\00", [45 x i8] zeroinitializer }, align 32
@ath9k_hw_set_ar9287_power_per_rate_table.ctlModesFor11g = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 1, i16 2, i16 5, i16 -32767, i16 -32766, i16 7], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 13, i64 14, i64 17, i64 22, i64 23, i64 24, i64 30]
@__sancov_gen_cov_switch_values.67 = internal global [12 x i64] [i64 10, i64 16, i64 0, i64 1, i64 2, i64 5, i64 6, i64 7, i64 8, i64 32768, i64 32769, i64 32770]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@___asan_gen_.69 = private unnamed_addr constant [15 x i8] c"eep_ar9287_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 975, i32 25 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 69, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 135, i32 6 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 135, i32 18 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 141, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 142, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 143, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 144, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 145, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 146, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 147, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 148, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 149, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 150, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 151, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 153, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 155, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 157, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 159, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 160, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 161, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 162, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 163, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 164, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 166, i32 42 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 166, i32 58 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 82, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 83, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 84, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 85, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 86, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 87, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 88, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 89, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 90, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 91, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 92, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 93, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 94, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 95, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 96, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 97, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 98, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 99, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 100, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 101, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 102, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 103, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 104, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 105, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 106, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 107, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 108, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 109, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 110, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 111, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 112, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 113, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 114, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 115, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 116, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 117, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 118, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 119, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 120, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 121, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant [15 x i8] c"ctlModesFor11g\00", align 1
@___asan_gen_.274 = private constant [48 x i8] c"../drivers/net/wireless/ath/ath9k/eeprom_9287.c\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 516, i32 19 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @eep_ar9287_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @ath9k_hw_set_ar9287_power_per_rate_table.ctlModesFor11g], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eep_ar9287_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_hw_set_ar9287_power_per_rate_table.ctlModesFor11g to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_hw_ar9287_check_eeprom(ptr noundef %ah) #0 align 64 {
entry:
  %need_swap = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %need_swap) #6
  %0 = ptrtoint ptr %need_swap to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %need_swap, align 1, !annotation !145
  %eeprom = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9
  %call = call i32 @ath9k_hw_nvram_swap_data(ptr noundef %ah, ptr noundef nonnull %need_swap, i32 noundef 363) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %eeprom to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %eeprom, align 1
  %3 = call i16 @llvm.bswap.i16(i16 %2)
  call void @__sanitizer_cov_trace_const_cmp2(i16 726, i16 %3)
  %cmp = icmp ult i16 %3, 726
  %4 = lshr i16 %3, 1
  %narrow = select i1 %cmp, i16 %4, i16 363
  %cond = zext i16 %narrow to i32
  %call8 = call zeroext i1 @ath9k_hw_nvram_validate_checksum(ptr noundef %ah, i32 noundef %cond) #6
  br i1 %call8, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %5 = ptrtoint ptr %need_swap to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %need_swap, align 1, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool11.not = icmp eq i8 %6, 0
  br i1 %tobool11.not, label %if.end10.if.end64_crit_edge, label %if.then12

if.end10.if.end64_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %eeprom to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %eeprom, align 1
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  %10 = ptrtoint ptr %eeprom to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %9, ptr %eeprom, align 1
  %checksum = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %checksum to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %checksum, align 1
  %13 = call i16 @llvm.bswap.i16(i16 %12)
  %14 = ptrtoint ptr %checksum to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %13, ptr %checksum, align 1
  %version = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 2
  %15 = ptrtoint ptr %version to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %version, align 1
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %18 = ptrtoint ptr %version to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %17, ptr %version, align 1
  %regDmn = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 5
  %19 = ptrtoint ptr %regDmn to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %regDmn, align 1
  %21 = call i16 @llvm.bswap.i16(i16 %20)
  %22 = ptrtoint ptr %regDmn to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %21, ptr %regDmn, align 1
  %arrayidx29 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %arrayidx29, align 1
  %25 = call i16 @llvm.bswap.i16(i16 %24)
  %26 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %25, ptr %arrayidx29, align 1
  %rfSilent = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 9
  %27 = ptrtoint ptr %rfSilent to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %rfSilent, align 1
  %29 = call i16 @llvm.bswap.i16(i16 %28)
  %30 = ptrtoint ptr %rfSilent to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 %29, ptr %rfSilent, align 1
  %blueToothOptions = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 10
  %31 = ptrtoint ptr %blueToothOptions to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %blueToothOptions, align 1
  %33 = call i16 @llvm.bswap.i16(i16 %32)
  %34 = ptrtoint ptr %blueToothOptions to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %33, ptr %blueToothOptions, align 1
  %deviceCap = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 11
  %35 = ptrtoint ptr %deviceCap to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %deviceCap, align 1
  %37 = call i16 @llvm.bswap.i16(i16 %36)
  %38 = ptrtoint ptr %deviceCap to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %37, ptr %deviceCap, align 1
  %modalHeader = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 32
  %antCtrlCommon = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 40
  %39 = ptrtoint ptr %antCtrlCommon to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %antCtrlCommon, align 1
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  %42 = ptrtoint ptr %antCtrlCommon to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %antCtrlCommon, align 1
  %43 = ptrtoint ptr %modalHeader to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %modalHeader, align 1
  %45 = call i32 @llvm.bswap.i32(i32 %44)
  %46 = ptrtoint ptr %modalHeader to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %45, ptr %modalHeader, align 1
  %arrayidx47.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 36
  %47 = ptrtoint ptr %arrayidx47.1 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %arrayidx47.1, align 1
  %49 = call i32 @llvm.bswap.i32(i32 %48)
  %50 = ptrtoint ptr %arrayidx47.1 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %49, ptr %arrayidx47.1, align 1
  %spurChans = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 19
  %51 = ptrtoint ptr %spurChans to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %spurChans, align 1
  %53 = call i16 @llvm.bswap.i16(i16 %52)
  %54 = ptrtoint ptr %spurChans to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 %53, ptr %spurChans, align 1
  %arrayidx56.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 23
  %55 = ptrtoint ptr %arrayidx56.1 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %arrayidx56.1, align 1
  %57 = call i16 @llvm.bswap.i16(i16 %56)
  %58 = ptrtoint ptr %arrayidx56.1 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 2)
  store i16 %57, ptr %arrayidx56.1, align 1
  %arrayidx56.2 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 27
  %59 = ptrtoint ptr %arrayidx56.2 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %arrayidx56.2, align 1
  %61 = call i16 @llvm.bswap.i16(i16 %60)
  %62 = ptrtoint ptr %arrayidx56.2 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 %61, ptr %arrayidx56.2, align 1
  %arrayidx56.3 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 28, i32 1
  %63 = ptrtoint ptr %arrayidx56.3 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %arrayidx56.3, align 1
  %65 = call i16 @llvm.bswap.i16(i16 %64)
  %66 = ptrtoint ptr %arrayidx56.3 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 2)
  store i16 %65, ptr %arrayidx56.3, align 1
  %arrayidx56.4 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 30, i32 1
  %67 = ptrtoint ptr %arrayidx56.4 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %arrayidx56.4, align 1
  %69 = call i16 @llvm.bswap.i16(i16 %68)
  %70 = ptrtoint ptr %arrayidx56.4 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %69, ptr %arrayidx56.4, align 1
  br label %if.end64

if.end64:                                         ; preds = %if.then12, %if.end10.if.end64_crit_edge
  %call65 = call zeroext i1 @ath9k_hw_nvram_check_version(ptr noundef %ah, i32 noundef 14, i32 noundef 1) #6
  %. = select i1 %call65, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %., %if.end64 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %need_swap) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath9k_hw_ar9287_get_eeprom(ptr nocapture noundef readonly %ah, i32 noundef %param) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %version1.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 2
  %0 = ptrtoint ptr %version1.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %version1.i, align 4
  %2 = and i16 %1, -241
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #6
  %4 = zext i32 %param to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %param, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb2
    i32 3, label %sw.bb5
    i32 2, label %sw.bb10
    i32 5, label %sw.bb16
    i32 6, label %sw.bb19
    i32 7, label %sw.bb21
    i32 8, label %sw.bb23
    i32 13, label %sw.bb25
    i32 14, label %sw.bb27
    i32 22, label %sw.bb29
    i32 17, label %sw.bb31
    i32 23, label %sw.bb33
    i32 24, label %sw.bb37
    i32 30, label %sw.bb44
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %noiseFloorThreshCh = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 56
  %5 = ptrtoint ptr %noiseFloorThreshCh to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %noiseFloorThreshCh, align 1
  %conv1 = sext i8 %6 to i32
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %macAddr = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 6
  %7 = ptrtoint ptr %macAddr to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %macAddr, align 1
  %conv4 = zext i16 %8 to i32
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 6, i32 2
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %add.ptr, align 1
  %conv9 = zext i16 %10 to i32
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr13 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 6, i32 4
  %11 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %add.ptr13, align 1
  %conv15 = zext i16 %12 to i32
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regDmn = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 5
  %13 = ptrtoint ptr %regDmn to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %regDmn, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv18 = zext i16 %15 to i32
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %deviceCap = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 11
  %16 = ptrtoint ptr %deviceCap to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %deviceCap, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv20 = zext i16 %18 to i32
  br label %cleanup

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %opCapFlags = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 3
  %19 = ptrtoint ptr %opCapFlags to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %opCapFlags, align 1
  %conv22 = zext i8 %20 to i32
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rfSilent = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 9
  %21 = ptrtoint ptr %rfSilent to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %rfSilent, align 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %conv24 = zext i16 %23 to i32
  br label %cleanup

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %txMask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 8
  %24 = ptrtoint ptr %txMask to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %txMask, align 1
  %conv26 = zext i8 %25 to i32
  br label %cleanup

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rxMask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 7
  %26 = ptrtoint ptr %rxMask to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rxMask, align 1
  %conv28 = zext i8 %27 to i32
  br label %cleanup

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %deviceType = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 13
  %28 = ptrtoint ptr %deviceType to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %deviceType, align 1
  %conv30 = zext i8 %29 to i32
  br label %cleanup

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %openLoopPwrCntl = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 14
  %30 = ptrtoint ptr %openLoopPwrCntl to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %openLoopPwrCntl, align 1
  %conv32 = zext i8 %31 to i32
  br label %cleanup

sw.bb33:                                          ; preds = %entry
  %32 = and i16 %3, 4094
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp.not = icmp eq i16 %32, 0
  br i1 %cmp.not, label %sw.bb33.cleanup_crit_edge, label %if.then

sw.bb33.cleanup_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #8
  %tempSensSlope = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 16
  %33 = ptrtoint ptr %tempSensSlope to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tempSensSlope, align 1
  %conv36 = sext i8 %34 to i32
  br label %cleanup

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %3)
  %cmp39 = icmp ugt i16 %3, 2
  br i1 %cmp39, label %if.then41, label %sw.bb37.cleanup_crit_edge

sw.bb37.cleanup_crit_edge:                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then41:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #8
  %tempSensSlopePalOn = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 17
  %35 = ptrtoint ptr %tempSensSlopePalOn to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %tempSensSlopePalOn, align 1
  %conv42 = sext i8 %36 to i32
  br label %cleanup

sw.bb44:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %antennaGainCh = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 44
  %37 = ptrtoint ptr %antennaGainCh to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %antennaGainCh, align 1
  %arrayidx47 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 45
  %39 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx47, align 1
  %41 = tail call i8 @llvm.umax.i8(i8 %38, i8 %40)
  %cond = zext i8 %41 to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.bb44, %if.then41, %sw.bb37.cleanup_crit_edge, %if.then, %sw.bb33.cleanup_crit_edge, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb16, %sw.bb10, %sw.bb5, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %sw.bb44 ], [ %conv42, %if.then41 ], [ %conv36, %if.then ], [ %conv32, %sw.bb31 ], [ %conv30, %sw.bb29 ], [ %conv28, %sw.bb27 ], [ %conv26, %sw.bb25 ], [ %conv24, %sw.bb23 ], [ %conv22, %sw.bb21 ], [ %conv20, %sw.bb19 ], [ %conv18, %sw.bb16 ], [ %conv15, %sw.bb10 ], [ %conv9, %sw.bb5 ], [ %conv4, %sw.bb2 ], [ %conv1, %sw.bb ], [ 0, %sw.bb33.cleanup_crit_edge ], [ 0, %sw.bb37.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ath9k_hw_ar9287_fill_eeprom(ptr noundef %ah) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  %ah_flags = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 24
  %0 = ptrtoint ptr %ah_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ah_flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %do.body

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_mask, align 4
  %and1 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %do.body.if.end4_crit_edge, label %if.then3

do.body.if.end4_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %do.body.if.end4_crit_edge, %entry.if.end4_crit_edge
  %bus_ops = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 25
  %4 = ptrtoint ptr %bus_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus_ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  %eeprom.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ath9k_hw_usb_gen_fill_eeprom(ptr noundef %ah, ptr noundef %eeprom.i, i32 noundef 256, i32 noundef 363) #6
  br label %cleanup

if.else:                                          ; preds = %if.end4
  %call.i14 = tail call zeroext i1 @ath9k_hw_nvram_read(ptr noundef %ah, i32 noundef 128, ptr noundef %eeprom.i) #6
  br i1 %call.i14, label %if.else.if.end.i_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  br label %if.end.i

for.body.i:                                       ; preds = %if.end.i
  %incdec.ptr.i = getelementptr i16, ptr %eep_data.08.i16, i32 1
  %add.i = add nuw nsw i32 %addr.09.i15, 129
  %call.i = tail call zeroext i1 @ath9k_hw_nvram_read(ptr noundef %ah, i32 noundef %add.i, ptr noundef %incdec.ptr.i) #6
  br i1 %call.i, label %for.body.i.if.end.i_crit_edge, label %for.body.i.cleanup.loopexit_crit_edge

for.body.i.cleanup.loopexit_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.loopexit

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %if.else.if.end.i_crit_edge
  %eep_data.08.i16 = phi ptr [ %incdec.ptr.i, %for.body.i.if.end.i_crit_edge ], [ %eeprom.i, %if.else.if.end.i_crit_edge ]
  %addr.09.i15 = phi i32 [ %inc.i, %for.body.i.if.end.i_crit_edge ], [ 0, %if.else.if.end.i_crit_edge ]
  %inc.i = add nuw nsw i32 %addr.09.i15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 363, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 363
  br i1 %exitcond.not.i, label %if.end.i.cleanup.loopexit_crit_edge, label %for.body.i

if.end.i.cleanup.loopexit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %if.end.i.cleanup.loopexit_crit_edge, %for.body.i.cleanup.loopexit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 361, i32 %addr.09.i15)
  %cmp.i.le = icmp ugt i32 %addr.09.i15, 361
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.else.cleanup_crit_edge, %if.then5
  %retval.0 = phi i1 [ true, %if.then5 ], [ false, %if.else.cleanup_crit_edge ], [ %cmp.i.le, %cleanup.loopexit ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_hw_ar9287_dump_eeprom(ptr noundef %ah, i1 noundef zeroext %dump_base_hdr, ptr noundef %buf, i32 noundef %len, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %dump_base_hdr, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %buf, i32 %len
  %sub = sub i32 %size, %len
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #6
  %add = add i32 %call, %len
  %modalHeader = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 32
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %add
  %sub.i = sub i32 %size, %add
  %0 = ptrtoint ptr %modalHeader to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %modalHeader, align 1
  %conv.i = trunc i32 %1 to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %conv1.i = zext i16 %2 to i32
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.27, i32 noundef %conv1.i) #6
  %add.i = add i32 %call.i, %add
  %add.ptr3.i = getelementptr i8, ptr %buf, i32 %add.i
  %sub4.i = sub i32 %size, %add.i
  %arrayidx6.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 36
  %3 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %arrayidx6.i, align 1
  %conv7.i = trunc i32 %4 to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv7.i) #6
  %conv8.i = zext i16 %5 to i32
  %call9.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3.i, i32 noundef %sub4.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.28, i32 noundef %conv8.i) #6
  %add10.i = add i32 %call9.i, %add.i
  %add.ptr13.i = getelementptr i8, ptr %buf, i32 %add10.i
  %sub14.i = sub i32 %size, %add10.i
  %antCtrlCommon.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 40
  %6 = ptrtoint ptr %antCtrlCommon.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %antCtrlCommon.i, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  %call15.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr13.i, i32 noundef %sub14.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.29, i32 noundef %8) #6
  %add16.i = add i32 %call15.i, %add10.i
  %add.ptr19.i = getelementptr i8, ptr %buf, i32 %add16.i
  %sub20.i = sub i32 %size, %add16.i
  %antennaGainCh.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 44
  %9 = ptrtoint ptr %antennaGainCh.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %antennaGainCh.i, align 1
  %conv22.i = sext i8 %10 to i32
  %call23.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr19.i, i32 noundef %sub20.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.30, i32 noundef %conv22.i) #6
  %add24.i = add i32 %call23.i, %add16.i
  %add.ptr27.i = getelementptr i8, ptr %buf, i32 %add24.i
  %sub28.i = sub i32 %size, %add24.i
  %arrayidx30.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 45
  %11 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx30.i, align 1
  %conv31.i = sext i8 %12 to i32
  %call32.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr27.i, i32 noundef %sub28.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.31, i32 noundef %conv31.i) #6
  %add33.i = add i32 %call32.i, %add24.i
  %add.ptr36.i = getelementptr i8, ptr %buf, i32 %add33.i
  %sub37.i = sub i32 %size, %add33.i
  %switchSettling.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 46
  %13 = ptrtoint ptr %switchSettling.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %switchSettling.i, align 1
  %conv38.i = zext i8 %14 to i32
  %call39.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr36.i, i32 noundef %sub37.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.32, i32 noundef %conv38.i) #6
  %add40.i = add i32 %call39.i, %add33.i
  %add.ptr43.i = getelementptr i8, ptr %buf, i32 %add40.i
  %sub44.i = sub i32 %size, %add40.i
  %txRxAttenCh.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 47
  %15 = ptrtoint ptr %txRxAttenCh.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %txRxAttenCh.i, align 1
  %conv46.i = zext i8 %16 to i32
  %call47.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr43.i, i32 noundef %sub44.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.33, i32 noundef %conv46.i) #6
  %add48.i = add i32 %call47.i, %add40.i
  %add.ptr51.i = getelementptr i8, ptr %buf, i32 %add48.i
  %sub52.i = sub i32 %size, %add48.i
  %arrayidx54.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 48
  %17 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx54.i, align 1
  %conv55.i = zext i8 %18 to i32
  %call56.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr51.i, i32 noundef %sub52.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.34, i32 noundef %conv55.i) #6
  %add57.i = add i32 %call56.i, %add48.i
  %add.ptr60.i = getelementptr i8, ptr %buf, i32 %add57.i
  %sub61.i = sub i32 %size, %add57.i
  %rxTxMarginCh.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 49
  %19 = ptrtoint ptr %rxTxMarginCh.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rxTxMarginCh.i, align 1
  %conv63.i = zext i8 %20 to i32
  %call64.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr60.i, i32 noundef %sub61.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.35, i32 noundef %conv63.i) #6
  %add65.i = add i32 %call64.i, %add57.i
  %add.ptr68.i = getelementptr i8, ptr %buf, i32 %add65.i
  %sub69.i = sub i32 %size, %add65.i
  %arrayidx71.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 50
  %21 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx71.i, align 1
  %conv72.i = zext i8 %22 to i32
  %call73.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr68.i, i32 noundef %sub69.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.36, i32 noundef %conv72.i) #6
  %add74.i = add i32 %call73.i, %add65.i
  %add.ptr77.i = getelementptr i8, ptr %buf, i32 %add74.i
  %sub78.i = sub i32 %size, %add74.i
  %adcDesiredSize.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 51
  %23 = ptrtoint ptr %adcDesiredSize.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %adcDesiredSize.i, align 1
  %conv79.i = sext i8 %24 to i32
  %call80.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr77.i, i32 noundef %sub78.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.37, i32 noundef %conv79.i) #6
  %add81.i = add i32 %call80.i, %add74.i
  %add.ptr84.i = getelementptr i8, ptr %buf, i32 %add81.i
  %sub85.i = sub i32 %size, %add81.i
  %txEndToXpaOff.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 52
  %25 = ptrtoint ptr %txEndToXpaOff.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %txEndToXpaOff.i, align 1
  %conv86.i = zext i8 %26 to i32
  %call87.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr84.i, i32 noundef %sub85.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.38, i32 noundef %conv86.i) #6
  %add88.i = add i32 %call87.i, %add81.i
  %add.ptr91.i = getelementptr i8, ptr %buf, i32 %add88.i
  %sub92.i = sub i32 %size, %add88.i
  %txEndToRxOn.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 53
  %27 = ptrtoint ptr %txEndToRxOn.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %txEndToRxOn.i, align 1
  %conv93.i = zext i8 %28 to i32
  %call94.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr91.i, i32 noundef %sub92.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.39, i32 noundef %conv93.i) #6
  %add95.i = add i32 %call94.i, %add88.i
  %add.ptr98.i = getelementptr i8, ptr %buf, i32 %add95.i
  %sub99.i = sub i32 %size, %add95.i
  %txFrameToXpaOn.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 54
  %29 = ptrtoint ptr %txFrameToXpaOn.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %txFrameToXpaOn.i, align 1
  %conv100.i = zext i8 %30 to i32
  %call101.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr98.i, i32 noundef %sub99.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.40, i32 noundef %conv100.i) #6
  %add102.i = add i32 %call101.i, %add95.i
  %add.ptr105.i = getelementptr i8, ptr %buf, i32 %add102.i
  %sub106.i = sub i32 %size, %add102.i
  %thresh62.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 55
  %31 = ptrtoint ptr %thresh62.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %thresh62.i, align 1
  %conv107.i = zext i8 %32 to i32
  %call108.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr105.i, i32 noundef %sub106.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.41, i32 noundef %conv107.i) #6
  %add109.i = add i32 %call108.i, %add102.i
  %add.ptr112.i = getelementptr i8, ptr %buf, i32 %add109.i
  %sub113.i = sub i32 %size, %add109.i
  %noiseFloorThreshCh.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 56
  %33 = ptrtoint ptr %noiseFloorThreshCh.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %noiseFloorThreshCh.i, align 1
  %conv115.i = sext i8 %34 to i32
  %call116.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr112.i, i32 noundef %sub113.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.42, i32 noundef %conv115.i) #6
  %add117.i = add i32 %call116.i, %add109.i
  %add.ptr120.i = getelementptr i8, ptr %buf, i32 %add117.i
  %sub121.i = sub i32 %size, %add117.i
  %arrayidx123.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 57
  %35 = ptrtoint ptr %arrayidx123.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx123.i, align 1
  %conv124.i = sext i8 %36 to i32
  %call125.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr120.i, i32 noundef %sub121.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.43, i32 noundef %conv124.i) #6
  %add126.i = add i32 %call125.i, %add117.i
  %add.ptr129.i = getelementptr i8, ptr %buf, i32 %add126.i
  %sub130.i = sub i32 %size, %add126.i
  %xpdGain.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 58
  %37 = ptrtoint ptr %xpdGain.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %xpdGain.i, align 1
  %conv131.i = zext i8 %38 to i32
  %call132.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr129.i, i32 noundef %sub130.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.44, i32 noundef %conv131.i) #6
  %add133.i = add i32 %call132.i, %add126.i
  %add.ptr136.i = getelementptr i8, ptr %buf, i32 %add133.i
  %sub137.i = sub i32 %size, %add133.i
  %xpd.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 59
  %39 = ptrtoint ptr %xpd.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %xpd.i, align 1
  %conv138.i = zext i8 %40 to i32
  %call139.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr136.i, i32 noundef %sub137.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.45, i32 noundef %conv138.i) #6
  %add140.i = add i32 %call139.i, %add133.i
  %add.ptr143.i = getelementptr i8, ptr %buf, i32 %add140.i
  %sub144.i = sub i32 %size, %add140.i
  %iqCalICh.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 60
  %41 = ptrtoint ptr %iqCalICh.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %iqCalICh.i, align 1
  %conv146.i = sext i8 %42 to i32
  %call147.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr143.i, i32 noundef %sub144.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.46, i32 noundef %conv146.i) #6
  %add148.i = add i32 %call147.i, %add140.i
  %add.ptr151.i = getelementptr i8, ptr %buf, i32 %add148.i
  %sub152.i = sub i32 %size, %add148.i
  %arrayidx154.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 61
  %43 = ptrtoint ptr %arrayidx154.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx154.i, align 1
  %conv155.i = sext i8 %44 to i32
  %call156.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr151.i, i32 noundef %sub152.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.47, i32 noundef %conv155.i) #6
  %add157.i = add i32 %call156.i, %add148.i
  %add.ptr160.i = getelementptr i8, ptr %buf, i32 %add157.i
  %sub161.i = sub i32 %size, %add157.i
  %iqCalQCh.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 62
  %45 = ptrtoint ptr %iqCalQCh.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %iqCalQCh.i, align 1
  %conv163.i = sext i8 %46 to i32
  %call164.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr160.i, i32 noundef %sub161.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.48, i32 noundef %conv163.i) #6
  %add165.i = add i32 %call164.i, %add157.i
  %add.ptr168.i = getelementptr i8, ptr %buf, i32 %add165.i
  %sub169.i = sub i32 %size, %add165.i
  %arrayidx171.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 63
  %47 = ptrtoint ptr %arrayidx171.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx171.i, align 1
  %conv172.i = sext i8 %48 to i32
  %call173.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr168.i, i32 noundef %sub169.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.49, i32 noundef %conv172.i) #6
  %add174.i = add i32 %call173.i, %add165.i
  %add.ptr177.i = getelementptr i8, ptr %buf, i32 %add174.i
  %sub178.i = sub i32 %size, %add174.i
  %pdGainOverlap.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2
  %49 = ptrtoint ptr %pdGainOverlap.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %pdGainOverlap.i, align 1
  %conv179.i = zext i8 %50 to i32
  %call180.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr177.i, i32 noundef %sub178.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.50, i32 noundef %conv179.i) #6
  %add181.i = add i32 %call180.i, %add174.i
  %add.ptr184.i = getelementptr i8, ptr %buf, i32 %add181.i
  %sub185.i = sub i32 %size, %add181.i
  %xpaBiasLvl.i = getelementptr inbounds %struct.modal_eep_ar9287_header, ptr %modalHeader, i32 0, i32 17
  %51 = ptrtoint ptr %xpaBiasLvl.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %xpaBiasLvl.i, align 1
  %conv186.i = zext i8 %52 to i32
  %call187.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr184.i, i32 noundef %sub185.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.51, i32 noundef %conv186.i) #6
  %add188.i = add i32 %call187.i, %add181.i
  %add.ptr191.i = getelementptr i8, ptr %buf, i32 %add188.i
  %sub192.i = sub i32 %size, %add188.i
  %txFrameToDataStart.i = getelementptr inbounds %struct.modal_eep_ar9287_header, ptr %modalHeader, i32 0, i32 18
  %53 = ptrtoint ptr %txFrameToDataStart.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %txFrameToDataStart.i, align 1
  %conv193.i = zext i8 %54 to i32
  %call194.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr191.i, i32 noundef %sub192.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.52, i32 noundef %conv193.i) #6
  %add195.i = add i32 %call194.i, %add188.i
  %add.ptr198.i = getelementptr i8, ptr %buf, i32 %add195.i
  %sub199.i = sub i32 %size, %add195.i
  %txFrameToPaOn.i = getelementptr inbounds %struct.modal_eep_ar9287_header, ptr %modalHeader, i32 0, i32 19
  %55 = ptrtoint ptr %txFrameToPaOn.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %txFrameToPaOn.i, align 1
  %conv200.i = zext i8 %56 to i32
  %call201.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr198.i, i32 noundef %sub199.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.53, i32 noundef %conv200.i) #6
  %add202.i = add i32 %call201.i, %add195.i
  %add.ptr205.i = getelementptr i8, ptr %buf, i32 %add202.i
  %sub206.i = sub i32 %size, %add202.i
  %ht40PowerIncForPdadc.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 0, i32 1
  %57 = ptrtoint ptr %ht40PowerIncForPdadc.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %ht40PowerIncForPdadc.i, align 1
  %conv207.i = zext i8 %58 to i32
  %call208.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr205.i, i32 noundef %sub206.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.54, i32 noundef %conv207.i) #6
  %add209.i = add i32 %call208.i, %add202.i
  %add.ptr212.i = getelementptr i8, ptr %buf, i32 %add209.i
  %sub213.i = sub i32 %size, %add209.i
  %bswAtten.i = getelementptr inbounds %struct.modal_eep_ar9287_header, ptr %modalHeader, i32 0, i32 21
  %59 = ptrtoint ptr %bswAtten.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bswAtten.i, align 1
  %conv215.i = zext i8 %60 to i32
  %call216.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr212.i, i32 noundef %sub213.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.55, i32 noundef %conv215.i) #6
  %add217.i = add i32 %call216.i, %add209.i
  %add.ptr220.i = getelementptr i8, ptr %buf, i32 %add217.i
  %sub221.i = sub i32 %size, %add217.i
  %arrayidx223.i = getelementptr %struct.modal_eep_ar9287_header, ptr %modalHeader, i32 0, i32 21, i32 1
  %61 = ptrtoint ptr %arrayidx223.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx223.i, align 1
  %conv224.i = zext i8 %62 to i32
  %call225.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr220.i, i32 noundef %sub221.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.56, i32 noundef %conv224.i) #6
  %add226.i = add i32 %call225.i, %add217.i
  %add.ptr229.i = getelementptr i8, ptr %buf, i32 %add226.i
  %sub230.i = sub i32 %size, %add226.i
  %bswMargin.i = getelementptr inbounds %struct.modal_eep_ar9287_header, ptr %modalHeader, i32 0, i32 22
  %63 = ptrtoint ptr %bswMargin.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %bswMargin.i, align 1
  %conv232.i = zext i8 %64 to i32
  %call233.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr229.i, i32 noundef %sub230.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.57, i32 noundef %conv232.i) #6
  %add234.i = add i32 %call233.i, %add226.i
  %add.ptr237.i = getelementptr i8, ptr %buf, i32 %add234.i
  %sub238.i = sub i32 %size, %add234.i
  %arrayidx240.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 0, i32 2
  %65 = ptrtoint ptr %arrayidx240.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx240.i, align 1
  %conv241.i = zext i8 %66 to i32
  %call242.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr237.i, i32 noundef %sub238.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.58, i32 noundef %conv241.i) #6
  %add243.i = add i32 %call242.i, %add234.i
  %add.ptr246.i = getelementptr i8, ptr %buf, i32 %add243.i
  %sub247.i = sub i32 %size, %add243.i
  %swSettleHt40.i = getelementptr inbounds %struct.modal_eep_ar9287_header, ptr %modalHeader, i32 0, i32 23
  %67 = ptrtoint ptr %swSettleHt40.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %swSettleHt40.i, align 1
  %conv248.i = zext i8 %68 to i32
  %call249.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr246.i, i32 noundef %sub247.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.59, i32 noundef %conv248.i) #6
  %add250.i = add i32 %call249.i, %add243.i
  %add.ptr253.i = getelementptr i8, ptr %buf, i32 %add250.i
  %sub254.i = sub i32 %size, %add250.i
  %version.i = getelementptr inbounds %struct.modal_eep_ar9287_header, ptr %modalHeader, i32 0, i32 24
  %69 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %version.i, align 1
  %conv255.i = zext i8 %70 to i32
  %call256.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr253.i, i32 noundef %sub254.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.60, i32 noundef %conv255.i) #6
  %add257.i = add i32 %call256.i, %add250.i
  %add.ptr260.i = getelementptr i8, ptr %buf, i32 %add257.i
  %sub261.i = sub i32 %size, %add257.i
  %db1.i = getelementptr inbounds %struct.modal_eep_ar9287_header, ptr %modalHeader, i32 0, i32 25
  %71 = ptrtoint ptr %db1.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %db1.i, align 1
  %conv262.i = zext i8 %72 to i32
  %call263.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr260.i, i32 noundef %sub261.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.61, i32 noundef %conv262.i) #6
  %add264.i = add i32 %call263.i, %add257.i
  %add.ptr267.i = getelementptr i8, ptr %buf, i32 %add264.i
  %sub268.i = sub i32 %size, %add264.i
  %73 = ptrtoint ptr %db1.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %db1.i, align 1
  %conv270.i = zext i8 %74 to i32
  %call271.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr267.i, i32 noundef %sub268.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.62, i32 noundef %conv270.i) #6
  %add272.i = add i32 %call271.i, %add264.i
  %add.ptr275.i = getelementptr i8, ptr %buf, i32 %add272.i
  %sub276.i = sub i32 %size, %add272.i
  %ob_cck.i = getelementptr inbounds %struct.modal_eep_ar9287_header, ptr %modalHeader, i32 0, i32 27
  %75 = ptrtoint ptr %ob_cck.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %ob_cck.i, align 1
  %conv277.i = zext i8 %76 to i32
  %call278.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr275.i, i32 noundef %sub276.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.63, i32 noundef %conv277.i) #6
  %add279.i = add i32 %call278.i, %add272.i
  %add.ptr282.i = getelementptr i8, ptr %buf, i32 %add279.i
  %sub283.i = sub i32 %size, %add279.i
  %ob_psk.i = getelementptr inbounds %struct.modal_eep_ar9287_header, ptr %modalHeader, i32 0, i32 28
  %77 = ptrtoint ptr %ob_psk.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %ob_psk.i, align 1
  %conv284.i = zext i8 %78 to i32
  %call285.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr282.i, i32 noundef %sub283.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.64, i32 noundef %conv284.i) #6
  %add286.i = add i32 %call285.i, %add279.i
  %add.ptr289.i = getelementptr i8, ptr %buf, i32 %add286.i
  %sub290.i = sub i32 %size, %add286.i
  %ob_qam.i = getelementptr inbounds %struct.modal_eep_ar9287_header, ptr %modalHeader, i32 0, i32 29
  %79 = ptrtoint ptr %ob_qam.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %ob_qam.i, align 1
  %conv291.i = zext i8 %80 to i32
  %call292.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr289.i, i32 noundef %sub290.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.65, i32 noundef %conv291.i) #6
  %add293.i = add i32 %call292.i, %add286.i
  %add.ptr296.i = getelementptr i8, ptr %buf, i32 %add293.i
  %sub297.i = sub i32 %size, %add293.i
  %ob_pal_off.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 2
  %81 = ptrtoint ptr %ob_pal_off.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %ob_pal_off.i, align 1
  %conv298.i = zext i8 %82 to i32
  %call299.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr296.i, i32 noundef %sub297.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.66, i32 noundef %conv298.i) #6
  %add300.i = add i32 %call299.i, %add293.i
  br label %out

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %eeprom = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9
  %binBuildNumber1 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 12
  %83 = ptrtoint ptr %binBuildNumber1 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %binBuildNumber1, align 1
  %85 = tail call i32 @llvm.bswap.i32(i32 %84)
  %add.ptr3 = getelementptr i8, ptr %buf, i32 %len
  %sub4 = sub i32 %size, %len
  %version1.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 2
  %86 = ptrtoint ptr %version1.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %version1.i, align 4
  %88 = lshr i16 %87, 4
  %89 = and i16 %88, 15
  %90 = zext i16 %89 to i32
  %call6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3, i32 noundef %sub4, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %90) #6
  %add7 = add i32 %call6, %len
  %add.ptr9 = getelementptr i8, ptr %buf, i32 %add7
  %sub10 = sub i32 %size, %add7
  %91 = ptrtoint ptr %version1.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %version1.i, align 4
  %93 = and i16 %92, -241
  %94 = tail call i16 @llvm.bswap.i16(i16 %93) #6
  %and.i = zext i16 %94 to i32
  %call12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9, i32 noundef %sub10, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6, i32 noundef %and.i) #6
  %add13 = add i32 %call12, %add7
  %add.ptr17 = getelementptr i8, ptr %buf, i32 %add13
  %sub18 = sub i32 %size, %add13
  %checksum = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 1
  %95 = ptrtoint ptr %checksum to i32
  call void @__asan_loadN_noabort(i32 %95, i32 2)
  %96 = load i16, ptr %checksum, align 1
  %97 = tail call i16 @llvm.bswap.i16(i16 %96)
  %conv = zext i16 %97 to i32
  %call19 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17, i32 noundef %sub18, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7, i32 noundef %conv) #6
  %add20 = add i32 %call19, %add13
  %add.ptr24 = getelementptr i8, ptr %buf, i32 %add20
  %sub25 = sub i32 %size, %add20
  %98 = ptrtoint ptr %eeprom to i32
  call void @__asan_loadN_noabort(i32 %98, i32 2)
  %99 = load i16, ptr %eeprom, align 1
  %100 = tail call i16 @llvm.bswap.i16(i16 %99)
  %conv26 = zext i16 %100 to i32
  %call27 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr24, i32 noundef %sub25, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8, i32 noundef %conv26) #6
  %add28 = add i32 %call27, %add20
  %add.ptr32 = getelementptr i8, ptr %buf, i32 %add28
  %sub33 = sub i32 %size, %add28
  %regDmn = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 5
  %101 = ptrtoint ptr %regDmn to i32
  call void @__asan_loadN_noabort(i32 %101, i32 2)
  %102 = load i16, ptr %regDmn, align 1
  %103 = tail call i16 @llvm.bswap.i16(i16 %102)
  %conv34 = zext i16 %103 to i32
  %call35 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr32, i32 noundef %sub33, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, i32 noundef %conv34) #6
  %add36 = add i32 %call35, %add28
  %add.ptr40 = getelementptr i8, ptr %buf, i32 %add36
  %sub41 = sub i32 %size, %add36
  %arrayidx43 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 5, i32 1
  %104 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_loadN_noabort(i32 %104, i32 2)
  %105 = load i16, ptr %arrayidx43, align 1
  %106 = tail call i16 @llvm.bswap.i16(i16 %105)
  %conv44 = zext i16 %106 to i32
  %call45 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40, i32 noundef %sub41, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.10, i32 noundef %conv44) #6
  %add46 = add i32 %call45, %add36
  %add.ptr50 = getelementptr i8, ptr %buf, i32 %add46
  %sub51 = sub i32 %size, %add46
  %txMask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 8
  %107 = ptrtoint ptr %txMask to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %txMask, align 1
  %conv52 = zext i8 %108 to i32
  %call53 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50, i32 noundef %sub51, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11, i32 noundef %conv52) #6
  %add54 = add i32 %call53, %add46
  %add.ptr58 = getelementptr i8, ptr %buf, i32 %add54
  %sub59 = sub i32 %size, %add54
  %rxMask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 7
  %109 = ptrtoint ptr %rxMask to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %rxMask, align 1
  %conv60 = zext i8 %110 to i32
  %call61 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr58, i32 noundef %sub59, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.12, i32 noundef %conv60) #6
  %add62 = add i32 %call61, %add54
  %add.ptr66 = getelementptr i8, ptr %buf, i32 %add62
  %sub67 = sub i32 %size, %add62
  %opCapFlags = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 3
  %111 = ptrtoint ptr %opCapFlags to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %opCapFlags, align 1
  %113 = and i8 %112, 1
  %114 = zext i8 %113 to i32
  %call71 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr66, i32 noundef %sub67, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.13, i32 noundef %114) #6
  %add72 = add i32 %call71, %add62
  %add.ptr76 = getelementptr i8, ptr %buf, i32 %add72
  %sub77 = sub i32 %size, %add72
  %115 = ptrtoint ptr %opCapFlags to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %opCapFlags, align 1
  %117 = lshr i8 %116, 1
  %.lobit = and i8 %117, 1
  %118 = zext i8 %.lobit to i32
  %call86 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr76, i32 noundef %sub77, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.14, i32 noundef %118) #6
  %add87 = add i32 %call86, %add72
  %add.ptr91 = getelementptr i8, ptr %buf, i32 %add87
  %sub92 = sub i32 %size, %add87
  %119 = ptrtoint ptr %opCapFlags to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %opCapFlags, align 1
  %121 = lshr i8 %120, 5
  %.lobit348 = and i8 %121, 1
  %122 = zext i8 %.lobit348 to i32
  %call101 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr91, i32 noundef %sub92, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.15, i32 noundef %122) #6
  %add102 = add i32 %call101, %add87
  %add.ptr106 = getelementptr i8, ptr %buf, i32 %add102
  %sub107 = sub i32 %size, %add102
  %123 = ptrtoint ptr %opCapFlags to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %opCapFlags, align 1
  %125 = lshr i8 %124, 3
  %.lobit349 = and i8 %125, 1
  %126 = zext i8 %.lobit349 to i32
  %call116 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr106, i32 noundef %sub107, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.16, i32 noundef %126) #6
  %add117 = add i32 %call116, %add102
  %add.ptr121 = getelementptr i8, ptr %buf, i32 %add117
  %sub122 = sub i32 %size, %add117
  %127 = ptrtoint ptr %opCapFlags to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %opCapFlags, align 1
  %129 = lshr i8 %128, 4
  %.lobit350 = and i8 %129, 1
  %130 = zext i8 %.lobit350 to i32
  %call131 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr121, i32 noundef %sub122, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.17, i32 noundef %130) #6
  %add132 = add i32 %call131, %add117
  %add.ptr136 = getelementptr i8, ptr %buf, i32 %add132
  %sub137 = sub i32 %size, %add132
  %131 = ptrtoint ptr %opCapFlags to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %opCapFlags, align 1
  %133 = lshr i8 %132, 2
  %.lobit351 = and i8 %133, 1
  %134 = zext i8 %.lobit351 to i32
  %call146 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr136, i32 noundef %sub137, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.18, i32 noundef %134) #6
  %add147 = add i32 %call146, %add132
  %add.ptr151 = getelementptr i8, ptr %buf, i32 %add147
  %sub152 = sub i32 %size, %add147
  %eepMisc = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 4
  %135 = ptrtoint ptr %eepMisc to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %eepMisc, align 1
  %137 = and i8 %136, 1
  %138 = zext i8 %137 to i32
  %call160 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr151, i32 noundef %sub152, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.19, i32 noundef %138) #6
  %add161 = add i32 %call160, %add147
  %add.ptr165 = getelementptr i8, ptr %buf, i32 %add161
  %sub166 = sub i32 %size, %add161
  %shr = lshr i32 %85, 24
  %call168 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr165, i32 noundef %sub166, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20, i32 noundef %shr) #6
  %add169 = add i32 %add161, %call168
  %add.ptr173 = getelementptr i8, ptr %buf, i32 %add169
  %sub174 = sub i32 %size, %add169
  %shr175 = lshr i32 %85, 16
  %and176 = and i32 %shr175, 255
  %call177 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr173, i32 noundef %sub174, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.21, i32 noundef %and176) #6
  %add178 = add i32 %add169, %call177
  %add.ptr182 = getelementptr i8, ptr %buf, i32 %add178
  %sub183 = sub i32 %size, %add178
  %shr184 = lshr i32 %85, 8
  %and185 = and i32 %shr184, 255
  %call186 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr182, i32 noundef %sub183, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.22, i32 noundef %and185) #6
  %add187 = add i32 %add178, %call186
  %add.ptr191 = getelementptr i8, ptr %buf, i32 %add187
  %sub192 = sub i32 %size, %add187
  %pwrTableOffset = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 15
  %139 = ptrtoint ptr %pwrTableOffset to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %pwrTableOffset, align 1
  %conv193 = sext i8 %140 to i32
  %call194 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr191, i32 noundef %sub192, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.23, i32 noundef %conv193) #6
  %add195 = add i32 %call194, %add187
  %add.ptr199 = getelementptr i8, ptr %buf, i32 %add195
  %sub200 = sub i32 %size, %add195
  %openLoopPwrCntl = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 14
  %141 = ptrtoint ptr %openLoopPwrCntl to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %openLoopPwrCntl, align 1
  %conv201 = zext i8 %142 to i32
  %call202 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr199, i32 noundef %sub200, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.24, i32 noundef %conv201) #6
  %add203 = add i32 %call202, %add195
  %add.ptr206 = getelementptr i8, ptr %buf, i32 %add203
  %sub207 = sub i32 %size, %add203
  %macAddr = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 6
  %call208 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr206, i32 noundef %sub207, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, ptr noundef %macAddr) #6
  %add209 = add i32 %add203, %call208
  br label %out

out:                                              ; preds = %do.body, %if.then
  %len.addr.0 = phi i32 [ %add209, %do.body ], [ %add300.i, %if.then ]
  %143 = tail call i32 @llvm.umin.i32(i32 %len.addr.0, i32 %size)
  ret i32 %143
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath9k_hw_ar9287_get_eeprom_ver(ptr nocapture noundef readonly %ah) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %version1 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 2
  %0 = ptrtoint ptr %version1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %version1, align 4
  %2 = lshr i16 %1, 4
  %3 = and i16 %2, 15
  %4 = zext i16 %3 to i32
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath9k_hw_ar9287_get_eeprom_rev(ptr nocapture noundef readonly %ah) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %version1 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 2
  %0 = ptrtoint ptr %version1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %version1, align 4
  %2 = and i16 %1, -241
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %and = zext i16 %3 to i32
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_hw_ar9287_set_board_values(ptr noundef %ah, ptr nocapture noundef readonly %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %modalHeader1 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 32
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %0 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write, align 4
  %antCtrlCommon = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 40
  %2 = ptrtoint ptr %antCtrlCommon to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %antCtrlCommon, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void %1(ptr noundef %ah, i32 noundef %4, i32 noundef 39268) #6
  %iqCalICh = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 60
  %iqCalQCh = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 62
  %txRxAttenCh = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 47
  %rmw = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %rxTxMarginCh = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 49
  %5 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write, align 4
  %7 = ptrtoint ptr %modalHeader1 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %modalHeader1, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void %6(ptr noundef %ah, i32 noundef %9, i32 noundef 39264) #6
  %10 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write, align 4
  %12 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ah, align 4
  %call = tail call i32 %13(ptr noundef %ah, i32 noundef 39200) #6
  %and = and i32 %call, -2048
  %14 = ptrtoint ptr %iqCalICh to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %iqCalICh, align 1
  %conv = sext i8 %15 to i32
  %shl = shl nsw i32 %conv, 5
  %and9 = and i32 %shl, 2016
  %or = or i32 %and9, %and
  %16 = ptrtoint ptr %iqCalQCh to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %iqCalQCh, align 1
  %18 = and i8 %17, 31
  %and13 = zext i8 %18 to i32
  %or14 = or i32 %or, %and13
  tail call void %11(ptr noundef %ah, i32 noundef %or14, i32 noundef 39200) #6
  %19 = ptrtoint ptr %txRxAttenCh to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %txRxAttenCh, align 1
  %21 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmw, align 4
  %arrayidx19 = getelementptr %struct.modal_eep_ar9287_header, ptr %modalHeader1, i32 0, i32 22, i32 0
  %23 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %24 to i32
  %shl21 = shl nuw nsw i32 %conv20, 12
  %and22 = and i32 %shl21, 126976
  %call23 = tail call i32 %22(ptr noundef %ah, i32 noundef 41484, i32 noundef %and22, i32 noundef 126976) #6
  %25 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmw, align 4
  %arrayidx27 = getelementptr %struct.modal_eep_ar9287_header, ptr %modalHeader1, i32 0, i32 21, i32 0
  %27 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx27, align 1
  %29 = and i8 %28, 63
  %and30 = zext i8 %29 to i32
  %call31 = tail call i32 %26(ptr noundef %ah, i32 noundef 41484, i32 noundef %and30, i32 noundef 63) #6
  %30 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmw, align 4
  %conv35 = zext i8 %20 to i32
  %shl36 = shl nuw nsw i32 %conv35, 7
  %and37 = and i32 %shl36, 16256
  %call38 = tail call i32 %31(ptr noundef %ah, i32 noundef 38984, i32 noundef %and37, i32 noundef 16256) #6
  %32 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmw, align 4
  %34 = ptrtoint ptr %rxTxMarginCh to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rxTxMarginCh, align 1
  %conv43 = zext i8 %35 to i32
  %shl44 = shl nuw nsw i32 %conv43, 14
  %and45 = and i32 %shl44, 2080768
  %call46 = tail call i32 %33(ptr noundef %ah, i32 noundef 38984, i32 noundef %and45, i32 noundef 2080768) #6
  %36 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write, align 4
  %arrayidx.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 36
  %38 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %arrayidx.1, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void %37(ptr noundef %ah, i32 noundef %40, i32 noundef 43360) #6
  %41 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write, align 4
  %43 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ah, align 4
  %call.1 = tail call i32 %44(ptr noundef %ah, i32 noundef 43296) #6
  %and.1 = and i32 %call.1, -2048
  %arrayidx8.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 61
  %45 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx8.1, align 1
  %conv.1 = sext i8 %46 to i32
  %shl.1 = shl nsw i32 %conv.1, 5
  %and9.1 = and i32 %shl.1, 2016
  %or.1 = or i32 %and9.1, %and.1
  %arrayidx10.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 63
  %47 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx10.1, align 1
  %49 = and i8 %48, 31
  %and13.1 = zext i8 %49 to i32
  %or14.1 = or i32 %or.1, %and13.1
  tail call void %42(ptr noundef %ah, i32 noundef %or14.1, i32 noundef 43296) #6
  %arrayidx16.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 48
  %50 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx16.1, align 1
  %52 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmw, align 4
  %arrayidx19.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 0, i32 2
  %54 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx19.1, align 1
  %conv20.1 = zext i8 %55 to i32
  %shl21.1 = shl nuw nsw i32 %conv20.1, 12
  %and22.1 = and i32 %shl21.1, 126976
  %call23.1 = tail call i32 %53(ptr noundef %ah, i32 noundef 45580, i32 noundef %and22.1, i32 noundef 126976) #6
  %56 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rmw, align 4
  %arrayidx27.1 = getelementptr %struct.modal_eep_ar9287_header, ptr %modalHeader1, i32 0, i32 21, i32 1
  %58 = ptrtoint ptr %arrayidx27.1 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx27.1, align 1
  %60 = and i8 %59, 63
  %and30.1 = zext i8 %60 to i32
  %call31.1 = tail call i32 %57(ptr noundef %ah, i32 noundef 45580, i32 noundef %and30.1, i32 noundef 63) #6
  %61 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rmw, align 4
  %conv35.1 = zext i8 %51 to i32
  %shl36.1 = shl nuw nsw i32 %conv35.1, 7
  %and37.1 = and i32 %shl36.1, 16256
  %call38.1 = tail call i32 %62(ptr noundef %ah, i32 noundef 43080, i32 noundef %and37.1, i32 noundef 16256) #6
  %63 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rmw, align 4
  %arrayidx42.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 50
  %65 = ptrtoint ptr %arrayidx42.1 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx42.1, align 1
  %conv43.1 = zext i8 %66 to i32
  %shl44.1 = shl nuw nsw i32 %conv43.1, 14
  %and45.1 = and i32 %shl44.1, 2080768
  %call46.1 = tail call i32 %64(ptr noundef %ah, i32 noundef 43080, i32 noundef %and45.1, i32 noundef 2080768) #6
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %67 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %channelFlags, align 2
  %69 = and i16 %68, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool.not = icmp eq i16 %69, 0
  %70 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rmw, align 4
  %switchSettling = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 46
  %swSettleHt40 = getelementptr inbounds %struct.modal_eep_ar9287_header, ptr %modalHeader1, i32 0, i32 23
  %switchSettling.sink = select i1 %tobool.not, ptr %switchSettling, ptr %swSettleHt40
  %72 = ptrtoint ptr %switchSettling.sink to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %switchSettling.sink, align 1
  %conv57 = zext i8 %73 to i32
  %shl58 = shl nuw nsw i32 %conv57, 7
  %and59 = and i32 %shl58, 16256
  %call60 = tail call i32 %71(ptr noundef %ah, i32 noundef 38980, i32 noundef %and59, i32 noundef 16256) #6
  %74 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rmw, align 4
  %adcDesiredSize = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 51
  %76 = ptrtoint ptr %adcDesiredSize to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %adcDesiredSize, align 1
  %conv63274 = zext i8 %77 to i32
  %call66 = tail call i32 %75(ptr noundef %ah, i32 noundef 38992, i32 noundef %conv63274, i32 noundef 255) #6
  %78 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write, align 4
  %txEndToXpaOff = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 52
  %80 = ptrtoint ptr %txEndToXpaOff to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %txEndToXpaOff, align 1
  %conv69 = zext i8 %81 to i32
  %shl70 = shl nuw nsw i32 %conv69, 16
  %shl74 = shl nuw i32 %conv69, 24
  %or76 = or i32 %shl70, %shl74
  %txFrameToXpaOn = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 54
  %82 = ptrtoint ptr %txFrameToXpaOn to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %txFrameToXpaOn, align 1
  %conv77 = zext i8 %83 to i32
  %or80 = or i32 %or76, %conv77
  %shl83 = shl nuw nsw i32 %conv77, 8
  %or85 = or i32 %or80, %shl83
  tail call void %79(ptr noundef %ah, i32 noundef %or85, i32 noundef 38964) #6
  %84 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rmw, align 4
  %txEndToRxOn = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 53
  %86 = ptrtoint ptr %txEndToRxOn to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %txEndToRxOn, align 1
  %conv88 = zext i8 %87 to i32
  %shl89 = shl nuw nsw i32 %conv88, 16
  %call91 = tail call i32 %85(ptr noundef %ah, i32 noundef 38952, i32 noundef %shl89, i32 noundef 16711680) #6
  %88 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rmw, align 4
  %thresh62 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 55
  %90 = ptrtoint ptr %thresh62 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %thresh62, align 1
  %conv94 = zext i8 %91 to i32
  %shl95 = shl nuw nsw i32 %conv94, 12
  %call97 = tail call i32 %89(ptr noundef %ah, i32 noundef 39012, i32 noundef %shl95, i32 noundef 1044480) #6
  %92 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rmw, align 4
  %94 = ptrtoint ptr %thresh62 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %thresh62, align 1
  %conv101 = zext i8 %95 to i32
  %call104 = tail call i32 %93(ptr noundef %ah, i32 noundef 39352, i32 noundef %conv101, i32 noundef 255) #6
  %96 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ah, align 4
  %call107 = tail call i32 %97(ptr noundef %ah, i32 noundef 30728) #6
  %and108 = and i32 %call107, 16383
  %db1 = getelementptr inbounds %struct.modal_eep_ar9287_header, ptr %modalHeader1, i32 0, i32 25
  %98 = ptrtoint ptr %db1 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %db1, align 1
  %conv109 = zext i8 %99 to i32
  %shl110 = shl i32 %conv109, 29
  %db2 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 1
  %100 = ptrtoint ptr %db2 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %db2, align 1
  %conv112 = zext i8 %101 to i32
  %shl113 = shl i32 %conv112, 26
  %and114 = and i32 %shl113, 469762048
  %or115 = or i32 %and114, %shl110
  %ob_cck = getelementptr inbounds %struct.modal_eep_ar9287_header, ptr %modalHeader1, i32 0, i32 27
  %102 = ptrtoint ptr %ob_cck to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %ob_cck, align 1
  %conv116 = zext i8 %103 to i32
  %shl117 = shl nuw nsw i32 %conv116, 23
  %and118 = and i32 %shl117, 58720256
  %or119 = or i32 %or115, %and118
  %ob_psk = getelementptr inbounds %struct.modal_eep_ar9287_header, ptr %modalHeader1, i32 0, i32 28
  %104 = ptrtoint ptr %ob_psk to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %ob_psk, align 1
  %conv120 = zext i8 %105 to i32
  %shl121 = shl nuw nsw i32 %conv120, 20
  %and122 = and i32 %shl121, 7340032
  %or123 = or i32 %or119, %and122
  %ob_qam = getelementptr inbounds %struct.modal_eep_ar9287_header, ptr %modalHeader1, i32 0, i32 29
  %106 = ptrtoint ptr %ob_qam to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %ob_qam, align 1
  %conv124 = zext i8 %107 to i32
  %shl125 = shl nuw nsw i32 %conv124, 17
  %and126 = and i32 %shl125, 917504
  %or127 = or i32 %or123, %and126
  %ob_pal_off = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 2
  %108 = ptrtoint ptr %ob_pal_off to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %ob_pal_off, align 1
  %conv128 = zext i8 %109 to i32
  %shl129 = shl nuw nsw i32 %conv128, 14
  %and130 = and i32 %shl129, 114688
  %or131 = or i32 %or127, %and130
  %or132 = or i32 %or131, %and108
  tail call void @ath9k_hw_analog_shift_regwrite(ptr noundef %ah, i32 noundef 30728, i32 noundef %or132) #6
  %110 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ah, align 4
  %call135 = tail call i32 %111(ptr noundef %ah, i32 noundef 30812) #6
  %and136 = and i32 %call135, 16383
  %112 = ptrtoint ptr %db1 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %db1, align 1
  %conv138 = zext i8 %113 to i32
  %shl139 = shl i32 %conv138, 29
  %114 = ptrtoint ptr %db2 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %db2, align 1
  %conv142 = zext i8 %115 to i32
  %shl143 = shl i32 %conv142, 26
  %and144 = and i32 %shl143, 469762048
  %or145 = or i32 %and144, %shl139
  %116 = ptrtoint ptr %ob_cck to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %ob_cck, align 1
  %conv147 = zext i8 %117 to i32
  %shl148 = shl nuw nsw i32 %conv147, 23
  %and149 = and i32 %shl148, 58720256
  %or150 = or i32 %or145, %and149
  %118 = ptrtoint ptr %ob_psk to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %ob_psk, align 1
  %conv152 = zext i8 %119 to i32
  %shl153 = shl nuw nsw i32 %conv152, 20
  %and154 = and i32 %shl153, 7340032
  %or155 = or i32 %or150, %and154
  %120 = ptrtoint ptr %ob_qam to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %ob_qam, align 1
  %conv157 = zext i8 %121 to i32
  %shl158 = shl nuw nsw i32 %conv157, 17
  %and159 = and i32 %shl158, 917504
  %or160 = or i32 %or155, %and159
  %122 = ptrtoint ptr %ob_pal_off to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %ob_pal_off, align 1
  %conv162 = zext i8 %123 to i32
  %shl163 = shl nuw nsw i32 %conv162, 14
  %and164 = and i32 %shl163, 114688
  %or165 = or i32 %or160, %and164
  %or166 = or i32 %or165, %and136
  tail call void @ath9k_hw_analog_shift_regwrite(ptr noundef %ah, i32 noundef 30812, i32 noundef %or166) #6
  %124 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %rmw, align 4
  %txFrameToDataStart = getelementptr inbounds %struct.modal_eep_ar9287_header, ptr %modalHeader1, i32 0, i32 18
  %126 = ptrtoint ptr %txFrameToDataStart to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %txFrameToDataStart, align 1
  %conv169 = zext i8 %127 to i32
  %call172 = tail call i32 %125(ptr noundef %ah, i32 noundef 38948, i32 noundef %conv169, i32 noundef 255) #6
  %128 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %rmw, align 4
  %txFrameToPaOn = getelementptr inbounds %struct.modal_eep_ar9287_header, ptr %modalHeader1, i32 0, i32 19
  %130 = ptrtoint ptr %txFrameToPaOn to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %txFrameToPaOn, align 1
  %conv175 = zext i8 %131 to i32
  %shl176 = shl nuw nsw i32 %conv175, 8
  %call178 = tail call i32 %129(ptr noundef %ah, i32 noundef 38948, i32 noundef %shl176, i32 noundef 65280) #6
  %xpaBiasLvl = getelementptr inbounds %struct.modal_eep_ar9287_header, ptr %modalHeader1, i32 0, i32 17
  %132 = ptrtoint ptr %xpaBiasLvl to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %xpaBiasLvl, align 1
  %conv179 = zext i8 %133 to i32
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30900, i32 noundef -1073741824, i32 noundef 30, i32 noundef %conv179) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_hw_ar9287_set_txpower(ptr noundef %ah, ptr noundef %chan, i16 noundef zeroext %cfgCtl, i8 noundef zeroext %twiceAntennaReduction, i8 noundef zeroext %powerLimit, i1 noundef zeroext %test) #0 align 64 {
entry:
  %idxL.i.i = alloca i16, align 2
  %idxR.i.i = alloca i16, align 2
  %centers.i.i = alloca %struct.chan_centers, align 2
  %pdadcValues.i = alloca [128 x i8], align 1
  %gainBoundaries.i = alloca [4 x i16], align 8
  %xpdGainValues.i = alloca [4 x i16], align 8
  %targetPowerOfdm.i = alloca %struct.cal_target_power_leg, align 1
  %targetPowerCck.i = alloca %struct.cal_target_power_leg, align 1
  %targetPowerOfdmExt.i = alloca %struct.cal_target_power_leg, align 1
  %targetPowerCckExt.i = alloca %struct.cal_target_power_leg, align 1
  %targetPowerHt20.i = alloca %struct.cal_target_power_ht, align 1
  %targetPowerHt40.i = alloca %struct.cal_target_power_ht, align 1
  %centers.i = alloca %struct.chan_centers, align 2
  %ratesArray = alloca [36 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %ratesArray) #6
  %0 = call ptr @memset(ptr %ratesArray, i32 0, i32 72)
  %version1.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 2
  %1 = ptrtoint ptr %version1.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %version1.i, align 4
  %3 = and i16 %2, -241
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %4)
  %cmp = icmp ugt i16 %4, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ht40PowerIncForPdadc2 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %ht40PowerIncForPdadc2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ht40PowerIncForPdadc2, align 1
  %phi.cast = zext i8 %6 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ht40PowerIncForPdadc.0 = phi i32 [ %phi.cast, %if.then ], [ 2, %entry.if.end_crit_edge ]
  %conv3 = zext i8 %powerLimit to i16
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %targetPowerOfdm.i) #6
  %7 = call ptr @memset(ptr %targetPowerOfdm.i, i32 0, i32 5)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %targetPowerCck.i) #6
  %8 = call ptr @memset(ptr %targetPowerCck.i, i32 0, i32 5)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %targetPowerOfdmExt.i) #6
  %9 = call ptr @memset(ptr %targetPowerOfdmExt.i, i32 0, i32 5)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %targetPowerCckExt.i) #6
  %10 = call ptr @memset(ptr %targetPowerCckExt.i, i32 0, i32 5)
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %targetPowerHt20.i) #6
  %11 = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt20.i, i32 0, i32 1
  %12 = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt20.i, i32 0, i32 1, i32 1
  %13 = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt20.i, i32 0, i32 1, i32 2
  %14 = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt20.i, i32 0, i32 1, i32 3
  %15 = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt20.i, i32 0, i32 1, i32 4
  %16 = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt20.i, i32 0, i32 1, i32 5
  %17 = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt20.i, i32 0, i32 1, i32 6
  %18 = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt20.i, i32 0, i32 1, i32 7
  %19 = call ptr @memset(ptr %targetPowerHt20.i, i32 255, i32 9)
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %targetPowerHt40.i) #6
  %20 = call ptr @memset(ptr %targetPowerHt40.i, i32 0, i32 9)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %centers.i) #6
  %21 = ptrtoint ptr %centers.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %centers.i, align 2, !annotation !145
  %22 = getelementptr inbounds %struct.chan_centers, ptr %centers.i, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -1, ptr %22, align 2, !annotation !145
  %24 = getelementptr inbounds %struct.chan_centers, ptr %centers.i, i32 0, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %24, align 2, !annotation !145
  %txchainmask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 74
  %26 = ptrtoint ptr %txchainmask.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %txchainmask.i, align 4
  %conv.i = zext i8 %27 to i32
  call void @ath9k_hw_get_channel_centers(ptr noundef %ah, ptr noundef %chan, ptr noundef nonnull %centers.i) #6
  %call.i = call zeroext i16 @ath9k_hw_get_scaled_power(ptr noundef %ah, i16 noundef zeroext %conv3, i8 noundef zeroext %twiceAntennaReduction) #6
  %channelFlags.i = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %28 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %channelFlags.i, align 2
  %30 = and i16 %29, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool.not.i = icmp eq i16 %30, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.for.end250.i_crit_edge

if.end.for.end250.i_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end250.i

if.then.i:                                        ; preds = %if.end
  %calTargetPowerCck.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 2, i32 0, i32 2
  call void @ath9k_hw_get_legacy_target_powers(ptr noundef %ah, ptr noundef %chan, ptr noundef %calTargetPowerCck.i, i16 noundef zeroext 3, ptr noundef nonnull %targetPowerCck.i, i16 noundef zeroext 4, i1 noundef zeroext false) #6
  %calTargetPower2G.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 2, i32 1, i32 1
  call void @ath9k_hw_get_legacy_target_powers(ptr noundef %ah, ptr noundef %chan, ptr noundef %calTargetPower2G.i, i16 noundef zeroext 3, ptr noundef nonnull %targetPowerOfdm.i, i16 noundef zeroext 4, i1 noundef zeroext false) #6
  %calTargetPower2GHT20.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 3
  call void @ath9k_hw_get_target_powers(ptr noundef %ah, ptr noundef %chan, ptr noundef %calTargetPower2GHT20.i, i16 noundef zeroext 3, ptr noundef nonnull %targetPowerHt20.i, i16 noundef zeroext 8, i1 noundef zeroext false) #6
  %31 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %channelFlags.i, align 2
  %33 = and i16 %32, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool8.not.i = icmp eq i16 %33, 0
  br i1 %tobool8.not.i, label %if.then.i.for.body.lr.ph.i_crit_edge, label %if.then9.i

if.then.i.for.body.lr.ph.i_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph.i

if.then9.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %calTargetPower2GHT40.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 3, i32 1, i32 1, i32 2
  call void @ath9k_hw_get_target_powers(ptr noundef %ah, ptr noundef %chan, ptr noundef %calTargetPower2GHT40.i, i16 noundef zeroext 3, ptr noundef nonnull %targetPowerHt40.i, i16 noundef zeroext 8, i1 noundef zeroext true) #6
  call void @ath9k_hw_get_legacy_target_powers(ptr noundef %ah, ptr noundef %chan, ptr noundef %calTargetPowerCck.i, i16 noundef zeroext 3, ptr noundef nonnull %targetPowerCckExt.i, i16 noundef zeroext 4, i1 noundef zeroext true) #6
  call void @ath9k_hw_get_legacy_target_powers(ptr noundef %ah, ptr noundef %chan, ptr noundef %calTargetPower2G.i, i16 noundef zeroext 3, ptr noundef nonnull %targetPowerOfdmExt.i, i16 noundef zeroext 4, i1 noundef zeroext true) #6
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.then9.i, %if.then.i.for.body.lr.ph.i_crit_edge
  %numCtlModes.0.ph.i = phi i32 [ 3, %if.then.i.for.body.lr.ph.i_crit_edge ], [ 6, %if.then9.i ]
  %ctlIndex.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 4, i32 0, i32 2, i32 4
  %34 = and i16 %cfgCtl, -16
  %ctlData.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 0, i32 4, i32 1, i32 1, i32 1
  %35 = lshr i32 %conv.i, 2
  %and68.i = and i32 %35, 1
  %36 = lshr i32 %conv.i, 1
  %and70.i = and i32 %36, 1
  %and71.i = and i32 %conv.i, 1
  %add.i = add nsw i32 %and71.i, -1
  %add72.i = add nsw i32 %add.i, %and70.i
  %sub.i = add nsw i32 %add72.i, %and68.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 224, i16 %34)
  %cmp84.i = icmp eq i16 %34, 224
  %tPow2x206.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerOfdmExt.i, i32 0, i32 1
  %tPow2x188.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerCckExt.i, i32 0, i32 1
  %arrayidx229.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 0
  %arrayidx229.1.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 1
  %arrayidx229.2.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 2
  %arrayidx229.3.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 3
  %arrayidx229.4.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 4
  %arrayidx229.5.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 5
  %arrayidx229.6.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 6
  %arrayidx229.7.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 7
  %arrayidx143.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerOfdm.i, i32 0, i32 1, i32 0
  %arrayidx143.1.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerOfdm.i, i32 0, i32 1, i32 1
  %arrayidx143.2.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerOfdm.i, i32 0, i32 1, i32 2
  %arrayidx143.3.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerOfdm.i, i32 0, i32 1, i32 3
  %arrayidx118.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerCck.i, i32 0, i32 1, i32 0
  %arrayidx118.1.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerCck.i, i32 0, i32 1, i32 1
  %arrayidx118.2.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerCck.i, i32 0, i32 1, i32 2
  %arrayidx118.3.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerCck.i, i32 0, i32 1, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %sw.epilog.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %sw.epilog.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr @ath9k_hw_set_ar9287_power_per_rate_table.ctlModesFor11g, i32 %indvars.iv.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %38)
  %cmp20.i = icmp eq i16 %38, 7
  br i1 %cmp20.i, label %if.then24.i, label %if.else.i

if.then24.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %centers.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %centers.i, align 2
  br label %if.end33.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %38)
  %tobool29.not.i = icmp sgt i16 %38, -1
  br i1 %tobool29.not.i, label %if.else31.i, label %if.then30.i

if.then30.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %24, align 2
  br label %if.end33.i

if.else31.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %22 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %22, align 2
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.else31.i, %if.then30.i, %if.then24.i
  %freq.0.i = phi i16 [ %40, %if.then24.i ], [ %42, %if.then30.i ], [ %44, %if.else31.i ]
  %45 = and i16 %38, 15
  %or470.i = or i16 %45, %34
  %or.i = zext i16 %or470.i to i32
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %if.end33.i
  %twiceMaxEdgePower.0485.i = phi i16 [ 63, %if.end33.i ], [ %twiceMaxEdgePower.2.ph.i, %for.inc.i.land.rhs.i_crit_edge ]
  %i.0483.i = phi i32 [ 0, %if.end33.i ], [ %inc.i, %for.inc.i.land.rhs.i_crit_edge ]
  %arrayidx37.i = getelementptr [12 x i8], ptr %ctlIndex.i, i32 0, i32 %i.0483.i
  %46 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx37.i, align 1
  %conv38.i = zext i8 %47 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool39.not.i = icmp eq i8 %47, 0
  br i1 %tobool39.not.i, label %land.rhs.i.for.end.i_crit_edge, label %for.body40.i

land.rhs.i.for.end.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body40.i:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %conv38.i)
  %cmp50.i = icmp eq i32 %or.i, %conv38.i
  br i1 %cmp50.i, label %for.body40.i.if.then66.i_crit_edge, label %lor.lhs.false.i

for.body40.i.if.then66.i_crit_edge:               ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then66.i

lor.lhs.false.i:                                  ; preds = %for.body40.i
  %and62.i = and i32 %conv38.i, 15
  %or63.i = or i32 %and62.i, 224
  call void @__sanitizer_cov_trace_cmp4(i32 %or63.i, i32 %or.i)
  %cmp64.i = icmp eq i32 %or63.i, %or.i
  br i1 %cmp64.i, label %lor.lhs.false.i.if.then66.i_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

lor.lhs.false.i.if.then66.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then66.i

if.then66.i:                                      ; preds = %lor.lhs.false.i.if.then66.i_crit_edge, %for.body40.i.if.then66.i_crit_edge
  %arrayidx67.i = getelementptr [12 x %struct.cal_ctl_data_ar9287], ptr %ctlData.i, i32 0, i32 %i.0483.i
  %arrayidx73.i = getelementptr [2 x [4 x %struct.cal_ctl_edges]], ptr %arrayidx67.i, i32 0, i32 %sub.i
  %48 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %channelFlags.i, align 2
  %50 = and i16 %49, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool78.not.i = icmp eq i16 %50, 0
  %call81.i = call zeroext i16 @ath9k_hw_get_max_edge_power(i16 noundef zeroext %freq.0.i, ptr noundef %arrayidx73.i, i1 noundef zeroext %tobool78.not.i, i32 noundef 8) #6
  br i1 %cmp84.i, label %if.then86.i, label %if.then66.i.for.end.i_crit_edge

if.then66.i.for.end.i_crit_edge:                  ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.then86.i:                                      ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #8
  %51 = call i16 @llvm.umin.i16(i16 %twiceMaxEdgePower.0485.i, i16 %call81.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then86.i, %lor.lhs.false.i.for.inc.i_crit_edge
  %twiceMaxEdgePower.2.ph.i = phi i16 [ %twiceMaxEdgePower.0485.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %51, %if.then86.i ]
  %inc.i = add nuw nsw i32 %i.0483.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 12
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then66.i.for.end.i_crit_edge, %land.rhs.i.for.end.i_crit_edge
  %twiceMaxEdgePower.3.i = phi i16 [ %twiceMaxEdgePower.0485.i, %land.rhs.i.for.end.i_crit_edge ], [ %twiceMaxEdgePower.2.ph.i, %for.inc.i.for.end.i_crit_edge ], [ %call81.i, %if.then66.i.for.end.i_crit_edge ]
  %52 = call i16 @llvm.umin.i16(i16 %twiceMaxEdgePower.3.i, i16 %call.i) #6
  %cond108.in.off0.i = trunc i16 %52 to i8
  %53 = zext i16 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.67)
  switch i16 %38, label %for.end.i.sw.epilog.i_crit_edge [
    i16 1, label %for.body117.preheader.i
    i16 0, label %for.end.i.sw.bb137.i_crit_edge
    i16 2, label %for.end.i.sw.bb137.i_crit_edge455
    i16 6, label %for.end.i.sw.bb162.i_crit_edge
    i16 5, label %for.end.i.sw.bb162.i_crit_edge456
    i16 -32767, label %for.end.i.sw.epilog.sink.split.i_crit_edge
    i16 -32768, label %for.end.i.sw.bb205.i_crit_edge
    i16 -32766, label %for.end.i.sw.bb205.i_crit_edge457
    i16 8, label %for.end.i.sw.bb223.i_crit_edge
    i16 7, label %for.end.i.sw.bb223.i_crit_edge458
  ]

for.end.i.sw.bb223.i_crit_edge458:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb223.i

for.end.i.sw.bb223.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb223.i

for.end.i.sw.bb205.i_crit_edge457:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb205.i

for.end.i.sw.bb205.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb205.i

for.end.i.sw.epilog.sink.split.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

for.end.i.sw.bb162.i_crit_edge456:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb162.i

for.end.i.sw.bb162.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb162.i

for.end.i.sw.bb137.i_crit_edge455:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb137.i

for.end.i.sw.bb137.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb137.i

for.end.i.sw.epilog.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

for.body117.preheader.i:                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %arrayidx118.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx118.i, align 1
  %56 = call i8 @llvm.umin.i8(i8 %55, i8 %cond108.in.off0.i) #6
  %57 = ptrtoint ptr %arrayidx118.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %arrayidx118.i, align 1
  %58 = ptrtoint ptr %arrayidx118.1.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx118.1.i, align 1
  %60 = call i8 @llvm.umin.i8(i8 %59, i8 %cond108.in.off0.i) #6
  %61 = ptrtoint ptr %arrayidx118.1.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %arrayidx118.1.i, align 1
  %62 = ptrtoint ptr %arrayidx118.2.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx118.2.i, align 1
  %64 = call i8 @llvm.umin.i8(i8 %63, i8 %cond108.in.off0.i) #6
  %65 = ptrtoint ptr %arrayidx118.2.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayidx118.2.i, align 1
  br label %sw.epilog.sink.split.i

sw.bb137.i:                                       ; preds = %for.end.i.sw.bb137.i_crit_edge, %for.end.i.sw.bb137.i_crit_edge455
  %66 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx143.i, align 1
  %68 = call i8 @llvm.umin.i8(i8 %67, i8 %cond108.in.off0.i) #6
  %69 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %arrayidx143.i, align 1
  %70 = ptrtoint ptr %arrayidx143.1.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx143.1.i, align 1
  %72 = call i8 @llvm.umin.i8(i8 %71, i8 %cond108.in.off0.i) #6
  %73 = ptrtoint ptr %arrayidx143.1.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %arrayidx143.1.i, align 1
  %74 = ptrtoint ptr %arrayidx143.2.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx143.2.i, align 1
  %76 = call i8 @llvm.umin.i8(i8 %75, i8 %cond108.in.off0.i) #6
  %77 = ptrtoint ptr %arrayidx143.2.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %arrayidx143.2.i, align 1
  br label %sw.epilog.sink.split.i

sw.bb162.i:                                       ; preds = %for.end.i.sw.bb162.i_crit_edge, %for.end.i.sw.bb162.i_crit_edge456
  %78 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %11, align 1
  %80 = call i8 @llvm.umin.i8(i8 %79, i8 %cond108.in.off0.i) #6
  %81 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %11, align 1
  %82 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %12, align 1
  %84 = call i8 @llvm.umin.i8(i8 %83, i8 %cond108.in.off0.i) #6
  %85 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %12, align 1
  %86 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %13, align 1
  %88 = call i8 @llvm.umin.i8(i8 %87, i8 %cond108.in.off0.i) #6
  %89 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %13, align 1
  %90 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %14, align 1
  %92 = call i8 @llvm.umin.i8(i8 %91, i8 %cond108.in.off0.i) #6
  %93 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %14, align 1
  %94 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %15, align 1
  %96 = call i8 @llvm.umin.i8(i8 %95, i8 %cond108.in.off0.i) #6
  %97 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %15, align 1
  %98 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %16, align 1
  %100 = call i8 @llvm.umin.i8(i8 %99, i8 %cond108.in.off0.i) #6
  %101 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %16, align 1
  %102 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %17, align 1
  %104 = call i8 @llvm.umin.i8(i8 %103, i8 %cond108.in.off0.i) #6
  %105 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %17, align 1
  br label %sw.epilog.sink.split.i

sw.bb205.i:                                       ; preds = %for.end.i.sw.bb205.i_crit_edge, %for.end.i.sw.bb205.i_crit_edge457
  br label %sw.epilog.sink.split.i

sw.bb223.i:                                       ; preds = %for.end.i.sw.bb223.i_crit_edge, %for.end.i.sw.bb223.i_crit_edge458
  %106 = ptrtoint ptr %arrayidx229.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx229.i, align 1
  %108 = call i8 @llvm.umin.i8(i8 %107, i8 %cond108.in.off0.i) #6
  %109 = ptrtoint ptr %arrayidx229.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %arrayidx229.i, align 1
  %110 = ptrtoint ptr %arrayidx229.1.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx229.1.i, align 1
  %112 = call i8 @llvm.umin.i8(i8 %111, i8 %cond108.in.off0.i) #6
  %113 = ptrtoint ptr %arrayidx229.1.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %arrayidx229.1.i, align 1
  %114 = ptrtoint ptr %arrayidx229.2.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx229.2.i, align 1
  %116 = call i8 @llvm.umin.i8(i8 %115, i8 %cond108.in.off0.i) #6
  %117 = ptrtoint ptr %arrayidx229.2.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %arrayidx229.2.i, align 1
  %118 = ptrtoint ptr %arrayidx229.3.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx229.3.i, align 1
  %120 = call i8 @llvm.umin.i8(i8 %119, i8 %cond108.in.off0.i) #6
  %121 = ptrtoint ptr %arrayidx229.3.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %arrayidx229.3.i, align 1
  %122 = ptrtoint ptr %arrayidx229.4.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx229.4.i, align 1
  %124 = call i8 @llvm.umin.i8(i8 %123, i8 %cond108.in.off0.i) #6
  %125 = ptrtoint ptr %arrayidx229.4.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %arrayidx229.4.i, align 1
  %126 = ptrtoint ptr %arrayidx229.5.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx229.5.i, align 1
  %128 = call i8 @llvm.umin.i8(i8 %127, i8 %cond108.in.off0.i) #6
  %129 = ptrtoint ptr %arrayidx229.5.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %arrayidx229.5.i, align 1
  %130 = ptrtoint ptr %arrayidx229.6.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx229.6.i, align 1
  %132 = call i8 @llvm.umin.i8(i8 %131, i8 %cond108.in.off0.i) #6
  %133 = ptrtoint ptr %arrayidx229.6.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %132, ptr %arrayidx229.6.i, align 1
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb223.i, %sw.bb205.i, %sw.bb162.i, %sw.bb137.i, %for.body117.preheader.i, %for.end.i.sw.epilog.sink.split.i_crit_edge
  %arrayidx229.7.sink510.i = phi ptr [ %arrayidx229.7.i, %sw.bb223.i ], [ %18, %sw.bb162.i ], [ %arrayidx143.3.i, %sw.bb137.i ], [ %arrayidx118.3.i, %for.body117.preheader.i ], [ %tPow2x206.i, %sw.bb205.i ], [ %tPow2x188.i, %for.end.i.sw.epilog.sink.split.i_crit_edge ]
  %134 = ptrtoint ptr %arrayidx229.7.sink510.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx229.7.sink510.i, align 1
  %136 = call i8 @llvm.umin.i8(i8 %135, i8 %cond108.in.off0.i) #6
  %137 = ptrtoint ptr %arrayidx229.7.sink510.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %arrayidx229.7.sink510.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %for.end.i.sw.epilog.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond502.not.i = icmp eq i32 %indvars.iv.next.i, %numCtlModes.0.ph.i
  br i1 %exitcond502.not.i, label %sw.epilog.i.for.end250.i_crit_edge, label %sw.epilog.i.for.body.i_crit_edge

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

sw.epilog.i.for.end250.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end250.i

for.end250.i:                                     ; preds = %sw.epilog.i.for.end250.i_crit_edge, %if.end.for.end250.i_crit_edge
  %tPow2x251.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerOfdm.i, i32 0, i32 1
  %138 = ptrtoint ptr %tPow2x251.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %tPow2x251.i, align 1
  %conv253.i = zext i8 %139 to i16
  %arrayidx254.i = getelementptr inbounds i16, ptr %ratesArray, i32 4
  %140 = ptrtoint ptr %arrayidx254.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %conv253.i, ptr %arrayidx254.i, align 2
  %arrayidx255.i = getelementptr inbounds i16, ptr %ratesArray, i32 3
  %141 = ptrtoint ptr %arrayidx255.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %conv253.i, ptr %arrayidx255.i, align 2
  %arrayidx256.i = getelementptr inbounds i16, ptr %ratesArray, i32 2
  %142 = ptrtoint ptr %arrayidx256.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %conv253.i, ptr %arrayidx256.i, align 2
  %arrayidx257.i = getelementptr inbounds i16, ptr %ratesArray, i32 1
  %143 = ptrtoint ptr %arrayidx257.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %conv253.i, ptr %arrayidx257.i, align 2
  %144 = ptrtoint ptr %ratesArray to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %conv253.i, ptr %ratesArray, align 2
  %arrayidx260.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerOfdm.i, i32 0, i32 1, i32 1
  %145 = ptrtoint ptr %arrayidx260.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx260.i, align 1
  %conv261.i = zext i8 %146 to i16
  %arrayidx262.i = getelementptr inbounds i16, ptr %ratesArray, i32 5
  %147 = ptrtoint ptr %arrayidx262.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %conv261.i, ptr %arrayidx262.i, align 2
  %arrayidx264.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerOfdm.i, i32 0, i32 1, i32 2
  %148 = ptrtoint ptr %arrayidx264.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx264.i, align 1
  %conv265.i = zext i8 %149 to i16
  %arrayidx266.i = getelementptr inbounds i16, ptr %ratesArray, i32 6
  %150 = ptrtoint ptr %arrayidx266.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %conv265.i, ptr %arrayidx266.i, align 2
  %arrayidx268.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerOfdm.i, i32 0, i32 1, i32 3
  %151 = ptrtoint ptr %arrayidx268.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx268.i, align 1
  %conv269.i = zext i8 %152 to i16
  %arrayidx270.i = getelementptr inbounds i16, ptr %ratesArray, i32 7
  %153 = ptrtoint ptr %arrayidx270.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %conv269.i, ptr %arrayidx270.i, align 2
  %arrayidx274.i = getelementptr inbounds i16, ptr %ratesArray, i32 15
  %154 = ptrtoint ptr %arrayidx274.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %conv253.i, ptr %arrayidx274.i, align 2
  %155 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %11, align 1
  %conv281.i = zext i8 %156 to i16
  %arrayidx283.i = getelementptr inbounds i16, ptr %ratesArray, i32 16
  %157 = ptrtoint ptr %arrayidx283.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %conv281.i, ptr %arrayidx283.i, align 2
  %158 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %12, align 1
  %conv281.1.i = zext i8 %159 to i16
  %arrayidx283.1.i = getelementptr inbounds i16, ptr %ratesArray, i32 17
  %160 = ptrtoint ptr %arrayidx283.1.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %conv281.1.i, ptr %arrayidx283.1.i, align 2
  %161 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %13, align 1
  %conv281.2.i = zext i8 %162 to i16
  %arrayidx283.2.i = getelementptr inbounds i16, ptr %ratesArray, i32 18
  %163 = ptrtoint ptr %arrayidx283.2.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %conv281.2.i, ptr %arrayidx283.2.i, align 2
  %164 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %14, align 1
  %conv281.3.i = zext i8 %165 to i16
  %arrayidx283.3.i = getelementptr inbounds i16, ptr %ratesArray, i32 19
  %166 = ptrtoint ptr %arrayidx283.3.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %conv281.3.i, ptr %arrayidx283.3.i, align 2
  %167 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %15, align 1
  %conv281.4.i = zext i8 %168 to i16
  %arrayidx283.4.i = getelementptr inbounds i16, ptr %ratesArray, i32 20
  %169 = ptrtoint ptr %arrayidx283.4.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %conv281.4.i, ptr %arrayidx283.4.i, align 2
  %170 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %16, align 1
  %conv281.5.i = zext i8 %171 to i16
  %arrayidx283.5.i = getelementptr inbounds i16, ptr %ratesArray, i32 21
  %172 = ptrtoint ptr %arrayidx283.5.i to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %conv281.5.i, ptr %arrayidx283.5.i, align 2
  %173 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %17, align 1
  %conv281.6.i = zext i8 %174 to i16
  %arrayidx283.6.i = getelementptr inbounds i16, ptr %ratesArray, i32 22
  %175 = ptrtoint ptr %arrayidx283.6.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %conv281.6.i, ptr %arrayidx283.6.i, align 2
  %176 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %18, align 1
  %conv281.7.i = zext i8 %177 to i16
  %arrayidx283.7.i = getelementptr inbounds i16, ptr %ratesArray, i32 23
  %178 = ptrtoint ptr %arrayidx283.7.i to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 %conv281.7.i, ptr %arrayidx283.7.i, align 2
  %179 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %channelFlags.i, align 2
  %181 = and i16 %180, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %181)
  %tobool290.not.i = icmp eq i16 %181, 0
  br i1 %tobool290.not.i, label %if.then291.i, label %for.end250.i.if.end311.i_crit_edge

for.end250.i.if.end311.i_crit_edge:               ; preds = %for.end250.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end311.i

if.then291.i:                                     ; preds = %for.end250.i
  call void @__sanitizer_cov_trace_pc() #8
  %tPow2x292.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerCck.i, i32 0, i32 1
  %182 = ptrtoint ptr %tPow2x292.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %tPow2x292.i, align 1
  %conv294.i = zext i8 %183 to i16
  %arrayidx295.i = getelementptr inbounds i16, ptr %ratesArray, i32 8
  %184 = ptrtoint ptr %arrayidx295.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %conv294.i, ptr %arrayidx295.i, align 2
  %arrayidx297.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerCck.i, i32 0, i32 1, i32 1
  %185 = ptrtoint ptr %arrayidx297.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx297.i, align 1
  %conv298.i = zext i8 %186 to i16
  %arrayidx299.i = getelementptr inbounds i16, ptr %ratesArray, i32 9
  %187 = ptrtoint ptr %arrayidx299.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 %conv298.i, ptr %arrayidx299.i, align 2
  %arrayidx300.i = getelementptr inbounds i16, ptr %ratesArray, i32 10
  %188 = ptrtoint ptr %arrayidx300.i to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 %conv298.i, ptr %arrayidx300.i, align 2
  %arrayidx302.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerCck.i, i32 0, i32 1, i32 2
  %189 = ptrtoint ptr %arrayidx302.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx302.i, align 1
  %conv303.i = zext i8 %190 to i16
  %arrayidx304.i = getelementptr inbounds i16, ptr %ratesArray, i32 11
  %191 = ptrtoint ptr %arrayidx304.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %conv303.i, ptr %arrayidx304.i, align 2
  %arrayidx305.i = getelementptr inbounds i16, ptr %ratesArray, i32 12
  %192 = ptrtoint ptr %arrayidx305.i to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 %conv303.i, ptr %arrayidx305.i, align 2
  %arrayidx307.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerCck.i, i32 0, i32 1, i32 3
  %193 = ptrtoint ptr %arrayidx307.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %arrayidx307.i, align 1
  %conv308.i = zext i8 %194 to i16
  %arrayidx309.i = getelementptr inbounds i16, ptr %ratesArray, i32 13
  %195 = ptrtoint ptr %arrayidx309.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 %conv308.i, ptr %arrayidx309.i, align 2
  %arrayidx310.i = getelementptr inbounds i16, ptr %ratesArray, i32 14
  %196 = ptrtoint ptr %arrayidx310.i to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 %conv308.i, ptr %arrayidx310.i, align 2
  br label %if.end311.i

if.end311.i:                                      ; preds = %if.then291.i, %for.end250.i.if.end311.i_crit_edge
  %197 = and i16 %180, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %197)
  %tobool315.not.i = icmp eq i16 %197, 0
  br i1 %tobool315.not.i, label %if.end311.i.ath9k_hw_set_ar9287_power_per_rate_table.exit_crit_edge, label %for.body320.preheader.i

if.end311.i.ath9k_hw_set_ar9287_power_per_rate_table.exit_crit_edge: ; preds = %if.end311.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_set_ar9287_power_per_rate_table.exit

for.body320.preheader.i:                          ; preds = %if.end311.i
  %arrayidx322.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 0
  %198 = ptrtoint ptr %arrayidx322.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx322.i, align 1
  %conv323.i = zext i8 %199 to i16
  %arrayidx325.i = getelementptr inbounds i16, ptr %ratesArray, i32 24
  %200 = ptrtoint ptr %arrayidx325.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 %conv323.i, ptr %arrayidx325.i, align 2
  %arrayidx322.1.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 1
  %201 = ptrtoint ptr %arrayidx322.1.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %arrayidx322.1.i, align 1
  %conv323.1.i = zext i8 %202 to i16
  %arrayidx325.1.i = getelementptr inbounds i16, ptr %ratesArray, i32 25
  %203 = ptrtoint ptr %arrayidx325.1.i to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %conv323.1.i, ptr %arrayidx325.1.i, align 2
  %arrayidx322.2.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 2
  %204 = ptrtoint ptr %arrayidx322.2.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx322.2.i, align 1
  %conv323.2.i = zext i8 %205 to i16
  %arrayidx325.2.i = getelementptr inbounds i16, ptr %ratesArray, i32 26
  %206 = ptrtoint ptr %arrayidx325.2.i to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 %conv323.2.i, ptr %arrayidx325.2.i, align 2
  %arrayidx322.3.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 3
  %207 = ptrtoint ptr %arrayidx322.3.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %arrayidx322.3.i, align 1
  %conv323.3.i = zext i8 %208 to i16
  %arrayidx325.3.i = getelementptr inbounds i16, ptr %ratesArray, i32 27
  %209 = ptrtoint ptr %arrayidx325.3.i to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 %conv323.3.i, ptr %arrayidx325.3.i, align 2
  %arrayidx322.4.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 4
  %210 = ptrtoint ptr %arrayidx322.4.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx322.4.i, align 1
  %conv323.4.i = zext i8 %211 to i16
  %arrayidx325.4.i = getelementptr inbounds i16, ptr %ratesArray, i32 28
  %212 = ptrtoint ptr %arrayidx325.4.i to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 %conv323.4.i, ptr %arrayidx325.4.i, align 2
  %arrayidx322.5.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 5
  %213 = ptrtoint ptr %arrayidx322.5.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %arrayidx322.5.i, align 1
  %conv323.5.i = zext i8 %214 to i16
  %arrayidx325.5.i = getelementptr inbounds i16, ptr %ratesArray, i32 29
  %215 = ptrtoint ptr %arrayidx325.5.i to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 %conv323.5.i, ptr %arrayidx325.5.i, align 2
  %arrayidx322.6.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 6
  %216 = ptrtoint ptr %arrayidx322.6.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %arrayidx322.6.i, align 1
  %conv323.6.i = zext i8 %217 to i16
  %arrayidx325.6.i = getelementptr inbounds i16, ptr %ratesArray, i32 30
  %218 = ptrtoint ptr %arrayidx325.6.i to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 %conv323.6.i, ptr %arrayidx325.6.i, align 2
  %arrayidx322.7.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 7
  %219 = ptrtoint ptr %arrayidx322.7.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %arrayidx322.7.i, align 1
  %conv323.7.i = zext i8 %220 to i16
  %arrayidx325.7.i = getelementptr inbounds i16, ptr %ratesArray, i32 31
  %221 = ptrtoint ptr %arrayidx325.7.i to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 %conv323.7.i, ptr %arrayidx325.7.i, align 2
  %arrayidx332.i = getelementptr inbounds i16, ptr %ratesArray, i32 33
  %222 = ptrtoint ptr %arrayidx332.i to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 %conv323.i, ptr %arrayidx332.i, align 2
  %arrayidx336.i = getelementptr inbounds i16, ptr %ratesArray, i32 32
  %223 = ptrtoint ptr %arrayidx336.i to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 %conv323.i, ptr %arrayidx336.i, align 2
  %tPow2x337.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerOfdmExt.i, i32 0, i32 1
  %224 = ptrtoint ptr %tPow2x337.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %tPow2x337.i, align 1
  %conv339.i = zext i8 %225 to i16
  %arrayidx340.i = getelementptr inbounds i16, ptr %ratesArray, i32 35
  %226 = ptrtoint ptr %arrayidx340.i to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 %conv339.i, ptr %arrayidx340.i, align 2
  br i1 %tobool290.not.i, label %if.then345.i, label %for.body320.preheader.i.ath9k_hw_set_ar9287_power_per_rate_table.exit_crit_edge

for.body320.preheader.i.ath9k_hw_set_ar9287_power_per_rate_table.exit_crit_edge: ; preds = %for.body320.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_set_ar9287_power_per_rate_table.exit

if.then345.i:                                     ; preds = %for.body320.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  %tPow2x346.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerCckExt.i, i32 0, i32 1
  %227 = ptrtoint ptr %tPow2x346.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %tPow2x346.i, align 1
  %conv348.i = zext i8 %228 to i16
  %arrayidx349.i = getelementptr inbounds i16, ptr %ratesArray, i32 34
  %229 = ptrtoint ptr %arrayidx349.i to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 %conv348.i, ptr %arrayidx349.i, align 2
  br label %ath9k_hw_set_ar9287_power_per_rate_table.exit

ath9k_hw_set_ar9287_power_per_rate_table.exit:    ; preds = %if.then345.i, %for.body320.preheader.i.ath9k_hw_set_ar9287_power_per_rate_table.exit_crit_edge, %if.end311.i.ath9k_hw_set_ar9287_power_per_rate_table.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %centers.i) #6
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %targetPowerHt40.i) #6
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %targetPowerHt20.i) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %targetPowerCckExt.i) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %targetPowerOfdmExt.i) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %targetPowerCck.i) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %targetPowerOfdm.i) #6
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %pdadcValues.i) #6
  %230 = call ptr @memset(ptr %pdadcValues.i, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %gainBoundaries.i) #6
  %231 = getelementptr inbounds [4 x i16], ptr %gainBoundaries.i, i32 0, i32 1
  %232 = getelementptr inbounds [4 x i16], ptr %gainBoundaries.i, i32 0, i32 2
  %233 = getelementptr inbounds [4 x i16], ptr %gainBoundaries.i, i32 0, i32 3
  %234 = ptrtoint ptr %gainBoundaries.i to i32
  call void @__asan_store8_noabort(i32 %234)
  store i64 -1, ptr %gainBoundaries.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xpdGainValues.i) #6
  %235 = ptrtoint ptr %xpdGainValues.i to i32
  call void @__asan_store8_noabort(i32 %235)
  store i64 0, ptr %xpdGainValues.i, align 8
  %xpdGain.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 58
  %236 = ptrtoint ptr %xpdGain.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %xpdGain.i, align 1
  %238 = ptrtoint ptr %version1.i to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %version1.i, align 4
  %240 = and i16 %239, -241
  %241 = call i16 @llvm.bswap.i16(i16 %240) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %241)
  %cmp.i = icmp ugt i16 %241, 1
  br i1 %cmp.i, label %if.then.i433, label %if.else.i434

if.then.i433:                                     ; preds = %ath9k_hw_set_ar9287_power_per_rate_table.exit
  call void @__sanitizer_cov_trace_pc() #8
  %pdGainOverlap.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2
  %242 = ptrtoint ptr %pdGainOverlap.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %pdGainOverlap.i, align 1
  %conv3.i = zext i8 %243 to i16
  br label %if.end.i

if.else.i434:                                     ; preds = %ath9k_hw_set_ar9287_power_per_rate_table.exit
  call void @__sanitizer_cov_trace_pc() #8
  %244 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %ah, align 4
  %call4.i = call i32 %245(ptr noundef %ah, i32 noundef 41580) #6
  %246 = trunc i32 %call4.i to i16
  %conv5.i = and i16 %246, 15
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i434, %if.then.i433
  %pdGainOverlap_t2.0.i = phi i16 [ %conv3.i, %if.then.i433 ], [ %conv5.i, %if.else.i434 ]
  %247 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %channelFlags.i, align 2
  %249 = and i16 %248, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %249)
  %tobool.not.i436 = icmp eq i16 %249, 0
  br i1 %tobool.not.i436, label %if.then8.i, label %if.end.i.if.end17.i_crit_edge

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then8.i:                                       ; preds = %if.end.i
  %calFreqPier2G.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 31, i32 2
  %openLoopPwrCntl.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 14
  %250 = ptrtoint ptr %openLoopPwrCntl.i.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %openLoopPwrCntl.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %251)
  %tobool10.not.i = icmp eq i8 %251, 0
  br i1 %tobool10.not.i, label %if.then8.i.if.end17.i_crit_edge, label %if.then11.i

if.then8.i.if.end17.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then11.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  %vpdPdg.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 37, i32 2
  %252 = ptrtoint ptr %vpdPdg.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %vpdPdg.i, align 1
  %conv15.i = zext i8 %253 to i32
  %initPDADC.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 78
  %254 = ptrtoint ptr %initPDADC.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %conv15.i, ptr %initPDADC.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then11.i, %if.then8.i.if.end17.i_crit_edge, %if.end.i.if.end17.i_crit_edge
  %pCalBChans.0.i = phi ptr [ null, %if.end.i.if.end17.i_crit_edge ], [ %calFreqPier2G.i, %if.then11.i ], [ %calFreqPier2G.i, %if.then8.i.if.end17.i_crit_edge ]
  %numPiers.0.i = phi i16 [ 0, %if.end.i.if.end17.i_crit_edge ], [ 3, %if.then11.i ], [ 3, %if.then8.i.if.end17.i_crit_edge ]
  %conv21.i = zext i8 %237 to i32
  %255 = and i32 %conv21.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %255)
  %tobool25.not.i = icmp eq i32 %255, 0
  br i1 %tobool25.not.i, label %if.end17.i.for.inc.i437_crit_edge, label %if.end31.i

if.end17.i.for.inc.i437_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i437

if.end31.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %256 = ptrtoint ptr %xpdGainValues.i to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 3, ptr %xpdGainValues.i, align 8
  br label %for.inc.i437

for.inc.i437:                                     ; preds = %if.end31.i, %if.end17.i.for.inc.i437_crit_edge
  %numXpdGain.1.i = phi i16 [ 1, %if.end31.i ], [ 0, %if.end17.i.for.inc.i437_crit_edge ]
  %257 = and i32 %conv21.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %tobool25.not.1.i = icmp eq i32 %257, 0
  br i1 %tobool25.not.1.i, label %for.inc.i437.for.inc.1.i_crit_edge, label %if.end31.1.i

for.inc.i437.for.inc.1.i_crit_edge:               ; preds = %for.inc.i437
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

if.end31.1.i:                                     ; preds = %for.inc.i437
  call void @__sanitizer_cov_trace_pc() #8
  %conv27.1.i = zext i16 %numXpdGain.1.i to i32
  %arrayidx35.1.i = getelementptr [4 x i16], ptr %xpdGainValues.i, i32 0, i32 %conv27.1.i
  %258 = ptrtoint ptr %arrayidx35.1.i to i32
  call void @__asan_store2_noabort(i32 %258)
  store i16 2, ptr %arrayidx35.1.i, align 2
  %inc.1.i = add nuw nsw i16 %numXpdGain.1.i, 1
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end31.1.i, %for.inc.i437.for.inc.1.i_crit_edge
  %numXpdGain.1.1.i = phi i16 [ %inc.1.i, %if.end31.1.i ], [ %numXpdGain.1.i, %for.inc.i437.for.inc.1.i_crit_edge ]
  %259 = and i32 %conv21.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %tobool25.not.2.i = icmp eq i32 %259, 0
  br i1 %tobool25.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end31.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

if.end31.2.i:                                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv27.2.i = zext i16 %numXpdGain.1.1.i to i32
  %arrayidx35.2.i = getelementptr [4 x i16], ptr %xpdGainValues.i, i32 0, i32 %conv27.2.i
  %260 = ptrtoint ptr %arrayidx35.2.i to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 1, ptr %arrayidx35.2.i, align 2
  %inc.2.i = add nuw nsw i16 %numXpdGain.1.1.i, 1
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end31.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %numXpdGain.1.2.i = phi i16 [ %inc.2.i, %if.end31.2.i ], [ %numXpdGain.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %261 = and i32 %conv21.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %261)
  %tobool25.not.3.i = icmp eq i32 %261, 0
  br i1 %tobool25.not.3.i, label %for.inc.2.i.for.end.i438_crit_edge, label %if.end31.3.i

for.inc.2.i.for.end.i438_crit_edge:               ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i438

if.end31.3.i:                                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv27.3.i = zext i16 %numXpdGain.1.2.i to i32
  %arrayidx35.3.i = getelementptr [4 x i16], ptr %xpdGainValues.i, i32 0, i32 %conv27.3.i
  %262 = ptrtoint ptr %arrayidx35.3.i to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 0, ptr %arrayidx35.3.i, align 2
  %inc.3.i = add nuw nsw i16 %numXpdGain.1.2.i, 1
  br label %for.end.i438

for.end.i438:                                     ; preds = %if.end31.3.i, %for.inc.2.i.for.end.i438_crit_edge
  %numXpdGain.1.3.i = phi i16 [ %inc.3.i, %if.end31.3.i ], [ %numXpdGain.1.2.i, %for.inc.2.i.for.end.i438_crit_edge ]
  %rmw.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %263 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %rmw.i, align 4
  %265 = shl i16 %numXpdGain.1.3.i, 14
  %266 = add i16 %265, -16384
  %shl.i = zext i16 %266 to i32
  %call43.i = call i32 %264(ptr noundef %ah, i32 noundef 41560, i32 noundef %shl.i, i32 noundef 49152) #6
  %267 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %rmw.i, align 4
  %269 = ptrtoint ptr %xpdGainValues.i to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %xpdGainValues.i, align 8
  %conv47.i = zext i16 %270 to i32
  %shl48.i = shl nuw i32 %conv47.i, 16
  %and49.i = and i32 %shl48.i, 196608
  %call50.i = call i32 %268(ptr noundef %ah, i32 noundef 41560, i32 noundef %and49.i, i32 noundef 196608) #6
  %271 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %rmw.i, align 4
  %arrayidx53.i = getelementptr inbounds [4 x i16], ptr %xpdGainValues.i, i32 0, i32 1
  %273 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load2_noabort(i32 %273)
  %274 = load i16, ptr %arrayidx53.i, align 2
  %conv54.i = zext i16 %274 to i32
  %shl55.i = shl i32 %conv54.i, 18
  %and56.i = and i32 %shl55.i, 786432
  %call57.i = call i32 %272(ptr noundef %ah, i32 noundef 41560, i32 noundef %and56.i, i32 noundef 786432) #6
  %275 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %rmw.i, align 4
  %arrayidx60.i = getelementptr inbounds [4 x i16], ptr %xpdGainValues.i, i32 0, i32 2
  %277 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load2_noabort(i32 %277)
  %278 = load i16, ptr %arrayidx60.i, align 4
  %conv61.i = zext i16 %278 to i32
  %shl62.i = shl i32 %conv61.i, 20
  %and63.i = and i32 %shl62.i, 3145728
  %call64.i = call i32 %276(ptr noundef %ah, i32 noundef 41560, i32 noundef %and63.i, i32 noundef 3145728) #6
  %txMask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 8
  %calPierData2G77.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 34
  %openLoopPwrCntl.i285.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 14
  %279 = getelementptr inbounds %struct.chan_centers, ptr %centers.i.i, i32 0, i32 1
  %280 = getelementptr inbounds %struct.chan_centers, ptr %centers.i.i, i32 0, i32 2
  %wide.trip.count.i.i = zext i16 %numPiers.0.i to i32
  %write.i.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %enable_write_buffer.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 3
  %281 = and i16 %pdGainOverlap_t2.0.i, 15
  %and108.i = zext i16 %281 to i32
  %pwrTableOffset.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 15
  %write_flush.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 4
  br label %for.body69.i

for.body69.i:                                     ; preds = %for.inc207.i.for.body69.i_crit_edge, %for.end.i438
  %indvars.iv312.i = phi i32 [ 0, %for.end.i438 ], [ %indvars.iv.next313.i, %for.inc207.i.for.body69.i_crit_edge ]
  %mul.i = shl nuw nsw i32 %indvars.iv312.i, 12
  %282 = ptrtoint ptr %txMask.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %txMask.i, align 1
  %conv71.i = zext i8 %283 to i32
  %shl73.i = shl nuw i32 1, %indvars.iv312.i
  %and74.i = and i32 %shl73.i, %conv71.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  br i1 %tobool75.not.i, label %for.body69.i.for.inc207.i_crit_edge, label %if.then76.i

for.body69.i.for.inc207.i_crit_edge:              ; preds = %for.body69.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc207.i

if.then76.i:                                      ; preds = %for.body69.i
  %arrayidx79.i = getelementptr [2 x [3 x %union.cal_data_per_freq_ar9287_u]], ptr %calPierData2G77.i, i32 0, i32 %indvars.iv312.i
  %284 = ptrtoint ptr %openLoopPwrCntl.i285.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %openLoopPwrCntl.i285.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %285)
  %tobool82.not.i = icmp eq i8 %285, 0
  br i1 %tobool82.not.i, label %if.else85.i, label %if.then83.i

if.then83.i:                                      ; preds = %if.then76.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %idxL.i.i) #6
  %286 = ptrtoint ptr %idxL.i.i to i32
  call void @__asan_store2_noabort(i32 %286)
  store i16 0, ptr %idxL.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %idxR.i.i) #6
  %287 = ptrtoint ptr %idxR.i.i to i32
  call void @__asan_store2_noabort(i32 %287)
  store i16 0, ptr %idxR.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %centers.i.i) #6
  %288 = ptrtoint ptr %centers.i.i to i32
  call void @__asan_store2_noabort(i32 %288)
  store i16 -1, ptr %centers.i.i, align 2, !annotation !145
  %289 = ptrtoint ptr %279 to i32
  call void @__asan_store2_noabort(i32 %289)
  store i16 -1, ptr %279, align 2, !annotation !145
  %290 = ptrtoint ptr %280 to i32
  call void @__asan_store2_noabort(i32 %290)
  store i16 -1, ptr %280, align 2, !annotation !145
  call void @ath9k_hw_get_channel_centers(ptr noundef %ah, ptr noundef %chan, ptr noundef nonnull %centers.i.i) #6
  br i1 %tobool.not.i436, label %if.then83.i.for.body.i.i_crit_edge, label %if.then83.i.for.end.i.i_crit_edge

if.then83.i.for.end.i.i_crit_edge:                ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.then83.i.for.body.i.i_crit_edge:               ; preds = %if.then83.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then83.i.for.body.i.i_crit_edge
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then83.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %pCalBChans.0.i, i32 %indvars.iv.i.i
  %291 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %292)
  %cmp4.i.i = icmp eq i8 %292, -1
  br i1 %cmp4.i.i, label %for.end.loopexit.split.loop.exit.i.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.loopexit.split.loop.exit.i.i:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %293 = trunc i32 %indvars.iv.i.i to i16
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.end.loopexit.split.loop.exit.i.i, %for.inc.i.i.for.end.i.i_crit_edge, %if.then83.i.for.end.i.i_crit_edge
  %numPiers.0.lcssa.i.i = phi i16 [ 0, %if.then83.i.for.end.i.i_crit_edge ], [ %293, %for.end.loopexit.split.loop.exit.i.i ], [ %numPiers.0.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %294 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %294)
  %295 = load i16, ptr %channelFlags.i, align 2
  %296 = and i16 %295, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %296)
  %tobool.not.i.i = icmp eq i16 %296, 0
  %297 = ptrtoint ptr %centers.i.i to i32
  call void @__asan_load2_noabort(i32 %297)
  %298 = load i16, ptr %centers.i.i, align 2
  %conv7.i.i = zext i16 %298 to i32
  %sub.i.i = add nuw nsw i32 %conv7.i.i, 4
  %sub10.i.i = add nsw i32 %conv7.i.i, -4800
  %div.i.i = sdiv i32 %sub10.i.i, 5
  %cond.i.i = select i1 %tobool.not.i.i, i32 %sub.i.i, i32 %div.i.i
  %conv11.i.i = trunc i32 %cond.i.i to i8
  %call.i.i = call zeroext i1 @ath9k_hw_get_lower_upper_index(i8 noundef zeroext %conv11.i.i, ptr noundef %pCalBChans.0.i, i16 noundef zeroext %numPiers.0.lcssa.i.i, ptr noundef nonnull %idxL.i.i, ptr noundef nonnull %idxR.i.i) #6
  %299 = ptrtoint ptr %idxL.i.i to i32
  call void @__asan_load2_noabort(i32 %299)
  %300 = load i16, ptr %idxL.i.i, align 2
  %idxprom14.i.i = zext i16 %300 to i32
  %arrayidx15.i.i = getelementptr %struct.cal_data_op_loop_ar9287, ptr %arrayidx79.i, i32 %idxprom14.i.i
  %301 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %arrayidx15.i.i, align 1
  br i1 %call.i.i, label %for.end.i.i.ar9287_eeprom_get_tx_gain_index.exit.i_crit_edge, label %if.else.i.i

for.end.i.i.ar9287_eeprom_get_tx_gain_index.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ar9287_eeprom_get_tx_gain_index.exit.i

if.else.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv23.i.i = sext i8 %302 to i16
  %303 = ptrtoint ptr %idxR.i.i to i32
  call void @__asan_load2_noabort(i32 %303)
  %304 = load i16, ptr %idxR.i.i, align 2
  %idxprom24.i.i = zext i16 %304 to i32
  %arrayidx25.i.i = getelementptr %struct.cal_data_op_loop_ar9287, ptr %arrayidx79.i, i32 %idxprom24.i.i
  %305 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %arrayidx25.i.i, align 1
  %conv29.i.i = sext i8 %306 to i16
  %add.i.i = add nsw i16 %conv29.i.i, %conv23.i.i
  %div3041.i.i = sdiv i16 %add.i.i, 2
  %conv31.i.i = trunc i16 %div3041.i.i to i8
  br label %ar9287_eeprom_get_tx_gain_index.exit.i

ar9287_eeprom_get_tx_gain_index.exit.i:           ; preds = %if.else.i.i, %for.end.i.i.ar9287_eeprom_get_tx_gain_index.exit.i_crit_edge
  %storemerge.i.i = phi i8 [ %conv31.i.i, %if.else.i.i ], [ %302, %for.end.i.i.ar9287_eeprom_get_tx_gain_index.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %centers.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %idxR.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %idxL.i.i) #6
  %conv84.i = sext i8 %storemerge.i.i to i32
  %307 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %ah, align 4
  %call.i287.i = call i32 %308(ptr noundef %ah, i32 noundef 41584) #6
  %or.i.i = or i32 %call.i287.i, 50331648
  %309 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %write.i.i, align 4
  call void %310(ptr noundef %ah, i32 noundef %or.i.i, i32 noundef 41584) #6
  %311 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %ah, align 4
  %call4.i.i = call i32 %312(ptr noundef %ah, i32 noundef 45680) #6
  %or6.i.i = or i32 %call4.i.i, 50331648
  %313 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %write.i.i, align 4
  call void %314(ptr noundef %ah, i32 noundef %or6.i.i, i32 noundef 45680) #6
  %315 = trunc i32 %indvars.iv312.i to i16
  %316 = zext i16 %315 to i64
  call void @__sanitizer_cov_trace_switch(i64 %316, ptr @__sancov_gen_cov_switch_values.68)
  switch i16 %315, label %ar9287_eeprom_get_tx_gain_index.exit.i.do.body.i_crit_edge [
    i16 0, label %ar9287_eeprom_get_tx_gain_index.exit.i.if.end31.sink.split.i.i_crit_edge
    i16 1, label %if.then21.i.i
  ]

ar9287_eeprom_get_tx_gain_index.exit.i.if.end31.sink.split.i.i_crit_edge: ; preds = %ar9287_eeprom_get_tx_gain_index.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.sink.split.i.i

ar9287_eeprom_get_tx_gain_index.exit.i.do.body.i_crit_edge: ; preds = %ar9287_eeprom_get_tx_gain_index.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.then21.i.i:                                    ; preds = %ar9287_eeprom_get_tx_gain_index.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.sink.split.i.i

if.end31.sink.split.i.i:                          ; preds = %if.then21.i.i, %ar9287_eeprom_get_tx_gain_index.exit.i.if.end31.sink.split.i.i_crit_edge
  %.sink62.i.i = phi i32 [ 45976, %if.then21.i.i ], [ 41880, %ar9287_eeprom_get_tx_gain_index.exit.i.if.end31.sink.split.i.i_crit_edge ]
  %317 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %ah, align 4
  %call12.i.i = call i32 %318(ptr noundef %ah, i32 noundef %.sink62.i.i) #6
  %and13.i.i = and i32 %call12.i.i, -16711681
  %and14.i.i = shl nsw i32 %conv84.i, 16
  %shl.i.i = and i32 %and14.i.i, 16711680
  %or15.i.i = or i32 %and13.i.i, %shl.i.i
  %319 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %write.i.i, align 4
  call void %320(ptr noundef %ah, i32 noundef %or15.i.i, i32 noundef %.sink62.i.i) #6
  br label %do.body.i

if.else85.i:                                      ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @ath9k_hw_get_gain_boundaries_pdadcs(ptr noundef %ah, ptr noundef %chan, ptr noundef %arrayidx79.i, ptr noundef %pCalBChans.0.i, i16 noundef zeroext %numPiers.0.i, i16 noundef zeroext %pdGainOverlap_t2.0.i, ptr noundef nonnull %gainBoundaries.i, ptr noundef nonnull %pdadcValues.i, i16 noundef zeroext %numXpdGain.1.3.i) #6
  br label %do.body.i

do.body.i:                                        ; preds = %if.else85.i, %if.end31.sink.split.i.i, %ar9287_eeprom_get_tx_gain_index.exit.i.do.body.i_crit_edge
  %321 = ptrtoint ptr %enable_write_buffer.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %enable_write_buffer.i, align 4
  %tobool94.not.i = icmp eq ptr %322, null
  br i1 %tobool94.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then95.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.then95.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void %322(ptr noundef %ah) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then95.i, %do.body.i.do.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv312.i)
  %cmp100.i = icmp eq i32 %indvars.iv312.i, 0
  br i1 %cmp100.i, label %if.then102.i, label %do.end.i.if.end130.i_crit_edge

do.end.i.if.end130.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130.i

if.then102.i:                                     ; preds = %do.end.i
  %323 = ptrtoint ptr %openLoopPwrCntl.i285.i to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %openLoopPwrCntl.i285.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %324)
  %tobool104.not.i = icmp eq i8 %324, 0
  br i1 %tobool104.not.i, label %if.then105.i, label %if.then102.i.if.end130.i_crit_edge

if.then102.i.if.end130.i_crit_edge:               ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130.i

if.then105.i:                                     ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #8
  %325 = ptrtoint ptr %gainBoundaries.i to i32
  call void @__asan_load2_noabort(i32 %325)
  %326 = load i16, ptr %gainBoundaries.i, align 8
  %conv110.i = zext i16 %326 to i32
  %shl111.i = shl nuw nsw i32 %conv110.i, 4
  %and112.i = and i32 %shl111.i, 1008
  %or.i439 = or i32 %and112.i, %and108.i
  %327 = ptrtoint ptr %231 to i32
  call void @__asan_load2_noabort(i32 %327)
  %328 = load i16, ptr %231, align 2
  %conv114.i = zext i16 %328 to i32
  %shl115.i = shl nuw nsw i32 %conv114.i, 10
  %and116.i = and i32 %shl115.i, 64512
  %or117.i = or i32 %or.i439, %and116.i
  %329 = ptrtoint ptr %232 to i32
  call void @__asan_load2_noabort(i32 %329)
  %330 = load i16, ptr %232, align 4
  %conv119.i = zext i16 %330 to i32
  %shl120.i = shl nuw i32 %conv119.i, 16
  %and121.i = and i32 %shl120.i, 4128768
  %or122.i = or i32 %or117.i, %and121.i
  %331 = ptrtoint ptr %233 to i32
  call void @__asan_load2_noabort(i32 %331)
  %332 = load i16, ptr %233, align 2
  %conv124.i = zext i16 %332 to i32
  %shl125.i = shl i32 %conv124.i, 22
  %and126.i = and i32 %shl125.i, 264241152
  %or127.i = or i32 %or122.i, %and126.i
  %333 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %write.i.i, align 4
  %add.i440 = add nuw nsw i32 %mul.i, 41580
  call void %334(ptr noundef %ah, i32 noundef %or127.i, i32 noundef %add.i440) #6
  br label %if.end130.i

if.end130.i:                                      ; preds = %if.then105.i, %if.then102.i.if.end130.i_crit_edge, %do.end.i.if.end130.i_crit_edge
  %335 = ptrtoint ptr %pwrTableOffset.i to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %pwrTableOffset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %336)
  %cmp133.not.i = icmp eq i8 %336, -5
  br i1 %cmp133.not.i, label %if.end130.i.if.end176.i_crit_edge, label %if.then135.i

if.end130.i.if.end176.i_crit_edge:                ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end176.i

if.then135.i:                                     ; preds = %if.end130.i
  %conv132.i = sext i8 %336 to i16
  %sub139.i = shl nsw i16 %conv132.i, 1
  %mul142.i = add nsw i16 %sub139.i, 10
  %conv146.i = sext i16 %mul142.i to i32
  %sub147.i = sub nsw i32 128, %conv146.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %336)
  %cmp148297.i = icmp slt i8 %336, 59
  br i1 %cmp148297.i, label %if.then135.i.for.body150.i_crit_edge, label %if.then135.i.for.end159.i_crit_edge

if.then135.i.for.end159.i_crit_edge:              ; preds = %if.then135.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end159.i

if.then135.i.for.body150.i_crit_edge:             ; preds = %if.then135.i
  br label %for.body150.i

for.body150.i:                                    ; preds = %for.body150.i.for.body150.i_crit_edge, %if.then135.i.for.body150.i_crit_edge
  %conv145299.i = phi i32 [ %conv145.i, %for.body150.i.for.body150.i_crit_edge ], [ 0, %if.then135.i.for.body150.i_crit_edge ]
  %j.0298.i = phi i16 [ %inc158.i, %for.body150.i.for.body150.i_crit_edge ], [ 0, %if.then135.i.for.body150.i_crit_edge ]
  %add153.i = add nsw i32 %conv145299.i, %conv146.i
  %arrayidx154.i = getelementptr [128 x i8], ptr %pdadcValues.i, i32 0, i32 %add153.i
  %337 = ptrtoint ptr %arrayidx154.i to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %arrayidx154.i, align 1
  %arrayidx156.i = getelementptr [128 x i8], ptr %pdadcValues.i, i32 0, i32 %conv145299.i
  %339 = ptrtoint ptr %arrayidx156.i to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 %338, ptr %arrayidx156.i, align 1
  %inc158.i = add i16 %j.0298.i, 1
  %conv145.i = zext i16 %inc158.i to i32
  %cmp148.i = icmp sgt i32 %sub147.i, %conv145.i
  br i1 %cmp148.i, label %for.body150.i.for.body150.i_crit_edge, label %for.body150.i.for.end159.i_crit_edge

for.body150.i.for.end159.i_crit_edge:             ; preds = %for.body150.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end159.i

for.body150.i.for.body150.i_crit_edge:            ; preds = %for.body150.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body150.i

for.end159.i:                                     ; preds = %for.body150.i.for.end159.i_crit_edge, %if.then135.i.for.end159.i_crit_edge
  %340 = and i32 %sub147.i, 65408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %340)
  %cmp165300.i = icmp eq i32 %340, 0
  br i1 %cmp165300.i, label %for.body167.lr.ph.i, label %for.end159.i.if.end176.i_crit_edge

for.end159.i.if.end176.i_crit_edge:               ; preds = %for.end159.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end176.i

for.body167.lr.ph.i:                              ; preds = %for.end159.i
  %arrayidx170.i = getelementptr [128 x i8], ptr %pdadcValues.i, i32 0, i32 %sub147.i
  %341 = and i32 %sub147.i, 65534
  br label %for.body167.i

for.body167.i:                                    ; preds = %for.body167.i.for.body167.i_crit_edge, %for.body167.lr.ph.i
  %indvars.iv.i441 = phi i32 [ %341, %for.body167.lr.ph.i ], [ %indvars.iv.next.i442, %for.body167.i.for.body167.i_crit_edge ]
  %342 = ptrtoint ptr %arrayidx170.i to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %arrayidx170.i, align 1
  %arrayidx172.i = getelementptr [128 x i8], ptr %pdadcValues.i, i32 0, i32 %indvars.iv.i441
  %344 = ptrtoint ptr %arrayidx172.i to i32
  call void @__asan_store1_noabort(i32 %344)
  store i8 %343, ptr %arrayidx172.i, align 1
  %indvars.iv.next.i442 = add nuw nsw i32 %indvars.iv.i441, 1
  %lftr.wideiv.i = trunc i32 %indvars.iv.next.i442 to i16
  %exitcond.not.i443 = icmp eq i16 %lftr.wideiv.i, 128
  br i1 %exitcond.not.i443, label %for.body167.i.if.end176.i_crit_edge, label %for.body167.i.for.body167.i_crit_edge

for.body167.i.for.body167.i_crit_edge:            ; preds = %for.body167.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body167.i

for.body167.i.if.end176.i_crit_edge:              ; preds = %for.body167.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end176.i

if.end176.i:                                      ; preds = %for.body167.i.if.end176.i_crit_edge, %for.end159.i.if.end176.i_crit_edge, %if.end130.i.if.end176.i_crit_edge
  %345 = ptrtoint ptr %openLoopPwrCntl.i285.i to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %openLoopPwrCntl.i285.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %346)
  %tobool178.not.i = icmp eq i8 %346, 0
  br i1 %tobool178.not.i, label %if.then179.i, label %if.end176.i.do.body197.i_crit_edge

if.end176.i.do.body197.i_crit_edge:               ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body197.i

if.then179.i:                                     ; preds = %if.end176.i
  %add180.i = add nuw nsw i32 %mul.i, 41600
  br label %for.body185.i

for.body185.i:                                    ; preds = %for.body185.i.for.body185.i_crit_edge, %if.then179.i
  %indvars.iv309.i = phi i32 [ 0, %if.then179.i ], [ %indvars.iv.next310.i, %for.body185.i.for.body185.i_crit_edge ]
  %regOffset.0303.i = phi i32 [ %add180.i, %if.then179.i ], [ %add192.i, %for.body185.i.for.body185.i_crit_edge ]
  %mul187.i = shl nuw nsw i32 %indvars.iv309.i, 2
  %arrayidx188.i = getelementptr [128 x i8], ptr %pdadcValues.i, i32 0, i32 %mul187.i
  %347 = ptrtoint ptr %arrayidx188.i to i32
  call void @__asan_loadN_noabort(i32 %347, i32 4)
  %348 = load i32, ptr %arrayidx188.i, align 1
  %349 = call i32 @llvm.bswap.i32(i32 %348) #6
  %350 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %write.i.i, align 4
  call void %351(ptr noundef %ah, i32 noundef %349, i32 noundef %regOffset.0303.i) #6
  %add192.i = add nuw nsw i32 %regOffset.0303.i, 4
  %indvars.iv.next310.i = add nuw nsw i32 %indvars.iv309.i, 1
  %exitcond311.not.i = icmp eq i32 %indvars.iv.next310.i, 32
  br i1 %exitcond311.not.i, label %for.body185.i.do.body197.i_crit_edge, label %for.body185.i.for.body185.i_crit_edge

for.body185.i.for.body185.i_crit_edge:            ; preds = %for.body185.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body185.i

for.body185.i.do.body197.i_crit_edge:             ; preds = %for.body185.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body197.i

do.body197.i:                                     ; preds = %for.body185.i.do.body197.i_crit_edge, %if.end176.i.do.body197.i_crit_edge
  %352 = ptrtoint ptr %write_flush.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %write_flush.i, align 4
  %tobool199.not.i = icmp eq ptr %353, null
  br i1 %tobool199.not.i, label %do.body197.i.for.inc207.i_crit_edge, label %if.then200.i

do.body197.i.for.inc207.i_crit_edge:              ; preds = %do.body197.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc207.i

if.then200.i:                                     ; preds = %do.body197.i
  call void @__sanitizer_cov_trace_pc() #8
  call void %353(ptr noundef %ah) #6
  br label %for.inc207.i

for.inc207.i:                                     ; preds = %if.then200.i, %do.body197.i.for.inc207.i_crit_edge, %for.body69.i.for.inc207.i_crit_edge
  %indvars.iv.next313.i = add nuw nsw i32 %indvars.iv312.i, 1
  %exitcond314.not.i = icmp eq i32 %indvars.iv.next313.i, 2
  br i1 %exitcond314.not.i, label %ath9k_hw_set_ar9287_power_cal_table.exit, label %for.inc207.i.for.body69.i_crit_edge

for.inc207.i.for.body69.i_crit_edge:              ; preds = %for.inc207.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body69.i

ath9k_hw_set_ar9287_power_cal_table.exit:         ; preds = %for.inc207.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xpdGainValues.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %gainBoundaries.i) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %pdadcValues.i) #6
  %max_power_level = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 22, i32 3
  %354 = ptrtoint ptr %max_power_level to i32
  call void @__asan_store2_noabort(i32 %354)
  store i16 0, ptr %max_power_level, align 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %ath9k_hw_set_ar9287_power_cal_table.exit
  %i.0446 = phi i32 [ 0, %ath9k_hw_set_ar9287_power_cal_table.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %355 = phi i16 [ 0, %ath9k_hw_set_ar9287_power_cal_table.exit ], [ %362, %for.inc.for.body_crit_edge ]
  %arrayidx6 = getelementptr [36 x i16], ptr %ratesArray, i32 0, i32 %i.0446
  %356 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %356)
  %357 = load i16, ptr %arrayidx6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %357)
  %cmp8 = icmp sgt i16 %357, 63
  br i1 %cmp8, label %if.then10, label %for.body.if.end12_crit_edge

for.body.if.end12_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %358 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %358)
  store i16 63, ptr %arrayidx6, align 2
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.body.if.end12_crit_edge
  %359 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %359)
  %360 = load i16, ptr %arrayidx6, align 2
  %conv14 = sext i16 %360 to i32
  %conv16 = zext i16 %355 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv14, i32 %conv16)
  %cmp17 = icmp sgt i32 %conv14, %conv16
  br i1 %cmp17, label %if.then19, label %if.end12.for.inc_crit_edge

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %361 = ptrtoint ptr %max_power_level to i32
  call void @__asan_store2_noabort(i32 %361)
  store i16 %360, ptr %max_power_level, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %if.end12.for.inc_crit_edge
  %362 = phi i16 [ %355, %if.end12.for.inc_crit_edge ], [ %360, %if.then19 ]
  %inc = add nuw nsw i32 %i.0446, 1
  %exitcond.not = icmp eq i32 %inc, 36
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @ath9k_hw_update_regulatory_maxpower(ptr noundef %ah) #6
  br i1 %test, label %for.end.cleanup_crit_edge, label %for.end.for.body28_crit_edge

for.end.for.body28_crit_edge:                     ; preds = %for.end
  br label %for.body28

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body28:                                       ; preds = %for.body28.for.body28_crit_edge, %for.end.for.body28_crit_edge
  %i.1447 = phi i32 [ %inc33, %for.body28.for.body28_crit_edge ], [ 0, %for.end.for.body28_crit_edge ]
  %arrayidx29 = getelementptr [36 x i16], ptr %ratesArray, i32 0, i32 %i.1447
  %363 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load2_noabort(i32 %363)
  %364 = load i16, ptr %arrayidx29, align 2
  %sub = add i16 %364, 10
  store i16 %sub, ptr %arrayidx29, align 2
  %inc33 = add nuw nsw i32 %i.1447, 1
  %exitcond449.not = icmp eq i32 %inc33, 36
  br i1 %exitcond449.not, label %do.body, label %for.body28.for.body28_crit_edge

for.body28.for.body28_crit_edge:                  ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body28

do.body:                                          ; preds = %for.body28
  %365 = ptrtoint ptr %enable_write_buffer.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %enable_write_buffer.i, align 4
  %tobool35.not = icmp eq ptr %366, null
  br i1 %tobool35.not, label %do.body.do.end_crit_edge, label %if.then36

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then36:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void %366(ptr noundef %ah) #6
  br label %do.end

do.end:                                           ; preds = %if.then36, %do.body.do.end_crit_edge
  %367 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %write.i.i, align 4
  %369 = ptrtoint ptr %arrayidx255.i to i32
  call void @__asan_load2_noabort(i32 %369)
  %370 = load i16, ptr %arrayidx255.i, align 2
  %371 = and i16 %370, 63
  %and = zext i16 %371 to i32
  %shl = shl nuw nsw i32 %and, 24
  %372 = ptrtoint ptr %arrayidx256.i to i32
  call void @__asan_load2_noabort(i32 %372)
  %373 = load i16, ptr %arrayidx256.i, align 2
  %374 = and i16 %373, 63
  %and45 = zext i16 %374 to i32
  %shl46 = shl nuw nsw i32 %and45, 16
  %or = or i32 %shl46, %shl
  %375 = ptrtoint ptr %arrayidx257.i to i32
  call void @__asan_load2_noabort(i32 %375)
  %376 = load i16, ptr %arrayidx257.i, align 2
  %377 = shl i16 %376, 8
  %378 = and i16 %377, 16128
  %shl50 = zext i16 %378 to i32
  %or51 = or i32 %or, %shl50
  %379 = ptrtoint ptr %ratesArray to i32
  call void @__asan_load2_noabort(i32 %379)
  %380 = load i16, ptr %ratesArray, align 2
  %381 = and i16 %380, 63
  %and54 = zext i16 %381 to i32
  %or56 = or i32 %or51, %and54
  call void %368(ptr noundef %ah, i32 noundef %or56, i32 noundef 39220) #6
  %382 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %write.i.i, align 4
  %384 = ptrtoint ptr %arrayidx270.i to i32
  call void @__asan_load2_noabort(i32 %384)
  %385 = load i16, ptr %arrayidx270.i, align 2
  %386 = and i16 %385, 63
  %and61 = zext i16 %386 to i32
  %shl62 = shl nuw nsw i32 %and61, 24
  %387 = ptrtoint ptr %arrayidx266.i to i32
  call void @__asan_load2_noabort(i32 %387)
  %388 = load i16, ptr %arrayidx266.i, align 2
  %389 = and i16 %388, 63
  %and65 = zext i16 %389 to i32
  %shl66 = shl nuw nsw i32 %and65, 16
  %or67 = or i32 %shl66, %shl62
  %390 = ptrtoint ptr %arrayidx262.i to i32
  call void @__asan_load2_noabort(i32 %390)
  %391 = load i16, ptr %arrayidx262.i, align 2
  %392 = shl i16 %391, 8
  %393 = and i16 %392, 16128
  %shl71 = zext i16 %393 to i32
  %or72 = or i32 %or67, %shl71
  %394 = ptrtoint ptr %arrayidx254.i to i32
  call void @__asan_load2_noabort(i32 %394)
  %395 = load i16, ptr %arrayidx254.i, align 2
  %396 = and i16 %395, 63
  %and75 = zext i16 %396 to i32
  %or77 = or i32 %or72, %and75
  call void %383(ptr noundef %ah, i32 noundef %or77, i32 noundef 39224) #6
  %397 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %397)
  %398 = load i16, ptr %channelFlags.i, align 2
  %399 = and i16 %398, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %399)
  %tobool80.not = icmp eq i16 %399, 0
  br i1 %tobool80.not, label %if.then81, label %do.end.if.end124_crit_edge

do.end.if.end124_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124

if.then81:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %400 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %write.i.i, align 4
  %arrayidx84 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 10
  %402 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load2_noabort(i32 %402)
  %403 = load i16, ptr %arrayidx84, align 2
  %404 = and i16 %403, 63
  %and86 = zext i16 %404 to i32
  %shl87 = shl nuw nsw i32 %and86, 24
  %arrayidx88 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 9
  %405 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load2_noabort(i32 %405)
  %406 = load i16, ptr %arrayidx88, align 2
  %407 = and i16 %406, 63
  %and90 = zext i16 %407 to i32
  %shl91 = shl nuw nsw i32 %and90, 16
  %or92 = or i32 %shl91, %shl87
  %408 = ptrtoint ptr %arrayidx274.i to i32
  call void @__asan_load2_noabort(i32 %408)
  %409 = load i16, ptr %arrayidx274.i, align 2
  %410 = shl i16 %409, 8
  %411 = and i16 %410, 16128
  %shl96 = zext i16 %411 to i32
  %or97 = or i32 %or92, %shl96
  %arrayidx98 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 8
  %412 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load2_noabort(i32 %412)
  %413 = load i16, ptr %arrayidx98, align 2
  %414 = and i16 %413, 63
  %and100 = zext i16 %414 to i32
  %or102 = or i32 %or97, %and100
  call void %401(ptr noundef %ah, i32 noundef %or102, i32 noundef 41524) #6
  %415 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %write.i.i, align 4
  %arrayidx105 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 14
  %417 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load2_noabort(i32 %417)
  %418 = load i16, ptr %arrayidx105, align 2
  %419 = and i16 %418, 63
  %and107 = zext i16 %419 to i32
  %shl108 = shl nuw nsw i32 %and107, 24
  %arrayidx109 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 13
  %420 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load2_noabort(i32 %420)
  %421 = load i16, ptr %arrayidx109, align 2
  %422 = and i16 %421, 63
  %and111 = zext i16 %422 to i32
  %shl112 = shl nuw nsw i32 %and111, 16
  %or113 = or i32 %shl112, %shl108
  %arrayidx114 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 12
  %423 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load2_noabort(i32 %423)
  %424 = load i16, ptr %arrayidx114, align 2
  %425 = shl i16 %424, 8
  %426 = and i16 %425, 16128
  %shl117 = zext i16 %426 to i32
  %or118 = or i32 %or113, %shl117
  %arrayidx119 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 11
  %427 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load2_noabort(i32 %427)
  %428 = load i16, ptr %arrayidx119, align 2
  %429 = and i16 %428, 63
  %and121 = zext i16 %429 to i32
  %or123 = or i32 %or118, %and121
  call void %416(ptr noundef %ah, i32 noundef %or123, i32 noundef 41528) #6
  br label %if.end124

if.end124:                                        ; preds = %if.then81, %do.end.if.end124_crit_edge
  %430 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %write.i.i, align 4
  %432 = ptrtoint ptr %arrayidx283.3.i to i32
  call void @__asan_load2_noabort(i32 %432)
  %433 = load i16, ptr %arrayidx283.3.i, align 2
  %434 = and i16 %433, 63
  %and129 = zext i16 %434 to i32
  %shl130 = shl nuw nsw i32 %and129, 24
  %435 = ptrtoint ptr %arrayidx283.2.i to i32
  call void @__asan_load2_noabort(i32 %435)
  %436 = load i16, ptr %arrayidx283.2.i, align 2
  %437 = and i16 %436, 63
  %and133 = zext i16 %437 to i32
  %shl134 = shl nuw nsw i32 %and133, 16
  %or135 = or i32 %shl134, %shl130
  %438 = ptrtoint ptr %arrayidx283.1.i to i32
  call void @__asan_load2_noabort(i32 %438)
  %439 = load i16, ptr %arrayidx283.1.i, align 2
  %440 = shl i16 %439, 8
  %441 = and i16 %440, 16128
  %shl139 = zext i16 %441 to i32
  %or140 = or i32 %or135, %shl139
  %442 = ptrtoint ptr %arrayidx283.i to i32
  call void @__asan_load2_noabort(i32 %442)
  %443 = load i16, ptr %arrayidx283.i, align 2
  %444 = and i16 %443, 63
  %and143 = zext i16 %444 to i32
  %or145 = or i32 %or140, %and143
  call void %431(ptr noundef %ah, i32 noundef %or145, i32 noundef 41868) #6
  %445 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %write.i.i, align 4
  %447 = ptrtoint ptr %arrayidx283.7.i to i32
  call void @__asan_load2_noabort(i32 %447)
  %448 = load i16, ptr %arrayidx283.7.i, align 2
  %449 = and i16 %448, 63
  %and150 = zext i16 %449 to i32
  %shl151 = shl nuw nsw i32 %and150, 24
  %450 = ptrtoint ptr %arrayidx283.6.i to i32
  call void @__asan_load2_noabort(i32 %450)
  %451 = load i16, ptr %arrayidx283.6.i, align 2
  %452 = and i16 %451, 63
  %and154 = zext i16 %452 to i32
  %shl155 = shl nuw nsw i32 %and154, 16
  %or156 = or i32 %shl155, %shl151
  %453 = ptrtoint ptr %arrayidx283.5.i to i32
  call void @__asan_load2_noabort(i32 %453)
  %454 = load i16, ptr %arrayidx283.5.i, align 2
  %455 = shl i16 %454, 8
  %456 = and i16 %455, 16128
  %shl160 = zext i16 %456 to i32
  %or161 = or i32 %or156, %shl160
  %457 = ptrtoint ptr %arrayidx283.4.i to i32
  call void @__asan_load2_noabort(i32 %457)
  %458 = load i16, ptr %arrayidx283.4.i, align 2
  %459 = and i16 %458, 63
  %and164 = zext i16 %459 to i32
  %or166 = or i32 %or161, %and164
  call void %446(ptr noundef %ah, i32 noundef %or166, i32 noundef 41872) #6
  %460 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %460)
  %461 = load i16, ptr %channelFlags.i, align 2
  %462 = and i16 %461, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %462)
  %tobool170.not = icmp eq i16 %462, 0
  br i1 %tobool170.not, label %if.end124.if.end296_crit_edge, label %if.then171

if.end124.if.end296_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end296

if.then171:                                       ; preds = %if.end124
  %463 = ptrtoint ptr %openLoopPwrCntl.i285.i to i32
  call void @__asan_load1_noabort(i32 %463)
  %464 = load i8, ptr %openLoopPwrCntl.i285.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %464)
  %tobool173.not = icmp eq i8 %464, 0
  %465 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %write.i.i, align 4
  %arrayidx219 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 27
  %467 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load2_noabort(i32 %467)
  %468 = load i16, ptr %arrayidx219, align 2
  br i1 %tobool173.not, label %if.else, label %if.then174

if.then174:                                       ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #8
  %469 = and i16 %468, 63
  %and179 = zext i16 %469 to i32
  %shl180 = shl nuw nsw i32 %and179, 24
  %arrayidx181 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 26
  %470 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load2_noabort(i32 %470)
  %471 = load i16, ptr %arrayidx181, align 2
  %472 = and i16 %471, 63
  %and183 = zext i16 %472 to i32
  %shl184 = shl nuw nsw i32 %and183, 16
  %or185 = or i32 %shl184, %shl180
  %arrayidx186 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 25
  %473 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load2_noabort(i32 %473)
  %474 = load i16, ptr %arrayidx186, align 2
  %475 = shl i16 %474, 8
  %476 = and i16 %475, 16128
  %shl189 = zext i16 %476 to i32
  %or190 = or i32 %or185, %shl189
  %arrayidx191 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 24
  %477 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_load2_noabort(i32 %477)
  %478 = load i16, ptr %arrayidx191, align 2
  %479 = and i16 %478, 63
  %and193 = zext i16 %479 to i32
  %or195 = or i32 %or190, %and193
  call void %466(ptr noundef %ah, i32 noundef %or195, i32 noundef 41932) #6
  %480 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %write.i.i, align 4
  %arrayidx198 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 31
  %482 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load2_noabort(i32 %482)
  %483 = load i16, ptr %arrayidx198, align 2
  %484 = and i16 %483, 63
  %and200 = zext i16 %484 to i32
  %shl201 = shl nuw nsw i32 %and200, 24
  %arrayidx202 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 30
  %485 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load2_noabort(i32 %485)
  %486 = load i16, ptr %arrayidx202, align 2
  %487 = and i16 %486, 63
  %and204 = zext i16 %487 to i32
  %shl205 = shl nuw nsw i32 %and204, 16
  %or206 = or i32 %shl205, %shl201
  %arrayidx207 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 29
  %488 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_load2_noabort(i32 %488)
  %489 = load i16, ptr %arrayidx207, align 2
  %490 = shl i16 %489, 8
  %491 = and i16 %490, 16128
  %shl210 = zext i16 %491 to i32
  %or211 = or i32 %or206, %shl210
  %arrayidx212 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 28
  %492 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load2_noabort(i32 %492)
  %493 = load i16, ptr %arrayidx212, align 2
  %494 = and i16 %493, 63
  %and214 = zext i16 %494 to i32
  %or216 = or i32 %or211, %and214
  call void %481(ptr noundef %ah, i32 noundef %or216, i32 noundef 41936) #6
  br label %if.end274

if.else:                                          ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #8
  %conv220413 = zext i16 %468 to i32
  %add = add nuw nsw i32 %ht40PowerIncForPdadc.0, %conv220413
  %and222 = shl i32 %add, 24
  %shl223 = and i32 %and222, 1056964608
  %arrayidx224 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 26
  %495 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_load2_noabort(i32 %495)
  %496 = load i16, ptr %arrayidx224, align 2
  %conv225414 = zext i16 %496 to i32
  %add227 = add nuw nsw i32 %ht40PowerIncForPdadc.0, %conv225414
  %and228 = shl i32 %add227, 16
  %shl229 = and i32 %and228, 4128768
  %or230 = or i32 %shl229, %shl223
  %arrayidx231 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 25
  %497 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_load2_noabort(i32 %497)
  %498 = load i16, ptr %arrayidx231, align 2
  %conv232415 = zext i16 %498 to i32
  %add234 = add nuw nsw i32 %ht40PowerIncForPdadc.0, %conv232415
  %and235 = shl nuw nsw i32 %add234, 8
  %shl236 = and i32 %and235, 16128
  %or237 = or i32 %or230, %shl236
  %arrayidx238 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 24
  %499 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load2_noabort(i32 %499)
  %500 = load i16, ptr %arrayidx238, align 2
  %conv239416 = zext i16 %500 to i32
  %add241 = add nuw nsw i32 %ht40PowerIncForPdadc.0, %conv239416
  %and242 = and i32 %add241, 63
  %or244 = or i32 %or237, %and242
  call void %466(ptr noundef %ah, i32 noundef %or244, i32 noundef 41932) #6
  %501 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %write.i.i, align 4
  %arrayidx247 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 31
  %503 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_load2_noabort(i32 %503)
  %504 = load i16, ptr %arrayidx247, align 2
  %conv248417 = zext i16 %504 to i32
  %add250 = add nuw nsw i32 %ht40PowerIncForPdadc.0, %conv248417
  %and251 = shl i32 %add250, 24
  %shl252 = and i32 %and251, 1056964608
  %arrayidx253 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 30
  %505 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_load2_noabort(i32 %505)
  %506 = load i16, ptr %arrayidx253, align 2
  %conv254418 = zext i16 %506 to i32
  %add256 = add nuw nsw i32 %ht40PowerIncForPdadc.0, %conv254418
  %and257 = shl i32 %add256, 16
  %shl258 = and i32 %and257, 4128768
  %or259 = or i32 %shl258, %shl252
  %arrayidx260 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 29
  %507 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_load2_noabort(i32 %507)
  %508 = load i16, ptr %arrayidx260, align 2
  %conv261419 = zext i16 %508 to i32
  %add263 = add nuw nsw i32 %ht40PowerIncForPdadc.0, %conv261419
  %and264 = shl nuw nsw i32 %add263, 8
  %shl265 = and i32 %and264, 16128
  %or266 = or i32 %or259, %shl265
  %arrayidx267 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 28
  %509 = ptrtoint ptr %arrayidx267 to i32
  call void @__asan_load2_noabort(i32 %509)
  %510 = load i16, ptr %arrayidx267, align 2
  %conv268420 = zext i16 %510 to i32
  %add270 = add nuw nsw i32 %ht40PowerIncForPdadc.0, %conv268420
  %and271 = and i32 %add270, 63
  %or273 = or i32 %or266, %and271
  call void %502(ptr noundef %ah, i32 noundef %or273, i32 noundef 41936) #6
  br label %if.end274

if.end274:                                        ; preds = %if.else, %if.then174
  %511 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %write.i.i, align 4
  %arrayidx277 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 35
  %513 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_load2_noabort(i32 %513)
  %514 = load i16, ptr %arrayidx277, align 2
  %515 = and i16 %514, 63
  %and279 = zext i16 %515 to i32
  %shl280 = shl nuw nsw i32 %and279, 24
  %arrayidx281 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 34
  %516 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load2_noabort(i32 %516)
  %517 = load i16, ptr %arrayidx281, align 2
  %518 = and i16 %517, 63
  %and283 = zext i16 %518 to i32
  %shl284 = shl nuw nsw i32 %and283, 16
  %or285 = or i32 %shl284, %shl280
  %arrayidx286 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 33
  %519 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_load2_noabort(i32 %519)
  %520 = load i16, ptr %arrayidx286, align 2
  %521 = shl i16 %520, 8
  %522 = and i16 %521, 16128
  %shl289 = zext i16 %522 to i32
  %or290 = or i32 %or285, %shl289
  %arrayidx291 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 32
  %523 = ptrtoint ptr %arrayidx291 to i32
  call void @__asan_load2_noabort(i32 %523)
  %524 = load i16, ptr %arrayidx291, align 2
  %525 = and i16 %524, 63
  %and293 = zext i16 %525 to i32
  %or295 = or i32 %or290, %and293
  call void %512(ptr noundef %ah, i32 noundef %or295, i32 noundef 41940) #6
  br label %if.end296

if.end296:                                        ; preds = %if.end274, %if.end124.if.end296_crit_edge
  %tpc_enabled = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 137
  %526 = ptrtoint ptr %tpc_enabled to i32
  call void @__asan_load1_noabort(i32 %526)
  %527 = load i8, ptr %tpc_enabled, align 4, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %527)
  %tobool297.not = icmp eq i8 %527, 0
  br i1 %tobool297.not, label %if.end296.do.body311_crit_edge, label %if.then298

if.end296.do.body311_crit_edge:                   ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body311

if.then298:                                       ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #8
  %528 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %528)
  %529 = load i16, ptr %channelFlags.i, align 2
  %530 = and i16 %529, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %530)
  %tobool302.not = icmp eq i16 %530, 0
  %spec.select = select i1 %tobool302.not, i32 0, i32 %ht40PowerIncForPdadc.0
  call void @ar5008_hw_init_rate_txpower(ptr noundef %ah, ptr noundef nonnull %ratesArray, ptr noundef %chan, i32 noundef %spec.select) #6
  br label %do.body311

do.body311:                                       ; preds = %if.then298, %if.end296.do.body311_crit_edge
  %.sink = phi i32 [ 127, %if.then298 ], [ 63, %if.end296.do.body311_crit_edge ]
  %531 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %write.i.i, align 4
  call void %532(ptr noundef %ah, i32 noundef %.sink, i32 noundef 39228) #6
  %533 = ptrtoint ptr %write_flush.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %write_flush.i, align 4
  %tobool313.not = icmp eq ptr %534, null
  br i1 %tobool313.not, label %do.body311.cleanup_crit_edge, label %if.then314

do.body311.cleanup_crit_edge:                     ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then314:                                       ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #8
  call void %534(ptr noundef %ah) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then314, %do.body311.cleanup_crit_edge, %for.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %ratesArray) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ath9k_hw_ar9287_get_spur_channel(ptr nocapture noundef readonly %ah, i16 noundef zeroext %i, i1 noundef zeroext %is2GHz) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spurChans = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 19
  %idxprom = zext i16 %i to i32
  %arrayidx = getelementptr [5 x %struct.spur_chan], ptr %spurChans, i32 0, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %arrayidx, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  ret i16 %2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath9k_hw_ar9287_get_eepmisc(ptr nocapture noundef readonly %ah) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %eepMisc = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 4
  %0 = ptrtoint ptr %eepMisc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %eepMisc, align 1
  ret i8 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_hw_nvram_swap_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_nvram_validate_checksum(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_nvram_check_version(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_usb_gen_fill_eeprom(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_nvram_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_analog_shift_regwrite(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_analog_shift_rmw(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_update_regulatory_maxpower(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ar5008_hw_init_rate_txpower(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_get_channel_centers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ath9k_hw_get_scaled_power(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_get_legacy_target_powers(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_get_target_powers(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ath9k_hw_get_max_edge_power(i16 noundef zeroext, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_get_gain_boundaries_pdadcs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_get_lower_upper_index(i8 noundef zeroext, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @eep_ar9287_ops, !1, !"eep_ar9287_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 975, i32 25}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 69, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 135, i32 6}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 135, i32 18}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 141, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 142, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 143, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 144, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 145, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 146, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 147, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 148, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 149, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 150, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 151, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 153, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 155, i32 2}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 157, i32 2}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 159, i32 2}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 160, i32 2}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 161, i32 2}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 162, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 163, i32 2}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 164, i32 2}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 166, i32 42}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 166, i32 58}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 82, i32 2}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 83, i32 2}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 84, i32 2}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 85, i32 2}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 86, i32 2}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 87, i32 2}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 88, i32 2}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 89, i32 2}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 90, i32 2}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 91, i32 2}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 92, i32 2}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 93, i32 2}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 94, i32 2}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 95, i32 2}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 96, i32 2}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 97, i32 2}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 98, i32 2}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 99, i32 2}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 100, i32 2}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 101, i32 2}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 102, i32 2}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 103, i32 2}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 104, i32 2}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 105, i32 2}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 106, i32 2}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 107, i32 2}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 108, i32 2}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 109, i32 2}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 110, i32 2}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 111, i32 2}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 112, i32 2}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 113, i32 2}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 114, i32 2}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 115, i32 2}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 116, i32 2}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 117, i32 2}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 118, i32 2}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 119, i32 2}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 120, i32 2}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 121, i32 2}
!134 = !{ptr @ath9k_hw_set_ar9287_power_per_rate_table.ctlModesFor11g, !135, !"ctlModesFor11g", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_9287.c", i32 516, i32 19}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{!"auto-init"}
!146 = !{i8 0, i8 2}
