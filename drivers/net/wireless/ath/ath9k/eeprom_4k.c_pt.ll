; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/eeprom_4k.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/eeprom_4k.c"
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
%struct.chan_centers = type { i16, i16, i16 }
%struct.ar5416_eeprom_4k = type { %struct.base_eep_header_4k, [20 x i8], %struct.modal_eep_4k_header, [3 x i8], [1 x [3 x %struct.cal_data_per_freq_4k]], [3 x %struct.cal_target_power_leg], [3 x %struct.cal_target_power_leg], [3 x %struct.cal_target_power_ht], [3 x %struct.cal_target_power_ht], [12 x i8], [12 x %struct.cal_ctl_data_4k], i8 }
%struct.base_eep_header_4k = type <{ i16, i16, i16, i8, i8, [2 x i16], [6 x i8], i8, i8, i16, i16, i16, i32, i8, i8 }>
%struct.modal_eep_4k_header = type <{ [1 x i32], i32, [1 x i8], i8, [1 x i8], [1 x i8], i8, i8, [1 x i8], i8, i8, i8, i8, [1 x i8], i8, i8, [1 x i8], [1 x i8], i8, i16, i8, i8, i8, i8, [1 x i8], [1 x i8], i8, [1 x i8], [1 x i8], i8, i8, [6 x i8], i8, i8, i8, [1 x i8], [5 x %struct.spur_chan] }>
%struct.cal_data_per_freq_4k = type { [2 x [5 x i8]], [2 x [5 x i8]] }
%struct.cal_ctl_data_4k = type { [1 x [4 x %struct.cal_ctl_edges]] }

@eep_4k_ops = dso_local constant { %struct.eeprom_ops, [52 x i8] } { %struct.eeprom_ops { ptr @ath9k_hw_4k_check_eeprom, ptr @ath9k_hw_4k_get_eeprom, ptr @ath9k_hw_4k_fill_eeprom, ptr @ath9k_hw_4k_dump_eeprom, ptr @ath9k_hw_4k_get_eeprom_ver, ptr @ath9k_hw_4k_get_eeprom_rev, ptr @ath9k_hw_4k_set_board_values, ptr null, ptr @ath9k_hw_4k_set_txpower, ptr @ath9k_hw_4k_get_spur_channel, ptr @ath9k_hw_4k_get_eepmisc }, [52 x i8] zeroinitializer }, align 32
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
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TX Gain type\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%20s : %pM\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MacAddress\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Chain0 Ant. Control\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Ant. Common Control\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chain0 Ant. Gain\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Switch Settle\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chain0 TxRxAtten\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Chain0 RxTxMargin\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC Desired size\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PGA Desired size\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chain0 xlna Gain\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"txEndToXpaOff\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"txEndToRxOn\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"txFrameToXpaOn\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CCA Threshold)\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Chain0 NF Threshold\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"xpdGain\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"External PD\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Chain0 I Coefficient\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Chain0 Q Coefficient\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pdGainOverlap\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"O/D Bias Version\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CCK OutputBias\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BPSK OutputBias\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"QPSK OutputBias\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"16QAM OutputBias\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"64QAM OutputBias\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CCK Driver1_Bias\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"BPSK Driver1_Bias\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"QPSK Driver1_Bias\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"16QAM Driver1_Bias\00", [45 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"64QAM Driver1_Bias\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CCK Driver2_Bias\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"BPSK Driver2_Bias\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"QPSK Driver2_Bias\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"16QAM Driver2_Bias\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"64QAM Driver2_Bias\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xPA Bias Level\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"txFrameToDataStart\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"txFrameToPaOn\00", [18 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HT40 Power Inc.\00", [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Chain0 bswAtten\00", [16 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chain0 bswMargin\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HT40 Switch Settle\00", [45 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chain0 xatten2Db\00", [47 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Chain0 xatten2Margin\00", [43 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Ant. Diversity ctl1\00", [44 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Ant. Diversity ctl2\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TX Diversity\00", [19 x i8] zeroinitializer }, align 32
@ath9k_hw_set_4k_power_per_rate_table.ctlModesFor11g = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 1, i16 2, i16 5, i16 -32767, i16 -32766, i16 7], [20 x i8] zeroinitializer }, align 32
@ath9k_hw_set_4k_power_cal_table.pdadcValues = internal global { [128 x i8], [32 x i8] } zeroinitializer, align 32
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PDADC (%d,%4x): %4.4x %8.8x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"PDADC: Chain %d | PDADC %3d Value %3d | PDADC %3d Value %3d | PDADC %3d Value %3d | PDADC %3d Value %3d |\0A\00", [53 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [19 x i64] [i64 17, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 11, i64 12, i64 13, i64 14, i64 18, i64 25, i64 27, i64 28, i64 30]
@__sancov_gen_cov_switch_values.75 = internal global [8 x i64] [i64 6, i64 16, i64 1, i64 2, i64 5, i64 7, i64 32769, i64 32770]
@___asan_gen_.76 = private unnamed_addr constant [11 x i8] c"eep_4k_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1044, i32 25 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 66, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 139, i32 6 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 139, i32 18 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 145, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 146, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 147, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 148, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 149, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 150, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 151, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 152, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 153, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 154, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 155, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 157, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 159, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 161, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 163, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 164, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 165, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 166, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 167, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 169, i32 42 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 169, i32 58 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 79, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 80, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 81, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 82, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 83, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 84, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 85, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 86, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 87, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 88, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 89, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 90, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 91, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 92, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 93, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 94, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 95, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 96, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 97, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 98, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 99, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 100, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 101, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 102, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 103, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 104, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 105, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 106, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 107, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 108, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 109, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 110, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 111, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 112, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 113, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 114, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 115, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 116, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 117, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 118, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 119, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 120, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 121, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 122, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 123, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 124, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 125, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant [15 x i8] c"ctlModesFor11g\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 419, i32 19 }
@___asan_gen_.301 = private unnamed_addr constant [12 x i8] c"pdadcValues\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 291, i32 12 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 363, i32 5 }
@___asan_gen_.307 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.308 = private constant [46 x i8] c"../drivers/net/wireless/ath/ath9k/eeprom_4k.c\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 367, i32 5 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @eep_4k_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @ath9k_hw_set_4k_power_per_rate_table.ctlModesFor11g, ptr @ath9k_hw_set_4k_power_cal_table.pdadcValues, ptr @.str.73, ptr @.str.74], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eep_4k_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_hw_set_4k_power_per_rate_table.ctlModesFor11g to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_hw_set_4k_power_cal_table.pdadcValues to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_hw_4k_check_eeprom(ptr noundef %ah) #0 align 64 {
entry:
  %need_swap = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %need_swap) #6
  %0 = ptrtoint ptr %need_swap to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %need_swap, align 1, !annotation !163
  %call = call i32 @ath9k_hw_nvram_swap_data(ptr noundef %ah, ptr noundef nonnull %need_swap, i32 noundef 188) #6
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
  call void @__sanitizer_cov_trace_const_cmp2(i16 376, i16 %3)
  %cmp = icmp ult i16 %3, 376
  %4 = lshr i16 %3, 1
  %narrow = select i1 %cmp, i16 %4, i16 188
  %cond = zext i16 %narrow to i32
  %call8 = call zeroext i1 @ath9k_hw_nvram_validate_checksum(ptr noundef %ah, i32 noundef %cond) #6
  br i1 %call8, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %5 = ptrtoint ptr %need_swap to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %need_swap, align 1, !range !164
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
  %modalHeader = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 9
  %antCtrlCommon = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 13
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
  %spurChans = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 36
  %47 = ptrtoint ptr %spurChans to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %spurChans, align 1
  %49 = call i16 @llvm.bswap.i16(i16 %48)
  %50 = ptrtoint ptr %spurChans to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 %49, ptr %spurChans, align 1
  %arrayidx56.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 40
  %51 = ptrtoint ptr %arrayidx56.1 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %arrayidx56.1, align 1
  %53 = call i16 @llvm.bswap.i16(i16 %52)
  %54 = ptrtoint ptr %arrayidx56.1 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 %53, ptr %arrayidx56.1, align 1
  %arrayidx56.2 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 44
  %55 = ptrtoint ptr %arrayidx56.2 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %arrayidx56.2, align 1
  %57 = call i16 @llvm.bswap.i16(i16 %56)
  %58 = ptrtoint ptr %arrayidx56.2 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 2)
  store i16 %57, ptr %arrayidx56.2, align 1
  %arrayidx56.3 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 48
  %59 = ptrtoint ptr %arrayidx56.3 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %arrayidx56.3, align 1
  %61 = call i16 @llvm.bswap.i16(i16 %60)
  %62 = ptrtoint ptr %arrayidx56.3 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 %61, ptr %arrayidx56.3, align 1
  %arrayidx56.4 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 52
  %63 = ptrtoint ptr %arrayidx56.4 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %arrayidx56.4, align 1
  %65 = call i16 @llvm.bswap.i16(i16 %64)
  %66 = ptrtoint ptr %arrayidx56.4 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 2)
  store i16 %65, ptr %arrayidx56.4, align 1
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
define internal i32 @ath9k_hw_4k_get_eeprom(ptr nocapture noundef readonly %ah, i32 noundef %param) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %param to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %param, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb1
    i32 3, label %sw.bb3
    i32 2, label %sw.bb8
    i32 5, label %sw.bb14
    i32 6, label %sw.bb17
    i32 7, label %sw.bb19
    i32 8, label %sw.bb21
    i32 11, label %sw.bb23
    i32 12, label %sw.bb25
    i32 13, label %sw.bb31
    i32 14, label %sw.bb33
    i32 30, label %sw.bb47
    i32 25, label %sw.bb36
    i32 27, label %sw.bb37
    i32 28, label %sw.bb39
    i32 18, label %sw.bb45
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %noiseFloorThreshCh = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 7
  %1 = ptrtoint ptr %noiseFloorThreshCh to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %noiseFloorThreshCh, align 1
  %conv = zext i8 %2 to i32
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %macAddr = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 6
  %3 = ptrtoint ptr %macAddr to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %macAddr, align 1
  %conv2 = zext i16 %4 to i32
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 6, i32 2
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %add.ptr, align 1
  %conv7 = zext i16 %6 to i32
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr11 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 6, i32 4
  %7 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %add.ptr11, align 1
  %conv13 = zext i16 %8 to i32
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regDmn = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 5
  %9 = ptrtoint ptr %regDmn to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %regDmn, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv16 = zext i16 %11 to i32
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %deviceCap = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 11
  %12 = ptrtoint ptr %deviceCap to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %deviceCap, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv18 = zext i16 %14 to i32
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %opCapFlags = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 3
  %15 = ptrtoint ptr %opCapFlags to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %opCapFlags, align 1
  %conv20 = zext i8 %16 to i32
  br label %cleanup

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rfSilent = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 9
  %17 = ptrtoint ptr %rfSilent to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %rfSilent, align 1
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %conv22 = zext i16 %19 to i32
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ob_0 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 13
  %20 = ptrtoint ptr %ob_0 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %bf.load = load i16, ptr %ob_0, align 1
  %bf.lshr = lshr i16 %bf.load, 8
  %21 = and i16 %bf.lshr, 15
  %bf.cast = zext i16 %21 to i32
  br label %cleanup

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %db1_1 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 13
  %22 = ptrtoint ptr %db1_1 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %bf.load26 = load i16, ptr %db1_1, align 1
  %23 = lshr i16 %bf.load26, 4
  %24 = and i16 %23, 15
  %conv30 = zext i16 %24 to i32
  br label %cleanup

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %txMask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 8
  %25 = ptrtoint ptr %txMask to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %txMask, align 1
  %conv32 = zext i8 %26 to i32
  br label %cleanup

sw.bb33:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rxMask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 7
  %27 = ptrtoint ptr %rxMask to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %rxMask, align 1
  %conv34 = zext i8 %28 to i32
  br label %cleanup

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %version = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 25
  %29 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %version, align 1
  %conv38 = zext i8 %30 to i32
  br label %cleanup

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %antdiv_ctl1 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 26
  %31 = ptrtoint ptr %antdiv_ctl1 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 6)
  %bf.load40 = load i48, ptr %antdiv_ctl1, align 1
  %bf.lshr41 = lshr i48 %bf.load40, 36
  %32 = trunc i48 %bf.lshr41 to i32
  %bf.cast43 = and i32 %32, 15
  br label %cleanup

sw.bb45:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %txGainType = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 14
  %33 = ptrtoint ptr %txGainType to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %txGainType, align 1
  %conv46 = zext i8 %34 to i32
  br label %cleanup

sw.bb47:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %antennaGainCh = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 17
  %35 = ptrtoint ptr %antennaGainCh to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %antennaGainCh, align 1
  %conv49 = zext i8 %36 to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.bb47, %sw.bb45, %sw.bb39, %sw.bb37, %sw.bb36, %sw.bb33, %sw.bb31, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb14, %sw.bb8, %sw.bb3, %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv49, %sw.bb47 ], [ %conv46, %sw.bb45 ], [ %bf.cast43, %sw.bb39 ], [ %conv38, %sw.bb37 ], [ -5, %sw.bb36 ], [ %conv34, %sw.bb33 ], [ %conv32, %sw.bb31 ], [ %conv30, %sw.bb25 ], [ %bf.cast, %sw.bb23 ], [ %conv22, %sw.bb21 ], [ %conv20, %sw.bb19 ], [ %conv18, %sw.bb17 ], [ %conv16, %sw.bb14 ], [ %conv13, %sw.bb8 ], [ %conv7, %sw.bb3 ], [ %conv2, %sw.bb1 ], [ %conv, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ath9k_hw_4k_fill_eeprom(ptr noundef %ah) #0 align 64 {
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
  tail call void @ath9k_hw_usb_gen_fill_eeprom(ptr noundef %ah, ptr noundef %eeprom.i, i32 noundef 64, i32 noundef 188) #6
  br label %cleanup

if.else:                                          ; preds = %if.end4
  %call.i14 = tail call zeroext i1 @ath9k_hw_nvram_read(ptr noundef %ah, i32 noundef 64, ptr noundef %eeprom.i) #6
  br i1 %call.i14, label %if.else.if.end.i_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  br label %if.end.i

for.body.i:                                       ; preds = %if.end.i
  %incdec.ptr.i = getelementptr i16, ptr %eep_data.07.i16, i32 1
  %add.i = add nuw nsw i32 %addr.08.i15, 65
  %call.i = tail call zeroext i1 @ath9k_hw_nvram_read(ptr noundef %ah, i32 noundef %add.i, ptr noundef %incdec.ptr.i) #6
  br i1 %call.i, label %for.body.i.if.end.i_crit_edge, label %for.body.i.cleanup.loopexit_crit_edge

for.body.i.cleanup.loopexit_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.loopexit

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %if.else.if.end.i_crit_edge
  %eep_data.07.i16 = phi ptr [ %incdec.ptr.i, %for.body.i.if.end.i_crit_edge ], [ %eeprom.i, %if.else.if.end.i_crit_edge ]
  %addr.08.i15 = phi i32 [ %inc.i, %for.body.i.if.end.i_crit_edge ], [ 0, %if.else.if.end.i_crit_edge ]
  %inc.i = add nuw nsw i32 %addr.08.i15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 188, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 188
  br i1 %exitcond.not.i, label %if.end.i.cleanup.loopexit_crit_edge, label %for.body.i

if.end.i.cleanup.loopexit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %if.end.i.cleanup.loopexit_crit_edge, %for.body.i.cleanup.loopexit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 186, i32 %addr.08.i15)
  %cmp.i.le = icmp ugt i32 %addr.08.i15, 186
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.else.cleanup_crit_edge, %if.then5
  %retval.0 = phi i1 [ true, %if.then5 ], [ false, %if.else.cleanup_crit_edge ], [ %cmp.i.le, %cleanup.loopexit ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_hw_4k_dump_eeprom(ptr noundef %ah, i1 noundef zeroext %dump_base_hdr, ptr noundef %buf, i32 noundef %len, i32 noundef %size) #0 align 64 {
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
  %modalHeader = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 9
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %add
  %sub.i = sub i32 %size, %add
  %0 = ptrtoint ptr %modalHeader to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %modalHeader, align 1
  %conv.i = trunc i32 %1 to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %conv1.i = zext i16 %2 to i32
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.26, i32 noundef %conv1.i) #6
  %add.i = add i32 %call.i, %add
  %add.ptr3.i = getelementptr i8, ptr %buf, i32 %add.i
  %sub4.i = sub i32 %size, %add.i
  %antCtrlCommon.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 13
  %3 = ptrtoint ptr %antCtrlCommon.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %antCtrlCommon.i, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %call5.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3.i, i32 noundef %sub4.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.27, i32 noundef %5) #6
  %add6.i = add i32 %call5.i, %add.i
  %add.ptr9.i = getelementptr i8, ptr %buf, i32 %add6.i
  %sub10.i = sub i32 %size, %add6.i
  %antennaGainCh.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 17
  %6 = ptrtoint ptr %antennaGainCh.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %antennaGainCh.i, align 1
  %conv12.i = zext i8 %7 to i32
  %call13.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9.i, i32 noundef %sub10.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.28, i32 noundef %conv12.i) #6
  %add14.i = add i32 %call13.i, %add6.i
  %add.ptr17.i = getelementptr i8, ptr %buf, i32 %add14.i
  %sub18.i = sub i32 %size, %add14.i
  %switchSettling.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 18
  %8 = ptrtoint ptr %switchSettling.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %switchSettling.i, align 1
  %conv19.i = zext i8 %9 to i32
  %call20.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17.i, i32 noundef %sub18.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.29, i32 noundef %conv19.i) #6
  %add21.i = add i32 %call20.i, %add14.i
  %add.ptr24.i = getelementptr i8, ptr %buf, i32 %add21.i
  %sub25.i = sub i32 %size, %add21.i
  %txRxAttenCh.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 19
  %10 = ptrtoint ptr %txRxAttenCh.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %txRxAttenCh.i, align 1
  %conv27.i = zext i8 %11 to i32
  %call28.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr24.i, i32 noundef %sub25.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.30, i32 noundef %conv27.i) #6
  %add29.i = add i32 %call28.i, %add21.i
  %add.ptr32.i = getelementptr i8, ptr %buf, i32 %add29.i
  %sub33.i = sub i32 %size, %add29.i
  %rxTxMarginCh.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 20
  %12 = ptrtoint ptr %rxTxMarginCh.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rxTxMarginCh.i, align 1
  %conv35.i = zext i8 %13 to i32
  %call36.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr32.i, i32 noundef %sub33.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.31, i32 noundef %conv35.i) #6
  %add37.i = add i32 %call36.i, %add29.i
  %add.ptr40.i = getelementptr i8, ptr %buf, i32 %add37.i
  %sub41.i = sub i32 %size, %add37.i
  %adcDesiredSize.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1
  %14 = ptrtoint ptr %adcDesiredSize.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %adcDesiredSize.i, align 1
  %conv42.i = zext i8 %15 to i32
  %call43.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40.i, i32 noundef %sub41.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.32, i32 noundef %conv42.i) #6
  %add44.i = add i32 %call43.i, %add37.i
  %add.ptr47.i = getelementptr i8, ptr %buf, i32 %add44.i
  %sub48.i = sub i32 %size, %add44.i
  %pgaDesiredSize.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %pgaDesiredSize.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pgaDesiredSize.i, align 1
  %conv49.i = zext i8 %17 to i32
  %call50.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr47.i, i32 noundef %sub48.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.33, i32 noundef %conv49.i) #6
  %add51.i = add i32 %call50.i, %add44.i
  %add.ptr54.i = getelementptr i8, ptr %buf, i32 %add51.i
  %sub55.i = sub i32 %size, %add51.i
  %xlnaGainCh.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %xlnaGainCh.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %xlnaGainCh.i, align 1
  %conv57.i = zext i8 %19 to i32
  %call58.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr54.i, i32 noundef %sub55.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.34, i32 noundef %conv57.i) #6
  %add59.i = add i32 %call58.i, %add51.i
  %add.ptr62.i = getelementptr i8, ptr %buf, i32 %add59.i
  %sub63.i = sub i32 %size, %add59.i
  %txEndToXpaOff.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %txEndToXpaOff.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %txEndToXpaOff.i, align 1
  %conv64.i = zext i8 %21 to i32
  %call65.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr62.i, i32 noundef %sub63.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.35, i32 noundef %conv64.i) #6
  %add66.i = add i32 %call65.i, %add59.i
  %add.ptr69.i = getelementptr i8, ptr %buf, i32 %add66.i
  %sub70.i = sub i32 %size, %add66.i
  %txEndToRxOn.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %txEndToRxOn.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %txEndToRxOn.i, align 1
  %conv71.i = zext i8 %23 to i32
  %call72.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr69.i, i32 noundef %sub70.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.36, i32 noundef %conv71.i) #6
  %add73.i = add i32 %call72.i, %add66.i
  %add.ptr76.i = getelementptr i8, ptr %buf, i32 %add73.i
  %sub77.i = sub i32 %size, %add73.i
  %txFrameToXpaOn.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 5
  %24 = ptrtoint ptr %txFrameToXpaOn.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %txFrameToXpaOn.i, align 1
  %conv78.i = zext i8 %25 to i32
  %call79.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr76.i, i32 noundef %sub77.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.37, i32 noundef %conv78.i) #6
  %add80.i = add i32 %call79.i, %add73.i
  %add.ptr83.i = getelementptr i8, ptr %buf, i32 %add80.i
  %sub84.i = sub i32 %size, %add80.i
  %thresh62.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 6
  %26 = ptrtoint ptr %thresh62.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %thresh62.i, align 1
  %conv85.i = zext i8 %27 to i32
  %call86.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr83.i, i32 noundef %sub84.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.38, i32 noundef %conv85.i) #6
  %add87.i = add i32 %call86.i, %add80.i
  %add.ptr90.i = getelementptr i8, ptr %buf, i32 %add87.i
  %sub91.i = sub i32 %size, %add87.i
  %noiseFloorThreshCh.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 7
  %28 = ptrtoint ptr %noiseFloorThreshCh.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %noiseFloorThreshCh.i, align 1
  %conv93.i = zext i8 %29 to i32
  %call94.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr90.i, i32 noundef %sub91.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.39, i32 noundef %conv93.i) #6
  %add95.i = add i32 %call94.i, %add87.i
  %add.ptr98.i = getelementptr i8, ptr %buf, i32 %add95.i
  %sub99.i = sub i32 %size, %add95.i
  %xpdGain.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 8
  %30 = ptrtoint ptr %xpdGain.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %xpdGain.i, align 1
  %conv100.i = zext i8 %31 to i32
  %call101.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr98.i, i32 noundef %sub99.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.40, i32 noundef %conv100.i) #6
  %add102.i = add i32 %call101.i, %add95.i
  %add.ptr105.i = getelementptr i8, ptr %buf, i32 %add102.i
  %sub106.i = sub i32 %size, %add102.i
  %xpd.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 9
  %32 = ptrtoint ptr %xpd.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %xpd.i, align 1
  %conv107.i = zext i8 %33 to i32
  %call108.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr105.i, i32 noundef %sub106.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.41, i32 noundef %conv107.i) #6
  %add109.i = add i32 %call108.i, %add102.i
  %add.ptr112.i = getelementptr i8, ptr %buf, i32 %add109.i
  %sub113.i = sub i32 %size, %add109.i
  %iqCalICh.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 10
  %34 = ptrtoint ptr %iqCalICh.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %iqCalICh.i, align 1
  %conv115.i = zext i8 %35 to i32
  %call116.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr112.i, i32 noundef %sub113.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.42, i32 noundef %conv115.i) #6
  %add117.i = add i32 %call116.i, %add109.i
  %add.ptr120.i = getelementptr i8, ptr %buf, i32 %add117.i
  %sub121.i = sub i32 %size, %add117.i
  %iqCalQCh.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 11
  %36 = ptrtoint ptr %iqCalQCh.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %iqCalQCh.i, align 1
  %conv123.i = zext i8 %37 to i32
  %call124.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr120.i, i32 noundef %sub121.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.43, i32 noundef %conv123.i) #6
  %add125.i = add i32 %call124.i, %add117.i
  %add.ptr128.i = getelementptr i8, ptr %buf, i32 %add125.i
  %sub129.i = sub i32 %size, %add125.i
  %pdGainOverlap.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 12
  %38 = ptrtoint ptr %pdGainOverlap.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %pdGainOverlap.i, align 1
  %conv130.i = zext i8 %39 to i32
  %call131.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr128.i, i32 noundef %sub129.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.44, i32 noundef %conv130.i) #6
  %add132.i = add i32 %call131.i, %add125.i
  %add.ptr135.i = getelementptr i8, ptr %buf, i32 %add132.i
  %sub136.i = sub i32 %size, %add132.i
  %version.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 25
  %40 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %version.i, align 1
  %conv137.i = zext i8 %41 to i32
  %call138.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr135.i, i32 noundef %sub136.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.45, i32 noundef %conv137.i) #6
  %add139.i = add i32 %call138.i, %add132.i
  %add.ptr142.i = getelementptr i8, ptr %buf, i32 %add139.i
  %sub143.i = sub i32 %size, %add139.i
  %ob_0.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 13
  %42 = ptrtoint ptr %ob_0.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %bf.load.i = load i16, ptr %ob_0.i, align 1
  %bf.lshr.i = lshr i16 %bf.load.i, 8
  %43 = and i16 %bf.lshr.i, 15
  %bf.cast.i = zext i16 %43 to i32
  %call145.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr142.i, i32 noundef %sub143.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.46, i32 noundef %bf.cast.i) #6
  %add146.i = add i32 %call145.i, %add139.i
  %add.ptr149.i = getelementptr i8, ptr %buf, i32 %add146.i
  %sub150.i = sub i32 %size, %add146.i
  %44 = ptrtoint ptr %ob_0.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %bf.load151.i = load i16, ptr %ob_0.i, align 1
  %bf.lshr152.i = lshr i16 %bf.load151.i, 12
  %bf.cast153.i = zext i16 %bf.lshr152.i to i32
  %call155.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr149.i, i32 noundef %sub150.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.47, i32 noundef %bf.cast153.i) #6
  %add156.i = add i32 %call155.i, %add146.i
  %add.ptr159.i = getelementptr i8, ptr %buf, i32 %add156.i
  %sub160.i = sub i32 %size, %add156.i
  %ob_2.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 26
  %45 = ptrtoint ptr %ob_2.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 6)
  %bf.load161.i = load i48, ptr %ob_2.i, align 1
  %bf.lshr162.i = lshr i48 %bf.load161.i, 40
  %46 = trunc i48 %bf.lshr162.i to i32
  %bf.cast164.i = and i32 %46, 15
  %call166.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr159.i, i32 noundef %sub160.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.48, i32 noundef %bf.cast164.i) #6
  %add167.i = add i32 %call166.i, %add156.i
  %add.ptr170.i = getelementptr i8, ptr %buf, i32 %add167.i
  %sub171.i = sub i32 %size, %add167.i
  %47 = ptrtoint ptr %ob_2.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 6)
  %bf.load172.i = load i48, ptr %ob_2.i, align 1
  %bf.lshr173.i = lshr i48 %bf.load172.i, 44
  %bf.cast174.i = trunc i48 %bf.lshr173.i to i32
  %call176.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr170.i, i32 noundef %sub171.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.49, i32 noundef %bf.cast174.i) #6
  %add177.i = add i32 %call176.i, %add167.i
  %add.ptr180.i = getelementptr i8, ptr %buf, i32 %add177.i
  %sub181.i = sub i32 %size, %add177.i
  %48 = ptrtoint ptr %ob_2.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 6)
  %bf.load182.i = load i48, ptr %ob_2.i, align 1
  %bf.lshr183.i = lshr i48 %bf.load182.i, 32
  %49 = trunc i48 %bf.lshr183.i to i32
  %bf.cast185.i = and i32 %49, 15
  %call187.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr180.i, i32 noundef %sub181.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.50, i32 noundef %bf.cast185.i) #6
  %add188.i = add i32 %call187.i, %add177.i
  %add.ptr191.i = getelementptr i8, ptr %buf, i32 %add188.i
  %sub192.i = sub i32 %size, %add188.i
  %50 = ptrtoint ptr %ob_0.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %bf.load193.i = load i16, ptr %ob_0.i, align 1
  %51 = and i16 %bf.load193.i, 15
  %bf.cast195.i = zext i16 %51 to i32
  %call197.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr191.i, i32 noundef %sub192.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.51, i32 noundef %bf.cast195.i) #6
  %add198.i = add i32 %call197.i, %add188.i
  %add.ptr201.i = getelementptr i8, ptr %buf, i32 %add198.i
  %sub202.i = sub i32 %size, %add198.i
  %52 = ptrtoint ptr %ob_0.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %bf.load203.i = load i16, ptr %ob_0.i, align 1
  %53 = lshr i16 %bf.load203.i, 4
  %54 = and i16 %53, 15
  %conv207.i = zext i16 %54 to i32
  %call208.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr201.i, i32 noundef %sub202.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.52, i32 noundef %conv207.i) #6
  %add209.i = add i32 %call208.i, %add198.i
  %add.ptr212.i = getelementptr i8, ptr %buf, i32 %add209.i
  %sub213.i = sub i32 %size, %add209.i
  %55 = ptrtoint ptr %ob_2.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 6)
  %bf.load214.i = load i48, ptr %ob_2.i, align 1
  %56 = trunc i48 %bf.load214.i to i32
  %57 = lshr i32 %56, 24
  %bf.cast217.i = and i32 %57, 15
  %call219.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr212.i, i32 noundef %sub213.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.53, i32 noundef %bf.cast217.i) #6
  %add220.i = add i32 %call219.i, %add209.i
  %add.ptr223.i = getelementptr i8, ptr %buf, i32 %add220.i
  %sub224.i = sub i32 %size, %add220.i
  %58 = ptrtoint ptr %ob_2.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 6)
  %bf.load225.i = load i48, ptr %ob_2.i, align 1
  %59 = trunc i48 %bf.load225.i to i32
  %60 = lshr i32 %59, 28
  %call230.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr223.i, i32 noundef %sub224.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.54, i32 noundef %60) #6
  %add231.i = add i32 %call230.i, %add220.i
  %add.ptr234.i = getelementptr i8, ptr %buf, i32 %add231.i
  %sub235.i = sub i32 %size, %add231.i
  %61 = ptrtoint ptr %ob_2.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 6)
  %bf.load236.i = load i48, ptr %ob_2.i, align 1
  %62 = trunc i48 %bf.load236.i to i32
  %63 = lshr i32 %62, 16
  %bf.cast239.i = and i32 %63, 15
  %call241.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr234.i, i32 noundef %sub235.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.55, i32 noundef %bf.cast239.i) #6
  %add242.i = add i32 %call241.i, %add231.i
  %add.ptr245.i = getelementptr i8, ptr %buf, i32 %add242.i
  %sub246.i = sub i32 %size, %add242.i
  %db2_0.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 24
  %64 = ptrtoint ptr %db2_0.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load247.i = load i8, ptr %db2_0.i, align 1
  %bf.clear248.i = and i8 %bf.load247.i, 15
  %conv249.i = zext i8 %bf.clear248.i to i32
  %call250.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr245.i, i32 noundef %sub246.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.56, i32 noundef %conv249.i) #6
  %add251.i = add i32 %call250.i, %add242.i
  %add.ptr254.i = getelementptr i8, ptr %buf, i32 %add251.i
  %sub255.i = sub i32 %size, %add251.i
  %65 = ptrtoint ptr %db2_0.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load256.i = load i8, ptr %db2_0.i, align 1
  %bf.lshr257.i = lshr i8 %bf.load256.i, 4
  %conv258.i = zext i8 %bf.lshr257.i to i32
  %call259.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr254.i, i32 noundef %sub255.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.57, i32 noundef %conv258.i) #6
  %add260.i = add i32 %call259.i, %add251.i
  %add.ptr263.i = getelementptr i8, ptr %buf, i32 %add260.i
  %sub264.i = sub i32 %size, %add260.i
  %66 = ptrtoint ptr %ob_2.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 6)
  %bf.load265.i = load i48, ptr %ob_2.i, align 1
  %67 = trunc i48 %bf.load265.i to i32
  %68 = lshr i32 %67, 12
  %bf.cast268.i = and i32 %68, 15
  %call270.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr263.i, i32 noundef %sub264.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.58, i32 noundef %bf.cast268.i) #6
  %add271.i = add i32 %call270.i, %add260.i
  %add.ptr274.i = getelementptr i8, ptr %buf, i32 %add271.i
  %sub275.i = sub i32 %size, %add271.i
  %69 = ptrtoint ptr %ob_2.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 6)
  %bf.load276.i = load i48, ptr %ob_2.i, align 1
  %70 = trunc i48 %bf.load276.i to i32
  %71 = lshr i32 %70, 8
  %bf.cast279.i = and i32 %71, 15
  %call281.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr274.i, i32 noundef %sub275.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.59, i32 noundef %bf.cast279.i) #6
  %add282.i = add i32 %call281.i, %add271.i
  %add.ptr285.i = getelementptr i8, ptr %buf, i32 %add282.i
  %sub286.i = sub i32 %size, %add282.i
  %72 = ptrtoint ptr %ob_2.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 6)
  %bf.load287.i = load i48, ptr %ob_2.i, align 1
  %73 = trunc i48 %bf.load287.i to i32
  %bf.cast289.i = and i32 %73, 15
  %call291.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr285.i, i32 noundef %sub286.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.60, i32 noundef %bf.cast289.i) #6
  %add292.i = add i32 %call291.i, %add282.i
  %add.ptr295.i = getelementptr i8, ptr %buf, i32 %add292.i
  %sub296.i = sub i32 %size, %add292.i
  %xpaBiasLvl.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 15
  %74 = ptrtoint ptr %xpaBiasLvl.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %xpaBiasLvl.i, align 1
  %conv297.i = zext i8 %75 to i32
  %call298.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr295.i, i32 noundef %sub296.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.61, i32 noundef %conv297.i) #6
  %add299.i = add i32 %call298.i, %add292.i
  %add.ptr302.i = getelementptr i8, ptr %buf, i32 %add299.i
  %sub303.i = sub i32 %size, %add299.i
  %txFrameToDataStart.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 16
  %76 = ptrtoint ptr %txFrameToDataStart.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %txFrameToDataStart.i, align 1
  %conv304.i = zext i8 %77 to i32
  %call305.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr302.i, i32 noundef %sub303.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.62, i32 noundef %conv304.i) #6
  %add306.i = add i32 %call305.i, %add299.i
  %add.ptr309.i = getelementptr i8, ptr %buf, i32 %add306.i
  %sub310.i = sub i32 %size, %add306.i
  %txFrameToPaOn.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 17
  %78 = ptrtoint ptr %txFrameToPaOn.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %txFrameToPaOn.i, align 1
  %conv311.i = zext i8 %79 to i32
  %call312.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr309.i, i32 noundef %sub310.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.63, i32 noundef %conv311.i) #6
  %add313.i = add i32 %call312.i, %add306.i
  %add.ptr316.i = getelementptr i8, ptr %buf, i32 %add313.i
  %sub317.i = sub i32 %size, %add313.i
  %ht40PowerIncForPdadc.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 18
  %80 = ptrtoint ptr %ht40PowerIncForPdadc.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %ht40PowerIncForPdadc.i, align 1
  %conv318.i = zext i8 %81 to i32
  %call319.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr316.i, i32 noundef %sub317.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.64, i32 noundef %conv318.i) #6
  %add320.i = add i32 %call319.i, %add313.i
  %add.ptr323.i = getelementptr i8, ptr %buf, i32 %add320.i
  %sub324.i = sub i32 %size, %add320.i
  %bswAtten.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 19
  %82 = ptrtoint ptr %bswAtten.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %bswAtten.i, align 1
  %conv326.i = zext i8 %83 to i32
  %call327.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr323.i, i32 noundef %sub324.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.65, i32 noundef %conv326.i) #6
  %add328.i = add i32 %call327.i, %add320.i
  %add.ptr331.i = getelementptr i8, ptr %buf, i32 %add328.i
  %sub332.i = sub i32 %size, %add328.i
  %bswMargin.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 20
  %84 = ptrtoint ptr %bswMargin.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %bswMargin.i, align 1
  %conv334.i = zext i8 %85 to i32
  %call335.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr331.i, i32 noundef %sub332.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.66, i32 noundef %conv334.i) #6
  %add336.i = add i32 %call335.i, %add328.i
  %add.ptr339.i = getelementptr i8, ptr %buf, i32 %add336.i
  %sub340.i = sub i32 %size, %add336.i
  %swSettleHt40.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 21
  %86 = ptrtoint ptr %swSettleHt40.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %swSettleHt40.i, align 1
  %conv341.i = zext i8 %87 to i32
  %call342.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr339.i, i32 noundef %sub340.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.67, i32 noundef %conv341.i) #6
  %add343.i = add i32 %call342.i, %add336.i
  %add.ptr346.i = getelementptr i8, ptr %buf, i32 %add343.i
  %sub347.i = sub i32 %size, %add343.i
  %xatten2Db.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 22
  %88 = ptrtoint ptr %xatten2Db.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %xatten2Db.i, align 1
  %conv349.i = zext i8 %89 to i32
  %call350.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr346.i, i32 noundef %sub347.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.68, i32 noundef %conv349.i) #6
  %add351.i = add i32 %call350.i, %add343.i
  %add.ptr354.i = getelementptr i8, ptr %buf, i32 %add351.i
  %sub355.i = sub i32 %size, %add351.i
  %xatten2Margin.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 23
  %90 = ptrtoint ptr %xatten2Margin.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %xatten2Margin.i, align 1
  %conv357.i = zext i8 %91 to i32
  %call358.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr354.i, i32 noundef %sub355.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.69, i32 noundef %conv357.i) #6
  %add359.i = add i32 %call358.i, %add351.i
  %add.ptr362.i = getelementptr i8, ptr %buf, i32 %add359.i
  %sub363.i = sub i32 %size, %add359.i
  %92 = ptrtoint ptr %ob_2.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 6)
  %bf.load364.i = load i48, ptr %ob_2.i, align 1
  %bf.lshr365.i = lshr i48 %bf.load364.i, 36
  %93 = trunc i48 %bf.lshr365.i to i32
  %bf.cast367.i = and i32 %93, 15
  %call369.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr362.i, i32 noundef %sub363.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.70, i32 noundef %bf.cast367.i) #6
  %add370.i = add i32 %call369.i, %add359.i
  %add.ptr373.i = getelementptr i8, ptr %buf, i32 %add370.i
  %sub374.i = sub i32 %size, %add370.i
  %94 = ptrtoint ptr %ob_2.i to i32
  call void @__asan_loadN_noabort(i32 %94, i32 6)
  %bf.load375.i = load i48, ptr %ob_2.i, align 1
  %95 = trunc i48 %bf.load375.i to i32
  %96 = lshr i32 %95, 20
  %bf.cast378.i = and i32 %96, 15
  %call380.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr373.i, i32 noundef %sub374.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.71, i32 noundef %bf.cast378.i) #6
  %add381.i = add i32 %call380.i, %add370.i
  %add.ptr384.i = getelementptr i8, ptr %buf, i32 %add381.i
  %sub385.i = sub i32 %size, %add381.i
  %tx_diversity.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 32
  %97 = ptrtoint ptr %tx_diversity.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %tx_diversity.i, align 1
  %conv386.i = zext i8 %98 to i32
  %call387.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr384.i, i32 noundef %sub385.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.72, i32 noundef %conv386.i) #6
  %add388.i = add i32 %call387.i, %add381.i
  br label %out

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %eeprom = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9
  %binBuildNumber1 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 12
  %99 = ptrtoint ptr %binBuildNumber1 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %binBuildNumber1, align 1
  %101 = tail call i32 @llvm.bswap.i32(i32 %100)
  %add.ptr3 = getelementptr i8, ptr %buf, i32 %len
  %sub4 = sub i32 %size, %len
  %version1.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 2
  %102 = ptrtoint ptr %version1.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %version1.i, align 4
  %104 = lshr i16 %103, 4
  %105 = and i16 %104, 15
  %106 = zext i16 %105 to i32
  %call6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3, i32 noundef %sub4, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %106) #6
  %add7 = add i32 %call6, %len
  %add.ptr9 = getelementptr i8, ptr %buf, i32 %add7
  %sub10 = sub i32 %size, %add7
  %107 = ptrtoint ptr %version1.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %version1.i, align 4
  %109 = and i16 %108, -241
  %110 = tail call i16 @llvm.bswap.i16(i16 %109) #6
  %and.i = zext i16 %110 to i32
  %call12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9, i32 noundef %sub10, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6, i32 noundef %and.i) #6
  %add13 = add i32 %call12, %add7
  %add.ptr17 = getelementptr i8, ptr %buf, i32 %add13
  %sub18 = sub i32 %size, %add13
  %checksum = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 1
  %111 = ptrtoint ptr %checksum to i32
  call void @__asan_loadN_noabort(i32 %111, i32 2)
  %112 = load i16, ptr %checksum, align 1
  %113 = tail call i16 @llvm.bswap.i16(i16 %112)
  %conv = zext i16 %113 to i32
  %call19 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17, i32 noundef %sub18, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7, i32 noundef %conv) #6
  %add20 = add i32 %call19, %add13
  %add.ptr24 = getelementptr i8, ptr %buf, i32 %add20
  %sub25 = sub i32 %size, %add20
  %114 = ptrtoint ptr %eeprom to i32
  call void @__asan_loadN_noabort(i32 %114, i32 2)
  %115 = load i16, ptr %eeprom, align 1
  %116 = tail call i16 @llvm.bswap.i16(i16 %115)
  %conv26 = zext i16 %116 to i32
  %call27 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr24, i32 noundef %sub25, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8, i32 noundef %conv26) #6
  %add28 = add i32 %call27, %add20
  %add.ptr32 = getelementptr i8, ptr %buf, i32 %add28
  %sub33 = sub i32 %size, %add28
  %regDmn = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 5
  %117 = ptrtoint ptr %regDmn to i32
  call void @__asan_loadN_noabort(i32 %117, i32 2)
  %118 = load i16, ptr %regDmn, align 1
  %119 = tail call i16 @llvm.bswap.i16(i16 %118)
  %conv34 = zext i16 %119 to i32
  %call35 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr32, i32 noundef %sub33, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, i32 noundef %conv34) #6
  %add36 = add i32 %call35, %add28
  %add.ptr40 = getelementptr i8, ptr %buf, i32 %add36
  %sub41 = sub i32 %size, %add36
  %arrayidx43 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 5, i32 1
  %120 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_loadN_noabort(i32 %120, i32 2)
  %121 = load i16, ptr %arrayidx43, align 1
  %122 = tail call i16 @llvm.bswap.i16(i16 %121)
  %conv44 = zext i16 %122 to i32
  %call45 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40, i32 noundef %sub41, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.10, i32 noundef %conv44) #6
  %add46 = add i32 %call45, %add36
  %add.ptr50 = getelementptr i8, ptr %buf, i32 %add46
  %sub51 = sub i32 %size, %add46
  %txMask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 8
  %123 = ptrtoint ptr %txMask to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %txMask, align 1
  %conv52 = zext i8 %124 to i32
  %call53 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50, i32 noundef %sub51, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11, i32 noundef %conv52) #6
  %add54 = add i32 %call53, %add46
  %add.ptr58 = getelementptr i8, ptr %buf, i32 %add54
  %sub59 = sub i32 %size, %add54
  %rxMask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 7
  %125 = ptrtoint ptr %rxMask to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %rxMask, align 1
  %conv60 = zext i8 %126 to i32
  %call61 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr58, i32 noundef %sub59, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.12, i32 noundef %conv60) #6
  %add62 = add i32 %call61, %add54
  %add.ptr66 = getelementptr i8, ptr %buf, i32 %add62
  %sub67 = sub i32 %size, %add62
  %opCapFlags = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 3
  %127 = ptrtoint ptr %opCapFlags to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %opCapFlags, align 1
  %129 = and i8 %128, 1
  %130 = zext i8 %129 to i32
  %call71 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr66, i32 noundef %sub67, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.13, i32 noundef %130) #6
  %add72 = add i32 %call71, %add62
  %add.ptr76 = getelementptr i8, ptr %buf, i32 %add72
  %sub77 = sub i32 %size, %add72
  %131 = ptrtoint ptr %opCapFlags to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %opCapFlags, align 1
  %133 = lshr i8 %132, 1
  %.lobit = and i8 %133, 1
  %134 = zext i8 %.lobit to i32
  %call86 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr76, i32 noundef %sub77, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.14, i32 noundef %134) #6
  %add87 = add i32 %call86, %add72
  %add.ptr91 = getelementptr i8, ptr %buf, i32 %add87
  %sub92 = sub i32 %size, %add87
  %135 = ptrtoint ptr %opCapFlags to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %opCapFlags, align 1
  %137 = lshr i8 %136, 5
  %.lobit334 = and i8 %137, 1
  %138 = zext i8 %.lobit334 to i32
  %call101 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr91, i32 noundef %sub92, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.15, i32 noundef %138) #6
  %add102 = add i32 %call101, %add87
  %add.ptr106 = getelementptr i8, ptr %buf, i32 %add102
  %sub107 = sub i32 %size, %add102
  %139 = ptrtoint ptr %opCapFlags to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %opCapFlags, align 1
  %141 = lshr i8 %140, 3
  %.lobit335 = and i8 %141, 1
  %142 = zext i8 %.lobit335 to i32
  %call116 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr106, i32 noundef %sub107, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.16, i32 noundef %142) #6
  %add117 = add i32 %call116, %add102
  %add.ptr121 = getelementptr i8, ptr %buf, i32 %add117
  %sub122 = sub i32 %size, %add117
  %143 = ptrtoint ptr %opCapFlags to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %opCapFlags, align 1
  %145 = lshr i8 %144, 4
  %.lobit336 = and i8 %145, 1
  %146 = zext i8 %.lobit336 to i32
  %call131 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr121, i32 noundef %sub122, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.17, i32 noundef %146) #6
  %add132 = add i32 %call131, %add117
  %add.ptr136 = getelementptr i8, ptr %buf, i32 %add132
  %sub137 = sub i32 %size, %add132
  %147 = ptrtoint ptr %opCapFlags to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %opCapFlags, align 1
  %149 = lshr i8 %148, 2
  %.lobit337 = and i8 %149, 1
  %150 = zext i8 %.lobit337 to i32
  %call146 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr136, i32 noundef %sub137, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.18, i32 noundef %150) #6
  %add147 = add i32 %call146, %add132
  %add.ptr151 = getelementptr i8, ptr %buf, i32 %add147
  %sub152 = sub i32 %size, %add147
  %eepMisc = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 4
  %151 = ptrtoint ptr %eepMisc to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %eepMisc, align 1
  %153 = and i8 %152, 1
  %154 = zext i8 %153 to i32
  %call160 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr151, i32 noundef %sub152, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.19, i32 noundef %154) #6
  %add161 = add i32 %call160, %add147
  %add.ptr165 = getelementptr i8, ptr %buf, i32 %add161
  %sub166 = sub i32 %size, %add161
  %shr = lshr i32 %101, 24
  %call168 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr165, i32 noundef %sub166, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20, i32 noundef %shr) #6
  %add169 = add i32 %add161, %call168
  %add.ptr173 = getelementptr i8, ptr %buf, i32 %add169
  %sub174 = sub i32 %size, %add169
  %shr175 = lshr i32 %101, 16
  %and176 = and i32 %shr175, 255
  %call177 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr173, i32 noundef %sub174, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.21, i32 noundef %and176) #6
  %add178 = add i32 %add169, %call177
  %add.ptr182 = getelementptr i8, ptr %buf, i32 %add178
  %sub183 = sub i32 %size, %add178
  %shr184 = lshr i32 %101, 8
  %and185 = and i32 %shr184, 255
  %call186 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr182, i32 noundef %sub183, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.22, i32 noundef %and185) #6
  %add187 = add i32 %add178, %call186
  %add.ptr191 = getelementptr i8, ptr %buf, i32 %add187
  %sub192 = sub i32 %size, %add187
  %txGainType = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 14
  %155 = ptrtoint ptr %txGainType to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %txGainType, align 1
  %conv193 = zext i8 %156 to i32
  %call194 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr191, i32 noundef %sub192, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.23, i32 noundef %conv193) #6
  %add195 = add i32 %call194, %add187
  %add.ptr198 = getelementptr i8, ptr %buf, i32 %add195
  %sub199 = sub i32 %size, %add195
  %macAddr = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 6
  %call200 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr198, i32 noundef %sub199, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef %macAddr) #6
  %add201 = add i32 %add195, %call200
  br label %out

out:                                              ; preds = %do.body, %if.then
  %len.addr.0 = phi i32 [ %add201, %do.body ], [ %add388.i, %if.then ]
  %157 = tail call i32 @llvm.umin.i32(i32 %len.addr.0, i32 %size)
  ret i32 %157
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath9k_hw_4k_get_eeprom_ver(ptr nocapture noundef readonly %ah) #2 align 64 {
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
define internal i32 @ath9k_hw_4k_get_eeprom_rev(ptr nocapture noundef readonly %ah) #1 align 64 {
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
define internal void @ath9k_hw_4k_set_board_values(ptr noundef %ah, ptr nocapture noundef readonly %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %modalHeader = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 9
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %0 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write, align 4
  %antCtrlCommon = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 13
  %2 = ptrtoint ptr %antCtrlCommon to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %antCtrlCommon, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void %1(ptr noundef %ah, i32 noundef %4, i32 noundef 39268) #6
  %enable_rmw_buffer.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 6
  %5 = ptrtoint ptr %enable_rmw_buffer.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %enable_rmw_buffer.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.do.end.i_crit_edge, label %if.then.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %6(ptr noundef %ah) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry.do.end.i_crit_edge
  %rmw.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %7 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmw.i, align 4
  %9 = ptrtoint ptr %modalHeader to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %modalHeader, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  %call.i = tail call i32 %8(ptr noundef %ah, i32 noundef 39264, i32 noundef %11, i32 noundef 0) #6
  %12 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmw.i, align 4
  %iqCalICh.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 10
  %14 = ptrtoint ptr %iqCalICh.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %iqCalICh.i, align 1
  %conv.i = zext i8 %15 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 5
  %and.i = and i32 %shl.i, 2016
  %iqCalQCh.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 11
  %16 = ptrtoint ptr %iqCalQCh.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %iqCalQCh.i, align 1
  %18 = and i8 %17, 31
  %and10.i = zext i8 %18 to i32
  %or.i = or i32 %and.i, %and10.i
  %call11.i = tail call i32 %13(ptr noundef %ah, i32 noundef 39200, i32 noundef %or.i, i32 noundef 2047) #6
  %version1.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 2
  %19 = ptrtoint ptr %version1.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %version1.i.i, align 4
  %21 = and i16 %20, -241
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %22)
  %cmp.i = icmp ugt i16 %22, 2
  br i1 %cmp.i, label %if.then14.i, label %do.end.i.if.end76.i_crit_edge

do.end.i.if.end76.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76.i

if.then14.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %txRxAttenCh.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 19
  %23 = ptrtoint ptr %txRxAttenCh.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %txRxAttenCh.i, align 1
  %25 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmw.i, align 4
  %bswMargin.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 20
  %27 = ptrtoint ptr %bswMargin.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bswMargin.i, align 1
  %conv19.i = zext i8 %28 to i32
  %shl20.i = shl nuw nsw i32 %conv19.i, 12
  %and21.i = and i32 %shl20.i, 126976
  %call22.i = tail call i32 %26(ptr noundef %ah, i32 noundef 41484, i32 noundef %and21.i, i32 noundef 126976) #6
  %29 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmw.i, align 4
  %bswAtten.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 19
  %31 = ptrtoint ptr %bswAtten.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bswAtten.i, align 1
  %33 = and i8 %32, 63
  %and28.i = zext i8 %33 to i32
  %call29.i = tail call i32 %30(ptr noundef %ah, i32 noundef 41484, i32 noundef %and28.i, i32 noundef 63) #6
  %34 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmw.i, align 4
  %xatten2Margin.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 23
  %36 = ptrtoint ptr %xatten2Margin.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %xatten2Margin.i, align 1
  %conv33.i = zext i8 %37 to i32
  %shl34.i = shl nuw nsw i32 %conv33.i, 17
  %and35.i = and i32 %shl34.i, 4063232
  %call36.i = tail call i32 %35(ptr noundef %ah, i32 noundef 41484, i32 noundef %and35.i, i32 noundef 4063232) #6
  %38 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmw.i, align 4
  %xatten2Db.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 22
  %40 = ptrtoint ptr %xatten2Db.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %xatten2Db.i, align 1
  %conv40.i = zext i8 %41 to i32
  %shl41.i = shl nuw nsw i32 %conv40.i, 6
  %and42.i = and i32 %shl41.i, 4032
  %call43.i = tail call i32 %39(ptr noundef %ah, i32 noundef 41484, i32 noundef %and42.i, i32 noundef 4032) #6
  %42 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmw.i, align 4
  %44 = ptrtoint ptr %bswMargin.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bswMargin.i, align 1
  %conv48.i = zext i8 %45 to i32
  %shl49.i = shl nuw nsw i32 %conv48.i, 12
  %and50.i = and i32 %shl49.i, 126976
  %call51.i = tail call i32 %43(ptr noundef %ah, i32 noundef 45580, i32 noundef %and50.i, i32 noundef 126976) #6
  %46 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmw.i, align 4
  %48 = ptrtoint ptr %bswAtten.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bswAtten.i, align 1
  %50 = and i8 %49, 63
  %and58.i = zext i8 %50 to i32
  %call59.i = tail call i32 %47(ptr noundef %ah, i32 noundef 45580, i32 noundef %and58.i, i32 noundef 63) #6
  %51 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rmw.i, align 4
  %53 = ptrtoint ptr %xatten2Margin.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %xatten2Margin.i, align 1
  %conv64.i = zext i8 %54 to i32
  %shl65.i = shl nuw nsw i32 %conv64.i, 17
  %and66.i = and i32 %shl65.i, 4063232
  %call67.i = tail call i32 %52(ptr noundef %ah, i32 noundef 45580, i32 noundef %and66.i, i32 noundef 4063232) #6
  %55 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rmw.i, align 4
  %57 = ptrtoint ptr %xatten2Db.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %xatten2Db.i, align 1
  %conv72.i = zext i8 %58 to i32
  %shl73.i = shl nuw nsw i32 %conv72.i, 6
  %and74.i = and i32 %shl73.i, 4032
  %call75.i = tail call i32 %56(ptr noundef %ah, i32 noundef 45580, i32 noundef %and74.i, i32 noundef 4032) #6
  %phi.cast.i = zext i8 %24 to i32
  %phi.bo.i = shl nuw nsw i32 %phi.cast.i, 7
  %phi.bo1.i = and i32 %phi.bo.i, 16256
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then14.i, %do.end.i.if.end76.i_crit_edge
  %txRxAttenLocal.addr.0.i = phi i32 [ %phi.bo1.i, %if.then14.i ], [ 2944, %do.end.i.if.end76.i_crit_edge ]
  %59 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rmw.i, align 4
  %call82.i = tail call i32 %60(ptr noundef %ah, i32 noundef 38984, i32 noundef %txRxAttenLocal.addr.0.i, i32 noundef 16256) #6
  %61 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rmw.i, align 4
  %rxTxMarginCh.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 20
  %63 = ptrtoint ptr %rxTxMarginCh.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %rxTxMarginCh.i, align 1
  %conv86.i = zext i8 %64 to i32
  %shl87.i = shl nuw nsw i32 %conv86.i, 14
  %and88.i = and i32 %shl87.i, 2080768
  %call89.i = tail call i32 %62(ptr noundef %ah, i32 noundef 38984, i32 noundef %and88.i, i32 noundef 2080768) #6
  %65 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rmw.i, align 4
  %call95.i = tail call i32 %66(ptr noundef %ah, i32 noundef 43080, i32 noundef %txRxAttenLocal.addr.0.i, i32 noundef 16256) #6
  %67 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rmw.i, align 4
  %69 = ptrtoint ptr %rxTxMarginCh.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %rxTxMarginCh.i, align 1
  %conv100.i = zext i8 %70 to i32
  %shl101.i = shl nuw nsw i32 %conv100.i, 14
  %and102.i = and i32 %shl101.i, 2080768
  %call103.i = tail call i32 %68(ptr noundef %ah, i32 noundef 43080, i32 noundef %and102.i, i32 noundef 2080768) #6
  %rmw_flush.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 7
  %71 = ptrtoint ptr %rmw_flush.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rmw_flush.i, align 4
  %tobool106.not.i = icmp eq ptr %72, null
  br i1 %tobool106.not.i, label %if.end76.i.ath9k_hw_4k_set_gain.exit_crit_edge, label %if.then107.i

if.end76.i.ath9k_hw_4k_set_gain.exit_crit_edge:   ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_4k_set_gain.exit

if.then107.i:                                     ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %72(ptr noundef %ah) #6
  br label %ath9k_hw_4k_set_gain.exit

ath9k_hw_4k_set_gain.exit:                        ; preds = %if.then107.i, %if.end76.i.ath9k_hw_4k_set_gain.exit_crit_edge
  %version = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 25
  %73 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %74)
  %cmp = icmp ugt i8 %74, 2
  br i1 %cmp, label %if.then, label %ath9k_hw_4k_set_gain.exit.if.end58_crit_edge

ath9k_hw_4k_set_gain.exit.if.end58_crit_edge:     ; preds = %ath9k_hw_4k_set_gain.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then:                                          ; preds = %ath9k_hw_4k_set_gain.exit
  %caps = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 6
  %antdiv_ctl1 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 26
  %75 = ptrtoint ptr %antdiv_ctl1 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 6)
  %bf.load = load i48, ptr %antdiv_ctl1, align 1
  %bf.lshr = lshr i48 %bf.load, 36
  %76 = trunc i48 %bf.lshr to i32
  %77 = trunc i48 %bf.load to i32
  %78 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ah, align 4
  %call = tail call i32 %79(ptr noundef %ah, i32 noundef 39340) #6
  %and = and i32 %call, -2130706433
  %bf.cast = shl i32 %76, 24
  %and8 = and i32 %bf.cast, 16777216
  %80 = shl i32 %77, 5
  %and11 = and i32 %80, 100663296
  %shl14 = and i32 %80, 402653184
  %81 = shl i32 %76, 28
  %and20 = and i32 %81, 536870912
  %and25 = and i32 %81, 1073741824
  %or = or i32 %and11, %and
  %or12 = or i32 %or, %shl14
  %or16 = or i32 %or12, %and8
  %or21 = or i32 %or16, %and20
  %or26 = or i32 %or21, %and25
  %82 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write, align 4
  tail call void %83(ptr noundef %ah, i32 noundef %or26, i32 noundef 39340) #6
  %84 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ah, align 4
  %call31 = tail call i32 %85(ptr noundef %ah, i32 noundef 39340) #6
  %86 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ah, align 4
  %call34 = tail call i32 %87(ptr noundef %ah, i32 noundef 41480) #6
  %and35 = and i32 %call34, -8193
  %88 = shl nuw nsw i32 %76, 10
  %shl38 = and i32 %88, 8192
  %or40 = or i32 %and35, %shl38
  %89 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %write, align 4
  tail call void %90(ptr noundef %ah, i32 noundef %or40, i32 noundef 41480) #6
  %91 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ah, align 4
  %call45 = tail call i32 %92(ptr noundef %ah, i32 noundef 41480) #6
  %93 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %caps, align 4
  %and46 = and i32 %94, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool.not = icmp eq i32 %and46, 0
  br i1 %tobool.not, label %if.then.if.end58thread-pre-split_crit_edge, label %if.then47

if.then.if.end58thread-pre-split_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58thread-pre-split

if.then47:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ah, align 4
  %call50 = tail call i32 %96(ptr noundef %ah, i32 noundef 39340) #6
  %and51 = and i32 %call50, -503348737
  %or53 = or i32 %and51, 301989888
  %97 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %write, align 4
  tail call void %98(ptr noundef %ah, i32 noundef %or53, i32 noundef 39340) #6
  br label %if.end58thread-pre-split

if.end58thread-pre-split:                         ; preds = %if.then47, %if.then.if.end58thread-pre-split_crit_edge
  %99 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %99)
  %.pr = load i8, ptr %version, align 1
  br label %if.end58

if.end58:                                         ; preds = %if.end58thread-pre-split, %ath9k_hw_4k_set_gain.exit.if.end58_crit_edge
  %100 = phi i8 [ %.pr, %if.end58thread-pre-split ], [ %74, %ath9k_hw_4k_set_gain.exit.if.end58_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %100)
  %cmp61 = icmp ugt i8 %100, 1
  br i1 %cmp61, label %if.then63, label %if.else

if.then63:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %ob_0 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 13
  %101 = ptrtoint ptr %ob_0 to i32
  call void @__asan_loadN_noabort(i32 %101, i32 2)
  %bf.load64 = load i16, ptr %ob_0, align 1
  %bf.lshr65 = lshr i16 %bf.load64, 8
  %102 = trunc i16 %bf.lshr65 to i8
  %bf.cast67 = and i8 %102, 15
  %bf.lshr69 = lshr i16 %bf.load64, 12
  %bf.cast70 = trunc i16 %bf.lshr69 to i8
  %ob_2 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 26
  %103 = ptrtoint ptr %ob_2 to i32
  call void @__asan_loadN_noabort(i32 %103, i32 6)
  %bf.load72 = load i48, ptr %ob_2, align 1
  %bf.lshr73 = lshr i48 %bf.load72, 40
  %104 = trunc i48 %bf.lshr73 to i8
  %bf.cast75 = and i8 %104, 15
  %bf.lshr78 = lshr i48 %bf.load72, 44
  %bf.cast79 = trunc i48 %bf.lshr78 to i8
  %bf.lshr82 = lshr i48 %bf.load72, 32
  %105 = trunc i48 %bf.lshr82 to i8
  %bf.cast84 = and i8 %105, 15
  %106 = trunc i16 %bf.load64 to i8
  %bf.cast88 = and i8 %106, 15
  %107 = lshr i8 %106, 4
  %bf.lshr96 = lshr i48 %bf.load72, 24
  %108 = trunc i48 %bf.lshr96 to i8
  %bf.cast98 = and i8 %108, 15
  %bf.lshr101 = lshr i48 %bf.load72, 28
  %109 = trunc i48 %bf.lshr101 to i8
  %bf.cast103 = and i8 %109, 15
  %bf.lshr106 = lshr i48 %bf.load72, 16
  %110 = trunc i48 %bf.lshr106 to i8
  %bf.cast108 = and i8 %110, 15
  %db2_0 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 24
  %111 = ptrtoint ptr %db2_0 to i32
  call void @__asan_load1_noabort(i32 %111)
  %bf.load110 = load i8, ptr %db2_0, align 1
  %bf.clear111 = and i8 %bf.load110, 15
  %bf.lshr114 = lshr i8 %bf.load110, 4
  %bf.lshr117 = lshr i48 %bf.load72, 12
  %112 = trunc i48 %bf.lshr117 to i8
  %bf.cast119 = and i8 %112, 15
  %bf.lshr122 = lshr i48 %bf.load72, 8
  %113 = trunc i48 %bf.lshr122 to i8
  %bf.cast124 = and i8 %113, 15
  %114 = trunc i48 %bf.load72 to i8
  %bf.cast128 = and i8 %114, 15
  br label %do.body

if.else:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %100)
  %cmp132 = icmp eq i8 %100, 1
  %ob_0135 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 13
  %115 = ptrtoint ptr %ob_0135 to i32
  call void @__asan_loadN_noabort(i32 %115, i32 2)
  %bf.load136 = load i16, ptr %ob_0135, align 1
  %bf.lshr137 = lshr i16 %bf.load136, 8
  %116 = trunc i16 %bf.lshr137 to i8
  %bf.cast139 = and i8 %116, 15
  br i1 %cmp132, label %if.then134, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %117 = trunc i16 %bf.load136 to i8
  %bf.cast186 = and i8 %117, 15
  br label %do.body

if.then134:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %bf.lshr143 = lshr i16 %bf.load136, 12
  %bf.cast144 = trunc i16 %bf.lshr143 to i8
  %118 = trunc i16 %bf.load136 to i8
  %bf.cast152 = and i8 %118, 15
  %119 = lshr i8 %118, 4
  %db2_0163 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 24
  %120 = ptrtoint ptr %db2_0163 to i32
  call void @__asan_load1_noabort(i32 %120)
  %bf.load164 = load i8, ptr %db2_0163, align 1
  %bf.clear165 = and i8 %bf.load164, 15
  %bf.lshr169 = lshr i8 %bf.load164, 4
  br label %do.body

do.body:                                          ; preds = %if.then134, %for.cond.preheader, %if.then63
  %ob.sroa.0.0 = phi i8 [ %bf.cast67, %if.then63 ], [ %bf.cast139, %if.then134 ], [ %bf.cast139, %for.cond.preheader ]
  %ob.sroa.8.0 = phi i8 [ %bf.cast70, %if.then63 ], [ %bf.cast144, %if.then134 ], [ %bf.cast139, %for.cond.preheader ]
  %ob.sroa.13.0 = phi i8 [ %bf.cast75, %if.then63 ], [ %bf.cast144, %if.then134 ], [ %bf.cast139, %for.cond.preheader ]
  %ob.sroa.18.0 = phi i8 [ %bf.cast79, %if.then63 ], [ %bf.cast144, %if.then134 ], [ %bf.cast139, %for.cond.preheader ]
  %ob.sroa.22.0 = phi i8 [ %bf.cast84, %if.then63 ], [ %bf.cast144, %if.then134 ], [ %bf.cast139, %for.cond.preheader ]
  %db1.sroa.0.0 = phi i8 [ %bf.cast88, %if.then63 ], [ %bf.cast152, %if.then134 ], [ %bf.cast186, %for.cond.preheader ]
  %db1.sroa.8.0 = phi i8 [ %107, %if.then63 ], [ %119, %if.then134 ], [ %bf.cast186, %for.cond.preheader ]
  %db1.sroa.12.0 = phi i8 [ %bf.cast98, %if.then63 ], [ %119, %if.then134 ], [ %bf.cast186, %for.cond.preheader ]
  %db1.sroa.16.0 = phi i8 [ %bf.cast103, %if.then63 ], [ %119, %if.then134 ], [ %bf.cast186, %for.cond.preheader ]
  %db1.sroa.20.0 = phi i8 [ %bf.cast108, %if.then63 ], [ %119, %if.then134 ], [ %bf.cast186, %for.cond.preheader ]
  %db2.sroa.0.0 = phi i8 [ %bf.clear111, %if.then63 ], [ %bf.clear165, %if.then134 ], [ %bf.cast186, %for.cond.preheader ]
  %db2.sroa.8.0 = phi i8 [ %bf.lshr114, %if.then63 ], [ %bf.lshr169, %if.then134 ], [ %bf.cast186, %for.cond.preheader ]
  %db2.sroa.12.0 = phi i8 [ %bf.cast119, %if.then63 ], [ %bf.lshr169, %if.then134 ], [ %bf.cast186, %for.cond.preheader ]
  %db2.sroa.16.0 = phi i8 [ %bf.cast124, %if.then63 ], [ %bf.lshr169, %if.then134 ], [ %bf.cast186, %for.cond.preheader ]
  %db2.sroa.20.0 = phi i8 [ %bf.cast128, %if.then63 ], [ %bf.lshr169, %if.then134 ], [ %bf.cast186, %for.cond.preheader ]
  %121 = ptrtoint ptr %enable_rmw_buffer.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %enable_rmw_buffer.i, align 4
  %tobool196.not = icmp eq ptr %122, null
  br i1 %tobool196.not, label %do.body.do.end_crit_edge, label %if.then197

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then197:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %122(ptr noundef %ah) #6
  br label %do.end

do.end:                                           ; preds = %if.then197, %do.body.do.end_crit_edge
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %123 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %124)
  %cmp201 = icmp eq i32 %124, 320
  %conv205 = zext i8 %ob.sroa.0.0 to i32
  br i1 %cmp201, label %if.then203, label %if.else214

if.then203:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30760, i32 noundef 1835008, i32 noundef 18, i32 noundef %conv205) #6
  %conv207 = zext i8 %ob.sroa.8.0 to i32
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30760, i32 noundef 229376, i32 noundef 15, i32 noundef %conv207) #6
  %conv209 = zext i8 %ob.sroa.13.0 to i32
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30760, i32 noundef 28672, i32 noundef 12, i32 noundef %conv209) #6
  %conv211 = zext i8 %db1.sroa.0.0 to i32
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30760, i32 noundef 14680064, i32 noundef 21, i32 noundef %conv211) #6
  %conv213 = zext i8 %db2.sroa.0.0 to i32
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30764, i32 noundef -536870912, i32 noundef 29, i32 noundef %conv213) #6
  br label %do.body246

if.else214:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30760, i32 noundef 14680064, i32 noundef 21, i32 noundef %conv205) #6
  %conv218 = zext i8 %ob.sroa.8.0 to i32
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30760, i32 noundef 1835008, i32 noundef 18, i32 noundef %conv218) #6
  %conv220 = zext i8 %ob.sroa.13.0 to i32
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30760, i32 noundef 229376, i32 noundef 15, i32 noundef %conv220) #6
  %conv222 = zext i8 %ob.sroa.18.0 to i32
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30760, i32 noundef 28672, i32 noundef 12, i32 noundef %conv222) #6
  %conv224 = zext i8 %ob.sroa.22.0 to i32
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30760, i32 noundef 3584, i32 noundef 9, i32 noundef %conv224) #6
  %conv226 = zext i8 %db1.sroa.0.0 to i32
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30760, i32 noundef 448, i32 noundef 6, i32 noundef %conv226) #6
  %conv228 = zext i8 %db1.sroa.8.0 to i32
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30760, i32 noundef 56, i32 noundef 3, i32 noundef %conv228) #6
  %conv230 = zext i8 %db1.sroa.12.0 to i32
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30760, i32 noundef 7, i32 noundef 0, i32 noundef %conv230) #6
  %conv232 = zext i8 %db1.sroa.16.0 to i32
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30764, i32 noundef -536870912, i32 noundef 29, i32 noundef %conv232) #6
  %conv234 = zext i8 %db1.sroa.20.0 to i32
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30764, i32 noundef 469762048, i32 noundef 26, i32 noundef %conv234) #6
  %conv236 = zext i8 %db2.sroa.0.0 to i32
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30764, i32 noundef 58720256, i32 noundef 23, i32 noundef %conv236) #6
  %conv238 = zext i8 %db2.sroa.8.0 to i32
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30764, i32 noundef 7340032, i32 noundef 20, i32 noundef %conv238) #6
  %conv240 = zext i8 %db2.sroa.12.0 to i32
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30764, i32 noundef 917504, i32 noundef 17, i32 noundef %conv240) #6
  %conv242 = zext i8 %db2.sroa.16.0 to i32
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30764, i32 noundef 114688, i32 noundef 14, i32 noundef %conv242) #6
  %conv244 = zext i8 %db2.sroa.20.0 to i32
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30764, i32 noundef 14336, i32 noundef 11, i32 noundef %conv244) #6
  br label %do.body246

do.body246:                                       ; preds = %if.else214, %if.then203
  %125 = ptrtoint ptr %rmw_flush.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rmw_flush.i, align 4
  %tobool248.not = icmp eq ptr %126, null
  br i1 %tobool248.not, label %do.body246.do.body255_crit_edge, label %if.then249

do.body246.do.body255_crit_edge:                  ; preds = %do.body246
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body255

if.then249:                                       ; preds = %do.body246
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %126(ptr noundef %ah) #6
  br label %do.body255

do.body255:                                       ; preds = %if.then249, %do.body246.do.body255_crit_edge
  %127 = ptrtoint ptr %enable_rmw_buffer.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %enable_rmw_buffer.i, align 4
  %tobool258.not = icmp eq ptr %128, null
  br i1 %tobool258.not, label %do.body255.do.end264_crit_edge, label %if.then259

do.body255.do.end264_crit_edge:                   ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end264

if.then259:                                       ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %128(ptr noundef %ah) #6
  br label %do.end264

do.end264:                                        ; preds = %if.then259, %do.body255.do.end264_crit_edge
  %129 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %rmw.i, align 4
  %switchSettling = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 26, i32 18
  %131 = ptrtoint ptr %switchSettling to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %switchSettling, align 1
  %conv266 = zext i8 %132 to i32
  %shl267 = shl nuw nsw i32 %conv266, 7
  %and268 = and i32 %shl267, 16256
  %call269 = tail call i32 %130(ptr noundef %ah, i32 noundef 38980, i32 noundef %and268, i32 noundef 16256) #6
  %133 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %rmw.i, align 4
  %adcDesiredSize = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1
  %135 = ptrtoint ptr %adcDesiredSize to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %adcDesiredSize, align 1
  %conv272 = zext i8 %136 to i32
  %call275 = tail call i32 %134(ptr noundef %ah, i32 noundef 38992, i32 noundef %conv272, i32 noundef 255) #6
  %137 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %rmw.i, align 4
  %txEndToXpaOff = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 3
  %139 = ptrtoint ptr %txEndToXpaOff to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %txEndToXpaOff, align 1
  %conv278 = zext i8 %140 to i32
  %shl279 = shl nuw nsw i32 %conv278, 16
  %shl283 = shl nuw i32 %conv278, 24
  %or285 = or i32 %shl279, %shl283
  %txFrameToXpaOn = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 5
  %141 = ptrtoint ptr %txFrameToXpaOn to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %txFrameToXpaOn, align 1
  %conv286 = zext i8 %142 to i32
  %or289 = or i32 %or285, %conv286
  %shl292 = shl nuw nsw i32 %conv286, 8
  %or294 = or i32 %or289, %shl292
  %call295 = tail call i32 %138(ptr noundef %ah, i32 noundef 38964, i32 noundef %or294, i32 noundef 0) #6
  %143 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %rmw.i, align 4
  %txEndToRxOn = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 4
  %145 = ptrtoint ptr %txEndToRxOn to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %txEndToRxOn, align 1
  %conv298 = zext i8 %146 to i32
  %shl299 = shl nuw nsw i32 %conv298, 16
  %call301 = tail call i32 %144(ptr noundef %ah, i32 noundef 38952, i32 noundef %shl299, i32 noundef 16711680) #6
  %147 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %148)
  %cmp304 = icmp eq i32 %148, 320
  br i1 %cmp304, label %land.lhs.true, label %do.end264.if.end318_crit_edge

do.end264.if.end318_crit_edge:                    ; preds = %do.end264
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end318

land.lhs.true:                                    ; preds = %do.end264
  %macRev = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 4
  %149 = ptrtoint ptr %macRev to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %macRev, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %150)
  %cmp308 = icmp eq i16 %150, 0
  br i1 %cmp308, label %if.then310, label %land.lhs.true.if.end318_crit_edge

land.lhs.true.if.end318_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end318

if.then310:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %151 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %rmw.i, align 4
  %153 = ptrtoint ptr %txEndToRxOn to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %txEndToRxOn, align 1
  %conv314 = zext i8 %154 to i32
  %shl315 = shl nuw nsw i32 %conv314, 16
  %call317 = tail call i32 %152(ptr noundef %ah, i32 noundef 38952, i32 noundef %shl315, i32 noundef 16711680) #6
  br label %if.end318

if.end318:                                        ; preds = %if.then310, %land.lhs.true.if.end318_crit_edge, %do.end264.if.end318_crit_edge
  %155 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %rmw.i, align 4
  %thresh62 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 6
  %157 = ptrtoint ptr %thresh62 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %thresh62, align 1
  %conv321 = zext i8 %158 to i32
  %shl322 = shl nuw nsw i32 %conv321, 12
  %call324 = tail call i32 %156(ptr noundef %ah, i32 noundef 39012, i32 noundef %shl322, i32 noundef 1044480) #6
  %159 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %rmw.i, align 4
  %161 = ptrtoint ptr %thresh62 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %thresh62, align 1
  %conv328 = zext i8 %162 to i32
  %call331 = tail call i32 %160(ptr noundef %ah, i32 noundef 39352, i32 noundef %conv328, i32 noundef 255) #6
  %163 = ptrtoint ptr %version1.i.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %version1.i.i, align 4
  %165 = and i16 %164, -241
  %166 = tail call i16 @llvm.bswap.i16(i16 %165) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %166)
  %cmp333 = icmp ugt i16 %166, 1
  br i1 %cmp333, label %if.then335, label %if.end318.if.end348_crit_edge

if.end318.if.end348_crit_edge:                    ; preds = %if.end318
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end348

if.then335:                                       ; preds = %if.end318
  call void @__sanitizer_cov_trace_pc() #8
  %167 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %rmw.i, align 4
  %txFrameToDataStart = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 16
  %169 = ptrtoint ptr %txFrameToDataStart to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %txFrameToDataStart, align 1
  %conv338 = zext i8 %170 to i32
  %call341 = tail call i32 %168(ptr noundef %ah, i32 noundef 38948, i32 noundef %conv338, i32 noundef 255) #6
  %171 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %rmw.i, align 4
  %txFrameToPaOn = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 17
  %173 = ptrtoint ptr %txFrameToPaOn to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %txFrameToPaOn, align 1
  %conv344 = zext i8 %174 to i32
  %shl345 = shl nuw nsw i32 %conv344, 8
  %call347 = tail call i32 %172(ptr noundef %ah, i32 noundef 38948, i32 noundef %shl345, i32 noundef 65280) #6
  br label %if.end348

if.end348:                                        ; preds = %if.then335, %if.end318.if.end348_crit_edge
  %175 = ptrtoint ptr %version1.i.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %version1.i.i, align 4
  %177 = and i16 %176, -241
  %178 = tail call i16 @llvm.bswap.i16(i16 %177) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %178)
  %cmp350 = icmp ugt i16 %178, 2
  br i1 %cmp350, label %if.then352, label %if.end348.do.body365_crit_edge

if.end348.do.body365_crit_edge:                   ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body365

if.then352:                                       ; preds = %if.end348
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %179 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %channelFlags, align 2
  %181 = and i16 %180, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %181)
  %tobool355.not = icmp eq i16 %181, 0
  br i1 %tobool355.not, label %if.then352.do.body365_crit_edge, label %if.then356

if.then352.do.body365_crit_edge:                  ; preds = %if.then352
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body365

if.then356:                                       ; preds = %if.then352
  call void @__sanitizer_cov_trace_pc() #8
  %182 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %rmw.i, align 4
  %swSettleHt40 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 21
  %184 = ptrtoint ptr %swSettleHt40 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %swSettleHt40, align 1
  %conv359 = zext i8 %185 to i32
  %shl360 = shl nuw nsw i32 %conv359, 7
  %and361 = and i32 %shl360, 16256
  %call362 = tail call i32 %183(ptr noundef %ah, i32 noundef 38980, i32 noundef %and361, i32 noundef 16256) #6
  br label %do.body365

do.body365:                                       ; preds = %if.then356, %if.then352.do.body365_crit_edge, %if.end348.do.body365_crit_edge
  %186 = ptrtoint ptr %rmw_flush.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %rmw_flush.i, align 4
  %tobool368.not = icmp eq ptr %187, null
  br i1 %tobool368.not, label %do.body365.do.end374_crit_edge, label %if.then369

do.body365.do.end374_crit_edge:                   ; preds = %do.body365
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end374

if.then369:                                       ; preds = %do.body365
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %187(ptr noundef %ah) #6
  br label %do.end374

do.end374:                                        ; preds = %if.then369, %do.body365.do.end374_crit_edge
  %txGainType = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 14
  %188 = ptrtoint ptr %txGainType to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %txGainType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %cmp379 = icmp eq i8 %189, 0
  br i1 %cmp379, label %land.lhs.true381, label %do.end374.if.end432_crit_edge

do.end374.if.end432_crit_edge:                    ; preds = %do.end374
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end432

land.lhs.true381:                                 ; preds = %do.end374
  %bb_scale_smrt_antenna = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 34
  %190 = ptrtoint ptr %bb_scale_smrt_antenna to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %bb_scale_smrt_antenna, align 1
  %192 = and i8 %191, 31
  %conv382 = zext i8 %192 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %cmp383.not = icmp eq i8 %192, 0
  br i1 %cmp383.not, label %land.lhs.true381.if.end432_crit_edge, label %if.then385

land.lhs.true381.if.end432_crit_edge:             ; preds = %land.lhs.true381
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end432

if.then385:                                       ; preds = %land.lhs.true381
  %mul = mul nuw nsw i32 %conv382, 34636833
  %193 = ptrtoint ptr %enable_rmw_buffer.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %enable_rmw_buffer.i, align 4
  %tobool391.not = icmp eq ptr %194, null
  br i1 %tobool391.not, label %if.then385.do.end397_crit_edge, label %if.then392

if.then385.do.end397_crit_edge:                   ; preds = %if.then385
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end397

if.then392:                                       ; preds = %if.then385
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %194(ptr noundef %ah) #6
  br label %do.end397

do.end397:                                        ; preds = %if.then392, %if.then385.do.end397_crit_edge
  %195 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %rmw.i, align 4
  %call400 = tail call i32 %196(ptr noundef %ah, i32 noundef 41592, i32 noundef %mul, i32 noundef 1073741823) #6
  %197 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %rmw.i, align 4
  %call403 = tail call i32 %198(ptr noundef %ah, i32 noundef 41876, i32 noundef %mul, i32 noundef 1073741823) #6
  %199 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %rmw.i, align 4
  %call406 = tail call i32 %200(ptr noundef %ah, i32 noundef 41948, i32 noundef %mul, i32 noundef 1073741823) #6
  %mul408 = mul nuw nsw i32 %conv382, 32801
  %201 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %rmw.i, align 4
  %call412 = tail call i32 %202(ptr noundef %ah, i32 noundef 41596, i32 noundef %mul408, i32 noundef 1016831) #6
  %mul414 = mul nuw nsw i32 %conv382, 33
  %203 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %rmw.i, align 4
  %call418 = tail call i32 %204(ptr noundef %ah, i32 noundef 41880, i32 noundef %mul414, i32 noundef 1023) #6
  %205 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %rmw.i, align 4
  %call421 = tail call i32 %206(ptr noundef %ah, i32 noundef 41952, i32 noundef %mul414, i32 noundef 1023) #6
  %207 = ptrtoint ptr %rmw_flush.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %rmw_flush.i, align 4
  %tobool425.not = icmp eq ptr %208, null
  br i1 %tobool425.not, label %do.end397.if.end432_crit_edge, label %if.then426

do.end397.if.end432_crit_edge:                    ; preds = %do.end397
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end432

if.then426:                                       ; preds = %do.end397
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %208(ptr noundef %ah) #6
  br label %if.end432

if.end432:                                        ; preds = %if.then426, %do.end397.if.end432_crit_edge, %land.lhs.true381.if.end432_crit_edge, %do.end374.if.end432_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_hw_4k_set_txpower(ptr noundef %ah, ptr noundef %chan, i16 noundef zeroext %cfgCtl, i8 noundef zeroext %twiceAntennaReduction, i8 noundef zeroext %powerLimit, i1 noundef zeroext %test) #0 align 64 {
entry:
  %gainBoundaries.i = alloca [4 x i16], align 8
  %xpdGainValues.i = alloca [2 x i16], align 4
  %centers.i = alloca %struct.chan_centers, align 2
  %targetPowerOfdm.i = alloca %struct.cal_target_power_leg, align 1
  %targetPowerCck.i = alloca %struct.cal_target_power_leg, align 1
  %targetPowerOfdmExt.i = alloca %struct.cal_target_power_leg, align 1
  %targetPowerCckExt.i = alloca %struct.cal_target_power_leg, align 1
  %targetPowerHt20.i = alloca %struct.cal_target_power_ht, align 1
  %targetPowerHt40.i = alloca %struct.cal_target_power_ht, align 1
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
  %ht40PowerIncForPdadc2 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 18
  %5 = ptrtoint ptr %ht40PowerIncForPdadc2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ht40PowerIncForPdadc2, align 1
  %phi.cast = zext i8 %6 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ht40PowerIncForPdadc.0 = phi i32 [ %phi.cast, %if.then ], [ 2, %entry.if.end_crit_edge ]
  %conv = zext i8 %twiceAntennaReduction to i16
  %conv3 = zext i8 %powerLimit to i16
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %centers.i) #6
  %7 = ptrtoint ptr %centers.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %centers.i, align 2, !annotation !163
  %8 = getelementptr inbounds %struct.chan_centers, ptr %centers.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %8, align 2, !annotation !163
  %10 = getelementptr inbounds %struct.chan_centers, ptr %centers.i, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %10, align 2, !annotation !163
  %eeprom.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %targetPowerOfdm.i) #6
  %12 = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerOfdm.i, i32 0, i32 1
  %13 = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerOfdm.i, i32 0, i32 1, i32 1
  %14 = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerOfdm.i, i32 0, i32 1, i32 2
  %15 = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerOfdm.i, i32 0, i32 1, i32 3
  %16 = call ptr @memset(ptr %targetPowerOfdm.i, i32 255, i32 5)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %targetPowerCck.i) #6
  %17 = call ptr @memset(ptr %targetPowerCck.i, i32 0, i32 5)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %targetPowerOfdmExt.i) #6
  %18 = call ptr @memset(ptr %targetPowerOfdmExt.i, i32 0, i32 5)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %targetPowerCckExt.i) #6
  %19 = call ptr @memset(ptr %targetPowerCckExt.i, i32 0, i32 5)
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %targetPowerHt20.i) #6
  %20 = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt20.i, i32 0, i32 1
  %21 = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt20.i, i32 0, i32 1, i32 1
  %22 = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt20.i, i32 0, i32 1, i32 2
  %23 = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt20.i, i32 0, i32 1, i32 3
  %24 = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt20.i, i32 0, i32 1, i32 4
  %25 = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt20.i, i32 0, i32 1, i32 5
  %26 = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt20.i, i32 0, i32 1, i32 6
  %27 = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt20.i, i32 0, i32 1, i32 7
  %28 = call ptr @memset(ptr %targetPowerHt20.i, i32 255, i32 9)
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %targetPowerHt40.i) #6
  %29 = call ptr @memset(ptr %targetPowerHt40.i, i32 0, i32 9)
  call void @ath9k_hw_get_channel_centers(ptr noundef %ah, ptr noundef %chan, ptr noundef nonnull %centers.i) #6
  %sub.i = sub nsw i16 %conv3, %conv
  %calTargetPowerCck.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 27
  call void @ath9k_hw_get_legacy_target_powers(ptr noundef %ah, ptr noundef %chan, ptr noundef %calTargetPowerCck.i, i16 noundef zeroext 3, ptr noundef nonnull %targetPowerCck.i, i16 noundef zeroext 4, i1 noundef zeroext false) #6
  %calTargetPower2G.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 34
  call void @ath9k_hw_get_legacy_target_powers(ptr noundef %ah, ptr noundef %chan, ptr noundef %calTargetPower2G.i, i16 noundef zeroext 4, ptr noundef nonnull %targetPowerOfdm.i, i16 noundef zeroext 4, i1 noundef zeroext false) #6
  %calTargetPower2GHT20.i = getelementptr inbounds %struct.ar5416_eeprom_4k, ptr %eeprom.i, i32 0, i32 7
  call void @ath9k_hw_get_target_powers(ptr noundef %ah, ptr noundef %chan, ptr noundef %calTargetPower2GHT20.i, i16 noundef zeroext 4, ptr noundef nonnull %targetPowerHt20.i, i16 noundef zeroext 8, i1 noundef zeroext false) #6
  %channelFlags.i = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %30 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %channelFlags.i, align 2
  %32 = and i16 %31, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool.not.i = icmp eq i16 %32, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %calTargetPower2GHT40.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 1, i32 0, i32 2
  call void @ath9k_hw_get_target_powers(ptr noundef %ah, ptr noundef %chan, ptr noundef %calTargetPower2GHT40.i, i16 noundef zeroext 4, ptr noundef nonnull %targetPowerHt40.i, i16 noundef zeroext 8, i1 noundef zeroext true) #6
  call void @ath9k_hw_get_legacy_target_powers(ptr noundef %ah, ptr noundef %chan, ptr noundef %calTargetPowerCck.i, i16 noundef zeroext 3, ptr noundef nonnull %targetPowerCckExt.i, i16 noundef zeroext 4, i1 noundef zeroext true) #6
  call void @ath9k_hw_get_legacy_target_powers(ptr noundef %ah, ptr noundef %chan, ptr noundef %calTargetPower2G.i, i16 noundef zeroext 4, ptr noundef nonnull %targetPowerOfdmExt.i, i16 noundef zeroext 4, i1 noundef zeroext true) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %numCtlModes.0.i = phi i32 [ 6, %if.then.i ], [ 3, %if.end.if.end.i_crit_edge ]
  %ctlIndex.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 1, i32 13
  %33 = and i16 %cfgCtl, -16
  %ctlData.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 1, i32 19
  %txchainmask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 74
  call void @__sanitizer_cov_trace_const_cmp2(i16 224, i16 %33)
  %cmp95.i = icmp eq i16 %33, 224
  %tPow2x221.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerOfdmExt.i, i32 0, i32 1
  %tPow2x203.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerCckExt.i, i32 0, i32 1
  %arrayidx244.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 0
  %arrayidx244.1.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 1
  %arrayidx244.2.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 2
  %arrayidx244.3.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 3
  %arrayidx244.4.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 4
  %arrayidx244.5.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 5
  %arrayidx244.6.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 6
  %arrayidx244.7.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 7
  %arrayidx133.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerCck.i, i32 0, i32 1, i32 0
  %arrayidx133.1.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerCck.i, i32 0, i32 1, i32 1
  %arrayidx133.2.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerCck.i, i32 0, i32 1, i32 2
  %arrayidx133.3.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerCck.i, i32 0, i32 1, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %sw.epilog.i.for.body.i_crit_edge, %if.end.i
  %indvars.iv.i = phi i32 [ 0, %if.end.i ], [ %indvars.iv.next.i, %sw.epilog.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr @ath9k_hw_set_4k_power_per_rate_table.ctlModesFor11g, i32 %indvars.iv.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx.i, align 2
  %.off.i = add i16 %35, -7
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off.i)
  %switch.i = icmp ult i16 %.off.i, 2
  br i1 %switch.i, label %if.then30.i, label %if.else.i

if.then30.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %centers.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %centers.i, align 2
  br label %if.end39.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %35)
  %tobool35.not.i = icmp sgt i16 %35, -1
  br i1 %tobool35.not.i, label %if.else37.i, label %if.then36.i

if.then36.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %10, align 2
  br label %if.end39.i

if.else37.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %8, align 2
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.else37.i, %if.then36.i, %if.then30.i
  %freq.0.i = phi i16 [ %37, %if.then30.i ], [ %39, %if.then36.i ], [ %41, %if.else37.i ]
  %42 = and i16 %35, 15
  %or474.i = or i16 %42, %33
  %or.i = zext i16 %or474.i to i32
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %if.end39.i
  %i.0484.i = phi i32 [ 0, %if.end39.i ], [ %inc.i, %for.inc.i.land.rhs.i_crit_edge ]
  %twiceMaxEdgePower.0483.i = phi i16 [ 63, %if.end39.i ], [ %twiceMaxEdgePower.1.i, %for.inc.i.land.rhs.i_crit_edge ]
  %arrayidx43.i = getelementptr [12 x i8], ptr %ctlIndex.i, i32 0, i32 %i.0484.i
  %43 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx43.i, align 1
  %conv44.i = zext i8 %44 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool45.not.i = icmp eq i8 %44, 0
  br i1 %tobool45.not.i, label %land.rhs.i.for.end.i_crit_edge, label %for.body46.i

land.rhs.i.for.end.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body46.i:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %conv44.i)
  %cmp56.i = icmp eq i32 %or.i, %conv44.i
  br i1 %cmp56.i, label %for.body46.i.if.then72.i_crit_edge, label %lor.lhs.false.i

for.body46.i.if.then72.i_crit_edge:               ; preds = %for.body46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then72.i

lor.lhs.false.i:                                  ; preds = %for.body46.i
  %and68.i = and i32 %conv44.i, 15
  %or69.i = or i32 %and68.i, 224
  call void @__sanitizer_cov_trace_cmp4(i32 %or69.i, i32 %or.i)
  %cmp70.i = icmp eq i32 %or69.i, %or.i
  br i1 %cmp70.i, label %lor.lhs.false.i.if.then72.i_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

lor.lhs.false.i.if.then72.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then72.i

if.then72.i:                                      ; preds = %lor.lhs.false.i.if.then72.i_crit_edge, %for.body46.i.if.then72.i_crit_edge
  %arrayidx73.i = getelementptr [12 x %struct.cal_ctl_data_4k], ptr %ctlData.i, i32 0, i32 %i.0484.i
  %45 = ptrtoint ptr %txchainmask.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %txchainmask.i, align 4
  %conv74.i = zext i8 %46 to i32
  %47 = lshr i32 %conv74.i, 2
  %and75.i = and i32 %47, 1
  %48 = lshr i32 %conv74.i, 1
  %and79.i = and i32 %48, 1
  %and82.i = and i32 %conv74.i, 1
  %add.i = add nsw i32 %and82.i, -1
  %add83.i = add nsw i32 %add.i, %and79.i
  %sub84.i = add nsw i32 %add83.i, %and75.i
  %arrayidx85.i = getelementptr [1 x [4 x %struct.cal_ctl_edges]], ptr %arrayidx73.i, i32 0, i32 %sub84.i
  %49 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %channelFlags.i, align 2
  %51 = and i16 %50, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool90.not.i = icmp eq i16 %51, 0
  %call.i = call zeroext i16 @ath9k_hw_get_max_edge_power(i16 noundef zeroext %freq.0.i, ptr noundef %arrayidx85.i, i1 noundef zeroext %tobool90.not.i, i32 noundef 4) #6
  br i1 %cmp95.i, label %if.then97.i, label %if.then72.i.for.end.i_crit_edge

if.then72.i.for.end.i_crit_edge:                  ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.then97.i:                                      ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #8
  %52 = call i16 @llvm.umin.i16(i16 %twiceMaxEdgePower.0483.i, i16 %call.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then97.i, %lor.lhs.false.i.for.inc.i_crit_edge
  %twiceMaxEdgePower.1.i = phi i16 [ %52, %if.then97.i ], [ %twiceMaxEdgePower.0483.i, %lor.lhs.false.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.0484.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 12
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then72.i.for.end.i_crit_edge, %land.rhs.i.for.end.i_crit_edge
  %twiceMaxEdgePower.2.i = phi i16 [ %twiceMaxEdgePower.0483.i, %land.rhs.i.for.end.i_crit_edge ], [ %twiceMaxEdgePower.1.i, %for.inc.i.for.end.i_crit_edge ], [ %call.i, %if.then72.i.for.end.i_crit_edge ]
  %53 = call i16 @llvm.umin.i16(i16 %sub.i, i16 %twiceMaxEdgePower.2.i) #6
  %54 = call i16 @llvm.umin.i16(i16 %53, i16 63) #6
  %cond123.in.off0.i = trunc i16 %54 to i8
  %55 = zext i16 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.75)
  switch i16 %35, label %for.end.i.sw.epilog.i_crit_edge [
    i16 1, label %for.body132.preheader.i
    i16 2, label %for.body156.preheader.i
    i16 5, label %for.body181.preheader.i
    i16 -32767, label %for.end.i.sw.epilog.sink.split.i_crit_edge
    i16 -32766, label %sw.bb220.i
    i16 7, label %for.body242.preheader.i
  ]

for.end.i.sw.epilog.sink.split.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

for.end.i.sw.epilog.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

for.body242.preheader.i:                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %arrayidx244.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx244.i, align 1
  %58 = call i8 @llvm.umin.i8(i8 %57, i8 %cond123.in.off0.i) #6
  %59 = ptrtoint ptr %arrayidx244.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %arrayidx244.i, align 1
  %60 = ptrtoint ptr %arrayidx244.1.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx244.1.i, align 1
  %62 = call i8 @llvm.umin.i8(i8 %61, i8 %cond123.in.off0.i) #6
  %63 = ptrtoint ptr %arrayidx244.1.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx244.1.i, align 1
  %64 = ptrtoint ptr %arrayidx244.2.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx244.2.i, align 1
  %66 = call i8 @llvm.umin.i8(i8 %65, i8 %cond123.in.off0.i) #6
  %67 = ptrtoint ptr %arrayidx244.2.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %arrayidx244.2.i, align 1
  %68 = ptrtoint ptr %arrayidx244.3.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx244.3.i, align 1
  %70 = call i8 @llvm.umin.i8(i8 %69, i8 %cond123.in.off0.i) #6
  %71 = ptrtoint ptr %arrayidx244.3.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %arrayidx244.3.i, align 1
  %72 = ptrtoint ptr %arrayidx244.4.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx244.4.i, align 1
  %74 = call i8 @llvm.umin.i8(i8 %73, i8 %cond123.in.off0.i) #6
  %75 = ptrtoint ptr %arrayidx244.4.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %arrayidx244.4.i, align 1
  %76 = ptrtoint ptr %arrayidx244.5.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx244.5.i, align 1
  %78 = call i8 @llvm.umin.i8(i8 %77, i8 %cond123.in.off0.i) #6
  %79 = ptrtoint ptr %arrayidx244.5.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %arrayidx244.5.i, align 1
  %80 = ptrtoint ptr %arrayidx244.6.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx244.6.i, align 1
  %82 = call i8 @llvm.umin.i8(i8 %81, i8 %cond123.in.off0.i) #6
  %83 = ptrtoint ptr %arrayidx244.6.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %arrayidx244.6.i, align 1
  br label %sw.epilog.sink.split.i

for.body181.preheader.i:                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %20, align 1
  %86 = call i8 @llvm.umin.i8(i8 %85, i8 %cond123.in.off0.i) #6
  %87 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %20, align 1
  %88 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %21, align 1
  %90 = call i8 @llvm.umin.i8(i8 %89, i8 %cond123.in.off0.i) #6
  %91 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %21, align 1
  %92 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %22, align 1
  %94 = call i8 @llvm.umin.i8(i8 %93, i8 %cond123.in.off0.i) #6
  %95 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %22, align 1
  %96 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %23, align 1
  %98 = call i8 @llvm.umin.i8(i8 %97, i8 %cond123.in.off0.i) #6
  %99 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %23, align 1
  %100 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %24, align 1
  %102 = call i8 @llvm.umin.i8(i8 %101, i8 %cond123.in.off0.i) #6
  %103 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %24, align 1
  %104 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %25, align 1
  %106 = call i8 @llvm.umin.i8(i8 %105, i8 %cond123.in.off0.i) #6
  %107 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %25, align 1
  %108 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %26, align 1
  %110 = call i8 @llvm.umin.i8(i8 %109, i8 %cond123.in.off0.i) #6
  %111 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %26, align 1
  br label %sw.epilog.sink.split.i

for.body156.preheader.i:                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %112 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %12, align 1
  %114 = call i8 @llvm.umin.i8(i8 %113, i8 %cond123.in.off0.i) #6
  %115 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %12, align 1
  %116 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %13, align 1
  %118 = call i8 @llvm.umin.i8(i8 %117, i8 %cond123.in.off0.i) #6
  %119 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %13, align 1
  %120 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %14, align 1
  %122 = call i8 @llvm.umin.i8(i8 %121, i8 %cond123.in.off0.i) #6
  %123 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %14, align 1
  br label %sw.epilog.sink.split.i

for.body132.preheader.i:                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %124 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx133.i, align 1
  %126 = call i8 @llvm.umin.i8(i8 %125, i8 %cond123.in.off0.i) #6
  %127 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %126, ptr %arrayidx133.i, align 1
  %128 = ptrtoint ptr %arrayidx133.1.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx133.1.i, align 1
  %130 = call i8 @llvm.umin.i8(i8 %129, i8 %cond123.in.off0.i) #6
  %131 = ptrtoint ptr %arrayidx133.1.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %arrayidx133.1.i, align 1
  %132 = ptrtoint ptr %arrayidx133.2.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx133.2.i, align 1
  %134 = call i8 @llvm.umin.i8(i8 %133, i8 %cond123.in.off0.i) #6
  %135 = ptrtoint ptr %arrayidx133.2.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %arrayidx133.2.i, align 1
  br label %sw.epilog.sink.split.i

sw.bb220.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb220.i, %for.body132.preheader.i, %for.body156.preheader.i, %for.body181.preheader.i, %for.body242.preheader.i, %for.end.i.sw.epilog.sink.split.i_crit_edge
  %arrayidx244.7.sink505.i = phi ptr [ %arrayidx244.7.i, %for.body242.preheader.i ], [ %27, %for.body181.preheader.i ], [ %15, %for.body156.preheader.i ], [ %arrayidx133.3.i, %for.body132.preheader.i ], [ %tPow2x221.i, %sw.bb220.i ], [ %tPow2x203.i, %for.end.i.sw.epilog.sink.split.i_crit_edge ]
  %136 = ptrtoint ptr %arrayidx244.7.sink505.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx244.7.sink505.i, align 1
  %138 = call i8 @llvm.umin.i8(i8 %137, i8 %cond123.in.off0.i) #6
  %139 = ptrtoint ptr %arrayidx244.7.sink505.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %138, ptr %arrayidx244.7.sink505.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %for.end.i.sw.epilog.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond501.not.i = icmp eq i32 %indvars.iv.next.i, %numCtlModes.0.i
  br i1 %exitcond501.not.i, label %for.end265.i, label %sw.epilog.i.for.body.i_crit_edge

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end265.i:                                     ; preds = %sw.epilog.i
  %140 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %12, align 1
  %conv268.i = zext i8 %141 to i16
  %arrayidx269.i = getelementptr inbounds i16, ptr %ratesArray, i32 4
  %142 = ptrtoint ptr %arrayidx269.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %conv268.i, ptr %arrayidx269.i, align 2
  %arrayidx270.i = getelementptr inbounds i16, ptr %ratesArray, i32 3
  %143 = ptrtoint ptr %arrayidx270.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %conv268.i, ptr %arrayidx270.i, align 2
  %arrayidx271.i = getelementptr inbounds i16, ptr %ratesArray, i32 2
  %144 = ptrtoint ptr %arrayidx271.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %conv268.i, ptr %arrayidx271.i, align 2
  %arrayidx272.i = getelementptr inbounds i16, ptr %ratesArray, i32 1
  %145 = ptrtoint ptr %arrayidx272.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %conv268.i, ptr %arrayidx272.i, align 2
  %146 = ptrtoint ptr %ratesArray to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %conv268.i, ptr %ratesArray, align 2
  %147 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %13, align 1
  %conv276.i = zext i8 %148 to i16
  %arrayidx277.i = getelementptr inbounds i16, ptr %ratesArray, i32 5
  %149 = ptrtoint ptr %arrayidx277.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %conv276.i, ptr %arrayidx277.i, align 2
  %150 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %14, align 1
  %conv280.i = zext i8 %151 to i16
  %arrayidx281.i = getelementptr inbounds i16, ptr %ratesArray, i32 6
  %152 = ptrtoint ptr %arrayidx281.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %conv280.i, ptr %arrayidx281.i, align 2
  %153 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %15, align 1
  %conv284.i = zext i8 %154 to i16
  %arrayidx285.i = getelementptr inbounds i16, ptr %ratesArray, i32 7
  %155 = ptrtoint ptr %arrayidx285.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %conv284.i, ptr %arrayidx285.i, align 2
  %arrayidx289.i = getelementptr inbounds i16, ptr %ratesArray, i32 15
  %156 = ptrtoint ptr %arrayidx289.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %conv268.i, ptr %arrayidx289.i, align 2
  %157 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %20, align 1
  %conv296.i = zext i8 %158 to i16
  %arrayidx298.i = getelementptr inbounds i16, ptr %ratesArray, i32 16
  %159 = ptrtoint ptr %arrayidx298.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %conv296.i, ptr %arrayidx298.i, align 2
  %160 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %21, align 1
  %conv296.1.i = zext i8 %161 to i16
  %arrayidx298.1.i = getelementptr inbounds i16, ptr %ratesArray, i32 17
  %162 = ptrtoint ptr %arrayidx298.1.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %conv296.1.i, ptr %arrayidx298.1.i, align 2
  %163 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %22, align 1
  %conv296.2.i = zext i8 %164 to i16
  %arrayidx298.2.i = getelementptr inbounds i16, ptr %ratesArray, i32 18
  %165 = ptrtoint ptr %arrayidx298.2.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %conv296.2.i, ptr %arrayidx298.2.i, align 2
  %166 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %23, align 1
  %conv296.3.i = zext i8 %167 to i16
  %arrayidx298.3.i = getelementptr inbounds i16, ptr %ratesArray, i32 19
  %168 = ptrtoint ptr %arrayidx298.3.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %conv296.3.i, ptr %arrayidx298.3.i, align 2
  %169 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %24, align 1
  %conv296.4.i = zext i8 %170 to i16
  %arrayidx298.4.i = getelementptr inbounds i16, ptr %ratesArray, i32 20
  %171 = ptrtoint ptr %arrayidx298.4.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %conv296.4.i, ptr %arrayidx298.4.i, align 2
  %172 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %25, align 1
  %conv296.5.i = zext i8 %173 to i16
  %arrayidx298.5.i = getelementptr inbounds i16, ptr %ratesArray, i32 21
  %174 = ptrtoint ptr %arrayidx298.5.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %conv296.5.i, ptr %arrayidx298.5.i, align 2
  %175 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %26, align 1
  %conv296.6.i = zext i8 %176 to i16
  %arrayidx298.6.i = getelementptr inbounds i16, ptr %ratesArray, i32 22
  %177 = ptrtoint ptr %arrayidx298.6.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %conv296.6.i, ptr %arrayidx298.6.i, align 2
  %178 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %27, align 1
  %conv296.7.i = zext i8 %179 to i16
  %arrayidx298.7.i = getelementptr inbounds i16, ptr %ratesArray, i32 23
  %180 = ptrtoint ptr %arrayidx298.7.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %conv296.7.i, ptr %arrayidx298.7.i, align 2
  %181 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx133.i, align 1
  %conv304.i = zext i8 %182 to i16
  %arrayidx305.i = getelementptr inbounds i16, ptr %ratesArray, i32 8
  %183 = ptrtoint ptr %arrayidx305.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %conv304.i, ptr %arrayidx305.i, align 2
  %184 = ptrtoint ptr %arrayidx133.1.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx133.1.i, align 1
  %conv308.i = zext i8 %185 to i16
  %arrayidx309.i = getelementptr inbounds i16, ptr %ratesArray, i32 9
  %186 = ptrtoint ptr %arrayidx309.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %conv308.i, ptr %arrayidx309.i, align 2
  %arrayidx310.i = getelementptr inbounds i16, ptr %ratesArray, i32 10
  %187 = ptrtoint ptr %arrayidx310.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 %conv308.i, ptr %arrayidx310.i, align 2
  %188 = ptrtoint ptr %arrayidx133.2.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx133.2.i, align 1
  %conv313.i = zext i8 %189 to i16
  %arrayidx314.i = getelementptr inbounds i16, ptr %ratesArray, i32 11
  %190 = ptrtoint ptr %arrayidx314.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %conv313.i, ptr %arrayidx314.i, align 2
  %arrayidx315.i = getelementptr inbounds i16, ptr %ratesArray, i32 12
  %191 = ptrtoint ptr %arrayidx315.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %conv313.i, ptr %arrayidx315.i, align 2
  %192 = ptrtoint ptr %arrayidx133.3.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx133.3.i, align 1
  %conv318.i = zext i8 %193 to i16
  %arrayidx319.i = getelementptr inbounds i16, ptr %ratesArray, i32 13
  %194 = ptrtoint ptr %arrayidx319.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %conv318.i, ptr %arrayidx319.i, align 2
  %arrayidx320.i = getelementptr inbounds i16, ptr %ratesArray, i32 14
  %195 = ptrtoint ptr %arrayidx320.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 %conv318.i, ptr %arrayidx320.i, align 2
  %196 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %channelFlags.i, align 2
  %198 = and i16 %197, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %198)
  %tobool324.not.i = icmp eq i16 %198, 0
  br i1 %tobool324.not.i, label %for.end265.i.ath9k_hw_set_4k_power_per_rate_table.exit_crit_edge, label %for.body329.preheader.i

for.end265.i.ath9k_hw_set_4k_power_per_rate_table.exit_crit_edge: ; preds = %for.end265.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_set_4k_power_per_rate_table.exit

for.body329.preheader.i:                          ; preds = %for.end265.i
  call void @__sanitizer_cov_trace_pc() #8
  %199 = ptrtoint ptr %arrayidx244.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %arrayidx244.i, align 1
  %conv332.i = zext i8 %200 to i16
  %arrayidx334.i = getelementptr inbounds i16, ptr %ratesArray, i32 24
  %201 = ptrtoint ptr %arrayidx334.i to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 %conv332.i, ptr %arrayidx334.i, align 2
  %202 = ptrtoint ptr %arrayidx244.1.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx244.1.i, align 1
  %conv332.1.i = zext i8 %203 to i16
  %arrayidx334.1.i = getelementptr inbounds i16, ptr %ratesArray, i32 25
  %204 = ptrtoint ptr %arrayidx334.1.i to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 %conv332.1.i, ptr %arrayidx334.1.i, align 2
  %205 = ptrtoint ptr %arrayidx244.2.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %arrayidx244.2.i, align 1
  %conv332.2.i = zext i8 %206 to i16
  %arrayidx334.2.i = getelementptr inbounds i16, ptr %ratesArray, i32 26
  %207 = ptrtoint ptr %arrayidx334.2.i to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 %conv332.2.i, ptr %arrayidx334.2.i, align 2
  %208 = ptrtoint ptr %arrayidx244.3.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx244.3.i, align 1
  %conv332.3.i = zext i8 %209 to i16
  %arrayidx334.3.i = getelementptr inbounds i16, ptr %ratesArray, i32 27
  %210 = ptrtoint ptr %arrayidx334.3.i to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 %conv332.3.i, ptr %arrayidx334.3.i, align 2
  %211 = ptrtoint ptr %arrayidx244.4.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %arrayidx244.4.i, align 1
  %conv332.4.i = zext i8 %212 to i16
  %arrayidx334.4.i = getelementptr inbounds i16, ptr %ratesArray, i32 28
  %213 = ptrtoint ptr %arrayidx334.4.i to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 %conv332.4.i, ptr %arrayidx334.4.i, align 2
  %214 = ptrtoint ptr %arrayidx244.5.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %arrayidx244.5.i, align 1
  %conv332.5.i = zext i8 %215 to i16
  %arrayidx334.5.i = getelementptr inbounds i16, ptr %ratesArray, i32 29
  %216 = ptrtoint ptr %arrayidx334.5.i to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 %conv332.5.i, ptr %arrayidx334.5.i, align 2
  %217 = ptrtoint ptr %arrayidx244.6.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %arrayidx244.6.i, align 1
  %conv332.6.i = zext i8 %218 to i16
  %arrayidx334.6.i = getelementptr inbounds i16, ptr %ratesArray, i32 30
  %219 = ptrtoint ptr %arrayidx334.6.i to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 %conv332.6.i, ptr %arrayidx334.6.i, align 2
  %220 = ptrtoint ptr %arrayidx244.7.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %arrayidx244.7.i, align 1
  %conv332.7.i = zext i8 %221 to i16
  %arrayidx334.7.i = getelementptr inbounds i16, ptr %ratesArray, i32 31
  %222 = ptrtoint ptr %arrayidx334.7.i to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 %conv332.7.i, ptr %arrayidx334.7.i, align 2
  %arrayidx341.i = getelementptr inbounds i16, ptr %ratesArray, i32 33
  %223 = ptrtoint ptr %arrayidx341.i to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 %conv332.i, ptr %arrayidx341.i, align 2
  %arrayidx345.i = getelementptr inbounds i16, ptr %ratesArray, i32 32
  %224 = ptrtoint ptr %arrayidx345.i to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 %conv332.i, ptr %arrayidx345.i, align 2
  %225 = ptrtoint ptr %tPow2x221.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %tPow2x221.i, align 1
  %conv348.i = zext i8 %226 to i16
  %arrayidx349.i = getelementptr inbounds i16, ptr %ratesArray, i32 35
  %227 = ptrtoint ptr %arrayidx349.i to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 %conv348.i, ptr %arrayidx349.i, align 2
  %228 = ptrtoint ptr %tPow2x203.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %tPow2x203.i, align 1
  %conv352.i = zext i8 %229 to i16
  %arrayidx353.i = getelementptr inbounds i16, ptr %ratesArray, i32 34
  %230 = ptrtoint ptr %arrayidx353.i to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 %conv352.i, ptr %arrayidx353.i, align 2
  br label %ath9k_hw_set_4k_power_per_rate_table.exit

ath9k_hw_set_4k_power_per_rate_table.exit:        ; preds = %for.body329.preheader.i, %for.end265.i.ath9k_hw_set_4k_power_per_rate_table.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %targetPowerHt40.i) #6
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %targetPowerHt20.i) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %targetPowerCckExt.i) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %targetPowerOfdmExt.i) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %targetPowerCck.i) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %targetPowerOfdm.i) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %centers.i) #6
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %gainBoundaries.i) #6
  %231 = getelementptr inbounds [4 x i16], ptr %gainBoundaries.i, i32 0, i32 1
  %232 = getelementptr inbounds [4 x i16], ptr %gainBoundaries.i, i32 0, i32 2
  %233 = getelementptr inbounds [4 x i16], ptr %gainBoundaries.i, i32 0, i32 3
  %234 = ptrtoint ptr %gainBoundaries.i to i32
  call void @__asan_store8_noabort(i32 %234)
  store i64 -1, ptr %gainBoundaries.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xpdGainValues.i) #6
  %235 = ptrtoint ptr %xpdGainValues.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 0, ptr %xpdGainValues.i, align 4
  %xpdGain.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 8
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
  br i1 %cmp.i, label %if.then.i365, label %if.else.i366

if.then.i365:                                     ; preds = %ath9k_hw_set_4k_power_per_rate_table.exit
  call void @__sanitizer_cov_trace_pc() #8
  %pdGainOverlap.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 12
  %242 = ptrtoint ptr %pdGainOverlap.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %pdGainOverlap.i, align 1
  %conv4.i = zext i8 %243 to i16
  br label %if.end.i368

if.else.i366:                                     ; preds = %ath9k_hw_set_4k_power_per_rate_table.exit
  call void @__sanitizer_cov_trace_pc() #8
  %244 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %ah, align 4
  %call5.i = call i32 %245(ptr noundef %ah, i32 noundef 41580) #6
  %246 = trunc i32 %call5.i to i16
  %conv6.i = and i16 %246, 15
  br label %if.end.i368

if.end.i368:                                      ; preds = %if.else.i366, %if.then.i365
  %pdGainOverlap_t2.0.i = phi i16 [ %conv4.i, %if.then.i365 ], [ %conv6.i, %if.else.i366 ]
  %calFreqPier2G.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 56
  %conv10.i = zext i8 %237 to i32
  %247 = and i32 %conv10.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %247)
  %tobool.not.i367 = icmp eq i32 %247, 0
  br i1 %tobool.not.i367, label %if.end.i368.for.inc.i369_crit_edge, label %if.end19.i

if.end.i368.for.inc.i369_crit_edge:               ; preds = %if.end.i368
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i369

if.end19.i:                                       ; preds = %if.end.i368
  call void @__sanitizer_cov_trace_pc() #8
  %248 = ptrtoint ptr %xpdGainValues.i to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 3, ptr %xpdGainValues.i, align 4
  br label %for.inc.i369

for.inc.i369:                                     ; preds = %if.end19.i, %if.end.i368.for.inc.i369_crit_edge
  %numXpdGain.1.i = phi i16 [ 1, %if.end19.i ], [ 0, %if.end.i368.for.inc.i369_crit_edge ]
  %249 = and i32 %conv10.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %tobool.not.1.i = icmp eq i32 %249, 0
  br i1 %tobool.not.1.i, label %for.inc.i369.for.inc.1.i_crit_edge, label %if.end19.1.i

for.inc.i369.for.inc.1.i_crit_edge:               ; preds = %for.inc.i369
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

if.end19.1.i:                                     ; preds = %for.inc.i369
  call void @__sanitizer_cov_trace_pc() #8
  %conv15.1.i = zext i16 %numXpdGain.1.i to i32
  %arrayidx.1.i = getelementptr [2 x i16], ptr %xpdGainValues.i, i32 0, i32 %conv15.1.i
  %250 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 2, ptr %arrayidx.1.i, align 2
  %inc.1.i = add nuw nsw i16 %numXpdGain.1.i, 1
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end19.1.i, %for.inc.i369.for.inc.1.i_crit_edge
  %numXpdGain.1.1.i = phi i16 [ %inc.1.i, %if.end19.1.i ], [ %numXpdGain.1.i, %for.inc.i369.for.inc.1.i_crit_edge ]
  %251 = and i32 %conv10.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %tobool.not.2.i = icmp eq i32 %251, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then14.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

if.then14.2.i:                                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %numXpdGain.1.1.i)
  %cmp16.2.i = icmp ugt i16 %numXpdGain.1.1.i, 1
  br i1 %cmp16.2.i, label %if.then14.2.i.do.body.i_crit_edge, label %if.end19.2.i

if.then14.2.i.do.body.i_crit_edge:                ; preds = %if.then14.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.end19.2.i:                                     ; preds = %if.then14.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv15.2.i = zext i16 %numXpdGain.1.1.i to i32
  %arrayidx.2.i = getelementptr [2 x i16], ptr %xpdGainValues.i, i32 0, i32 %conv15.2.i
  %252 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 1, ptr %arrayidx.2.i, align 2
  %inc.2.i = add nuw nsw i16 %numXpdGain.1.1.i, 1
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end19.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %numXpdGain.1.2.i = phi i16 [ %inc.2.i, %if.end19.2.i ], [ %numXpdGain.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %253 = and i32 %conv10.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %253)
  %tobool.not.3.i = icmp eq i32 %253, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.do.body.i_crit_edge, label %if.then14.3.i

for.inc.2.i.do.body.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.then14.3.i:                                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %numXpdGain.1.2.i)
  %cmp16.3.i = icmp ugt i16 %numXpdGain.1.2.i, 1
  br i1 %cmp16.3.i, label %if.then14.3.i.do.body.i_crit_edge, label %if.end19.3.i

if.then14.3.i.do.body.i_crit_edge:                ; preds = %if.then14.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.end19.3.i:                                     ; preds = %if.then14.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv15.3.i = zext i16 %numXpdGain.1.2.i to i32
  %arrayidx.3.i = getelementptr [2 x i16], ptr %xpdGainValues.i, i32 0, i32 %conv15.3.i
  %254 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 0, ptr %arrayidx.3.i, align 2
  %inc.3.i = add nuw nsw i16 %numXpdGain.1.2.i, 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end19.3.i, %if.then14.3.i.do.body.i_crit_edge, %for.inc.2.i.do.body.i_crit_edge, %if.then14.2.i.do.body.i_crit_edge
  %numXpdGain.0.lcssa.i = phi i16 [ 2, %if.then14.2.i.do.body.i_crit_edge ], [ 2, %if.then14.3.i.do.body.i_crit_edge ], [ %inc.3.i, %if.end19.3.i ], [ %numXpdGain.1.2.i, %for.inc.2.i.do.body.i_crit_edge ]
  %enable_rmw_buffer.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 6
  %255 = ptrtoint ptr %enable_rmw_buffer.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %enable_rmw_buffer.i, align 4
  %tobool26.not.i = icmp eq ptr %256, null
  br i1 %tobool26.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then27.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.then27.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void %256(ptr noundef %ah) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then27.i, %do.body.i.do.end.i_crit_edge
  %rmw.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %257 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %rmw.i, align 4
  %259 = shl nuw i16 %numXpdGain.0.lcssa.i, 14
  %260 = add i16 %259, -16384
  %shl.i = zext i16 %260 to i32
  %call36.i = call i32 %258(ptr noundef %ah, i32 noundef 41560, i32 noundef %shl.i, i32 noundef 49152) #6
  %261 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %rmw.i, align 4
  %263 = ptrtoint ptr %xpdGainValues.i to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %xpdGainValues.i, align 4
  %conv40.i = zext i16 %264 to i32
  %shl41.i = shl nuw i32 %conv40.i, 16
  %and42.i = and i32 %shl41.i, 196608
  %call43.i = call i32 %262(ptr noundef %ah, i32 noundef 41560, i32 noundef %and42.i, i32 noundef 196608) #6
  %265 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %rmw.i, align 4
  %arrayidx46.i = getelementptr inbounds [2 x i16], ptr %xpdGainValues.i, i32 0, i32 1
  %267 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %arrayidx46.i, align 2
  %conv47.i = zext i16 %268 to i32
  %shl48.i = shl i32 %conv47.i, 18
  %and49.i = and i32 %shl48.i, 786432
  %call50.i = call i32 %266(ptr noundef %ah, i32 noundef 41560, i32 noundef %and49.i, i32 noundef 786432) #6
  %269 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %rmw.i, align 4
  %call53.i = call i32 %270(ptr noundef %ah, i32 noundef 41560, i32 noundef 0, i32 noundef 3145728) #6
  %rmw_flush.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 7
  %271 = ptrtoint ptr %rmw_flush.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %rmw_flush.i, align 4
  %tobool56.not.i = icmp eq ptr %272, null
  br i1 %tobool56.not.i, label %do.end.i.do.end62.i_crit_edge, label %if.then57.i

do.end.i.do.end62.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end62.i

if.then57.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void %272(ptr noundef %ah) #6
  br label %do.end62.i

do.end62.i:                                       ; preds = %if.then57.i, %do.end.i.do.end62.i_crit_edge
  %txMask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 8
  %write.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %273 = and i16 %pdGainOverlap_t2.0.i, 15
  %and91.i = zext i16 %273 to i32
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %write_flush.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 4
  %274 = ptrtoint ptr %txMask.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %txMask.i, align 1
  %276 = and i8 %275, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %276)
  %tobool73.not.i = icmp eq i8 %276, 0
  br i1 %tobool73.not.i, label %do.end62.i.ath9k_hw_set_4k_power_cal_table.exit_crit_edge, label %if.then74.i

do.end62.i.ath9k_hw_set_4k_power_cal_table.exit_crit_edge: ; preds = %do.end62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_set_4k_power_cal_table.exit

if.then74.i:                                      ; preds = %do.end62.i
  %enable_write_buffer.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 3
  %calPierData2G.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 59
  call void @ath9k_hw_get_gain_boundaries_pdadcs(ptr noundef %ah, ptr noundef %chan, ptr noundef %calPierData2G.i, ptr noundef %calFreqPier2G.i, i16 noundef zeroext 3, i16 noundef zeroext %pdGainOverlap_t2.0.i, ptr noundef nonnull %gainBoundaries.i, ptr noundef nonnull @ath9k_hw_set_4k_power_cal_table.pdadcValues, i16 noundef zeroext %numXpdGain.0.lcssa.i) #6
  %277 = ptrtoint ptr %enable_write_buffer.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %enable_write_buffer.i, align 4
  %tobool81.not.i = icmp eq ptr %278, null
  br i1 %tobool81.not.i, label %if.then74.i.do.end87.i_crit_edge, label %if.then82.i

if.then74.i.do.end87.i_crit_edge:                 ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end87.i

if.then82.i:                                      ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #8
  call void %278(ptr noundef %ah) #6
  br label %do.end87.i

do.end87.i:                                       ; preds = %if.then82.i, %if.then74.i.do.end87.i_crit_edge
  %279 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %write.i, align 4
  %281 = ptrtoint ptr %gainBoundaries.i to i32
  call void @__asan_load2_noabort(i32 %281)
  %282 = load i16, ptr %gainBoundaries.i, align 8
  %conv93.i = zext i16 %282 to i32
  %shl94.i = shl nuw nsw i32 %conv93.i, 4
  %and95.i = and i32 %shl94.i, 1008
  %or.i370 = or i32 %and95.i, %and91.i
  %283 = ptrtoint ptr %231 to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %231, align 2
  %conv97.i = zext i16 %284 to i32
  %shl98.i = shl nuw nsw i32 %conv97.i, 10
  %and99.i = and i32 %shl98.i, 64512
  %or100.i = or i32 %or.i370, %and99.i
  %285 = ptrtoint ptr %232 to i32
  call void @__asan_load2_noabort(i32 %285)
  %286 = load i16, ptr %232, align 4
  %conv102.i = zext i16 %286 to i32
  %shl103.i = shl nuw i32 %conv102.i, 16
  %and104.i = and i32 %shl103.i, 4128768
  %or105.i = or i32 %or100.i, %and104.i
  %287 = ptrtoint ptr %233 to i32
  call void @__asan_load2_noabort(i32 %287)
  %288 = load i16, ptr %233, align 2
  %conv107.i = zext i16 %288 to i32
  %shl108.i = shl i32 %conv107.i, 22
  %and109.i = and i32 %shl108.i, 264241152
  %or110.i = or i32 %or105.i, %and109.i
  call void %280(ptr noundef %ah, i32 noundef %or110.i, i32 noundef 41580) #6
  br label %for.body116.i

for.body116.i:                                    ; preds = %do.end169.i.for.body116.i_crit_edge, %do.end87.i
  %indvars.iv.i371 = phi i32 [ 0, %do.end87.i ], [ %indvars.iv.next.i372, %do.end169.i.for.body116.i_crit_edge ]
  %regOffset.0259.i = phi i32 [ 41600, %do.end87.i ], [ %add170.i, %do.end169.i.for.body116.i_crit_edge ]
  %mul118.i = shl nuw nsw i32 %indvars.iv.i371, 2
  %arrayidx119.i = getelementptr [128 x i8], ptr @ath9k_hw_set_4k_power_cal_table.pdadcValues, i32 0, i32 %mul118.i
  %289 = ptrtoint ptr %arrayidx119.i to i32
  call void @__asan_loadN_noabort(i32 %289, i32 4)
  %290 = load i32, ptr %arrayidx119.i, align 1
  %291 = call i32 @llvm.bswap.i32(i32 %290) #6
  %292 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %write.i, align 4
  call void %293(ptr noundef %ah, i32 noundef %291, i32 noundef %regOffset.0259.i) #6
  %294 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %debug_mask.i, align 4
  %and124.i = and i32 %295, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124.i)
  %tobool125.not.i = icmp eq i32 %and124.i, 0
  br i1 %tobool125.not.i, label %for.body116.i.do.body131.i_crit_edge, label %if.then126.i

for.body116.i.do.body131.i_crit_edge:             ; preds = %for.body116.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body131.i

if.then126.i:                                     ; preds = %for.body116.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.73, i32 noundef 0, i32 noundef 0, i32 noundef %regOffset.0259.i, i32 noundef %291) #6
  br label %do.body131.i

do.body131.i:                                     ; preds = %if.then126.i, %for.body116.i.do.body131.i_crit_edge
  %296 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %debug_mask.i, align 4
  %and133.i = and i32 %297, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133.i)
  %tobool134.not.i = icmp eq i32 %and133.i, 0
  br i1 %tobool134.not.i, label %do.body131.i.do.end169.i_crit_edge, label %if.then135.i

do.body131.i.do.end169.i_crit_edge:               ; preds = %do.body131.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end169.i

if.then135.i:                                     ; preds = %do.body131.i
  call void @__sanitizer_cov_trace_pc() #8
  %298 = ptrtoint ptr %arrayidx119.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %arrayidx119.i, align 1
  %conv142.i = zext i8 %299 to i32
  %add145.i = or i32 %mul118.i, 1
  %arrayidx149.i = getelementptr [128 x i8], ptr @ath9k_hw_set_4k_power_cal_table.pdadcValues, i32 0, i32 %add145.i
  %300 = ptrtoint ptr %arrayidx149.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %arrayidx149.i, align 1
  %conv150.i = zext i8 %301 to i32
  %add153.i = or i32 %mul118.i, 2
  %arrayidx157.i = getelementptr [128 x i8], ptr @ath9k_hw_set_4k_power_cal_table.pdadcValues, i32 0, i32 %add153.i
  %302 = ptrtoint ptr %arrayidx157.i to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %arrayidx157.i, align 1
  %conv158.i = zext i8 %303 to i32
  %add161.i = or i32 %mul118.i, 3
  %arrayidx165.i = getelementptr [128 x i8], ptr @ath9k_hw_set_4k_power_cal_table.pdadcValues, i32 0, i32 %add161.i
  %304 = ptrtoint ptr %arrayidx165.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %arrayidx165.i, align 1
  %conv166.i = zext i8 %305 to i32
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.74, i32 noundef 0, i32 noundef %mul118.i, i32 noundef %conv142.i, i32 noundef %add145.i, i32 noundef %conv150.i, i32 noundef %add153.i, i32 noundef %conv158.i, i32 noundef %add161.i, i32 noundef %conv166.i) #6
  br label %do.end169.i

do.end169.i:                                      ; preds = %if.then135.i, %do.body131.i.do.end169.i_crit_edge
  %add170.i = add nuw nsw i32 %regOffset.0259.i, 4
  %indvars.iv.next.i372 = add nuw nsw i32 %indvars.iv.i371, 1
  %exitcond.not.i373 = icmp eq i32 %indvars.iv.next.i372, 32
  br i1 %exitcond.not.i373, label %do.body174.i, label %do.end169.i.for.body116.i_crit_edge

do.end169.i.for.body116.i_crit_edge:              ; preds = %do.end169.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body116.i

do.body174.i:                                     ; preds = %do.end169.i
  %306 = ptrtoint ptr %write_flush.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %write_flush.i, align 4
  %tobool176.not.i = icmp eq ptr %307, null
  br i1 %tobool176.not.i, label %do.body174.i.ath9k_hw_set_4k_power_cal_table.exit_crit_edge, label %if.then177.i

do.body174.i.ath9k_hw_set_4k_power_cal_table.exit_crit_edge: ; preds = %do.body174.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_set_4k_power_cal_table.exit

if.then177.i:                                     ; preds = %do.body174.i
  call void @__sanitizer_cov_trace_pc() #8
  call void %307(ptr noundef %ah) #6
  br label %ath9k_hw_set_4k_power_cal_table.exit

ath9k_hw_set_4k_power_cal_table.exit:             ; preds = %if.then177.i, %do.body174.i.ath9k_hw_set_4k_power_cal_table.exit_crit_edge, %do.end62.i.ath9k_hw_set_4k_power_cal_table.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xpdGainValues.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %gainBoundaries.i) #6
  %max_power_level = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 22, i32 3
  %308 = ptrtoint ptr %max_power_level to i32
  call void @__asan_store2_noabort(i32 %308)
  store i16 0, ptr %max_power_level, align 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %ath9k_hw_set_4k_power_cal_table.exit
  %i.0374 = phi i32 [ 0, %ath9k_hw_set_4k_power_cal_table.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %309 = phi i16 [ 0, %ath9k_hw_set_4k_power_cal_table.exit ], [ %316, %for.inc.for.body_crit_edge ]
  %arrayidx6 = getelementptr [36 x i16], ptr %ratesArray, i32 0, i32 %i.0374
  %310 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %310)
  %311 = load i16, ptr %arrayidx6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %311)
  %cmp8 = icmp sgt i16 %311, 63
  br i1 %cmp8, label %if.then10, label %for.body.if.end12_crit_edge

for.body.if.end12_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %312 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %312)
  store i16 63, ptr %arrayidx6, align 2
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.body.if.end12_crit_edge
  %313 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %313)
  %314 = load i16, ptr %arrayidx6, align 2
  %conv14 = sext i16 %314 to i32
  %conv16 = zext i16 %309 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv14, i32 %conv16)
  %cmp17 = icmp sgt i32 %conv14, %conv16
  br i1 %cmp17, label %if.then19, label %if.end12.for.inc_crit_edge

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %315 = ptrtoint ptr %max_power_level to i32
  call void @__asan_store2_noabort(i32 %315)
  store i16 %314, ptr %max_power_level, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %if.end12.for.inc_crit_edge
  %316 = phi i16 [ %309, %if.end12.for.inc_crit_edge ], [ %314, %if.then19 ]
  %inc = add nuw nsw i32 %i.0374, 1
  %exitcond.not = icmp eq i32 %inc, 36
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %test, label %for.end.cleanup_crit_edge, label %for.end.for.body28_crit_edge

for.end.for.body28_crit_edge:                     ; preds = %for.end
  br label %for.body28

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body28:                                       ; preds = %for.body28.for.body28_crit_edge, %for.end.for.body28_crit_edge
  %i.1375 = phi i32 [ %inc33, %for.body28.for.body28_crit_edge ], [ 0, %for.end.for.body28_crit_edge ]
  %arrayidx29 = getelementptr [36 x i16], ptr %ratesArray, i32 0, i32 %i.1375
  %317 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load2_noabort(i32 %317)
  %318 = load i16, ptr %arrayidx29, align 2
  %sub = add i16 %318, 10
  store i16 %sub, ptr %arrayidx29, align 2
  %inc33 = add nuw nsw i32 %i.1375, 1
  %exitcond376.not = icmp eq i32 %inc33, 36
  br i1 %exitcond376.not, label %do.body, label %for.body28.for.body28_crit_edge

for.body28.for.body28_crit_edge:                  ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body28

do.body:                                          ; preds = %for.body28
  %enable_write_buffer = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 3
  %319 = ptrtoint ptr %enable_write_buffer to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %enable_write_buffer, align 4
  %tobool35.not = icmp eq ptr %320, null
  br i1 %tobool35.not, label %do.body.do.end_crit_edge, label %if.then36

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then36:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void %320(ptr noundef %ah) #6
  br label %do.end

do.end:                                           ; preds = %if.then36, %do.body.do.end_crit_edge
  %321 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %write.i, align 4
  %323 = ptrtoint ptr %arrayidx270.i to i32
  call void @__asan_load2_noabort(i32 %323)
  %324 = load i16, ptr %arrayidx270.i, align 2
  %325 = and i16 %324, 63
  %and = zext i16 %325 to i32
  %shl = shl nuw nsw i32 %and, 24
  %326 = ptrtoint ptr %arrayidx271.i to i32
  call void @__asan_load2_noabort(i32 %326)
  %327 = load i16, ptr %arrayidx271.i, align 2
  %328 = and i16 %327, 63
  %and45 = zext i16 %328 to i32
  %shl46 = shl nuw nsw i32 %and45, 16
  %or = or i32 %shl46, %shl
  %329 = ptrtoint ptr %arrayidx272.i to i32
  call void @__asan_load2_noabort(i32 %329)
  %330 = load i16, ptr %arrayidx272.i, align 2
  %331 = shl i16 %330, 8
  %332 = and i16 %331, 16128
  %shl50 = zext i16 %332 to i32
  %or51 = or i32 %or, %shl50
  %333 = ptrtoint ptr %ratesArray to i32
  call void @__asan_load2_noabort(i32 %333)
  %334 = load i16, ptr %ratesArray, align 2
  %335 = and i16 %334, 63
  %and54 = zext i16 %335 to i32
  %or56 = or i32 %or51, %and54
  call void %322(ptr noundef %ah, i32 noundef %or56, i32 noundef 39220) #6
  %336 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %write.i, align 4
  %338 = ptrtoint ptr %arrayidx285.i to i32
  call void @__asan_load2_noabort(i32 %338)
  %339 = load i16, ptr %arrayidx285.i, align 2
  %340 = and i16 %339, 63
  %and61 = zext i16 %340 to i32
  %shl62 = shl nuw nsw i32 %and61, 24
  %341 = ptrtoint ptr %arrayidx281.i to i32
  call void @__asan_load2_noabort(i32 %341)
  %342 = load i16, ptr %arrayidx281.i, align 2
  %343 = and i16 %342, 63
  %and65 = zext i16 %343 to i32
  %shl66 = shl nuw nsw i32 %and65, 16
  %or67 = or i32 %shl66, %shl62
  %344 = ptrtoint ptr %arrayidx277.i to i32
  call void @__asan_load2_noabort(i32 %344)
  %345 = load i16, ptr %arrayidx277.i, align 2
  %346 = shl i16 %345, 8
  %347 = and i16 %346, 16128
  %shl71 = zext i16 %347 to i32
  %or72 = or i32 %or67, %shl71
  %348 = ptrtoint ptr %arrayidx269.i to i32
  call void @__asan_load2_noabort(i32 %348)
  %349 = load i16, ptr %arrayidx269.i, align 2
  %350 = and i16 %349, 63
  %and75 = zext i16 %350 to i32
  %or77 = or i32 %or72, %and75
  call void %337(ptr noundef %ah, i32 noundef %or77, i32 noundef 39224) #6
  %351 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %write.i, align 4
  %353 = ptrtoint ptr %arrayidx310.i to i32
  call void @__asan_load2_noabort(i32 %353)
  %354 = load i16, ptr %arrayidx310.i, align 2
  %355 = and i16 %354, 63
  %and82 = zext i16 %355 to i32
  %shl83 = shl nuw nsw i32 %and82, 24
  %356 = ptrtoint ptr %arrayidx309.i to i32
  call void @__asan_load2_noabort(i32 %356)
  %357 = load i16, ptr %arrayidx309.i, align 2
  %358 = and i16 %357, 63
  %and86 = zext i16 %358 to i32
  %shl87 = shl nuw nsw i32 %and86, 16
  %or88 = or i32 %shl87, %shl83
  %359 = ptrtoint ptr %arrayidx289.i to i32
  call void @__asan_load2_noabort(i32 %359)
  %360 = load i16, ptr %arrayidx289.i, align 2
  %361 = shl i16 %360, 8
  %362 = and i16 %361, 16128
  %shl92 = zext i16 %362 to i32
  %or93 = or i32 %or88, %shl92
  %363 = ptrtoint ptr %arrayidx305.i to i32
  call void @__asan_load2_noabort(i32 %363)
  %364 = load i16, ptr %arrayidx305.i, align 2
  %365 = and i16 %364, 63
  %and96 = zext i16 %365 to i32
  %or98 = or i32 %or93, %and96
  call void %352(ptr noundef %ah, i32 noundef %or98, i32 noundef 41524) #6
  %366 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %write.i, align 4
  %368 = ptrtoint ptr %arrayidx320.i to i32
  call void @__asan_load2_noabort(i32 %368)
  %369 = load i16, ptr %arrayidx320.i, align 2
  %370 = and i16 %369, 63
  %and103 = zext i16 %370 to i32
  %shl104 = shl nuw nsw i32 %and103, 24
  %371 = ptrtoint ptr %arrayidx319.i to i32
  call void @__asan_load2_noabort(i32 %371)
  %372 = load i16, ptr %arrayidx319.i, align 2
  %373 = and i16 %372, 63
  %and107 = zext i16 %373 to i32
  %shl108 = shl nuw nsw i32 %and107, 16
  %or109 = or i32 %shl108, %shl104
  %374 = ptrtoint ptr %arrayidx315.i to i32
  call void @__asan_load2_noabort(i32 %374)
  %375 = load i16, ptr %arrayidx315.i, align 2
  %376 = shl i16 %375, 8
  %377 = and i16 %376, 16128
  %shl113 = zext i16 %377 to i32
  %or114 = or i32 %or109, %shl113
  %378 = ptrtoint ptr %arrayidx314.i to i32
  call void @__asan_load2_noabort(i32 %378)
  %379 = load i16, ptr %arrayidx314.i, align 2
  %380 = and i16 %379, 63
  %and117 = zext i16 %380 to i32
  %or119 = or i32 %or114, %and117
  call void %367(ptr noundef %ah, i32 noundef %or119, i32 noundef 41528) #6
  %381 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %write.i, align 4
  %383 = ptrtoint ptr %arrayidx298.3.i to i32
  call void @__asan_load2_noabort(i32 %383)
  %384 = load i16, ptr %arrayidx298.3.i, align 2
  %385 = and i16 %384, 63
  %and124 = zext i16 %385 to i32
  %shl125 = shl nuw nsw i32 %and124, 24
  %386 = ptrtoint ptr %arrayidx298.2.i to i32
  call void @__asan_load2_noabort(i32 %386)
  %387 = load i16, ptr %arrayidx298.2.i, align 2
  %388 = and i16 %387, 63
  %and128 = zext i16 %388 to i32
  %shl129 = shl nuw nsw i32 %and128, 16
  %or130 = or i32 %shl129, %shl125
  %389 = ptrtoint ptr %arrayidx298.1.i to i32
  call void @__asan_load2_noabort(i32 %389)
  %390 = load i16, ptr %arrayidx298.1.i, align 2
  %391 = shl i16 %390, 8
  %392 = and i16 %391, 16128
  %shl134 = zext i16 %392 to i32
  %or135 = or i32 %or130, %shl134
  %393 = ptrtoint ptr %arrayidx298.i to i32
  call void @__asan_load2_noabort(i32 %393)
  %394 = load i16, ptr %arrayidx298.i, align 2
  %395 = and i16 %394, 63
  %and138 = zext i16 %395 to i32
  %or140 = or i32 %or135, %and138
  call void %382(ptr noundef %ah, i32 noundef %or140, i32 noundef 41868) #6
  %396 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %write.i, align 4
  %398 = ptrtoint ptr %arrayidx298.7.i to i32
  call void @__asan_load2_noabort(i32 %398)
  %399 = load i16, ptr %arrayidx298.7.i, align 2
  %400 = and i16 %399, 63
  %and145 = zext i16 %400 to i32
  %shl146 = shl nuw nsw i32 %and145, 24
  %401 = ptrtoint ptr %arrayidx298.6.i to i32
  call void @__asan_load2_noabort(i32 %401)
  %402 = load i16, ptr %arrayidx298.6.i, align 2
  %403 = and i16 %402, 63
  %and149 = zext i16 %403 to i32
  %shl150 = shl nuw nsw i32 %and149, 16
  %or151 = or i32 %shl150, %shl146
  %404 = ptrtoint ptr %arrayidx298.5.i to i32
  call void @__asan_load2_noabort(i32 %404)
  %405 = load i16, ptr %arrayidx298.5.i, align 2
  %406 = shl i16 %405, 8
  %407 = and i16 %406, 16128
  %shl155 = zext i16 %407 to i32
  %or156 = or i32 %or151, %shl155
  %408 = ptrtoint ptr %arrayidx298.4.i to i32
  call void @__asan_load2_noabort(i32 %408)
  %409 = load i16, ptr %arrayidx298.4.i, align 2
  %410 = and i16 %409, 63
  %and159 = zext i16 %410 to i32
  %or161 = or i32 %or156, %and159
  call void %397(ptr noundef %ah, i32 noundef %or161, i32 noundef 41872) #6
  %411 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %411)
  %412 = load i16, ptr %channelFlags.i, align 2
  %413 = and i16 %412, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %413)
  %tobool164.not = icmp eq i16 %413, 0
  br i1 %tobool164.not, label %do.end.if.end244_crit_edge, label %if.then165

do.end.if.end244_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end244

if.then165:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %414 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %write.i, align 4
  %arrayidx168 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 27
  %416 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load2_noabort(i32 %416)
  %417 = load i16, ptr %arrayidx168, align 2
  %conv169353 = zext i16 %417 to i32
  %add = add nuw nsw i32 %ht40PowerIncForPdadc.0, %conv169353
  %and171 = shl i32 %add, 24
  %shl172 = and i32 %and171, 1056964608
  %arrayidx173 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 26
  %418 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load2_noabort(i32 %418)
  %419 = load i16, ptr %arrayidx173, align 2
  %conv174354 = zext i16 %419 to i32
  %add176 = add nuw nsw i32 %ht40PowerIncForPdadc.0, %conv174354
  %and177 = shl i32 %add176, 16
  %shl178 = and i32 %and177, 4128768
  %or179 = or i32 %shl178, %shl172
  %arrayidx180 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 25
  %420 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load2_noabort(i32 %420)
  %421 = load i16, ptr %arrayidx180, align 2
  %conv181355 = zext i16 %421 to i32
  %add183 = add nuw nsw i32 %ht40PowerIncForPdadc.0, %conv181355
  %and184 = shl nuw nsw i32 %add183, 8
  %shl185 = and i32 %and184, 16128
  %or186 = or i32 %or179, %shl185
  %arrayidx187 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 24
  %422 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load2_noabort(i32 %422)
  %423 = load i16, ptr %arrayidx187, align 2
  %conv188356 = zext i16 %423 to i32
  %add190 = add nuw nsw i32 %ht40PowerIncForPdadc.0, %conv188356
  %and191 = and i32 %add190, 63
  %or193 = or i32 %or186, %and191
  call void %415(ptr noundef %ah, i32 noundef %or193, i32 noundef 41932) #6
  %424 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %write.i, align 4
  %arrayidx196 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 31
  %426 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load2_noabort(i32 %426)
  %427 = load i16, ptr %arrayidx196, align 2
  %conv197357 = zext i16 %427 to i32
  %add199 = add nuw nsw i32 %ht40PowerIncForPdadc.0, %conv197357
  %and200 = shl i32 %add199, 24
  %shl201 = and i32 %and200, 1056964608
  %arrayidx202 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 30
  %428 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load2_noabort(i32 %428)
  %429 = load i16, ptr %arrayidx202, align 2
  %conv203358 = zext i16 %429 to i32
  %add205 = add nuw nsw i32 %ht40PowerIncForPdadc.0, %conv203358
  %and206 = shl i32 %add205, 16
  %shl207 = and i32 %and206, 4128768
  %or208 = or i32 %shl207, %shl201
  %arrayidx209 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 29
  %430 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load2_noabort(i32 %430)
  %431 = load i16, ptr %arrayidx209, align 2
  %conv210359 = zext i16 %431 to i32
  %add212 = add nuw nsw i32 %ht40PowerIncForPdadc.0, %conv210359
  %and213 = shl nuw nsw i32 %add212, 8
  %shl214 = and i32 %and213, 16128
  %or215 = or i32 %or208, %shl214
  %arrayidx216 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 28
  %432 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load2_noabort(i32 %432)
  %433 = load i16, ptr %arrayidx216, align 2
  %conv217360 = zext i16 %433 to i32
  %add219 = add nuw nsw i32 %ht40PowerIncForPdadc.0, %conv217360
  %and220 = and i32 %add219, 63
  %or222 = or i32 %or215, %and220
  call void %425(ptr noundef %ah, i32 noundef %or222, i32 noundef 41936) #6
  %434 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %write.i, align 4
  %arrayidx225 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 35
  %436 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_load2_noabort(i32 %436)
  %437 = load i16, ptr %arrayidx225, align 2
  %438 = and i16 %437, 63
  %and227 = zext i16 %438 to i32
  %shl228 = shl nuw nsw i32 %and227, 24
  %arrayidx229 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 34
  %439 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_load2_noabort(i32 %439)
  %440 = load i16, ptr %arrayidx229, align 2
  %441 = and i16 %440, 63
  %and231 = zext i16 %441 to i32
  %shl232 = shl nuw nsw i32 %and231, 16
  %or233 = or i32 %shl232, %shl228
  %arrayidx234 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 33
  %442 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load2_noabort(i32 %442)
  %443 = load i16, ptr %arrayidx234, align 2
  %444 = shl i16 %443, 8
  %445 = and i16 %444, 16128
  %shl237 = zext i16 %445 to i32
  %or238 = or i32 %or233, %shl237
  %arrayidx239 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 32
  %446 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_load2_noabort(i32 %446)
  %447 = load i16, ptr %arrayidx239, align 2
  %448 = and i16 %447, 63
  %and241 = zext i16 %448 to i32
  %or243 = or i32 %or238, %and241
  call void %435(ptr noundef %ah, i32 noundef %or243, i32 noundef 41940) #6
  br label %if.end244

if.end244:                                        ; preds = %if.then165, %do.end.if.end244_crit_edge
  %tpc_enabled = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 137
  %449 = ptrtoint ptr %tpc_enabled to i32
  call void @__asan_load1_noabort(i32 %449)
  %450 = load i8, ptr %tpc_enabled, align 4, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %450)
  %tobool245.not = icmp eq i8 %450, 0
  br i1 %tobool245.not, label %if.end244.do.body258_crit_edge, label %if.then246

if.end244.do.body258_crit_edge:                   ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body258

if.then246:                                       ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #8
  %451 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %451)
  %452 = load i16, ptr %channelFlags.i, align 2
  %453 = and i16 %452, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %453)
  %tobool250.not = icmp eq i16 %453, 0
  %spec.select = select i1 %tobool250.not, i32 0, i32 %ht40PowerIncForPdadc.0
  call void @ar5008_hw_init_rate_txpower(ptr noundef %ah, ptr noundef nonnull %ratesArray, ptr noundef %chan, i32 noundef %spec.select) #6
  br label %do.body258

do.body258:                                       ; preds = %if.then246, %if.end244.do.body258_crit_edge
  %.sink = phi i32 [ 127, %if.then246 ], [ 63, %if.end244.do.body258_crit_edge ]
  %454 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %write.i, align 4
  call void %455(ptr noundef %ah, i32 noundef %.sink, i32 noundef 39228) #6
  %456 = ptrtoint ptr %write_flush.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %write_flush.i, align 4
  %tobool260.not = icmp eq ptr %457, null
  br i1 %tobool260.not, label %do.body258.cleanup_crit_edge, label %if.then261

do.body258.cleanup_crit_edge:                     ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then261:                                       ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #8
  call void %457(ptr noundef %ah) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then261, %do.body258.cleanup_crit_edge, %for.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %ratesArray) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ath9k_hw_4k_get_spur_channel(ptr nocapture noundef readonly %ah, i16 noundef zeroext %i, i1 noundef zeroext %is2GHz) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spurChans = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 1, i32 36
  %idxprom = zext i16 %i to i32
  %arrayidx = getelementptr [5 x %struct.spur_chan], ptr %spurChans, i32 0, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 4
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  ret i16 %2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath9k_hw_4k_get_eepmisc(ptr nocapture noundef readonly %ah) #2 align 64 {
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
declare dso_local void @ath9k_hw_analog_shift_rmw(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ar5008_hw_init_rate_txpower(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_get_channel_centers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_get_legacy_target_powers(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_get_target_powers(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ath9k_hw_get_max_edge_power(i16 noundef zeroext, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_get_gain_boundaries_pdadcs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
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

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152}
!llvm.module.flags = !{!154, !155, !156, !157, !158, !159, !160, !161}
!llvm.ident = !{!162}

!0 = !{ptr @eep_4k_ops, !1, !"eep_4k_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 1044, i32 25}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 66, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 139, i32 6}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 139, i32 18}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 145, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 146, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 147, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 148, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 149, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 150, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 151, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 152, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 153, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 154, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 155, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 157, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 159, i32 2}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 161, i32 2}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 163, i32 2}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 164, i32 2}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 165, i32 2}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 166, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 167, i32 2}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 169, i32 42}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 169, i32 58}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 79, i32 2}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 80, i32 2}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 81, i32 2}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 82, i32 2}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 83, i32 2}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 84, i32 2}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 85, i32 2}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 86, i32 2}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 87, i32 2}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 88, i32 2}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 89, i32 2}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 90, i32 2}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 91, i32 2}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 92, i32 2}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 93, i32 2}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 94, i32 2}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 95, i32 2}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 96, i32 2}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 97, i32 2}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 98, i32 2}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 99, i32 2}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 100, i32 2}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 101, i32 2}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 102, i32 2}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 103, i32 2}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 104, i32 2}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 105, i32 2}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 106, i32 2}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 107, i32 2}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 108, i32 2}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 109, i32 2}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 110, i32 2}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 111, i32 2}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 112, i32 2}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 113, i32 2}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 114, i32 2}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 115, i32 2}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 116, i32 2}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 117, i32 2}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 118, i32 2}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 119, i32 2}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 120, i32 2}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 121, i32 2}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 122, i32 2}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 123, i32 2}
!142 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 124, i32 2}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 125, i32 2}
!146 = !{ptr @ath9k_hw_set_4k_power_per_rate_table.ctlModesFor11g, !147, !"ctlModesFor11g", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 419, i32 19}
!148 = !{ptr @ath9k_hw_set_4k_power_cal_table.pdadcValues, !149, !"pdadcValues", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 291, i32 12}
!150 = !{ptr @.str.73, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 363, i32 5}
!152 = !{ptr @.str.74, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_4k.c", i32 367, i32 5}
!154 = !{i32 1, !"wchar_size", i32 2}
!155 = !{i32 1, !"min_enum_size", i32 4}
!156 = !{i32 8, !"branch-target-enforcement", i32 0}
!157 = !{i32 8, !"sign-return-address", i32 0}
!158 = !{i32 8, !"sign-return-address-all", i32 0}
!159 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!160 = !{i32 7, !"uwtable", i32 1}
!161 = !{i32 7, !"frame-pointer", i32 2}
!162 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!163 = !{!"auto-init"}
!164 = !{i8 0, i8 2}
