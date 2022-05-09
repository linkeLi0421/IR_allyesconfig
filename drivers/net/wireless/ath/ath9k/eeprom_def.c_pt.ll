; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/eeprom_def.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/eeprom_def.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.eeprom_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.chan_centers = type { i16, i16, i16 }
%struct.calDataPerFreqOpLoop = type { [2 x [5 x i8]], [2 x [5 x i8]], [2 x [5 x i8]], [2 x [5 x i8]] }

@eep_def_ops = dso_local constant { %struct.eeprom_ops, [52 x i8] } { %struct.eeprom_ops { ptr @ath9k_hw_def_check_eeprom, ptr @ath9k_hw_def_get_eeprom, ptr @ath9k_hw_def_fill_eeprom, ptr @ath9k_hw_def_dump_eeprom, ptr @ath9k_hw_def_get_eeprom_ver, ptr @ath9k_hw_def_get_eeprom_rev, ptr @ath9k_hw_def_set_board_values, ptr @ath9k_hw_def_set_addac, ptr @ath9k_hw_def_set_txpower, ptr @ath9k_hw_def_get_spur_channel, ptr @ath9k_hw_def_get_eepmisc }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Reading from EEPROM, not flash\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%20s :\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"2GHz modal Header\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"5GHz modal Header\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%20s : %10d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Major Version\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Minor Version\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Checksum\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Length\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RegDomain1\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RegDomain2\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TX Mask\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RX Mask\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Allow 5GHz\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Allow 2GHz\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Disable 2GHz HT20\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Disable 2GHz HT40\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Disable 5Ghz HT20\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Disable 5Ghz HT40\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Big Endian\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cal Bin Major Ver\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cal Bin Minor Ver\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Cal Bin Build\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"OpenLoop Power Ctrl\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%20s : %pM\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MacAddress\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Chain0 Ant. Control\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Chain1 Ant. Control\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Chain2 Ant. Control\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Ant. Common Control\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chain0 Ant. Gain\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chain1 Ant. Gain\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chain2 Ant. Gain\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Switch Settle\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chain0 TxRxAtten\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chain1 TxRxAtten\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chain2 TxRxAtten\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Chain0 RxTxMargin\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Chain1 RxTxMargin\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Chain2 RxTxMargin\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC Desired size\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PGA Desired size\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chain0 xlna Gain\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chain1 xlna Gain\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chain2 xlna Gain\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"txEndToXpaOff\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"txEndToRxOn\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"txFrameToXpaOn\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CCA Threshold)\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Chain0 NF Threshold\00", [44 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Chain1 NF Threshold\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Chain2 NF Threshold\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"xpdGain\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"External PD\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Chain0 I Coefficient\00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Chain1 I Coefficient\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Chain2 I Coefficient\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Chain0 Q Coefficient\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Chain1 Q Coefficient\00", [43 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Chain2 Q Coefficient\00", [43 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pdGainOverlap\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Chain0 OutputBias\00", [46 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Chain0 DriverBias\00", [46 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xPA Bias Level\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"2chain pwr decrease\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"3chain pwr decrease\00", [44 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"txFrameToDataStart\00", [45 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"txFrameToPaOn\00", [18 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HT40 Power Inc.\00", [16 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Chain0 bswAtten\00", [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Chain1 bswAtten\00", [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Chain2 bswAtten\00", [16 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chain0 bswMargin\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chain1 bswMargin\00", [47 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chain2 bswMargin\00", [47 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HT40 Switch Settle\00", [45 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chain0 xatten2Db\00", [47 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chain1 xatten2Db\00", [47 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chain2 xatten2Db\00", [47 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Chain0 xatten2Margin\00", [43 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Chain1 xatten2Margin\00", [43 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Chain2 xatten2Margin\00", [43 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Chain1 OutputBias\00", [46 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Chain1 DriverBias\00", [46 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LNA Control\00", [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"XPA Bias Freq0\00", [17 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"XPA Bias Freq1\00", [17 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"XPA Bias Freq2\00", [17 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ath9k_hw_set_def_power_per_rate_table.ctlModesFor11a = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 0, i16 6, i16 -32768, i16 8], [24 x i8] zeroinitializer }, align 32
@ath9k_hw_set_def_power_per_rate_table.ctlModesFor11g = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 1, i16 2, i16 5, i16 -32767, i16 -32766, i16 7], [20 x i8] zeroinitializer }, align 32
@ath9k_hw_set_def_power_cal_table.pdadcValues = internal global { [128 x i8], [32 x i8] } zeroinitializer, align 32
@.str.89 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PDADC (%d,%4x): %4.4x %8.8x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"PDADC: Chain %d | PDADC %3d Value %3d | PDADC %3d Value %3d | PDADC %3d Value %3d | PDADC %3d Value %3d |\0A\00", [53 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [27 x i64] [i64 25, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 25, i64 30, i64 31]
@__sancov_gen_cov_switch_values.91 = internal global [12 x i64] [i64 10, i64 16, i64 0, i64 1, i64 2, i64 5, i64 6, i64 7, i64 8, i64 32768, i64 32769, i64 32770]
@___asan_gen_.92 = private unnamed_addr constant [12 x i8] c"eep_def_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 1310, i32 25 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 125, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 213, i32 6 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 213, i32 18 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 217, i32 18 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 223, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 224, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 225, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 226, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 227, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 228, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 229, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 230, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 231, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 232, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 233, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 235, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 237, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 239, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 241, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 242, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 243, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 244, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 245, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 247, i32 42 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 247, i32 58 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 138, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 139, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 140, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 141, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 142, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 143, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 144, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 145, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 146, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 147, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 148, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 149, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 150, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 151, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 152, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 153, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 154, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 155, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 156, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 157, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 158, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 159, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 160, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 161, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 162, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 163, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 164, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 165, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 166, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 167, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 168, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 169, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 170, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 171, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 172, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 173, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 174, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 175, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 176, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 177, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 178, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 179, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 180, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 181, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 182, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 183, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 184, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 185, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 186, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 187, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 188, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 189, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 190, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 191, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 192, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 193, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 194, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 195, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 196, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 197, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 198, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 199, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant [15 x i8] c"ctlModesFor11a\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 941, i32 19 }
@___asan_gen_.365 = private unnamed_addr constant [15 x i8] c"ctlModesFor11g\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 944, i32 19 }
@___asan_gen_.368 = private unnamed_addr constant [12 x i8] c"pdadcValues\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 772, i32 12 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 898, i32 5 }
@___asan_gen_.374 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.375 = private constant [47 x i8] c"../drivers/net/wireless/ath/ath9k/eeprom_def.c\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 902, i32 5 }
@llvm.compiler.used = appending global [95 x ptr] [ptr @eep_def_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @ath9k_hw_set_def_power_per_rate_table.ctlModesFor11a, ptr @ath9k_hw_set_def_power_per_rate_table.ctlModesFor11g, ptr @ath9k_hw_set_def_power_cal_table.pdadcValues, ptr @.str.89, ptr @.str.90], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eep_def_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_hw_set_def_power_per_rate_table.ctlModesFor11a to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_hw_set_def_power_per_rate_table.ctlModesFor11g to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_hw_set_def_power_cal_table.pdadcValues to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_hw_def_check_eeprom(ptr noundef %ah) #0 align 64 {
entry:
  %need_swap = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %need_swap) #6
  %0 = ptrtoint ptr %need_swap to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %need_swap, align 1, !annotation !197
  %call1 = call i32 @ath9k_hw_nvram_swap_data(ptr noundef %ah, ptr noundef nonnull %need_swap, i32 noundef 1628) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %eeprom to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %eeprom, align 1
  %3 = call i16 @llvm.bswap.i16(i16 %2)
  call void @__sanitizer_cov_trace_const_cmp2(i16 3256, i16 %3)
  %cmp = icmp ult i16 %3, 3256
  %4 = lshr i16 %3, 1
  %narrow = select i1 %cmp, i16 %4, i16 1628
  %cond = zext i16 %narrow to i32
  %call9 = call zeroext i1 @ath9k_hw_nvram_validate_checksum(ptr noundef %ah, i32 noundef %cond) #6
  br i1 %call9, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %5 = ptrtoint ptr %need_swap to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %need_swap, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool12.not = icmp eq i8 %6, 0
  br i1 %tobool12.not, label %if.end11.if.end78_crit_edge, label %if.then13

if.end11.if.end78_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.then13:                                        ; preds = %if.end11
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
  %arrayidx30 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %arrayidx30, align 1
  %25 = call i16 @llvm.bswap.i16(i16 %24)
  %26 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %25, ptr %arrayidx30, align 1
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
  %arrayidx45 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0
  %antCtrlCommon = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 1
  %39 = ptrtoint ptr %antCtrlCommon to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %antCtrlCommon, align 1
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  %42 = ptrtoint ptr %antCtrlCommon to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %antCtrlCommon, align 1
  %43 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %arrayidx45, align 1
  %45 = call i32 @llvm.bswap.i32(i32 %44)
  %46 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %45, ptr %arrayidx45, align 1
  %arrayidx51.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 0, i32 1
  %47 = ptrtoint ptr %arrayidx51.1 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %arrayidx51.1, align 1
  %49 = call i32 @llvm.bswap.i32(i32 %48)
  %50 = ptrtoint ptr %arrayidx51.1 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %49, ptr %arrayidx51.1, align 1
  %arrayidx51.2 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 0, i32 2
  %51 = ptrtoint ptr %arrayidx51.2 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %arrayidx51.2, align 1
  %53 = call i32 @llvm.bswap.i32(i32 %52)
  %54 = ptrtoint ptr %arrayidx51.2 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %53, ptr %arrayidx51.2, align 1
  %arrayidx58 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 36, i32 0
  %55 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %arrayidx58, align 1
  %57 = call i16 @llvm.bswap.i16(i16 %56)
  %58 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 2)
  store i16 %57, ptr %arrayidx58, align 1
  %arrayidx58.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 36, i32 1
  %59 = ptrtoint ptr %arrayidx58.1 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %arrayidx58.1, align 1
  %61 = call i16 @llvm.bswap.i16(i16 %60)
  %62 = ptrtoint ptr %arrayidx58.1 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 %61, ptr %arrayidx58.1, align 1
  %arrayidx58.2 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 36, i32 2
  %63 = ptrtoint ptr %arrayidx58.2 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %arrayidx58.2, align 1
  %65 = call i16 @llvm.bswap.i16(i16 %64)
  %66 = ptrtoint ptr %arrayidx58.2 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 2)
  store i16 %65, ptr %arrayidx58.2, align 1
  %arrayidx68 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 38, i32 0
  %67 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %arrayidx68, align 1
  %69 = call i16 @llvm.bswap.i16(i16 %68)
  %70 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %69, ptr %arrayidx68, align 1
  %arrayidx68.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 38, i32 1
  %71 = ptrtoint ptr %arrayidx68.1 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %arrayidx68.1, align 1
  %73 = call i16 @llvm.bswap.i16(i16 %72)
  %74 = ptrtoint ptr %arrayidx68.1 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 2)
  store i16 %73, ptr %arrayidx68.1, align 1
  %arrayidx68.2 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 38, i32 2
  %75 = ptrtoint ptr %arrayidx68.2 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %arrayidx68.2, align 1
  %77 = call i16 @llvm.bswap.i16(i16 %76)
  %78 = ptrtoint ptr %arrayidx68.2 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 2)
  store i16 %77, ptr %arrayidx68.2, align 1
  %arrayidx68.3 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 38, i32 3
  %79 = ptrtoint ptr %arrayidx68.3 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %arrayidx68.3, align 1
  %81 = call i16 @llvm.bswap.i16(i16 %80)
  %82 = ptrtoint ptr %arrayidx68.3 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 %81, ptr %arrayidx68.3, align 1
  %arrayidx68.4 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 38, i32 4
  %83 = ptrtoint ptr %arrayidx68.4 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 2)
  %84 = load i16, ptr %arrayidx68.4, align 1
  %85 = call i16 @llvm.bswap.i16(i16 %84)
  %86 = ptrtoint ptr %arrayidx68.4 to i32
  call void @__asan_storeN_noabort(i32 %86, i32 2)
  store i16 %85, ptr %arrayidx68.4, align 1
  %arrayidx45.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 1
  %antCtrlCommon.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 1, i32 1
  %87 = ptrtoint ptr %antCtrlCommon.1 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %antCtrlCommon.1, align 1
  %89 = call i32 @llvm.bswap.i32(i32 %88)
  %90 = ptrtoint ptr %antCtrlCommon.1 to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 %89, ptr %antCtrlCommon.1, align 1
  %91 = ptrtoint ptr %arrayidx45.1 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %arrayidx45.1, align 1
  %93 = call i32 @llvm.bswap.i32(i32 %92)
  %94 = ptrtoint ptr %arrayidx45.1 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 4)
  store i32 %93, ptr %arrayidx45.1, align 1
  %arrayidx51.1.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 1, i32 0, i32 1
  %95 = ptrtoint ptr %arrayidx51.1.1 to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %arrayidx51.1.1, align 1
  %97 = call i32 @llvm.bswap.i32(i32 %96)
  %98 = ptrtoint ptr %arrayidx51.1.1 to i32
  call void @__asan_storeN_noabort(i32 %98, i32 4)
  store i32 %97, ptr %arrayidx51.1.1, align 1
  %arrayidx51.2.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 1, i32 0, i32 2
  %99 = ptrtoint ptr %arrayidx51.2.1 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %arrayidx51.2.1, align 1
  %101 = call i32 @llvm.bswap.i32(i32 %100)
  %102 = ptrtoint ptr %arrayidx51.2.1 to i32
  call void @__asan_storeN_noabort(i32 %102, i32 4)
  store i32 %101, ptr %arrayidx51.2.1, align 1
  %arrayidx58.1168 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 1, i32 36, i32 0
  %103 = ptrtoint ptr %arrayidx58.1168 to i32
  call void @__asan_loadN_noabort(i32 %103, i32 2)
  %104 = load i16, ptr %arrayidx58.1168, align 1
  %105 = call i16 @llvm.bswap.i16(i16 %104)
  %106 = ptrtoint ptr %arrayidx58.1168 to i32
  call void @__asan_storeN_noabort(i32 %106, i32 2)
  store i16 %105, ptr %arrayidx58.1168, align 1
  %arrayidx58.1.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 1, i32 36, i32 1
  %107 = ptrtoint ptr %arrayidx58.1.1 to i32
  call void @__asan_loadN_noabort(i32 %107, i32 2)
  %108 = load i16, ptr %arrayidx58.1.1, align 1
  %109 = call i16 @llvm.bswap.i16(i16 %108)
  %110 = ptrtoint ptr %arrayidx58.1.1 to i32
  call void @__asan_storeN_noabort(i32 %110, i32 2)
  store i16 %109, ptr %arrayidx58.1.1, align 1
  %arrayidx58.2.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 1, i32 36, i32 2
  %111 = ptrtoint ptr %arrayidx58.2.1 to i32
  call void @__asan_loadN_noabort(i32 %111, i32 2)
  %112 = load i16, ptr %arrayidx58.2.1, align 1
  %113 = call i16 @llvm.bswap.i16(i16 %112)
  %114 = ptrtoint ptr %arrayidx58.2.1 to i32
  call void @__asan_storeN_noabort(i32 %114, i32 2)
  store i16 %113, ptr %arrayidx58.2.1, align 1
  %arrayidx68.1169 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 1, i32 38, i32 0
  %115 = ptrtoint ptr %arrayidx68.1169 to i32
  call void @__asan_loadN_noabort(i32 %115, i32 2)
  %116 = load i16, ptr %arrayidx68.1169, align 1
  %117 = call i16 @llvm.bswap.i16(i16 %116)
  %118 = ptrtoint ptr %arrayidx68.1169 to i32
  call void @__asan_storeN_noabort(i32 %118, i32 2)
  store i16 %117, ptr %arrayidx68.1169, align 1
  %arrayidx68.1.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 1, i32 38, i32 1
  %119 = ptrtoint ptr %arrayidx68.1.1 to i32
  call void @__asan_loadN_noabort(i32 %119, i32 2)
  %120 = load i16, ptr %arrayidx68.1.1, align 1
  %121 = call i16 @llvm.bswap.i16(i16 %120)
  %122 = ptrtoint ptr %arrayidx68.1.1 to i32
  call void @__asan_storeN_noabort(i32 %122, i32 2)
  store i16 %121, ptr %arrayidx68.1.1, align 1
  %arrayidx68.2.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 1, i32 38, i32 2
  %123 = ptrtoint ptr %arrayidx68.2.1 to i32
  call void @__asan_loadN_noabort(i32 %123, i32 2)
  %124 = load i16, ptr %arrayidx68.2.1, align 1
  %125 = call i16 @llvm.bswap.i16(i16 %124)
  %126 = ptrtoint ptr %arrayidx68.2.1 to i32
  call void @__asan_storeN_noabort(i32 %126, i32 2)
  store i16 %125, ptr %arrayidx68.2.1, align 1
  %arrayidx68.3.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 1, i32 38, i32 3
  %127 = ptrtoint ptr %arrayidx68.3.1 to i32
  call void @__asan_loadN_noabort(i32 %127, i32 2)
  %128 = load i16, ptr %arrayidx68.3.1, align 1
  %129 = call i16 @llvm.bswap.i16(i16 %128)
  %130 = ptrtoint ptr %arrayidx68.3.1 to i32
  call void @__asan_storeN_noabort(i32 %130, i32 2)
  store i16 %129, ptr %arrayidx68.3.1, align 1
  %arrayidx68.4.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 1, i32 38, i32 4
  %131 = ptrtoint ptr %arrayidx68.4.1 to i32
  call void @__asan_loadN_noabort(i32 %131, i32 2)
  %132 = load i16, ptr %arrayidx68.4.1, align 1
  %133 = call i16 @llvm.bswap.i16(i16 %132)
  %134 = ptrtoint ptr %arrayidx68.4.1 to i32
  call void @__asan_storeN_noabort(i32 %134, i32 2)
  store i16 %133, ptr %arrayidx68.4.1, align 1
  br label %if.end78

if.end78:                                         ; preds = %if.then13, %if.end11.if.end78_crit_edge
  %call79 = call zeroext i1 @ath9k_hw_nvram_check_version(ptr noundef %ah, i32 noundef 14, i32 noundef 1) #6
  br i1 %call79, label %if.end81, label %if.end78.cleanup_crit_edge

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end81:                                         ; preds = %if.end78
  %devid = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 1
  %135 = ptrtoint ptr %devid to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %devid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 41, i16 %136)
  %cmp83 = icmp eq i16 %136, 41
  br i1 %cmp83, label %land.lhs.true, label %if.end81.if.end96_crit_edge

if.end81.if.end96_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96

land.lhs.true:                                    ; preds = %if.end81
  %version86 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 2
  %137 = ptrtoint ptr %version86 to i32
  call void @__asan_loadN_noabort(i32 %137, i32 2)
  %138 = load i16, ptr %version86, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2815, i16 %138)
  %cmp88 = icmp ugt i16 %138, 2815
  br i1 %cmp88, label %land.lhs.true90, label %land.lhs.true.if.end96_crit_edge

land.lhs.true.if.end96_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96

land.lhs.true90:                                  ; preds = %land.lhs.true
  %pwdclkind = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 14
  %139 = ptrtoint ptr %pwdclkind to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %pwdclkind, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %cmp93 = icmp eq i8 %140, 0
  br i1 %cmp93, label %if.then95, label %land.lhs.true90.if.end96_crit_edge

land.lhs.true90.if.end96_crit_edge:               ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96

if.then95:                                        ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #8
  %need_an_top2_fixup = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 16
  %141 = ptrtoint ptr %need_an_top2_fixup to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 1, ptr %need_an_top2_fixup, align 1
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %land.lhs.true90.if.end96_crit_edge, %land.lhs.true.if.end96_crit_edge, %if.end81.if.end96_crit_edge
  %bus_ops = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 25
  %142 = ptrtoint ptr %bus_ops to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %bus_ops, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %143, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %145)
  %cmp97 = icmp eq i32 %145, 2
  br i1 %cmp97, label %land.lhs.true99, label %if.end96.cleanup_crit_edge

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true99:                                  ; preds = %if.end96
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %146 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %147)
  %cmp101 = icmp eq i32 %147, 128
  br i1 %cmp101, label %if.then103, label %land.lhs.true99.cleanup_crit_edge

land.lhs.true99.cleanup_crit_edge:                ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then103:                                       ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #8
  %xpaBiasLvl = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 21
  %148 = ptrtoint ptr %xpaBiasLvl to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 0, ptr %xpaBiasLvl, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then103, %land.lhs.true99.cleanup_crit_edge, %if.end96.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end78.cleanup_crit_edge ], [ 0, %if.then103 ], [ 0, %land.lhs.true99.cleanup_crit_edge ], [ 0, %if.end96.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %need_swap) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath9k_hw_def_get_eeprom(ptr noundef readonly %ah, i32 noundef %param) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %modalHeader = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2
  %0 = zext i32 %param to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %param, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 4, label %sw.bb7
    i32 3, label %sw.bb10
    i32 2, label %sw.bb15
    i32 5, label %sw.bb21
    i32 6, label %sw.bb24
    i32 7, label %sw.bb26
    i32 8, label %sw.bb28
    i32 9, label %sw.bb30
    i32 10, label %sw.bb33
    i32 11, label %sw.bb36
    i32 12, label %sw.bb40
    i32 13, label %sw.bb44
    i32 14, label %sw.bb46
    i32 15, label %sw.bb48
    i32 16, label %sw.bb50
    i32 18, label %sw.bb52
    i32 17, label %sw.bb54
    i32 19, label %sw.bb58
    i32 20, label %sw.bb65
    i32 21, label %sw.bb72
    i32 25, label %sw.bb79
    i32 30, label %sw.bb86
    i32 31, label %entry.sw.bb87_crit_edge
  ]

entry.sw.bb87_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb87

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %noiseFloorThreshCh = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 13
  %1 = ptrtoint ptr %noiseFloorThreshCh to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %noiseFloorThreshCh, align 1
  %conv = zext i8 %2 to i32
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %noiseFloorThreshCh4 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 1, i32 13
  %3 = ptrtoint ptr %noiseFloorThreshCh4 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %noiseFloorThreshCh4, align 1
  %conv6 = zext i8 %4 to i32
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %macAddr = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 6
  %5 = ptrtoint ptr %macAddr to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %macAddr, align 1
  %conv9 = zext i16 %6 to i32
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 6, i32 2
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %add.ptr, align 1
  %conv14 = zext i16 %8 to i32
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr18 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 6, i32 4
  %9 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %add.ptr18, align 1
  %conv20 = zext i16 %10 to i32
  br label %cleanup

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regDmn = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 5
  %11 = ptrtoint ptr %regDmn to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %regDmn, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv23 = zext i16 %13 to i32
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %deviceCap = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 11
  %14 = ptrtoint ptr %deviceCap to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %deviceCap, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv25 = zext i16 %16 to i32
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %opCapFlags = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 3
  %17 = ptrtoint ptr %opCapFlags to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %opCapFlags, align 1
  %conv27 = zext i8 %18 to i32
  br label %cleanup

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rfSilent = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 9
  %19 = ptrtoint ptr %rfSilent to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %rfSilent, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %conv29 = zext i16 %21 to i32
  br label %cleanup

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ob = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 19
  %22 = ptrtoint ptr %ob to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ob, align 1
  %conv32 = zext i8 %23 to i32
  br label %cleanup

sw.bb33:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %db = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 0, i32 20
  %24 = ptrtoint ptr %db to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %db, align 1
  %conv35 = zext i8 %25 to i32
  br label %cleanup

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ob38 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 1, i32 19
  %26 = ptrtoint ptr %ob38 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ob38, align 1
  %conv39 = zext i8 %27 to i32
  br label %cleanup

sw.bb40:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %db42 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 1, i32 20
  %28 = ptrtoint ptr %db42 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %db42, align 1
  %conv43 = zext i8 %29 to i32
  br label %cleanup

sw.bb44:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %txMask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 8
  %30 = ptrtoint ptr %txMask to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %txMask, align 1
  %conv45 = zext i8 %31 to i32
  br label %cleanup

sw.bb46:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rxMask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 7
  %32 = ptrtoint ptr %rxMask to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %rxMask, align 1
  %conv47 = zext i8 %33 to i32
  br label %cleanup

sw.bb48:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %fastClk5g = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 15
  %34 = ptrtoint ptr %fastClk5g to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %fastClk5g, align 1
  %conv49 = zext i8 %35 to i32
  br label %cleanup

sw.bb50:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rxGainType = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 17
  %36 = ptrtoint ptr %rxGainType to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %rxGainType, align 1
  %conv51 = zext i8 %37 to i32
  br label %cleanup

sw.bb52:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %txGainType = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 21
  %38 = ptrtoint ptr %txGainType to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %txGainType, align 1
  %conv53 = zext i8 %39 to i32
  br label %cleanup

sw.bb54:                                          ; preds = %entry
  %version1.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 2
  %40 = ptrtoint ptr %version1.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %version1.i, align 4
  %42 = and i16 %41, -241
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %43)
  %cmp = icmp ugt i16 %43, 18
  br i1 %cmp, label %if.then, label %sw.bb54.cleanup_crit_edge

sw.bb54.cleanup_crit_edge:                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #8
  %openLoopPwrCntl = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 19
  %44 = ptrtoint ptr %openLoopPwrCntl to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %openLoopPwrCntl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not = icmp ne i8 %45, 0
  %cond = zext i1 %tobool.not to i32
  br label %cleanup

sw.bb58:                                          ; preds = %entry
  %version1.i154 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 2
  %46 = ptrtoint ptr %version1.i154 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %version1.i154, align 4
  %48 = and i16 %47, -241
  %49 = tail call i16 @llvm.bswap.i16(i16 %48) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %49)
  %cmp60 = icmp ugt i16 %49, 18
  br i1 %cmp60, label %if.then62, label %sw.bb58.cleanup_crit_edge

sw.bb58.cleanup_crit_edge:                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then62:                                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #8
  %rcChainMask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 22
  %50 = ptrtoint ptr %rcChainMask to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %rcChainMask, align 1
  %conv63 = zext i8 %51 to i32
  br label %cleanup

sw.bb65:                                          ; preds = %entry
  %version1.i156 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 2
  %52 = ptrtoint ptr %version1.i156 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %version1.i156, align 4
  %54 = and i16 %53, -241
  %55 = tail call i16 @llvm.bswap.i16(i16 %54) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 19, i16 %55)
  %cmp67 = icmp ugt i16 %55, 19
  br i1 %cmp67, label %if.then69, label %sw.bb65.cleanup_crit_edge

sw.bb65.cleanup_crit_edge:                        ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then69:                                        ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #8
  %dacHiPwrMode_5G = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 18
  %56 = ptrtoint ptr %dacHiPwrMode_5G to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %dacHiPwrMode_5G, align 1
  %conv70 = zext i8 %57 to i32
  br label %cleanup

sw.bb72:                                          ; preds = %entry
  %version1.i158 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 2
  %58 = ptrtoint ptr %version1.i158 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %version1.i158, align 4
  %60 = and i16 %59, -241
  %61 = tail call i16 @llvm.bswap.i16(i16 %60) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 21, i16 %61)
  %cmp74 = icmp ugt i16 %61, 21
  br i1 %cmp74, label %if.then76, label %sw.bb72.cleanup_crit_edge

sw.bb72.cleanup_crit_edge:                        ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then76:                                        ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #8
  %frac_n_5g = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 25
  %62 = ptrtoint ptr %frac_n_5g to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %frac_n_5g, align 1
  %conv77 = zext i8 %63 to i32
  br label %cleanup

sw.bb79:                                          ; preds = %entry
  %version1.i160 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 2
  %64 = ptrtoint ptr %version1.i160 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %version1.i160, align 4
  %66 = and i16 %65, -241
  %67 = tail call i16 @llvm.bswap.i16(i16 %66) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %67)
  %cmp81 = icmp ugt i16 %67, 20
  br i1 %cmp81, label %if.then83, label %sw.bb79.cleanup_crit_edge

sw.bb79.cleanup_crit_edge:                        ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then83:                                        ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #8
  %pwr_table_offset = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 24
  %68 = ptrtoint ptr %pwr_table_offset to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %pwr_table_offset, align 1
  %conv84 = zext i8 %69 to i32
  br label %cleanup

sw.bb86:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb87

sw.bb87:                                          ; preds = %sw.bb86, %entry.sw.bb87_crit_edge
  %band.0 = phi i32 [ 0, %entry.sw.bb87_crit_edge ], [ 1, %sw.bb86 ]
  %antennaGainCh = getelementptr %struct.modal_eep_header, ptr %modalHeader, i32 %band.0, i32 2
  %70 = ptrtoint ptr %antennaGainCh to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %antennaGainCh, align 1
  %arrayidx92 = getelementptr %struct.modal_eep_header, ptr %modalHeader, i32 %band.0, i32 2, i32 1
  %72 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx92, align 1
  %74 = tail call i8 @llvm.umax.i8(i8 %71, i8 %73)
  %arrayidx103 = getelementptr %struct.modal_eep_header, ptr %modalHeader, i32 %band.0, i32 2, i32 2
  %75 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx103, align 1
  %77 = tail call i8 @llvm.umax.i8(i8 %74, i8 %76)
  %cond114 = zext i8 %77 to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.bb87, %if.then83, %sw.bb79.cleanup_crit_edge, %if.then76, %sw.bb72.cleanup_crit_edge, %if.then69, %sw.bb65.cleanup_crit_edge, %if.then62, %sw.bb58.cleanup_crit_edge, %if.then, %sw.bb54.cleanup_crit_edge, %sw.bb52, %sw.bb50, %sw.bb48, %sw.bb46, %sw.bb44, %sw.bb40, %sw.bb36, %sw.bb33, %sw.bb30, %sw.bb28, %sw.bb26, %sw.bb24, %sw.bb21, %sw.bb15, %sw.bb10, %sw.bb7, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond114, %sw.bb87 ], [ %conv84, %if.then83 ], [ %conv77, %if.then76 ], [ %conv70, %if.then69 ], [ %conv63, %if.then62 ], [ %cond, %if.then ], [ %conv53, %sw.bb52 ], [ %conv51, %sw.bb50 ], [ %conv49, %sw.bb48 ], [ %conv47, %sw.bb46 ], [ %conv45, %sw.bb44 ], [ %conv43, %sw.bb40 ], [ %conv39, %sw.bb36 ], [ %conv35, %sw.bb33 ], [ %conv32, %sw.bb30 ], [ %conv29, %sw.bb28 ], [ %conv27, %sw.bb26 ], [ %conv25, %sw.bb24 ], [ %conv23, %sw.bb21 ], [ %conv20, %sw.bb15 ], [ %conv14, %sw.bb10 ], [ %conv9, %sw.bb7 ], [ %conv6, %sw.bb2 ], [ %conv, %sw.bb ], [ 0, %sw.bb54.cleanup_crit_edge ], [ 0, %sw.bb58.cleanup_crit_edge ], [ 0, %sw.bb65.cleanup_crit_edge ], [ 0, %sw.bb72.cleanup_crit_edge ], [ -5, %sw.bb79.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ath9k_hw_def_fill_eeprom(ptr noundef %ah) #0 align 64 {
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
  tail call void @ath9k_hw_usb_gen_fill_eeprom(ptr noundef %ah, ptr noundef %eeprom.i, i32 noundef 256, i32 noundef 1628) #6
  br label %cleanup

if.else:                                          ; preds = %if.end4
  %call.i14 = tail call zeroext i1 @ath9k_hw_nvram_read(ptr noundef %ah, i32 noundef 256, ptr noundef %eeprom.i) #6
  br i1 %call.i14, label %if.else.if.end.i_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  br label %if.end.i

for.body.i:                                       ; preds = %if.end.i
  %incdec.ptr.i = getelementptr i16, ptr %eep_data.07.i16, i32 1
  %add.i = add nuw nsw i32 %addr.08.i15, 257
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 1628, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 1628
  br i1 %exitcond.not.i, label %if.end.i.cleanup.loopexit_crit_edge, label %for.body.i

if.end.i.cleanup.loopexit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %if.end.i.cleanup.loopexit_crit_edge, %for.body.i.cleanup.loopexit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1626, i32 %addr.08.i15)
  %cmp.i.le = icmp ugt i32 %addr.08.i15, 1626
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.else.cleanup_crit_edge, %if.then5
  %retval.0 = phi i1 [ true, %if.then5 ], [ false, %if.else.cleanup_crit_edge ], [ %cmp.i.le, %cleanup.loopexit ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_hw_def_dump_eeprom(ptr noundef %ah, i1 noundef zeroext %dump_base_hdr, ptr noundef %buf, i32 noundef %len, i32 noundef %size) #0 align 64 {
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
  %modalHeader = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2
  %call2 = tail call fastcc i32 @ath9k_def_dump_modal_eeprom(ptr noundef %buf, i32 noundef %add, i32 noundef %size, ptr noundef %modalHeader)
  %add.ptr3 = getelementptr i8, ptr %buf, i32 %call2
  %sub4 = sub i32 %size, %call2
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3, i32 noundef %sub4, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #6
  %add6 = add i32 %call5, %call2
  %arrayidx8 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 1
  %call9 = tail call fastcc i32 @ath9k_def_dump_modal_eeprom(ptr noundef %buf, i32 noundef %add6, i32 noundef %size, ptr noundef %arrayidx8)
  br label %out

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %eeprom = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9
  %binBuildNumber1 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 12
  %0 = ptrtoint ptr %binBuildNumber1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %binBuildNumber1, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %add.ptr10 = getelementptr i8, ptr %buf, i32 %len
  %sub11 = sub i32 %size, %len
  %version1.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 2
  %3 = ptrtoint ptr %version1.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %version1.i, align 4
  %5 = lshr i16 %4, 4
  %6 = and i16 %5, 15
  %7 = zext i16 %6 to i32
  %call13 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10, i32 noundef %sub11, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %7) #6
  %add14 = add i32 %call13, %len
  %add.ptr16 = getelementptr i8, ptr %buf, i32 %add14
  %sub17 = sub i32 %size, %add14
  %8 = ptrtoint ptr %version1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %version1.i, align 4
  %10 = and i16 %9, -241
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #6
  %and.i = zext i16 %11 to i32
  %call19 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr16, i32 noundef %sub17, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7, i32 noundef %and.i) #6
  %add20 = add i32 %call19, %add14
  %add.ptr24 = getelementptr i8, ptr %buf, i32 %add20
  %sub25 = sub i32 %size, %add20
  %checksum = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %checksum to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %checksum, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv = zext i16 %14 to i32
  %call26 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr24, i32 noundef %sub25, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8, i32 noundef %conv) #6
  %add27 = add i32 %call26, %add20
  %add.ptr31 = getelementptr i8, ptr %buf, i32 %add27
  %sub32 = sub i32 %size, %add27
  %15 = ptrtoint ptr %eeprom to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %eeprom, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %conv33 = zext i16 %17 to i32
  %call34 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr31, i32 noundef %sub32, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.9, i32 noundef %conv33) #6
  %add35 = add i32 %call34, %add27
  %add.ptr39 = getelementptr i8, ptr %buf, i32 %add35
  %sub40 = sub i32 %size, %add35
  %regDmn = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 5
  %18 = ptrtoint ptr %regDmn to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %regDmn, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %conv42 = zext i16 %20 to i32
  %call43 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr39, i32 noundef %sub40, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.10, i32 noundef %conv42) #6
  %add44 = add i32 %call43, %add35
  %add.ptr48 = getelementptr i8, ptr %buf, i32 %add44
  %sub49 = sub i32 %size, %add44
  %arrayidx51 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %arrayidx51, align 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %conv52 = zext i16 %23 to i32
  %call53 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr48, i32 noundef %sub49, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.11, i32 noundef %conv52) #6
  %add54 = add i32 %call53, %add44
  %add.ptr58 = getelementptr i8, ptr %buf, i32 %add54
  %sub59 = sub i32 %size, %add54
  %txMask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 8
  %24 = ptrtoint ptr %txMask to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %txMask, align 1
  %conv60 = zext i8 %25 to i32
  %call61 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr58, i32 noundef %sub59, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.12, i32 noundef %conv60) #6
  %add62 = add i32 %call61, %add54
  %add.ptr66 = getelementptr i8, ptr %buf, i32 %add62
  %sub67 = sub i32 %size, %add62
  %rxMask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 7
  %26 = ptrtoint ptr %rxMask to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rxMask, align 1
  %conv68 = zext i8 %27 to i32
  %call69 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr66, i32 noundef %sub67, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.13, i32 noundef %conv68) #6
  %add70 = add i32 %call69, %add62
  %add.ptr74 = getelementptr i8, ptr %buf, i32 %add70
  %sub75 = sub i32 %size, %add70
  %opCapFlags = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 3
  %28 = ptrtoint ptr %opCapFlags to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %opCapFlags, align 1
  %30 = and i8 %29, 1
  %31 = zext i8 %30 to i32
  %call79 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr74, i32 noundef %sub75, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.14, i32 noundef %31) #6
  %add80 = add i32 %call79, %add70
  %add.ptr84 = getelementptr i8, ptr %buf, i32 %add80
  %sub85 = sub i32 %size, %add80
  %32 = ptrtoint ptr %opCapFlags to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %opCapFlags, align 1
  %34 = lshr i8 %33, 1
  %.lobit = and i8 %34, 1
  %35 = zext i8 %.lobit to i32
  %call94 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr84, i32 noundef %sub85, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.15, i32 noundef %35) #6
  %add95 = add i32 %call94, %add80
  %add.ptr99 = getelementptr i8, ptr %buf, i32 %add95
  %sub100 = sub i32 %size, %add95
  %36 = ptrtoint ptr %opCapFlags to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %opCapFlags, align 1
  %38 = lshr i8 %37, 5
  %.lobit351 = and i8 %38, 1
  %39 = zext i8 %.lobit351 to i32
  %call109 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr99, i32 noundef %sub100, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.16, i32 noundef %39) #6
  %add110 = add i32 %call109, %add95
  %add.ptr114 = getelementptr i8, ptr %buf, i32 %add110
  %sub115 = sub i32 %size, %add110
  %40 = ptrtoint ptr %opCapFlags to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %opCapFlags, align 1
  %42 = lshr i8 %41, 3
  %.lobit352 = and i8 %42, 1
  %43 = zext i8 %.lobit352 to i32
  %call124 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr114, i32 noundef %sub115, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.17, i32 noundef %43) #6
  %add125 = add i32 %call124, %add110
  %add.ptr129 = getelementptr i8, ptr %buf, i32 %add125
  %sub130 = sub i32 %size, %add125
  %44 = ptrtoint ptr %opCapFlags to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %opCapFlags, align 1
  %46 = lshr i8 %45, 4
  %.lobit353 = and i8 %46, 1
  %47 = zext i8 %.lobit353 to i32
  %call139 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr129, i32 noundef %sub130, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.18, i32 noundef %47) #6
  %add140 = add i32 %call139, %add125
  %add.ptr144 = getelementptr i8, ptr %buf, i32 %add140
  %sub145 = sub i32 %size, %add140
  %48 = ptrtoint ptr %opCapFlags to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %opCapFlags, align 1
  %50 = lshr i8 %49, 2
  %.lobit354 = and i8 %50, 1
  %51 = zext i8 %.lobit354 to i32
  %call154 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr144, i32 noundef %sub145, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.19, i32 noundef %51) #6
  %add155 = add i32 %call154, %add140
  %add.ptr159 = getelementptr i8, ptr %buf, i32 %add155
  %sub160 = sub i32 %size, %add155
  %eepMisc = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 4
  %52 = ptrtoint ptr %eepMisc to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %eepMisc, align 1
  %54 = and i8 %53, 1
  %55 = zext i8 %54 to i32
  %call168 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr159, i32 noundef %sub160, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.20, i32 noundef %55) #6
  %add169 = add i32 %call168, %add155
  %add.ptr173 = getelementptr i8, ptr %buf, i32 %add169
  %sub174 = sub i32 %size, %add169
  %shr = lshr i32 %2, 24
  %call176 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr173, i32 noundef %sub174, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.21, i32 noundef %shr) #6
  %add177 = add i32 %add169, %call176
  %add.ptr181 = getelementptr i8, ptr %buf, i32 %add177
  %sub182 = sub i32 %size, %add177
  %shr183 = lshr i32 %2, 16
  %and184 = and i32 %shr183, 255
  %call185 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr181, i32 noundef %sub182, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.22, i32 noundef %and184) #6
  %add186 = add i32 %add177, %call185
  %add.ptr190 = getelementptr i8, ptr %buf, i32 %add186
  %sub191 = sub i32 %size, %add186
  %shr192 = lshr i32 %2, 8
  %and193 = and i32 %shr192, 255
  %call194 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr190, i32 noundef %sub191, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.23, i32 noundef %and193) #6
  %add195 = add i32 %add186, %call194
  %add.ptr199 = getelementptr i8, ptr %buf, i32 %add195
  %sub200 = sub i32 %size, %add195
  %openLoopPwrCntl = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 19
  %56 = ptrtoint ptr %openLoopPwrCntl to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %openLoopPwrCntl, align 1
  %conv201 = zext i8 %57 to i32
  %call202 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr199, i32 noundef %sub200, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.24, i32 noundef %conv201) #6
  %add203 = add i32 %call202, %add195
  %add.ptr206 = getelementptr i8, ptr %buf, i32 %add203
  %sub207 = sub i32 %size, %add203
  %macAddr = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 6
  %call208 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr206, i32 noundef %sub207, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, ptr noundef %macAddr) #6
  %add209 = add i32 %add203, %call208
  br label %out

out:                                              ; preds = %do.body, %if.then
  %len.addr.0 = phi i32 [ %add209, %do.body ], [ %call9, %if.then ]
  %58 = tail call i32 @llvm.umin.i32(i32 %len.addr.0, i32 %size)
  ret i32 %58
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath9k_hw_def_get_eeprom_ver(ptr nocapture noundef readonly %ah) #2 align 64 {
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
define internal i32 @ath9k_hw_def_get_eeprom_rev(ptr nocapture noundef readonly %ah) #1 align 64 {
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
define internal void @ath9k_hw_def_set_board_values(ptr noundef %ah, ptr nocapture noundef readonly %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %channelFlags, align 2
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  %3 = xor i16 %2, 1
  %4 = zext i16 %3 to i32
  %arrayidx = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4
  %conv13 = select i1 %tobool.not, i8 23, i8 44
  %antCtrlCommon14 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 1
  %5 = ptrtoint ptr %antCtrlCommon14 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %antCtrlCommon14, align 1
  %write = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %7 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write, align 4
  %9 = and i32 %6, -65536
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void %8(ptr noundef %ah, i32 noundef %10, i32 noundef 39268) #6
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %rxchainmask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 75
  %txchainmask = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 74
  %enable_rmw_buffer.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 6
  %version1.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 2
  %rmw.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %rmw_flush.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %ath9k_hw_def_set_gain.exit.for.body_crit_edge, %entry
  %i.0416 = phi i32 [ 0, %entry ], [ %inc, %ath9k_hw_def_set_gain.exit.for.body_crit_edge ]
  %11 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %12)
  %cmp17 = icmp eq i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0416)
  %cmp19 = icmp eq i32 %i.0416, 2
  %or.cond = select i1 %cmp17, i1 %cmp19, i1 false
  br i1 %or.cond, label %for.body.if.then57_crit_edge, label %if.end22

for.body.if.then57_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57

if.end22:                                         ; preds = %for.body
  %13 = ptrtoint ptr %rxchainmask to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rxchainmask, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %14)
  %cmp24 = icmp eq i8 %14, 5
  br i1 %cmp24, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end22
  %15 = ptrtoint ptr %txchainmask to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %txchainmask, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %16)
  %cmp27 = icmp ne i8 %16, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0416)
  %cmp29.not = icmp eq i32 %i.0416, 0
  %or.cond407 = select i1 %cmp27, i1 true, i1 %cmp29.not
  br i1 %or.cond407, label %lor.lhs.false.if.else_crit_edge, label %lor.lhs.false.if.then31_crit_edge

lor.lhs.false.if.then31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0416)
  %cmp29.not.old = icmp eq i32 %i.0416, 0
  br i1 %cmp29.not.old, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.then31_crit_edge

land.lhs.true.if.then31_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then31:                                        ; preds = %land.lhs.true.if.then31_crit_edge, %lor.lhs.false.if.then31_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0416)
  %cmp32 = icmp eq i32 %i.0416, 1
  %cond34 = select i1 %cmp32, i32 8192, i32 4096
  br label %if.end35

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  %mul = shl i32 %i.0416, 12
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then31
  %regChainOffset.0 = phi i32 [ %cond34, %if.then31 ], [ %mul, %if.else ]
  %17 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write, align 4
  %arrayidx38 = getelementptr [3 x i32], ptr %arrayidx, i32 0, i32 %i.0416
  %19 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %arrayidx38, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %add = add i32 %regChainOffset.0, 39264
  tail call void %18(ptr noundef %ah, i32 noundef %21, i32 noundef %add) #6
  %22 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write, align 4
  %24 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ah, align 4
  %add42 = add i32 %regChainOffset.0, 39200
  %call = tail call i32 %25(ptr noundef %ah, i32 noundef %add42) #6
  %and43 = and i32 %call, -2048
  %arrayidx44 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 16, i32 %i.0416
  %26 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %27 to i32
  %shl = shl nuw nsw i32 %conv45, 5
  %and46 = and i32 %shl, 2016
  %or = or i32 %and46, %and43
  %arrayidx47 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 17, i32 %i.0416
  %28 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx47, align 1
  %30 = and i8 %29, 31
  %and50 = zext i8 %30 to i32
  %or51 = or i32 %or, %and50
  tail call void %23(ptr noundef %ah, i32 noundef %or51, i32 noundef %add42) #6
  %31 = ptrtoint ptr %enable_rmw_buffer.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %enable_rmw_buffer.i, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %if.end35.do.end.i_crit_edge, label %if.then.i

if.end35.do.end.i_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.then.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %32(ptr noundef %ah) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end35.do.end.i_crit_edge
  %33 = ptrtoint ptr %version1.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %version1.i.i, align 4
  %35 = and i16 %34, -241
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %36)
  %cmp.i = icmp ugt i16 %36, 2
  br i1 %cmp.i, label %if.then3.i, label %do.end.i.if.end52.i_crit_edge

do.end.i.if.end52.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52.i

if.then3.i:                                       ; preds = %do.end.i
  %arrayidx.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 4, i32 %i.0416
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i, align 1
  %39 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %40)
  %cmp4.i = icmp ugt i32 %40, 127
  %41 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmw.i, align 4
  %add.i = add i32 %regChainOffset.0, 41484
  %arrayidx7.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 28, i32 %i.0416
  %43 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx7.i, align 1
  %conv.i = zext i8 %44 to i32
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i = shl nuw nsw i32 %conv.i, 12
  %and.i = and i32 %shl.i, 126976
  %call8.i = tail call i32 %42(ptr noundef %ah, i32 noundef %add.i, i32 noundef %and.i, i32 noundef 126976) #6
  %45 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmw.i, align 4
  %arrayidx12.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 27, i32 %i.0416
  %47 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx12.i, align 1
  %49 = and i8 %48, 63
  %and15.i = zext i8 %49 to i32
  %call16.i = tail call i32 %46(ptr noundef %ah, i32 noundef %add.i, i32 noundef %and15.i, i32 noundef 63) #6
  %50 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmw.i, align 4
  %arrayidx20.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 31, i32 %i.0416
  %52 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %53 to i32
  %shl22.i = shl nuw nsw i32 %conv21.i, 17
  %and23.i = and i32 %shl22.i, 4063232
  %call24.i = tail call i32 %51(ptr noundef %ah, i32 noundef %add.i, i32 noundef %and23.i, i32 noundef 4063232) #6
  %54 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmw.i, align 4
  %arrayidx28.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 30, i32 %i.0416
  %56 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx28.i, align 1
  %conv29.i = zext i8 %57 to i32
  %shl30.i = shl nuw nsw i32 %conv29.i, 6
  %and31.i = and i32 %shl30.i, 4032
  %call32.i = tail call i32 %55(ptr noundef %ah, i32 noundef %add.i, i32 noundef %and31.i, i32 noundef 4032) #6
  br label %if.end52.i

if.else.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl39.i = shl nuw nsw i32 %conv.i, 10
  %and40.i = and i32 %shl39.i, 15360
  %call41.i = tail call i32 %42(ptr noundef %ah, i32 noundef %add.i, i32 noundef %and40.i, i32 noundef 15360) #6
  %58 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rmw.i, align 4
  %arrayidx46.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 27, i32 %i.0416
  %60 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx46.i, align 1
  %62 = and i8 %61, 31
  %and49.i = zext i8 %62 to i32
  %call50.i = tail call i32 %59(ptr noundef %ah, i32 noundef %add.i, i32 noundef %and49.i, i32 noundef 31) #6
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.else.i, %if.then5.i, %do.end.i.if.end52.i_crit_edge
  %txRxAttenLocal.addr.0.i = phi i8 [ %38, %if.then5.i ], [ %38, %if.else.i ], [ %conv13, %do.end.i.if.end52.i_crit_edge ]
  %63 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %64)
  %cmp55.i = icmp ugt i32 %64, 127
  %65 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rmw.i, align 4
  %add60.i = add i32 %regChainOffset.0, 38984
  %conv61.i = zext i8 %txRxAttenLocal.addr.0.i to i32
  br i1 %cmp55.i, label %if.then57.i, label %if.else73.i

if.then57.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl62.i = shl nuw nsw i32 %conv61.i, 7
  %and63.i = and i32 %shl62.i, 16256
  %call64.i = tail call i32 %66(ptr noundef %ah, i32 noundef %add60.i, i32 noundef %and63.i, i32 noundef 16256) #6
  %67 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rmw.i, align 4
  %arrayidx68.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 5, i32 %i.0416
  %69 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx68.i, align 1
  %conv69.i = zext i8 %70 to i32
  %shl70.i = shl nuw nsw i32 %conv69.i, 14
  %and71.i = and i32 %shl70.i, 2080768
  %call72.i = tail call i32 %68(ptr noundef %ah, i32 noundef %add60.i, i32 noundef %and71.i, i32 noundef 2080768) #6
  br label %do.body91.i

if.else73.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl78.i = shl nuw nsw i32 %conv61.i, 12
  %and79.i = and i32 %shl78.i, 258048
  %call80.i = tail call i32 %66(ptr noundef %ah, i32 noundef %add60.i, i32 noundef %and79.i, i32 noundef 258048) #6
  %71 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rmw.i, align 4
  %add83.i = add i32 %regChainOffset.0, 41484
  %arrayidx85.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 5, i32 %i.0416
  %73 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx85.i, align 1
  %conv86.i = zext i8 %74 to i32
  %shl87.i = shl nuw nsw i32 %conv86.i, 18
  %and88.i = and i32 %shl87.i, 16515072
  %call89.i = tail call i32 %72(ptr noundef %ah, i32 noundef %add83.i, i32 noundef %and88.i, i32 noundef 16515072) #6
  br label %do.body91.i

do.body91.i:                                      ; preds = %if.else73.i, %if.then57.i
  %75 = ptrtoint ptr %rmw_flush.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rmw_flush.i, align 4
  %tobool93.not.i = icmp eq ptr %76, null
  br i1 %tobool93.not.i, label %do.body91.i.ath9k_hw_def_set_gain.exit_crit_edge, label %if.then94.i

do.body91.i.ath9k_hw_def_set_gain.exit_crit_edge: ; preds = %do.body91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_def_set_gain.exit

if.then94.i:                                      ; preds = %do.body91.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %76(ptr noundef %ah) #6
  br label %ath9k_hw_def_set_gain.exit

ath9k_hw_def_set_gain.exit:                       ; preds = %if.then94.i, %do.body91.i.ath9k_hw_def_set_gain.exit_crit_edge
  %inc = add nuw nsw i32 %i.0416, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %ath9k_hw_def_set_gain.exit.for.body_crit_edge

ath9k_hw_def_set_gain.exit.for.body_crit_edge:    ; preds = %ath9k_hw_def_set_gain.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %ath9k_hw_def_set_gain.exit
  %77 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pr419 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %.pr419)
  %cmp55 = icmp ugt i32 %.pr419, 127
  br i1 %cmp55, label %for.end.if.then57_crit_edge, label %for.end.if.end97_crit_edge

for.end.if.end97_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

for.end.if.then57_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57

if.then57:                                        ; preds = %for.end.if.then57_crit_edge, %for.body.if.then57_crit_edge
  %78 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %channelFlags, align 2
  %80 = and i16 %79, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool61.not = icmp eq i16 %80, 0
  %ob = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 19
  %81 = ptrtoint ptr %ob to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %ob, align 1
  %conv63 = zext i8 %82 to i32
  br i1 %tobool61.not, label %if.then62, label %if.else67

if.then62:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30736, i32 noundef 58720256, i32 noundef 23, i32 noundef %conv63) #6
  %db = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 20
  %83 = ptrtoint ptr %db to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %db, align 1
  %conv64 = zext i8 %84 to i32
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30736, i32 noundef 469762048, i32 noundef 26, i32 noundef %conv64) #6
  %ob_ch1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 32
  %85 = ptrtoint ptr %ob_ch1 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %ob_ch1, align 1
  %conv65 = zext i8 %86 to i32
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30772, i32 noundef 58720256, i32 noundef 23, i32 noundef %conv65) #6
  %db_ch1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 33
  %87 = ptrtoint ptr %db_ch1 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %db_ch1, align 1
  %conv66 = zext i8 %88 to i32
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30772, i32 noundef 469762048, i32 noundef 26, i32 noundef %conv66) #6
  br label %if.end76

if.else67:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30744, i32 noundef 458752, i32 noundef 16, i32 noundef %conv63) #6
  %db70 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 20
  %89 = ptrtoint ptr %db70 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %db70, align 1
  %conv71 = zext i8 %90 to i32
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30744, i32 noundef 3670016, i32 noundef 19, i32 noundef %conv71) #6
  %ob_ch172 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 32
  %91 = ptrtoint ptr %ob_ch172 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %ob_ch172, align 1
  %conv73 = zext i8 %92 to i32
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30780, i32 noundef 458752, i32 noundef 16, i32 noundef %conv73) #6
  %db_ch174 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 33
  %93 = ptrtoint ptr %db_ch174 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %db_ch174, align 1
  %conv75 = zext i8 %94 to i32
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30780, i32 noundef 3670016, i32 noundef 19, i32 noundef %conv75) #6
  br label %if.end76

if.end76:                                         ; preds = %if.else67, %if.then62
  %xpaBiasLvl = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 21
  %95 = ptrtoint ptr %xpaBiasLvl to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %xpaBiasLvl, align 1
  %conv77 = zext i8 %96 to i32
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30868, i32 noundef -1073741824, i32 noundef 30, i32 noundef %conv77) #6
  %lna_ctl = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 34
  %97 = ptrtoint ptr %lna_ctl to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %lna_ctl, align 1
  %99 = lshr i8 %98, 5
  %.lobit = and i8 %99, 1
  %100 = zext i8 %.lobit to i32
  tail call void @ath9k_hw_analog_shift_rmw(ptr noundef %ah, i32 noundef 30868, i32 noundef 2097152, i32 noundef 21, i32 noundef %100) #6
  %101 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rmw.i, align 4
  %103 = ptrtoint ptr %lna_ctl to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %lna_ctl, align 1
  %105 = lshr i8 %104, 6
  %106 = and i8 %105, 1
  %and95 = zext i8 %106 to i32
  %call96 = tail call i32 %102(ptr noundef %ah, i32 noundef 41944, i32 noundef %and95, i32 noundef 1) #6
  br label %if.end97

if.end97:                                         ; preds = %if.end76, %for.end.if.end97_crit_edge
  %107 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rmw.i, align 4
  %switchSettling = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 3
  %109 = ptrtoint ptr %switchSettling to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %switchSettling, align 1
  %conv100 = zext i8 %110 to i32
  %shl101 = shl nuw nsw i32 %conv100, 7
  %and102 = and i32 %shl101, 16256
  %call103 = tail call i32 %108(ptr noundef %ah, i32 noundef 38980, i32 noundef %and102, i32 noundef 16256) #6
  %111 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %rmw.i, align 4
  %adcDesiredSize = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 6
  %113 = ptrtoint ptr %adcDesiredSize to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %adcDesiredSize, align 1
  %conv106 = zext i8 %114 to i32
  %call109 = tail call i32 %112(ptr noundef %ah, i32 noundef 38992, i32 noundef %conv106, i32 noundef 255) #6
  %115 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %116)
  %cmp112 = icmp ugt i32 %116, 127
  br i1 %cmp112, label %if.end97.if.end121_crit_edge, label %if.then114

if.end97.if.end121_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end121

if.then114:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  %117 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %rmw.i, align 4
  %pgaDesiredSize = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 7
  %119 = ptrtoint ptr %pgaDesiredSize to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %pgaDesiredSize, align 1
  %conv117 = zext i8 %120 to i32
  %shl118 = shl nuw nsw i32 %conv117, 8
  %call120 = tail call i32 %118(ptr noundef %ah, i32 noundef 38992, i32 noundef %shl118, i32 noundef 65280) #6
  br label %if.end121

if.end121:                                        ; preds = %if.then114, %if.end97.if.end121_crit_edge
  %121 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %write, align 4
  %txEndToXpaOff = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 9
  %123 = ptrtoint ptr %txEndToXpaOff to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %txEndToXpaOff, align 1
  %conv124 = zext i8 %124 to i32
  %shl125 = shl nuw nsw i32 %conv124, 16
  %shl129 = shl nuw i32 %conv124, 24
  %or131 = or i32 %shl125, %shl129
  %txFrameToXpaOn = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 11
  %125 = ptrtoint ptr %txFrameToXpaOn to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %txFrameToXpaOn, align 1
  %conv132 = zext i8 %126 to i32
  %or135 = or i32 %or131, %conv132
  %shl138 = shl nuw nsw i32 %conv132, 8
  %or140 = or i32 %or135, %shl138
  tail call void %122(ptr noundef %ah, i32 noundef %or140, i32 noundef 38964) #6
  %127 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rmw.i, align 4
  %txEndToRxOn = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 10
  %129 = ptrtoint ptr %txEndToRxOn to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %txEndToRxOn, align 1
  %conv143 = zext i8 %130 to i32
  %shl144 = shl nuw nsw i32 %conv143, 16
  %call146 = tail call i32 %128(ptr noundef %ah, i32 noundef 38952, i32 noundef %shl144, i32 noundef 16711680) #6
  %131 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %132)
  %cmp149 = icmp ugt i32 %132, 127
  %133 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %rmw.i, align 4
  %thresh62 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 12
  %135 = ptrtoint ptr %thresh62 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %thresh62, align 1
  %conv154 = zext i8 %136 to i32
  %shl155 = shl nuw nsw i32 %conv154, 12
  br i1 %cmp149, label %if.then151, label %if.else165

if.then151:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #8
  %call157 = tail call i32 %134(ptr noundef %ah, i32 noundef 39012, i32 noundef %shl155, i32 noundef 1044480) #6
  %137 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %rmw.i, align 4
  %139 = ptrtoint ptr %thresh62 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %thresh62, align 1
  %conv161 = zext i8 %140 to i32
  %call164 = tail call i32 %138(ptr noundef %ah, i32 noundef 39352, i32 noundef %conv161, i32 noundef 255) #6
  br label %if.end180

if.else165:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #8
  %and171 = and i32 %shl155, 520192
  %call172 = tail call i32 %134(ptr noundef %ah, i32 noundef 39012, i32 noundef %and171, i32 noundef 520192) #6
  %141 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %rmw.i, align 4
  %143 = ptrtoint ptr %thresh62 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %thresh62, align 1
  %conv176 = zext i8 %144 to i32
  %shl177 = shl nuw nsw i32 %conv176, 16
  %and178 = and i32 %shl177, 8323072
  %call179 = tail call i32 %142(ptr noundef %ah, i32 noundef 39356, i32 noundef %and178, i32 noundef 8323072) #6
  br label %if.end180

if.end180:                                        ; preds = %if.else165, %if.then151
  %145 = ptrtoint ptr %version1.i.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %version1.i.i, align 4
  %147 = and i16 %146, -241
  %148 = tail call i16 @llvm.bswap.i16(i16 %147) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %148)
  %cmp182 = icmp ugt i16 %148, 1
  br i1 %cmp182, label %if.then184, label %if.end180.if.end197_crit_edge

if.end180.if.end197_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end197

if.then184:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #8
  %149 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %rmw.i, align 4
  %txFrameToDataStart = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 24
  %151 = ptrtoint ptr %txFrameToDataStart to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %txFrameToDataStart, align 1
  %conv187 = zext i8 %152 to i32
  %call190 = tail call i32 %150(ptr noundef %ah, i32 noundef 38948, i32 noundef %conv187, i32 noundef 255) #6
  %153 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %rmw.i, align 4
  %txFrameToPaOn = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 25
  %155 = ptrtoint ptr %txFrameToPaOn to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %txFrameToPaOn, align 1
  %conv193 = zext i8 %156 to i32
  %shl194 = shl nuw nsw i32 %conv193, 8
  %call196 = tail call i32 %154(ptr noundef %ah, i32 noundef 38948, i32 noundef %shl194, i32 noundef 65280) #6
  br label %if.end197

if.end197:                                        ; preds = %if.then184, %if.end180.if.end197_crit_edge
  %157 = ptrtoint ptr %version1.i.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %version1.i.i, align 4
  %159 = and i16 %158, -241
  %160 = tail call i16 @llvm.bswap.i16(i16 %159) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %160)
  %cmp199 = icmp ugt i16 %160, 2
  br i1 %cmp199, label %if.then201, label %if.end197.if.end214_crit_edge

if.end197.if.end214_crit_edge:                    ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end214

if.then201:                                       ; preds = %if.end197
  %161 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %channelFlags, align 2
  %163 = and i16 %162, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %163)
  %tobool205.not = icmp eq i16 %163, 0
  br i1 %tobool205.not, label %if.then201.if.end214_crit_edge, label %if.then206

if.then201.if.end214_crit_edge:                   ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end214

if.then206:                                       ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #8
  %164 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %rmw.i, align 4
  %swSettleHt40 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 29
  %166 = ptrtoint ptr %swSettleHt40 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %swSettleHt40, align 1
  %conv209 = zext i8 %167 to i32
  %shl210 = shl nuw nsw i32 %conv209, 7
  %and211 = and i32 %shl210, 16256
  %call212 = tail call i32 %165(ptr noundef %ah, i32 noundef 38980, i32 noundef %and211, i32 noundef 16256) #6
  br label %if.end214

if.end214:                                        ; preds = %if.then206, %if.then201.if.end214_crit_edge, %if.end197.if.end214_crit_edge
  %168 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %169)
  %cmp217 = icmp ugt i32 %169, 127
  br i1 %cmp217, label %land.lhs.true219, label %if.end214.if.end283_crit_edge

if.end214.if.end283_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end283

land.lhs.true219:                                 ; preds = %if.end214
  %170 = ptrtoint ptr %version1.i.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %version1.i.i, align 4
  %172 = and i16 %171, -241
  %173 = tail call i16 @llvm.bswap.i16(i16 %172) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %173)
  %cmp221 = icmp ugt i16 %173, 18
  br i1 %cmp221, label %if.then223, label %land.lhs.true219.if.end230_crit_edge

land.lhs.true219.if.end230_crit_edge:             ; preds = %land.lhs.true219
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end230

if.then223:                                       ; preds = %land.lhs.true219
  call void @__sanitizer_cov_trace_pc() #8
  %174 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %rmw.i, align 4
  %miscBits = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 35
  %176 = ptrtoint ptr %miscBits to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %miscBits, align 1
  %conv226 = zext i8 %177 to i32
  %shl227 = shl nuw nsw i32 %conv226, 2
  %and228 = and i32 %shl227, 12
  %call229 = tail call i32 %175(ptr noundef %ah, i32 noundef 41476, i32 noundef %and228, i32 noundef 12) #6
  br label %if.end230

if.end230:                                        ; preds = %if.then223, %land.lhs.true219.if.end230_crit_edge
  %178 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %178)
  %.pr = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %.pr)
  %cmp233 = icmp eq i32 %.pr, 128
  br i1 %cmp233, label %land.lhs.true235, label %if.end230.if.end283_crit_edge

if.end230.if.end283_crit_edge:                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end283

land.lhs.true235:                                 ; preds = %if.end230
  %179 = ptrtoint ptr %version1.i.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %version1.i.i, align 4
  %181 = and i16 %180, -241
  %182 = tail call i16 @llvm.bswap.i16(i16 %181) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 19, i16 %182)
  %cmp237 = icmp ugt i16 %182, 19
  br i1 %cmp237, label %if.then239, label %land.lhs.true235.if.end283_crit_edge

land.lhs.true235.if.end283_crit_edge:             ; preds = %land.lhs.true235
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end283

if.then239:                                       ; preds = %land.lhs.true235
  %183 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %channelFlags, align 2
  %185 = and i16 %184, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %185)
  %tobool243.not = icmp eq i16 %185, 0
  br i1 %tobool243.not, label %if.then244, label %if.else251

if.then244:                                       ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #8
  %186 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %rmw.i, align 4
  %dacLpMode = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 20
  %188 = ptrtoint ptr %dacLpMode to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %dacLpMode, align 1
  %conv247 = zext i8 %189 to i32
  %shl248 = shl nuw nsw i32 %conv247, 18
  %and249 = and i32 %shl248, 262144
  %call250 = tail call i32 %187(ptr noundef %ah, i32 noundef 30864, i32 noundef %and249, i32 noundef 262144) #6
  br label %if.end268

if.else251:                                       ; preds = %if.then239
  %dacHiPwrMode_5G = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 18
  %190 = ptrtoint ptr %dacHiPwrMode_5G to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %dacHiPwrMode_5G, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool253.not = icmp eq i8 %191, 0
  %192 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %rmw.i, align 4
  br i1 %tobool253.not, label %if.else258, label %if.then254

if.then254:                                       ; preds = %if.else251
  call void @__sanitizer_cov_trace_pc() #8
  %call257 = tail call i32 %193(ptr noundef %ah, i32 noundef 30864, i32 noundef 0, i32 noundef 262144) #6
  br label %if.end268

if.else258:                                       ; preds = %if.else251
  call void @__sanitizer_cov_trace_pc() #8
  %dacLpMode262 = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 20
  %194 = ptrtoint ptr %dacLpMode262 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %dacLpMode262, align 1
  %conv263 = zext i8 %195 to i32
  %shl264 = shl nuw nsw i32 %conv263, 18
  %and265 = and i32 %shl264, 262144
  %call266 = tail call i32 %193(ptr noundef %ah, i32 noundef 30864, i32 noundef %and265, i32 noundef 262144) #6
  br label %if.end268

if.end268:                                        ; preds = %if.else258, %if.then254, %if.then244
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %196 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %196(i32 noundef 21474800) #6
  %197 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %rmw.i, align 4
  %miscBits271 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 35
  %199 = ptrtoint ptr %miscBits271 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %miscBits271, align 1
  %201 = lshr i8 %200, 2
  %202 = zext i8 %201 to i32
  %shl273 = shl nuw nsw i32 %202, 3
  %and274 = and i32 %shl273, 56
  %call275 = tail call i32 %198(ptr noundef %ah, i32 noundef 39236, i32 noundef %and274, i32 noundef 56) #6
  %203 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %rmw.i, align 4
  %desiredScaleCCK = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 23
  %205 = ptrtoint ptr %desiredScaleCCK to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %desiredScaleCCK, align 1
  %conv279 = zext i8 %206 to i32
  %shl280 = shl nuw nsw i32 %conv279, 10
  %and281 = and i32 %shl280, 31744
  %call282 = tail call i32 %204(ptr noundef %ah, i32 noundef 41596, i32 noundef %and281, i32 noundef 31744) #6
  br label %if.end283

if.end283:                                        ; preds = %if.end268, %land.lhs.true235.if.end283_crit_edge, %if.end230.if.end283_crit_edge, %if.end214.if.end283_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_hw_def_set_addac(ptr noundef %ah, ptr noundef %chan) #0 align 64 {
entry:
  %centers = alloca %struct.chan_centers, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp.not = icmp eq i32 %1, 64
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %eep_ops = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 10
  %2 = ptrtoint ptr %eep_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eep_ops, align 4
  %get_eeprom_rev = getelementptr inbounds %struct.eeprom_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %get_eeprom_rev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_eeprom_rev, align 4
  %call = tail call i32 %5(ptr noundef %ah) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call)
  %cmp1 = icmp slt i32 %call, 7
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %6 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %channelFlags, align 2
  %8 = and i16 %7, 1
  %9 = xor i16 %8, 1
  %10 = zext i16 %9 to i32
  %xpaBiasLvl = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %10, i32 21
  %11 = ptrtoint ptr %xpaBiasLvl to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %xpaBiasLvl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp7.not = icmp eq i8 %12, -1
  br i1 %cmp7.not, label %if.else, label %if.end3.if.end59_crit_edge

if.end3.if.end59_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.else:                                          ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %centers) #6
  %13 = ptrtoint ptr %centers to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %centers, align 2, !annotation !197
  %14 = getelementptr inbounds %struct.chan_centers, ptr %centers, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %14, align 2, !annotation !197
  %16 = getelementptr inbounds %struct.chan_centers, ptr %centers, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -1, ptr %16, align 2, !annotation !197
  call void @ath9k_hw_get_channel_centers(ptr noundef %ah, ptr noundef %chan, ptr noundef nonnull %centers) #6
  %18 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %channelFlags, align 2
  %20 = and i16 %19, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool14.not = icmp eq i16 %20, 0
  %21 = ptrtoint ptr %centers to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %centers, align 2
  %conv15 = zext i16 %22 to i32
  %sub = add nuw nsw i32 %conv15, 4
  %sub18 = add nsw i32 %conv15, -4800
  %div = sdiv i32 %sub18, 5
  %cond = select i1 %tobool14.not, i32 %sub, i32 %div
  %xpaBiasLvlFreq = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %10, i32 36
  %23 = ptrtoint ptr %xpaBiasLvlFreq to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %xpaBiasLvlFreq, align 1
  %25 = trunc i16 %24 to i8
  %26 = lshr i8 %25, 6
  %27 = trunc i32 %cond to i16
  %28 = and i16 %27, 255
  %arrayidx33 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %10, i32 36, i32 1
  %29 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %arrayidx33, align 1
  %31 = call i16 @llvm.bswap.i16(i16 %30)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp35 = icmp eq i16 %30, 0
  %and43 = and i16 %31, 255
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %and43)
  %cmp47.not = icmp ult i16 %28, %and43
  %or.cond = select i1 %cmp35, i1 true, i1 %cmp47.not
  br i1 %or.cond, label %if.else.while.end_crit_edge, label %if.then49

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.then49:                                        ; preds = %if.else
  %32 = lshr i16 %31, 14
  %conv55 = trunc i16 %32 to i8
  %arrayidx33.1 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %10, i32 36, i32 2
  %33 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %arrayidx33.1, align 1
  %35 = call i16 @llvm.bswap.i16(i16 %34)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp35.1 = icmp eq i16 %34, 0
  %and43.1 = and i16 %35, 255
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %and43.1)
  %cmp47.not.1 = icmp ult i16 %28, %and43.1
  %or.cond132 = select i1 %cmp35.1, i1 true, i1 %cmp47.not.1
  br i1 %or.cond132, label %if.then49.while.end_crit_edge, label %if.then49.1

if.then49.while.end_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.then49.1:                                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  %36 = lshr i16 %35, 14
  %conv55.le = trunc i16 %36 to i8
  br label %while.end

while.end:                                        ; preds = %if.then49.1, %if.then49.while.end_crit_edge, %if.else.while.end_crit_edge
  %biaslevel.0.lcssa = phi i8 [ %conv55.le, %if.then49.1 ], [ %26, %if.else.while.end_crit_edge ], [ %conv55, %if.then49.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %centers) #6
  br label %if.end59

if.end59:                                         ; preds = %while.end, %if.end3.if.end59_crit_edge
  %biaslevel.1 = phi i8 [ %biaslevel.0.lcssa, %while.end ], [ %12, %if.end3.if.end59_crit_edge ]
  %37 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %channelFlags, align 2
  %39 = and i16 %38, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool63.not = icmp eq i16 %39, 0
  %iniAddac = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 88
  %40 = ptrtoint ptr %iniAddac to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iniAddac, align 4
  %ia_columns = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 88, i32 2
  %42 = ptrtoint ptr %ia_columns to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ia_columns, align 4
  %mul81 = mul i32 %43, 6
  %add82 = or i32 %mul81, 1
  %mul = mul i32 %43, 7
  %add = add i32 %mul, 1
  %add82.sink = select i1 %tobool63.not, i32 %add, i32 %add82
  %.sink134 = select i1 %tobool63.not, i32 -25, i32 -193
  %.sink = select i1 %tobool63.not, i32 3, i32 6
  %arrayidx83 = getelementptr i32, ptr %41, i32 %add82.sink
  %44 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx83, align 4
  %and67 = and i32 %45, %.sink134
  %conv68 = zext i8 %biaslevel.1 to i32
  %shl = shl nuw nsw i32 %conv68, %.sink
  %or = or i32 %and67, %shl
  store i32 %or, ptr %arrayidx83, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_hw_def_set_txpower(ptr noundef %ah, ptr noundef %chan, i16 noundef zeroext %cfgCtl, i8 noundef zeroext %twiceAntennaReduction, i8 noundef zeroext %powerLimit, i1 noundef zeroext %test) #0 align 64 {
entry:
  %idxL.i.i = alloca i16, align 2
  %idxR.i.i = alloca i16, align 2
  %centers.i.i = alloca %struct.chan_centers, align 2
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
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %channelFlags, align 2
  %2 = and i16 %1, 1
  %3 = xor i16 %2, 1
  %4 = zext i16 %3 to i32
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %ratesArray) #6
  %5 = call ptr @memset(ptr %ratesArray, i32 0, i32 72)
  %version1.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %version1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %version1.i, align 4
  %8 = and i16 %7, -241
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %9)
  %cmp = icmp ugt i16 %9, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ht40PowerIncForPdadc5 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 26
  %10 = ptrtoint ptr %ht40PowerIncForPdadc5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ht40PowerIncForPdadc5, align 1
  %phi.cast = zext i8 %11 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ht40PowerIncForPdadc.0 = phi i32 [ %phi.cast, %if.then ], [ 2, %entry.if.end_crit_edge ]
  %conv8 = zext i8 %powerLimit to i16
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
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %centers.i) #6
  %30 = ptrtoint ptr %centers.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -1, ptr %centers.i, align 2, !annotation !197
  %31 = getelementptr inbounds %struct.chan_centers, ptr %centers.i, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -1, ptr %31, align 2, !annotation !197
  %33 = getelementptr inbounds %struct.chan_centers, ptr %centers.i, i32 0, i32 2
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -1, ptr %33, align 2, !annotation !197
  %txchainmask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 74
  %35 = ptrtoint ptr %txchainmask.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %txchainmask.i, align 4
  %conv.i = zext i8 %36 to i32
  call void @ath9k_hw_get_channel_centers(ptr noundef %ah, ptr noundef %chan, ptr noundef nonnull %centers.i) #6
  %call.i = call zeroext i16 @ath9k_hw_get_scaled_power(ptr noundef %ah, i16 noundef zeroext %conv8, i8 noundef zeroext %twiceAntennaReduction) #6
  %37 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %channelFlags, align 2
  %39 = and i16 %38, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool.not.i = icmp eq i16 %39, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %calTargetPowerCck.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 10
  call void @ath9k_hw_get_legacy_target_powers(ptr noundef %ah, ptr noundef %chan, ptr noundef %calTargetPowerCck.i, i16 noundef zeroext 3, ptr noundef nonnull %targetPowerCck.i, i16 noundef zeroext 4, i1 noundef zeroext false) #6
  %calTargetPower2G.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 11
  call void @ath9k_hw_get_legacy_target_powers(ptr noundef %ah, ptr noundef %chan, ptr noundef %calTargetPower2G.i, i16 noundef zeroext 4, ptr noundef nonnull %targetPowerOfdm.i, i16 noundef zeroext 4, i1 noundef zeroext false) #6
  %calTargetPower2GHT20.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 12
  call void @ath9k_hw_get_target_powers(ptr noundef %ah, ptr noundef %chan, ptr noundef %calTargetPower2GHT20.i, i16 noundef zeroext 4, ptr noundef nonnull %targetPowerHt20.i, i16 noundef zeroext 8, i1 noundef zeroext false) #6
  %40 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %channelFlags, align 2
  %42 = and i16 %41, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool8.not.i = icmp eq i16 %42, 0
  br i1 %tobool8.not.i, label %if.then.i.if.end26.i_crit_edge, label %if.then9.i

if.then.i.if.end26.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.then9.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %calTargetPower2GHT40.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 13
  call void @ath9k_hw_get_target_powers(ptr noundef %ah, ptr noundef %chan, ptr noundef %calTargetPower2GHT40.i, i16 noundef zeroext 4, ptr noundef nonnull %targetPowerHt40.i, i16 noundef zeroext 8, i1 noundef zeroext true) #6
  call void @ath9k_hw_get_legacy_target_powers(ptr noundef %ah, ptr noundef %chan, ptr noundef %calTargetPowerCck.i, i16 noundef zeroext 3, ptr noundef nonnull %targetPowerCckExt.i, i16 noundef zeroext 4, i1 noundef zeroext true) #6
  call void @ath9k_hw_get_legacy_target_powers(ptr noundef %ah, ptr noundef %chan, ptr noundef %calTargetPower2G.i, i16 noundef zeroext 4, ptr noundef nonnull %targetPowerOfdmExt.i, i16 noundef zeroext 4, i1 noundef zeroext true) #6
  br label %if.end26.i

if.else.i:                                        ; preds = %if.end
  %calTargetPower5G.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 7
  call void @ath9k_hw_get_legacy_target_powers(ptr noundef %ah, ptr noundef %chan, ptr noundef %calTargetPower5G.i, i16 noundef zeroext 8, ptr noundef nonnull %targetPowerOfdm.i, i16 noundef zeroext 4, i1 noundef zeroext false) #6
  %calTargetPower5GHT20.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 8
  call void @ath9k_hw_get_target_powers(ptr noundef %ah, ptr noundef %chan, ptr noundef %calTargetPower5GHT20.i, i16 noundef zeroext 8, ptr noundef nonnull %targetPowerHt20.i, i16 noundef zeroext 8, i1 noundef zeroext false) #6
  %43 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %channelFlags, align 2
  %45 = and i16 %44, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool20.not.i = icmp eq i16 %45, 0
  br i1 %tobool20.not.i, label %if.else.i.if.end26.i_crit_edge, label %if.then21.i

if.else.i.if.end26.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.then21.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %calTargetPower5GHT40.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 9
  call void @ath9k_hw_get_target_powers(ptr noundef %ah, ptr noundef %chan, ptr noundef %calTargetPower5GHT40.i, i16 noundef zeroext 8, ptr noundef nonnull %targetPowerHt40.i, i16 noundef zeroext 8, i1 noundef zeroext true) #6
  call void @ath9k_hw_get_legacy_target_powers(ptr noundef %ah, ptr noundef %chan, ptr noundef %calTargetPower5G.i, i16 noundef zeroext 8, ptr noundef nonnull %targetPowerOfdmExt.i, i16 noundef zeroext 4, i1 noundef zeroext true) #6
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then21.i, %if.else.i.if.end26.i_crit_edge, %if.then9.i, %if.then.i.if.end26.i_crit_edge
  %pCtlMode.0.i = phi ptr [ @ath9k_hw_set_def_power_per_rate_table.ctlModesFor11a, %if.then21.i ], [ @ath9k_hw_set_def_power_per_rate_table.ctlModesFor11a, %if.else.i.if.end26.i_crit_edge ], [ @ath9k_hw_set_def_power_per_rate_table.ctlModesFor11g, %if.then9.i ], [ @ath9k_hw_set_def_power_per_rate_table.ctlModesFor11g, %if.then.i.if.end26.i_crit_edge ]
  %numCtlModes.0.i = phi i32 [ 4, %if.then21.i ], [ 2, %if.else.i.if.end26.i_crit_edge ], [ 6, %if.then9.i ], [ 3, %if.then.i.if.end26.i_crit_edge ]
  %46 = and i16 %cfgCtl, -16
  %47 = lshr i32 %conv.i, 2
  %and84.i = and i32 %47, 1
  %48 = lshr i32 %conv.i, 1
  %and86.i = and i32 %48, 1
  %and87.i = and i32 %conv.i, 1
  %add.i = add nsw i32 %and87.i, -1
  %add88.i = add nsw i32 %add.i, %and86.i
  %sub.i = add nsw i32 %add88.i, %and84.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 224, i16 %46)
  %cmp100.i = icmp eq i16 %46, 224
  %tPow2x220.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerOfdmExt.i, i32 0, i32 1
  %tPow2x202.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerCckExt.i, i32 0, i32 1
  %arrayidx243.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 0
  %arrayidx243.1.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 1
  %arrayidx243.2.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 2
  %arrayidx243.3.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 3
  %arrayidx243.4.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 4
  %arrayidx243.5.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 5
  %arrayidx243.6.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 6
  %arrayidx243.7.i = getelementptr inbounds %struct.cal_target_power_ht, ptr %targetPowerHt40.i, i32 0, i32 1, i32 7
  %arrayidx132.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerCck.i, i32 0, i32 1, i32 0
  %arrayidx132.1.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerCck.i, i32 0, i32 1, i32 1
  %arrayidx132.2.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerCck.i, i32 0, i32 1, i32 2
  %arrayidx132.3.i = getelementptr inbounds %struct.cal_target_power_leg, ptr %targetPowerCck.i, i32 0, i32 1, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %sw.epilog.i.for.body.i_crit_edge, %if.end26.i
  %indvars.iv.i = phi i32 [ 0, %if.end26.i ], [ %indvars.iv.next.i, %sw.epilog.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %pCtlMode.0.i, i32 %indvars.iv.i
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx.i, align 2
  %.off.i = add i16 %50, -7
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off.i)
  %switch.i = icmp ult i16 %.off.i, 2
  br i1 %switch.i, label %if.then39.i, label %if.else40.i

if.then39.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %centers.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %centers.i, align 2
  br label %if.end49.i

if.else40.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %50)
  %tobool45.not.i = icmp sgt i16 %50, -1
  br i1 %tobool45.not.i, label %if.else47.i, label %if.then46.i

if.then46.i:                                      ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %33, align 2
  br label %if.end49.i

if.else47.i:                                      ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %31 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %31, align 2
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.else47.i, %if.then46.i, %if.then39.i
  %freq.0.i = phi i16 [ %52, %if.then39.i ], [ %54, %if.then46.i ], [ %56, %if.else47.i ]
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %if.end49.i
  %twiceMaxEdgePower.0504.i = phi i16 [ 63, %if.end49.i ], [ %twiceMaxEdgePower.1.i, %for.inc.i.land.rhs.i_crit_edge ]
  %i.0502.i = phi i32 [ 0, %if.end49.i ], [ %inc.i, %for.inc.i.land.rhs.i_crit_edge ]
  %arrayidx53.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 14, i32 %i.0502.i
  %57 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx53.i, align 1
  %conv54.i = zext i8 %58 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool55.not.i = icmp eq i8 %58, 0
  br i1 %tobool55.not.i, label %land.rhs.i.for.end.i_crit_edge, label %for.body56.i

land.rhs.i.for.end.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body56.i:                                     ; preds = %land.rhs.i
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx.i, align 2
  %61 = and i16 %60, 15
  %or498.i = or i16 %61, %46
  %or.i = zext i16 %or498.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %conv54.i)
  %cmp66.i = icmp eq i32 %or.i, %conv54.i
  br i1 %cmp66.i, label %for.body56.i.if.then82.i_crit_edge, label %lor.lhs.false.i

for.body56.i.if.then82.i_crit_edge:               ; preds = %for.body56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then82.i

lor.lhs.false.i:                                  ; preds = %for.body56.i
  %and78.i = and i32 %conv54.i, 15
  %or79.i = or i32 %and78.i, 224
  call void @__sanitizer_cov_trace_cmp4(i32 %or79.i, i32 %or.i)
  %cmp80.i = icmp eq i32 %or79.i, %or.i
  br i1 %cmp80.i, label %lor.lhs.false.i.if.then82.i_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

lor.lhs.false.i.if.then82.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then82.i

if.then82.i:                                      ; preds = %lor.lhs.false.i.if.then82.i_crit_edge, %for.body56.i.if.then82.i_crit_edge
  %arrayidx83.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 15, i32 %i.0502.i
  %arrayidx89.i = getelementptr [3 x [8 x %struct.cal_ctl_edges]], ptr %arrayidx83.i, i32 0, i32 %sub.i
  %62 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %channelFlags, align 2
  %64 = and i16 %63, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool94.not.i = icmp eq i16 %64, 0
  %call97.i = call zeroext i16 @ath9k_hw_get_max_edge_power(i16 noundef zeroext %freq.0.i, ptr noundef %arrayidx89.i, i1 noundef zeroext %tobool94.not.i, i32 noundef 8) #6
  br i1 %cmp100.i, label %if.then102.i, label %if.then82.i.for.end.i_crit_edge

if.then82.i.for.end.i_crit_edge:                  ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.then102.i:                                     ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #8
  %65 = call i16 @llvm.umin.i16(i16 %twiceMaxEdgePower.0504.i, i16 %call97.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then102.i, %lor.lhs.false.i.for.inc.i_crit_edge
  %twiceMaxEdgePower.1.i = phi i16 [ %65, %if.then102.i ], [ %twiceMaxEdgePower.0504.i, %lor.lhs.false.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.0502.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 24
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then82.i.for.end.i_crit_edge, %land.rhs.i.for.end.i_crit_edge
  %twiceMaxEdgePower.2.i = phi i16 [ %twiceMaxEdgePower.0504.i, %land.rhs.i.for.end.i_crit_edge ], [ %twiceMaxEdgePower.1.i, %for.inc.i.for.end.i_crit_edge ], [ %call97.i, %if.then82.i.for.end.i_crit_edge ]
  %66 = call i16 @llvm.umin.i16(i16 %twiceMaxEdgePower.2.i, i16 %call.i) #6
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx.i, align 2
  %69 = zext i16 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.91)
  switch i16 %68, label %for.end.i.sw.epilog.i_crit_edge [
    i16 1, label %for.cond128.preheader.i
    i16 0, label %for.end.i.sw.bb151.i_crit_edge
    i16 2, label %for.end.i.sw.bb151.i_crit_edge560
    i16 6, label %for.end.i.sw.bb176.i_crit_edge
    i16 5, label %for.end.i.sw.bb176.i_crit_edge561
    i16 -32767, label %sw.bb201.i
    i16 -32768, label %for.end.i.sw.bb219.i_crit_edge
    i16 -32766, label %for.end.i.sw.bb219.i_crit_edge562
    i16 8, label %for.end.i.sw.bb237.i_crit_edge
    i16 7, label %for.end.i.sw.bb237.i_crit_edge563
  ]

for.end.i.sw.bb237.i_crit_edge563:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb237.i

for.end.i.sw.bb237.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb237.i

for.end.i.sw.bb219.i_crit_edge562:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb219.i

for.end.i.sw.bb219.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb219.i

for.end.i.sw.bb176.i_crit_edge561:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb176.i

for.end.i.sw.bb176.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb176.i

for.end.i.sw.bb151.i_crit_edge560:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb151.i

for.end.i.sw.bb151.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb151.i

for.end.i.sw.epilog.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

for.cond128.preheader.i:                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv136.i = zext i16 %66 to i32
  %70 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx132.i, align 1
  %conv135.i = zext i8 %71 to i32
  %72 = call i32 @llvm.umin.i32(i32 %conv135.i, i32 %conv136.i) #6
  %conv145.i = trunc i32 %72 to i8
  %73 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv145.i, ptr %arrayidx132.i, align 1
  %74 = ptrtoint ptr %arrayidx132.1.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx132.1.i, align 1
  %conv135.1.i = zext i8 %75 to i32
  %76 = call i32 @llvm.umin.i32(i32 %conv135.1.i, i32 %conv136.i) #6
  %conv145.1.i = trunc i32 %76 to i8
  %77 = ptrtoint ptr %arrayidx132.1.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv145.1.i, ptr %arrayidx132.1.i, align 1
  %78 = ptrtoint ptr %arrayidx132.2.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx132.2.i, align 1
  %conv135.2.i = zext i8 %79 to i32
  %80 = call i32 @llvm.umin.i32(i32 %conv135.2.i, i32 %conv136.i) #6
  %conv145.2.i = trunc i32 %80 to i8
  %81 = ptrtoint ptr %arrayidx132.2.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv145.2.i, ptr %arrayidx132.2.i, align 1
  %82 = ptrtoint ptr %arrayidx132.3.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx132.3.i, align 1
  %conv135.3.i = zext i8 %83 to i32
  %84 = call i32 @llvm.umin.i32(i32 %conv135.3.i, i32 %conv136.i) #6
  br label %sw.epilog.sink.split.i

sw.bb151.i:                                       ; preds = %for.end.i.sw.bb151.i_crit_edge, %for.end.i.sw.bb151.i_crit_edge560
  %conv161.i = zext i16 %66 to i32
  %85 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %12, align 1
  %conv160.i = zext i8 %86 to i32
  %87 = call i32 @llvm.umin.i32(i32 %conv160.i, i32 %conv161.i) #6
  %conv170.i = trunc i32 %87 to i8
  %88 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv170.i, ptr %12, align 1
  %89 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %13, align 1
  %conv160.1.i = zext i8 %90 to i32
  %91 = call i32 @llvm.umin.i32(i32 %conv160.1.i, i32 %conv161.i) #6
  %conv170.1.i = trunc i32 %91 to i8
  %92 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv170.1.i, ptr %13, align 1
  %93 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %14, align 1
  %conv160.2.i = zext i8 %94 to i32
  %95 = call i32 @llvm.umin.i32(i32 %conv160.2.i, i32 %conv161.i) #6
  %conv170.2.i = trunc i32 %95 to i8
  %96 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv170.2.i, ptr %14, align 1
  %97 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %15, align 1
  %conv160.3.i = zext i8 %98 to i32
  %99 = call i32 @llvm.umin.i32(i32 %conv160.3.i, i32 %conv161.i) #6
  br label %sw.epilog.sink.split.i

sw.bb176.i:                                       ; preds = %for.end.i.sw.bb176.i_crit_edge, %for.end.i.sw.bb176.i_crit_edge561
  %conv186.i = zext i16 %66 to i32
  %100 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %20, align 1
  %conv185.i = zext i8 %101 to i32
  %102 = call i32 @llvm.umin.i32(i32 %conv185.i, i32 %conv186.i) #6
  %conv195.i = trunc i32 %102 to i8
  %103 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv195.i, ptr %20, align 1
  %104 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %21, align 1
  %conv185.1.i = zext i8 %105 to i32
  %106 = call i32 @llvm.umin.i32(i32 %conv185.1.i, i32 %conv186.i) #6
  %conv195.1.i = trunc i32 %106 to i8
  %107 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv195.1.i, ptr %21, align 1
  %108 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %22, align 1
  %conv185.2.i = zext i8 %109 to i32
  %110 = call i32 @llvm.umin.i32(i32 %conv185.2.i, i32 %conv186.i) #6
  %conv195.2.i = trunc i32 %110 to i8
  %111 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv195.2.i, ptr %22, align 1
  %112 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %23, align 1
  %conv185.3.i = zext i8 %113 to i32
  %114 = call i32 @llvm.umin.i32(i32 %conv185.3.i, i32 %conv186.i) #6
  %conv195.3.i = trunc i32 %114 to i8
  %115 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv195.3.i, ptr %23, align 1
  %116 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %24, align 1
  %conv185.4.i = zext i8 %117 to i32
  %118 = call i32 @llvm.umin.i32(i32 %conv185.4.i, i32 %conv186.i) #6
  %conv195.4.i = trunc i32 %118 to i8
  %119 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv195.4.i, ptr %24, align 1
  %120 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %25, align 1
  %conv185.5.i = zext i8 %121 to i32
  %122 = call i32 @llvm.umin.i32(i32 %conv185.5.i, i32 %conv186.i) #6
  %conv195.5.i = trunc i32 %122 to i8
  %123 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv195.5.i, ptr %25, align 1
  %124 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %26, align 1
  %conv185.6.i = zext i8 %125 to i32
  %126 = call i32 @llvm.umin.i32(i32 %conv185.6.i, i32 %conv186.i) #6
  %conv195.6.i = trunc i32 %126 to i8
  %127 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv195.6.i, ptr %26, align 1
  %128 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %27, align 1
  %conv185.7.i = zext i8 %129 to i32
  %130 = call i32 @llvm.umin.i32(i32 %conv185.7.i, i32 %conv186.i) #6
  br label %sw.epilog.sink.split.i

sw.bb201.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %131 = ptrtoint ptr %tPow2x202.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %tPow2x202.i, align 1
  %conv206.i = zext i8 %132 to i32
  %conv207.i = zext i16 %66 to i32
  %133 = call i32 @llvm.umin.i32(i32 %conv206.i, i32 %conv207.i) #6
  br label %sw.epilog.sink.split.i

sw.bb219.i:                                       ; preds = %for.end.i.sw.bb219.i_crit_edge, %for.end.i.sw.bb219.i_crit_edge562
  %134 = ptrtoint ptr %tPow2x220.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %tPow2x220.i, align 1
  %conv224.i = zext i8 %135 to i32
  %conv225.i = zext i16 %66 to i32
  %136 = call i32 @llvm.umin.i32(i32 %conv224.i, i32 %conv225.i) #6
  br label %sw.epilog.sink.split.i

sw.bb237.i:                                       ; preds = %for.end.i.sw.bb237.i_crit_edge, %for.end.i.sw.bb237.i_crit_edge563
  %conv247.i = zext i16 %66 to i32
  %137 = ptrtoint ptr %arrayidx243.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx243.i, align 1
  %conv246.i = zext i8 %138 to i32
  %139 = call i32 @llvm.umin.i32(i32 %conv246.i, i32 %conv247.i) #6
  %conv256.i = trunc i32 %139 to i8
  %140 = ptrtoint ptr %arrayidx243.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv256.i, ptr %arrayidx243.i, align 1
  %141 = ptrtoint ptr %arrayidx243.1.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx243.1.i, align 1
  %conv246.1.i = zext i8 %142 to i32
  %143 = call i32 @llvm.umin.i32(i32 %conv246.1.i, i32 %conv247.i) #6
  %conv256.1.i = trunc i32 %143 to i8
  %144 = ptrtoint ptr %arrayidx243.1.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %conv256.1.i, ptr %arrayidx243.1.i, align 1
  %145 = ptrtoint ptr %arrayidx243.2.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx243.2.i, align 1
  %conv246.2.i = zext i8 %146 to i32
  %147 = call i32 @llvm.umin.i32(i32 %conv246.2.i, i32 %conv247.i) #6
  %conv256.2.i = trunc i32 %147 to i8
  %148 = ptrtoint ptr %arrayidx243.2.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv256.2.i, ptr %arrayidx243.2.i, align 1
  %149 = ptrtoint ptr %arrayidx243.3.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx243.3.i, align 1
  %conv246.3.i = zext i8 %150 to i32
  %151 = call i32 @llvm.umin.i32(i32 %conv246.3.i, i32 %conv247.i) #6
  %conv256.3.i = trunc i32 %151 to i8
  %152 = ptrtoint ptr %arrayidx243.3.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %conv256.3.i, ptr %arrayidx243.3.i, align 1
  %153 = ptrtoint ptr %arrayidx243.4.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx243.4.i, align 1
  %conv246.4.i = zext i8 %154 to i32
  %155 = call i32 @llvm.umin.i32(i32 %conv246.4.i, i32 %conv247.i) #6
  %conv256.4.i = trunc i32 %155 to i8
  %156 = ptrtoint ptr %arrayidx243.4.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %conv256.4.i, ptr %arrayidx243.4.i, align 1
  %157 = ptrtoint ptr %arrayidx243.5.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx243.5.i, align 1
  %conv246.5.i = zext i8 %158 to i32
  %159 = call i32 @llvm.umin.i32(i32 %conv246.5.i, i32 %conv247.i) #6
  %conv256.5.i = trunc i32 %159 to i8
  %160 = ptrtoint ptr %arrayidx243.5.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %conv256.5.i, ptr %arrayidx243.5.i, align 1
  %161 = ptrtoint ptr %arrayidx243.6.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx243.6.i, align 1
  %conv246.6.i = zext i8 %162 to i32
  %163 = call i32 @llvm.umin.i32(i32 %conv246.6.i, i32 %conv247.i) #6
  %conv256.6.i = trunc i32 %163 to i8
  %164 = ptrtoint ptr %arrayidx243.6.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %conv256.6.i, ptr %arrayidx243.6.i, align 1
  %165 = ptrtoint ptr %arrayidx243.7.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx243.7.i, align 1
  %conv246.7.i = zext i8 %166 to i32
  %167 = call i32 @llvm.umin.i32(i32 %conv246.7.i, i32 %conv247.i) #6
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb237.i, %sw.bb219.i, %sw.bb201.i, %sw.bb176.i, %sw.bb151.i, %for.cond128.preheader.i
  %.sink.i = phi i32 [ %167, %sw.bb237.i ], [ %130, %sw.bb176.i ], [ %99, %sw.bb151.i ], [ %84, %for.cond128.preheader.i ], [ %136, %sw.bb219.i ], [ %133, %sw.bb201.i ]
  %arrayidx243.7.sink.i = phi ptr [ %arrayidx243.7.i, %sw.bb237.i ], [ %27, %sw.bb176.i ], [ %15, %sw.bb151.i ], [ %arrayidx132.3.i, %for.cond128.preheader.i ], [ %tPow2x220.i, %sw.bb219.i ], [ %tPow2x202.i, %sw.bb201.i ]
  %conv256.7.i = trunc i32 %.sink.i to i8
  %168 = ptrtoint ptr %arrayidx243.7.sink.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %conv256.7.i, ptr %arrayidx243.7.sink.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %for.end.i.sw.epilog.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond520.not.i = icmp eq i32 %indvars.iv.next.i, %numCtlModes.0.i
  br i1 %exitcond520.not.i, label %for.end264.i, label %sw.epilog.i.for.body.i_crit_edge

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end264.i:                                     ; preds = %sw.epilog.i
  %169 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %12, align 1
  %conv267.i = zext i8 %170 to i16
  %arrayidx268.i = getelementptr inbounds i16, ptr %ratesArray, i32 4
  %171 = ptrtoint ptr %arrayidx268.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %conv267.i, ptr %arrayidx268.i, align 2
  %arrayidx269.i = getelementptr inbounds i16, ptr %ratesArray, i32 3
  %172 = ptrtoint ptr %arrayidx269.i to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %conv267.i, ptr %arrayidx269.i, align 2
  %arrayidx270.i = getelementptr inbounds i16, ptr %ratesArray, i32 2
  %173 = ptrtoint ptr %arrayidx270.i to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 %conv267.i, ptr %arrayidx270.i, align 2
  %arrayidx271.i = getelementptr inbounds i16, ptr %ratesArray, i32 1
  %174 = ptrtoint ptr %arrayidx271.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %conv267.i, ptr %arrayidx271.i, align 2
  %175 = ptrtoint ptr %ratesArray to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %conv267.i, ptr %ratesArray, align 2
  %176 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %13, align 1
  %conv275.i = zext i8 %177 to i16
  %arrayidx276.i = getelementptr inbounds i16, ptr %ratesArray, i32 5
  %178 = ptrtoint ptr %arrayidx276.i to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 %conv275.i, ptr %arrayidx276.i, align 2
  %179 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %14, align 1
  %conv279.i = zext i8 %180 to i16
  %arrayidx280.i = getelementptr inbounds i16, ptr %ratesArray, i32 6
  %181 = ptrtoint ptr %arrayidx280.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %conv279.i, ptr %arrayidx280.i, align 2
  %182 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %15, align 1
  %conv283.i = zext i8 %183 to i16
  %arrayidx284.i = getelementptr inbounds i16, ptr %ratesArray, i32 7
  %184 = ptrtoint ptr %arrayidx284.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %conv283.i, ptr %arrayidx284.i, align 2
  %arrayidx288.i = getelementptr inbounds i16, ptr %ratesArray, i32 15
  %185 = ptrtoint ptr %arrayidx288.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %conv267.i, ptr %arrayidx288.i, align 2
  %186 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %20, align 1
  %conv295.i = zext i8 %187 to i16
  %arrayidx297.i = getelementptr inbounds i16, ptr %ratesArray, i32 16
  %188 = ptrtoint ptr %arrayidx297.i to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 %conv295.i, ptr %arrayidx297.i, align 2
  %189 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %21, align 1
  %conv295.1.i = zext i8 %190 to i16
  %arrayidx297.1.i = getelementptr inbounds i16, ptr %ratesArray, i32 17
  %191 = ptrtoint ptr %arrayidx297.1.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %conv295.1.i, ptr %arrayidx297.1.i, align 2
  %192 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %22, align 1
  %conv295.2.i = zext i8 %193 to i16
  %arrayidx297.2.i = getelementptr inbounds i16, ptr %ratesArray, i32 18
  %194 = ptrtoint ptr %arrayidx297.2.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %conv295.2.i, ptr %arrayidx297.2.i, align 2
  %195 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %23, align 1
  %conv295.3.i = zext i8 %196 to i16
  %arrayidx297.3.i = getelementptr inbounds i16, ptr %ratesArray, i32 19
  %197 = ptrtoint ptr %arrayidx297.3.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %conv295.3.i, ptr %arrayidx297.3.i, align 2
  %198 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %24, align 1
  %conv295.4.i = zext i8 %199 to i16
  %arrayidx297.4.i = getelementptr inbounds i16, ptr %ratesArray, i32 20
  %200 = ptrtoint ptr %arrayidx297.4.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 %conv295.4.i, ptr %arrayidx297.4.i, align 2
  %201 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %25, align 1
  %conv295.5.i = zext i8 %202 to i16
  %arrayidx297.5.i = getelementptr inbounds i16, ptr %ratesArray, i32 21
  %203 = ptrtoint ptr %arrayidx297.5.i to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %conv295.5.i, ptr %arrayidx297.5.i, align 2
  %204 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %26, align 1
  %conv295.6.i = zext i8 %205 to i16
  %arrayidx297.6.i = getelementptr inbounds i16, ptr %ratesArray, i32 22
  %206 = ptrtoint ptr %arrayidx297.6.i to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 %conv295.6.i, ptr %arrayidx297.6.i, align 2
  %207 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %27, align 1
  %conv295.7.i = zext i8 %208 to i16
  %arrayidx297.7.i = getelementptr inbounds i16, ptr %ratesArray, i32 23
  %209 = ptrtoint ptr %arrayidx297.7.i to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 %conv295.7.i, ptr %arrayidx297.7.i, align 2
  %210 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %channelFlags, align 2
  %212 = and i16 %211, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %212)
  %tobool304.not.i = icmp eq i16 %212, 0
  br i1 %tobool304.not.i, label %if.then305.i, label %for.end264.i.if.end325.i_crit_edge

for.end264.i.if.end325.i_crit_edge:               ; preds = %for.end264.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end325.i

if.then305.i:                                     ; preds = %for.end264.i
  call void @__sanitizer_cov_trace_pc() #8
  %213 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %arrayidx132.i, align 1
  %conv308.i = zext i8 %214 to i16
  %arrayidx309.i = getelementptr inbounds i16, ptr %ratesArray, i32 8
  %215 = ptrtoint ptr %arrayidx309.i to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 %conv308.i, ptr %arrayidx309.i, align 2
  %216 = ptrtoint ptr %arrayidx132.1.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %arrayidx132.1.i, align 1
  %conv312.i = zext i8 %217 to i16
  %arrayidx313.i = getelementptr inbounds i16, ptr %ratesArray, i32 9
  %218 = ptrtoint ptr %arrayidx313.i to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 %conv312.i, ptr %arrayidx313.i, align 2
  %arrayidx314.i = getelementptr inbounds i16, ptr %ratesArray, i32 10
  %219 = ptrtoint ptr %arrayidx314.i to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 %conv312.i, ptr %arrayidx314.i, align 2
  %220 = ptrtoint ptr %arrayidx132.2.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %arrayidx132.2.i, align 1
  %conv317.i = zext i8 %221 to i16
  %arrayidx318.i = getelementptr inbounds i16, ptr %ratesArray, i32 11
  %222 = ptrtoint ptr %arrayidx318.i to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 %conv317.i, ptr %arrayidx318.i, align 2
  %arrayidx319.i = getelementptr inbounds i16, ptr %ratesArray, i32 12
  %223 = ptrtoint ptr %arrayidx319.i to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 %conv317.i, ptr %arrayidx319.i, align 2
  %224 = ptrtoint ptr %arrayidx132.3.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx132.3.i, align 1
  %conv322.i = zext i8 %225 to i16
  %arrayidx323.i = getelementptr inbounds i16, ptr %ratesArray, i32 13
  %226 = ptrtoint ptr %arrayidx323.i to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 %conv322.i, ptr %arrayidx323.i, align 2
  %arrayidx324.i = getelementptr inbounds i16, ptr %ratesArray, i32 14
  %227 = ptrtoint ptr %arrayidx324.i to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 %conv322.i, ptr %arrayidx324.i, align 2
  br label %if.end325.i

if.end325.i:                                      ; preds = %if.then305.i, %for.end264.i.if.end325.i_crit_edge
  %228 = and i16 %211, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %228)
  %tobool329.not.i = icmp eq i16 %228, 0
  br i1 %tobool329.not.i, label %if.end325.i.ath9k_hw_set_def_power_per_rate_table.exit_crit_edge, label %for.body334.preheader.i

if.end325.i.ath9k_hw_set_def_power_per_rate_table.exit_crit_edge: ; preds = %if.end325.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_set_def_power_per_rate_table.exit

for.body334.preheader.i:                          ; preds = %if.end325.i
  %229 = ptrtoint ptr %arrayidx243.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %arrayidx243.i, align 1
  %conv337.i = zext i8 %230 to i16
  %arrayidx339.i = getelementptr inbounds i16, ptr %ratesArray, i32 24
  %231 = ptrtoint ptr %arrayidx339.i to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 %conv337.i, ptr %arrayidx339.i, align 2
  %232 = ptrtoint ptr %arrayidx243.1.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %arrayidx243.1.i, align 1
  %conv337.1.i = zext i8 %233 to i16
  %arrayidx339.1.i = getelementptr inbounds i16, ptr %ratesArray, i32 25
  %234 = ptrtoint ptr %arrayidx339.1.i to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 %conv337.1.i, ptr %arrayidx339.1.i, align 2
  %235 = ptrtoint ptr %arrayidx243.2.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %arrayidx243.2.i, align 1
  %conv337.2.i = zext i8 %236 to i16
  %arrayidx339.2.i = getelementptr inbounds i16, ptr %ratesArray, i32 26
  %237 = ptrtoint ptr %arrayidx339.2.i to i32
  call void @__asan_store2_noabort(i32 %237)
  store i16 %conv337.2.i, ptr %arrayidx339.2.i, align 2
  %238 = ptrtoint ptr %arrayidx243.3.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %arrayidx243.3.i, align 1
  %conv337.3.i = zext i8 %239 to i16
  %arrayidx339.3.i = getelementptr inbounds i16, ptr %ratesArray, i32 27
  %240 = ptrtoint ptr %arrayidx339.3.i to i32
  call void @__asan_store2_noabort(i32 %240)
  store i16 %conv337.3.i, ptr %arrayidx339.3.i, align 2
  %241 = ptrtoint ptr %arrayidx243.4.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %arrayidx243.4.i, align 1
  %conv337.4.i = zext i8 %242 to i16
  %arrayidx339.4.i = getelementptr inbounds i16, ptr %ratesArray, i32 28
  %243 = ptrtoint ptr %arrayidx339.4.i to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 %conv337.4.i, ptr %arrayidx339.4.i, align 2
  %244 = ptrtoint ptr %arrayidx243.5.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %arrayidx243.5.i, align 1
  %conv337.5.i = zext i8 %245 to i16
  %arrayidx339.5.i = getelementptr inbounds i16, ptr %ratesArray, i32 29
  %246 = ptrtoint ptr %arrayidx339.5.i to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 %conv337.5.i, ptr %arrayidx339.5.i, align 2
  %247 = ptrtoint ptr %arrayidx243.6.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %arrayidx243.6.i, align 1
  %conv337.6.i = zext i8 %248 to i16
  %arrayidx339.6.i = getelementptr inbounds i16, ptr %ratesArray, i32 30
  %249 = ptrtoint ptr %arrayidx339.6.i to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 %conv337.6.i, ptr %arrayidx339.6.i, align 2
  %250 = ptrtoint ptr %arrayidx243.7.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %arrayidx243.7.i, align 1
  %conv337.7.i = zext i8 %251 to i16
  %arrayidx339.7.i = getelementptr inbounds i16, ptr %ratesArray, i32 31
  %252 = ptrtoint ptr %arrayidx339.7.i to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 %conv337.7.i, ptr %arrayidx339.7.i, align 2
  %arrayidx346.i = getelementptr inbounds i16, ptr %ratesArray, i32 33
  %253 = ptrtoint ptr %arrayidx346.i to i32
  call void @__asan_store2_noabort(i32 %253)
  store i16 %conv337.i, ptr %arrayidx346.i, align 2
  %arrayidx350.i = getelementptr inbounds i16, ptr %ratesArray, i32 32
  %254 = ptrtoint ptr %arrayidx350.i to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 %conv337.i, ptr %arrayidx350.i, align 2
  %255 = ptrtoint ptr %tPow2x220.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %tPow2x220.i, align 1
  %conv353.i = zext i8 %256 to i16
  %arrayidx354.i = getelementptr inbounds i16, ptr %ratesArray, i32 35
  %257 = ptrtoint ptr %arrayidx354.i to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 %conv353.i, ptr %arrayidx354.i, align 2
  br i1 %tobool304.not.i, label %if.then359.i, label %for.body334.preheader.i.ath9k_hw_set_def_power_per_rate_table.exit_crit_edge

for.body334.preheader.i.ath9k_hw_set_def_power_per_rate_table.exit_crit_edge: ; preds = %for.body334.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_hw_set_def_power_per_rate_table.exit

if.then359.i:                                     ; preds = %for.body334.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  %258 = ptrtoint ptr %tPow2x202.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %tPow2x202.i, align 1
  %conv362.i = zext i8 %259 to i16
  %arrayidx363.i = getelementptr inbounds i16, ptr %ratesArray, i32 34
  %260 = ptrtoint ptr %arrayidx363.i to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 %conv362.i, ptr %arrayidx363.i, align 2
  br label %ath9k_hw_set_def_power_per_rate_table.exit

ath9k_hw_set_def_power_per_rate_table.exit:       ; preds = %if.then359.i, %for.body334.preheader.i.ath9k_hw_set_def_power_per_rate_table.exit_crit_edge, %if.end325.i.ath9k_hw_set_def_power_per_rate_table.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %centers.i) #6
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %targetPowerHt40.i) #6
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %targetPowerHt20.i) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %targetPowerCckExt.i) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %targetPowerOfdmExt.i) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %targetPowerCck.i) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %targetPowerOfdm.i) #6
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %gainBoundaries.i) #6
  %261 = getelementptr inbounds [4 x i16], ptr %gainBoundaries.i, i32 0, i32 1
  %262 = getelementptr inbounds [4 x i16], ptr %gainBoundaries.i, i32 0, i32 2
  %263 = getelementptr inbounds [4 x i16], ptr %gainBoundaries.i, i32 0, i32 3
  %264 = ptrtoint ptr %gainBoundaries.i to i32
  call void @__asan_store8_noabort(i32 %264)
  store i64 -1, ptr %gainBoundaries.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xpdGainValues.i) #6
  %265 = ptrtoint ptr %xpdGainValues.i to i32
  call void @__asan_store8_noabort(i32 %265)
  store i64 0, ptr %xpdGainValues.i, align 8
  %266 = xor i16 %212, 1
  %267 = zext i16 %266 to i32
  %xpdGain.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %267, i32 14
  %268 = ptrtoint ptr %xpdGain.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %xpdGain.i, align 1
  %eep_ops.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 10
  %270 = ptrtoint ptr %eep_ops.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %eep_ops.i, align 4
  %get_eeprom.i = getelementptr inbounds %struct.eeprom_ops, ptr %271, i32 0, i32 1
  %272 = ptrtoint ptr %get_eeprom.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %get_eeprom.i, align 4
  %call5.i = call i32 %273(ptr noundef %ah, i32 noundef 25) #6
  %conv6.i = trunc i32 %call5.i to i8
  %274 = ptrtoint ptr %version1.i to i32
  call void @__asan_load2_noabort(i32 %274)
  %275 = load i16, ptr %version1.i, align 4
  %276 = and i16 %275, -241
  %277 = call i16 @llvm.bswap.i16(i16 %276) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %277)
  %cmp.i = icmp ugt i16 %277, 1
  br i1 %cmp.i, label %if.then.i535, label %if.else.i536

if.then.i535:                                     ; preds = %ath9k_hw_set_def_power_per_rate_table.exit
  call void @__sanitizer_cov_trace_pc() #8
  %pdGainOverlap.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %267, i32 18
  %278 = ptrtoint ptr %pdGainOverlap.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %pdGainOverlap.i, align 1
  %conv12.i = zext i8 %279 to i16
  br label %if.end.i

if.else.i536:                                     ; preds = %ath9k_hw_set_def_power_per_rate_table.exit
  call void @__sanitizer_cov_trace_pc() #8
  %280 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %ah, align 4
  %call13.i = call i32 %281(ptr noundef %ah, i32 noundef 41580) #6
  %282 = trunc i32 %call13.i to i16
  %conv15.i = and i16 %282, 15
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i536, %if.then.i535
  %pdGainOverlap_t2.0.i = phi i16 [ %conv12.i, %if.then.i535 ], [ %conv15.i, %if.else.i536 ]
  %283 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %channelFlags, align 2
  %285 = and i16 %284, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %285)
  %tobool19.not.i = icmp eq i16 %285, 0
  %calFreqPier5G.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 3
  %calFreqPier2G.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 4
  %pCalBChans.0.i = select i1 %tobool19.not.i, ptr %calFreqPier2G.i, ptr %calFreqPier5G.i
  %numPiers.0.i = select i1 %tobool19.not.i, i16 4, i16 8
  %macVersion.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 4, i32 3
  %286 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %287)
  %cmp24.i = icmp ugt i32 %287, 127
  br i1 %cmp24.i, label %land.lhs.true.i, label %if.end.i.if.end41.i_crit_edge

if.end.i.if.end41.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %288 = ptrtoint ptr %eep_ops.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %eep_ops.i, align 4
  %get_eeprom27.i = getelementptr inbounds %struct.eeprom_ops, ptr %289, i32 0, i32 1
  %290 = ptrtoint ptr %get_eeprom27.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %get_eeprom27.i, align 4
  %call28.i = call i32 %291(ptr noundef %ah, i32 noundef 17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %land.lhs.true.i.if.end41.i_crit_edge, label %land.lhs.true30.i

land.lhs.true.i.if.end41.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

land.lhs.true30.i:                                ; preds = %land.lhs.true.i
  %292 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %292)
  %293 = load i16, ptr %channelFlags, align 2
  %294 = and i16 %293, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %294)
  %tobool34.not.i = icmp eq i16 %294, 0
  br i1 %tobool34.not.i, label %if.then35.i, label %land.lhs.true30.i.if.end41.i_crit_edge

land.lhs.true30.i.if.end41.i_crit_edge:           ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

if.then35.i:                                      ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #8
  %vpdPdg.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 6, i32 0, i32 0, i32 0, i32 2
  %295 = ptrtoint ptr %vpdPdg.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %vpdPdg.i, align 1
  %conv40.i = zext i8 %296 to i32
  %initPDADC.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 78
  %297 = ptrtoint ptr %initPDADC.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %conv40.i, ptr %initPDADC.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then35.i, %land.lhs.true30.i.if.end41.i_crit_edge, %land.lhs.true.i.if.end41.i_crit_edge, %if.end.i.if.end41.i_crit_edge
  %conv45.i = zext i8 %269 to i32
  %298 = and i32 %conv45.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %298)
  %tobool49.not.i = icmp eq i32 %298, 0
  br i1 %tobool49.not.i, label %if.end41.i.for.inc.i537_crit_edge, label %if.end55.i

if.end41.i.for.inc.i537_crit_edge:                ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i537

if.end55.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  %299 = ptrtoint ptr %xpdGainValues.i to i32
  call void @__asan_store2_noabort(i32 %299)
  store i16 3, ptr %xpdGainValues.i, align 8
  br label %for.inc.i537

for.inc.i537:                                     ; preds = %if.end55.i, %if.end41.i.for.inc.i537_crit_edge
  %numXpdGain.1.i = phi i16 [ 1, %if.end55.i ], [ 0, %if.end41.i.for.inc.i537_crit_edge ]
  %300 = and i32 %conv45.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %300)
  %tobool49.not.1.i = icmp eq i32 %300, 0
  br i1 %tobool49.not.1.i, label %for.inc.i537.for.inc.1.i_crit_edge, label %if.end55.1.i

for.inc.i537.for.inc.1.i_crit_edge:               ; preds = %for.inc.i537
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

if.end55.1.i:                                     ; preds = %for.inc.i537
  call void @__sanitizer_cov_trace_pc() #8
  %conv51.1.i = zext i16 %numXpdGain.1.i to i32
  %arrayidx60.1.i = getelementptr [4 x i16], ptr %xpdGainValues.i, i32 0, i32 %conv51.1.i
  %301 = ptrtoint ptr %arrayidx60.1.i to i32
  call void @__asan_store2_noabort(i32 %301)
  store i16 2, ptr %arrayidx60.1.i, align 2
  %inc.1.i = add nuw nsw i16 %numXpdGain.1.i, 1
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end55.1.i, %for.inc.i537.for.inc.1.i_crit_edge
  %numXpdGain.1.1.i = phi i16 [ %inc.1.i, %if.end55.1.i ], [ %numXpdGain.1.i, %for.inc.i537.for.inc.1.i_crit_edge ]
  %302 = and i32 %conv45.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %302)
  %tobool49.not.2.i = icmp eq i32 %302, 0
  br i1 %tobool49.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end55.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

if.end55.2.i:                                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv51.2.i = zext i16 %numXpdGain.1.1.i to i32
  %arrayidx60.2.i = getelementptr [4 x i16], ptr %xpdGainValues.i, i32 0, i32 %conv51.2.i
  %303 = ptrtoint ptr %arrayidx60.2.i to i32
  call void @__asan_store2_noabort(i32 %303)
  store i16 1, ptr %arrayidx60.2.i, align 2
  %inc.2.i = add nuw nsw i16 %numXpdGain.1.1.i, 1
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end55.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %numXpdGain.1.2.i = phi i16 [ %inc.2.i, %if.end55.2.i ], [ %numXpdGain.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %304 = and i32 %conv45.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %304)
  %tobool49.not.3.i = icmp eq i32 %304, 0
  br i1 %tobool49.not.3.i, label %for.inc.2.i.for.end.i539_crit_edge, label %if.end55.3.i

for.inc.2.i.for.end.i539_crit_edge:               ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i539

if.end55.3.i:                                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv51.3.i = zext i16 %numXpdGain.1.2.i to i32
  %arrayidx60.3.i = getelementptr [4 x i16], ptr %xpdGainValues.i, i32 0, i32 %conv51.3.i
  %305 = ptrtoint ptr %arrayidx60.3.i to i32
  call void @__asan_store2_noabort(i32 %305)
  store i16 0, ptr %arrayidx60.3.i, align 2
  %inc.3.i = add nuw nsw i16 %numXpdGain.1.2.i, 1
  br label %for.end.i539

for.end.i539:                                     ; preds = %if.end55.3.i, %for.inc.2.i.for.end.i539_crit_edge
  %numXpdGain.1.3.i = phi i16 [ %inc.3.i, %if.end55.3.i ], [ %numXpdGain.1.2.i, %for.inc.2.i.for.end.i539_crit_edge ]
  %rmw.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 5
  %306 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %rmw.i, align 4
  %308 = shl i16 %numXpdGain.1.3.i, 14
  %309 = add i16 %308, -16384
  %shl.i = zext i16 %309 to i32
  %call68.i = call i32 %307(ptr noundef %ah, i32 noundef 41560, i32 noundef %shl.i, i32 noundef 49152) #6
  %310 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %rmw.i, align 4
  %312 = ptrtoint ptr %xpdGainValues.i to i32
  call void @__asan_load2_noabort(i32 %312)
  %313 = load i16, ptr %xpdGainValues.i, align 8
  %conv72.i = zext i16 %313 to i32
  %shl73.i = shl nuw i32 %conv72.i, 16
  %and74.i = and i32 %shl73.i, 196608
  %call75.i = call i32 %311(ptr noundef %ah, i32 noundef 41560, i32 noundef %and74.i, i32 noundef 196608) #6
  %314 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %rmw.i, align 4
  %arrayidx78.i = getelementptr inbounds [4 x i16], ptr %xpdGainValues.i, i32 0, i32 1
  %316 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load2_noabort(i32 %316)
  %317 = load i16, ptr %arrayidx78.i, align 2
  %conv79.i = zext i16 %317 to i32
  %shl80.i = shl i32 %conv79.i, 18
  %and81.i = and i32 %shl80.i, 786432
  %call82.i = call i32 %315(ptr noundef %ah, i32 noundef 41560, i32 noundef %and81.i, i32 noundef 786432) #6
  %318 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %rmw.i, align 4
  %arrayidx85.i = getelementptr inbounds [4 x i16], ptr %xpdGainValues.i, i32 0, i32 2
  %320 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load2_noabort(i32 %320)
  %321 = load i16, ptr %arrayidx85.i, align 4
  %conv86.i = zext i16 %321 to i32
  %shl87.i = shl i32 %conv86.i, 20
  %and88.i = and i32 %shl87.i, 3145728
  %call89.i = call i32 %319(ptr noundef %ah, i32 noundef 41560, i32 noundef %and88.i, i32 noundef 3145728) #6
  %rxchainmask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 75
  %txMask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 0, i32 8
  %322 = getelementptr inbounds %struct.chan_centers, ptr %centers.i.i, i32 0, i32 1
  %323 = getelementptr inbounds %struct.chan_centers, ptr %centers.i.i, i32 0, i32 2
  %wide.trip.count.i.i = zext i16 %numPiers.0.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %conv6.i)
  %cmp1.not.i.i = icmp eq i8 %conv6.i, -5
  %conv.i.i = sext i8 %conv6.i to i16
  %sub.i376.i = shl nsw i16 %conv.i.i, 1
  %mul.i.i = add nsw i16 %sub.i376.i, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %numXpdGain.1.3.i)
  %cmp1059.not.i.i = icmp eq i16 %numXpdGain.1.3.i, 0
  %sub19.i.i = sub nsw i16 63, %pdGainOverlap_t2.0.i
  %enable_write_buffer.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 3
  %write.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 2
  %324 = and i16 %pdGainOverlap_t2.0.i, 15
  %and172.i = zext i16 %324 to i32
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 3
  %write_flush.i = getelementptr inbounds %struct.ath_ops, ptr %ah, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %numXpdGain.1.3.i)
  %exitcond.not.i381.i = icmp eq i16 %numXpdGain.1.3.i, 1
  %arrayidx.i379.i.1 = getelementptr inbounds i16, ptr %gainBoundaries.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %numXpdGain.1.3.i)
  %exitcond.not.i381.i.1 = icmp eq i16 %numXpdGain.1.3.i, 2
  %arrayidx.i379.i.2 = getelementptr inbounds i16, ptr %gainBoundaries.i, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %numXpdGain.1.3.i)
  %exitcond.not.i381.i.2 = icmp eq i16 %numXpdGain.1.3.i, 3
  %arrayidx.i379.i.3 = getelementptr inbounds i16, ptr %gainBoundaries.i, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %numXpdGain.1.3.i)
  %exitcond66.not.i.i = icmp eq i16 %numXpdGain.1.3.i, 1
  %arrayidx28.i.i.1 = getelementptr inbounds i16, ptr %gainBoundaries.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %numXpdGain.1.3.i)
  %exitcond66.not.i.i.1 = icmp eq i16 %numXpdGain.1.3.i, 2
  %arrayidx28.i.i.2 = getelementptr inbounds i16, ptr %gainBoundaries.i, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %numXpdGain.1.3.i)
  %exitcond66.not.i.i.2 = icmp eq i16 %numXpdGain.1.3.i, 3
  %arrayidx28.i.i.3 = getelementptr inbounds i16, ptr %gainBoundaries.i, i32 3
  br label %for.body94.i

for.body94.i:                                     ; preds = %for.inc267.i.for.body94.i_crit_edge, %for.end.i539
  %indvars.iv410.i = phi i32 [ 0, %for.end.i539 ], [ %indvars.iv.next411.i, %for.inc267.i.for.body94.i_crit_edge ]
  %diff.0403.i = phi i16 [ 0, %for.end.i539 ], [ %diff.3.i, %for.inc267.i.for.body94.i_crit_edge ]
  %325 = ptrtoint ptr %rxchainmask.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %rxchainmask.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %326)
  %cmp96.i = icmp eq i8 %326, 5
  br i1 %cmp96.i, label %land.lhs.true101.i, label %lor.lhs.false.i540

lor.lhs.false.i540:                               ; preds = %for.body94.i
  %327 = ptrtoint ptr %txchainmask.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %txchainmask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %328)
  %cmp99.i = icmp ne i8 %328, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv410.i)
  %cmp103.not.i = icmp eq i32 %indvars.iv410.i, 0
  %or.cond.i = select i1 %cmp99.i, i1 true, i1 %cmp103.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i540.if.else110.i_crit_edge, label %lor.lhs.false.i540.if.then105.i_crit_edge

lor.lhs.false.i540.if.then105.i_crit_edge:        ; preds = %lor.lhs.false.i540
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then105.i

lor.lhs.false.i540.if.else110.i_crit_edge:        ; preds = %lor.lhs.false.i540
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else110.i

land.lhs.true101.i:                               ; preds = %for.body94.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv410.i)
  %cmp103.not.old.i = icmp eq i32 %indvars.iv410.i, 0
  br i1 %cmp103.not.old.i, label %land.lhs.true101.i.if.else110.i_crit_edge, label %land.lhs.true101.i.if.then105.i_crit_edge

land.lhs.true101.i.if.then105.i_crit_edge:        ; preds = %land.lhs.true101.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then105.i

land.lhs.true101.i.if.else110.i_crit_edge:        ; preds = %land.lhs.true101.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else110.i

if.then105.i:                                     ; preds = %land.lhs.true101.i.if.then105.i_crit_edge, %lor.lhs.false.i540.if.then105.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %indvars.iv410.i)
  %cmp107.i = icmp eq i32 %indvars.iv410.i, 1
  %cond109.i = select i1 %cmp107.i, i32 8192, i32 4096
  br label %if.end112.i

if.else110.i:                                     ; preds = %land.lhs.true101.i.if.else110.i_crit_edge, %lor.lhs.false.i540.if.else110.i_crit_edge
  %mul.i = shl nuw nsw i32 %indvars.iv410.i, 12
  br label %if.end112.i

if.end112.i:                                      ; preds = %if.else110.i, %if.then105.i
  %regChainOffset.0.i = phi i32 [ %cond109.i, %if.then105.i ], [ %mul.i, %if.else110.i ]
  %329 = ptrtoint ptr %txMask.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %txMask.i, align 1
  %conv113.i = zext i8 %330 to i32
  %shl115.i = shl nuw i32 1, %indvars.iv410.i
  %and116.i = and i32 %shl115.i, %conv113.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.i)
  %tobool117.not.i = icmp eq i32 %and116.i, 0
  br i1 %tobool117.not.i, label %if.end112.i.for.inc267.i_crit_edge, label %if.then118.i

if.end112.i.for.inc267.i_crit_edge:               ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc267.i

if.then118.i:                                     ; preds = %if.end112.i
  %331 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %331)
  %332 = load i16, ptr %channelFlags, align 2
  %333 = and i16 %332, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %333)
  %tobool122.not.i = icmp eq i16 %333, 0
  %arrayidx130.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 5, i32 %indvars.iv410.i
  %arrayidx126.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 6, i32 %indvars.iv410.i
  %pRawDataset.0.i = select i1 %tobool122.not.i, ptr %arrayidx126.i, ptr %arrayidx130.i
  %334 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %335)
  %cmp135.i = icmp ugt i32 %335, 127
  br i1 %cmp135.i, label %land.lhs.true137.i, label %if.then118.i.if.else145.i_crit_edge

if.then118.i.if.else145.i_crit_edge:              ; preds = %if.then118.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else145.i

land.lhs.true137.i:                               ; preds = %if.then118.i
  %336 = ptrtoint ptr %eep_ops.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %eep_ops.i, align 4
  %get_eeprom139.i = getelementptr inbounds %struct.eeprom_ops, ptr %337, i32 0, i32 1
  %338 = ptrtoint ptr %get_eeprom139.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %get_eeprom139.i, align 4
  %call140.i = call i32 %339(ptr noundef %ah, i32 noundef 17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i)
  %tobool141.not.i = icmp eq i32 %call140.i, 0
  br i1 %tobool141.not.i, label %land.lhs.true137.i.if.else145.i_crit_edge, label %if.then142.i

land.lhs.true137.i.if.else145.i_crit_edge:        ; preds = %land.lhs.true137.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else145.i

if.then142.i:                                     ; preds = %land.lhs.true137.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %idxL.i.i) #6
  %340 = ptrtoint ptr %idxL.i.i to i32
  call void @__asan_store2_noabort(i32 %340)
  store i16 0, ptr %idxL.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %idxR.i.i) #6
  %341 = ptrtoint ptr %idxR.i.i to i32
  call void @__asan_store2_noabort(i32 %341)
  store i16 0, ptr %idxR.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %centers.i.i) #6
  %342 = ptrtoint ptr %centers.i.i to i32
  call void @__asan_store2_noabort(i32 %342)
  store i16 -1, ptr %centers.i.i, align 2, !annotation !197
  %343 = ptrtoint ptr %322 to i32
  call void @__asan_store2_noabort(i32 %343)
  store i16 -1, ptr %322, align 2, !annotation !197
  %344 = ptrtoint ptr %323 to i32
  call void @__asan_store2_noabort(i32 %344)
  store i16 -1, ptr %323, align 2, !annotation !197
  call void @ath9k_hw_get_channel_centers(ptr noundef %ah, ptr noundef %chan, ptr noundef nonnull %centers.i.i) #6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then142.i
  %indvars.iv.i.i = phi i32 [ 0, %if.then142.i ], [ %indvars.iv.next.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %pCalBChans.0.i, i32 %indvars.iv.i.i
  %345 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %346)
  %cmp4.i.i = icmp eq i8 %346, -1
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
  %347 = trunc i32 %indvars.iv.i.i to i16
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.end.loopexit.split.loop.exit.i.i, %for.inc.i.i.for.end.i.i_crit_edge
  %numPiers.0.lcssa.i.i = phi i16 [ %347, %for.end.loopexit.split.loop.exit.i.i ], [ %numPiers.0.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %348 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %348)
  %349 = load i16, ptr %channelFlags, align 2
  %350 = and i16 %349, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %350)
  %tobool.not.i.i = icmp eq i16 %350, 0
  %351 = ptrtoint ptr %centers.i.i to i32
  call void @__asan_load2_noabort(i32 %351)
  %352 = load i16, ptr %centers.i.i, align 2
  %conv7.i.i = zext i16 %352 to i32
  %sub.i.i = add nuw nsw i32 %conv7.i.i, 4
  %sub10.i.i = add nsw i32 %conv7.i.i, -4800
  %div.i.i = sdiv i32 %sub10.i.i, 5
  %cond.i.i = select i1 %tobool.not.i.i, i32 %sub.i.i, i32 %div.i.i
  %conv11.i.i = trunc i32 %cond.i.i to i8
  %call.i.i = call zeroext i1 @ath9k_hw_get_lower_upper_index(i8 noundef zeroext %conv11.i.i, ptr noundef %pCalBChans.0.i, i16 noundef zeroext %numPiers.0.lcssa.i.i, ptr noundef nonnull %idxL.i.i, ptr noundef nonnull %idxR.i.i) #6
  br i1 %call.i.i, label %if.then13.i.i, label %if.else.i.i

if.then13.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %353 = ptrtoint ptr %idxL.i.i to i32
  call void @__asan_load2_noabort(i32 %353)
  %354 = load i16, ptr %idxL.i.i, align 2
  %idxprom14.i.i = zext i16 %354 to i32
  %arrayidx15.i.i = getelementptr %struct.calDataPerFreqOpLoop, ptr %pRawDataset.0.i, i32 %idxprom14.i.i
  %355 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %arrayidx15.i.i, align 1
  br label %if.end42.i.i

if.else.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %357 = ptrtoint ptr %idxR.i.i to i32
  call void @__asan_load2_noabort(i32 %357)
  %358 = load i16, ptr %idxR.i.i, align 2
  %idxprom23.i.i = zext i16 %358 to i32
  %arrayidx24.i.i = getelementptr %struct.calDataPerFreqOpLoop, ptr %pRawDataset.0.i, i32 %idxprom23.i.i
  %359 = ptrtoint ptr %idxL.i.i to i32
  call void @__asan_load2_noabort(i32 %359)
  %360 = load i16, ptr %idxL.i.i, align 2
  %idxprom28.i.i = zext i16 %360 to i32
  %arrayidx29.i.i = getelementptr %struct.calDataPerFreqOpLoop, ptr %pRawDataset.0.i, i32 %idxprom28.i.i
  %361 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %arrayidx29.i.i, align 1
  %conv33.i.i = zext i8 %362 to i16
  %363 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %arrayidx24.i.i, align 1
  %conv39.i.i = zext i8 %364 to i16
  %add.i.i = add nuw nsw i16 %conv39.i.i, %conv33.i.i
  %div4066.i.i = lshr i16 %add.i.i, 1
  %conv41.i.i = trunc i16 %div4066.i.i to i8
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.else.i.i, %if.then13.i.i
  %storemerge.i.i = phi i8 [ %conv41.i.i, %if.else.i.i ], [ %356, %if.then13.i.i ]
  %idxprom23.pn.i.i = phi i32 [ %idxprom23.i.i, %if.else.i.i ], [ %idxprom14.i.i, %if.then13.i.i ]
  %pcdac.0.in.i.i = getelementptr %struct.calDataPerFreqOpLoop, ptr %pRawDataset.0.i, i32 %idxprom23.pn.i.i, i32 2
  %365 = ptrtoint ptr %pcdac.0.in.i.i to i32
  call void @__asan_load1_noabort(i32 %365)
  %pcdac.0.i.i = load i8, ptr %pcdac.0.in.i.i, align 1
  %conv43.i.i = zext i8 %pcdac.0.i.i to i32
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.end42.i.i
  %indvars.iv70.i.i = phi i32 [ %indvars.iv.next71.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ], [ 0, %if.end42.i.i ]
  %arrayidx45.i.i = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 77, i32 %indvars.iv70.i.i
  %366 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %arrayidx45.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %367, i32 %conv43.i.i)
  %cmp46.i.i = icmp ult i32 %367, %conv43.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %indvars.iv70.i.i)
  %cmp49.i.i = icmp ult i32 %indvars.iv70.i.i, 21
  %or.cond.i.i = select i1 %cmp46.i.i, i1 %cmp49.i.i, i1 false
  %indvars.iv.next71.i.i = add nuw nsw i32 %indvars.iv70.i.i, 1
  br i1 %or.cond.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge, label %ath9k_get_txgain_index.exit.i

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

ath9k_get_txgain_index.exit.i:                    ; preds = %while.cond.i.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %centers.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %idxR.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %idxL.i.i) #6
  %368 = lshr i8 %storemerge.i.i, 1
  %div.i = zext i8 %368 to i32
  %369 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %rmw.i, align 4
  %call.i371.i = call i32 %370(ptr noundef %ah, i32 noundef 41584, i32 noundef 50331648, i32 noundef 50331648) #6
  %371 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %rmw.i, align 4
  %call3.i.i = call i32 %372(ptr noundef %ah, i32 noundef 45680, i32 noundef 50331648, i32 noundef 50331648) #6
  %373 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %rmw.i, align 4
  %conv143.i = shl nuw nsw i32 %indvars.iv70.i.i, 19
  %and.i372.i = and i32 %conv143.i, 33030144
  %call6.i.i = call i32 %374(ptr noundef %ah, i32 noundef 41588, i32 noundef %and.i372.i, i32 noundef 33030144) #6
  br label %for.body.i374.i

for.body.i374.i:                                  ; preds = %for.body.i374.i.for.body.i374.i_crit_edge, %ath9k_get_txgain_index.exit.i
  %i.01.i.i = phi i32 [ 0, %ath9k_get_txgain_index.exit.i ], [ %inc.i.i, %for.body.i374.i.for.body.i374.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.01.i.i, i32 %div.i)
  %cmp7.i.i = icmp uge i32 %i.01.i.i, %div.i
  %spec.select.i.i = sext i1 %cmp7.i.i to i8
  %375 = getelementptr i8, ptr @ath9k_hw_set_def_power_cal_table.pdadcValues, i32 %i.01.i.i
  %376 = ptrtoint ptr %375 to i32
  call void @__asan_store1_noabort(i32 %376)
  store i8 %spec.select.i.i, ptr %375, align 1
  %inc.i.i = add nuw nsw i32 %i.01.i.i, 1
  %exitcond.not.i373.i = icmp eq i32 %inc.i.i, 128
  br i1 %exitcond.not.i373.i, label %for.body.i374.i.if.end147.i_crit_edge, label %for.body.i374.i.for.body.i374.i_crit_edge

for.body.i374.i.for.body.i374.i_crit_edge:        ; preds = %for.body.i374.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i374.i

for.body.i374.i.if.end147.i_crit_edge:            ; preds = %for.body.i374.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147.i

if.else145.i:                                     ; preds = %land.lhs.true137.i.if.else145.i_crit_edge, %if.then118.i.if.else145.i_crit_edge
  call void @ath9k_hw_get_gain_boundaries_pdadcs(ptr noundef %ah, ptr noundef %chan, ptr noundef %pRawDataset.0.i, ptr noundef %pCalBChans.0.i, i16 noundef zeroext %numPiers.0.i, i16 noundef zeroext %pdGainOverlap_t2.0.i, ptr noundef nonnull %gainBoundaries.i, ptr noundef nonnull @ath9k_hw_set_def_power_cal_table.pdadcValues, i16 noundef zeroext %numXpdGain.1.3.i) #6
  br label %if.end147.i

if.end147.i:                                      ; preds = %if.else145.i, %for.body.i374.i.if.end147.i_crit_edge
  %377 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %378)
  %cmp.i.i = icmp ugt i32 %378, 127
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end147.i.ath9k_change_gain_boundary_setting.exit.i_crit_edge

if.end147.i.ath9k_change_gain_boundary_setting.exit.i_crit_edge: ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_change_gain_boundary_setting.exit.i

if.then.i.i:                                      ; preds = %if.end147.i
  br i1 %cmp1.not.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %if.then3.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then3.i.i:                                     ; preds = %if.then.i.i
  br i1 %cmp1059.not.i.i, label %if.then3.i.i.ath9k_change_gain_boundary_setting.exit.i_crit_edge, label %for.body.i382.i

if.then3.i.i.ath9k_change_gain_boundary_setting.exit.i_crit_edge: ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_change_gain_boundary_setting.exit.i

for.body.i382.i:                                  ; preds = %if.then3.i.i
  %379 = ptrtoint ptr %gainBoundaries.i to i32
  call void @__asan_load2_noabort(i32 %379)
  %380 = load i16, ptr %gainBoundaries.i, align 8
  %sub14.i.i = sub i16 %380, %mul.i.i
  store i16 %sub14.i.i, ptr %gainBoundaries.i, align 8
  br i1 %exitcond.not.i381.i, label %for.body.i382.i.if.end.i.i_crit_edge, label %for.body.i382.i.1

for.body.i382.i.if.end.i.i_crit_edge:             ; preds = %for.body.i382.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

for.body.i382.i.1:                                ; preds = %for.body.i382.i
  %381 = ptrtoint ptr %arrayidx.i379.i.1 to i32
  call void @__asan_load2_noabort(i32 %381)
  %382 = load i16, ptr %arrayidx.i379.i.1, align 2
  %sub14.i.i.1 = sub i16 %382, %mul.i.i
  store i16 %sub14.i.i.1, ptr %arrayidx.i379.i.1, align 2
  br i1 %exitcond.not.i381.i.1, label %for.body.i382.i.1.if.end.i.i_crit_edge, label %for.body.i382.i.2

for.body.i382.i.1.if.end.i.i_crit_edge:           ; preds = %for.body.i382.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

for.body.i382.i.2:                                ; preds = %for.body.i382.i.1
  %383 = ptrtoint ptr %arrayidx.i379.i.2 to i32
  call void @__asan_load2_noabort(i32 %383)
  %384 = load i16, ptr %arrayidx.i379.i.2, align 4
  %sub14.i.i.2 = sub i16 %384, %mul.i.i
  store i16 %sub14.i.i.2, ptr %arrayidx.i379.i.2, align 4
  br i1 %exitcond.not.i381.i.2, label %for.body.i382.i.2.if.end.i.i_crit_edge, label %for.body.i382.i.3

for.body.i382.i.2.if.end.i.i_crit_edge:           ; preds = %for.body.i382.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

for.body.i382.i.3:                                ; preds = %for.body.i382.i.2
  call void @__sanitizer_cov_trace_pc() #8
  %385 = ptrtoint ptr %arrayidx.i379.i.3 to i32
  call void @__asan_load2_noabort(i32 %385)
  %386 = load i16, ptr %arrayidx.i379.i.3, align 2
  %sub14.i.i.3 = sub i16 %386, %mul.i.i
  store i16 %sub14.i.i.3, ptr %arrayidx.i379.i.3, align 2
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i382.i.3, %for.body.i382.i.2.if.end.i.i_crit_edge, %for.body.i382.i.1.if.end.i.i_crit_edge, %for.body.i382.i.if.end.i.i_crit_edge, %if.then.i.i.if.end.i.i_crit_edge
  %diff.1.i = phi i16 [ %diff.0403.i, %if.then.i.i.if.end.i.i_crit_edge ], [ %mul.i.i, %for.body.i382.i.3 ], [ %mul.i.i, %for.body.i382.i.2.if.end.i.i_crit_edge ], [ %mul.i.i, %for.body.i382.i.1.if.end.i.i_crit_edge ], [ %mul.i.i, %for.body.i382.i.if.end.i.i_crit_edge ]
  br i1 %cmp1059.not.i.i, label %if.end.i.i.ath9k_change_gain_boundary_setting.exit.i_crit_edge, label %for.body26.i.i

if.end.i.i.ath9k_change_gain_boundary_setting.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_change_gain_boundary_setting.exit.i

for.body26.i.i:                                   ; preds = %if.end.i.i
  %387 = ptrtoint ptr %gainBoundaries.i to i32
  call void @__asan_load2_noabort(i32 %387)
  %388 = load i16, ptr %gainBoundaries.i, align 8
  %389 = call i16 @llvm.umin.i16(i16 %sub19.i.i, i16 %388) #6
  %390 = ptrtoint ptr %gainBoundaries.i to i32
  call void @__asan_store2_noabort(i32 %390)
  store i16 %389, ptr %gainBoundaries.i, align 8
  br i1 %exitcond66.not.i.i, label %for.body26.i.i.ath9k_change_gain_boundary_setting.exit.i_crit_edge, label %for.body26.i.i.1

for.body26.i.i.ath9k_change_gain_boundary_setting.exit.i_crit_edge: ; preds = %for.body26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_change_gain_boundary_setting.exit.i

for.body26.i.i.1:                                 ; preds = %for.body26.i.i
  %391 = ptrtoint ptr %arrayidx28.i.i.1 to i32
  call void @__asan_load2_noabort(i32 %391)
  %392 = load i16, ptr %arrayidx28.i.i.1, align 2
  %393 = call i16 @llvm.umin.i16(i16 %sub19.i.i, i16 %392) #6
  %394 = ptrtoint ptr %arrayidx28.i.i.1 to i32
  call void @__asan_store2_noabort(i32 %394)
  store i16 %393, ptr %arrayidx28.i.i.1, align 2
  br i1 %exitcond66.not.i.i.1, label %for.body26.i.i.1.ath9k_change_gain_boundary_setting.exit.i_crit_edge, label %for.body26.i.i.2

for.body26.i.i.1.ath9k_change_gain_boundary_setting.exit.i_crit_edge: ; preds = %for.body26.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_change_gain_boundary_setting.exit.i

for.body26.i.i.2:                                 ; preds = %for.body26.i.i.1
  %395 = ptrtoint ptr %arrayidx28.i.i.2 to i32
  call void @__asan_load2_noabort(i32 %395)
  %396 = load i16, ptr %arrayidx28.i.i.2, align 4
  %397 = call i16 @llvm.umin.i16(i16 %sub19.i.i, i16 %396) #6
  %398 = ptrtoint ptr %arrayidx28.i.i.2 to i32
  call void @__asan_store2_noabort(i32 %398)
  store i16 %397, ptr %arrayidx28.i.i.2, align 4
  br i1 %exitcond66.not.i.i.2, label %for.body26.i.i.2.ath9k_change_gain_boundary_setting.exit.i_crit_edge, label %for.body26.i.i.3

for.body26.i.i.2.ath9k_change_gain_boundary_setting.exit.i_crit_edge: ; preds = %for.body26.i.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_change_gain_boundary_setting.exit.i

for.body26.i.i.3:                                 ; preds = %for.body26.i.i.2
  call void @__sanitizer_cov_trace_pc() #8
  %399 = ptrtoint ptr %arrayidx28.i.i.3 to i32
  call void @__asan_load2_noabort(i32 %399)
  %400 = load i16, ptr %arrayidx28.i.i.3, align 2
  %401 = call i16 @llvm.umin.i16(i16 %sub19.i.i, i16 %400) #6
  %402 = ptrtoint ptr %arrayidx28.i.i.3 to i32
  call void @__asan_store2_noabort(i32 %402)
  store i16 %401, ptr %arrayidx28.i.i.3, align 2
  br label %ath9k_change_gain_boundary_setting.exit.i

ath9k_change_gain_boundary_setting.exit.i:        ; preds = %for.body26.i.i.3, %for.body26.i.i.2.ath9k_change_gain_boundary_setting.exit.i_crit_edge, %for.body26.i.i.1.ath9k_change_gain_boundary_setting.exit.i_crit_edge, %for.body26.i.i.ath9k_change_gain_boundary_setting.exit.i_crit_edge, %if.end.i.i.ath9k_change_gain_boundary_setting.exit.i_crit_edge, %if.then3.i.i.ath9k_change_gain_boundary_setting.exit.i_crit_edge, %if.end147.i.ath9k_change_gain_boundary_setting.exit.i_crit_edge
  %diff.2.i = phi i16 [ %diff.1.i, %if.end.i.i.ath9k_change_gain_boundary_setting.exit.i_crit_edge ], [ %mul.i.i, %if.then3.i.i.ath9k_change_gain_boundary_setting.exit.i_crit_edge ], [ %diff.0403.i, %if.end147.i.ath9k_change_gain_boundary_setting.exit.i_crit_edge ], [ %diff.1.i, %for.body26.i.i.3 ], [ %diff.1.i, %for.body26.i.i.2.ath9k_change_gain_boundary_setting.exit.i_crit_edge ], [ %diff.1.i, %for.body26.i.i.1.ath9k_change_gain_boundary_setting.exit.i_crit_edge ], [ %diff.1.i, %for.body26.i.i.ath9k_change_gain_boundary_setting.exit.i_crit_edge ]
  %403 = ptrtoint ptr %enable_write_buffer.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %enable_write_buffer.i, align 4
  %tobool151.not.i = icmp eq ptr %404, null
  br i1 %tobool151.not.i, label %ath9k_change_gain_boundary_setting.exit.i.do.end.i_crit_edge, label %if.then152.i

ath9k_change_gain_boundary_setting.exit.i.do.end.i_crit_edge: ; preds = %ath9k_change_gain_boundary_setting.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.then152.i:                                     ; preds = %ath9k_change_gain_boundary_setting.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void %404(ptr noundef %ah) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then152.i, %ath9k_change_gain_boundary_setting.exit.i.do.end.i_crit_edge
  %405 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %406)
  %cmp158.i = icmp ugt i32 %406, 127
  br i1 %cmp158.i, label %land.lhs.true160.i, label %do.end.i.if.else167.i_crit_edge

do.end.i.if.else167.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else167.i

land.lhs.true160.i:                               ; preds = %do.end.i
  %407 = ptrtoint ptr %eep_ops.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %eep_ops.i, align 4
  %get_eeprom162.i = getelementptr inbounds %struct.eeprom_ops, ptr %408, i32 0, i32 1
  %409 = ptrtoint ptr %get_eeprom162.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %get_eeprom162.i, align 4
  %call163.i = call i32 %410(ptr noundef %ah, i32 noundef 17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163.i)
  %tobool164.not.i = icmp eq i32 %call163.i, 0
  br i1 %tobool164.not.i, label %land.lhs.true160.i.if.else167.i_crit_edge, label %if.then165.i

land.lhs.true160.i.if.else167.i_crit_edge:        ; preds = %land.lhs.true160.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else167.i

if.then165.i:                                     ; preds = %land.lhs.true160.i
  call void @__sanitizer_cov_trace_pc() #8
  %411 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %write.i, align 4
  %add.i541 = add nsw i32 %regChainOffset.0.i, 41580
  call void %412(ptr noundef %ah, i32 noundef 238609286, i32 noundef %add.i541) #6
  br label %if.end193.i

if.else167.i:                                     ; preds = %land.lhs.true160.i.if.else167.i_crit_edge, %do.end.i.if.else167.i_crit_edge
  %413 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %write.i, align 4
  %415 = ptrtoint ptr %gainBoundaries.i to i32
  call void @__asan_load2_noabort(i32 %415)
  %416 = load i16, ptr %gainBoundaries.i, align 8
  %conv174.i = zext i16 %416 to i32
  %shl175.i = shl nuw nsw i32 %conv174.i, 4
  %and176.i = and i32 %shl175.i, 1008
  %or.i542 = or i32 %and176.i, %and172.i
  %417 = ptrtoint ptr %261 to i32
  call void @__asan_load2_noabort(i32 %417)
  %418 = load i16, ptr %261, align 2
  %conv178.i = zext i16 %418 to i32
  %shl179.i = shl nuw nsw i32 %conv178.i, 10
  %and180.i = and i32 %shl179.i, 64512
  %or181.i = or i32 %or.i542, %and180.i
  %419 = ptrtoint ptr %262 to i32
  call void @__asan_load2_noabort(i32 %419)
  %420 = load i16, ptr %262, align 4
  %conv183.i = zext i16 %420 to i32
  %shl184.i = shl nuw i32 %conv183.i, 16
  %and185.i = and i32 %shl184.i, 4128768
  %or186.i = or i32 %or181.i, %and185.i
  %421 = ptrtoint ptr %263 to i32
  call void @__asan_load2_noabort(i32 %421)
  %422 = load i16, ptr %263, align 2
  %conv188.i = zext i16 %422 to i32
  %shl189.i = shl i32 %conv188.i, 22
  %and190.i = and i32 %shl189.i, 264241152
  %or191.i = or i32 %or186.i, %and190.i
  %add192.i = add nsw i32 %regChainOffset.0.i, 41580
  call void %414(ptr noundef %ah, i32 noundef %or191.i, i32 noundef %add192.i) #6
  br label %if.end193.i

if.end193.i:                                      ; preds = %if.else167.i, %if.then165.i
  %423 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %424)
  %cmp.i384.i = icmp ult i32 %424, 128
  %or.cond.i386.i = or i1 %cmp1.not.i.i, %cmp.i384.i
  br i1 %or.cond.i386.i, label %if.end193.i.ath9k_adjust_pdadc_values.exit.i_crit_edge, label %for.cond.preheader.i.i

if.end193.i.ath9k_adjust_pdadc_values.exit.i_crit_edge: ; preds = %if.end193.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_adjust_pdadc_values.exit.i

for.cond.preheader.i.i:                           ; preds = %if.end193.i
  %conv5.i.i = sext i16 %diff.2.i to i32
  %sub.i387.i = sub nsw i32 128, %conv5.i.i
  %conv7.i388.i = and i32 %sub.i387.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv7.i388.i)
  %cmp81.not.i.i = icmp eq i32 %conv7.i388.i, 0
  br i1 %cmp81.not.i.i, label %for.cond.preheader.i.i.for.end.i395.i_crit_edge, label %for.cond.preheader.i.i.for.body.i394.i_crit_edge

for.cond.preheader.i.i.for.body.i394.i_crit_edge: ; preds = %for.cond.preheader.i.i
  br label %for.body.i394.i

for.cond.preheader.i.i.for.end.i395.i_crit_edge:  ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i395.i

for.body.i394.i:                                  ; preds = %for.body.i394.i.for.body.i394.i_crit_edge, %for.cond.preheader.i.i.for.body.i394.i_crit_edge
  %indvars.iv.i389.i = phi i32 [ %indvars.iv.next.i392.i, %for.body.i394.i.for.body.i394.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i394.i_crit_edge ]
  %add.i390.i = add nsw i32 %indvars.iv.i389.i, %conv5.i.i
  %arrayidx.i391.i = getelementptr i8, ptr @ath9k_hw_set_def_power_cal_table.pdadcValues, i32 %add.i390.i
  %425 = ptrtoint ptr %arrayidx.i391.i to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %arrayidx.i391.i, align 1
  %arrayidx12.i.i = getelementptr i8, ptr @ath9k_hw_set_def_power_cal_table.pdadcValues, i32 %indvars.iv.i389.i
  %427 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store1_noabort(i32 %427)
  store i8 %426, ptr %arrayidx12.i.i, align 1
  %indvars.iv.next.i392.i = add nuw nsw i32 %indvars.iv.i389.i, 1
  %exitcond.not.i393.i = icmp eq i32 %indvars.iv.next.i392.i, %conv7.i388.i
  br i1 %exitcond.not.i393.i, label %for.body.i394.i.for.end.i395.i_crit_edge, label %for.body.i394.i.for.body.i394.i_crit_edge

for.body.i394.i.for.body.i394.i_crit_edge:        ; preds = %for.body.i394.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i394.i

for.body.i394.i.for.end.i395.i_crit_edge:         ; preds = %for.body.i394.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i395.i

for.end.i395.i:                                   ; preds = %for.body.i394.i.for.end.i395.i_crit_edge, %for.cond.preheader.i.i.for.end.i395.i_crit_edge
  %428 = and i32 %sub.i387.i, 65408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %428)
  %cmp184.i.i = icmp eq i32 %428, 0
  br i1 %cmp184.i.i, label %for.body20.lr.ph.i.i, label %for.end.i395.i.ath9k_adjust_pdadc_values.exit.i_crit_edge

for.end.i395.i.ath9k_adjust_pdadc_values.exit.i_crit_edge: ; preds = %for.end.i395.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_adjust_pdadc_values.exit.i

for.body20.lr.ph.i.i:                             ; preds = %for.end.i395.i
  %arrayidx23.i.i = getelementptr i8, ptr @ath9k_hw_set_def_power_cal_table.pdadcValues, i32 %sub.i387.i
  br label %for.body20.i.i

for.body20.i.i:                                   ; preds = %for.body20.i.i.for.body20.i.i_crit_edge, %for.body20.lr.ph.i.i
  %indvars.iv6.i.i = phi i32 [ %conv7.i388.i, %for.body20.lr.ph.i.i ], [ %indvars.iv.next7.i.i, %for.body20.i.i.for.body20.i.i_crit_edge ]
  %429 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %arrayidx23.i.i, align 1
  %arrayidx25.i.i = getelementptr i8, ptr @ath9k_hw_set_def_power_cal_table.pdadcValues, i32 %indvars.iv6.i.i
  %431 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_store1_noabort(i32 %431)
  store i8 %430, ptr %arrayidx25.i.i, align 1
  %indvars.iv.next7.i.i = add nuw nsw i32 %indvars.iv6.i.i, 1
  %lftr.wideiv.i.i = trunc i32 %indvars.iv.next7.i.i to i16
  %exitcond8.not.i.i = icmp eq i16 %lftr.wideiv.i.i, 128
  br i1 %exitcond8.not.i.i, label %for.body20.i.i.ath9k_adjust_pdadc_values.exit.i_crit_edge, label %for.body20.i.i.for.body20.i.i_crit_edge

for.body20.i.i.for.body20.i.i_crit_edge:          ; preds = %for.body20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body20.i.i

for.body20.i.i.ath9k_adjust_pdadc_values.exit.i_crit_edge: ; preds = %for.body20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_adjust_pdadc_values.exit.i

ath9k_adjust_pdadc_values.exit.i:                 ; preds = %for.body20.i.i.ath9k_adjust_pdadc_values.exit.i_crit_edge, %for.end.i395.i.ath9k_adjust_pdadc_values.exit.i_crit_edge, %if.end193.i.ath9k_adjust_pdadc_values.exit.i_crit_edge
  %add194.i = add nsw i32 %regChainOffset.0.i, 41600
  br label %for.body199.i

for.body199.i:                                    ; preds = %do.end252.i.for.body199.i_crit_edge, %ath9k_adjust_pdadc_values.exit.i
  %indvars.iv.i543 = phi i32 [ 0, %ath9k_adjust_pdadc_values.exit.i ], [ %indvars.iv.next.i545, %do.end252.i.for.body199.i_crit_edge ]
  %regOffset.0402.i = phi i32 [ %add194.i, %ath9k_adjust_pdadc_values.exit.i ], [ %add253.i, %do.end252.i.for.body199.i_crit_edge ]
  %mul201.i = shl nuw nsw i32 %indvars.iv.i543, 2
  %arrayidx202.i = getelementptr [128 x i8], ptr @ath9k_hw_set_def_power_cal_table.pdadcValues, i32 0, i32 %mul201.i
  %432 = ptrtoint ptr %arrayidx202.i to i32
  call void @__asan_loadN_noabort(i32 %432, i32 4)
  %433 = load i32, ptr %arrayidx202.i, align 1
  %434 = call i32 @llvm.bswap.i32(i32 %433) #6
  %435 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %write.i, align 4
  call void %436(ptr noundef %ah, i32 noundef %434, i32 noundef %regOffset.0402.i) #6
  %437 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %debug_mask.i, align 4
  %and207.i = and i32 %438, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and207.i)
  %tobool208.not.i = icmp eq i32 %and207.i, 0
  br i1 %tobool208.not.i, label %for.body199.i.do.body214.i_crit_edge, label %if.then209.i

for.body199.i.do.body214.i_crit_edge:             ; preds = %for.body199.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body214.i

if.then209.i:                                     ; preds = %for.body199.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.89, i32 noundef %indvars.iv410.i, i32 noundef %regChainOffset.0.i, i32 noundef %regOffset.0402.i, i32 noundef %434) #6
  br label %do.body214.i

do.body214.i:                                     ; preds = %if.then209.i, %for.body199.i.do.body214.i_crit_edge
  %439 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %debug_mask.i, align 4
  %and216.i = and i32 %440, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and216.i)
  %tobool217.not.i = icmp eq i32 %and216.i, 0
  br i1 %tobool217.not.i, label %do.body214.i.do.end252.i_crit_edge, label %if.then218.i

do.body214.i.do.end252.i_crit_edge:               ; preds = %do.body214.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end252.i

if.then218.i:                                     ; preds = %do.body214.i
  call void @__sanitizer_cov_trace_pc() #8
  %441 = ptrtoint ptr %arrayidx202.i to i32
  call void @__asan_load1_noabort(i32 %441)
  %442 = load i8, ptr %arrayidx202.i, align 1
  %conv225.i544 = zext i8 %442 to i32
  %add228.i = or i32 %mul201.i, 1
  %arrayidx232.i = getelementptr [128 x i8], ptr @ath9k_hw_set_def_power_cal_table.pdadcValues, i32 0, i32 %add228.i
  %443 = ptrtoint ptr %arrayidx232.i to i32
  call void @__asan_load1_noabort(i32 %443)
  %444 = load i8, ptr %arrayidx232.i, align 1
  %conv233.i = zext i8 %444 to i32
  %add236.i = or i32 %mul201.i, 2
  %arrayidx240.i = getelementptr [128 x i8], ptr @ath9k_hw_set_def_power_cal_table.pdadcValues, i32 0, i32 %add236.i
  %445 = ptrtoint ptr %arrayidx240.i to i32
  call void @__asan_load1_noabort(i32 %445)
  %446 = load i8, ptr %arrayidx240.i, align 1
  %conv241.i = zext i8 %446 to i32
  %add244.i = or i32 %mul201.i, 3
  %arrayidx248.i = getelementptr [128 x i8], ptr @ath9k_hw_set_def_power_cal_table.pdadcValues, i32 0, i32 %add244.i
  %447 = ptrtoint ptr %arrayidx248.i to i32
  call void @__asan_load1_noabort(i32 %447)
  %448 = load i8, ptr %arrayidx248.i, align 1
  %conv249.i = zext i8 %448 to i32
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.90, i32 noundef %indvars.iv410.i, i32 noundef %mul201.i, i32 noundef %conv225.i544, i32 noundef %add228.i, i32 noundef %conv233.i, i32 noundef %add236.i, i32 noundef %conv241.i, i32 noundef %add244.i, i32 noundef %conv249.i) #6
  br label %do.end252.i

do.end252.i:                                      ; preds = %if.then218.i, %do.body214.i.do.end252.i_crit_edge
  %add253.i = add nuw nsw i32 %regOffset.0402.i, 4
  %indvars.iv.next.i545 = add nuw nsw i32 %indvars.iv.i543, 1
  %exitcond.not.i546 = icmp eq i32 %indvars.iv.next.i545, 32
  br i1 %exitcond.not.i546, label %do.body257.i, label %do.end252.i.for.body199.i_crit_edge

do.end252.i.for.body199.i_crit_edge:              ; preds = %do.end252.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body199.i

do.body257.i:                                     ; preds = %do.end252.i
  %449 = ptrtoint ptr %write_flush.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %write_flush.i, align 4
  %tobool259.not.i = icmp eq ptr %450, null
  br i1 %tobool259.not.i, label %do.body257.i.for.inc267.i_crit_edge, label %if.then260.i

do.body257.i.for.inc267.i_crit_edge:              ; preds = %do.body257.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc267.i

if.then260.i:                                     ; preds = %do.body257.i
  call void @__sanitizer_cov_trace_pc() #8
  call void %450(ptr noundef %ah) #6
  br label %for.inc267.i

for.inc267.i:                                     ; preds = %if.then260.i, %do.body257.i.for.inc267.i_crit_edge, %if.end112.i.for.inc267.i_crit_edge
  %diff.3.i = phi i16 [ %diff.0403.i, %if.end112.i.for.inc267.i_crit_edge ], [ %diff.2.i, %do.body257.i.for.inc267.i_crit_edge ], [ %diff.2.i, %if.then260.i ]
  %indvars.iv.next411.i = add nuw nsw i32 %indvars.iv410.i, 1
  %exitcond412.not.i = icmp eq i32 %indvars.iv.next411.i, 3
  br i1 %exitcond412.not.i, label %ath9k_hw_set_def_power_cal_table.exit, label %for.inc267.i.for.body94.i_crit_edge

for.inc267.i.for.body94.i_crit_edge:              ; preds = %for.inc267.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body94.i

ath9k_hw_set_def_power_cal_table.exit:            ; preds = %for.inc267.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xpdGainValues.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %gainBoundaries.i) #6
  %max_power_level = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 3, i32 22, i32 3
  %451 = ptrtoint ptr %max_power_level to i32
  call void @__asan_store2_noabort(i32 %451)
  store i16 0, ptr %max_power_level, align 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %ath9k_hw_set_def_power_cal_table.exit
  %i.0548 = phi i32 [ 0, %ath9k_hw_set_def_power_cal_table.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %452 = phi i16 [ 0, %ath9k_hw_set_def_power_cal_table.exit ], [ %459, %for.inc.for.body_crit_edge ]
  %arrayidx11 = getelementptr [36 x i16], ptr %ratesArray, i32 0, i32 %i.0548
  %453 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %453)
  %454 = load i16, ptr %arrayidx11, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %454)
  %cmp13 = icmp sgt i16 %454, 63
  br i1 %cmp13, label %if.then15, label %for.body.if.end17_crit_edge

for.body.if.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %455 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store2_noabort(i32 %455)
  store i16 63, ptr %arrayidx11, align 2
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %for.body.if.end17_crit_edge
  %456 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %456)
  %457 = load i16, ptr %arrayidx11, align 2
  %conv19 = sext i16 %457 to i32
  %conv21 = zext i16 %452 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv19, i32 %conv21)
  %cmp22 = icmp sgt i32 %conv19, %conv21
  br i1 %cmp22, label %if.then24, label %if.end17.for.inc_crit_edge

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %458 = ptrtoint ptr %max_power_level to i32
  call void @__asan_store2_noabort(i32 %458)
  store i16 %457, ptr %max_power_level, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %if.end17.for.inc_crit_edge
  %459 = phi i16 [ %452, %if.end17.for.inc_crit_edge ], [ %457, %if.then24 ]
  %inc = add nuw nsw i32 %i.0548, 1
  %exitcond.not = icmp eq i32 %inc, 36
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @ath9k_hw_update_regulatory_maxpower(ptr noundef %ah) #6
  br i1 %test, label %for.end.cleanup_crit_edge, label %if.end30

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %for.end
  %460 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %461)
  %cmp31 = icmp ugt i32 %461, 127
  br i1 %cmp31, label %if.end30.for.body37_crit_edge, label %if.end30.do.body_crit_edge

if.end30.do.body_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end30.for.body37_crit_edge:                    ; preds = %if.end30
  br label %for.body37

for.body37:                                       ; preds = %for.body37.for.body37_crit_edge, %if.end30.for.body37_crit_edge
  %i.1549 = phi i32 [ %inc45, %for.body37.for.body37_crit_edge ], [ 0, %if.end30.for.body37_crit_edge ]
  %462 = ptrtoint ptr %eep_ops.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %eep_ops.i, align 4
  %get_eeprom = getelementptr inbounds %struct.eeprom_ops, ptr %463, i32 0, i32 1
  %464 = ptrtoint ptr %get_eeprom to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %get_eeprom, align 4
  %call38 = call i32 %465(ptr noundef %ah, i32 noundef 25) #6
  %sext = shl i32 %call38, 24
  %mul = ashr exact i32 %sext, 23
  %arrayidx41 = getelementptr [36 x i16], ptr %ratesArray, i32 0, i32 %i.1549
  %466 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load2_noabort(i32 %466)
  %467 = load i16, ptr %arrayidx41, align 2
  %468 = trunc i32 %mul to i16
  %conv43 = sub i16 %467, %468
  store i16 %conv43, ptr %arrayidx41, align 2
  %inc45 = add nuw nsw i32 %i.1549, 1
  %exitcond551.not = icmp eq i32 %inc45, 36
  br i1 %exitcond551.not, label %for.body37.do.body_crit_edge, label %for.body37.for.body37_crit_edge

for.body37.for.body37_crit_edge:                  ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body37

for.body37.do.body_crit_edge:                     ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %for.body37.do.body_crit_edge, %if.end30.do.body_crit_edge
  %469 = ptrtoint ptr %enable_write_buffer.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %enable_write_buffer.i, align 4
  %tobool48.not = icmp eq ptr %470, null
  br i1 %tobool48.not, label %do.body.do.end_crit_edge, label %if.then49

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then49:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void %470(ptr noundef %ah) #6
  br label %do.end

do.end:                                           ; preds = %if.then49, %do.body.do.end_crit_edge
  %471 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %write.i, align 4
  %473 = ptrtoint ptr %arrayidx269.i to i32
  call void @__asan_load2_noabort(i32 %473)
  %474 = load i16, ptr %arrayidx269.i, align 2
  %475 = and i16 %474, 63
  %and56 = zext i16 %475 to i32
  %shl = shl nuw nsw i32 %and56, 24
  %476 = ptrtoint ptr %arrayidx270.i to i32
  call void @__asan_load2_noabort(i32 %476)
  %477 = load i16, ptr %arrayidx270.i, align 2
  %478 = and i16 %477, 63
  %and59 = zext i16 %478 to i32
  %shl60 = shl nuw nsw i32 %and59, 16
  %or = or i32 %shl60, %shl
  %479 = ptrtoint ptr %arrayidx271.i to i32
  call void @__asan_load2_noabort(i32 %479)
  %480 = load i16, ptr %arrayidx271.i, align 2
  %481 = shl i16 %480, 8
  %482 = and i16 %481, 16128
  %shl64 = zext i16 %482 to i32
  %or65 = or i32 %or, %shl64
  %483 = ptrtoint ptr %ratesArray to i32
  call void @__asan_load2_noabort(i32 %483)
  %484 = load i16, ptr %ratesArray, align 2
  %485 = and i16 %484, 63
  %and68 = zext i16 %485 to i32
  %or70 = or i32 %or65, %and68
  call void %472(ptr noundef %ah, i32 noundef %or70, i32 noundef 39220) #6
  %486 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %write.i, align 4
  %488 = ptrtoint ptr %arrayidx284.i to i32
  call void @__asan_load2_noabort(i32 %488)
  %489 = load i16, ptr %arrayidx284.i, align 2
  %490 = and i16 %489, 63
  %and75 = zext i16 %490 to i32
  %shl76 = shl nuw nsw i32 %and75, 24
  %491 = ptrtoint ptr %arrayidx280.i to i32
  call void @__asan_load2_noabort(i32 %491)
  %492 = load i16, ptr %arrayidx280.i, align 2
  %493 = and i16 %492, 63
  %and79 = zext i16 %493 to i32
  %shl80 = shl nuw nsw i32 %and79, 16
  %or81 = or i32 %shl80, %shl76
  %494 = ptrtoint ptr %arrayidx276.i to i32
  call void @__asan_load2_noabort(i32 %494)
  %495 = load i16, ptr %arrayidx276.i, align 2
  %496 = shl i16 %495, 8
  %497 = and i16 %496, 16128
  %shl85 = zext i16 %497 to i32
  %or86 = or i32 %or81, %shl85
  %498 = ptrtoint ptr %arrayidx268.i to i32
  call void @__asan_load2_noabort(i32 %498)
  %499 = load i16, ptr %arrayidx268.i, align 2
  %500 = and i16 %499, 63
  %and89 = zext i16 %500 to i32
  %or91 = or i32 %or86, %and89
  call void %487(ptr noundef %ah, i32 noundef %or91, i32 noundef 39224) #6
  %501 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %501)
  %502 = load i16, ptr %channelFlags, align 2
  %503 = and i16 %502, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %503)
  %tobool95.not = icmp eq i16 %503, 0
  br i1 %tobool95.not, label %if.then96, label %do.end.if.end198_crit_edge

do.end.if.end198_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end198

if.then96:                                        ; preds = %do.end
  %504 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %505)
  %cmp99 = icmp ugt i32 %505, 127
  br i1 %cmp99, label %land.lhs.true, label %if.then96.if.else_crit_edge

if.then96.if.else_crit_edge:                      ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.then96
  %506 = ptrtoint ptr %eep_ops.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %eep_ops.i, align 4
  %get_eeprom102 = getelementptr inbounds %struct.eeprom_ops, ptr %507, i32 0, i32 1
  %508 = ptrtoint ptr %get_eeprom102 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %get_eeprom102, align 4
  %call103 = call i32 %509(ptr noundef %ah, i32 noundef 17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %land.lhs.true.if.else_crit_edge, label %if.then105

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then105:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %510 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %write.i, align 4
  %arrayidx108 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 10
  %512 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load2_noabort(i32 %512)
  %513 = load i16, ptr %arrayidx108, align 2
  %514 = add i16 %513, 62
  %515 = and i16 %514, 63
  %and111 = zext i16 %515 to i32
  %shl112 = shl nuw nsw i32 %and111, 24
  %arrayidx113 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 9
  %516 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load2_noabort(i32 %516)
  %517 = load i16, ptr %arrayidx113, align 2
  %518 = add i16 %517, 62
  %519 = and i16 %518, 63
  %and116 = zext i16 %519 to i32
  %shl117 = shl nuw nsw i32 %and116, 16
  %or118 = or i32 %shl117, %shl112
  %520 = ptrtoint ptr %arrayidx288.i to i32
  call void @__asan_load2_noabort(i32 %520)
  %521 = load i16, ptr %arrayidx288.i, align 2
  %522 = shl i16 %521, 8
  %523 = and i16 %522, 16128
  %shl122 = zext i16 %523 to i32
  %or123 = or i32 %or118, %shl122
  %arrayidx124 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 8
  %524 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load2_noabort(i32 %524)
  %525 = load i16, ptr %arrayidx124, align 2
  %526 = add i16 %525, 62
  %527 = and i16 %526, 63
  %and127 = zext i16 %527 to i32
  %or129 = or i32 %or123, %and127
  call void %511(ptr noundef %ah, i32 noundef %or129, i32 noundef 41524) #6
  %arrayidx132 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 14
  %528 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load2_noabort(i32 %528)
  %529 = load i16, ptr %arrayidx132, align 2
  %530 = add i16 %529, 62
  %531 = and i16 %530, 63
  %and135 = zext i16 %531 to i32
  %shl136 = shl nuw nsw i32 %and135, 24
  %arrayidx137 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 13
  %532 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load2_noabort(i32 %532)
  %533 = load i16, ptr %arrayidx137, align 2
  %534 = add i16 %533, 62
  %535 = and i16 %534, 63
  %and140 = zext i16 %535 to i32
  %shl141 = shl nuw nsw i32 %and140, 16
  %or142 = or i32 %shl141, %shl136
  %arrayidx143 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 12
  %536 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load2_noabort(i32 %536)
  %537 = load i16, ptr %arrayidx143, align 2
  %538 = shl i16 %537, 8
  %539 = add i16 %538, 15872
  %540 = and i16 %539, 16128
  %shl147 = zext i16 %540 to i32
  %or148 = or i32 %or142, %shl147
  %arrayidx149 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 11
  %541 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load2_noabort(i32 %541)
  %542 = load i16, ptr %arrayidx149, align 2
  %543 = add i16 %542, 62
  br label %if.end198.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then96.if.else_crit_edge
  %544 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %write.i, align 4
  %arrayidx157 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 10
  %546 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load2_noabort(i32 %546)
  %547 = load i16, ptr %arrayidx157, align 2
  %548 = and i16 %547, 63
  %and159 = zext i16 %548 to i32
  %shl160 = shl nuw nsw i32 %and159, 24
  %arrayidx161 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 9
  %549 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load2_noabort(i32 %549)
  %550 = load i16, ptr %arrayidx161, align 2
  %551 = and i16 %550, 63
  %and163 = zext i16 %551 to i32
  %shl164 = shl nuw nsw i32 %and163, 16
  %or165 = or i32 %shl164, %shl160
  %552 = ptrtoint ptr %arrayidx288.i to i32
  call void @__asan_load2_noabort(i32 %552)
  %553 = load i16, ptr %arrayidx288.i, align 2
  %554 = shl i16 %553, 8
  %555 = and i16 %554, 16128
  %shl169 = zext i16 %555 to i32
  %or170 = or i32 %or165, %shl169
  %arrayidx171 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 8
  %556 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load2_noabort(i32 %556)
  %557 = load i16, ptr %arrayidx171, align 2
  %558 = and i16 %557, 63
  %and173 = zext i16 %558 to i32
  %or175 = or i32 %or170, %and173
  call void %545(ptr noundef %ah, i32 noundef %or175, i32 noundef 41524) #6
  %arrayidx178 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 14
  %559 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load2_noabort(i32 %559)
  %560 = load i16, ptr %arrayidx178, align 2
  %561 = and i16 %560, 63
  %and180 = zext i16 %561 to i32
  %shl181 = shl nuw nsw i32 %and180, 24
  %arrayidx182 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 13
  %562 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load2_noabort(i32 %562)
  %563 = load i16, ptr %arrayidx182, align 2
  %564 = and i16 %563, 63
  %and184 = zext i16 %564 to i32
  %shl185 = shl nuw nsw i32 %and184, 16
  %or186 = or i32 %shl185, %shl181
  %arrayidx187 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 12
  %565 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load2_noabort(i32 %565)
  %566 = load i16, ptr %arrayidx187, align 2
  %567 = shl i16 %566, 8
  %568 = and i16 %567, 16128
  %shl190 = zext i16 %568 to i32
  %or191 = or i32 %or186, %shl190
  %arrayidx192 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 11
  %569 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load2_noabort(i32 %569)
  %570 = load i16, ptr %arrayidx192, align 2
  br label %if.end198.sink.split

if.end198.sink.split:                             ; preds = %if.else, %if.then105
  %.sink554 = phi i16 [ %543, %if.then105 ], [ %570, %if.else ]
  %or148.sink = phi i32 [ %or148, %if.then105 ], [ %or191, %if.else ]
  %cck_ofdm_delta.0.ph = phi i32 [ 2, %if.then105 ], [ 0, %if.else ]
  %571 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %.sink = load ptr, ptr %write.i, align 4
  %572 = and i16 %.sink554, 63
  %and152 = zext i16 %572 to i32
  %or154 = or i32 %or148.sink, %and152
  call void %.sink(ptr noundef %ah, i32 noundef %or154, i32 noundef 41528) #6
  br label %if.end198

if.end198:                                        ; preds = %if.end198.sink.split, %do.end.if.end198_crit_edge
  %cck_ofdm_delta.0 = phi i32 [ 0, %do.end.if.end198_crit_edge ], [ %cck_ofdm_delta.0.ph, %if.end198.sink.split ]
  %573 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %write.i, align 4
  %575 = ptrtoint ptr %arrayidx297.3.i to i32
  call void @__asan_load2_noabort(i32 %575)
  %576 = load i16, ptr %arrayidx297.3.i, align 2
  %577 = and i16 %576, 63
  %and203 = zext i16 %577 to i32
  %shl204 = shl nuw nsw i32 %and203, 24
  %578 = ptrtoint ptr %arrayidx297.2.i to i32
  call void @__asan_load2_noabort(i32 %578)
  %579 = load i16, ptr %arrayidx297.2.i, align 2
  %580 = and i16 %579, 63
  %and207 = zext i16 %580 to i32
  %shl208 = shl nuw nsw i32 %and207, 16
  %or209 = or i32 %shl208, %shl204
  %581 = ptrtoint ptr %arrayidx297.1.i to i32
  call void @__asan_load2_noabort(i32 %581)
  %582 = load i16, ptr %arrayidx297.1.i, align 2
  %583 = shl i16 %582, 8
  %584 = and i16 %583, 16128
  %shl213 = zext i16 %584 to i32
  %or214 = or i32 %or209, %shl213
  %585 = ptrtoint ptr %arrayidx297.i to i32
  call void @__asan_load2_noabort(i32 %585)
  %586 = load i16, ptr %arrayidx297.i, align 2
  %587 = and i16 %586, 63
  %and217 = zext i16 %587 to i32
  %or219 = or i32 %or214, %and217
  call void %574(ptr noundef %ah, i32 noundef %or219, i32 noundef 41868) #6
  %588 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %write.i, align 4
  %590 = ptrtoint ptr %arrayidx297.7.i to i32
  call void @__asan_load2_noabort(i32 %590)
  %591 = load i16, ptr %arrayidx297.7.i, align 2
  %592 = and i16 %591, 63
  %and224 = zext i16 %592 to i32
  %shl225 = shl nuw nsw i32 %and224, 24
  %593 = ptrtoint ptr %arrayidx297.6.i to i32
  call void @__asan_load2_noabort(i32 %593)
  %594 = load i16, ptr %arrayidx297.6.i, align 2
  %595 = and i16 %594, 63
  %and228 = zext i16 %595 to i32
  %shl229 = shl nuw nsw i32 %and228, 16
  %or230 = or i32 %shl229, %shl225
  %596 = ptrtoint ptr %arrayidx297.5.i to i32
  call void @__asan_load2_noabort(i32 %596)
  %597 = load i16, ptr %arrayidx297.5.i, align 2
  %598 = shl i16 %597, 8
  %599 = and i16 %598, 16128
  %shl234 = zext i16 %599 to i32
  %or235 = or i32 %or230, %shl234
  %600 = ptrtoint ptr %arrayidx297.4.i to i32
  call void @__asan_load2_noabort(i32 %600)
  %601 = load i16, ptr %arrayidx297.4.i, align 2
  %602 = and i16 %601, 63
  %and238 = zext i16 %602 to i32
  %or240 = or i32 %or235, %and238
  call void %589(ptr noundef %ah, i32 noundef %or240, i32 noundef 41872) #6
  %603 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %603)
  %604 = load i16, ptr %channelFlags, align 2
  %605 = and i16 %604, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %605)
  %tobool244.not = icmp eq i16 %605, 0
  br i1 %tobool244.not, label %if.end198.if.end359_crit_edge, label %if.then245

if.end198.if.end359_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end359

if.then245:                                       ; preds = %if.end198
  %606 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %write.i, align 4
  %arrayidx248 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 27
  %608 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load2_noabort(i32 %608)
  %609 = load i16, ptr %arrayidx248, align 2
  %conv249509 = zext i16 %609 to i32
  %add = add nuw nsw i32 %ht40PowerIncForPdadc.0, %conv249509
  %and251 = shl i32 %add, 24
  %shl252 = and i32 %and251, 1056964608
  %arrayidx253 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 26
  %610 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_load2_noabort(i32 %610)
  %611 = load i16, ptr %arrayidx253, align 2
  %conv254510 = zext i16 %611 to i32
  %add256 = add nuw nsw i32 %ht40PowerIncForPdadc.0, %conv254510
  %and257 = shl i32 %add256, 16
  %shl258 = and i32 %and257, 4128768
  %or259 = or i32 %shl258, %shl252
  %arrayidx260 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 25
  %612 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_load2_noabort(i32 %612)
  %613 = load i16, ptr %arrayidx260, align 2
  %conv261511 = zext i16 %613 to i32
  %add263 = add nuw nsw i32 %ht40PowerIncForPdadc.0, %conv261511
  %and264 = shl nuw nsw i32 %add263, 8
  %shl265 = and i32 %and264, 16128
  %or266 = or i32 %or259, %shl265
  %arrayidx267 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 24
  %614 = ptrtoint ptr %arrayidx267 to i32
  call void @__asan_load2_noabort(i32 %614)
  %615 = load i16, ptr %arrayidx267, align 2
  %conv268512 = zext i16 %615 to i32
  %add270 = add nuw nsw i32 %ht40PowerIncForPdadc.0, %conv268512
  %and271 = and i32 %add270, 63
  %or273 = or i32 %or266, %and271
  call void %607(ptr noundef %ah, i32 noundef %or273, i32 noundef 41932) #6
  %616 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %write.i, align 4
  %arrayidx276 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 31
  %618 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_load2_noabort(i32 %618)
  %619 = load i16, ptr %arrayidx276, align 2
  %conv277513 = zext i16 %619 to i32
  %add279 = add nuw nsw i32 %ht40PowerIncForPdadc.0, %conv277513
  %and280 = shl i32 %add279, 24
  %shl281 = and i32 %and280, 1056964608
  %arrayidx282 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 30
  %620 = ptrtoint ptr %arrayidx282 to i32
  call void @__asan_load2_noabort(i32 %620)
  %621 = load i16, ptr %arrayidx282, align 2
  %conv283514 = zext i16 %621 to i32
  %add285 = add nuw nsw i32 %ht40PowerIncForPdadc.0, %conv283514
  %and286 = shl i32 %add285, 16
  %shl287 = and i32 %and286, 4128768
  %or288 = or i32 %shl287, %shl281
  %arrayidx289 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 29
  %622 = ptrtoint ptr %arrayidx289 to i32
  call void @__asan_load2_noabort(i32 %622)
  %623 = load i16, ptr %arrayidx289, align 2
  %conv290515 = zext i16 %623 to i32
  %add292 = add nuw nsw i32 %ht40PowerIncForPdadc.0, %conv290515
  %and293 = shl nuw nsw i32 %add292, 8
  %shl294 = and i32 %and293, 16128
  %or295 = or i32 %or288, %shl294
  %arrayidx296 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 28
  %624 = ptrtoint ptr %arrayidx296 to i32
  call void @__asan_load2_noabort(i32 %624)
  %625 = load i16, ptr %arrayidx296, align 2
  %conv297516 = zext i16 %625 to i32
  %add299 = add nuw nsw i32 %ht40PowerIncForPdadc.0, %conv297516
  %and300 = and i32 %add299, 63
  %or302 = or i32 %or295, %and300
  call void %617(ptr noundef %ah, i32 noundef %or302, i32 noundef 41936) #6
  %626 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %627)
  %cmp305 = icmp ugt i32 %627, 127
  br i1 %cmp305, label %land.lhs.true307, label %if.then245.if.else336_crit_edge

if.then245.if.else336_crit_edge:                  ; preds = %if.then245
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else336

land.lhs.true307:                                 ; preds = %if.then245
  %628 = ptrtoint ptr %eep_ops.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %eep_ops.i, align 4
  %get_eeprom309 = getelementptr inbounds %struct.eeprom_ops, ptr %629, i32 0, i32 1
  %630 = ptrtoint ptr %get_eeprom309 to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %get_eeprom309, align 4
  %call310 = call i32 %631(ptr noundef %ah, i32 noundef 17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call310)
  %tobool311.not = icmp eq i32 %call310, 0
  br i1 %tobool311.not, label %land.lhs.true307.if.else336_crit_edge, label %if.then312

land.lhs.true307.if.else336_crit_edge:            ; preds = %land.lhs.true307
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else336

if.then312:                                       ; preds = %land.lhs.true307
  call void @__sanitizer_cov_trace_pc() #8
  %632 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %write.i, align 4
  %arrayidx315 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 35
  %634 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_load2_noabort(i32 %634)
  %635 = load i16, ptr %arrayidx315, align 2
  %636 = and i16 %635, 63
  %and317 = zext i16 %636 to i32
  %shl318 = shl nuw nsw i32 %and317, 24
  %arrayidx319 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 34
  %637 = ptrtoint ptr %arrayidx319 to i32
  call void @__asan_load2_noabort(i32 %637)
  %638 = load i16, ptr %arrayidx319, align 2
  %conv320522 = zext i16 %638 to i32
  %sub321 = sub nsw i32 %conv320522, %cck_ofdm_delta.0
  %and322 = shl i32 %sub321, 16
  %shl323 = and i32 %and322, 4128768
  %or324 = or i32 %shl323, %shl318
  %arrayidx325 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 33
  %639 = ptrtoint ptr %arrayidx325 to i32
  call void @__asan_load2_noabort(i32 %639)
  %640 = load i16, ptr %arrayidx325, align 2
  %641 = shl i16 %640, 8
  %642 = and i16 %641, 16128
  %shl328 = zext i16 %642 to i32
  %or329 = or i32 %or324, %shl328
  %arrayidx330 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 32
  %643 = ptrtoint ptr %arrayidx330 to i32
  call void @__asan_load2_noabort(i32 %643)
  %644 = load i16, ptr %arrayidx330, align 2
  %conv331524 = zext i16 %644 to i32
  %sub332 = sub nsw i32 %conv331524, %cck_ofdm_delta.0
  %and333 = and i32 %sub332, 63
  %or335 = or i32 %or329, %and333
  call void %633(ptr noundef %ah, i32 noundef %or335, i32 noundef 41940) #6
  br label %if.end359

if.else336:                                       ; preds = %land.lhs.true307.if.else336_crit_edge, %if.then245.if.else336_crit_edge
  %645 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load ptr, ptr %write.i, align 4
  %arrayidx339 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 35
  %647 = ptrtoint ptr %arrayidx339 to i32
  call void @__asan_load2_noabort(i32 %647)
  %648 = load i16, ptr %arrayidx339, align 2
  %649 = and i16 %648, 63
  %and341 = zext i16 %649 to i32
  %shl342 = shl nuw nsw i32 %and341, 24
  %arrayidx343 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 34
  %650 = ptrtoint ptr %arrayidx343 to i32
  call void @__asan_load2_noabort(i32 %650)
  %651 = load i16, ptr %arrayidx343, align 2
  %652 = and i16 %651, 63
  %and345 = zext i16 %652 to i32
  %shl346 = shl nuw nsw i32 %and345, 16
  %or347 = or i32 %shl346, %shl342
  %arrayidx348 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 33
  %653 = ptrtoint ptr %arrayidx348 to i32
  call void @__asan_load2_noabort(i32 %653)
  %654 = load i16, ptr %arrayidx348, align 2
  %655 = shl i16 %654, 8
  %656 = and i16 %655, 16128
  %shl351 = zext i16 %656 to i32
  %or352 = or i32 %or347, %shl351
  %arrayidx353 = getelementptr inbounds [36 x i16], ptr %ratesArray, i32 0, i32 32
  %657 = ptrtoint ptr %arrayidx353 to i32
  call void @__asan_load2_noabort(i32 %657)
  %658 = load i16, ptr %arrayidx353, align 2
  %659 = and i16 %658, 63
  %and355 = zext i16 %659 to i32
  %or357 = or i32 %or352, %and355
  call void %646(ptr noundef %ah, i32 noundef %or357, i32 noundef 41940) #6
  br label %if.end359

if.end359:                                        ; preds = %if.else336, %if.then312, %if.end198.if.end359_crit_edge
  %660 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %write.i, align 4
  %pwrDecreaseFor3Chain = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 23
  %662 = ptrtoint ptr %pwrDecreaseFor3Chain to i32
  call void @__asan_load1_noabort(i32 %662)
  %663 = load i8, ptr %pwrDecreaseFor3Chain, align 1
  %664 = and i8 %663, 63
  %and363 = zext i8 %664 to i32
  %shl364 = shl nuw nsw i32 %and363, 6
  %pwrDecreaseFor2Chain = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %4, i32 22
  %665 = ptrtoint ptr %pwrDecreaseFor2Chain to i32
  call void @__asan_load1_noabort(i32 %665)
  %666 = load i8, ptr %pwrDecreaseFor2Chain, align 1
  %667 = and i8 %666, 63
  %and366 = zext i8 %667 to i32
  %or368 = or i32 %shl364, %and366
  call void %661(ptr noundef %ah, i32 noundef %or368, i32 noundef 41928) #6
  %tpc_enabled = getelementptr inbounds %struct.ath_hw, ptr %ah, i32 0, i32 137
  %668 = ptrtoint ptr %tpc_enabled to i32
  call void @__asan_load1_noabort(i32 %668)
  %669 = load i8, ptr %tpc_enabled, align 4, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %669)
  %tobool369.not = icmp eq i8 %669, 0
  br i1 %tobool369.not, label %if.end359.do.body383_crit_edge, label %if.then370

if.end359.do.body383_crit_edge:                   ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body383

if.then370:                                       ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #8
  %670 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %670)
  %671 = load i16, ptr %channelFlags, align 2
  %672 = and i16 %671, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %672)
  %tobool374.not = icmp eq i16 %672, 0
  %spec.select = select i1 %tobool374.not, i32 0, i32 %ht40PowerIncForPdadc.0
  call void @ar5008_hw_init_rate_txpower(ptr noundef %ah, ptr noundef nonnull %ratesArray, ptr noundef %chan, i32 noundef %spec.select) #6
  br label %do.body383

do.body383:                                       ; preds = %if.then370, %if.end359.do.body383_crit_edge
  %.sink555 = phi i32 [ 127, %if.then370 ], [ 63, %if.end359.do.body383_crit_edge ]
  %673 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %write.i, align 4
  call void %674(ptr noundef %ah, i32 noundef %.sink555, i32 noundef 39228) #6
  %675 = ptrtoint ptr %write_flush.i to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %write_flush.i, align 4
  %tobool385.not = icmp eq ptr %676, null
  br i1 %tobool385.not, label %do.body383.cleanup_crit_edge, label %if.then386

do.body383.cleanup_crit_edge:                     ; preds = %do.body383
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then386:                                       ; preds = %do.body383
  call void @__sanitizer_cov_trace_pc() #8
  call void %676(ptr noundef %ah) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then386, %do.body383.cleanup_crit_edge, %for.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %ratesArray) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ath9k_hw_def_get_spur_channel(ptr nocapture noundef readonly %ah, i16 noundef zeroext %i, i1 noundef zeroext %is2GHz) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i1 %is2GHz to i32
  %idxprom1 = zext i16 %i to i32
  %arrayidx2 = getelementptr %struct.ath_hw, ptr %ah, i32 0, i32 9, i32 0, i32 2, i32 %idxprom, i32 38, i32 %idxprom1
  %0 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx2, align 4
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  ret i16 %2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ath9k_hw_def_get_eepmisc(ptr nocapture noundef readonly %ah) #2 align 64 {
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath9k_def_dump_modal_eeprom(ptr noundef %buf, i32 noundef %len, i32 noundef %size, ptr noundef readonly %modal_hdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 %len
  %sub = sub i32 %size, %len
  %0 = ptrtoint ptr %modal_hdr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %modal_hdr, align 1
  %conv = trunc i32 %1 to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %conv1 = zext i16 %2 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.27, i32 noundef %conv1) #6
  %add = add i32 %call, %len
  %add.ptr3 = getelementptr i8, ptr %buf, i32 %add
  %sub4 = sub i32 %size, %add
  %arrayidx6 = getelementptr [3 x i32], ptr %modal_hdr, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %arrayidx6, align 1
  %conv7 = trunc i32 %4 to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv7)
  %conv8 = zext i16 %5 to i32
  %call9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3, i32 noundef %sub4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.28, i32 noundef %conv8) #6
  %add10 = add i32 %call9, %add
  %add.ptr13 = getelementptr i8, ptr %buf, i32 %add10
  %sub14 = sub i32 %size, %add10
  %arrayidx16 = getelementptr [3 x i32], ptr %modal_hdr, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %arrayidx16, align 1
  %conv17 = trunc i32 %7 to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv17)
  %conv18 = zext i16 %8 to i32
  %call19 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr13, i32 noundef %sub14, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.29, i32 noundef %conv18) #6
  %add20 = add i32 %call19, %add10
  %add.ptr23 = getelementptr i8, ptr %buf, i32 %add20
  %sub24 = sub i32 %size, %add20
  %antCtrlCommon = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 1
  %9 = ptrtoint ptr %antCtrlCommon to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %antCtrlCommon, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %call25 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr23, i32 noundef %sub24, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.30, i32 noundef %11) #6
  %add26 = add i32 %call25, %add20
  %add.ptr29 = getelementptr i8, ptr %buf, i32 %add26
  %sub30 = sub i32 %size, %add26
  %antennaGainCh = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 2
  %12 = ptrtoint ptr %antennaGainCh to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %antennaGainCh, align 1
  %conv32 = zext i8 %13 to i32
  %call33 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr29, i32 noundef %sub30, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.31, i32 noundef %conv32) #6
  %add34 = add i32 %call33, %add26
  %add.ptr37 = getelementptr i8, ptr %buf, i32 %add34
  %sub38 = sub i32 %size, %add34
  %arrayidx40 = getelementptr %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %15 to i32
  %call42 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr37, i32 noundef %sub38, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.32, i32 noundef %conv41) #6
  %add43 = add i32 %call42, %add34
  %add.ptr46 = getelementptr i8, ptr %buf, i32 %add43
  %sub47 = sub i32 %size, %add43
  %arrayidx49 = getelementptr %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %17 to i32
  %call51 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr46, i32 noundef %sub47, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.33, i32 noundef %conv50) #6
  %add52 = add i32 %call51, %add43
  %add.ptr55 = getelementptr i8, ptr %buf, i32 %add52
  %sub56 = sub i32 %size, %add52
  %switchSettling = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 3
  %18 = ptrtoint ptr %switchSettling to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %switchSettling, align 1
  %conv57 = zext i8 %19 to i32
  %call58 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr55, i32 noundef %sub56, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.34, i32 noundef %conv57) #6
  %add59 = add i32 %call58, %add52
  %add.ptr62 = getelementptr i8, ptr %buf, i32 %add59
  %sub63 = sub i32 %size, %add59
  %txRxAttenCh = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 4
  %20 = ptrtoint ptr %txRxAttenCh to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %txRxAttenCh, align 1
  %conv65 = zext i8 %21 to i32
  %call66 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr62, i32 noundef %sub63, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.35, i32 noundef %conv65) #6
  %add67 = add i32 %call66, %add59
  %add.ptr70 = getelementptr i8, ptr %buf, i32 %add67
  %sub71 = sub i32 %size, %add67
  %arrayidx73 = getelementptr %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %23 to i32
  %call75 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr70, i32 noundef %sub71, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.36, i32 noundef %conv74) #6
  %add76 = add i32 %call75, %add67
  %add.ptr79 = getelementptr i8, ptr %buf, i32 %add76
  %sub80 = sub i32 %size, %add76
  %arrayidx82 = getelementptr %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %25 to i32
  %call84 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr79, i32 noundef %sub80, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.37, i32 noundef %conv83) #6
  %add85 = add i32 %call84, %add76
  %add.ptr88 = getelementptr i8, ptr %buf, i32 %add85
  %sub89 = sub i32 %size, %add85
  %rxTxMarginCh = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 5
  %26 = ptrtoint ptr %rxTxMarginCh to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rxTxMarginCh, align 1
  %conv91 = zext i8 %27 to i32
  %call92 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr88, i32 noundef %sub89, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.38, i32 noundef %conv91) #6
  %add93 = add i32 %call92, %add85
  %add.ptr96 = getelementptr i8, ptr %buf, i32 %add93
  %sub97 = sub i32 %size, %add93
  %arrayidx99 = getelementptr %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 5, i32 1
  %28 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx99, align 1
  %conv100 = zext i8 %29 to i32
  %call101 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr96, i32 noundef %sub97, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.39, i32 noundef %conv100) #6
  %add102 = add i32 %call101, %add93
  %add.ptr105 = getelementptr i8, ptr %buf, i32 %add102
  %sub106 = sub i32 %size, %add102
  %arrayidx108 = getelementptr %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 5, i32 2
  %30 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx108, align 1
  %conv109 = zext i8 %31 to i32
  %call110 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr105, i32 noundef %sub106, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.40, i32 noundef %conv109) #6
  %add111 = add i32 %call110, %add102
  %add.ptr114 = getelementptr i8, ptr %buf, i32 %add111
  %sub115 = sub i32 %size, %add111
  %adcDesiredSize = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 6
  %32 = ptrtoint ptr %adcDesiredSize to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %adcDesiredSize, align 1
  %conv116 = zext i8 %33 to i32
  %call117 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr114, i32 noundef %sub115, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.41, i32 noundef %conv116) #6
  %add118 = add i32 %call117, %add111
  %add.ptr121 = getelementptr i8, ptr %buf, i32 %add118
  %sub122 = sub i32 %size, %add118
  %pgaDesiredSize = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 7
  %34 = ptrtoint ptr %pgaDesiredSize to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %pgaDesiredSize, align 1
  %conv123 = zext i8 %35 to i32
  %call124 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr121, i32 noundef %sub122, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.42, i32 noundef %conv123) #6
  %add125 = add i32 %call124, %add118
  %add.ptr128 = getelementptr i8, ptr %buf, i32 %add125
  %sub129 = sub i32 %size, %add125
  %xlnaGainCh = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 8
  %36 = ptrtoint ptr %xlnaGainCh to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %xlnaGainCh, align 1
  %conv131 = zext i8 %37 to i32
  %call132 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr128, i32 noundef %sub129, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.43, i32 noundef %conv131) #6
  %add133 = add i32 %call132, %add125
  %add.ptr136 = getelementptr i8, ptr %buf, i32 %add133
  %sub137 = sub i32 %size, %add133
  %arrayidx139 = getelementptr %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 8, i32 1
  %38 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx139, align 1
  %conv140 = zext i8 %39 to i32
  %call141 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr136, i32 noundef %sub137, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.44, i32 noundef %conv140) #6
  %add142 = add i32 %call141, %add133
  %add.ptr145 = getelementptr i8, ptr %buf, i32 %add142
  %sub146 = sub i32 %size, %add142
  %arrayidx148 = getelementptr %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 8, i32 2
  %40 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx148, align 1
  %conv149 = zext i8 %41 to i32
  %call150 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr145, i32 noundef %sub146, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.45, i32 noundef %conv149) #6
  %add151 = add i32 %call150, %add142
  %add.ptr154 = getelementptr i8, ptr %buf, i32 %add151
  %sub155 = sub i32 %size, %add151
  %txEndToXpaOff = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 9
  %42 = ptrtoint ptr %txEndToXpaOff to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %txEndToXpaOff, align 1
  %conv156 = zext i8 %43 to i32
  %call157 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr154, i32 noundef %sub155, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.46, i32 noundef %conv156) #6
  %add158 = add i32 %call157, %add151
  %add.ptr161 = getelementptr i8, ptr %buf, i32 %add158
  %sub162 = sub i32 %size, %add158
  %txEndToRxOn = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 10
  %44 = ptrtoint ptr %txEndToRxOn to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %txEndToRxOn, align 1
  %conv163 = zext i8 %45 to i32
  %call164 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr161, i32 noundef %sub162, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.47, i32 noundef %conv163) #6
  %add165 = add i32 %call164, %add158
  %add.ptr168 = getelementptr i8, ptr %buf, i32 %add165
  %sub169 = sub i32 %size, %add165
  %txFrameToXpaOn = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 11
  %46 = ptrtoint ptr %txFrameToXpaOn to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %txFrameToXpaOn, align 1
  %conv170 = zext i8 %47 to i32
  %call171 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr168, i32 noundef %sub169, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.48, i32 noundef %conv170) #6
  %add172 = add i32 %call171, %add165
  %add.ptr175 = getelementptr i8, ptr %buf, i32 %add172
  %sub176 = sub i32 %size, %add172
  %thresh62 = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 12
  %48 = ptrtoint ptr %thresh62 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %thresh62, align 1
  %conv177 = zext i8 %49 to i32
  %call178 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr175, i32 noundef %sub176, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.49, i32 noundef %conv177) #6
  %add179 = add i32 %call178, %add172
  %add.ptr182 = getelementptr i8, ptr %buf, i32 %add179
  %sub183 = sub i32 %size, %add179
  %noiseFloorThreshCh = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 13
  %50 = ptrtoint ptr %noiseFloorThreshCh to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %noiseFloorThreshCh, align 1
  %conv185 = zext i8 %51 to i32
  %call186 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr182, i32 noundef %sub183, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.50, i32 noundef %conv185) #6
  %add187 = add i32 %call186, %add179
  %add.ptr190 = getelementptr i8, ptr %buf, i32 %add187
  %sub191 = sub i32 %size, %add187
  %arrayidx193 = getelementptr %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 13, i32 1
  %52 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx193, align 1
  %conv194 = zext i8 %53 to i32
  %call195 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr190, i32 noundef %sub191, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.51, i32 noundef %conv194) #6
  %add196 = add i32 %call195, %add187
  %add.ptr199 = getelementptr i8, ptr %buf, i32 %add196
  %sub200 = sub i32 %size, %add196
  %arrayidx202 = getelementptr %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 13, i32 2
  %54 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx202, align 1
  %conv203 = zext i8 %55 to i32
  %call204 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr199, i32 noundef %sub200, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.52, i32 noundef %conv203) #6
  %add205 = add i32 %call204, %add196
  %add.ptr208 = getelementptr i8, ptr %buf, i32 %add205
  %sub209 = sub i32 %size, %add205
  %xpdGain = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 14
  %56 = ptrtoint ptr %xpdGain to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %xpdGain, align 1
  %conv210 = zext i8 %57 to i32
  %call211 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr208, i32 noundef %sub209, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.53, i32 noundef %conv210) #6
  %add212 = add i32 %call211, %add205
  %add.ptr215 = getelementptr i8, ptr %buf, i32 %add212
  %sub216 = sub i32 %size, %add212
  %xpd = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 15
  %58 = ptrtoint ptr %xpd to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %xpd, align 1
  %conv217 = zext i8 %59 to i32
  %call218 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr215, i32 noundef %sub216, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.54, i32 noundef %conv217) #6
  %add219 = add i32 %call218, %add212
  %add.ptr222 = getelementptr i8, ptr %buf, i32 %add219
  %sub223 = sub i32 %size, %add219
  %iqCalICh = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 16
  %60 = ptrtoint ptr %iqCalICh to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %iqCalICh, align 1
  %conv225 = zext i8 %61 to i32
  %call226 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr222, i32 noundef %sub223, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.55, i32 noundef %conv225) #6
  %add227 = add i32 %call226, %add219
  %add.ptr230 = getelementptr i8, ptr %buf, i32 %add227
  %sub231 = sub i32 %size, %add227
  %arrayidx233 = getelementptr %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 16, i32 1
  %62 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx233, align 1
  %conv234 = zext i8 %63 to i32
  %call235 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr230, i32 noundef %sub231, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.56, i32 noundef %conv234) #6
  %add236 = add i32 %call235, %add227
  %add.ptr239 = getelementptr i8, ptr %buf, i32 %add236
  %sub240 = sub i32 %size, %add236
  %arrayidx242 = getelementptr %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 16, i32 2
  %64 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx242, align 1
  %conv243 = zext i8 %65 to i32
  %call244 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr239, i32 noundef %sub240, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.57, i32 noundef %conv243) #6
  %add245 = add i32 %call244, %add236
  %add.ptr248 = getelementptr i8, ptr %buf, i32 %add245
  %sub249 = sub i32 %size, %add245
  %iqCalQCh = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 17
  %66 = ptrtoint ptr %iqCalQCh to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %iqCalQCh, align 1
  %conv251 = zext i8 %67 to i32
  %call252 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr248, i32 noundef %sub249, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.58, i32 noundef %conv251) #6
  %add253 = add i32 %call252, %add245
  %add.ptr256 = getelementptr i8, ptr %buf, i32 %add253
  %sub257 = sub i32 %size, %add253
  %arrayidx259 = getelementptr %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 17, i32 1
  %68 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx259, align 1
  %conv260 = zext i8 %69 to i32
  %call261 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr256, i32 noundef %sub257, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.59, i32 noundef %conv260) #6
  %add262 = add i32 %call261, %add253
  %add.ptr265 = getelementptr i8, ptr %buf, i32 %add262
  %sub266 = sub i32 %size, %add262
  %arrayidx268 = getelementptr %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 17, i32 2
  %70 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx268, align 1
  %conv269 = zext i8 %71 to i32
  %call270 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr265, i32 noundef %sub266, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.60, i32 noundef %conv269) #6
  %add271 = add i32 %call270, %add262
  %add.ptr274 = getelementptr i8, ptr %buf, i32 %add271
  %sub275 = sub i32 %size, %add271
  %pdGainOverlap = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 18
  %72 = ptrtoint ptr %pdGainOverlap to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %pdGainOverlap, align 1
  %conv276 = zext i8 %73 to i32
  %call277 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr274, i32 noundef %sub275, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.61, i32 noundef %conv276) #6
  %add278 = add i32 %call277, %add271
  %add.ptr281 = getelementptr i8, ptr %buf, i32 %add278
  %sub282 = sub i32 %size, %add278
  %ob = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 19
  %74 = ptrtoint ptr %ob to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %ob, align 1
  %conv283 = zext i8 %75 to i32
  %call284 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr281, i32 noundef %sub282, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.62, i32 noundef %conv283) #6
  %add285 = add i32 %call284, %add278
  %add.ptr288 = getelementptr i8, ptr %buf, i32 %add285
  %sub289 = sub i32 %size, %add285
  %db = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 20
  %76 = ptrtoint ptr %db to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %db, align 1
  %conv290 = zext i8 %77 to i32
  %call291 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr288, i32 noundef %sub289, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.63, i32 noundef %conv290) #6
  %add292 = add i32 %call291, %add285
  %add.ptr295 = getelementptr i8, ptr %buf, i32 %add292
  %sub296 = sub i32 %size, %add292
  %xpaBiasLvl = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 21
  %78 = ptrtoint ptr %xpaBiasLvl to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %xpaBiasLvl, align 1
  %conv297 = zext i8 %79 to i32
  %call298 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr295, i32 noundef %sub296, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.64, i32 noundef %conv297) #6
  %add299 = add i32 %call298, %add292
  %add.ptr302 = getelementptr i8, ptr %buf, i32 %add299
  %sub303 = sub i32 %size, %add299
  %pwrDecreaseFor2Chain = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 22
  %80 = ptrtoint ptr %pwrDecreaseFor2Chain to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %pwrDecreaseFor2Chain, align 1
  %conv304 = zext i8 %81 to i32
  %call305 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr302, i32 noundef %sub303, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.65, i32 noundef %conv304) #6
  %add306 = add i32 %call305, %add299
  %add.ptr309 = getelementptr i8, ptr %buf, i32 %add306
  %sub310 = sub i32 %size, %add306
  %pwrDecreaseFor3Chain = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 23
  %82 = ptrtoint ptr %pwrDecreaseFor3Chain to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %pwrDecreaseFor3Chain, align 1
  %conv311 = zext i8 %83 to i32
  %call312 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr309, i32 noundef %sub310, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.66, i32 noundef %conv311) #6
  %add313 = add i32 %call312, %add306
  %add.ptr316 = getelementptr i8, ptr %buf, i32 %add313
  %sub317 = sub i32 %size, %add313
  %txFrameToDataStart = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 24
  %84 = ptrtoint ptr %txFrameToDataStart to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %txFrameToDataStart, align 1
  %conv318 = zext i8 %85 to i32
  %call319 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr316, i32 noundef %sub317, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.67, i32 noundef %conv318) #6
  %add320 = add i32 %call319, %add313
  %add.ptr323 = getelementptr i8, ptr %buf, i32 %add320
  %sub324 = sub i32 %size, %add320
  %txFrameToPaOn = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 25
  %86 = ptrtoint ptr %txFrameToPaOn to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %txFrameToPaOn, align 1
  %conv325 = zext i8 %87 to i32
  %call326 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr323, i32 noundef %sub324, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.68, i32 noundef %conv325) #6
  %add327 = add i32 %call326, %add320
  %add.ptr330 = getelementptr i8, ptr %buf, i32 %add327
  %sub331 = sub i32 %size, %add327
  %ht40PowerIncForPdadc = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 26
  %88 = ptrtoint ptr %ht40PowerIncForPdadc to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %ht40PowerIncForPdadc, align 1
  %conv332 = zext i8 %89 to i32
  %call333 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr330, i32 noundef %sub331, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.69, i32 noundef %conv332) #6
  %add334 = add i32 %call333, %add327
  %add.ptr337 = getelementptr i8, ptr %buf, i32 %add334
  %sub338 = sub i32 %size, %add334
  %bswAtten = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 27
  %90 = ptrtoint ptr %bswAtten to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %bswAtten, align 1
  %conv340 = zext i8 %91 to i32
  %call341 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr337, i32 noundef %sub338, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.70, i32 noundef %conv340) #6
  %add342 = add i32 %call341, %add334
  %add.ptr345 = getelementptr i8, ptr %buf, i32 %add342
  %sub346 = sub i32 %size, %add342
  %arrayidx348 = getelementptr %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 27, i32 1
  %92 = ptrtoint ptr %arrayidx348 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx348, align 1
  %conv349 = zext i8 %93 to i32
  %call350 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr345, i32 noundef %sub346, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.71, i32 noundef %conv349) #6
  %add351 = add i32 %call350, %add342
  %add.ptr354 = getelementptr i8, ptr %buf, i32 %add351
  %sub355 = sub i32 %size, %add351
  %arrayidx357 = getelementptr %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 27, i32 2
  %94 = ptrtoint ptr %arrayidx357 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx357, align 1
  %conv358 = zext i8 %95 to i32
  %call359 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr354, i32 noundef %sub355, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.72, i32 noundef %conv358) #6
  %add360 = add i32 %call359, %add351
  %add.ptr363 = getelementptr i8, ptr %buf, i32 %add360
  %sub364 = sub i32 %size, %add360
  %bswMargin = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 28
  %96 = ptrtoint ptr %bswMargin to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %bswMargin, align 1
  %conv366 = zext i8 %97 to i32
  %call367 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr363, i32 noundef %sub364, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.73, i32 noundef %conv366) #6
  %add368 = add i32 %call367, %add360
  %add.ptr371 = getelementptr i8, ptr %buf, i32 %add368
  %sub372 = sub i32 %size, %add368
  %arrayidx374 = getelementptr %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 28, i32 1
  %98 = ptrtoint ptr %arrayidx374 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx374, align 1
  %conv375 = zext i8 %99 to i32
  %call376 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr371, i32 noundef %sub372, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.74, i32 noundef %conv375) #6
  %add377 = add i32 %call376, %add368
  %add.ptr380 = getelementptr i8, ptr %buf, i32 %add377
  %sub381 = sub i32 %size, %add377
  %arrayidx383 = getelementptr %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 28, i32 2
  %100 = ptrtoint ptr %arrayidx383 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx383, align 1
  %conv384 = zext i8 %101 to i32
  %call385 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr380, i32 noundef %sub381, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.75, i32 noundef %conv384) #6
  %add386 = add i32 %call385, %add377
  %add.ptr389 = getelementptr i8, ptr %buf, i32 %add386
  %sub390 = sub i32 %size, %add386
  %swSettleHt40 = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 29
  %102 = ptrtoint ptr %swSettleHt40 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %swSettleHt40, align 1
  %conv391 = zext i8 %103 to i32
  %call392 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr389, i32 noundef %sub390, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.76, i32 noundef %conv391) #6
  %add393 = add i32 %call392, %add386
  %add.ptr396 = getelementptr i8, ptr %buf, i32 %add393
  %sub397 = sub i32 %size, %add393
  %xatten2Db = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 30
  %104 = ptrtoint ptr %xatten2Db to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %xatten2Db, align 1
  %conv399 = zext i8 %105 to i32
  %call400 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr396, i32 noundef %sub397, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.77, i32 noundef %conv399) #6
  %add401 = add i32 %call400, %add393
  %add.ptr404 = getelementptr i8, ptr %buf, i32 %add401
  %sub405 = sub i32 %size, %add401
  %arrayidx407 = getelementptr %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 30, i32 1
  %106 = ptrtoint ptr %arrayidx407 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx407, align 1
  %conv408 = zext i8 %107 to i32
  %call409 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr404, i32 noundef %sub405, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.78, i32 noundef %conv408) #6
  %add410 = add i32 %call409, %add401
  %add.ptr413 = getelementptr i8, ptr %buf, i32 %add410
  %sub414 = sub i32 %size, %add410
  %arrayidx416 = getelementptr %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 30, i32 2
  %108 = ptrtoint ptr %arrayidx416 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx416, align 1
  %conv417 = zext i8 %109 to i32
  %call418 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr413, i32 noundef %sub414, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.79, i32 noundef %conv417) #6
  %add419 = add i32 %call418, %add410
  %add.ptr422 = getelementptr i8, ptr %buf, i32 %add419
  %sub423 = sub i32 %size, %add419
  %xatten2Margin = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 31
  %110 = ptrtoint ptr %xatten2Margin to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %xatten2Margin, align 1
  %conv425 = zext i8 %111 to i32
  %call426 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr422, i32 noundef %sub423, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.80, i32 noundef %conv425) #6
  %add427 = add i32 %call426, %add419
  %add.ptr430 = getelementptr i8, ptr %buf, i32 %add427
  %sub431 = sub i32 %size, %add427
  %arrayidx433 = getelementptr %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 31, i32 1
  %112 = ptrtoint ptr %arrayidx433 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx433, align 1
  %conv434 = zext i8 %113 to i32
  %call435 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr430, i32 noundef %sub431, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.81, i32 noundef %conv434) #6
  %add436 = add i32 %call435, %add427
  %add.ptr439 = getelementptr i8, ptr %buf, i32 %add436
  %sub440 = sub i32 %size, %add436
  %arrayidx442 = getelementptr %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 31, i32 2
  %114 = ptrtoint ptr %arrayidx442 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx442, align 1
  %conv443 = zext i8 %115 to i32
  %call444 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr439, i32 noundef %sub440, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.82, i32 noundef %conv443) #6
  %add445 = add i32 %call444, %add436
  %add.ptr448 = getelementptr i8, ptr %buf, i32 %add445
  %sub449 = sub i32 %size, %add445
  %ob_ch1 = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 32
  %116 = ptrtoint ptr %ob_ch1 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %ob_ch1, align 1
  %conv450 = zext i8 %117 to i32
  %call451 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr448, i32 noundef %sub449, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.83, i32 noundef %conv450) #6
  %add452 = add i32 %call451, %add445
  %add.ptr455 = getelementptr i8, ptr %buf, i32 %add452
  %sub456 = sub i32 %size, %add452
  %db_ch1 = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 33
  %118 = ptrtoint ptr %db_ch1 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %db_ch1, align 1
  %conv457 = zext i8 %119 to i32
  %call458 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr455, i32 noundef %sub456, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.84, i32 noundef %conv457) #6
  %add459 = add i32 %call458, %add452
  %add.ptr462 = getelementptr i8, ptr %buf, i32 %add459
  %sub463 = sub i32 %size, %add459
  %lna_ctl = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 34
  %120 = ptrtoint ptr %lna_ctl to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %lna_ctl, align 1
  %conv464 = zext i8 %121 to i32
  %call465 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr462, i32 noundef %sub463, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.85, i32 noundef %conv464) #6
  %add466 = add i32 %call465, %add459
  %add.ptr469 = getelementptr i8, ptr %buf, i32 %add466
  %sub470 = sub i32 %size, %add466
  %xpaBiasLvlFreq = getelementptr inbounds %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 36
  %122 = ptrtoint ptr %xpaBiasLvlFreq to i32
  call void @__asan_loadN_noabort(i32 %122, i32 2)
  %123 = load i16, ptr %xpaBiasLvlFreq, align 1
  %124 = tail call i16 @llvm.bswap.i16(i16 %123)
  %conv472 = zext i16 %124 to i32
  %call473 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr469, i32 noundef %sub470, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.86, i32 noundef %conv472) #6
  %add474 = add i32 %call473, %add466
  %add.ptr477 = getelementptr i8, ptr %buf, i32 %add474
  %sub478 = sub i32 %size, %add474
  %arrayidx480 = getelementptr %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 36, i32 1
  %125 = ptrtoint ptr %arrayidx480 to i32
  call void @__asan_loadN_noabort(i32 %125, i32 2)
  %126 = load i16, ptr %arrayidx480, align 1
  %127 = tail call i16 @llvm.bswap.i16(i16 %126)
  %conv481 = zext i16 %127 to i32
  %call482 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr477, i32 noundef %sub478, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.87, i32 noundef %conv481) #6
  %add483 = add i32 %call482, %add474
  %add.ptr486 = getelementptr i8, ptr %buf, i32 %add483
  %sub487 = sub i32 %size, %add483
  %arrayidx489 = getelementptr %struct.modal_eep_header, ptr %modal_hdr, i32 0, i32 36, i32 2
  %128 = ptrtoint ptr %arrayidx489 to i32
  call void @__asan_loadN_noabort(i32 %128, i32 2)
  %129 = load i16, ptr %arrayidx489, align 1
  %130 = tail call i16 @llvm.bswap.i16(i16 %129)
  %conv490 = zext i16 %130 to i32
  %call491 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr486, i32 noundef %sub487, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.88, i32 noundef %conv490) #6
  %add492 = add i32 %call491, %add483
  ret i32 %add492
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_analog_shift_rmw(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_get_channel_centers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_update_regulatory_maxpower(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ar5008_hw_init_rate_txpower(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

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
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
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

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186}
!llvm.module.flags = !{!188, !189, !190, !191, !192, !193, !194, !195}
!llvm.ident = !{!196}

!0 = !{ptr @eep_def_ops, !1, !"eep_def_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 1310, i32 25}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 125, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 213, i32 6}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 213, i32 18}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 217, i32 18}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 223, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 224, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 225, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 226, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 227, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 228, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 229, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 230, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 231, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 232, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 233, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 235, i32 2}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 237, i32 2}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 239, i32 2}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 241, i32 2}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 242, i32 2}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 243, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 244, i32 2}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 245, i32 2}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 247, i32 42}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 247, i32 58}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 138, i32 2}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 139, i32 2}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 140, i32 2}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 141, i32 2}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 142, i32 2}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 143, i32 2}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 144, i32 2}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 145, i32 2}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 146, i32 2}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 147, i32 2}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 148, i32 2}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 149, i32 2}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 150, i32 2}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 151, i32 2}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 152, i32 2}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 153, i32 2}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 154, i32 2}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 155, i32 2}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 156, i32 2}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 157, i32 2}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 158, i32 2}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 159, i32 2}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 160, i32 2}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 161, i32 2}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 162, i32 2}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 163, i32 2}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 164, i32 2}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 165, i32 2}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 166, i32 2}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 167, i32 2}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 168, i32 2}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 169, i32 2}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 170, i32 2}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 171, i32 2}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 172, i32 2}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 173, i32 2}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 174, i32 2}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 175, i32 2}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 176, i32 2}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 177, i32 2}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 178, i32 2}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 179, i32 2}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 180, i32 2}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 181, i32 2}
!142 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 182, i32 2}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 183, i32 2}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 184, i32 2}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 185, i32 2}
!150 = !{ptr @.str.75, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 186, i32 2}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 187, i32 2}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 188, i32 2}
!156 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 189, i32 2}
!158 = !{ptr @.str.79, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 190, i32 2}
!160 = !{ptr @.str.80, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 191, i32 2}
!162 = !{ptr @.str.81, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 192, i32 2}
!164 = !{ptr @.str.82, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 193, i32 2}
!166 = !{ptr @.str.83, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 194, i32 2}
!168 = !{ptr @.str.84, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 195, i32 2}
!170 = !{ptr @.str.85, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 196, i32 2}
!172 = !{ptr @.str.86, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 197, i32 2}
!174 = !{ptr @.str.87, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 198, i32 2}
!176 = !{ptr @.str.88, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 199, i32 2}
!178 = !{ptr @ath9k_hw_set_def_power_per_rate_table.ctlModesFor11a, !179, !"ctlModesFor11a", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 941, i32 19}
!180 = !{ptr @ath9k_hw_set_def_power_per_rate_table.ctlModesFor11g, !181, !"ctlModesFor11g", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 944, i32 19}
!182 = !{ptr @ath9k_hw_set_def_power_cal_table.pdadcValues, !183, !"pdadcValues", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 772, i32 12}
!184 = !{ptr @.str.89, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 898, i32 5}
!186 = !{ptr @.str.90, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/ath/ath9k/eeprom_def.c", i32 902, i32 5}
!188 = !{i32 1, !"wchar_size", i32 2}
!189 = !{i32 1, !"min_enum_size", i32 4}
!190 = !{i32 8, !"branch-target-enforcement", i32 0}
!191 = !{i32 8, !"sign-return-address", i32 0}
!192 = !{i32 8, !"sign-return-address-all", i32 0}
!193 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!194 = !{i32 7, !"uwtable", i32 1}
!195 = !{i32 7, !"frame-pointer", i32 2}
!196 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!197 = !{!"auto-init"}
!198 = !{i8 0, i8 2}
