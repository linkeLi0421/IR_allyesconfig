; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/dvm/calib.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/dvm/calib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
%struct.iwl_priv = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.mutex, i32, i8, [32 x i8], [32 x %struct.atomic_t], [1 x i32], ptr, ptr, %struct.list_head, ptr, %struct.iwl_hw_params, i32, i8, [255 x ptr], %struct.iwl_notif_wait_data, %struct.iwl_spectrum_notification, i8, i32, i32, i32, i32, [255 x i32], %struct.iwl_rf_reset, i32, i32, i8, i8, i32, i32, ptr, i32, i32, ptr, i32, ptr, ptr, i32, [6 x i8], i8, i8, i8, i8, [2 x %struct.mac_address], [2 x %struct.iwl_rxon_context], i16, i8, %struct.iwl_sensitivity_data, %struct.iwl_chain_noise_data, [11 x i16], [12 x i16], %struct.iwl_ht_config, i8, i32, %struct.iwl_power_mgr, %struct.iwl_tt_mgmt, i32, [16 x %struct.iwl_station_entry], i32, [16 x [8 x %struct.iwl_tid_data]], %struct.atomic_t, i8, i8, i32, i64, %struct.anon.135, %struct.anon.136, %struct.anon.136, %struct.anon.136, i8, %struct.iwl_rx_phy_res, i32, i8, i8, i8, %struct.reply_tx_error_statistics, %struct.reply_agg_tx_error_statistics, i8, i8, i8, i8, i8, i8, i32, i32, i16, i8, i16, i16, i16, i8, %struct.work_struct, i8, ptr, i8, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, i8, i8, ptr, i32, i32, i8, ptr, ptr, ptr, i32, %struct.work_struct, i32, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.iwl_event_log, %struct.led_classdev, i32, i32, i8, [16 x i8], [16 x i8], i64, i16, i8, %struct.wiphy_wowlan_support, %struct.anon.138, i32 }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.iwl_hw_params = type { i8, i8, i8, i32, i32, ptr }
%struct.iwl_notif_wait_data = type { %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.iwl_spectrum_notification = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i32, i8, [3 x i8], %struct.iwl_measurement_histogram, i32, i32 }
%struct.iwl_measurement_histogram = type { [8 x i32], [8 x i32] }
%struct.iwl_rf_reset = type { i32, i32, i32, i32 }
%struct.mac_address = type { [6 x i8] }
%struct.iwl_rxon_context = type { ptr, i8, [4 x i8], [4 x i8], i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd, %struct.iwl_rxon_time_cmd, %struct.iwl_qos_info, i8, i8, i8, i8, i8, i8, i8, [4 x %struct.iwl_wep_key], i8, i32, i32, %struct.anon.133 }
%struct.iwl_rxon_cmd = type <{ [6 x i8], i16, [6 x i8], i16, [6 x i8], i16, i8, i8, i16, i8, i8, i16, i32, i32, i16, i8, i8, i8, i8, i16, i16 }>
%struct.iwl_rxon_time_cmd = type <{ i64, i16, i16, i32, i16, i8, i8 }>
%struct.iwl_qos_info = type { i32, %struct.iwl_qosparam_cmd }
%struct.iwl_qosparam_cmd = type { i32, [4 x %struct.iwl_ac_qos] }
%struct.iwl_ac_qos = type { i16, i16, i8, i8, i16 }
%struct.iwl_wep_key = type { i8, i8, [2 x i8], i8, [3 x i8], [16 x i8] }
%struct.anon.133 = type { i8, i8, i8, i8, i8 }
%struct.iwl_sensitivity_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [20 x i8], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.iwl_chain_noise_data = type { i32, i32, i32, i32, i32, i32, i32, i16, [3 x i8], [3 x i8], i8, i8 }
%struct.iwl_ht_config = type { i8, i32 }
%struct.iwl_power_mgr = type { %struct.iwl_powertable_cmd, %struct.iwl_powertable_cmd, i32, i8 }
%struct.iwl_powertable_cmd = type { i16, i8, i8, i32, i32, [5 x i32], i32 }
%struct.iwl_tt_mgmt = type { i32, i8, i8, i8, i32, ptr, ptr, %struct.timer_list, %struct.timer_list }
%struct.iwl_station_entry = type { %struct.iwl_addsta_cmd, i8, i8, ptr }
%struct.iwl_addsta_cmd = type <{ i8, [3 x i8], %struct.sta_id_modify, %struct.iwl_keyinfo, i32, i32, i16, i16, i8, i8, i16, i16, i16 }>
%struct.sta_id_modify = type { [6 x i8], i16, i8, i8, i16 }
%struct.iwl_keyinfo = type { i16, i8, i8, [5 x i16], i8, i8, [16 x i8], i64, i64, i64 }
%struct.iwl_tid_data = type { i16, i16, %struct.iwl_ht_agg }
%struct.iwl_ht_agg = type { i32, i32, i16, i16, i8 }
%struct.atomic_t = type { i32 }
%struct.anon.135 = type { i32, %struct.statistics_general_common, %struct.statistics_rx_non_phy, %struct.statistics_rx_phy, %struct.statistics_rx_ht_phy, %struct.statistics_rx_phy, %struct.statistics_tx, %struct.statistics_bt_activity, i32, i32, %struct.spinlock }
%struct.statistics_general_common = type { i32, i32, %struct.statistics_dbg, i32, i32, i32, i32, %struct.statistics_div, i32, i32 }
%struct.statistics_dbg = type { i32, i32, i32, [3 x i32] }
%struct.statistics_div = type { i32, i32, i32, i32, i32, i32 }
%struct.statistics_rx_non_phy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.statistics_rx_ht_phy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.statistics_rx_phy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.statistics_tx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.statistics_tx_non_phy_agg, %struct.statistics_tx_power, i32 }
%struct.statistics_tx_non_phy_agg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.statistics_tx_power = type { i8, i8, i8, i8 }
%struct.statistics_bt_activity = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.136 = type { %struct.statistics_general_common, %struct.statistics_rx_non_phy, %struct.statistics_rx_phy, %struct.statistics_rx_ht_phy, %struct.statistics_rx_phy, %struct.statistics_tx, %struct.statistics_bt_activity }
%struct.iwl_rx_phy_res = type <{ i8, i8, i8, i8, i64, i32, i16, i16, [32 x i8], i32, i16, i16 }>
%struct.reply_tx_error_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.reply_agg_tx_error_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.iwl_event_log = type { i8, i32, i32, i32, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.anon.138 = type { i32, i32 }
%struct.iwl_calib_result = type { %struct.list_head, i32, %struct.iwl_calib_hdr }
%struct.iwl_calib_hdr = type { i8, i8, i8, i8 }
%struct.iwl_sensitivity_ranges = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
%struct.iwl_enhance_sensitivity_cmd = type { i16, [23 x i16] }
%struct.iwl_dvm_cfg = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.iwl_sensitivity_cmd = type { i16, [11 x i16] }
%struct.iwl_nvm_data = type { i32, [6 x i8], i8, i16, i16, i16, i16, [2 x i16], i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, [6 x %struct.ieee80211_supported_band], %struct.anon.137, [0 x %struct.ieee80211_channel] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.137 = type { [2 x %struct.ieee80211_sband_iftype_data], [2 x %struct.ieee80211_sband_iftype_data] }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.101 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.101 = type { ptr, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.iwl_calib_chain_noise_gain_cmd = type { %struct.iwl_calib_hdr, i8, i8, [2 x i8] }

@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error %d on calib cmd %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.iwl_init_sensitivity = private unnamed_addr constant [21 x i8] c"iwl_init_sensitivity\00", align 1
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Start iwl_init_sensitivity\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"<<return 0x%X\0A\00", [17 x i8] zeroinitializer }, align 32
@__func__.iwl_sensitivity_calibration = private unnamed_addr constant [28 x i8] c"iwl_sensitivity_calibration\00", align 1
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"<< - not associated\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"<< invalid data.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rx_enable_time = %u usecs\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"<< RX Enable Time == 0!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cck: fa %u badp %u  ofdm: fa %u badp %u\0A\00", [55 x i8] zeroinitializer }, align 32
@__const.iwl_chain_noise_calibration.average_sig = private unnamed_addr constant [3 x i32] [i32 65535, i32 0, i32 0], align 4
@__func__.iwl_chain_noise_calibration = private unnamed_addr constant [28 x i8] c"iwl_chain_noise_calibration\00", align 1
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Wait for noise calib reset\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c" << Interference data unavailable\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Stats not from chan=%d, band24=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"chan=%d, band24=%d, beacon=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"chain_sig: a %d b %d c %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"chain_noise: a %d b %d c %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"average_noise: a %d b %d c %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"min_average_noise = %d, antenna %d\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.iwl_enhance_sensitivity_write = private unnamed_addr constant [30 x i8] c"iwl_enhance_sensitivity_write\00", align 1
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No change in SENSITIVITY_CMD\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.iwl_prepare_legacy_sensitivity_tbl = private unnamed_addr constant [35 x i8] c"iwl_prepare_legacy_sensitivity_tbl\00", align 1
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ofdm: ac %u mrc %u x1 %u mrc_x1 %u thresh %u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cck: ac %u mrc %u thresh %u\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.iwl_sensitivity_write = private unnamed_addr constant [22 x i8] c"iwl_sensitivity_write\00", align 1
@__func__.iwl_sens_auto_corr_ofdm = private unnamed_addr constant [24 x i8] c"iwl_sens_auto_corr_ofdm\00", align 1
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"norm FA %u > max FA %u)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"norm FA %u < min FA %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"min FA %u < norm FA %u < max FA %u OK\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.iwl_sens_energy_cck = private unnamed_addr constant [20 x i8] c"iwl_sens_energy_cck\00", align 1
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"silence a %u, b %u, c %u, 20-bcn max %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rx energy a %u, b %u, c %u, 10-bcn max/min %u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"consecutive bcns with few false alarms = %u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"norm FA %u > max FA %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"... reducing sensitivity\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"norm FA %u < min FA %u, silence diff %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"... increasing sensitivity\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"... but not changing sensitivity\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" FA in safe zone\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"... increasing margin\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"new nrg_th_cck %u\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.iwl_find_disconn_antenna = private unnamed_addr constant [25 x i8] c"iwl_find_disconn_antenna\00", align 1
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"average_sig: a %d b %d c %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"max_average_sig = %d, antenna %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"i = %d  rssiDelta = %d  disconn_array[i] = %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"All Tx chains are disconnected W/A - declare %d as connected\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"Detected that not all antennas are connected! Connected: %#x, valid: %#x.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"active_chains (bitwise) = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.iwlagn_gain_computation = private unnamed_addr constant [24 x i8] c"iwlagn_gain_computation\00", align 1
@.str.39 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Delta gains: ANT_B = %d  ANT_C = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 50, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 546, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 590, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 613, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 622, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 649, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 652, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 691, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 924, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 933, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 947, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 980, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 982, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 984, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1020, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1024, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 522, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 402, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 407, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 324, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 347, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 366, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 164, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 188, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 198, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 204, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 206, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 223, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 237, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 242, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 247, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 257, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 271, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 745, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 747, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 761, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 801, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 810, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 818, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.158 = private constant [50 x i8] c"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 859, i32 2 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_send_calib_results(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %hcmd = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hcmd) #6
  %0 = call ptr @memset(ptr %hcmd, i32 0, i32 36)
  %1 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %hcmd, i32 0, i32 5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 176, ptr %1, align 4
  %calib_results = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 15
  %len = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 6
  %dataflags = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 7
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %res.0.in = phi ptr [ %calib_results, %entry ], [ %res.0, %for.body.for.cond_crit_edge ]
  %3 = ptrtoint ptr %res.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %res.0 = load ptr, ptr %res.0.in, align 4
  %cmp.not = icmp eq ptr %res.0, %calib_results
  br i1 %cmp.not, label %for.cond.cleanup14_crit_edge, label %for.body

for.cond.cleanup14_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup14

for.body:                                         ; preds = %for.cond
  %cmd_len = getelementptr inbounds %struct.iwl_calib_result, ptr %res.0, i32 0, i32 1
  %4 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd_len, align 4
  %conv = trunc i32 %5 to i16
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %len, align 4
  %hdr = getelementptr inbounds %struct.iwl_calib_result, ptr %res.0, i32 0, i32 2
  %7 = ptrtoint ptr %hcmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %hdr, ptr %hcmd, align 4
  %8 = ptrtoint ptr %dataflags to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %dataflags, align 4
  %call = call i32 @iwl_dvm_send_cmd(ptr noundef %priv, ptr noundef nonnull %hcmd) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %cleanup.thread

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %11 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %hdr, align 4
  %conv6 = zext i8 %12 to i32
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %10, i32 noundef 0, ptr noundef nonnull @.str, i32 noundef %call, i32 noundef %conv6) #6
  br label %cleanup14

cleanup14:                                        ; preds = %cleanup.thread, %for.cond.cleanup14_crit_edge
  %retval.2 = phi i32 [ %call, %cleanup.thread ], [ 0, %for.cond.cleanup14_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hcmd) #6
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_dvm_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_calib_set(ptr noundef %priv, ptr nocapture noundef readonly %cmd, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %len, 12
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %sub, i32 noundef 2592) #9
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %hdr = getelementptr inbounds %struct.iwl_calib_result, ptr %call9.i, i32 0, i32 2
  %0 = call ptr @memcpy(ptr %hdr, ptr %cmd, i32 %len)
  %cmd_len = getelementptr inbounds %struct.iwl_calib_result, ptr %call9.i, i32 0, i32 1
  %1 = ptrtoint ptr %cmd_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %len, ptr %cmd_len, align 8
  %calib_results = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 15
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %tmp.0.in = phi ptr [ %calib_results, %if.end ], [ %tmp.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %tmp.0.in, align 4
  %cmp.not = icmp eq ptr %tmp.0, %calib_results
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %hdr3 = getelementptr inbounds %struct.iwl_calib_result, ptr %tmp.0, i32 0, i32 2
  %3 = ptrtoint ptr %hdr3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hdr3, align 4
  %5 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hdr, align 4
  %cmp7 = icmp eq i8 %4, %6
  br i1 %cmp7, label %if.then9, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %tmp.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tmp.0, align 4
  %9 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %call9.i, align 128
  %prev.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9.i, ptr %prev.i, align 4
  %prev3.i = getelementptr inbounds %struct.list_head, ptr %tmp.0, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev3.i, align 4
  %prev4.i = getelementptr inbounds %struct.list_head, ptr %call9.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %prev4.i, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9.i, ptr %12, align 4
  tail call void @kfree(ptr noundef %tmp.0) #6
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %prev.i34 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 15, i32 1
  %15 = ptrtoint ptr %prev.i34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i34, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i, ptr noundef %16, ptr noundef %calib_results) #6
  br i1 %call.i.i, label %if.end.i.i35, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i35:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %prev.i34 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9.i, ptr %prev.i34, align 4
  %18 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %calib_results, ptr %call9.i, align 128
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %call9.i, ptr %16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i35, %for.end.cleanup_crit_edge, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then9 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.end.i.i35 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_calib_free_results(ptr noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %calib_results = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 15
  %0 = ptrtoint ptr %calib_results to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %calib_results, align 4
  %cmp.not19 = icmp eq ptr %1, %calib_results
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %res.020 = phi ptr [ %tmp.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %res.020 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %res.020, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %res.020) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %res.020, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %res.020 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %res.020, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %res.020 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %res.020, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %res.020, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %res.020) #6
  %cmp.not = icmp eq ptr %tmp.0, %calib_results
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_init_sensitivity(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sens = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 17, i32 5
  %0 = ptrtoint ptr %sens to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sens, align 4
  %calib_disabled = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 127
  %2 = ptrtoint ptr %calib_disabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %calib_disabled, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %5, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_init_sensitivity, ptr noundef nonnull @.str.1) #6
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %sensitivity_data = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53
  %auto_corr_min_ofdm = getelementptr inbounds %struct.iwl_sensitivity_ranges, ptr %1, i32 0, i32 3
  %6 = call ptr @memset(ptr %sensitivity_data, i32 0, i32 144)
  %7 = ptrtoint ptr %auto_corr_min_ofdm to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %auto_corr_min_ofdm, align 2
  %conv = zext i16 %8 to i32
  %9 = ptrtoint ptr %sensitivity_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %sensitivity_data, align 4
  %auto_corr_min_ofdm_mrc = getelementptr inbounds %struct.iwl_sensitivity_ranges, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %auto_corr_min_ofdm_mrc to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %auto_corr_min_ofdm_mrc, align 2
  %conv14 = zext i16 %11 to i32
  %auto_corr_ofdm_mrc = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 1
  %12 = ptrtoint ptr %auto_corr_ofdm_mrc to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv14, ptr %auto_corr_ofdm_mrc, align 4
  %auto_corr_min_ofdm_x1 = getelementptr inbounds %struct.iwl_sensitivity_ranges, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %auto_corr_min_ofdm_x1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %auto_corr_min_ofdm_x1, align 2
  %conv15 = zext i16 %14 to i32
  %auto_corr_ofdm_x1 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 2
  %15 = ptrtoint ptr %auto_corr_ofdm_x1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv15, ptr %auto_corr_ofdm_x1, align 4
  %auto_corr_min_ofdm_mrc_x1 = getelementptr inbounds %struct.iwl_sensitivity_ranges, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %auto_corr_min_ofdm_mrc_x1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %auto_corr_min_ofdm_mrc_x1, align 2
  %conv16 = zext i16 %17 to i32
  %auto_corr_ofdm_mrc_x1 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 3
  %18 = ptrtoint ptr %auto_corr_ofdm_mrc_x1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv16, ptr %auto_corr_ofdm_mrc_x1, align 4
  %auto_corr_cck = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 4
  %19 = ptrtoint ptr %auto_corr_cck to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 125, ptr %auto_corr_cck, align 4
  %auto_corr_min_cck_mrc = getelementptr inbounds %struct.iwl_sensitivity_ranges, ptr %1, i32 0, i32 14
  %20 = ptrtoint ptr %auto_corr_min_cck_mrc to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %auto_corr_min_cck_mrc, align 2
  %conv17 = zext i16 %21 to i32
  %auto_corr_cck_mrc = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 5
  %22 = ptrtoint ptr %auto_corr_cck_mrc to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv17, ptr %auto_corr_cck_mrc, align 4
  %nrg_th_cck = getelementptr inbounds %struct.iwl_sensitivity_ranges, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %nrg_th_cck to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %nrg_th_cck, align 2
  %conv18 = zext i16 %24 to i32
  %nrg_th_cck19 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 17
  %25 = ptrtoint ptr %nrg_th_cck19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv18, ptr %nrg_th_cck19, align 4
  %nrg_th_ofdm = getelementptr inbounds %struct.iwl_sensitivity_ranges, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %nrg_th_ofdm to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %nrg_th_ofdm, align 2
  %conv20 = zext i16 %27 to i32
  %nrg_th_ofdm21 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 20
  %28 = ptrtoint ptr %nrg_th_ofdm21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv20, ptr %nrg_th_ofdm21, align 4
  %barker_corr_th_min = getelementptr inbounds %struct.iwl_sensitivity_ranges, ptr %1, i32 0, i32 15
  %29 = ptrtoint ptr %barker_corr_th_min to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %barker_corr_th_min, align 2
  %barker_corr_th_min22 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 21
  %31 = ptrtoint ptr %barker_corr_th_min22 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %barker_corr_th_min22, align 4
  %barker_corr_th_min_mrc = getelementptr inbounds %struct.iwl_sensitivity_ranges, ptr %1, i32 0, i32 16
  %32 = ptrtoint ptr %barker_corr_th_min_mrc to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %barker_corr_th_min_mrc, align 2
  %barker_corr_th_min_mrc23 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 22
  %34 = ptrtoint ptr %barker_corr_th_min_mrc23 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %barker_corr_th_min_mrc23, align 2
  %nrg_th_cca = getelementptr inbounds %struct.iwl_sensitivity_ranges, ptr %1, i32 0, i32 17
  %35 = ptrtoint ptr %nrg_th_cca to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %nrg_th_cca, align 2
  %nrg_th_cca24 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 23
  %37 = ptrtoint ptr %nrg_th_cca24 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %nrg_th_cca24, align 4
  %last_bad_plcp_cnt_ofdm = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 6
  %fw = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 3
  %38 = call ptr @memset(ptr %last_bad_plcp_cnt_ofdm, i32 0, i32 16)
  %39 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fw, align 4
  %enhance_sensitivity_table = getelementptr inbounds %struct.iwl_fw, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %enhance_sensitivity_table to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %enhance_sensitivity_table, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool25.not = icmp eq i8 %42, 0
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call fastcc i32 @iwl_enhance_sensitivity_write(ptr noundef %priv)
  br label %do.end33

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call fastcc i32 @iwl_sensitivity_write(ptr noundef %priv)
  br label %do.end33

do.end33:                                         ; preds = %if.else, %if.then26
  %ret.0 = phi i32 [ %call, %if.then26 ], [ %call27, %if.else ]
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %44, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_init_sensitivity, ptr noundef nonnull @.str.2, i32 noundef %ret.0) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_enhance_sensitivity_write(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_enhance_sensitivity_cmd, align 2
  %cmd_out = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd_out) #6
  %0 = getelementptr inbounds i8, ptr %cmd_out, i32 32
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !101
  %2 = ptrtoint ptr %cmd_out to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cmd, ptr %cmd_out, align 4
  %arrayinit.cur.ptr = getelementptr inbounds ptr, ptr %cmd_out, i32 1
  %flags = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd_out, i32 0, i32 4
  %3 = call ptr @memset(ptr %arrayinit.cur.ptr, i32 0, i32 16)
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %flags, align 4
  %id = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd_out, i32 0, i32 5
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 168, ptr %id, align 4
  %len = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd_out, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 48, ptr %len, align 4
  %arrayinit.start4 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd_out, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %arrayinit.start4 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %arrayinit.start4, align 2
  %arrayinit.end5 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd_out, i32 0, i32 7
  %8 = ptrtoint ptr %arrayinit.end5 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %arrayinit.end5, align 4
  %sensitivity_data = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53
  %9 = call ptr @memset(ptr %cmd, i32 0, i32 48)
  %enhance_table = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, ptr %cmd, i32 0, i32 1
  %10 = ptrtoint ptr %sensitivity_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sensitivity_data, align 4
  %conv.i = trunc i32 %11 to i16
  %12 = call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %arrayidx.i = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 5
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %arrayidx.i, align 2
  %auto_corr_ofdm_mrc.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 1
  %14 = ptrtoint ptr %auto_corr_ofdm_mrc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %auto_corr_ofdm_mrc.i, align 4
  %conv1.i = trunc i32 %15 to i16
  %16 = call i16 @llvm.bswap.i16(i16 %conv1.i) #6
  %arrayidx2.i = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 6
  %17 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %arrayidx2.i, align 2
  %auto_corr_ofdm_x1.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 2
  %18 = ptrtoint ptr %auto_corr_ofdm_x1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %auto_corr_ofdm_x1.i, align 4
  %conv3.i = trunc i32 %19 to i16
  %20 = call i16 @llvm.bswap.i16(i16 %conv3.i) #6
  %arrayidx4.i = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %arrayidx4.i, align 2
  %auto_corr_ofdm_mrc_x1.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 3
  %22 = ptrtoint ptr %auto_corr_ofdm_mrc_x1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %auto_corr_ofdm_mrc_x1.i, align 4
  %conv5.i = trunc i32 %23 to i16
  %24 = call i16 @llvm.bswap.i16(i16 %conv5.i) #6
  %arrayidx6.i = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %arrayidx6.i, align 2
  %auto_corr_cck.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 4
  %26 = ptrtoint ptr %auto_corr_cck.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %auto_corr_cck.i, align 4
  %conv7.i = trunc i32 %27 to i16
  %28 = call i16 @llvm.bswap.i16(i16 %conv7.i) #6
  %arrayidx8.i = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 9
  %29 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %arrayidx8.i, align 2
  %auto_corr_cck_mrc.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 5
  %30 = ptrtoint ptr %auto_corr_cck_mrc.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %auto_corr_cck_mrc.i, align 4
  %conv9.i = trunc i32 %31 to i16
  %32 = call i16 @llvm.bswap.i16(i16 %conv9.i) #6
  %arrayidx10.i = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 4
  %33 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %arrayidx10.i, align 2
  %nrg_th_cck.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 17
  %34 = ptrtoint ptr %nrg_th_cck.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nrg_th_cck.i, align 4
  %conv11.i = trunc i32 %35 to i16
  %36 = call i16 @llvm.bswap.i16(i16 %conv11.i) #6
  %37 = ptrtoint ptr %enhance_table to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %enhance_table, align 2
  %nrg_th_ofdm.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 20
  %38 = ptrtoint ptr %nrg_th_ofdm.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nrg_th_ofdm.i, align 4
  %conv13.i = trunc i32 %39 to i16
  %40 = call i16 @llvm.bswap.i16(i16 %conv13.i) #6
  %arrayidx14.i = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %arrayidx14.i, align 2
  %barker_corr_th_min.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 21
  %42 = ptrtoint ptr %barker_corr_th_min.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %barker_corr_th_min.i, align 4
  %44 = call i16 @llvm.bswap.i16(i16 %43) #6
  %arrayidx15.i = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 7
  %45 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %arrayidx15.i, align 2
  %barker_corr_th_min_mrc.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 22
  %46 = ptrtoint ptr %barker_corr_th_min_mrc.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %barker_corr_th_min_mrc.i, align 2
  %48 = call i16 @llvm.bswap.i16(i16 %47) #6
  %arrayidx16.i = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 8
  %49 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %arrayidx16.i, align 2
  %nrg_th_cca.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 23
  %50 = ptrtoint ptr %nrg_th_cca.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %nrg_th_cca.i, align 4
  %52 = call i16 @llvm.bswap.i16(i16 %51) #6
  %arrayidx17.i = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 10
  %53 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %arrayidx17.i, align 2
  %dev.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %55, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_prepare_legacy_sensitivity_tbl, ptr noundef nonnull @.str.17, i32 noundef %11, i32 noundef %15, i32 noundef %19, i32 noundef %23, i32 noundef %39) #6
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 4
  %58 = ptrtoint ptr %auto_corr_cck.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %auto_corr_cck.i, align 4
  %60 = ptrtoint ptr %auto_corr_cck_mrc.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %auto_corr_cck_mrc.i, align 4
  %62 = ptrtoint ptr %nrg_th_cck.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nrg_th_cck.i, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %57, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_prepare_legacy_sensitivity_tbl, ptr noundef nonnull @.str.18, i32 noundef %59, i32 noundef %61, i32 noundef %63) #6
  %lib = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 4
  %64 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %lib, align 8
  %hd_v2 = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %65, i32 0, i32 9
  %66 = ptrtoint ptr %hd_v2 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %hd_v2, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not = icmp eq i8 %67, 0
  %arrayidx34 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 11
  %. = select i1 %tobool.not, i16 0, i16 256
  %.95 = select i1 %tobool.not, i16 -25598, i16 22530
  %.96 = select i1 %tobool.not, i16 1024, i16 10240
  %.97 = select i1 %tobool.not, i16 9472, i16 11520
  %.98 = select i1 %tobool.not, i16 1024, i16 15360
  %68 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %., ptr %arrayidx34, align 2
  %69 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 12
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %., ptr %69, align 2
  %71 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 13
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %., ptr %71, align 2
  %73 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 14
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %.95, ptr %73, align 2
  %75 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 15
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %.96, ptr %75, align 2
  %77 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 16
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 -6655, ptr %77, align 2
  %79 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 17
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %.97, ptr %79, align 2
  %81 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 18
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 21763, ptr %81, align 2
  %83 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 19
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %.98, ptr %83, align 2
  %85 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 20
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 -9215, ptr %85, align 2
  %87 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 21
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 25344, ptr %87, align 2
  %89 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 256, ptr %cmd, align 2
  %sensitivity_tbl = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 55
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(22) %enhance_table, ptr noundef dereferenceable(22) %sensitivity_tbl, i32 22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool58.not = icmp eq i32 %bcmp, 0
  br i1 %tobool58.not, label %land.lhs.true, label %entry.if.end68_crit_edge

entry.if.end68_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

land.lhs.true:                                    ; preds = %entry
  %arrayidx60 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 11
  %enhance_sensitivity_tbl = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 56
  %bcmp88 = call i32 @bcmp(ptr noundef dereferenceable(24) %arrayidx60, ptr noundef dereferenceable(24) %enhance_sensitivity_tbl, i32 24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp88)
  %tobool63.not = icmp eq i32 %bcmp88, 0
  br i1 %tobool63.not, label %do.end, label %land.lhs.true.if.end68_crit_edge

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev.i, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %91, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_enhance_sensitivity_write, ptr noundef nonnull @.str.16) #6
  br label %cleanup

if.end68:                                         ; preds = %land.lhs.true.if.end68_crit_edge, %entry.if.end68_crit_edge
  %92 = call ptr @memcpy(ptr %sensitivity_tbl, ptr %enhance_table, i32 22)
  %enhance_sensitivity_tbl73 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 56
  %arrayidx76 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 11
  %93 = call ptr @memcpy(ptr %enhance_sensitivity_tbl73, ptr %arrayidx76, i32 24)
  %call77 = call i32 @iwl_dvm_send_cmd(ptr noundef %priv, ptr noundef nonnull %cmd_out) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %do.end
  %retval.0 = phi i32 [ %call77, %if.end68 ], [ 0, %do.end ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd_out) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_sensitivity_write(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_sensitivity_cmd, align 2
  %cmd_out = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cmd) #6
  %0 = getelementptr inbounds %struct.iwl_sensitivity_cmd, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.iwl_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds %struct.iwl_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 2
  %3 = getelementptr inbounds %struct.iwl_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 3
  %4 = getelementptr inbounds %struct.iwl_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 4
  %5 = getelementptr inbounds %struct.iwl_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 5
  %6 = getelementptr inbounds %struct.iwl_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 6
  %7 = getelementptr inbounds %struct.iwl_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 7
  %8 = getelementptr inbounds %struct.iwl_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 8
  %9 = getelementptr inbounds %struct.iwl_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 9
  %10 = getelementptr inbounds %struct.iwl_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 10
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd_out) #6
  %11 = getelementptr inbounds i8, ptr %cmd_out, i32 32
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !101
  %13 = ptrtoint ptr %cmd_out to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cmd, ptr %cmd_out, align 4
  %arrayinit.cur.ptr = getelementptr inbounds ptr, ptr %cmd_out, i32 1
  %flags = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd_out, i32 0, i32 4
  %14 = call ptr @memset(ptr %arrayinit.cur.ptr, i32 0, i32 16)
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %flags, align 4
  %id = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd_out, i32 0, i32 5
  %16 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 168, ptr %id, align 4
  %len = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd_out, i32 0, i32 6
  %17 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 24, ptr %len, align 4
  %arrayinit.start4 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd_out, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %arrayinit.start4 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %arrayinit.start4, align 2
  %arrayinit.end5 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd_out, i32 0, i32 7
  %19 = ptrtoint ptr %arrayinit.end5 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %arrayinit.end5, align 4
  %sensitivity_data = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53
  %20 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %cmd, align 2
  %21 = ptrtoint ptr %sensitivity_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sensitivity_data, align 4
  %conv.i = trunc i32 %22 to i16
  %23 = call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %5, align 2
  %auto_corr_ofdm_mrc.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 1
  %25 = ptrtoint ptr %auto_corr_ofdm_mrc.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %auto_corr_ofdm_mrc.i, align 4
  %conv1.i = trunc i32 %26 to i16
  %27 = call i16 @llvm.bswap.i16(i16 %conv1.i) #6
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %6, align 2
  %auto_corr_ofdm_x1.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 2
  %29 = ptrtoint ptr %auto_corr_ofdm_x1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %auto_corr_ofdm_x1.i, align 4
  %conv3.i = trunc i32 %30 to i16
  %31 = call i16 @llvm.bswap.i16(i16 %conv3.i) #6
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %2, align 2
  %auto_corr_ofdm_mrc_x1.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 3
  %33 = ptrtoint ptr %auto_corr_ofdm_mrc_x1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %auto_corr_ofdm_mrc_x1.i, align 4
  %conv5.i = trunc i32 %34 to i16
  %35 = call i16 @llvm.bswap.i16(i16 %conv5.i) #6
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %3, align 2
  %auto_corr_cck.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 4
  %37 = ptrtoint ptr %auto_corr_cck.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %auto_corr_cck.i, align 4
  %conv7.i = trunc i32 %38 to i16
  %39 = call i16 @llvm.bswap.i16(i16 %conv7.i) #6
  %40 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %9, align 2
  %auto_corr_cck_mrc.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 5
  %41 = ptrtoint ptr %auto_corr_cck_mrc.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %auto_corr_cck_mrc.i, align 4
  %conv9.i = trunc i32 %42 to i16
  %43 = call i16 @llvm.bswap.i16(i16 %conv9.i) #6
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %4, align 2
  %nrg_th_cck.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 17
  %45 = ptrtoint ptr %nrg_th_cck.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nrg_th_cck.i, align 4
  %conv11.i = trunc i32 %46 to i16
  %47 = call i16 @llvm.bswap.i16(i16 %conv11.i) #6
  %48 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %0, align 2
  %nrg_th_ofdm.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 20
  %49 = ptrtoint ptr %nrg_th_ofdm.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nrg_th_ofdm.i, align 4
  %conv13.i = trunc i32 %50 to i16
  %51 = call i16 @llvm.bswap.i16(i16 %conv13.i) #6
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %1, align 2
  %barker_corr_th_min.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 21
  %53 = ptrtoint ptr %barker_corr_th_min.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %barker_corr_th_min.i, align 4
  %55 = call i16 @llvm.bswap.i16(i16 %54) #6
  %56 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %7, align 2
  %barker_corr_th_min_mrc.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 22
  %57 = ptrtoint ptr %barker_corr_th_min_mrc.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %barker_corr_th_min_mrc.i, align 2
  %59 = call i16 @llvm.bswap.i16(i16 %58) #6
  %60 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %8, align 2
  %nrg_th_cca.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 23
  %61 = ptrtoint ptr %nrg_th_cca.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %nrg_th_cca.i, align 4
  %63 = call i16 @llvm.bswap.i16(i16 %62) #6
  %64 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %10, align 2
  %dev.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %65 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %66, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_prepare_legacy_sensitivity_tbl, ptr noundef nonnull @.str.17, i32 noundef %22, i32 noundef %26, i32 noundef %30, i32 noundef %34, i32 noundef %50) #6
  %67 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i, align 4
  %69 = ptrtoint ptr %auto_corr_cck.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %auto_corr_cck.i, align 4
  %71 = ptrtoint ptr %auto_corr_cck_mrc.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %auto_corr_cck_mrc.i, align 4
  %73 = ptrtoint ptr %nrg_th_cck.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %nrg_th_cck.i, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %68, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_prepare_legacy_sensitivity_tbl, ptr noundef nonnull @.str.18, i32 noundef %70, i32 noundef %72, i32 noundef %74) #6
  %75 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 256, ptr %cmd, align 2
  %sensitivity_tbl = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 55
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(22) %0, ptr noundef dereferenceable(22) %sensitivity_tbl, i32 22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %77, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_sensitivity_write, ptr noundef nonnull @.str.16) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %78 = call ptr @memcpy(ptr %sensitivity_tbl, ptr %0, i32 22)
  %call21 = call i32 @iwl_dvm_send_cmd(ptr noundef %priv, ptr noundef nonnull %cmd_out) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call21, %if.end ], [ 0, %do.end ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd_out) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cmd) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_sensitivity_calibration(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %calib_disabled = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 127
  %0 = ptrtoint ptr %calib_disabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %calib_disabled, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %contexts.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50
  %arrayidx2.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 51
  %cmp11.i = icmp ult ptr %contexts.i, %arrayidx2.i
  br i1 %cmp11.i, label %for.body.lr.ph.i, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %if.end
  %valid_contexts.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 19
  %2 = ptrtoint ptr %valid_contexts.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %valid_contexts.i, align 4
  %conv.i = zext i8 %3 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ctx.012.i = phi ptr [ %contexts.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %ctxid.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.012.i, i32 0, i32 7
  %4 = ptrtoint ptr %ctxid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctxid.i, align 4
  %shl.i = shl nuw i32 1, %5
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %filter_flags.i.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.012.i, i32 0, i32 14, i32 13
  %6 = ptrtoint ptr %filter_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %filter_flags.i.i, align 4
  %8 = and i32 %7, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not.i = icmp eq i32 %8, 0
  br i1 %tobool3.not.i, label %if.then.i.for.inc.i_crit_edge, label %if.end6

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.iwl_rxon_context, ptr %ctx.012.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %arrayidx2.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.end_crit_edge

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

do.end:                                           ; preds = %for.inc.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %10, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_sensitivity_calibration, ptr noundef nonnull @.str.3) #6
  br label %cleanup

if.end6:                                          ; preds = %if.then.i
  %lock = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #6
  %interference_data_flag = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 2, i32 12
  %11 = ptrtoint ptr %interference_data_flag to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %interference_data_flag, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %12)
  %cmp.not = icmp eq i32 %12, 16777216
  br i1 %cmp.not, label %if.end20, label %do.end14

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %dev15 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %13 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev15, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %14, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_sensitivity_calibration, ptr noundef nonnull @.str.4) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #6
  br label %cleanup

if.end20:                                         ; preds = %if.end6
  %channel_load = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 2, i32 13
  %15 = ptrtoint ptr %channel_load to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %channel_load, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %false_alarm_cnt = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 5, i32 7
  %18 = ptrtoint ptr %false_alarm_cnt to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %false_alarm_cnt, align 1
  %false_alarm_cnt21 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 3, i32 7
  %20 = ptrtoint ptr %false_alarm_cnt21 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %false_alarm_cnt21, align 1
  %plcp_err = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 5, i32 2
  %22 = ptrtoint ptr %plcp_err to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %plcp_err, align 1
  %plcp_err22 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 3, i32 2
  %24 = ptrtoint ptr %plcp_err22 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %plcp_err22, align 1
  %beacon_silence_rssi_a = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 2, i32 9
  %26 = ptrtoint ptr %beacon_silence_rssi_a to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %beacon_silence_rssi_a, align 1
  %28 = lshr i32 %27, 16
  %beacon_silence_rssi_b = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 2, i32 10
  %29 = ptrtoint ptr %beacon_silence_rssi_b to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %beacon_silence_rssi_b, align 1
  %31 = lshr i32 %30, 16
  %beacon_silence_rssi_c = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 2, i32 11
  %32 = ptrtoint ptr %beacon_silence_rssi_c to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %beacon_silence_rssi_c, align 1
  %34 = lshr i32 %33, 16
  %beacon_energy_a = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 2, i32 18
  %35 = ptrtoint ptr %beacon_energy_a to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %beacon_energy_a, align 1
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %beacon_energy_b = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 2, i32 19
  %38 = ptrtoint ptr %beacon_energy_b to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %beacon_energy_b, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %beacon_energy_c = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 2, i32 20
  %41 = ptrtoint ptr %beacon_energy_c to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %beacon_energy_c, align 1
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #6
  %dev35 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %44 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev35, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %45, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_sensitivity_calibration, ptr noundef nonnull @.str.5, i32 noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool38.not = icmp eq i32 %16, 0
  br i1 %tobool38.not, label %do.end43, label %if.end47

do.end43:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev35, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %47, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_sensitivity_calibration, ptr noundef nonnull @.str.6) #6
  br label %cleanup

if.end47:                                         ; preds = %if.end20
  %48 = tail call i32 @llvm.bswap.i32(i32 %25)
  %49 = tail call i32 @llvm.bswap.i32(i32 %23)
  %50 = tail call i32 @llvm.bswap.i32(i32 %21)
  %51 = tail call i32 @llvm.bswap.i32(i32 %19)
  %last_bad_plcp_cnt_cck = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 8
  %52 = ptrtoint ptr %last_bad_plcp_cnt_cck to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %last_bad_plcp_cnt_cck, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %53)
  %cmp48 = icmp ult i32 %49, %53
  %sub = select i1 %cmp48, i32 0, i32 %53
  %bad_plcp_cck.0 = sub i32 %49, %sub
  %54 = ptrtoint ptr %last_bad_plcp_cnt_cck to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %49, ptr %last_bad_plcp_cnt_cck, align 4
  %last_bad_plcp_cnt_ofdm = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 6
  %55 = ptrtoint ptr %last_bad_plcp_cnt_ofdm to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %last_bad_plcp_cnt_ofdm, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %56)
  %cmp54 = icmp ult i32 %48, %56
  %sub59 = select i1 %cmp54, i32 0, i32 %56
  %bad_plcp_ofdm.0 = sub i32 %48, %sub59
  %57 = ptrtoint ptr %last_bad_plcp_cnt_ofdm to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %48, ptr %last_bad_plcp_cnt_ofdm, align 4
  %last_fa_cnt_ofdm = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 7
  %58 = ptrtoint ptr %last_fa_cnt_ofdm to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %last_fa_cnt_ofdm, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %59)
  %cmp63 = icmp ult i32 %50, %59
  %sub68 = select i1 %cmp63, i32 0, i32 %59
  %fa_ofdm.0 = sub i32 %50, %sub68
  %60 = ptrtoint ptr %last_fa_cnt_ofdm to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %50, ptr %last_fa_cnt_ofdm, align 4
  %last_fa_cnt_cck = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 9
  %61 = ptrtoint ptr %last_fa_cnt_cck to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %last_fa_cnt_cck, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %62)
  %cmp72 = icmp ult i32 %51, %62
  %sub77 = select i1 %cmp72, i32 0, i32 %62
  %fa_cck.0 = sub i32 %51, %sub77
  %63 = ptrtoint ptr %last_fa_cnt_cck to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %51, ptr %last_fa_cnt_cck, align 4
  %add81 = add i32 %fa_ofdm.0, %bad_plcp_ofdm.0
  %add82 = add i32 %fa_cck.0, %bad_plcp_cck.0
  %64 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev35, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %65, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_sensitivity_calibration, ptr noundef nonnull @.str.7, i32 noundef %fa_cck.0, i32 noundef %bad_plcp_cck.0, i32 noundef %fa_ofdm.0, i32 noundef %bad_plcp_ofdm.0) #6
  %mul1.i = mul i32 %add81, 204800
  %mul2.i = mul i32 %17, 50
  %mul3.i = mul i32 %17, 5
  %sens.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 17, i32 5
  %66 = ptrtoint ptr %sens.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sens.i, align 4
  %sensitivity_data.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.i, i32 %mul2.i)
  %cmp.i185 = icmp ugt i32 %mul1.i, %mul2.i
  br i1 %cmp.i185, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev35, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %69, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_sens_auto_corr_ofdm, ptr noundef nonnull @.str.19, i32 noundef %mul1.i, i32 noundef %mul2.i) #6
  %70 = ptrtoint ptr %sensitivity_data.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %sensitivity_data.i, align 4
  %add.i = add i32 %71, 1
  %auto_corr_max_ofdm.i = getelementptr inbounds %struct.iwl_sensitivity_ranges, ptr %67, i32 0, i32 7
  %72 = ptrtoint ptr %auto_corr_max_ofdm.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %auto_corr_max_ofdm.i, align 2
  %conv.i186 = zext i16 %73 to i32
  %74 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 %conv.i186) #6
  %75 = ptrtoint ptr %sensitivity_data.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %sensitivity_data.i, align 4
  %auto_corr_ofdm_mrc.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 1
  %76 = ptrtoint ptr %auto_corr_ofdm_mrc.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %auto_corr_ofdm_mrc.i, align 4
  %add10.i = add i32 %77, 1
  %auto_corr_max_ofdm_mrc.i = getelementptr inbounds %struct.iwl_sensitivity_ranges, ptr %67, i32 0, i32 8
  %78 = ptrtoint ptr %auto_corr_max_ofdm_mrc.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %auto_corr_max_ofdm_mrc.i, align 2
  %conv11.i = zext i16 %79 to i32
  %80 = tail call i32 @llvm.umin.i32(i32 %add10.i, i32 %conv11.i) #6
  %81 = ptrtoint ptr %auto_corr_ofdm_mrc.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %auto_corr_ofdm_mrc.i, align 4
  %auto_corr_ofdm_x1.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 2
  %82 = ptrtoint ptr %auto_corr_ofdm_x1.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %auto_corr_ofdm_x1.i, align 4
  %add20.i = add i32 %83, 1
  %auto_corr_max_ofdm_x1.i = getelementptr inbounds %struct.iwl_sensitivity_ranges, ptr %67, i32 0, i32 9
  %84 = ptrtoint ptr %auto_corr_max_ofdm_x1.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %auto_corr_max_ofdm_x1.i, align 2
  %conv21.i = zext i16 %85 to i32
  %86 = tail call i32 @llvm.umin.i32(i32 %add20.i, i32 %conv21.i) #6
  %87 = ptrtoint ptr %auto_corr_ofdm_x1.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %auto_corr_ofdm_x1.i, align 4
  %auto_corr_ofdm_mrc_x1.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 3
  %88 = ptrtoint ptr %auto_corr_ofdm_mrc_x1.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %auto_corr_ofdm_mrc_x1.i, align 4
  %add30.i = add i32 %89, 1
  %auto_corr_max_ofdm_mrc_x1.i = getelementptr inbounds %struct.iwl_sensitivity_ranges, ptr %67, i32 0, i32 10
  %90 = ptrtoint ptr %auto_corr_max_ofdm_mrc_x1.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %auto_corr_max_ofdm_mrc_x1.i, align 2
  %conv31.i = zext i16 %91 to i32
  %92 = tail call i32 @llvm.umin.i32(i32 %add30.i, i32 %conv31.i) #6
  %93 = ptrtoint ptr %auto_corr_ofdm_mrc_x1.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %auto_corr_ofdm_mrc_x1.i, align 4
  br label %iwl_sens_auto_corr_ofdm.exit

if.else.i:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.i, i32 %mul3.i)
  %cmp40.i = icmp ult i32 %mul1.i, %mul3.i
  %94 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev35, align 4
  br i1 %cmp40.i, label %do.end46.i, label %do.end97.i

do.end46.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %95, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_sens_auto_corr_ofdm, ptr noundef nonnull @.str.20, i32 noundef %mul1.i, i32 noundef %mul3.i) #6
  %96 = ptrtoint ptr %sensitivity_data.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %sensitivity_data.i, align 4
  %sub.i = add i32 %97, -1
  %auto_corr_min_ofdm.i = getelementptr inbounds %struct.iwl_sensitivity_ranges, ptr %67, i32 0, i32 3
  %98 = ptrtoint ptr %auto_corr_min_ofdm.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %auto_corr_min_ofdm.i, align 2
  %conv51.i = zext i16 %99 to i32
  %100 = tail call i32 @llvm.umax.i32(i32 %sub.i, i32 %conv51.i) #6
  %101 = ptrtoint ptr %sensitivity_data.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %sensitivity_data.i, align 4
  %auto_corr_ofdm_mrc60.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 1
  %102 = ptrtoint ptr %auto_corr_ofdm_mrc60.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %auto_corr_ofdm_mrc60.i, align 4
  %sub61.i = add i32 %103, -1
  %auto_corr_min_ofdm_mrc.i = getelementptr inbounds %struct.iwl_sensitivity_ranges, ptr %67, i32 0, i32 4
  %104 = ptrtoint ptr %auto_corr_min_ofdm_mrc.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %auto_corr_min_ofdm_mrc.i, align 2
  %conv62.i = zext i16 %105 to i32
  %106 = tail call i32 @llvm.umax.i32(i32 %sub61.i, i32 %conv62.i) #6
  %107 = ptrtoint ptr %auto_corr_ofdm_mrc60.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %auto_corr_ofdm_mrc60.i, align 4
  %auto_corr_ofdm_x171.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 2
  %108 = ptrtoint ptr %auto_corr_ofdm_x171.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %auto_corr_ofdm_x171.i, align 4
  %sub72.i = add i32 %109, -1
  %auto_corr_min_ofdm_x1.i = getelementptr inbounds %struct.iwl_sensitivity_ranges, ptr %67, i32 0, i32 5
  %110 = ptrtoint ptr %auto_corr_min_ofdm_x1.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %auto_corr_min_ofdm_x1.i, align 2
  %conv73.i = zext i16 %111 to i32
  %112 = tail call i32 @llvm.umax.i32(i32 %sub72.i, i32 %conv73.i) #6
  %113 = ptrtoint ptr %auto_corr_ofdm_x171.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %auto_corr_ofdm_x171.i, align 4
  %auto_corr_ofdm_mrc_x182.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 3
  %114 = ptrtoint ptr %auto_corr_ofdm_mrc_x182.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %auto_corr_ofdm_mrc_x182.i, align 4
  %sub83.i = add i32 %115, -1
  %auto_corr_min_ofdm_mrc_x1.i = getelementptr inbounds %struct.iwl_sensitivity_ranges, ptr %67, i32 0, i32 6
  %116 = ptrtoint ptr %auto_corr_min_ofdm_mrc_x1.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %auto_corr_min_ofdm_mrc_x1.i, align 2
  %conv84.i = zext i16 %117 to i32
  %118 = tail call i32 @llvm.umax.i32(i32 %sub83.i, i32 %conv84.i) #6
  %119 = ptrtoint ptr %auto_corr_ofdm_mrc_x182.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %auto_corr_ofdm_mrc_x182.i, align 4
  br label %iwl_sens_auto_corr_ofdm.exit

do.end97.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %95, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_sens_auto_corr_ofdm, ptr noundef nonnull @.str.21, i32 noundef %mul3.i, i32 noundef %mul1.i, i32 noundef %mul2.i) #6
  br label %iwl_sens_auto_corr_ofdm.exit

iwl_sens_auto_corr_ofdm.exit:                     ; preds = %do.end97.i, %do.end46.i, %do.end.i
  %120 = ptrtoint ptr %sens.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %sens.i, align 4
  %nrg_auto_corr_silence_diff.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 18
  %122 = ptrtoint ptr %nrg_auto_corr_silence_diff.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %nrg_auto_corr_silence_diff.i, align 4
  %conv10.i = and i32 %31, 255
  %conv11.i190 = and i32 %34, 255
  %123 = tail call i32 @llvm.umax.i32(i32 %conv10.i, i32 %conv11.i190) #6
  %conv17.i = and i32 %28, 255
  %124 = tail call i32 @llvm.umax.i32(i32 %conv17.i, i32 %123) #6
  %conv27.i = trunc i32 %124 to i8
  %nrg_silence_idx.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 16
  %125 = ptrtoint ptr %nrg_silence_idx.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %nrg_silence_idx.i, align 4
  %arrayidx.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 13, i32 %126
  %127 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv27.i, ptr %arrayidx.i, align 1
  %128 = load i32, ptr %nrg_silence_idx.i, align 4
  %inc.i = add i32 %128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %inc.i)
  %cmp30.i = icmp ugt i32 %inc.i, 19
  %storemerge2.i = select i1 %cmp30.i, i32 0, i32 %inc.i
  %129 = ptrtoint ptr %nrg_silence_idx.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %storemerge2.i, ptr %nrg_silence_idx.i, align 4
  %arrayidx36.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 13, i32 0
  %130 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx36.i, align 1
  %arrayidx36.1.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 13, i32 1
  %132 = ptrtoint ptr %arrayidx36.1.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx36.1.i, align 1
  %134 = tail call i8 @llvm.umax.i8(i8 %131, i8 %133) #6
  %arrayidx36.2.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 13, i32 2
  %135 = ptrtoint ptr %arrayidx36.2.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx36.2.i, align 1
  %137 = tail call i8 @llvm.umax.i8(i8 %134, i8 %136) #6
  %arrayidx36.3.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 13, i32 3
  %138 = ptrtoint ptr %arrayidx36.3.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx36.3.i, align 1
  %140 = tail call i8 @llvm.umax.i8(i8 %137, i8 %139) #6
  %arrayidx36.4.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 13, i32 4
  %141 = ptrtoint ptr %arrayidx36.4.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx36.4.i, align 1
  %143 = tail call i8 @llvm.umax.i8(i8 %140, i8 %142) #6
  %arrayidx36.5.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 13, i32 5
  %144 = ptrtoint ptr %arrayidx36.5.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx36.5.i, align 1
  %146 = tail call i8 @llvm.umax.i8(i8 %143, i8 %145) #6
  %arrayidx36.6.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 13, i32 6
  %147 = ptrtoint ptr %arrayidx36.6.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx36.6.i, align 1
  %149 = tail call i8 @llvm.umax.i8(i8 %146, i8 %148) #6
  %arrayidx36.7.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 13, i32 7
  %150 = ptrtoint ptr %arrayidx36.7.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx36.7.i, align 1
  %152 = tail call i8 @llvm.umax.i8(i8 %149, i8 %151) #6
  %arrayidx36.8.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 13, i32 8
  %153 = ptrtoint ptr %arrayidx36.8.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx36.8.i, align 1
  %155 = tail call i8 @llvm.umax.i8(i8 %152, i8 %154) #6
  %arrayidx36.9.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 13, i32 9
  %156 = ptrtoint ptr %arrayidx36.9.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx36.9.i, align 1
  %158 = tail call i8 @llvm.umax.i8(i8 %155, i8 %157) #6
  %arrayidx36.10.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 13, i32 10
  %159 = ptrtoint ptr %arrayidx36.10.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx36.10.i, align 1
  %161 = tail call i8 @llvm.umax.i8(i8 %158, i8 %160) #6
  %arrayidx36.11.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 13, i32 11
  %162 = ptrtoint ptr %arrayidx36.11.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx36.11.i, align 1
  %164 = tail call i8 @llvm.umax.i8(i8 %161, i8 %163) #6
  %arrayidx36.12.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 13, i32 12
  %165 = ptrtoint ptr %arrayidx36.12.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx36.12.i, align 1
  %167 = tail call i8 @llvm.umax.i8(i8 %164, i8 %166) #6
  %arrayidx36.13.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 13, i32 13
  %168 = ptrtoint ptr %arrayidx36.13.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx36.13.i, align 1
  %170 = tail call i8 @llvm.umax.i8(i8 %167, i8 %169) #6
  %arrayidx36.14.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 13, i32 14
  %171 = ptrtoint ptr %arrayidx36.14.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx36.14.i, align 1
  %173 = tail call i8 @llvm.umax.i8(i8 %170, i8 %172) #6
  %arrayidx36.15.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 13, i32 15
  %174 = ptrtoint ptr %arrayidx36.15.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx36.15.i, align 1
  %176 = tail call i8 @llvm.umax.i8(i8 %173, i8 %175) #6
  %arrayidx36.16.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 13, i32 16
  %177 = ptrtoint ptr %arrayidx36.16.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx36.16.i, align 1
  %179 = tail call i8 @llvm.umax.i8(i8 %176, i8 %178) #6
  %arrayidx36.17.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 13, i32 17
  %180 = ptrtoint ptr %arrayidx36.17.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx36.17.i, align 1
  %182 = tail call i8 @llvm.umax.i8(i8 %179, i8 %181) #6
  %arrayidx36.18.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 13, i32 18
  %183 = ptrtoint ptr %arrayidx36.18.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx36.18.i, align 1
  %185 = tail call i8 @llvm.umax.i8(i8 %182, i8 %184) #6
  %arrayidx36.19.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 13, i32 19
  %186 = ptrtoint ptr %arrayidx36.19.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx36.19.i, align 1
  %188 = tail call i8 @llvm.umax.i8(i8 %185, i8 %187) #6
  %189 = zext i8 %188 to i32
  %mul1.i191 = mul i32 %add82, 204800
  %190 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %dev35, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %191, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_sens_energy_cck, ptr noundef nonnull @.str.22, i32 noundef %conv17.i, i32 noundef %conv10.i, i32 noundef %conv11.i190, i32 noundef %189) #6
  %nrg_energy_idx.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 15
  %192 = ptrtoint ptr %nrg_energy_idx.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %nrg_energy_idx.i, align 4
  %194 = tail call i32 @llvm.umin.i32(i32 %40, i32 %43) #6
  %195 = tail call i32 @llvm.umin.i32(i32 %37, i32 %194) #6
  %nrg_value.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 12
  %arrayidx66.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 12, i32 %193
  %196 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %arrayidx66.i, align 4
  %197 = ptrtoint ptr %nrg_energy_idx.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %nrg_energy_idx.i, align 4
  %inc68.i = add i32 %198, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %inc68.i)
  %cmp70.i = icmp ugt i32 %inc68.i, 9
  %storemerge1.i = select i1 %cmp70.i, i32 0, i32 %inc68.i
  %199 = ptrtoint ptr %nrg_energy_idx.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %storemerge1.i, ptr %nrg_energy_idx.i, align 4
  %200 = ptrtoint ptr %nrg_value.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %nrg_value.i, align 4
  %arrayidx82.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 12, i32 1
  %202 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %arrayidx82.i, align 4
  %204 = tail call i32 @llvm.umax.i32(i32 %201, i32 %203) #6
  %arrayidx82.1.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 12, i32 2
  %205 = ptrtoint ptr %arrayidx82.1.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx82.1.i, align 4
  %207 = tail call i32 @llvm.umax.i32(i32 %204, i32 %206) #6
  %arrayidx82.2.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 12, i32 3
  %208 = ptrtoint ptr %arrayidx82.2.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx82.2.i, align 4
  %210 = tail call i32 @llvm.umax.i32(i32 %207, i32 %209) #6
  %arrayidx82.3.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 12, i32 4
  %211 = ptrtoint ptr %arrayidx82.3.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %arrayidx82.3.i, align 4
  %213 = tail call i32 @llvm.umax.i32(i32 %210, i32 %212) #6
  %arrayidx82.4.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 12, i32 5
  %214 = ptrtoint ptr %arrayidx82.4.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx82.4.i, align 4
  %216 = tail call i32 @llvm.umax.i32(i32 %213, i32 %215) #6
  %arrayidx82.5.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 12, i32 6
  %217 = ptrtoint ptr %arrayidx82.5.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %arrayidx82.5.i, align 4
  %219 = tail call i32 @llvm.umax.i32(i32 %216, i32 %218) #6
  %arrayidx82.6.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 12, i32 7
  %220 = ptrtoint ptr %arrayidx82.6.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx82.6.i, align 4
  %222 = tail call i32 @llvm.umax.i32(i32 %219, i32 %221) #6
  %arrayidx82.7.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 12, i32 8
  %223 = ptrtoint ptr %arrayidx82.7.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %arrayidx82.7.i, align 4
  %225 = tail call i32 @llvm.umax.i32(i32 %222, i32 %224) #6
  %arrayidx82.8.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 12, i32 9
  %226 = ptrtoint ptr %arrayidx82.8.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %arrayidx82.8.i, align 4
  %228 = tail call i32 @llvm.umax.i32(i32 %225, i32 %227) #6
  %add.i194 = add i32 %228, 6
  %229 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dev35, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %230, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_sens_energy_cck, ptr noundef nonnull @.str.23, i32 noundef %37, i32 noundef %40, i32 noundef %43, i32 noundef %228) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.i191, i32 %mul3.i)
  %cmp103.i = icmp ult i32 %mul1.i191, %mul3.i
  %num_in_cck_no_fa.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 19
  br i1 %cmp103.i, label %if.then105.i, label %iwl_sens_auto_corr_ofdm.exit.do.end112.i_crit_edge

iwl_sens_auto_corr_ofdm.exit.do.end112.i_crit_edge: ; preds = %iwl_sens_auto_corr_ofdm.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end112.i

if.then105.i:                                     ; preds = %iwl_sens_auto_corr_ofdm.exit
  call void @__sanitizer_cov_trace_pc() #8
  %231 = ptrtoint ptr %num_in_cck_no_fa.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %num_in_cck_no_fa.i, align 4
  %inc106.i = add i32 %232, 1
  br label %do.end112.i

do.end112.i:                                      ; preds = %if.then105.i, %iwl_sens_auto_corr_ofdm.exit.do.end112.i_crit_edge
  %.sink.i = phi i32 [ %inc106.i, %if.then105.i ], [ 0, %iwl_sens_auto_corr_ofdm.exit.do.end112.i_crit_edge ]
  %233 = ptrtoint ptr %num_in_cck_no_fa.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %.sink.i, ptr %num_in_cck_no_fa.i, align 4
  %234 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %dev35, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %235, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_sens_energy_cck, ptr noundef nonnull @.str.24, i32 noundef %.sink.i) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.i191, i32 %mul2.i)
  %cmp117.i = icmp ugt i32 %mul1.i191, %mul2.i
  br i1 %cmp117.i, label %land.lhs.true.i, label %do.end112.i.if.else138.i_crit_edge

do.end112.i.if.else138.i_crit_edge:               ; preds = %do.end112.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else138.i

land.lhs.true.i:                                  ; preds = %do.end112.i
  %auto_corr_cck.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 4
  %236 = ptrtoint ptr %auto_corr_cck.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %auto_corr_cck.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %237)
  %cmp119.i = icmp ugt i32 %237, 160
  br i1 %cmp119.i, label %do.end125.i, label %land.lhs.true.i.if.else138.i_crit_edge

land.lhs.true.i.if.else138.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else138.i

do.end125.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %238 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %dev35, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %239, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_sens_energy_cck, ptr noundef nonnull @.str.25, i32 noundef %mul1.i191, i32 noundef %mul2.i) #6
  %240 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %dev35, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %241, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_sens_energy_cck, ptr noundef nonnull @.str.26) #6
  %nrg_curr_state.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 10
  %242 = ptrtoint ptr %nrg_curr_state.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 0, ptr %nrg_curr_state.i, align 4
  %nrg_silence_ref.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 14
  %243 = ptrtoint ptr %nrg_silence_ref.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %189, ptr %nrg_silence_ref.i, align 4
  %nrg_th_cck.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 17
  %244 = ptrtoint ptr %nrg_th_cck.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %nrg_th_cck.i, align 4
  %sub136.i = add i32 %245, -2
  store i32 %sub136.i, ptr %nrg_th_cck.i, align 4
  br label %if.end224.i

if.else138.i:                                     ; preds = %land.lhs.true.i.if.else138.i_crit_edge, %do.end112.i.if.else138.i_crit_edge
  br i1 %cmp103.i, label %if.then141.i, label %do.end195.i

if.then141.i:                                     ; preds = %if.else138.i
  %nrg_curr_state142.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 10
  %246 = ptrtoint ptr %nrg_curr_state142.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 1, ptr %nrg_curr_state142.i, align 4
  %nrg_silence_ref143.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 14
  %247 = ptrtoint ptr %nrg_silence_ref143.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %nrg_silence_ref143.i, align 4
  %sub144.i = sub i32 %248, %189
  %249 = ptrtoint ptr %nrg_auto_corr_silence_diff.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %sub144.i, ptr %nrg_auto_corr_silence_diff.i, align 4
  %250 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %dev35, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %251, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_sens_energy_cck, ptr noundef nonnull @.str.27, i32 noundef %mul1.i191, i32 noundef %mul3.i, i32 noundef %sub144.i) #6
  %nrg_prev_state.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 11
  %252 = ptrtoint ptr %nrg_prev_state.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %nrg_prev_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %253)
  %cmp154.not.i = icmp eq i32 %253, 0
  br i1 %cmp154.not.i, label %if.then141.i.do.end186.i_crit_edge, label %land.lhs.true156.i

if.then141.i.do.end186.i_crit_edge:               ; preds = %if.then141.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end186.i

land.lhs.true156.i:                               ; preds = %if.then141.i
  %254 = ptrtoint ptr %nrg_auto_corr_silence_diff.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %nrg_auto_corr_silence_diff.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %255)
  %cmp158.i = icmp sgt i32 %255, 2
  br i1 %cmp158.i, label %land.lhs.true156.i.do.end167.i_crit_edge, label %lor.lhs.false.i

land.lhs.true156.i.do.end167.i_crit_edge:         ; preds = %land.lhs.true156.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end167.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true156.i
  %256 = ptrtoint ptr %num_in_cck_no_fa.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %num_in_cck_no_fa.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %257)
  %cmp161.i = icmp ugt i32 %257, 100
  br i1 %cmp161.i, label %lor.lhs.false.i.do.end167.i_crit_edge, label %lor.lhs.false.i.do.end186.i_crit_edge

lor.lhs.false.i.do.end186.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end186.i

lor.lhs.false.i.do.end167.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end167.i

do.end167.i:                                      ; preds = %lor.lhs.false.i.do.end167.i_crit_edge, %land.lhs.true156.i.do.end167.i_crit_edge
  %258 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %dev35, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %259, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_sens_energy_cck, ptr noundef nonnull @.str.28) #6
  %nrg_th_cck171.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 17
  %260 = ptrtoint ptr %nrg_th_cck171.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %nrg_th_cck171.i, align 4
  %add172.i = add i32 %261, 2
  %262 = ptrtoint ptr %121 to i32
  call void @__asan_load2_noabort(i32 %262)
  %263 = load i16, ptr %121, align 2
  %conv173.i = zext i16 %263 to i32
  %264 = tail call i32 @llvm.umin.i32(i32 %add172.i, i32 %conv173.i) #6
  %265 = ptrtoint ptr %nrg_th_cck171.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %264, ptr %nrg_th_cck171.i, align 4
  br label %if.end224.i

do.end186.i:                                      ; preds = %lor.lhs.false.i.do.end186.i_crit_edge, %if.then141.i.do.end186.i_crit_edge
  %266 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %dev35, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %267, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_sens_energy_cck, ptr noundef nonnull @.str.29) #6
  br label %if.end224.i

do.end195.i:                                      ; preds = %if.else138.i
  %268 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %dev35, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %269, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_sens_energy_cck, ptr noundef nonnull @.str.30) #6
  %nrg_curr_state199.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 10
  %270 = ptrtoint ptr %nrg_curr_state199.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 2, ptr %nrg_curr_state199.i, align 4
  %nrg_silence_ref200.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 14
  %271 = ptrtoint ptr %nrg_silence_ref200.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %189, ptr %nrg_silence_ref200.i, align 4
  %nrg_prev_state201.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 11
  %272 = ptrtoint ptr %nrg_prev_state201.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %nrg_prev_state201.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %273)
  %cmp202.i = icmp eq i32 %273, 0
  br i1 %cmp202.i, label %do.end208.i, label %do.end195.i.if.end224.i_crit_edge

do.end195.i.if.end224.i_crit_edge:                ; preds = %do.end195.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end224.i

do.end208.i:                                      ; preds = %do.end195.i
  %274 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %dev35, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %275, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_sens_energy_cck, ptr noundef nonnull @.str.31) #6
  %nrg_th_cck212.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 17
  %276 = ptrtoint ptr %nrg_th_cck212.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %nrg_th_cck212.i, align 4
  %add213.i = add i32 %228, 14
  call void @__sanitizer_cov_trace_cmp4(i32 %277, i32 %add213.i)
  %cmp214.i = icmp ugt i32 %277, %add213.i
  br i1 %cmp214.i, label %if.then216.i, label %if.else219.i

if.then216.i:                                     ; preds = %do.end208.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub218.i = add i32 %277, -8
  %278 = ptrtoint ptr %nrg_th_cck212.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %sub218.i, ptr %nrg_th_cck212.i, align 4
  br label %if.end224.i

if.else219.i:                                     ; preds = %do.end208.i
  call void @__sanitizer_cov_trace_pc() #8
  %279 = ptrtoint ptr %nrg_th_cck212.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %add.i194, ptr %nrg_th_cck212.i, align 4
  br label %if.end224.i

if.end224.i:                                      ; preds = %if.else219.i, %if.then216.i, %do.end195.i.if.end224.i_crit_edge, %do.end186.i, %do.end167.i, %do.end125.i
  %nrg_th_cck225.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 17
  %280 = ptrtoint ptr %nrg_th_cck225.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %nrg_th_cck225.i, align 4
  %282 = tail call i32 @llvm.umax.i32(i32 %add.i194, i32 %281) #6
  %283 = ptrtoint ptr %nrg_th_cck225.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %282, ptr %nrg_th_cck225.i, align 4
  %284 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %dev35, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %285, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_sens_energy_cck, ptr noundef nonnull @.str.32, i32 noundef %282) #6
  %nrg_curr_state242.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 10
  %286 = ptrtoint ptr %nrg_curr_state242.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %nrg_curr_state242.i, align 4
  %nrg_prev_state243.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 11
  %288 = ptrtoint ptr %nrg_prev_state243.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %287, ptr %nrg_prev_state243.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.i191, i32 %mul3.i)
  %cmp244.i = icmp ugt i32 %mul1.i191, %mul3.i
  br i1 %cmp244.i, label %if.then246.i, label %if.else275.i

if.then246.i:                                     ; preds = %if.end224.i
  %auto_corr_cck247.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 4
  %289 = ptrtoint ptr %auto_corr_cck247.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %auto_corr_cck247.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %290)
  %cmp248.i = icmp ult i32 %290, 160
  br i1 %cmp248.i, label %if.then246.i.if.end264.i_crit_edge, label %if.else252.i

if.then246.i.if.end264.i_crit_edge:               ; preds = %if.then246.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end264.i

if.else252.i:                                     ; preds = %if.then246.i
  call void @__sanitizer_cov_trace_pc() #8
  %add254.i = add i32 %290, 3
  %auto_corr_max_cck.i = getelementptr inbounds %struct.iwl_sensitivity_ranges, ptr %121, i32 0, i32 11
  %291 = ptrtoint ptr %auto_corr_max_cck.i to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %auto_corr_max_cck.i, align 2
  %conv255.i = zext i16 %292 to i32
  %293 = tail call i32 @llvm.umin.i32(i32 %add254.i, i32 %conv255.i) #6
  br label %if.end264.i

if.end264.i:                                      ; preds = %if.else252.i, %if.then246.i.if.end264.i_crit_edge
  %storemerge.i = phi i32 [ %293, %if.else252.i ], [ 161, %if.then246.i.if.end264.i_crit_edge ]
  %294 = ptrtoint ptr %auto_corr_cck247.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %storemerge.i, ptr %auto_corr_cck247.i, align 4
  %auto_corr_cck_mrc.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 5
  %295 = ptrtoint ptr %auto_corr_cck_mrc.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %auto_corr_cck_mrc.i, align 4
  %add265.i = add i32 %296, 3
  %auto_corr_max_cck_mrc.i = getelementptr inbounds %struct.iwl_sensitivity_ranges, ptr %121, i32 0, i32 12
  %297 = ptrtoint ptr %auto_corr_max_cck_mrc.i to i32
  call void @__asan_load2_noabort(i32 %297)
  %298 = load i16, ptr %auto_corr_max_cck_mrc.i, align 2
  %conv266.i = zext i16 %298 to i32
  %299 = tail call i32 @llvm.umin.i32(i32 %add265.i, i32 %conv266.i) #6
  %300 = ptrtoint ptr %auto_corr_cck_mrc.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %299, ptr %auto_corr_cck_mrc.i, align 4
  br label %iwl_sens_energy_cck.exit

if.else275.i:                                     ; preds = %if.end224.i
  br i1 %cmp103.i, label %land.lhs.true278.i, label %if.else275.i.iwl_sens_energy_cck.exit_crit_edge

if.else275.i.iwl_sens_energy_cck.exit_crit_edge:  ; preds = %if.else275.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_sens_energy_cck.exit

land.lhs.true278.i:                               ; preds = %if.else275.i
  %301 = ptrtoint ptr %nrg_auto_corr_silence_diff.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %nrg_auto_corr_silence_diff.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %302)
  %cmp280.i = icmp sgt i32 %302, 2
  br i1 %cmp280.i, label %land.lhs.true278.i.if.then286.i_crit_edge, label %lor.lhs.false282.i

land.lhs.true278.i.if.then286.i_crit_edge:        ; preds = %land.lhs.true278.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then286.i

lor.lhs.false282.i:                               ; preds = %land.lhs.true278.i
  %303 = ptrtoint ptr %num_in_cck_no_fa.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %num_in_cck_no_fa.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %304)
  %cmp284.i = icmp ugt i32 %304, 100
  br i1 %cmp284.i, label %lor.lhs.false282.i.if.then286.i_crit_edge, label %lor.lhs.false282.i.iwl_sens_energy_cck.exit_crit_edge

lor.lhs.false282.i.iwl_sens_energy_cck.exit_crit_edge: ; preds = %lor.lhs.false282.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_sens_energy_cck.exit

lor.lhs.false282.i.if.then286.i_crit_edge:        ; preds = %lor.lhs.false282.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then286.i

if.then286.i:                                     ; preds = %lor.lhs.false282.i.if.then286.i_crit_edge, %land.lhs.true278.i.if.then286.i_crit_edge
  %auto_corr_cck287.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 4
  %305 = ptrtoint ptr %auto_corr_cck287.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %auto_corr_cck287.i, align 4
  %sub288.i = add i32 %306, -3
  %auto_corr_min_cck.i = getelementptr inbounds %struct.iwl_sensitivity_ranges, ptr %121, i32 0, i32 13
  %307 = ptrtoint ptr %auto_corr_min_cck.i to i32
  call void @__asan_load2_noabort(i32 %307)
  %308 = load i16, ptr %auto_corr_min_cck.i, align 2
  %conv289.i = zext i16 %308 to i32
  %309 = tail call i32 @llvm.umax.i32(i32 %sub288.i, i32 %conv289.i) #6
  %310 = ptrtoint ptr %auto_corr_cck287.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %309, ptr %auto_corr_cck287.i, align 4
  %auto_corr_cck_mrc298.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53, i32 5
  %311 = ptrtoint ptr %auto_corr_cck_mrc298.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %auto_corr_cck_mrc298.i, align 4
  %sub299.i = add i32 %312, -3
  %auto_corr_min_cck_mrc.i = getelementptr inbounds %struct.iwl_sensitivity_ranges, ptr %121, i32 0, i32 14
  %313 = ptrtoint ptr %auto_corr_min_cck_mrc.i to i32
  call void @__asan_load2_noabort(i32 %313)
  %314 = load i16, ptr %auto_corr_min_cck_mrc.i, align 2
  %conv300.i = zext i16 %314 to i32
  %315 = tail call i32 @llvm.umax.i32(i32 %sub299.i, i32 %conv300.i) #6
  %316 = ptrtoint ptr %auto_corr_cck_mrc298.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 %315, ptr %auto_corr_cck_mrc298.i, align 4
  br label %iwl_sens_energy_cck.exit

iwl_sens_energy_cck.exit:                         ; preds = %if.then286.i, %lor.lhs.false282.i.iwl_sens_energy_cck.exit_crit_edge, %if.else275.i.iwl_sens_energy_cck.exit_crit_edge, %if.end264.i
  %fw = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 3
  %317 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %fw, align 4
  %enhance_sensitivity_table = getelementptr inbounds %struct.iwl_fw, ptr %318, i32 0, i32 6
  %319 = ptrtoint ptr %enhance_sensitivity_table to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %enhance_sensitivity_table, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %320)
  %tobool92.not = icmp eq i8 %320, 0
  br i1 %tobool92.not, label %if.else95, label %if.then93

if.then93:                                        ; preds = %iwl_sens_energy_cck.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call94 = tail call fastcc i32 @iwl_enhance_sensitivity_write(ptr noundef %priv)
  br label %cleanup

if.else95:                                        ; preds = %iwl_sens_energy_cck.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call96 = tail call fastcc i32 @iwl_sensitivity_write(ptr noundef %priv)
  br label %cleanup

cleanup:                                          ; preds = %if.else95, %if.then93, %do.end43, %do.end14, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_chain_noise_calibration(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %average_sig = alloca [3 x i32], align 4
  %average_noise = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %average_sig) #6
  %0 = call ptr @memcpy(ptr %average_sig, ptr @__const.iwl_chain_noise_calibration.average_sig, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %average_noise) #6
  %calib_disabled = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 127
  %1 = ptrtoint ptr %calib_disabled to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %calib_disabled, align 8
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %chain_noise_data = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 54
  %state = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 54, i32 11
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %state, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %if.end.cleanup_crit_edge [
    i8 1, label %if.end12
    i8 0, label %do.end
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %7, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_chain_noise_calibration, ptr noundef nonnull @.str.8) #6
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #6
  %interference_data_flag = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 2, i32 12
  %8 = ptrtoint ptr %interference_data_flag to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %interference_data_flag, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %9)
  %cmp14.not = icmp eq i32 %9, 16777216
  br i1 %cmp14.not, label %if.end26, label %do.end20

do.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %dev21 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %10 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev21, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %11, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_chain_noise_calibration, ptr noundef nonnull @.str.9) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #6
  br label %cleanup

if.end26:                                         ; preds = %if.end12
  %statistics = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71
  %flags = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 15, i32 12
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %flags, align 2
  %and27 = lshr i32 %13, 24
  %14 = trunc i32 %and27 to i8
  %15 = and i8 %14, 1
  %channel = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 15, i32 14
  %16 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %channel, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %19 = ptrtoint ptr %statistics to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %statistics, align 8
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %shr = lshr i32 %21, 16
  %conv43 = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv43)
  %cmp45.not = icmp eq i32 %shr, %conv43
  br i1 %cmp45.not, label %lor.lhs.false, label %if.end26.do.end55_crit_edge

if.end26.do.end55_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = zext i8 %15 to i32
  br label %do.end55

lor.lhs.false:                                    ; preds = %if.end26
  %and33 = lshr i32 %20, 25
  %22 = and i32 %and33, 1
  %conv47 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv47)
  %cmp49.not = icmp eq i32 %22, %conv47
  br i1 %cmp49.not, label %if.end63, label %lor.lhs.false.do.end55_crit_edge

lor.lhs.false.do.end55_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end55

do.end55:                                         ; preds = %lor.lhs.false.do.end55_crit_edge, %if.end26.do.end55_crit_edge
  %conv58.pre-phi = phi i32 [ %.pre, %if.end26.do.end55_crit_edge ], [ %conv47, %lor.lhs.false.do.end55_crit_edge ]
  %dev56 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %23 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev56, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %24, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_chain_noise_calibration, ptr noundef nonnull @.str.10, i32 noundef %conv43, i32 noundef %conv58.pre-phi) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #6
  br label %cleanup

if.end63:                                         ; preds = %lor.lhs.false
  %beacon_silence_rssi_a = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 2, i32 9
  %25 = ptrtoint ptr %beacon_silence_rssi_a to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %beacon_silence_rssi_a, align 1
  %27 = lshr i32 %26, 24
  %beacon_silence_rssi_b = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 2, i32 10
  %28 = ptrtoint ptr %beacon_silence_rssi_b to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %beacon_silence_rssi_b, align 1
  %30 = lshr i32 %29, 24
  %beacon_silence_rssi_c = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 2, i32 11
  %31 = ptrtoint ptr %beacon_silence_rssi_c to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %beacon_silence_rssi_c, align 1
  %33 = lshr i32 %32, 24
  %beacon_rssi_a = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 2, i32 15
  %34 = ptrtoint ptr %beacon_rssi_a to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %beacon_rssi_a, align 1
  %36 = lshr i32 %35, 24
  %beacon_rssi_b = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 2, i32 16
  %37 = ptrtoint ptr %beacon_rssi_b to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %beacon_rssi_b, align 1
  %39 = lshr i32 %38, 24
  %beacon_rssi_c = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 2, i32 17
  %40 = ptrtoint ptr %beacon_rssi_c to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %beacon_rssi_c, align 1
  %42 = lshr i32 %41, 24
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #6
  %beacon_count = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 54, i32 7
  %43 = ptrtoint ptr %beacon_count to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %beacon_count, align 4
  %inc = add i16 %44, 1
  store i16 %inc, ptr %beacon_count, align 4
  %chain_noise_a72 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 54, i32 1
  %45 = ptrtoint ptr %chain_noise_a72 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %chain_noise_a72, align 4
  %add = add i32 %46, %27
  store i32 %add, ptr %chain_noise_a72, align 4
  %chain_noise_b74 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 54, i32 2
  %47 = ptrtoint ptr %chain_noise_b74 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %chain_noise_b74, align 4
  %add75 = add i32 %48, %30
  store i32 %add75, ptr %chain_noise_b74, align 4
  %chain_noise_c77 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 54, i32 3
  %49 = ptrtoint ptr %chain_noise_c77 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %chain_noise_c77, align 4
  %add78 = add i32 %50, %33
  store i32 %add78, ptr %chain_noise_c77, align 4
  %chain_signal_a = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 54, i32 4
  %51 = ptrtoint ptr %chain_signal_a to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %chain_signal_a, align 4
  %add80 = add i32 %52, %36
  store i32 %add80, ptr %chain_signal_a, align 4
  %chain_signal_b = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 54, i32 5
  %53 = ptrtoint ptr %chain_signal_b to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %chain_signal_b, align 4
  %add82 = add i32 %54, %39
  store i32 %add82, ptr %chain_signal_b, align 4
  %chain_signal_c = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 54, i32 6
  %55 = ptrtoint ptr %chain_signal_c to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %chain_signal_c, align 4
  %add84 = add i32 %56, %42
  store i32 %add84, ptr %chain_signal_c, align 4
  %dev90 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %57 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev90, align 4
  %conv94 = zext i16 %inc to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %58, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_chain_noise_calibration, ptr noundef nonnull @.str.11, i32 noundef %shr, i32 noundef %22, i32 noundef %conv94) #6
  %59 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev90, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %60, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_chain_noise_calibration, ptr noundef nonnull @.str.12, i32 noundef %36, i32 noundef %39, i32 noundef %42) #6
  %61 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev90, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %62, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_chain_noise_calibration, ptr noundef nonnull @.str.13, i32 noundef %27, i32 noundef %30, i32 noundef %33) #6
  %63 = ptrtoint ptr %beacon_count to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %beacon_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %64)
  %cmp113.not = icmp eq i16 %64, 16
  br i1 %cmp113.not, label %if.end116, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end116:                                        ; preds = %if.end63
  %lib = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 4
  %65 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %lib, align 8
  %bt_params = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %bt_params to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bt_params, align 4
  %tobool117.not = icmp eq ptr %68, null
  br i1 %tobool117.not, label %if.end116.if.else_crit_edge, label %land.lhs.true

if.end116.if.else_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end116
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %68, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool120.not = icmp eq i8 %70, 0
  br i1 %tobool120.not, label %land.lhs.true.if.else_crit_edge, label %if.then122

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then122:                                       ; preds = %land.lhs.true
  %nvm_data = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %71 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %nvm_data, align 8
  %valid_rx_ant = getelementptr inbounds %struct.iwl_nvm_data, ptr %72, i32 0, i32 21
  %73 = ptrtoint ptr %valid_rx_ant to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %valid_rx_ant, align 2
  %conv123 = zext i8 %74 to i32
  %75 = ptrtoint ptr %chain_noise_data to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv123, ptr %chain_noise_data, align 4
  %and129 = and i32 %conv123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.then131, label %if.then122.for.inc_crit_edge

if.then122.for.inc_crit_edge:                     ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then131:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx132 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 54, i32 8, i32 0
  %76 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %arrayidx132, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then131, %if.then122.for.inc_crit_edge
  %and129.1 = and i32 %conv123, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129.1)
  %tobool130.not.1 = icmp eq i32 %and129.1, 0
  br i1 %tobool130.not.1, label %if.then131.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then131.1:                                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx132.1 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 54, i32 8, i32 1
  %77 = ptrtoint ptr %arrayidx132.1 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %arrayidx132.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then131.1, %for.inc.for.inc.1_crit_edge
  %and129.2 = and i32 %conv123, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129.2)
  %tobool130.not.2 = icmp eq i32 %and129.2, 0
  br i1 %tobool130.not.2, label %if.then131.2, label %for.inc.1.if.end135_crit_edge

for.inc.1.if.end135_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

if.then131.2:                                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx132.2 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 54, i32 8, i32 2
  %78 = ptrtoint ptr %arrayidx132.2 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %arrayidx132.2, align 1
  br label %if.end135

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end116.if.else_crit_edge
  call fastcc void @iwl_find_disconn_antenna(ptr noundef %priv, ptr noundef nonnull %average_sig, ptr noundef %chain_noise_data)
  br label %if.end135

if.end135:                                        ; preds = %if.else, %if.then131.2, %for.inc.1.if.end135_crit_edge
  %79 = ptrtoint ptr %chain_noise_a72 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %chain_noise_a72, align 4
  %div283 = lshr i32 %80, 4
  %81 = ptrtoint ptr %average_noise to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %div283, ptr %average_noise, align 4
  %82 = ptrtoint ptr %chain_noise_b74 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %chain_noise_b74, align 4
  %div139284 = lshr i32 %83, 4
  %arrayidx140 = getelementptr inbounds [3 x i32], ptr %average_noise, i32 0, i32 1
  %84 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %div139284, ptr %arrayidx140, align 4
  %85 = ptrtoint ptr %chain_noise_c77 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %chain_noise_c77, align 4
  %div142285 = lshr i32 %86, 4
  %arrayidx143 = getelementptr inbounds [3 x i32], ptr %average_noise, i32 0, i32 2
  %87 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %div142285, ptr %arrayidx143, align 4
  %arrayidx151 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 54, i32 8, i32 0
  %88 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx151, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool152.not = icmp eq i8 %89, 0
  br i1 %tobool152.not, label %land.lhs.true153, label %if.end135.for.inc162_crit_edge

if.end135.for.inc162_crit_edge:                   ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc162

land.lhs.true153:                                 ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %average_noise to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %average_noise, align 4
  br label %for.inc162

for.inc162:                                       ; preds = %land.lhs.true153, %if.end135.for.inc162_crit_edge
  %min_average_noise.1 = phi i32 [ -1, %if.end135.for.inc162_crit_edge ], [ %91, %land.lhs.true153 ]
  %min_average_noise_antenna_i.1 = phi i16 [ -1, %if.end135.for.inc162_crit_edge ], [ 0, %land.lhs.true153 ]
  %arrayidx151.1 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 54, i32 8, i32 1
  %92 = ptrtoint ptr %arrayidx151.1 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx151.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool152.not.1 = icmp eq i8 %93, 0
  br i1 %tobool152.not.1, label %land.lhs.true153.1, label %for.inc162.for.inc162.1_crit_edge

for.inc162.for.inc162.1_crit_edge:                ; preds = %for.inc162
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc162.1

land.lhs.true153.1:                               ; preds = %for.inc162
  call void @__sanitizer_cov_trace_pc() #8
  %94 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx140, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %min_average_noise.1)
  %cmp156.not.1 = icmp ugt i32 %95, %min_average_noise.1
  %96 = tail call i32 @llvm.umin.i32(i32 %95, i32 %min_average_noise.1)
  %spec.select286.1 = select i1 %cmp156.not.1, i16 %min_average_noise_antenna_i.1, i16 1
  br label %for.inc162.1

for.inc162.1:                                     ; preds = %land.lhs.true153.1, %for.inc162.for.inc162.1_crit_edge
  %min_average_noise.1.1 = phi i32 [ %min_average_noise.1, %for.inc162.for.inc162.1_crit_edge ], [ %96, %land.lhs.true153.1 ]
  %min_average_noise_antenna_i.1.1 = phi i16 [ %min_average_noise_antenna_i.1, %for.inc162.for.inc162.1_crit_edge ], [ %spec.select286.1, %land.lhs.true153.1 ]
  %arrayidx151.2 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 54, i32 8, i32 2
  %97 = ptrtoint ptr %arrayidx151.2 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx151.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool152.not.2 = icmp eq i8 %98, 0
  br i1 %tobool152.not.2, label %land.lhs.true153.2, label %for.inc162.1.for.inc162.2_crit_edge

for.inc162.1.for.inc162.2_crit_edge:              ; preds = %for.inc162.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc162.2

land.lhs.true153.2:                               ; preds = %for.inc162.1
  call void @__sanitizer_cov_trace_pc() #8
  %99 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx143, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %min_average_noise.1.1)
  %cmp156.not.2 = icmp ugt i32 %100, %min_average_noise.1.1
  %101 = tail call i32 @llvm.umin.i32(i32 %100, i32 %min_average_noise.1.1)
  %spec.select286.2 = select i1 %cmp156.not.2, i16 %min_average_noise_antenna_i.1.1, i16 2
  br label %for.inc162.2

for.inc162.2:                                     ; preds = %land.lhs.true153.2, %for.inc162.1.for.inc162.2_crit_edge
  %min_average_noise.1.2 = phi i32 [ %min_average_noise.1.1, %for.inc162.1.for.inc162.2_crit_edge ], [ %101, %land.lhs.true153.2 ]
  %min_average_noise_antenna_i.1.2 = phi i16 [ %min_average_noise_antenna_i.1.1, %for.inc162.1.for.inc162.2_crit_edge ], [ %spec.select286.2, %land.lhs.true153.2 ]
  %102 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev90, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %103, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_chain_noise_calibration, ptr noundef nonnull @.str.14, i32 noundef %div283, i32 noundef %div139284, i32 noundef %div142285) #6
  %104 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev90, align 4
  %conv180 = zext i16 %min_average_noise_antenna_i.1.2 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %105, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_chain_noise_calibration, ptr noundef nonnull @.str.15, i32 noundef %min_average_noise.1.2, i32 noundef %conv180) #6
  %nvm_data184 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %106 = ptrtoint ptr %nvm_data184 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %nvm_data184, align 8
  %valid_rx_ant185 = getelementptr inbounds %struct.iwl_nvm_data, ptr %107, i32 0, i32 21
  %108 = ptrtoint ptr %valid_rx_ant185 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %valid_rx_ant185, align 2
  %conv.i = zext i8 %109 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and2.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %..i = select i1 %tobool3.not.i, i8 2, i8 1
  %retval.0.i = select i1 %tobool.not.i, i8 %..i, i8 0
  call fastcc void @iwlagn_gain_computation(ptr noundef %priv, ptr noundef nonnull %average_noise, i8 noundef zeroext %retval.0.i)
  tail call void @iwl_update_chain_flags(ptr noundef %priv) #6
  %110 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 3, ptr %state, align 1
  %call187 = tail call i32 @iwl_power_update_mode(ptr noundef %priv, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc162.2, %if.end63.cleanup_crit_edge, %do.end55, %do.end20, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %average_noise) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %average_sig) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_find_disconn_antenna(ptr nocapture noundef readonly %priv, ptr nocapture noundef %average_sig, ptr nocapture noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chain_signal_a = getelementptr inbounds %struct.iwl_chain_noise_data, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %chain_signal_a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chain_signal_a, align 4
  %div210 = lshr i32 %1, 4
  %2 = ptrtoint ptr %average_sig to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div210, ptr %average_sig, align 4
  %chain_signal_b = getelementptr inbounds %struct.iwl_chain_noise_data, ptr %data, i32 0, i32 5
  %3 = ptrtoint ptr %chain_signal_b to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chain_signal_b, align 4
  %div1211 = lshr i32 %4, 4
  %arrayidx2 = getelementptr i32, ptr %average_sig, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div1211, ptr %arrayidx2, align 4
  %chain_signal_c = getelementptr inbounds %struct.iwl_chain_noise_data, ptr %data, i32 0, i32 6
  %6 = ptrtoint ptr %chain_signal_c to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chain_signal_c, align 4
  %div3212 = lshr i32 %7, 4
  %arrayidx4 = getelementptr i32, ptr %average_sig, i32 2
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div3212, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div210, i32 %div1211)
  %cmp.not = icmp ult i32 %div210, %div1211
  %9 = tail call i32 @llvm.umax.i32(i32 %div210, i32 %div1211)
  %.213 = zext i1 %cmp.not to i32
  %.214 = select i1 %cmp.not, i32 2, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div3212, i32 %9)
  %cmp12.not = icmp ult i32 %div3212, %9
  %10 = tail call i32 @llvm.umax.i32(i32 %div3212, i32 %9)
  %max_average_sig_antenna_i.1 = select i1 %cmp12.not, i32 %.213, i32 2
  %active_chains.1 = select i1 %cmp12.not, i32 %.214, i32 4
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %12, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_find_disconn_antenna, ptr noundef nonnull @.str.33, i32 noundef %div210, i32 noundef %div1211, i32 noundef %div3212) #6
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %14, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_find_disconn_antenna, ptr noundef nonnull @.str.34, i32 noundef %10, i32 noundef %max_average_sig_antenna_i.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_average_sig_antenna_i.1)
  %cmp38.not = icmp eq i32 %max_average_sig_antenna_i.1, 0
  br i1 %cmp38.not, label %entry.if.then40.1_crit_edge, label %if.then40

entry.if.then40.1_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40.1

if.then40:                                        ; preds = %entry
  %15 = ptrtoint ptr %average_sig to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %average_sig, align 4
  %sub = sub i32 %10, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub)
  %cmp42 = icmp sgt i32 %sub, 15
  br i1 %cmp42, label %if.then44, label %if.else47

if.then44:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx46 = getelementptr %struct.iwl_chain_noise_data, ptr %data, i32 0, i32 8, i32 0
  %17 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %arrayidx46, align 1
  br label %for.inc

if.else47:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %active_chains.1, 1
  br label %for.inc

for.inc:                                          ; preds = %if.else47, %if.then44
  %active_chains.3 = phi i32 [ %active_chains.1, %if.then44 ], [ %or, %if.else47 ]
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %arrayidx59 = getelementptr %struct.iwl_chain_noise_data, ptr %data, i32 0, i32 8, i32 0
  %20 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %21 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %19, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_find_disconn_antenna, ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef %sub, i32 noundef %conv60) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %max_average_sig_antenna_i.1)
  %cmp38.not.1 = icmp eq i32 %max_average_sig_antenna_i.1, 1
  br i1 %cmp38.not.1, label %for.inc.if.then40.2_crit_edge, label %for.inc.if.then40.1_crit_edge

for.inc.if.then40.1_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40.1

for.inc.if.then40.2_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40.2

if.then40.1:                                      ; preds = %for.inc.if.then40.1_crit_edge, %entry.if.then40.1_crit_edge
  %active_chains.4229 = phi i32 [ %active_chains.3, %for.inc.if.then40.1_crit_edge ], [ %active_chains.1, %entry.if.then40.1_crit_edge ]
  %22 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx2, align 4
  %sub.1 = sub i32 %10, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub.1)
  %cmp42.1 = icmp sgt i32 %sub.1, 15
  br i1 %cmp42.1, label %if.then44.1, label %if.else47.1

if.else47.1:                                      ; preds = %if.then40.1
  call void @__sanitizer_cov_trace_pc() #8
  %or.1 = or i32 %active_chains.4229, 2
  br label %for.inc.1

if.then44.1:                                      ; preds = %if.then40.1
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx46.1 = getelementptr %struct.iwl_chain_noise_data, ptr %data, i32 0, i32 8, i32 1
  %24 = ptrtoint ptr %arrayidx46.1 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %arrayidx46.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then44.1, %if.else47.1
  %active_chains.3.1 = phi i32 [ %active_chains.4229, %if.then44.1 ], [ %or.1, %if.else47.1 ]
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %arrayidx59.1 = getelementptr %struct.iwl_chain_noise_data, ptr %data, i32 0, i32 8, i32 1
  %27 = ptrtoint ptr %arrayidx59.1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx59.1, align 1
  %conv60.1 = zext i8 %28 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %26, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_find_disconn_antenna, ptr noundef nonnull @.str.35, i32 noundef 1, i32 noundef %sub.1, i32 noundef %conv60.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %max_average_sig_antenna_i.1)
  %cmp38.not.2 = icmp eq i32 %max_average_sig_antenna_i.1, 2
  br i1 %cmp38.not.2, label %for.inc.1.for.inc.2_crit_edge, label %for.inc.1.if.then40.2_crit_edge

for.inc.1.if.then40.2_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then40.2:                                      ; preds = %for.inc.1.if.then40.2_crit_edge, %for.inc.if.then40.2_crit_edge
  %active_chains.4.1232 = phi i32 [ %active_chains.3.1, %for.inc.1.if.then40.2_crit_edge ], [ %active_chains.3, %for.inc.if.then40.2_crit_edge ]
  %29 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx4, align 4
  %sub.2 = sub i32 %10, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub.2)
  %cmp42.2 = icmp sgt i32 %sub.2, 15
  br i1 %cmp42.2, label %if.then44.2, label %if.else47.2

if.else47.2:                                      ; preds = %if.then40.2
  call void @__sanitizer_cov_trace_pc() #8
  %or.2 = or i32 %active_chains.4.1232, 4
  br label %do.end54.2

if.then44.2:                                      ; preds = %if.then40.2
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx46.2 = getelementptr %struct.iwl_chain_noise_data, ptr %data, i32 0, i32 8, i32 2
  %31 = ptrtoint ptr %arrayidx46.2 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %arrayidx46.2, align 1
  br label %do.end54.2

do.end54.2:                                       ; preds = %if.then44.2, %if.else47.2
  %active_chains.3.2 = phi i32 [ %active_chains.4.1232, %if.then44.2 ], [ %or.2, %if.else47.2 ]
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %arrayidx59.2 = getelementptr %struct.iwl_chain_noise_data, ptr %data, i32 0, i32 8, i32 2
  %34 = ptrtoint ptr %arrayidx59.2 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx59.2, align 1
  %conv60.2 = zext i8 %35 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %33, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_find_disconn_antenna, ptr noundef nonnull @.str.35, i32 noundef 2, i32 noundef %sub.2, i32 noundef %conv60.2) #6
  br label %for.inc.2

for.inc.2:                                        ; preds = %do.end54.2, %for.inc.1.for.inc.2_crit_edge
  %active_chains.4.2 = phi i32 [ %active_chains.3.2, %do.end54.2 ], [ %active_chains.3.1, %for.inc.1.for.inc.2_crit_edge ]
  %nvm_data = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %36 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %nvm_data, align 8
  %valid_rx_ant = getelementptr inbounds %struct.iwl_nvm_data, ptr %37, i32 0, i32 21
  %38 = ptrtoint ptr %valid_rx_ant to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %valid_rx_ant, align 2
  %conv64 = zext i8 %39 to i32
  %and = and i32 %active_chains.4.2, %conv64
  %valid_tx_ant = getelementptr inbounds %struct.iwl_nvm_data, ptr %37, i32 0, i32 20
  %40 = ptrtoint ptr %valid_tx_ant to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %valid_tx_ant, align 1
  %conv74 = zext i8 %41 to i32
  %hw_params = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 17
  %and76 = and i32 %conv74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool.not = icmp eq i32 %and76, 0
  br i1 %tobool.not, label %for.inc.2.for.inc115_crit_edge, label %if.end78

for.inc.2.for.inc115_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc115

if.end78:                                         ; preds = %for.inc.2
  %arrayidx82 = getelementptr %struct.iwl_chain_noise_data, ptr %data, i32 0, i32 8, i32 0
  %42 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx82, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp84 = icmp eq i8 %43, 0
  br i1 %cmp84, label %if.end78.for.end117_crit_edge, label %if.end87

if.end78.for.end117_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end117

if.end87:                                         ; preds = %if.end78
  %44 = ptrtoint ptr %hw_params to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %hw_params, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %45)
  %cmp90 = icmp eq i8 %45, 1
  br i1 %cmp90, label %if.end87.if.then97_crit_edge, label %if.end87.for.inc115_crit_edge

if.end87.for.inc115_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc115

if.end87.if.then97_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = and i32 %conv74, 2
  br label %if.then97

if.then97:                                        ; preds = %if.end87.2.if.then97_crit_edge, %if.end87.if.then97_crit_edge
  %and2.i.pre-phi = phi i32 [ %.pre, %if.end87.if.then97_crit_edge ], [ %and76.1, %if.end87.2.if.then97_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.pre-phi)
  %tobool3.not.i = icmp eq i32 %and2.i.pre-phi, 0
  %spec.select = select i1 %tobool3.not.i, i32 2, i32 1
  br label %if.then97.thread

if.then97.thread:                                 ; preds = %if.end87.1.if.then97.thread_crit_edge, %if.then97
  %46 = phi i32 [ 1, %if.end87.1.if.then97.thread_crit_edge ], [ %spec.select, %if.then97 ]
  %idxprom101 = select i1 %tobool.not, i32 %46, i32 0
  %arrayidx102 = getelementptr %struct.iwl_chain_noise_data, ptr %data, i32 0, i32 8, i32 %idxprom101
  %47 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %arrayidx102, align 1
  %shl104 = shl nuw nsw i32 1, %idxprom101
  %or105 = or i32 %shl104, %and
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %49, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_find_disconn_antenna, ptr noundef nonnull @.str.36, i32 noundef %idxprom101) #6
  br label %for.end117

for.inc115:                                       ; preds = %if.end87.for.inc115_crit_edge, %for.inc.2.for.inc115_crit_edge
  %num_tx_chains.1 = phi i8 [ 0, %for.inc.2.for.inc115_crit_edge ], [ 1, %if.end87.for.inc115_crit_edge ]
  %and76.1 = and i32 %conv74, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.1)
  %tobool.not.1 = icmp eq i32 %and76.1, 0
  br i1 %tobool.not.1, label %for.inc115.for.inc115.1_crit_edge, label %if.end78.1

for.inc115.for.inc115.1_crit_edge:                ; preds = %for.inc115
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc115.1

if.end78.1:                                       ; preds = %for.inc115
  %arrayidx82.1 = getelementptr %struct.iwl_chain_noise_data, ptr %data, i32 0, i32 8, i32 1
  %50 = ptrtoint ptr %arrayidx82.1 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx82.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp84.1 = icmp eq i8 %51, 0
  br i1 %cmp84.1, label %if.end78.1.for.end117_crit_edge, label %if.end87.1

if.end78.1.for.end117_crit_edge:                  ; preds = %if.end78.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end117

if.end87.1:                                       ; preds = %if.end78.1
  %inc79.1 = add nuw nsw i8 %num_tx_chains.1, 1
  %52 = ptrtoint ptr %hw_params to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %hw_params, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %inc79.1, i8 %53)
  %cmp90.1 = icmp eq i8 %inc79.1, %53
  br i1 %cmp90.1, label %if.end87.1.if.then97.thread_crit_edge, label %if.end87.1.for.inc115.1_crit_edge

if.end87.1.for.inc115.1_crit_edge:                ; preds = %if.end87.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc115.1

if.end87.1.if.then97.thread_crit_edge:            ; preds = %if.end87.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then97.thread

for.inc115.1:                                     ; preds = %if.end87.1.for.inc115.1_crit_edge, %for.inc115.for.inc115.1_crit_edge
  %num_tx_chains.1.1 = phi i8 [ %num_tx_chains.1, %for.inc115.for.inc115.1_crit_edge ], [ %inc79.1, %if.end87.1.for.inc115.1_crit_edge ]
  %and76.2 = and i32 %conv74, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.2)
  %tobool.not.2 = icmp eq i32 %and76.2, 0
  br i1 %tobool.not.2, label %for.inc115.1.for.end117_crit_edge, label %if.end78.2

for.inc115.1.for.end117_crit_edge:                ; preds = %for.inc115.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end117

if.end78.2:                                       ; preds = %for.inc115.1
  %arrayidx82.2 = getelementptr %struct.iwl_chain_noise_data, ptr %data, i32 0, i32 8, i32 2
  %54 = ptrtoint ptr %arrayidx82.2 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx82.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp84.2 = icmp eq i8 %55, 0
  br i1 %cmp84.2, label %if.end78.2.for.end117_crit_edge, label %if.end87.2

if.end78.2.for.end117_crit_edge:                  ; preds = %if.end78.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end117

if.end87.2:                                       ; preds = %if.end78.2
  %inc79.2 = add nuw nsw i8 %num_tx_chains.1.1, 1
  %56 = ptrtoint ptr %hw_params to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %hw_params, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %inc79.2, i8 %57)
  %cmp90.2 = icmp eq i8 %inc79.2, %57
  br i1 %cmp90.2, label %if.end87.2.if.then97_crit_edge, label %if.end87.2.for.end117_crit_edge

if.end87.2.for.end117_crit_edge:                  ; preds = %if.end87.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end117

if.end87.2.if.then97_crit_edge:                   ; preds = %if.end87.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then97

for.end117:                                       ; preds = %if.end87.2.for.end117_crit_edge, %if.end78.2.for.end117_crit_edge, %for.inc115.1.for.end117_crit_edge, %if.end78.1.for.end117_crit_edge, %if.then97.thread, %if.end78.for.end117_crit_edge
  %active_chains.7 = phi i32 [ %or105, %if.then97.thread ], [ %and, %for.inc115.1.for.end117_crit_edge ], [ %and, %if.end87.2.for.end117_crit_edge ], [ %and, %if.end78.2.for.end117_crit_edge ], [ %and, %if.end78.1.for.end117_crit_edge ], [ %and, %if.end78.for.end117_crit_edge ]
  %58 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %nvm_data, align 8
  %valid_rx_ant119 = getelementptr inbounds %struct.iwl_nvm_data, ptr %59, i32 0, i32 21
  %60 = ptrtoint ptr %valid_rx_ant119 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %valid_rx_ant119, align 2
  %conv120 = zext i8 %61 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %active_chains.7, i32 %conv120)
  %cmp121.not = icmp eq i32 %active_chains.7, %conv120
  br i1 %cmp121.not, label %for.end117.if.end138_crit_edge, label %land.lhs.true123

for.end117.if.end138_crit_edge:                   ; preds = %for.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end138

land.lhs.true123:                                 ; preds = %for.end117
  %chain_noise_data = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 54
  %62 = ptrtoint ptr %chain_noise_data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %chain_noise_data, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %active_chains.7, i32 %63)
  %cmp125.not = icmp eq i32 %active_chains.7, %63
  br i1 %cmp125.not, label %land.lhs.true123.if.end138_crit_edge, label %do.end131

land.lhs.true123.if.end138_crit_edge:             ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end138

do.end131:                                        ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %65, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_find_disconn_antenna, ptr noundef nonnull @.str.37, i32 noundef %active_chains.7, i32 noundef %conv120) #6
  br label %if.end138

if.end138:                                        ; preds = %do.end131, %land.lhs.true123.if.end138_crit_edge, %for.end117.if.end138_crit_edge
  %66 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %active_chains.7, ptr %data, align 4
  %67 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %68, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_find_disconn_antenna, ptr noundef nonnull @.str.38, i32 noundef %active_chains.7) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwlagn_gain_computation(ptr noundef %priv, ptr nocapture noundef readonly %average_noise, i8 noundef zeroext %default_chain) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_calib_chain_noise_gain_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %default_chain)
  %cmp71 = icmp ult i8 %default_chain, 2
  br i1 %cmp71, label %for.body.lr.ph, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body.lr.ph:                                   ; preds = %entry
  %conv = zext i8 %default_chain to i32
  %i.070 = add nuw nsw i32 %conv, 1
  %lib = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 4
  %arrayidx3 = getelementptr i32, ptr %average_noise, i32 %conv
  %arrayidx = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 54, i32 8, i32 %i.070
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx2 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 54, i32 9, i32 %i.070
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx2, align 1
  br label %for.inc

if.end:                                           ; preds = %for.body.lr.ph
  %3 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lib, align 8
  %chain_noise_scale = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %chain_noise_scale to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chain_noise_scale, align 4
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr i32, ptr %average_noise, i32 %i.070
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4, align 4
  %sub = sub i32 %8, %10
  %mul = mul i32 %sub, %6
  %div = sdiv i32 %mul, 1500
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1499, i32 %mul)
  %cmp5 = icmp slt i32 %mul, -1499
  %sub7 = sub nsw i32 0, %div
  %cond = select i1 %cmp5, i32 %sub7, i32 %div
  %11 = tail call i32 @llvm.smin.i32(i32 %cond, i32 3)
  %conv15 = trunc i32 %11 to i8
  %arrayidx17 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 54, i32 9, i32 %i.070
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv15, ptr %arrayidx17, align 1
  br i1 %cmp5, label %if.then20, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv24 = or i8 %conv15, 4
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv24, ptr %arrayidx17, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %if.end.for.inc_crit_edge, %if.then
  %i.0 = add nuw nsw i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0)
  %exitcond.not = icmp eq i32 %i.0, 3
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.body.1

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body.1:                                       ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 54, i32 8, i32 %i.0
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.1 = icmp eq i8 %15, 0
  br i1 %tobool.not.1, label %if.end.1, label %if.then.1

if.then.1:                                        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx2.1 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 54, i32 9, i32 %i.0
  %16 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx2.1, align 1
  br label %do.end

if.end.1:                                         ; preds = %for.body.1
  %17 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lib, align 8
  %chain_noise_scale.1 = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %chain_noise_scale.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chain_noise_scale.1, align 4
  %21 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx3, align 4
  %arrayidx4.1 = getelementptr i32, ptr %average_noise, i32 %i.0
  %23 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx4.1, align 4
  %sub.1 = sub i32 %22, %24
  %mul.1 = mul i32 %sub.1, %20
  %div.1 = sdiv i32 %mul.1, 1500
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1499, i32 %mul.1)
  %cmp5.1 = icmp slt i32 %mul.1, -1499
  %sub7.1 = sub nsw i32 0, %div.1
  %cond.1 = select i1 %cmp5.1, i32 %sub7.1, i32 %div.1
  %25 = tail call i32 @llvm.smin.i32(i32 %cond.1, i32 3)
  %conv15.1 = trunc i32 %25 to i8
  %arrayidx17.1 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 54, i32 9, i32 %i.0
  %26 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv15.1, ptr %arrayidx17.1, align 1
  br i1 %cmp5.1, label %if.then20.1, label %if.end.1.do.end_crit_edge

if.end.1.do.end_crit_edge:                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then20.1:                                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  %conv24.1 = or i8 %conv15.1, 4
  %27 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv24.1, ptr %arrayidx17.1, align 1
  br label %do.end

do.end:                                           ; preds = %if.then20.1, %if.end.1.do.end_crit_edge, %if.then.1, %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %arrayidx28 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 54, i32 9, i32 1
  %30 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %31 to i32
  %arrayidx31 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 54, i32 9, i32 2
  %32 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %33 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %29, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_gain_computation, ptr noundef nonnull @.str.39, i32 noundef %conv29, i32 noundef %conv32) #6
  %radio_write = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 54, i32 10
  %34 = ptrtoint ptr %radio_write to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %radio_write, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool35.not = icmp eq i8 %35, 0
  br i1 %tobool35.not, label %if.then36, label %do.end.if.end42_crit_edge

do.end.if.end42_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then36:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #6
  %36 = getelementptr inbounds %struct.iwl_calib_chain_noise_gain_cmd, ptr %cmd, i32 0, i32 1
  %37 = getelementptr inbounds %struct.iwl_calib_chain_noise_gain_cmd, ptr %cmd, i32 0, i32 2
  %38 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 1103806595072, ptr %cmd, align 8
  %phy_calib_chain_noise_gain_cmd = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 80
  %39 = ptrtoint ptr %phy_calib_chain_noise_gain_cmd to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %phy_calib_chain_noise_gain_cmd, align 2
  store i8 %40, ptr %cmd, align 8
  %41 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx28, align 1
  %43 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %36, align 4
  %44 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx31, align 1
  %46 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %37, align 1
  %call = call i32 @iwl_dvm_send_cmd_pdu(ptr noundef %priv, i8 noundef zeroext -80, i32 noundef 1, i16 noundef zeroext 8, ptr noundef nonnull %cmd) #6
  %47 = ptrtoint ptr %radio_write to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %radio_write, align 4
  %state = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 54, i32 11
  %48 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 2, ptr %state, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #6
  br label %if.end42

if.end42:                                         ; preds = %if.then36, %do.end.if.end42_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_update_chain_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_power_update_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_reset_run_time_calib(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sensitivity_data = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 53
  %uglygep = getelementptr i8, ptr %priv, i32 3537
  %0 = call ptr @memset(ptr %sensitivity_data, i32 0, i32 184)
  %1 = call ptr @memset(ptr %uglygep, i32 4, i32 3)
  %call = tail call i32 @iwl_send_statistics_request(ptr noundef %priv, i8 noundef zeroext 1, i1 noundef zeroext true) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_send_statistics_request(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_dvm_send_cmd_pdu(ptr noundef, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !40, !41, !43, !45, !47, !48, !50, !52, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !80, !82, !84, !86, !88, !90}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 50, i32 4}
!2 = !{ptr @__func__.iwl_init_sensitivity, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 546, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 590, i32 2}
!7 = !{ptr @__func__.iwl_sensitivity_calibration, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 613, i32 3}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 622, i32 3}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 649, i32 2}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 652, i32 3}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 691, i32 2}
!18 = !{ptr @__func__.iwl_chain_noise_calibration, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 924, i32 4}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 933, i32 3}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 947, i32 3}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 980, i32 2}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 982, i32 2}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 984, i32 2}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 1020, i32 2}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 1024, i32 2}
!35 = !{ptr @__func__.iwl_enhance_sensitivity_write, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 522, i32 3}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @__func__.iwl_prepare_legacy_sensitivity_tbl, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 402, i32 2}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 407, i32 2}
!43 = !{ptr @__func__.iwl_sensitivity_write, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 436, i32 3}
!45 = !{ptr @__func__.iwl_sens_auto_corr_ofdm, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 324, i32 3}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 347, i32 3}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 366, i32 3}
!52 = !{ptr @__func__.iwl_sens_energy_cck, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 164, i32 2}
!54 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 188, i32 2}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 198, i32 2}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 204, i32 3}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 206, i32 3}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 223, i32 3}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 237, i32 4}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 242, i32 4}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 247, i32 3}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 257, i32 4}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 271, i32 2}
!75 = !{ptr @__func__.iwl_find_disconn_antenna, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 745, i32 2}
!77 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 747, i32 2}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 761, i32 4}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 801, i32 4}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 810, i32 3}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 818, i32 2}
!88 = !{ptr @__func__.iwlagn_gain_computation, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/calib.c", i32 859, i32 2}
!90 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{i8 0, i8 2}
!101 = !{!"auto-init"}
