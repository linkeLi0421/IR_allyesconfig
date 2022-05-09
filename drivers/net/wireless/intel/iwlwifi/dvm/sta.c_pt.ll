; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/dvm/sta.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/dvm/sta.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_link_quality_cmd = type { i8, i8, i16, %struct.iwl_link_qual_general_params, %struct.iwl_link_qual_agg_params, [16 x %struct.anon.134], i32 }
%struct.iwl_link_qual_general_params = type { i8, i8, i8, i8, [4 x i8] }
%struct.iwl_link_qual_agg_params = type { i16, i8, i8, i32 }
%struct.anon.134 = type { i32 }
%struct.iwl_rate_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.iwl_rx_cmd_buffer = type { ptr, i32, i8, i32, i32 }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }
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
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.iwl_station_priv = type { ptr, [4 x i8], %struct.iwl_lq_sta, %struct.atomic_t, i8, i8, i8, i8 }
%struct.iwl_lq_sta = type <{ i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8, i8, i8, i32, i32, i16, i16, i16, i16, i8, i8, %struct.iwl_link_quality_cmd, [2 x i8], [2 x %struct.iwl_scale_tbl_info], [8 x %struct.iwl_traffic_load], i8, [3 x i8], i32, ptr, i32, i32, i8, i8, [2 x i8] }>
%struct.iwl_scale_tbl_info = type { i32, i8, i8, i8, i8, i8, i8, ptr, i32, [13 x %struct.iwl_rate_scale_data] }
%struct.iwl_rate_scale_data = type { i64, i32, i32, i32, i32, i32 }
%struct.iwl_traffic_load = type { i32, [20 x i32], i32, i8, i8 }
%struct.iwl_rem_sta_cmd = type { i8, [3 x i8], [6 x i8], [2 x i8] }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.130, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.130 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.131] }
%struct.anon.131 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.iwl_nvm_data = type { i32, [6 x i8], i8, i16, i16, i16, i16, [2 x i16], i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, [6 x %struct.ieee80211_supported_band], %struct.anon.137, [0 x %struct.ieee80211_channel] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.anon.137 = type { [2 x %struct.ieee80211_sband_iftype_data], [2 x %struct.ieee80211_sband_iftype_data] }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.101 }>
%struct.anon.101 = type { ptr, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.iwl_wep_cmd = type { i8, i8, i8, i8, [0 x %struct.iwl_wep_key] }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_key_seq = type { %union.anon.143 }
%union.anon.143 = type { %struct.anon.144, [12 x i8] }
%struct.anon.144 = type { i32, i16 }

@iwl_bcast_addr = dso_local constant { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@__func__.iwl_send_add_sta = private unnamed_addr constant [17 x i8] c"iwl_send_add_sta\00", align 1
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Adding sta %u (%pM) %ssynchronously\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"a\00", [30 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intel/iwlwifi/dvm/sta.c\00", [51 x i8] zeroinitializer }, align 32
@iwl_sta_update_ht.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_prep_station = private unnamed_addr constant [17 x i8] c"iwl_prep_station\00", align 1
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"STA %d already in process of being added.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"STA %d (%pM) already added, not adding again.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Add STA to driver ID %d: %pM\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unable to prepare station %pM for addition\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.iwl_add_station_common = private unnamed_addr constant [23 x i8] c"iwl_add_station_common\00", align 1
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Adding station %pM failed.\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.iwl_remove_station = private unnamed_addr constant [19 x i8] c"iwl_remove_station\00", align 1
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Unable to remove station %pM, device not ready.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Removing STA from driver:%d  %pM\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Removing %pM but non DRIVER active\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Removing %pM but non UCODE active\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.iwl_deactivate_station = private unnamed_addr constant [23 x i8] c"iwl_deactivate_station\00", align 1
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Deactivating STA: %pM (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@iwl_deactivate_station.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_deactivate_station.__already_done.14 = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_deactivate_station.__already_done.15 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_clear_ucode_stations = private unnamed_addr constant [25 x i8] c"iwl_clear_ucode_stations\00", align 1
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Clearing ucode stations in driver\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Clearing ucode active for station %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"No active stations found to be cleared\0A\00", [56 x i8] zeroinitializer }, align 32
@iwl_restore_stations.zero_lq = internal constant { %struct.iwl_link_quality_cmd, [40 x i8] } zeroinitializer, align 32
@__func__.iwl_restore_stations = private unnamed_addr constant [21 x i8] c"iwl_restore_stations\00", align 1
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Not ready yet, not restoring any stations.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Restoring all known stations ... start.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Restoring sta %pM\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Restoring all known stations .... no stations to be restored.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Restoring all known stations .... complete.\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.iwl_send_lq_cmd = private unnamed_addr constant [16 x i8] c"iwl_send_lq_cmd\00", align 1
@.str.24 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"init LQ command complete, clearing sta addition status for sta %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to add station %pM\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Unable to initialize rate scaling for station %pM.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Link quality command failed (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__func__.iwl_remove_default_wep_key = private unnamed_addr constant [27 x i8] c"iwl_remove_default_wep_key\00", align 1
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Removing default WEP key: idx=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Not sending REPLY_WEPKEY command due to RFKILL.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Remove default WEP key: idx=%d ret=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.iwl_set_default_wep_key = private unnamed_addr constant [24 x i8] c"iwl_set_default_wep_key\00", align 1
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Bad WEP key length %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Set default WEP key: len=%d idx=%d ret=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.iwl_remove_dynamic_key = private unnamed_addr constant [23 x i8] c"iwl_remove_dynamic_key\00", align 1
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Remove dynamic key: idx=%d sta=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"offset %d not used in uCode key table.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unknown cipher %x\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.iwl_set_dynamic_key = private unnamed_addr constant [20 x i8] c"iwl_set_dynamic_key\00", align 1
@.str.36 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Set dynamic key: cipher=%x len=%d idx=%d sta=%pM ret=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to prepare broadcast station\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Unable to initialize rate scaling for bcast station.\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.iwl_update_bcast_station = private unnamed_addr constant [25 x i8] c"iwl_update_bcast_station\00", align 1
@.str.39 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Bcast station rate scaling has not been initialized yet.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid station for AGG tid %d\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.iwl_process_add_sta_resp = private unnamed_addr constant [25 x i8] c"iwl_process_add_sta_resp\00", align 1
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Processing response for adding station\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"REPLY_ADD_STA PASSED\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Adding station failed, no room in table.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Adding station failed, no block ack resource.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Attempting to modify non-existing station\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Received REPLY_ADD_STA:(0x%08X)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"invalid sta_id %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ACTIVATE a non DRIVER active station id %u addr %pM\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.iwl_sta_ucode_activate = private unnamed_addr constant [23 x i8] c"iwl_sta_ucode_activate\00", align 1
@.str.49 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"STA id %u addr %pM already present in uCode (according to driver)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Added STA id %u addr %pM to uCode\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intel/iwlwifi/dvm/agn.h\00", [51 x i8] zeroinitializer }, align 32
@__func__.iwl_sta_calc_ht_flags = private unnamed_addr constant [22 x i8] c"iwl_sta_calc_ht_flags\00", align 1
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"STA %pM SM PS mode: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"static\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dynamic\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid MIMO PS mode %d\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.iwl_send_remove_station = private unnamed_addr constant [24 x i8] c"iwl_send_remove_station\00", align 1
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"REPLY_REMOVE_STA PASSED\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"REPLY_REMOVE_STA failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"removed non active STA %u\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.iwl_sta_ucode_deactivate = private unnamed_addr constant [25 x i8] c"iwl_sta_ucode_deactivate\00", align 1
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Removed STA %u\0A\00", [16 x i8] zeroinitializer }, align 32
@iwl_rates = external dso_local local_unnamed_addr constant [13 x %struct.iwl_rate_info], align 1
@__func__.iwl_dump_lq_cmd = private unnamed_addr constant [16 x i8] c"iwl_dump_lq_cmd\00", align 1
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lq station id 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lq ant 0x%X 0x%X\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lq index %d 0x%X\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.is_lq_table_valid = private unnamed_addr constant [18 x i8] c"is_lq_table_valid\00", align 1
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Channel %u is not an HT channel\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"index %d of LQ expects HT channel\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unable to allocate memory for LQ cmd.\0A\00", [57 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.67 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 13]
@__sancov_gen_cov_switch_values.69 = internal global [6 x i64] [i64 4, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@__sancov_gen_cov_switch_values.70 = internal global [6 x i64] [i64 4, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@___asan_gen_.71 = private unnamed_addr constant [15 x i8] c"iwl_bcast_addr\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 15, i32 10 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 96, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 101, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 274, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 282, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 289, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 336, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 371, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 458, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 469, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 478, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 484, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 525, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 613, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 621, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 630, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [8 x i8] c"zero_lq\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 645, i32 43 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 653, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 658, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 665, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 713, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 716, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 850, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 896, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 910, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 918, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 997, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1002, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1008, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1024, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1036, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1176, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1180, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1240, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1249, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1272, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1284, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1318, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1393, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 48, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 54, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 57, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 60, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 64, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 67, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 22, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 26, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 31, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 37, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/dvm/agn.h\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 281, i32 6 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 162, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 179, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 436, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 440, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 392, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 397, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 755, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 756, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 761, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 791, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 796, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.270 = private constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 869, i32 3 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @iwl_bcast_addr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @iwl_restore_stations.zero_lq, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_bcast_addr to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_restore_stations.zero_lq to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_add_sta_callback(ptr noundef %priv, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #7
  %2 = ptrtoint ptr %call.i to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %data.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  %dev.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %7, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_process_add_sta_resp, ptr noundef nonnull @.str.41) #7
  %sta_lock.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_lock.i) #7
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data.i, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %9, label %do.end38.i [
    i8 1, label %do.end7.i
    i8 2, label %do.end15.i
    i8 4, label %do.end23.i
    i8 8, label %do.end31.i
  ]

do.end7.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %12, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_process_add_sta_resp, ptr noundef nonnull @.str.42) #7
  br label %iwl_process_add_sta_resp.exit

do.end15.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %14, i32 noundef 0, ptr noundef nonnull @.str.43) #7
  br label %iwl_process_add_sta_resp.exit

do.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %16, i32 noundef 0, ptr noundef nonnull @.str.44) #7
  br label %iwl_process_add_sta_resp.exit

do.end31.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %18, i32 noundef 0, ptr noundef nonnull @.str.45) #7
  br label %iwl_process_add_sta_resp.exit

do.end38.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i8 %9 to i32
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %20, i32 noundef 4097, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_process_add_sta_resp, ptr noundef nonnull @.str.46, i32 noundef %conv.i) #7
  br label %iwl_process_add_sta_resp.exit

iwl_process_add_sta_resp.exit:                    ; preds = %do.end38.i, %do.end31.i, %do.end23.i, %do.end15.i, %do.end7.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock.i) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_send_add_sta(ptr noundef %priv, ptr noundef %sta, i8 noundef zeroext %flags) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd) #7
  %0 = getelementptr inbounds i8, ptr %cmd, i32 32
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !168
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sta, ptr %cmd, align 4
  %arrayinit.cur.ptr = getelementptr inbounds ptr, ptr %cmd, i32 1
  %resp_pkt = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 1
  %_rx_page_addr = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 2
  %_rx_page_order = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 3
  %flags2 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 4
  %conv = zext i8 %flags to i32
  %3 = call ptr @memset(ptr %arrayinit.cur.ptr, i32 0, i32 16)
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %flags2, align 4
  %id = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 5
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 24, ptr %id, align 4
  %len = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 92, ptr %len, align 4
  %arrayinit.start4 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %arrayinit.start4 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %arrayinit.start4, align 2
  %arrayinit.end5 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 7
  %8 = ptrtoint ptr %arrayinit.end5 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %arrayinit.end5, align 4
  %sta11 = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %sta, i32 0, i32 2
  %sta_id12 = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %sta, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %sta_id12 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sta_id12, align 1
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %conv14 = zext i8 %10 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.2, ptr @.str.1
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %12, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_send_add_sta, ptr noundef nonnull @.str, i32 noundef %conv14, ptr noundef %sta11, ptr noundef nonnull %cond) #7
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags2, align 4
  %or = or i32 %14, 2
  store i32 %or, ptr %flags2, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 101) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = call i32 @iwl_dvm_send_cmd(ptr noundef %priv, ptr noundef nonnull %cmd) #7
  %15 = or i32 %call, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %if.end34, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %if.end
  %17 = ptrtoint ptr %resp_pkt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %resp_pkt, align 4
  %data36 = getelementptr inbounds %struct.iwl_rx_packet, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %data36 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp = icmp eq i8 %20, 1
  br i1 %cmp, label %if.then40, label %if.end34.if.end43_crit_edge

if.end34.if.end43_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then40:                                        ; preds = %if.end34
  %sta_lock = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 6
  call void @_raw_spin_lock_bh(ptr noundef %sta_lock) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %21 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.then40.if.end.i_crit_edge, label %land.rhs.i

if.then40.if.end.i_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then40
  %dep_map.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !169

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 19, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then40.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %10)
  %cmp24.i = icmp ugt i8 %10, 15
  br i1 %cmp24.i, label %do.end30.i, label %if.end34.i

do.end30.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %23, i32 noundef 0, ptr noundef nonnull @.str.47, i32 noundef %conv14) #7
  br label %iwl_sta_ucode_activate.exit

if.end34.i:                                       ; preds = %if.end.i
  %arrayidx.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %conv14
  %used.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %conv14, i32 1
  %24 = ptrtoint ptr %used.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %used.i, align 4
  %26 = and i8 %25, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool36.not.i = icmp eq i8 %26, 0
  br i1 %tobool36.not.i, label %do.end41.i, label %if.end34.i.if.end50.i_crit_edge

if.end34.i.if.end50.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i

do.end41.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %sta47.i = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %arrayidx.i, i32 0, i32 2
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %28, i32 noundef 0, ptr noundef nonnull @.str.48, i32 noundef %conv14, ptr noundef %sta47.i) #7
  br label %if.end50.i

if.end50.i:                                       ; preds = %do.end41.i, %if.end34.i.if.end50.i_crit_edge
  %29 = ptrtoint ptr %used.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %used.i, align 4
  %31 = and i8 %30, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool57.not.i = icmp eq i8 %31, 0
  br i1 %tobool57.not.i, label %if.else.i, label %do.end62.i

do.end62.i:                                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %sta69.i = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %arrayidx.i, i32 0, i32 2
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %33, i32 noundef 4097, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_sta_ucode_activate, ptr noundef nonnull @.str.49, i32 noundef %conv14, ptr noundef %sta69.i) #7
  br label %iwl_sta_ucode_activate.exit

if.else.i:                                        ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i8 %30, 2
  %34 = ptrtoint ptr %used.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %or.i, ptr %used.i, align 4
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %sta90.i = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %arrayidx.i, i32 0, i32 2
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %36, i32 noundef 4097, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_sta_ucode_activate, ptr noundef nonnull @.str.50, i32 noundef %conv14, ptr noundef %sta90.i) #7
  br label %iwl_sta_ucode_activate.exit

iwl_sta_ucode_activate.exit:                      ; preds = %if.else.i, %do.end62.i, %do.end30.i
  %retval.0.i = phi i32 [ -22, %do.end30.i ], [ 0, %if.else.i ], [ 0, %do.end62.i ]
  call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #7
  br label %if.end43

if.end43:                                         ; preds = %iwl_sta_ucode_activate.exit, %if.end34.if.end43_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %iwl_sta_ucode_activate.exit ], [ -5, %if.end34.if.end43_crit_edge ]
  %37 = ptrtoint ptr %_rx_page_addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %_rx_page_addr, align 4
  %39 = ptrtoint ptr %_rx_page_order to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %_rx_page_order, align 4
  call void @free_pages(i32 noundef %38, i32 noundef %40) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end43 ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_dvm_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @iwl_is_ht40_tx_allowed(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %ctx, ptr noundef readonly %sta) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 29, i32 2
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 2, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %is_40mhz = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 29, i32 3
  %2 = ptrtoint ptr %is_40mhz to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_40mhz, align 1, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %disable_ht40 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 121
  %4 = ptrtoint ptr %disable_ht40 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %disable_ht40, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end5:                                          ; preds = %if.end
  %tobool6.not = icmp eq ptr %sta, null
  br i1 %tobool6.not, label %if.end5.return_crit_edge, label %if.end8

if.end5.return_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %bandwidth = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 14
  %6 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bandwidth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp ne i32 %7, 0
  br label %return

return:                                           ; preds = %if.end8, %if.end5.return_crit_edge, %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp, %if.end8 ], [ false, %lor.lhs.false.return_crit_edge ], [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ true, %if.end5.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_sta_update_ht(ptr noundef %priv, ptr nocapture noundef readonly %ctx, ptr noundef %sta) local_unnamed_addr #0 align 64 {
entry:
  %flags = alloca i32, align 4
  %mask = alloca i32, align 4
  %cmd = alloca %struct.iwl_addsta_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %sta, null
  br i1 %tobool.not.i, label %iwl_sta_id.exit.thread, label %iwl_sta_id.exit, !prof !169

iwl_sta_id.exit.thread:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 281, i32 noundef 9, ptr noundef null) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !168
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #7
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %cmd) #7
  br label %land.rhs

iwl_sta_id.exit:                                  ; preds = %entry
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %sta_id.i = getelementptr inbounds %struct.iwl_station_priv, ptr %drv_priv.i, i32 0, i32 7
  %1 = ptrtoint ptr %sta_id.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sta_id.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %flags, align 4, !annotation !168
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #7
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %mask, align 4, !annotation !168
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %cmp = icmp eq i8 %2, -1
  br i1 %cmp, label %iwl_sta_id.exit.land.rhs_crit_edge, label %if.end40

iwl_sta_id.exit.land.rhs_crit_edge:               ; preds = %iwl_sta_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

land.rhs:                                         ; preds = %iwl_sta_id.exit.land.rhs_crit_edge, %iwl_sta_id.exit.thread
  %.b66 = load i1, ptr @iwl_sta_update_ht.__already_done, align 1
  br i1 %.b66, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !171

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @iwl_sta_update_ht.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 200, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end40:                                         ; preds = %iwl_sta_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i8 %2 to i32
  call fastcc void @iwl_sta_calc_ht_flags(ptr noundef %priv, ptr noundef nonnull %sta, ptr noundef %ctx, ptr noundef nonnull %flags, ptr noundef nonnull %mask)
  %sta_lock = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_lock) #7
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask, align 4
  %neg = xor i32 %6, -1
  %station_flags = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %conv.i, i32 0, i32 4
  %7 = ptrtoint ptr %station_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %station_flags, align 4
  %and = and i32 %8, %neg
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %or = or i32 %10, %and
  store i32 %or, ptr %station_flags, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #7
  %11 = getelementptr inbounds i8, ptr %cmd, i32 1
  %12 = call ptr @memset(ptr %11, i32 0, i32 91)
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %cmd, align 1
  %station_flags_msk = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %cmd, i32 0, i32 5
  %14 = ptrtoint ptr %station_flags_msk to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %6, ptr %station_flags_msk, align 1
  %station_flags48 = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %cmd, i32 0, i32 4
  %15 = ptrtoint ptr %station_flags48 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %10, ptr %station_flags48, align 1
  %sta_id50 = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %cmd, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %sta_id50 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %2, ptr %sta_id50, align 1
  %call51 = call i32 @iwl_send_add_sta(ptr noundef %priv, ptr noundef nonnull %cmd, i8 noundef zeroext 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call51, %if.end40 ], [ -22, %if.then ], [ -22, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %cmd) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_sta_calc_ht_flags(ptr nocapture noundef readonly %priv, ptr noundef %sta, ptr nocapture noundef readonly %ctx, ptr nocapture noundef %flags, ptr nocapture noundef writeonly %mask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 64003, ptr %mask, align 4
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %flags, align 4
  %tobool.not = icmp eq ptr %sta, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ht_supported = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ht_supported, align 2, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %do.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %smps_mode = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 15
  %6 = ptrtoint ptr %smps_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %smps_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp4 = icmp eq i32 %7, 3
  %cond = select i1 %cmp4, ptr @.str.54, ptr @.str.55
  %cond5 = select i1 %cmp, ptr @.str.53, ptr %cond
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %5, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_sta_calc_ht_flags, ptr noundef nonnull @.str.52, ptr noundef %addr, ptr noundef nonnull %cond5) #7
  %8 = ptrtoint ptr %smps_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %smps_mode, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %9, label %do.end14 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb9
    i32 1, label %do.end.sw.epilog_crit_edge
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %or = or i32 %12, 16384
  store i32 %or, ptr %flags, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %or10 = or i32 %14, 512
  store i32 %or10, ptr %flags, align 4
  br label %sw.epilog

do.end14:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %16, ptr noundef nonnull @.str.56, i32 noundef %9) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end14, %sw.bb9, %sw.bb, %do.end.sw.epilog_crit_edge
  %ampdu_factor = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %ampdu_factor to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ampdu_factor, align 1
  %conv = zext i8 %18 to i32
  %shl = shl nuw nsw i32 %conv, 19
  %19 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %or19 = or i32 %19, %21
  store i32 %or19, ptr %flags, align 4
  %ampdu_density = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %ampdu_density to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ampdu_density, align 2
  %conv20 = zext i8 %23 to i32
  %shl21 = shl nuw nsw i32 %conv20, 23
  %24 = tail call i32 @llvm.bswap.i32(i32 %shl21)
  %or22 = or i32 %24, %or19
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or22, ptr %flags, align 4
  %enabled.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 29, i32 2
  %26 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %enabled.i, align 2, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i, label %sw.epilog.cleanup_crit_edge, label %lor.lhs.false.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %sw.epilog
  %is_40mhz.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 29, i32 3
  %28 = ptrtoint ptr %is_40mhz.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %is_40mhz.i, align 1, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool2.not.i = icmp eq i8 %29, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %disable_ht40.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 121
  %30 = ptrtoint ptr %disable_ht40.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %disable_ht40.i, align 8, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool3.not.i = icmp eq i8 %31, 0
  br i1 %tobool3.not.i, label %iwl_is_ht40_tx_allowed.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

iwl_is_ht40_tx_allowed.exit:                      ; preds = %if.end.i
  %bandwidth.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 14
  %32 = ptrtoint ptr %bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bandwidth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i.not = icmp eq i32 %33, 0
  br i1 %cmp.i.not, label %iwl_is_ht40_tx_allowed.exit.cleanup_crit_edge, label %if.then23

iwl_is_ht40_tx_allowed.exit.cleanup_crit_edge:    ; preds = %iwl_is_ht40_tx_allowed.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then23:                                        ; preds = %iwl_is_ht40_tx_allowed.exit
  call void @__sanitizer_cov_trace_pc() #9
  %or24 = or i32 %or22, 8192
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or24, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %iwl_is_ht40_tx_allowed.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @iwl_prep_station(ptr noundef %priv, ptr noundef %ctx, ptr noundef %addr, i1 noundef zeroext %is_ap, ptr noundef %sta) local_unnamed_addr #0 align 64 {
entry:
  %flags.i = alloca i32, align 4
  %mask.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %is_ap, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ap_sta_id = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 19
  %0 = ptrtoint ptr %ap_sta_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ap_sta_id, align 1
  br label %if.end18

if.else:                                          ; preds = %entry
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr, align 2
  %add.ptr1.i = getelementptr i8, ptr %addr, i32 2
  %4 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %5, %3
  %add.ptr3.i = getelementptr i8, ptr %addr, i32 4
  %6 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %7
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i = icmp eq i16 %and510.i, -1
  br i1 %cmp.i, label %if.then1, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 4
  br label %for.body

if.then1:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %bcast_sta_id = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 18
  %10 = ptrtoint ptr %bcast_sta_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bcast_sta_id, align 4
  br label %if.end18

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.cond.preheader
  %sta_id.0168 = phi i8 [ -1, %for.cond.preheader ], [ %sta_id.1, %if.end.for.body_crit_edge ]
  %i.0167 = phi i32 [ 2, %for.cond.preheader ], [ %inc, %if.end.for.body_crit_edge ]
  %sta4 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %i.0167, i32 0, i32 2
  %12 = ptrtoint ptr %sta4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sta4, align 4
  %xor.i = xor i32 %9, %13
  %add.ptr.i = getelementptr i8, ptr %sta4, i32 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i, align 2
  %xor37.i = xor i16 %15, %7
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i156 = icmp eq i32 %or.i, 0
  br i1 %cmp.i156, label %if.then7, label %if.end

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %i.0167 to i8
  br label %if.end18

if.end:                                           ; preds = %for.body
  %used = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %i.0167, i32 1
  %16 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool10.not = icmp eq i8 %17, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %sta_id.0168)
  %cmp12 = icmp eq i8 %sta_id.0168, -1
  %or.cond = select i1 %tobool10.not, i1 %cmp12, i1 false
  %conv15 = trunc i32 %i.0167 to i8
  %sta_id.1 = select i1 %or.cond, i8 %conv15, i8 %sta_id.0168
  %inc = add nuw nsw i32 %i.0167, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %if.end.if.end18_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end18:                                         ; preds = %if.end.if.end18_crit_edge, %if.then7, %if.then1, %if.then
  %sta_id.2 = phi i8 [ %1, %if.then ], [ %11, %if.then1 ], [ %conv, %if.then7 ], [ %sta_id.1, %if.end.if.end18_crit_edge ]
  %conv19 = zext i8 %sta_id.2 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %sta_id.2)
  %cmp20 = icmp eq i8 %sta_id.2, -1
  br i1 %cmp20, label %if.end18.cleanup_crit_edge, label %if.end25, !prof !169

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %arrayidx27 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %conv19
  %used28 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %conv19, i32 1
  %18 = ptrtoint ptr %used28 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %used28, align 4
  %conv29 = zext i8 %19 to i32
  %and = and i32 %conv29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %if.end36, label %do.end

do.end:                                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %21, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_prep_station, ptr noundef nonnull @.str.4, i32 noundef %conv19) #7
  br label %cleanup

if.end36:                                         ; preds = %if.end25
  %22 = and i32 %conv29, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %.not = icmp eq i32 %22, 3
  br i1 %.not, label %land.lhs.true52, label %if.end36.if.end71_crit_edge

if.end36.if.end71_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

land.lhs.true52:                                  ; preds = %if.end36
  %sta57 = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %arrayidx27, i32 0, i32 2
  %23 = ptrtoint ptr %sta57 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sta57, align 4
  %25 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addr, align 4
  %xor.i157 = xor i32 %26, %24
  %add.ptr.i158 = getelementptr %struct.iwl_addsta_cmd, ptr %arrayidx27, i32 0, i32 2, i32 0, i32 4
  %27 = ptrtoint ptr %add.ptr.i158 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i158, align 2
  %add.ptr1.i159 = getelementptr i8, ptr %addr, i32 4
  %29 = ptrtoint ptr %add.ptr1.i159 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr1.i159, align 2
  %xor37.i160 = xor i16 %30, %28
  %xor3.i161 = zext i16 %xor37.i160 to i32
  %or.i162 = or i32 %xor.i157, %xor3.i161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i162)
  %cmp.i163 = icmp eq i32 %or.i162, 0
  br i1 %cmp.i163, label %do.end66, label %land.lhs.true52.if.end71_crit_edge

land.lhs.true52.if.end71_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

do.end66:                                         ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #9
  %dev67 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %31 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev67, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %32, i32 noundef 4097, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_prep_station, ptr noundef nonnull @.str.5, i32 noundef %conv19, ptr noundef %addr) #7
  br label %cleanup

if.end71:                                         ; preds = %land.lhs.true52.if.end71_crit_edge, %if.end36.if.end71_crit_edge
  %33 = ptrtoint ptr %used28 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %used28, align 4
  %dev80 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %34 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev80, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %35, i32 noundef 4097, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_prep_station, ptr noundef nonnull @.str.6, i32 noundef %conv19, ptr noundef %addr) #7
  %num_stations = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 62
  %36 = ptrtoint ptr %num_stations to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_stations, align 4
  %inc84 = add i32 %37, 1
  store i32 %inc84, ptr %num_stations, align 4
  %38 = call ptr @memset(ptr %arrayidx27, i32 0, i32 92)
  %sta87 = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %arrayidx27, i32 0, i32 2
  %39 = call ptr @memcpy(ptr %sta87, ptr %addr, i32 6)
  %sta_id93 = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %arrayidx27, i32 0, i32 2, i32 2
  %40 = ptrtoint ptr %sta_id93 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %sta_id.2, ptr %sta_id93, align 4
  %station_flags = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 27
  %41 = ptrtoint ptr %station_flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %station_flags, align 4
  %station_flags95 = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %arrayidx27, i32 0, i32 4
  %43 = ptrtoint ptr %station_flags95 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %station_flags95, align 4
  %ctxid = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 7
  %44 = ptrtoint ptr %ctxid to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ctxid, align 4
  %conv96 = trunc i32 %45 to i8
  %ctxid97 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %conv19, i32 2
  %46 = ptrtoint ptr %ctxid97 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv96, ptr %ctxid97, align 1
  %tobool98.not = icmp eq ptr %sta, null
  br i1 %tobool98.not, label %if.end71.if.end102_crit_edge, label %if.then99

if.end71.if.end102_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

if.then99:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %47 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %ctx, ptr %drv_priv, align 8
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %if.end71.if.end102_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #7
  %48 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %flags.i, align 4, !annotation !168
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #7
  %49 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %mask.i, align 4, !annotation !168
  call fastcc void @iwl_sta_calc_ht_flags(ptr noundef %priv, ptr noundef %sta, ptr noundef %ctx, ptr noundef nonnull %flags.i, ptr noundef nonnull %mask.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %50 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i, label %if.end102.iwl_set_ht_add_station.exit_crit_edge, label %land.rhs.i

if.end102.iwl_set_ht_add_station.exit_crit_edge:  ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_set_ht_add_station.exit

land.rhs.i:                                       ; preds = %if.end102
  %dep_map.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.iwl_set_ht_add_station.exit_crit_edge, !prof !169

land.rhs.i.iwl_set_ht_add_station.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_set_ht_add_station.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 227, i32 noundef 9, ptr noundef null) #7
  br label %iwl_set_ht_add_station.exit

iwl_set_ht_add_station.exit:                      ; preds = %do.end.i, %land.rhs.i.iwl_set_ht_add_station.exit_crit_edge, %if.end102.iwl_set_ht_add_station.exit_crit_edge
  %51 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mask.i, align 4
  %neg.i = xor i32 %52, -1
  %station_flags.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %conv19, i32 0, i32 4
  %53 = ptrtoint ptr %station_flags.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %station_flags.i, align 4
  %and.i = and i32 %54, %neg.i
  %55 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags.i, align 4
  %or.i164 = or i32 %56, %and.i
  store i32 %or.i164, ptr %station_flags.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #7
  br label %cleanup

cleanup:                                          ; preds = %iwl_set_ht_add_station.exit, %do.end66, %do.end, %if.end18.cleanup_crit_edge
  ret i8 %sta_id.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_add_station_common(ptr noundef %priv, ptr noundef %ctx, ptr noundef %addr, i1 noundef zeroext %is_ap, ptr noundef %sta, ptr nocapture noundef writeonly %sta_id_r) local_unnamed_addr #0 align 64 {
entry:
  %sta_cmd = alloca %struct.iwl_addsta_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %sta_cmd) #7
  %0 = ptrtoint ptr %sta_id_r to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %sta_id_r, align 1
  %sta_lock = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_lock) #7
  %call = tail call zeroext i8 @iwl_prep_station(ptr noundef %priv, ptr noundef %ctx, ptr noundef %addr, i1 noundef zeroext %is_ap, ptr noundef %sta)
  %conv = zext i8 %call to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call)
  %cmp = icmp eq i8 %call, -1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %2, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef %addr) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %conv
  %used = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %conv, i32 1
  %3 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %used, align 4
  %conv6 = zext i8 %4 to i32
  %and = and i32 %conv6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end18, label %do.end12

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev13 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %5 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev13, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %6, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_add_station_common, ptr noundef nonnull @.str.4, i32 noundef %conv) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #7
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %7 = and i32 %conv6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %.not = icmp eq i32 %7, 3
  br i1 %.not, label %do.end37, label %if.end43

do.end37:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %dev38 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev38, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %9, i32 noundef 4097, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_add_station_common, ptr noundef nonnull @.str.5, i32 noundef %conv, ptr noundef %addr) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #7
  br label %cleanup

if.end43:                                         ; preds = %if.end18
  %10 = or i8 %4, 4
  %11 = ptrtoint ptr %used to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %used, align 4
  %12 = call ptr @memcpy(ptr %sta_cmd, ptr %arrayidx, i32 92)
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #7
  %call55 = call i32 @iwl_send_add_sta(ptr noundef %priv, ptr noundef nonnull %sta_cmd, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end43.if.end87_crit_edge, label %if.then57

if.end43.if.end87_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.then57:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_lock_bh(ptr noundef %sta_lock) #7
  %dev63 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %13 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev63, align 4
  %sta68 = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %arrayidx, i32 0, i32 2
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %14, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef %sta68) #7
  %15 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %used, align 4
  %17 = and i8 %16, -6
  store i8 %17, ptr %used, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #7
  br label %if.end87

if.end87:                                         ; preds = %if.then57, %if.end43.if.end87_crit_edge
  %18 = ptrtoint ptr %sta_id_r to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call, ptr %sta_id_r, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end87, %do.end37, %do.end12, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -17, %do.end12 ], [ -17, %do.end37 ], [ %call55, %if.end87 ]
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %sta_cmd) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_remove_station(ptr noundef %priv, i8 noundef zeroext %sta_id, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  %rm_sta_cmd.i = alloca %struct.iwl_rem_sta_cmd, align 1
  %cmd.i = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %status.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status.i, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %iwl_is_ready.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

iwl_is_ready.exit:                                ; preds = %entry
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status.i, align 4
  %5 = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.not = icmp eq i32 %5, 0
  br i1 %tobool.not.not, label %do.end7, label %iwl_is_ready.exit.do.end_crit_edge

iwl_is_ready.exit.do.end_crit_edge:               ; preds = %iwl_is_ready.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %iwl_is_ready.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %7, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_remove_station, ptr noundef nonnull @.str.9, ptr noundef %addr) #7
  br label %cleanup

do.end7:                                          ; preds = %iwl_is_ready.exit
  %dev8 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev8, align 4
  %conv = zext i8 %sta_id to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %9, i32 noundef 4097, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_remove_station, ptr noundef nonnull @.str.10, i32 noundef %conv, ptr noundef %addr) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %sta_id)
  %cmp = icmp eq i8 %sta_id, -1
  br i1 %cmp, label %do.end24, label %if.end39, !prof !169

do.end24:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 472, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end39:                                         ; preds = %do.end7
  %sta_lock = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_lock) #7
  %used = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %conv, i32 1
  %10 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %used, align 4
  %conv40 = zext i8 %11 to i32
  %and = and i32 %conv40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %if.end39.out_err_crit_edge, label %if.end50

if.end39.out_err_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

if.end50:                                         ; preds = %if.end39
  %and56 = and i32 %conv40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end50.out_err_crit_edge, label %if.end66

if.end50.out_err_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

if.end66:                                         ; preds = %if.end50
  %and72 = and i32 %conv40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end66.if.end82_crit_edge, label %if.then74

if.end66.if.end82_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then74:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %lq = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %conv, i32 3
  %12 = ptrtoint ptr %lq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lq, align 4
  tail call void @kfree(ptr noundef %13) #7
  %14 = ptrtoint ptr %lq to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %lq, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then74, %if.end66.if.end82_crit_edge
  %15 = mul nuw nsw i32 %conv, 160
  %16 = add nuw nsw i32 %15, 5412
  %uglygep = getelementptr i8, ptr %priv, i32 %16
  %17 = call ptr @memset(ptr %uglygep, i32 0, i32 160)
  %18 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %used, align 4
  %20 = and i8 %19, -2
  store i8 %20, ptr %used, align 4
  %num_stations = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 62
  %21 = ptrtoint ptr %num_stations to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_stations, align 4
  %dec = add i32 %22, -1
  store i32 %dec, ptr %num_stations, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp99 = icmp slt i32 %dec, 0
  br i1 %cmp99, label %do.end116, label %if.end82.if.end133_crit_edge, !prof !169

if.end82.if.end133_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

do.end116:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 502, i32 noundef 9, ptr noundef null) #7
  %23 = ptrtoint ptr %num_stations to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %num_stations, align 4
  br label %if.end133

if.end133:                                        ; preds = %do.end116, %if.end82.if.end133_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rm_sta_cmd.i) #7
  %24 = getelementptr inbounds %struct.iwl_rem_sta_cmd, ptr %rm_sta_cmd.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i) #7
  %25 = getelementptr inbounds i8, ptr %cmd.i, i32 32
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 65535, ptr %25, align 4, !annotation !168
  %27 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %rm_sta_cmd.i, ptr %cmd.i, align 4
  %arrayinit.cur.ptr.i = getelementptr inbounds ptr, ptr %cmd.i, i32 1
  %_rx_page_addr.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 2
  %_rx_page_order.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 3
  %flags.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 4
  %id.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 5
  %28 = call ptr @memset(ptr %arrayinit.cur.ptr.i, i32 0, i32 16)
  %29 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 25, ptr %id.i, align 4
  %len.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6
  %30 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 12, ptr %len.i, align 4
  %arrayinit.start3.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6, i32 1
  %31 = ptrtoint ptr %arrayinit.start3.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %arrayinit.start3.i, align 2
  %32 = getelementptr inbounds i8, ptr %rm_sta_cmd.i, i32 1
  %33 = call ptr @memset(ptr %32, i32 0, i32 11)
  %34 = ptrtoint ptr %rm_sta_cmd.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %rm_sta_cmd.i, align 1
  %35 = call ptr @memcpy(ptr %24, ptr %addr, i32 6)
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %flags.i, align 4
  %call.i = call i32 @iwl_dvm_send_cmd(ptr noundef %priv, ptr noundef nonnull %cmd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i173 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i173, label %if.end.i, label %if.end133.iwl_send_remove_station.exit_crit_edge

if.end133.iwl_send_remove_station.exit_crit_edge: ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_send_remove_station.exit

if.end.i:                                         ; preds = %if.end133
  %resp_pkt.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 1
  %37 = ptrtoint ptr %resp_pkt.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %resp_pkt.i, align 4
  %data13.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %data13.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %data13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %40)
  %cond.i = icmp eq i8 %40, 1
  br i1 %cond.i, label %if.then15.i, label %sw.default.i

if.then15.i:                                      ; preds = %if.end.i
  call void @_raw_spin_lock_bh(ptr noundef %sta_lock) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %41 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i.i, label %if.then15.i.if.end.i.i_crit_edge, label %land.rhs.i.i

if.then15.i.if.end.i.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %if.then15.i
  %dep_map.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !169

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 386, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %if.then15.i.if.end.i.i_crit_edge
  %42 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %used, align 4
  %44 = and i8 %43, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %44)
  %cmp24.not.i.i = icmp eq i8 %44, 2
  br i1 %cmp24.not.i.i, label %if.end.i.i.iwl_sta_ucode_deactivate.exit.i_crit_edge, label %do.end30.i.i

if.end.i.i.iwl_sta_ucode_deactivate.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_sta_ucode_deactivate.exit.i

do.end30.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev8, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %46, i32 noundef 0, ptr noundef nonnull @.str.59, i32 noundef %conv) #7
  br label %iwl_sta_ucode_deactivate.exit.i

iwl_sta_ucode_deactivate.exit.i:                  ; preds = %do.end30.i.i, %if.end.i.i.iwl_sta_ucode_deactivate.exit.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %conv
  %47 = call ptr @memset(ptr %arrayidx.i.i, i32 0, i32 100)
  %48 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev8, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %49, i32 noundef 4097, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_sta_ucode_deactivate, ptr noundef nonnull @.str.60, i32 noundef %conv) #7
  call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #7
  %50 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev8, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %51, i32 noundef 4097, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_send_remove_station, ptr noundef nonnull @.str.57) #7
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev8, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %53, i32 noundef 0, ptr noundef nonnull @.str.58) #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %iwl_sta_ucode_deactivate.exit.i
  %ret.0.i = phi i32 [ 0, %iwl_sta_ucode_deactivate.exit.i ], [ -5, %sw.default.i ]
  %54 = ptrtoint ptr %_rx_page_addr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %_rx_page_addr.i, align 4
  %56 = ptrtoint ptr %_rx_page_order.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %_rx_page_order.i, align 4
  call void @free_pages(i32 noundef %55, i32 noundef %57) #7
  br label %iwl_send_remove_station.exit

iwl_send_remove_station.exit:                     ; preds = %sw.epilog.i, %if.end133.iwl_send_remove_station.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %sw.epilog.i ], [ %call.i, %if.end133.iwl_send_remove_station.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rm_sta_cmd.i) #7
  br label %cleanup

out_err:                                          ; preds = %if.end50.out_err_crit_edge, %if.end39.out_err_crit_edge
  %.str.12.sink = phi ptr [ @.str.11, %if.end39.out_err_crit_edge ], [ @.str.12, %if.end50.out_err_crit_edge ]
  %58 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev8, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %59, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_remove_station, ptr noundef nonnull %.str.12.sink, ptr noundef %addr) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %out_err, %iwl_send_remove_station.exit, %do.end24, %do.end
  %retval.0 = phi i32 [ -22, %do.end24 ], [ %retval.0.i, %iwl_send_remove_station.exit ], [ -22, %out_err ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_deactivate_station(ptr noundef %priv, i8 noundef zeroext %sta_id, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %status.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status.i, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %iwl_is_ready.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

iwl_is_ready.exit:                                ; preds = %entry
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status.i, align 4
  %5 = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.not = icmp eq i32 %5, 0
  br i1 %tobool.not.not, label %do.end7, label %iwl_is_ready.exit.do.end_crit_edge

iwl_is_ready.exit.do.end_crit_edge:               ; preds = %iwl_is_ready.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %iwl_is_ready.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %7, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_deactivate_station, ptr noundef nonnull @.str.9, ptr noundef %addr) #7
  br label %cleanup

do.end7:                                          ; preds = %iwl_is_ready.exit
  %dev8 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev8, align 4
  %conv = zext i8 %sta_id to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %9, i32 noundef 4097, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_deactivate_station, ptr noundef nonnull @.str.13, ptr noundef %addr, i32 noundef %conv) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %sta_id)
  %cmp = icmp eq i8 %sta_id, -1
  br i1 %cmp, label %land.rhs, label %if.end56

land.rhs:                                         ; preds = %do.end7
  %.b227 = load i1, ptr @iwl_deactivate_station.__already_done, align 1
  br i1 %.b227, label %land.rhs.cleanup_crit_edge, label %if.then21, !prof !171

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then21:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @iwl_deactivate_station.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 527, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end56:                                         ; preds = %do.end7
  %sta_lock = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_lock) #7
  %used = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %conv, i32 1
  %10 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %used, align 4
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool59.not = icmp eq i8 %12, 0
  br i1 %tobool59.not, label %land.rhs69, label %if.end56.if.end107_crit_edge

if.end56.if.end107_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

land.rhs69:                                       ; preds = %if.end56
  %.b223226 = load i1, ptr @iwl_deactivate_station.__already_done.14, align 1
  br i1 %.b223226, label %land.rhs69.if.end107_crit_edge, label %if.then80, !prof !171

land.rhs69.if.end107_crit_edge:                   ; preds = %land.rhs69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

if.then80:                                        ; preds = %land.rhs69
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @iwl_deactivate_station.__already_done.14, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 532, i32 noundef 9, ptr noundef null) #7
  br label %if.end107

if.end107:                                        ; preds = %if.then80, %land.rhs69.if.end107_crit_edge, %if.end56.if.end107_crit_edge
  %13 = mul nuw nsw i32 %conv, 160
  %14 = add nuw nsw i32 %13, 5412
  %uglygep = getelementptr i8, ptr %priv, i32 %14
  %15 = call ptr @memset(ptr %uglygep, i32 0, i32 160)
  %16 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %used, align 4
  %18 = and i8 %17, -6
  store i8 %18, ptr %used, align 4
  %num_stations = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 62
  %19 = ptrtoint ptr %num_stations to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_stations, align 4
  %dec = add i32 %20, -1
  store i32 %dec, ptr %num_stations, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp138 = icmp slt i32 %dec, 0
  br i1 %cmp138, label %land.rhs147, label %if.end107.if.end196_crit_edge

if.end107.if.end196_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end196

land.rhs147:                                      ; preds = %if.end107
  %.b224225 = load i1, ptr @iwl_deactivate_station.__already_done.15, align 1
  br i1 %.b224225, label %land.rhs147.if.then194_crit_edge, label %if.then158, !prof !171

land.rhs147.if.then194_crit_edge:                 ; preds = %land.rhs147
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then194

if.then158:                                       ; preds = %land.rhs147
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @iwl_deactivate_station.__already_done.15, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 543, i32 noundef 9, ptr noundef null) #7
  br label %if.then194

if.then194:                                       ; preds = %if.then158, %land.rhs147.if.then194_crit_edge
  %21 = ptrtoint ptr %num_stations to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %num_stations, align 4
  br label %if.end196

if.end196:                                        ; preds = %if.then194, %if.end107.if.end196_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end196, %if.then21, %land.rhs.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_clear_ucode_stations(ptr noundef %priv, ptr noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_clear_ucode_stations, ptr noundef nonnull @.str.16) #7
  %sta_lock = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_lock) #7
  %tobool.not = icmp eq ptr %ctx, null
  %ctxid = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 7
  br label %for.body.outer

for.body.outer:                                   ; preds = %for.inc.thread.for.body.outer_crit_edge, %entry
  %cleared.0.off055.ph = phi i1 [ true, %for.inc.thread.for.body.outer_crit_edge ], [ false, %entry ]
  %i.052.ph = phi i32 [ %inc57, %for.inc.thread.for.body.outer_crit_edge ], [ 0, %entry ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.outer
  %i.052 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %i.052.ph, %for.body.outer ]
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %2 = ptrtoint ptr %ctxid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctxid, align 4
  %ctxid4 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %i.052, i32 2
  %4 = ptrtoint ptr %ctxid4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctxid4, align 1
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp5.not = icmp eq i32 %3, %conv
  br i1 %cmp5.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %used = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %i.052, i32 1
  %6 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %used, align 4
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool10.not = icmp eq i8 %8, 0
  br i1 %tobool10.not, label %if.end.for.inc_crit_edge, label %for.inc.thread

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.thread:                                   ; preds = %if.end
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %10, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_clear_ucode_stations, ptr noundef nonnull @.str.17, i32 noundef %i.052) #7
  %11 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %used, align 4
  %13 = and i8 %12, -3
  store i8 %13, ptr %used, align 4
  %inc57 = add nuw nsw i32 %i.052, 1
  %exitcond.not58 = icmp eq i32 %inc57, 16
  br i1 %exitcond.not58, label %for.end.thread, label %for.inc.thread.for.body.outer_crit_edge

for.inc.thread.for.body.outer_crit_edge:          ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.outer

for.end.thread:                                   ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #7
  br label %if.end36

for.end:                                          ; preds = %for.inc
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #7
  br i1 %cleared.0.off055.ph, label %for.end.if.end36_crit_edge, label %do.end32

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.end32:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %15, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_clear_ucode_stations, ptr noundef nonnull @.str.18) #7
  br label %if.end36

if.end36:                                         ; preds = %do.end32, %for.end.if.end36_crit_edge, %for.end.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_restore_stations(ptr noundef %priv, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  %sta_cmd = alloca %struct.iwl_addsta_cmd, align 1
  %lq = alloca %struct.iwl_link_quality_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %sta_cmd) #7
  %0 = call ptr @memset(ptr %sta_cmd, i32 255, i32 92)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %lq) #7
  %1 = call ptr @memset(ptr %lq, i32 255, i32 88)
  %status.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %iwl_is_ready.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

iwl_is_ready.exit:                                ; preds = %entry
  %5 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %status.i, align 4
  %7 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.not = icmp eq i32 %7, 0
  br i1 %tobool.not.not, label %do.end7, label %iwl_is_ready.exit.do.end_crit_edge

iwl_is_ready.exit.do.end_crit_edge:               ; preds = %iwl_is_ready.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %iwl_is_ready.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %9, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_restore_stations, ptr noundef nonnull @.str.19) #7
  br label %cleanup

do.end7:                                          ; preds = %iwl_is_ready.exit
  %dev8 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %10 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev8, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %11, i32 noundef 4097, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_restore_stations, ptr noundef nonnull @.str.20) #7
  %sta_lock = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_lock) #7
  %ctxid = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 7
  br label %for.body

for.cond46.preheader:                             ; preds = %for.inc
  %wowlan = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 48
  br label %for.body49

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end7
  %found.0.off0202 = phi i1 [ false, %do.end7 ], [ %found.1.off0, %for.inc.for.body_crit_edge ]
  %i.0200 = phi i32 [ 0, %do.end7 ], [ %inc, %for.inc.for.body_crit_edge ]
  %12 = ptrtoint ptr %ctxid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctxid, align 4
  %arrayidx = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %i.0200
  %ctxid11 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %i.0200, i32 2
  %14 = ptrtoint ptr %ctxid11 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ctxid11, align 1
  %conv = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv)
  %cmp12.not = icmp eq i32 %13, %conv
  br i1 %cmp12.not, label %if.end15, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end15:                                         ; preds = %for.body
  %used = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %i.0200, i32 1
  %16 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %used, align 4
  %18 = and i8 %17, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %19 = icmp eq i8 %18, 1
  br i1 %19, label %do.end30, label %if.end15.for.inc_crit_edge

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end30:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev8, align 4
  %sta34 = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %arrayidx, i32 0, i32 2
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %21, i32 noundef 4097, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_restore_stations, ptr noundef nonnull @.str.21, ptr noundef %sta34) #7
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx, align 4
  %23 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %used, align 4
  %25 = or i8 %24, 4
  store i8 %25, ptr %used, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end30, %if.end15.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %found.1.off0 = phi i1 [ %found.0.off0202, %for.body.for.inc_crit_edge ], [ true, %do.end30 ], [ %found.0.off0202, %if.end15.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0200, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.cond46.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body49:                                       ; preds = %for.inc120.for.body49_crit_edge, %for.cond46.preheader
  %i.1203 = phi i32 [ 0, %for.cond46.preheader ], [ %inc121, %for.inc120.for.body49_crit_edge ]
  %arrayidx51 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %i.1203
  %used52 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %i.1203, i32 1
  %26 = ptrtoint ptr %used52 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %used52, align 4
  %28 = and i8 %27, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool55.not = icmp eq i8 %28, 0
  br i1 %tobool55.not, label %for.body49.for.inc120_crit_edge, label %if.then56

for.body49.for.inc120_crit_edge:                  ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc120

if.then56:                                        ; preds = %for.body49
  %29 = call ptr @memcpy(ptr %sta_cmd, ptr %arrayidx51, i32 92)
  %lq62 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %i.1203, i32 3
  %30 = ptrtoint ptr %lq62 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lq62, align 4
  %tobool63.not = icmp eq ptr %31, null
  br i1 %tobool63.not, label %if.then56.if.end76_crit_edge, label %if.then64

if.then56.if.end76_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.then64:                                        ; preds = %if.then56
  %32 = ptrtoint ptr %wowlan to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %wowlan, align 1, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool65.not = icmp eq i8 %33, 0
  br i1 %tobool65.not, label %if.else, label %if.then66

if.then66:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  %conv67 = trunc i32 %i.1203 to i8
  call fastcc void @iwl_sta_fill_lq(ptr noundef %priv, ptr noundef %ctx, i8 noundef zeroext %conv67, ptr noundef nonnull %lq)
  br label %if.end71

if.else:                                          ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  %34 = call ptr @memcpy(ptr %lq, ptr %31, i32 88)
  br label %if.end71

if.end71:                                         ; preds = %if.else, %if.then66
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(88) %lq, ptr noundef nonnull dereferenceable(88) @iwl_restore_stations.zero_lq, i32 88) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool73.not = icmp ne i32 %bcmp, 0
  br label %if.end76

if.end76:                                         ; preds = %if.end71, %if.then56.if.end76_crit_edge
  %send_lq.0.off0 = phi i1 [ false, %if.then56.if.end76_crit_edge ], [ %tobool73.not, %if.end71 ]
  call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #7
  %call78 = call i32 @iwl_send_add_sta(ptr noundef %priv, ptr noundef nonnull %sta_cmd, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end107, label %if.then80

if.then80:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_lock_bh(ptr noundef %sta_lock) #7
  %35 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev8, align 4
  %sta90 = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %arrayidx51, i32 0, i32 2
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %36, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef %sta90) #7
  br label %for.inc120.sink.split

if.end107:                                        ; preds = %if.end76
  br i1 %send_lq.0.off0, label %if.then109, label %if.end107.if.end111_crit_edge

if.end107.if.end111_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

if.then109:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  %call110 = call i32 @iwl_send_lq_cmd(ptr noundef %priv, ptr noundef %ctx, ptr noundef nonnull %lq, i8 noundef zeroext 0, i1 noundef zeroext true)
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %if.end107.if.end111_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef %sta_lock) #7
  br label %for.inc120.sink.split

for.inc120.sink.split:                            ; preds = %if.end111, %if.then80
  %.sink209 = phi i8 [ -5, %if.end111 ], [ -6, %if.then80 ]
  %37 = ptrtoint ptr %used52 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %used52, align 4
  %39 = and i8 %38, %.sink209
  store i8 %39, ptr %used52, align 4
  br label %for.inc120

for.inc120:                                       ; preds = %for.inc120.sink.split, %for.body49.for.inc120_crit_edge
  %inc121 = add nuw nsw i32 %i.1203, 1
  %exitcond207.not = icmp eq i32 %inc121, 16
  br i1 %exitcond207.not, label %for.end122, label %for.inc120.for.body49_crit_edge

for.inc120.for.body49_crit_edge:                  ; preds = %for.inc120
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body49

for.end122:                                       ; preds = %for.inc120
  call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #7
  %40 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev8, align 4
  br i1 %found.1.off0, label %do.end137, label %do.end129

do.end129:                                        ; preds = %for.end122
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %41, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_restore_stations, ptr noundef nonnull @.str.22) #7
  br label %cleanup

do.end137:                                        ; preds = %for.end122
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %41, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_restore_stations, ptr noundef nonnull @.str.23) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end137, %do.end129, %do.end
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %lq) #7
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %sta_cmd) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_sta_fill_lq(ptr noundef %priv, ptr noundef readonly %ctx, i8 noundef zeroext %sta_id, ptr nocapture noundef writeonly %link_cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !169

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 556, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = call ptr @memset(ptr %link_cmd, i32 0, i32 88)
  %band = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 18
  %2 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %band, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp24 = icmp eq i32 %3, 1
  br i1 %cmp24, label %if.end.land.lhs.true36.thread_crit_edge, label %if.else

if.end.land.lhs.true36.thread_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true36.thread

if.else:                                          ; preds = %if.end
  %tobool26.not = icmp eq ptr %ctx, null
  br i1 %tobool26.not, label %if.else.land.lhs.true36_crit_edge, label %land.lhs.true

if.else.land.lhs.true36_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true36

land.lhs.true:                                    ; preds = %if.else
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %tobool27.not = icmp eq ptr %5, null
  br i1 %tobool27.not, label %land.lhs.true.land.lhs.true36_crit_edge, label %land.lhs.true28

land.lhs.true.land.lhs.true36_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true36

land.lhs.true28:                                  ; preds = %land.lhs.true
  %p2p = getelementptr inbounds %struct.ieee80211_vif, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %p2p, align 2, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool30.not = icmp eq i8 %7, 0
  br i1 %tobool30.not, label %land.lhs.true28.land.lhs.true36_crit_edge, label %land.lhs.true28.land.lhs.true36.thread_crit_edge

land.lhs.true28.land.lhs.true36.thread_crit_edge: ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true36.thread

land.lhs.true28.land.lhs.true36_crit_edge:        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true36

land.lhs.true36.thread:                           ; preds = %land.lhs.true28.land.lhs.true36.thread_crit_edge, %if.end.land.lhs.true36.thread_crit_edge
  br label %land.lhs.true36

land.lhs.true36:                                  ; preds = %land.lhs.true36.thread, %land.lhs.true28.land.lhs.true36_crit_edge, %land.lhs.true.land.lhs.true36_crit_edge, %if.else.land.lhs.true36_crit_edge
  %r.0124 = phi i32 [ 4, %land.lhs.true36.thread ], [ 0, %land.lhs.true28.land.lhs.true36_crit_edge ], [ 0, %land.lhs.true.land.lhs.true36_crit_edge ], [ 0, %if.else.land.lhs.true36_crit_edge ]
  %8 = phi i32 [ 0, %land.lhs.true36.thread ], [ 512, %land.lhs.true28.land.lhs.true36_crit_edge ], [ 512, %land.lhs.true.land.lhs.true36_crit_edge ], [ 512, %if.else.land.lhs.true36_crit_edge ]
  %nvm_data = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %9 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nvm_data, align 8
  %valid_tx_ant = getelementptr inbounds %struct.iwl_nvm_data, ptr %10, i32 0, i32 20
  %11 = ptrtoint ptr %valid_tx_ant to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %valid_tx_ant, align 1
  %conv.i = zext i8 %12 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and2.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %13 = select i1 %tobool3.not.i, i32 65536, i32 32768
  %conv = select i1 %tobool.not.i, i32 %13, i32 16384
  %arrayidx = getelementptr [13 x %struct.iwl_rate_info], ptr @iwl_rates, i32 0, i32 %r.0124
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %conv.i106 = zext i8 %15 to i32
  %or41 = or i32 %8, %conv.i106
  %or.i = or i32 %or41, %conv
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %arrayidx45 = getelementptr %struct.iwl_link_quality_cmd, ptr %link_cmd, i32 0, i32 5, i32 0
  %17 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %arrayidx45, align 1
  %arrayidx45.1 = getelementptr %struct.iwl_link_quality_cmd, ptr %link_cmd, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %arrayidx45.1 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %16, ptr %arrayidx45.1, align 1
  %arrayidx45.2 = getelementptr %struct.iwl_link_quality_cmd, ptr %link_cmd, i32 0, i32 5, i32 2
  %19 = ptrtoint ptr %arrayidx45.2 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %16, ptr %arrayidx45.2, align 1
  %arrayidx45.3 = getelementptr %struct.iwl_link_quality_cmd, ptr %link_cmd, i32 0, i32 5, i32 3
  %20 = ptrtoint ptr %arrayidx45.3 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %16, ptr %arrayidx45.3, align 1
  %arrayidx45.4 = getelementptr %struct.iwl_link_quality_cmd, ptr %link_cmd, i32 0, i32 5, i32 4
  %21 = ptrtoint ptr %arrayidx45.4 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %16, ptr %arrayidx45.4, align 1
  %arrayidx45.5 = getelementptr %struct.iwl_link_quality_cmd, ptr %link_cmd, i32 0, i32 5, i32 5
  %22 = ptrtoint ptr %arrayidx45.5 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %16, ptr %arrayidx45.5, align 1
  %arrayidx45.6 = getelementptr %struct.iwl_link_quality_cmd, ptr %link_cmd, i32 0, i32 5, i32 6
  %23 = ptrtoint ptr %arrayidx45.6 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %16, ptr %arrayidx45.6, align 1
  %arrayidx45.7 = getelementptr %struct.iwl_link_quality_cmd, ptr %link_cmd, i32 0, i32 5, i32 7
  %24 = ptrtoint ptr %arrayidx45.7 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %16, ptr %arrayidx45.7, align 1
  %arrayidx45.8 = getelementptr %struct.iwl_link_quality_cmd, ptr %link_cmd, i32 0, i32 5, i32 8
  %25 = ptrtoint ptr %arrayidx45.8 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %16, ptr %arrayidx45.8, align 1
  %arrayidx45.9 = getelementptr %struct.iwl_link_quality_cmd, ptr %link_cmd, i32 0, i32 5, i32 9
  %26 = ptrtoint ptr %arrayidx45.9 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %16, ptr %arrayidx45.9, align 1
  %arrayidx45.10 = getelementptr %struct.iwl_link_quality_cmd, ptr %link_cmd, i32 0, i32 5, i32 10
  %27 = ptrtoint ptr %arrayidx45.10 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %16, ptr %arrayidx45.10, align 1
  %arrayidx45.11 = getelementptr %struct.iwl_link_quality_cmd, ptr %link_cmd, i32 0, i32 5, i32 11
  %28 = ptrtoint ptr %arrayidx45.11 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %16, ptr %arrayidx45.11, align 1
  %arrayidx45.12 = getelementptr %struct.iwl_link_quality_cmd, ptr %link_cmd, i32 0, i32 5, i32 12
  %29 = ptrtoint ptr %arrayidx45.12 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %16, ptr %arrayidx45.12, align 1
  %arrayidx45.13 = getelementptr %struct.iwl_link_quality_cmd, ptr %link_cmd, i32 0, i32 5, i32 13
  %30 = ptrtoint ptr %arrayidx45.13 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %16, ptr %arrayidx45.13, align 1
  %arrayidx45.14 = getelementptr %struct.iwl_link_quality_cmd, ptr %link_cmd, i32 0, i32 5, i32 14
  %31 = ptrtoint ptr %arrayidx45.14 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %16, ptr %arrayidx45.14, align 1
  %arrayidx45.15 = getelementptr %struct.iwl_link_quality_cmd, ptr %link_cmd, i32 0, i32 5, i32 15
  %32 = ptrtoint ptr %arrayidx45.15 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %16, ptr %arrayidx45.15, align 1
  %33 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %nvm_data, align 8
  %valid_tx_ant48 = getelementptr inbounds %struct.iwl_nvm_data, ptr %34, i32 0, i32 20
  %35 = ptrtoint ptr %valid_tx_ant48 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %valid_tx_ant48, align 1
  %conv.i107 = zext i8 %36 to i32
  %and.i108 = and i32 %conv.i107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i108)
  %tobool.not.i109 = icmp eq i32 %and.i108, 0
  %and2.i110 = and i32 %conv.i107, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i110)
  %tobool3.not.i111 = icmp eq i32 %and2.i110, 0
  %..i112 = select i1 %tobool3.not.i111, i8 4, i8 2
  %retval.0.i113 = select i1 %tobool.not.i109, i8 %..i112, i8 1
  %single_stream_ant_msk = getelementptr inbounds %struct.iwl_link_quality_cmd, ptr %link_cmd, i32 0, i32 3, i32 2
  %37 = ptrtoint ptr %single_stream_ant_msk to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %retval.0.i113, ptr %single_stream_ant_msk, align 1
  %38 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %nvm_data, align 8
  %valid_tx_ant51 = getelementptr inbounds %struct.iwl_nvm_data, ptr %39, i32 0, i32 20
  %40 = ptrtoint ptr %valid_tx_ant51 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %valid_tx_ant51, align 1
  %conv.i114 = zext i8 %41 to i32
  %and.i115 = and i32 %conv.i114, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i115)
  %tobool.not.i116 = icmp eq i32 %and.i115, 0
  %and2.i117 = and i32 %conv.i114, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i117)
  %tobool3.not.i118 = icmp eq i32 %and2.i117, 0
  %..i119.op = select i1 %tobool3.not.i118, i8 -5, i8 -3
  %neg = select i1 %tobool.not.i116, i8 %..i119.op, i8 -2
  %and = and i8 %neg, %41
  %dual_stream_ant_msk = getelementptr inbounds %struct.iwl_link_quality_cmd, ptr %link_cmd, i32 0, i32 3, i32 3
  %42 = ptrtoint ptr %dual_stream_ant_msk to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %and, ptr %dual_stream_ant_msk, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and)
  %tobool61.not = icmp eq i8 %and, 0
  br i1 %tobool61.not, label %land.lhs.true36.if.end78.sink.split_crit_edge, label %if.else65

land.lhs.true36.if.end78.sink.split_crit_edge:    ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78.sink.split

if.else65:                                        ; preds = %land.lhs.true36
  %43 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %nvm_data, align 8
  %valid_tx_ant67 = getelementptr inbounds %struct.iwl_nvm_data, ptr %44, i32 0, i32 20
  %45 = ptrtoint ptr %valid_tx_ant67 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %valid_tx_ant67, align 1
  %and.i121 = and i8 %46, 1
  %and3.i = lshr i8 %46, 1
  %and3.lobit.i = and i8 %and3.i, 1
  %add.i = add nuw nsw i8 %and3.lobit.i, %and.i121
  %and10.i = lshr i8 %46, 2
  %and10.lobit.i = and i8 %and10.i, 1
  %add16.i = add nuw nsw i8 %add.i, %and10.lobit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %add16.i)
  %cmp70 = icmp eq i8 %add16.i, 2
  br i1 %cmp70, label %if.else65.if.end78.sink.split_crit_edge, label %if.else65.if.end78_crit_edge

if.else65.if.end78_crit_edge:                     ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.else65.if.end78.sink.split_crit_edge:          ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78.sink.split

if.end78.sink.split:                              ; preds = %if.else65.if.end78.sink.split_crit_edge, %land.lhs.true36.if.end78.sink.split_crit_edge
  %.sink = phi i8 [ 3, %land.lhs.true36.if.end78.sink.split_crit_edge ], [ %46, %if.else65.if.end78.sink.split_crit_edge ]
  %47 = ptrtoint ptr %dual_stream_ant_msk to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %.sink, ptr %dual_stream_ant_msk, align 1
  br label %if.end78

if.end78:                                         ; preds = %if.end78.sink.split, %if.else65.if.end78_crit_edge
  %agg_params = getelementptr inbounds %struct.iwl_link_quality_cmd, ptr %link_cmd, i32 0, i32 4
  %agg_dis_start_th = getelementptr inbounds %struct.iwl_link_quality_cmd, ptr %link_cmd, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %agg_dis_start_th to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 3, ptr %agg_dis_start_th, align 1
  %49 = ptrtoint ptr %agg_params to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 -24561, ptr %agg_params, align 1
  %50 = ptrtoint ptr %link_cmd to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %sta_id, ptr %link_cmd, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_send_lq_cmd(ptr noundef %priv, ptr nocapture noundef readonly %ctx, ptr noundef %lq, i8 noundef zeroext %flags, i1 noundef zeroext %init) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd) #7
  %0 = getelementptr inbounds i8, ptr %cmd, i32 32
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !168
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %lq, ptr %cmd, align 4
  %arrayinit.cur.ptr = getelementptr inbounds ptr, ptr %cmd, i32 1
  %flags2 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 4
  %conv = zext i8 %flags to i32
  %3 = call ptr @memset(ptr %arrayinit.cur.ptr, i32 0, i32 16)
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %flags2, align 4
  %id = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 5
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 78, ptr %id, align 4
  %len = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 88, ptr %len, align 4
  %arrayinit.start4 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %arrayinit.start4 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %arrayinit.start4, align 2
  %arrayinit.end5 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 7
  %8 = ptrtoint ptr %arrayinit.end5 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %arrayinit.end5, align 4
  %9 = ptrtoint ptr %lq to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %lq, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %cmp = icmp eq i8 %10, -1
  br i1 %cmp, label %do.end, label %if.end33, !prof !169

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 826, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end33:                                         ; preds = %entry
  %sta_lock = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 6
  call void @_raw_spin_lock_bh(ptr noundef %sta_lock) #7
  %11 = ptrtoint ptr %lq to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %lq, align 1
  %idxprom = zext i8 %12 to i32
  %used = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %idxprom, i32 1
  %13 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %used, align 4
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool36.not = icmp eq i8 %15, 0
  call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #7
  br i1 %tobool36.not, label %if.end33.cleanup_crit_edge, label %if.end39

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end39:                                         ; preds = %if.end33
  %dev.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %18 = ptrtoint ptr %lq to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %lq, align 1
  %conv.i = zext i8 %19 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %17, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dump_lq_cmd, ptr noundef nonnull @.str.61, i32 noundef %conv.i) #7
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %single_stream_ant_msk.i = getelementptr inbounds %struct.iwl_link_quality_cmd, ptr %lq, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %single_stream_ant_msk.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %single_stream_ant_msk.i, align 1
  %conv9.i = zext i8 %23 to i32
  %dual_stream_ant_msk.i = getelementptr inbounds %struct.iwl_link_quality_cmd, ptr %lq, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %dual_stream_ant_msk.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dual_stream_ant_msk.i, align 1
  %conv11.i = zext i8 %25 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %21, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dump_lq_cmd, ptr noundef nonnull @.str.62, i32 noundef %conv9.i, i32 noundef %conv11.i) #7
  br label %do.end18.i

do.end18.i:                                       ; preds = %do.end18.i.do.end18.i_crit_edge, %if.end39
  %i.030.i = phi i32 [ 0, %if.end39 ], [ %inc.i, %do.end18.i.do.end18.i_crit_edge ]
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %arrayidx.i = getelementptr %struct.iwl_link_quality_cmd, ptr %lq, i32 0, i32 5, i32 %i.030.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %arrayidx.i, align 1
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %27, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_dump_lq_cmd, ptr noundef nonnull @.str.63, i32 noundef %i.030.i, i32 noundef %29) #7
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %iwl_dump_lq_cmd.exit, label %do.end18.i.do.end18.i_crit_edge

do.end18.i.do.end18.i_crit_edge:                  ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18.i

iwl_dump_lq_cmd.exit:                             ; preds = %do.end18.i
  br i1 %init, label %land.rhs, label %iwl_dump_lq_cmd.exit.if.end78_crit_edge

iwl_dump_lq_cmd.exit.if.end78_crit_edge:          ; preds = %iwl_dump_lq_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

land.rhs:                                         ; preds = %iwl_dump_lq_cmd.exit
  %30 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags2, align 4
  %and45 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %land.rhs.if.end78_crit_edge, label %do.end62, !prof !171

land.rhs.if.end78_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

do.end62:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 838, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end78:                                         ; preds = %land.rhs.if.end78_crit_edge, %iwl_dump_lq_cmd.exit.if.end78_crit_edge
  %enabled.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 29, i32 2
  %32 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %enabled.i, align 2, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end78.if.then79_crit_edge

if.end78.if.then79_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then79

do.end.i:                                         ; preds = %if.end78
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  %channel.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 14, i32 14
  %36 = ptrtoint ptr %channel.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %channel.i, align 4
  %conv.i130 = zext i16 %37 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %35, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.is_lq_table_valid, ptr noundef nonnull @.str.64, i32 noundef %conv.i130) #7
  %arrayidx.i131 = getelementptr %struct.iwl_link_quality_cmd, ptr %lq, i32 0, i32 5, i32 0
  %38 = ptrtoint ptr %arrayidx.i131 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %arrayidx.i131, align 1
  %40 = and i32 %39, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool5.not.i = icmp eq i32 %40, 0
  br i1 %tobool5.not.i, label %for.inc.i, label %do.end.i.is_lq_table_valid.exit_crit_edge

do.end.i.is_lq_table_valid.exit_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_lq_table_valid.exit

for.inc.i:                                        ; preds = %do.end.i
  %arrayidx.1.i = getelementptr %struct.iwl_link_quality_cmd, ptr %lq, i32 0, i32 5, i32 1
  %41 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %arrayidx.1.i, align 1
  %43 = and i32 %42, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool5.not.1.i = icmp eq i32 %43, 0
  br i1 %tobool5.not.1.i, label %for.inc.1.i, label %for.inc.i.is_lq_table_valid.exit_crit_edge

for.inc.i.is_lq_table_valid.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_lq_table_valid.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.iwl_link_quality_cmd, ptr %lq, i32 0, i32 5, i32 2
  %44 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %arrayidx.2.i, align 1
  %46 = and i32 %45, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool5.not.2.i = icmp eq i32 %46, 0
  br i1 %tobool5.not.2.i, label %for.inc.2.i, label %for.inc.1.i.is_lq_table_valid.exit_crit_edge

for.inc.1.i.is_lq_table_valid.exit_crit_edge:     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_lq_table_valid.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr %struct.iwl_link_quality_cmd, ptr %lq, i32 0, i32 5, i32 3
  %47 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %arrayidx.3.i, align 1
  %49 = and i32 %48, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool5.not.3.i = icmp eq i32 %49, 0
  br i1 %tobool5.not.3.i, label %for.inc.3.i, label %for.inc.2.i.is_lq_table_valid.exit_crit_edge

for.inc.2.i.is_lq_table_valid.exit_crit_edge:     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_lq_table_valid.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %arrayidx.4.i = getelementptr %struct.iwl_link_quality_cmd, ptr %lq, i32 0, i32 5, i32 4
  %50 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %arrayidx.4.i, align 1
  %52 = and i32 %51, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool5.not.4.i = icmp eq i32 %52, 0
  br i1 %tobool5.not.4.i, label %for.inc.4.i, label %for.inc.3.i.is_lq_table_valid.exit_crit_edge

for.inc.3.i.is_lq_table_valid.exit_crit_edge:     ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_lq_table_valid.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %arrayidx.5.i = getelementptr %struct.iwl_link_quality_cmd, ptr %lq, i32 0, i32 5, i32 5
  %53 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %arrayidx.5.i, align 1
  %55 = and i32 %54, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool5.not.5.i = icmp eq i32 %55, 0
  br i1 %tobool5.not.5.i, label %for.inc.5.i, label %for.inc.4.i.is_lq_table_valid.exit_crit_edge

for.inc.4.i.is_lq_table_valid.exit_crit_edge:     ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_lq_table_valid.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %arrayidx.6.i = getelementptr %struct.iwl_link_quality_cmd, ptr %lq, i32 0, i32 5, i32 6
  %56 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %arrayidx.6.i, align 1
  %58 = and i32 %57, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool5.not.6.i = icmp eq i32 %58, 0
  br i1 %tobool5.not.6.i, label %for.inc.6.i, label %for.inc.5.i.is_lq_table_valid.exit_crit_edge

for.inc.5.i.is_lq_table_valid.exit_crit_edge:     ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_lq_table_valid.exit

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %arrayidx.7.i = getelementptr %struct.iwl_link_quality_cmd, ptr %lq, i32 0, i32 5, i32 7
  %59 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %arrayidx.7.i, align 1
  %61 = and i32 %60, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool5.not.7.i = icmp eq i32 %61, 0
  br i1 %tobool5.not.7.i, label %for.inc.7.i, label %for.inc.6.i.is_lq_table_valid.exit_crit_edge

for.inc.6.i.is_lq_table_valid.exit_crit_edge:     ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_lq_table_valid.exit

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %arrayidx.8.i = getelementptr %struct.iwl_link_quality_cmd, ptr %lq, i32 0, i32 5, i32 8
  %62 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %arrayidx.8.i, align 1
  %64 = and i32 %63, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool5.not.8.i = icmp eq i32 %64, 0
  br i1 %tobool5.not.8.i, label %for.inc.8.i, label %for.inc.7.i.is_lq_table_valid.exit_crit_edge

for.inc.7.i.is_lq_table_valid.exit_crit_edge:     ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_lq_table_valid.exit

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %arrayidx.9.i = getelementptr %struct.iwl_link_quality_cmd, ptr %lq, i32 0, i32 5, i32 9
  %65 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %arrayidx.9.i, align 1
  %67 = and i32 %66, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool5.not.9.i = icmp eq i32 %67, 0
  br i1 %tobool5.not.9.i, label %for.inc.9.i, label %for.inc.8.i.is_lq_table_valid.exit_crit_edge

for.inc.8.i.is_lq_table_valid.exit_crit_edge:     ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_lq_table_valid.exit

for.inc.9.i:                                      ; preds = %for.inc.8.i
  %arrayidx.10.i = getelementptr %struct.iwl_link_quality_cmd, ptr %lq, i32 0, i32 5, i32 10
  %68 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %arrayidx.10.i, align 1
  %70 = and i32 %69, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool5.not.10.i = icmp eq i32 %70, 0
  br i1 %tobool5.not.10.i, label %for.inc.10.i, label %for.inc.9.i.is_lq_table_valid.exit_crit_edge

for.inc.9.i.is_lq_table_valid.exit_crit_edge:     ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_lq_table_valid.exit

for.inc.10.i:                                     ; preds = %for.inc.9.i
  %arrayidx.11.i = getelementptr %struct.iwl_link_quality_cmd, ptr %lq, i32 0, i32 5, i32 11
  %71 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %arrayidx.11.i, align 1
  %73 = and i32 %72, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool5.not.11.i = icmp eq i32 %73, 0
  br i1 %tobool5.not.11.i, label %for.inc.11.i, label %for.inc.10.i.is_lq_table_valid.exit_crit_edge

for.inc.10.i.is_lq_table_valid.exit_crit_edge:    ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_lq_table_valid.exit

for.inc.11.i:                                     ; preds = %for.inc.10.i
  %arrayidx.12.i = getelementptr %struct.iwl_link_quality_cmd, ptr %lq, i32 0, i32 5, i32 12
  %74 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %arrayidx.12.i, align 1
  %76 = and i32 %75, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool5.not.12.i = icmp eq i32 %76, 0
  br i1 %tobool5.not.12.i, label %for.inc.12.i, label %for.inc.11.i.is_lq_table_valid.exit_crit_edge

for.inc.11.i.is_lq_table_valid.exit_crit_edge:    ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_lq_table_valid.exit

for.inc.12.i:                                     ; preds = %for.inc.11.i
  %arrayidx.13.i = getelementptr %struct.iwl_link_quality_cmd, ptr %lq, i32 0, i32 5, i32 13
  %77 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %arrayidx.13.i, align 1
  %79 = and i32 %78, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool5.not.13.i = icmp eq i32 %79, 0
  br i1 %tobool5.not.13.i, label %for.inc.13.i, label %for.inc.12.i.is_lq_table_valid.exit_crit_edge

for.inc.12.i.is_lq_table_valid.exit_crit_edge:    ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_lq_table_valid.exit

for.inc.13.i:                                     ; preds = %for.inc.12.i
  %arrayidx.14.i = getelementptr %struct.iwl_link_quality_cmd, ptr %lq, i32 0, i32 5, i32 14
  %80 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %arrayidx.14.i, align 1
  %82 = and i32 %81, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool5.not.14.i = icmp eq i32 %82, 0
  br i1 %tobool5.not.14.i, label %for.inc.14.i, label %for.inc.13.i.is_lq_table_valid.exit_crit_edge

for.inc.13.i.is_lq_table_valid.exit_crit_edge:    ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_lq_table_valid.exit

for.inc.14.i:                                     ; preds = %for.inc.13.i
  %arrayidx.15.i = getelementptr %struct.iwl_link_quality_cmd, ptr %lq, i32 0, i32 5, i32 15
  %83 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %arrayidx.15.i, align 1
  %85 = and i32 %84, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool5.not.15.i = icmp eq i32 %85, 0
  br i1 %tobool5.not.15.i, label %for.inc.14.i.if.then79_crit_edge, label %for.inc.14.i.is_lq_table_valid.exit_crit_edge

for.inc.14.i.is_lq_table_valid.exit_crit_edge:    ; preds = %for.inc.14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_lq_table_valid.exit

for.inc.14.i.if.then79_crit_edge:                 ; preds = %for.inc.14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then79

is_lq_table_valid.exit:                           ; preds = %for.inc.14.i.is_lq_table_valid.exit_crit_edge, %for.inc.13.i.is_lq_table_valid.exit_crit_edge, %for.inc.12.i.is_lq_table_valid.exit_crit_edge, %for.inc.11.i.is_lq_table_valid.exit_crit_edge, %for.inc.10.i.is_lq_table_valid.exit_crit_edge, %for.inc.9.i.is_lq_table_valid.exit_crit_edge, %for.inc.8.i.is_lq_table_valid.exit_crit_edge, %for.inc.7.i.is_lq_table_valid.exit_crit_edge, %for.inc.6.i.is_lq_table_valid.exit_crit_edge, %for.inc.5.i.is_lq_table_valid.exit_crit_edge, %for.inc.4.i.is_lq_table_valid.exit_crit_edge, %for.inc.3.i.is_lq_table_valid.exit_crit_edge, %for.inc.2.i.is_lq_table_valid.exit_crit_edge, %for.inc.1.i.is_lq_table_valid.exit_crit_edge, %for.inc.i.is_lq_table_valid.exit_crit_edge, %do.end.i.is_lq_table_valid.exit_crit_edge
  %i.021.lcssa.i = phi i32 [ 0, %do.end.i.is_lq_table_valid.exit_crit_edge ], [ 1, %for.inc.i.is_lq_table_valid.exit_crit_edge ], [ 2, %for.inc.1.i.is_lq_table_valid.exit_crit_edge ], [ 3, %for.inc.2.i.is_lq_table_valid.exit_crit_edge ], [ 4, %for.inc.3.i.is_lq_table_valid.exit_crit_edge ], [ 5, %for.inc.4.i.is_lq_table_valid.exit_crit_edge ], [ 6, %for.inc.5.i.is_lq_table_valid.exit_crit_edge ], [ 7, %for.inc.6.i.is_lq_table_valid.exit_crit_edge ], [ 8, %for.inc.7.i.is_lq_table_valid.exit_crit_edge ], [ 9, %for.inc.8.i.is_lq_table_valid.exit_crit_edge ], [ 10, %for.inc.9.i.is_lq_table_valid.exit_crit_edge ], [ 11, %for.inc.10.i.is_lq_table_valid.exit_crit_edge ], [ 12, %for.inc.11.i.is_lq_table_valid.exit_crit_edge ], [ 13, %for.inc.12.i.is_lq_table_valid.exit_crit_edge ], [ 14, %for.inc.13.i.is_lq_table_valid.exit_crit_edge ], [ 15, %for.inc.14.i.is_lq_table_valid.exit_crit_edge ]
  %86 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev.i, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %87, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.is_lq_table_valid, ptr noundef nonnull @.str.65, i32 noundef %i.021.lcssa.i) #7
  br label %if.end81

if.then79:                                        ; preds = %for.inc.14.i.if.then79_crit_edge, %if.end78.if.then79_crit_edge
  %call80 = call i32 @iwl_dvm_send_cmd(ptr noundef %priv, ptr noundef nonnull %cmd) #7
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %is_lq_table_valid.exit
  %ret.0 = phi i32 [ %call80, %if.then79 ], [ -22, %is_lq_table_valid.exit ]
  %88 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flags2, align 4
  %and83 = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  %90 = and i1 %tobool84.not, %init
  br i1 %90, label %do.end92, label %if.end81.cleanup_crit_edge

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end92:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i, align 4
  %93 = ptrtoint ptr %lq to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %lq, align 1
  %conv94 = zext i8 %94 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %92, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_send_lq_cmd, ptr noundef nonnull @.str.24, i32 noundef %conv94) #7
  call void @_raw_spin_lock_bh(ptr noundef %sta_lock) #7
  %95 = ptrtoint ptr %lq to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %lq, align 1
  %idxprom100 = zext i8 %96 to i32
  %used102 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %idxprom100, i32 1
  %97 = ptrtoint ptr %used102 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %used102, align 4
  %99 = and i8 %98, -5
  store i8 %99, ptr %used102, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end92, %if.end81.cleanup_crit_edge, %do.end62, %if.end33.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end62 ], [ %ret.0, %if.end81.cleanup_crit_edge ], [ %ret.0, %do.end92 ], [ -22, %if.end33.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_get_free_ucode_key_offset(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ucode_key_table = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 64
  %sta_key_max_num = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 46
  %0 = ptrtoint ptr %sta_key_max_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sta_key_max_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp7.not = icmp eq i8 %1, 0
  br i1 %cmp7.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call i32 @_test_and_set_bit(i32 noundef %i.08, ptr noundef %ucode_key_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.08, 1
  %2 = ptrtoint ptr %sta_key_max_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sta_key_max_num, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 255, %entry.cleanup_crit_edge ], [ 255, %for.inc.cleanup_crit_edge ], [ %i.08, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_dealloc_bcast_stations(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sta_lock = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_lock) #7
  %num_stations = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 62
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.055 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %used = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %i.055, i32 1
  %0 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %used, align 4
  %2 = and i8 %1, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %and5 = and i8 %1, -3
  %3 = ptrtoint ptr %used to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %and5, ptr %used, align 4
  %4 = ptrtoint ptr %num_stations to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_stations, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %num_stations, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp8 = icmp slt i32 %dec, 0
  br i1 %cmp8, label %do.end, label %if.end.if.end34_crit_edge, !prof !169

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 742, i32 noundef 9, ptr noundef null) #7
  %6 = ptrtoint ptr %num_stations to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %num_stations, align 4
  br label %if.end34

if.end34:                                         ; preds = %do.end, %if.end.if.end34_crit_edge
  %lq = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %i.055, i32 3
  %7 = ptrtoint ptr %lq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lq, align 4
  tail call void @kfree(ptr noundef %8) #7
  %9 = ptrtoint ptr %lq to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %lq, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end34, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwlagn_add_bssid_station(ptr noundef %priv, ptr noundef %ctx, ptr noundef %addr, ptr noundef writeonly %sta_id_r) local_unnamed_addr #0 align 64 {
entry:
  %sta_id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sta_id) #7
  %0 = ptrtoint ptr %sta_id to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %sta_id, align 1, !annotation !168
  %tobool.not = icmp eq ptr %sta_id_r, null
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %call = call i32 @iwl_add_station_common(ptr noundef %priv, ptr noundef %ctx, ptr noundef %addr, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull %sta_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.if.end9_crit_edge, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end.thread:                                    ; preds = %entry
  %1 = ptrtoint ptr %sta_id_r to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %sta_id_r, align 1
  %call64 = call i32 @iwl_add_station_common(ptr noundef %priv, ptr noundef %ctx, ptr noundef %addr, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull %sta_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool1.not65 = icmp eq i32 %call64, 0
  br i1 %tobool1.not65, label %if.then8, label %if.end.thread.do.end_crit_edge

if.end.thread.do.end_crit_edge:                   ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %if.end.thread.do.end_crit_edge, %if.end.do.end_crit_edge
  %call66 = phi i32 [ %call64, %if.end.thread.do.end_crit_edge ], [ %call, %if.end.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %3, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef %addr) #7
  br label %cleanup

if.then8:                                         ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %sta_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sta_id, align 1
  %6 = ptrtoint ptr %sta_id_r to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %sta_id_r, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %sta_lock = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_lock) #7
  %7 = ptrtoint ptr %sta_id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sta_id, align 1
  %idxprom = zext i8 %8 to i32
  %used = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %idxprom, i32 1
  %9 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %used, align 4
  %11 = or i8 %10, 8
  store i8 %11, ptr %used, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 88) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end18, label %if.end22

do.end18:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %14, i32 noundef 0, ptr noundef nonnull @.str.66) #7
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %16, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef %addr) #7
  br label %cleanup

if.end22:                                         ; preds = %if.end9
  tail call fastcc void @iwl_sta_fill_lq(ptr noundef %priv, ptr noundef %ctx, i8 noundef zeroext %8, ptr noundef nonnull %call7.i.i.i) #7
  %call23 = tail call i32 @iwl_send_lq_cmd(ptr noundef %priv, ptr noundef %ctx, ptr noundef nonnull %call7.i.i.i, i8 noundef zeroext 0, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.if.end33_crit_edge, label %do.end29

if.end22.if.end33_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %dev30 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %17 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev30, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %18, i32 noundef 0, ptr noundef nonnull @.str.27, i32 noundef %call23) #7
  br label %if.end33

if.end33:                                         ; preds = %do.end29, %if.end22.if.end33_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_lock) #7
  %lq = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %idxprom, i32 3
  %19 = ptrtoint ptr %lq to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i.i, ptr %lq, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %do.end18, %do.end
  %retval.0 = phi i32 [ %call66, %do.end ], [ 0, %if.end33 ], [ -12, %do.end18 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sta_id) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_restore_default_wep_keys(ptr noundef %priv, ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !169

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 984, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %call24 = tail call fastcc i32 @iwl_send_static_wepkey_cmd(ptr noundef %priv, ptr noundef %ctx, i1 noundef zeroext false)
  ret i32 %call24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_send_static_wepkey_cmd(ptr noundef %priv, ptr nocapture noundef readonly %ctx, i1 noundef zeroext %send_if_empty) unnamed_addr #0 align 64 {
entry:
  %buff = alloca [100 x i8], align 1
  %cmd = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buff) #7
  %0 = call ptr @memset(ptr %buff, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd) #7
  %1 = getelementptr inbounds i8, ptr %cmd, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 32)
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %buff, ptr %cmd, align 4
  %id = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 5
  %wep_key_cmd = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 24
  %4 = ptrtoint ptr %wep_key_cmd to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wep_key_cmd, align 2
  %conv = zext i8 %5 to i32
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %id, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 949) #7
  %key_size = getelementptr %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 25, i32 0, i32 3
  %7 = getelementptr inbounds i8, ptr %buff, i32 2
  %8 = call ptr @memset(ptr %7, i32 0, i32 98)
  %9 = ptrtoint ptr %key_size to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %key_size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %spec.select = sext i1 %tobool.not to i8
  %11 = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff, i32 0, i32 4, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %spec.select, ptr %11, align 1
  %key_size18 = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff, i32 0, i32 4, i32 0, i32 3
  %13 = ptrtoint ptr %key_size18 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %10, ptr %key_size18, align 1
  %arrayidx22 = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff, i32 0, i32 4, i32 0, i32 5, i32 3
  %key25 = getelementptr %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 25, i32 0, i32 5
  %conv30 = zext i8 %10 to i32
  %14 = call ptr @memcpy(ptr %arrayidx22, ptr %key25, i32 %conv30)
  %arrayidx.1 = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %arrayidx.1, align 1
  %key_size.1 = getelementptr %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 25, i32 1, i32 3
  %16 = ptrtoint ptr %key_size.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %key_size.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.1 = icmp eq i8 %17, 0
  %.sink73 = select i1 %tobool.not.1, i8 -1, i8 1
  %18 = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff, i32 0, i32 4, i32 1, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %.sink73, ptr %18, align 1
  %key_size18.1 = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff, i32 0, i32 4, i32 1, i32 3
  %20 = ptrtoint ptr %key_size18.1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %17, ptr %key_size18.1, align 1
  %arrayidx22.1 = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff, i32 0, i32 4, i32 1, i32 5, i32 3
  %key25.1 = getelementptr %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 25, i32 1, i32 5
  %conv30.1 = zext i8 %17 to i32
  %21 = call ptr @memcpy(ptr %arrayidx22.1, ptr %key25.1, i32 %conv30.1)
  %arrayidx.2 = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff, i32 0, i32 4, i32 2
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 2, ptr %arrayidx.2, align 1
  %key_size.2 = getelementptr %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 25, i32 2, i32 3
  %23 = ptrtoint ptr %key_size.2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %key_size.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.2 = icmp eq i8 %24, 0
  %.sink74 = select i1 %tobool.not.2, i8 -1, i8 2
  %25 = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff, i32 0, i32 4, i32 2, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %.sink74, ptr %25, align 1
  %key_size18.2 = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff, i32 0, i32 4, i32 2, i32 3
  %27 = ptrtoint ptr %key_size18.2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %24, ptr %key_size18.2, align 1
  %arrayidx22.2 = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff, i32 0, i32 4, i32 2, i32 5, i32 3
  %key25.2 = getelementptr %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 25, i32 2, i32 5
  %conv30.2 = zext i8 %24 to i32
  %28 = call ptr @memcpy(ptr %arrayidx22.2, ptr %key25.2, i32 %conv30.2)
  %arrayidx.3 = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff, i32 0, i32 4, i32 3
  %29 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 3, ptr %arrayidx.3, align 1
  %key_size.3 = getelementptr %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 25, i32 3, i32 3
  %30 = ptrtoint ptr %key_size.3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %key_size.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.3 = icmp eq i8 %31, 0
  %.sink75 = select i1 %tobool.not.3, i8 -1, i8 3
  %32 = select i1 %tobool.not.3, i1 %tobool.not.2, i1 false
  %33 = select i1 %32, i1 %tobool.not.1, i1 false
  %34 = select i1 %33, i1 %tobool.not, i1 false
  %narrow = xor i1 %34, true
  %35 = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff, i32 0, i32 4, i32 3, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %.sink75, ptr %35, align 1
  %key_size18.3 = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff, i32 0, i32 4, i32 3, i32 3
  %37 = ptrtoint ptr %key_size18.3 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %31, ptr %key_size18.3, align 1
  %arrayidx22.3 = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff, i32 0, i32 4, i32 3, i32 5, i32 3
  %key25.3 = getelementptr %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 25, i32 3, i32 5
  %conv30.3 = zext i8 %31 to i32
  %38 = call ptr @memcpy(ptr %arrayidx22.3, ptr %key25.3, i32 %conv30.3)
  %global_key_type = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff, i32 0, i32 1
  %39 = ptrtoint ptr %global_key_type to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %global_key_type, align 1
  %40 = ptrtoint ptr %buff to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 4, ptr %buff, align 1
  %len = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 6
  %41 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 100, ptr %len, align 4
  %brmerge = or i1 %narrow, %send_if_empty
  br i1 %brmerge, label %if.then37, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then37:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 @iwl_dvm_send_cmd(ptr noundef %priv, ptr noundef nonnull %cmd) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then37 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd) #7
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buff) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_remove_default_wep_key(ptr noundef %priv, ptr nocapture noundef %ctx, ptr nocapture noundef readonly %keyconf) local_unnamed_addr #0 align 64 {
entry:
  %buff.i = alloca [100 x i8], align 1
  %cmd.i = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !169

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 995, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 5
  %3 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %keyidx, align 1
  %conv = sext i8 %4 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %2, i32 noundef 4194304, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_remove_default_wep_key, ptr noundef nonnull @.str.28, i32 noundef %conv) #7
  %5 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %keyidx, align 1
  %idxprom = sext i8 %6 to i32
  %arrayidx = getelementptr %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 25, i32 %idxprom
  %7 = call ptr @memset(ptr %arrayidx, i32 0, i32 24)
  %status.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  %8 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool32.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool32.not, label %if.end41, label %do.end37

do.end37:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %11, i32 noundef 4194304, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_remove_default_wep_key, ptr noundef nonnull @.str.29) #7
  br label %cleanup

if.end41:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %buff.i) #7
  %12 = call ptr @memset(ptr %buff.i, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i) #7
  %13 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 32)
  %15 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buff.i, ptr %cmd.i, align 4
  %id.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 5
  %wep_key_cmd.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 24
  %16 = ptrtoint ptr %wep_key_cmd.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %wep_key_cmd.i, align 2
  %conv.i = zext i8 %17 to i32
  %18 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv.i, ptr %id.i, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 949) #7
  %key_size.i = getelementptr %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 25, i32 0, i32 3
  %19 = getelementptr inbounds i8, ptr %buff.i, i32 2
  %20 = call ptr @memset(ptr %19, i32 0, i32 98)
  %21 = ptrtoint ptr %key_size.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %key_size.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  %spec.select.i = sext i1 %tobool.not.i to i8
  %23 = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff.i, i32 0, i32 4, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %spec.select.i, ptr %23, align 1
  %key_size18.i = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff.i, i32 0, i32 4, i32 0, i32 3
  %25 = ptrtoint ptr %key_size18.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %22, ptr %key_size18.i, align 1
  %arrayidx22.i = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff.i, i32 0, i32 4, i32 0, i32 5, i32 3
  %key25.i = getelementptr %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 25, i32 0, i32 5
  %conv30.i = zext i8 %22 to i32
  %26 = call ptr @memcpy(ptr %arrayidx22.i, ptr %key25.i, i32 %conv30.i)
  %arrayidx.1.i = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff.i, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %arrayidx.1.i, align 1
  %key_size.1.i = getelementptr %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 25, i32 1, i32 3
  %28 = ptrtoint ptr %key_size.1.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %key_size.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.1.i = icmp eq i8 %29, 0
  %.sink73.i = select i1 %tobool.not.1.i, i8 -1, i8 1
  %30 = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff.i, i32 0, i32 4, i32 1, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %.sink73.i, ptr %30, align 1
  %key_size18.1.i = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff.i, i32 0, i32 4, i32 1, i32 3
  %32 = ptrtoint ptr %key_size18.1.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %29, ptr %key_size18.1.i, align 1
  %arrayidx22.1.i = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff.i, i32 0, i32 4, i32 1, i32 5, i32 3
  %key25.1.i = getelementptr %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 25, i32 1, i32 5
  %conv30.1.i = zext i8 %29 to i32
  %33 = call ptr @memcpy(ptr %arrayidx22.1.i, ptr %key25.1.i, i32 %conv30.1.i)
  %arrayidx.2.i = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff.i, i32 0, i32 4, i32 2
  %34 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 2, ptr %arrayidx.2.i, align 1
  %key_size.2.i = getelementptr %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 25, i32 2, i32 3
  %35 = ptrtoint ptr %key_size.2.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %key_size.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.2.i = icmp eq i8 %36, 0
  %.sink74.i = select i1 %tobool.not.2.i, i8 -1, i8 2
  %37 = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff.i, i32 0, i32 4, i32 2, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %.sink74.i, ptr %37, align 1
  %key_size18.2.i = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff.i, i32 0, i32 4, i32 2, i32 3
  %39 = ptrtoint ptr %key_size18.2.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %36, ptr %key_size18.2.i, align 1
  %arrayidx22.2.i = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff.i, i32 0, i32 4, i32 2, i32 5, i32 3
  %key25.2.i = getelementptr %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 25, i32 2, i32 5
  %conv30.2.i = zext i8 %36 to i32
  %40 = call ptr @memcpy(ptr %arrayidx22.2.i, ptr %key25.2.i, i32 %conv30.2.i)
  %arrayidx.3.i = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff.i, i32 0, i32 4, i32 3
  %41 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 3, ptr %arrayidx.3.i, align 1
  %key_size.3.i = getelementptr %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 25, i32 3, i32 3
  %42 = ptrtoint ptr %key_size.3.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %key_size.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.3.i = icmp eq i8 %43, 0
  %.sink75.i = select i1 %tobool.not.3.i, i8 -1, i8 3
  %44 = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff.i, i32 0, i32 4, i32 3, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %.sink75.i, ptr %44, align 1
  %key_size18.3.i = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff.i, i32 0, i32 4, i32 3, i32 3
  %46 = ptrtoint ptr %key_size18.3.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %43, ptr %key_size18.3.i, align 1
  %arrayidx22.3.i = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff.i, i32 0, i32 4, i32 3, i32 5, i32 3
  %key25.3.i = getelementptr %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 25, i32 3, i32 5
  %conv30.3.i = zext i8 %43 to i32
  %47 = call ptr @memcpy(ptr %arrayidx22.3.i, ptr %key25.3.i, i32 %conv30.3.i)
  %global_key_type.i = getelementptr inbounds %struct.iwl_wep_cmd, ptr %buff.i, i32 0, i32 1
  %48 = ptrtoint ptr %global_key_type.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %global_key_type.i, align 1
  %49 = ptrtoint ptr %buff.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 4, ptr %buff.i, align 1
  %len.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6
  %50 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 100, ptr %len.i, align 4
  %call.i62 = call i32 @iwl_dvm_send_cmd(ptr noundef %priv, ptr noundef nonnull %cmd.i) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i) #7
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %buff.i) #7
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  %53 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %keyidx, align 1
  %conv49 = sext i8 %54 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %52, i32 noundef 4194304, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_remove_default_wep_key, ptr noundef nonnull @.str.30, i32 noundef %conv49, i32 noundef %call.i62) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end37
  %retval.0 = phi i32 [ 0, %do.end37 ], [ %call.i62, %if.end41 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_set_default_wep_key(ptr noundef %priv, ptr nocapture noundef %ctx, ptr nocapture noundef %keyconf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !169

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1020, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %keylen = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 7
  %1 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %keylen, align 2
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.68)
  switch i8 %2, label %do.end34 [
    i8 13, label %if.end.if.end39_crit_edge
    i8 5, label %if.end.if.end39_crit_edge77
  ]

if.end.if.end39_crit_edge77:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

do.end34:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %2 to i32
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %5, i32 noundef 4194304, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_set_default_wep_key, ptr noundef nonnull @.str.31, i32 noundef %conv) #7
  br label %cleanup

if.end39:                                         ; preds = %if.end.if.end39_crit_edge, %if.end.if.end39_crit_edge77
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 4
  %6 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -2, ptr %hw_key_idx, align 2
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 5
  %7 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %keyidx, align 1
  %idxprom = sext i8 %8 to i32
  %key_size = getelementptr %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 25, i32 %idxprom, i32 3
  %9 = ptrtoint ptr %key_size to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %2, ptr %key_size, align 1
  %10 = load i8, ptr %keyidx, align 1
  %idxprom43 = sext i8 %10 to i32
  %key = getelementptr %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 25, i32 %idxprom43, i32 5
  %key45 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 8
  %11 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %keylen, align 2
  %conv47 = zext i8 %12 to i32
  %13 = call ptr @memcpy(ptr %key, ptr %key45, i32 %conv47)
  %call48 = tail call fastcc i32 @iwl_send_static_wepkey_cmd(ptr noundef %priv, ptr noundef %ctx, i1 noundef zeroext false)
  %dev53 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %14 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev53, align 4
  %16 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %keylen, align 2
  %conv55 = zext i8 %17 to i32
  %18 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %keyidx, align 1
  %conv57 = sext i8 %19 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %15, i32 noundef 4194304, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_set_default_wep_key, ptr noundef nonnull @.str.32, i32 noundef %conv55, i32 noundef %conv57, i32 noundef %call48) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %do.end34
  %retval.0 = phi i32 [ -22, %do.end34 ], [ %call48, %if.end39 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_update_tkip_key(ptr noundef %priv, ptr nocapture noundef readonly %vif, ptr nocapture noundef readonly %keyconf, ptr noundef readonly %sta, i32 noundef %iv32, ptr nocapture noundef readonly %phase1key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %tobool.not.i = icmp eq ptr %sta, null
  br i1 %tobool.not.i, label %if.end.i, label %iwl_sta_id.exit.i

iwl_sta_id.exit.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %sta_id.i.i = getelementptr inbounds %struct.iwl_station_priv, ptr %drv_priv.i.i, i32 0, i32 7
  br label %iwlagn_key_sta_id.exit

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end.i
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then3.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %ap_sta_id.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %3, i32 0, i32 19
  br label %iwlagn_key_sta_id.exit

iwlagn_key_sta_id.exit:                           ; preds = %if.then3.i, %iwl_sta_id.exit.i
  %ap_sta_id.sink.i = phi ptr [ %ap_sta_id.i, %if.then3.i ], [ %sta_id.i.i, %iwl_sta_id.exit.i ]
  %4 = ptrtoint ptr %ap_sta_id.sink.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ap_sta_id.sink.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp = icmp eq i8 %5, -1
  br i1 %cmp, label %iwlagn_key_sta_id.exit.cleanup_crit_edge, label %if.end

iwlagn_key_sta_id.exit.cleanup_crit_edge:         ; preds = %iwlagn_key_sta_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %iwlagn_key_sta_id.exit
  %call2 = tail call i32 @iwl_scan_cancel(ptr noundef %priv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call fastcc i32 @iwlagn_send_sta_key(ptr noundef %priv, ptr noundef %keyconf, i8 noundef zeroext %5, i32 noundef %iv32, ptr noundef %phase1key, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %iwlagn_key_sta_id.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_scan_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwlagn_send_sta_key(ptr noundef %priv, ptr nocapture noundef readonly %keyconf, i8 noundef zeroext %sta_id, i32 noundef %tkip_iv32, ptr nocapture noundef readonly %tkip_p1k, i32 noundef %cmd_flags) unnamed_addr #0 align 64 {
entry:
  %sta_cmd = alloca %struct.iwl_addsta_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %sta_cmd) #7
  %sta_lock = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_lock) #7
  %idxprom = zext i8 %sta_id to i32
  %arrayidx = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %idxprom
  %0 = call ptr @memcpy(ptr %sta_cmd, ptr %arrayidx, i32 92)
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #7
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 5
  %1 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %keyidx, align 1
  %conv3 = zext i8 %2 to i16
  %or = or i16 %conv3, 2048
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 1
  %3 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cipher, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %4, label %do.end [
    i32 1027076, label %sw.bb
    i32 1027074, label %sw.bb12
    i32 1027077, label %sw.bb29
    i32 1027073, label %entry.sw.bb33_crit_edge
  ]

entry.sw.bb33_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb33

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = or i16 %conv3, 2560
  %key8 = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %sta_cmd, i32 0, i32 3, i32 6
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv16 = trunc i32 %tkip_iv32 to i8
  %tkip_rx_tsc_byte2 = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %sta_cmd, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %tkip_rx_tsc_byte2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv16, ptr %tkip_rx_tsc_byte2, align 1
  %8 = ptrtoint ptr %tkip_p1k to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %tkip_p1k, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %arrayidx21 = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %sta_cmd, i32 0, i32 3, i32 3, i32 0
  %11 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %arrayidx21, align 1
  %arrayidx19.1 = getelementptr i16, ptr %tkip_p1k, i32 1
  %12 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx19.1, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %arrayidx21.1 = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %sta_cmd, i32 0, i32 3, i32 3, i32 1
  %15 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %arrayidx21.1, align 1
  %arrayidx19.2 = getelementptr i16, ptr %tkip_p1k, i32 2
  %16 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx19.2, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %arrayidx21.2 = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %sta_cmd, i32 0, i32 3, i32 3, i32 2
  %19 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %18, ptr %arrayidx21.2, align 1
  %arrayidx19.3 = getelementptr i16, ptr %tkip_p1k, i32 3
  %20 = ptrtoint ptr %arrayidx19.3 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx19.3, align 2
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %arrayidx21.3 = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %sta_cmd, i32 0, i32 3, i32 3, i32 3
  %23 = ptrtoint ptr %arrayidx21.3 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %22, ptr %arrayidx21.3, align 1
  %arrayidx19.4 = getelementptr i16, ptr %tkip_p1k, i32 4
  %24 = ptrtoint ptr %arrayidx19.4 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx19.4, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %arrayidx21.4 = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %sta_cmd, i32 0, i32 3, i32 3, i32 4
  %27 = ptrtoint ptr %arrayidx21.4 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %26, ptr %arrayidx21.4, align 1
  %28 = or i16 %conv3, 2816
  %key23 = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %sta_cmd, i32 0, i32 3, i32 6
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %29 = or i16 %conv3, 2064
  br label %sw.bb33

sw.bb33:                                          ; preds = %sw.bb29, %entry.sw.bb33_crit_edge
  %key_flags.0 = phi i16 [ %or, %entry.sw.bb33_crit_edge ], [ %29, %sw.bb29 ]
  %30 = or i16 %key_flags.0, 256
  %arrayidx39 = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %sta_cmd, i32 0, i32 3, i32 6, i32 3
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1113, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb33, %sw.bb12, %sw.bb
  %arrayidx39.sink = phi ptr [ %arrayidx39, %sw.bb33 ], [ %key23, %sw.bb12 ], [ %key8, %sw.bb ]
  %key_flags.1 = phi i16 [ %30, %sw.bb33 ], [ %28, %sw.bb12 ], [ %6, %sw.bb ]
  %key40 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 8
  %keylen42 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 7
  %31 = ptrtoint ptr %keylen42 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %keylen42, align 2
  %conv43 = zext i8 %32 to i32
  %33 = call ptr @memcpy(ptr %arrayidx39.sink, ptr %key40, i32 %conv43)
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 6
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %flags, align 8
  %36 = shl i16 %35, 3
  %37 = and i16 %36, 64
  %38 = xor i16 %37, 64
  %39 = or i16 %38, %key_flags.1
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 4
  %40 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %hw_key_idx, align 2
  %key65 = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %sta_cmd, i32 0, i32 3
  %key_offset = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %sta_cmd, i32 0, i32 3, i32 4
  %42 = ptrtoint ptr %key_offset to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %key_offset, align 1
  %43 = ptrtoint ptr %key65 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 %39, ptr %key65, align 1
  %44 = ptrtoint ptr %sta_cmd to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %sta_cmd, align 1
  %modify_mask = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %sta_cmd, i32 0, i32 2, i32 3
  %45 = ptrtoint ptr %modify_mask to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %modify_mask, align 1
  %conv69 = trunc i32 %cmd_flags to i8
  %call = call i32 @iwl_send_add_sta(ptr noundef %priv, ptr noundef nonnull %sta_cmd, i8 noundef zeroext %conv69)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %sta_cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_remove_dynamic_key(ptr noundef %priv, ptr nocapture noundef %ctx, ptr nocapture noundef readonly %keyconf, ptr noundef readonly %sta) local_unnamed_addr #0 align 64 {
entry:
  %sta_cmd = alloca %struct.iwl_addsta_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %sta_cmd) #7
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 19
  %tobool.not.i = icmp eq ptr %sta, null
  br i1 %tobool.not.i, label %if.end.i, label %iwl_sta_id.exit.i

iwl_sta_id.exit.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %sta_id.i.i = getelementptr inbounds %struct.iwl_station_priv, ptr %drv_priv.i.i, i32 0, i32 7
  br label %iwlagn_key_sta_id.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end.i
  %4 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_priv.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then3.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %ap_sta_id.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %5, i32 0, i32 19
  br label %iwlagn_key_sta_id.exit

iwlagn_key_sta_id.exit:                           ; preds = %if.then3.i, %iwl_sta_id.exit.i
  %ap_sta_id.sink.i = phi ptr [ %ap_sta_id.i, %if.then3.i ], [ %sta_id.i.i, %iwl_sta_id.exit.i ]
  %6 = ptrtoint ptr %ap_sta_id.sink.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ap_sta_id.sink.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp = icmp eq i8 %7, -1
  br i1 %cmp, label %iwlagn_key_sta_id.exit.cleanup_crit_edge, label %if.end

iwlagn_key_sta_id.exit.cleanup_crit_edge:         ; preds = %iwlagn_key_sta_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %iwlagn_key_sta_id.exit
  %conv = zext i8 %7 to i32
  %sta_lock = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_lock) #7
  %arrayidx = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %conv
  %8 = call ptr @memcpy(ptr %sta_cmd, ptr %arrayidx, i32 92)
  %used = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %conv, i32 1
  %9 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %used, align 4
  %11 = and i8 %10, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %spec.store.select = select i1 %tobool.not, i8 -1, i8 %7
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #7
  %conv10 = zext i8 %spec.store.select to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %spec.store.select)
  %cmp11 = icmp eq i8 %spec.store.select, -1
  br i1 %cmp11, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %12 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool15.not = icmp eq i32 %12, 0
  br i1 %tobool15.not, label %do.body.if.end35_crit_edge, label %land.rhs

do.body.if.end35_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.rhs:                                         ; preds = %do.body
  %dep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp17.not = icmp eq i32 %call.i, 0
  br i1 %cmp17.not, label %do.end, label %land.rhs.if.end35_crit_edge, !prof !169

land.rhs.if.end35_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1172, i32 noundef 9, ptr noundef null) #7
  br label %if.end35

if.end35:                                         ; preds = %do.end, %land.rhs.if.end35_crit_edge, %do.body.if.end35_crit_edge
  %key_mapping_keys = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 26
  %13 = ptrtoint ptr %key_mapping_keys to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %key_mapping_keys, align 1
  %dec = add i8 %14, -1
  store i8 %dec, ptr %key_mapping_keys, align 1
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 5
  %17 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %keyidx, align 1
  %conv48 = sext i8 %18 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %16, i32 noundef 4194304, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_remove_dynamic_key, ptr noundef nonnull @.str.33, i32 noundef %conv48, i32 noundef %conv10) #7
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 4
  %19 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %hw_key_idx, align 2
  %conv52 = zext i8 %20 to i32
  %ucode_key_table = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 64
  %call53 = tail call i32 @_test_and_clear_bit(i32 noundef %conv52, ptr noundef %ucode_key_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %do.end59, label %if.end35.if.end65_crit_edge

if.end35.if.end65_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

do.end59:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %23 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %hw_key_idx, align 2
  %conv62 = zext i8 %24 to i32
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %22, i32 noundef 0, ptr noundef nonnull @.str.34, i32 noundef %conv62) #7
  br label %if.end65

if.end65:                                         ; preds = %do.end59, %if.end35.if.end65_crit_edge
  %25 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %keyidx, align 1
  %conv69 = zext i8 %26 to i16
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 6
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %flags, align 8
  %29 = and i16 %28, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool73.not = icmp eq i16 %29, 0
  %spec.select.v = select i1 %tobool73.not, i16 2120, i16 2056
  %spec.select = or i16 %spec.select.v, %conv69
  %key = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %sta_cmd, i32 0, i32 3
  %30 = ptrtoint ptr %key to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 %spec.select, ptr %key, align 1
  %31 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %hw_key_idx, align 2
  %key_offset = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %sta_cmd, i32 0, i32 3, i32 4
  %33 = ptrtoint ptr %key_offset to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %key_offset, align 1
  %modify_mask = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %sta_cmd, i32 0, i32 2, i32 3
  %34 = ptrtoint ptr %modify_mask to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %modify_mask, align 1
  %35 = ptrtoint ptr %sta_cmd to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %sta_cmd, align 1
  %call83 = call i32 @iwl_send_add_sta(ptr noundef %priv, ptr noundef nonnull %sta_cmd, i8 noundef zeroext 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.end.cleanup_crit_edge, %iwlagn_key_sta_id.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call83, %if.end65 ], [ -2, %iwlagn_key_sta_id.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -2, %land.lhs.true.i.cleanup_crit_edge ], [ -2, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %sta_cmd) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_set_dynamic_key(ptr noundef %priv, ptr noundef %ctx, ptr noundef %keyconf, ptr noundef %sta) local_unnamed_addr #0 align 64 {
entry:
  %seq = alloca %struct.ieee80211_key_seq, align 4
  %p1k = alloca [5 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %seq) #7
  %0 = call ptr @memset(ptr %seq, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %p1k) #7
  %1 = call ptr @memset(ptr %p1k, i32 255, i32 10)
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %3, i32 0, i32 19
  %tobool.not.i = icmp eq ptr %sta, null
  br i1 %tobool.not.i, label %if.end.i, label %iwl_sta_id.exit.i

iwl_sta_id.exit.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %sta_id.i.i = getelementptr inbounds %struct.iwl_station_priv, ptr %drv_priv.i.i, i32 0, i32 7
  br label %iwlagn_key_sta_id.exit

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end.i
  %6 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drv_priv.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then3.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %ap_sta_id.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %7, i32 0, i32 19
  br label %iwlagn_key_sta_id.exit

iwlagn_key_sta_id.exit:                           ; preds = %if.then3.i, %iwl_sta_id.exit.i
  %ap_sta_id.sink.i = phi ptr [ %ap_sta_id.i, %if.then3.i ], [ %sta_id.i.i, %iwl_sta_id.exit.i ]
  %8 = ptrtoint ptr %ap_sta_id.sink.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ap_sta_id.sink.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp = icmp eq i8 %9, -1
  br i1 %cmp, label %iwlagn_key_sta_id.exit.cleanup_crit_edge, label %do.body

iwlagn_key_sta_id.exit.cleanup_crit_edge:         ; preds = %iwlagn_key_sta_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %iwlagn_key_sta_id.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %10 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %do.body.if.end21_crit_edge, label %land.rhs

do.body.if.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

land.rhs:                                         ; preds = %do.body
  %dep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.not = icmp eq i32 %call.i, 0
  br i1 %cmp3.not, label %do.end, label %land.rhs.if.end21_crit_edge, !prof !169

land.rhs.if.end21_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1212, i32 noundef 9, ptr noundef null) #7
  br label %if.end21

if.end21:                                         ; preds = %do.end, %land.rhs.if.end21_crit_edge, %do.body.if.end21_crit_edge
  %ucode_key_table.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 64
  %sta_key_max_num.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 46
  %11 = ptrtoint ptr %sta_key_max_num.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sta_key_max_num.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp7.not.i = icmp eq i8 %12, 0
  br i1 %cmp7.not.i, label %if.end21.iwl_get_free_ucode_key_offset.exit.thread_crit_edge, label %if.end21.for.body.i_crit_edge

if.end21.for.body.i_crit_edge:                    ; preds = %if.end21
  br label %for.body.i

if.end21.iwl_get_free_ucode_key_offset.exit.thread_crit_edge: ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_get_free_ucode_key_offset.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end21.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end21.for.body.i_crit_edge ]
  %call.i109 = tail call i32 @_test_and_set_bit(i32 noundef %i.08.i, ptr noundef %ucode_key_table.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %tobool.not.i110 = icmp eq i32 %call.i109, 0
  br i1 %tobool.not.i110, label %iwl_get_free_ucode_key_offset.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %13 = ptrtoint ptr %sta_key_max_num.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sta_key_max_num.i, align 1
  %conv.i = zext i8 %14 to i32
  %cmp.i111 = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i111, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.iwl_get_free_ucode_key_offset.exit.thread_crit_edge

for.inc.i.iwl_get_free_ucode_key_offset.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_get_free_ucode_key_offset.exit.thread

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

iwl_get_free_ucode_key_offset.exit.thread:        ; preds = %for.inc.i.iwl_get_free_ucode_key_offset.exit.thread_crit_edge, %if.end21.iwl_get_free_ucode_key_offset.exit.thread_crit_edge
  %hw_key_idx117 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 4
  %15 = ptrtoint ptr %hw_key_idx117 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %hw_key_idx117, align 2
  br label %cleanup

iwl_get_free_ucode_key_offset.exit:               ; preds = %for.body.i
  %conv31 = trunc i32 %i.08.i to i8
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 4
  %16 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv31, ptr %hw_key_idx, align 2
  %conv33 = and i32 %i.08.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %conv33)
  %cmp34 = icmp eq i32 %conv33, 255
  br i1 %cmp34, label %iwl_get_free_ucode_key_offset.exit.cleanup_crit_edge, label %if.end37

iwl_get_free_ucode_key_offset.exit.cleanup_crit_edge: ; preds = %iwl_get_free_ucode_key_offset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %iwl_get_free_ucode_key_offset.exit
  %key_mapping_keys = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 26
  %17 = ptrtoint ptr %key_mapping_keys to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %key_mapping_keys, align 1
  %inc = add i8 %18, 1
  store i8 %inc, ptr %key_mapping_keys, align 1
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 1
  %19 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cipher, align 8
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %20, label %sw.epilog.thread [
    i32 1027074, label %sw.bb
    i32 1027076, label %if.end37.sw.bb47_crit_edge
    i32 1027073, label %if.end37.sw.bb47_crit_edge130
    i32 1027077, label %if.end37.sw.bb47_crit_edge131
  ]

if.end37.sw.bb47_crit_edge131:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb47

if.end37.sw.bb47_crit_edge130:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb47

if.end37.sw.bb47_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb47

sw.bb:                                            ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %addr40 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %bssid_addr = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 14, i32 2
  %addr.0 = select i1 %tobool.not.i, ptr %bssid_addr, ptr %addr40
  call void @ieee80211_get_key_rx_seq(ptr noundef %keyconf, i32 noundef 0, ptr noundef nonnull %seq) #7
  %22 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %seq, align 4
  call void @ieee80211_get_tkip_rx_p1k(ptr noundef %keyconf, ptr noundef %addr.0, i32 noundef %23, ptr noundef nonnull %p1k) #7
  %24 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %seq, align 4
  %call46 = call fastcc i32 @iwlagn_send_sta_key(ptr noundef %priv, ptr noundef %keyconf, i8 noundef zeroext %9, i32 noundef %25, ptr noundef nonnull %p1k, i32 noundef 0)
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end37.sw.bb47_crit_edge, %if.end37.sw.bb47_crit_edge130, %if.end37.sw.bb47_crit_edge131
  %call48 = tail call fastcc i32 @iwlagn_send_sta_key(ptr noundef %priv, ptr noundef %keyconf, i8 noundef zeroext %9, i32 noundef 0, ptr noundef null, i32 noundef 0)
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %27, i32 noundef 0, ptr noundef nonnull @.str.35, i32 noundef %20) #7
  br label %if.then57

sw.epilog:                                        ; preds = %sw.bb47, %sw.bb
  %ret.0 = phi i32 [ %call48, %sw.bb47 ], [ %call46, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool56.not = icmp eq i32 %ret.0, 0
  br i1 %tobool56.not, label %sw.epilog.do.end65_crit_edge, label %sw.epilog.if.then57_crit_edge

sw.epilog.if.then57_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

sw.epilog.do.end65_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end65

if.then57:                                        ; preds = %sw.epilog.if.then57_crit_edge, %sw.epilog.thread
  %ret.0122 = phi i32 [ -22, %sw.epilog.thread ], [ %ret.0, %sw.epilog.if.then57_crit_edge ]
  %28 = ptrtoint ptr %key_mapping_keys to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %key_mapping_keys, align 1
  %dec = add i8 %29, -1
  store i8 %dec, ptr %key_mapping_keys, align 1
  %30 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %hw_key_idx, align 2
  %conv60 = zext i8 %31 to i32
  call void @_clear_bit(i32 noundef %conv60, ptr noundef %ucode_key_table.i) #7
  br label %do.end65

do.end65:                                         ; preds = %if.then57, %sw.epilog.do.end65_crit_edge
  %ret.0123 = phi i32 [ %ret.0122, %if.then57 ], [ 0, %sw.epilog.do.end65_crit_edge ]
  %dev66 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %32 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev66, align 4
  %34 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cipher, align 8
  %keylen = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 7
  %36 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %keylen, align 2
  %conv68 = zext i8 %37 to i32
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %keyconf, i32 0, i32 5
  %38 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %keyidx, align 1
  %conv69 = sext i8 %39 to i32
  %addr71 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %spec.select = select i1 %tobool.not.i, ptr null, ptr %addr71
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %33, i32 noundef 4194304, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_set_dynamic_key, ptr noundef nonnull @.str.36, i32 noundef %35, i32 noundef %conv68, i32 noundef %conv69, ptr noundef %spec.select, i32 noundef %ret.0123) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end65, %iwl_get_free_ucode_key_offset.exit.cleanup_crit_edge, %iwl_get_free_ucode_key_offset.exit.thread, %iwlagn_key_sta_id.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0123, %do.end65 ], [ -22, %iwlagn_key_sta_id.exit.cleanup_crit_edge ], [ -28, %iwl_get_free_ucode_key_offset.exit.cleanup_crit_edge ], [ -28, %iwl_get_free_ucode_key_offset.exit.thread ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %p1k) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %seq) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_get_key_rx_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_get_tkip_rx_p1k(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwlagn_alloc_bcast_station(ptr noundef %priv, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sta_lock = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_lock) #7
  %call = tail call zeroext i8 @iwl_prep_station(ptr noundef %priv, ptr noundef %ctx, ptr noundef nonnull @iwl_bcast_addr, i1 noundef zeroext false, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call)
  %cmp = icmp eq i8 %call, -1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.37) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %call to i32
  %used = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %conv, i32 1
  %2 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %used, align 4
  %4 = or i8 %3, 17
  store i8 %4, ptr %used, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 88) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end21, label %if.end25

do.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %7, i32 noundef 0, ptr noundef nonnull @.str.66) #7
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %9, i32 noundef 0, ptr noundef nonnull @.str.38) #7
  br label %cleanup

if.end25:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @iwl_sta_fill_lq(ptr noundef %priv, ptr noundef %ctx, i8 noundef zeroext %call, ptr noundef nonnull %call7.i.i.i) #7
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_lock) #7
  %lq = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %conv, i32 3
  %10 = ptrtoint ptr %lq to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i.i, ptr %lq, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end21, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end25 ], [ -12, %do.end21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_update_bcast_station(ptr noundef %priv, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bcast_sta_id = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 18
  %0 = ptrtoint ptr %bcast_sta_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bcast_sta_id, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 88) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @.str.66) #7
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %6, i32 noundef 0, ptr noundef nonnull @.str.38) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @iwl_sta_fill_lq(ptr noundef %priv, ptr noundef %ctx, i8 noundef zeroext %1, ptr noundef nonnull %call7.i.i.i) #7
  %sta_lock = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_lock) #7
  %idxprom = zext i8 %1 to i32
  %lq = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %idxprom, i32 3
  %7 = ptrtoint ptr %lq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lq, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %do.end13, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %8) #7
  br label %if.end17

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev14 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %9 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev14, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %10, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_update_bcast_station, ptr noundef nonnull @.str.39) #7
  br label %if.end17

if.end17:                                         ; preds = %do.end13, %if.then5
  %11 = ptrtoint ptr %lq to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i.i, ptr %lq, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_update_bcast_stations(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %contexts = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50
  %arrayidx2 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 51
  %cmp13 = icmp ult ptr %contexts, %arrayidx2
  br i1 %cmp13, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %valid_contexts = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ctx.014 = phi ptr [ %contexts, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %valid_contexts to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %valid_contexts, align 4
  %conv = zext i8 %1 to i32
  %ctxid = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.014, i32 0, i32 7
  %2 = ptrtoint ptr %ctxid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctxid, align 4
  %shl = shl nuw i32 1, %3
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  %call = tail call i32 @iwl_update_bcast_station(ptr noundef %priv, ptr noundef %ctx.014)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.for.inc_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.iwl_rxon_context, ptr %ctx.014, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %arrayidx2
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.2 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call, %if.then.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_sta_tx_modify_enable_tid(ptr noundef %priv, i32 noundef %sta_id, i32 noundef %tid) local_unnamed_addr #0 align 64 {
entry:
  %sta_cmd = alloca %struct.iwl_addsta_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %sta_cmd) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !169

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1346, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %sta_lock = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_lock) #7
  %arrayidx = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %sta_id
  %modify_mask = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %arrayidx, i32 0, i32 2, i32 3
  %1 = ptrtoint ptr %modify_mask to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 2, ptr %modify_mask, align 1
  %shl = shl nuw i32 1, %tid
  %2 = trunc i32 %shl to i16
  %conv = xor i16 %2, -1
  %3 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %tid_disable_tx = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %arrayidx, i32 0, i32 6
  %4 = ptrtoint ptr %tid_disable_tx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tid_disable_tx, align 4
  %and50 = and i16 %5, %3
  store i16 %and50, ptr %tid_disable_tx, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %arrayidx, align 4
  %7 = call ptr @memcpy(ptr %sta_cmd, ptr %arrayidx, i32 92)
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #7
  %call38 = call i32 @iwl_send_add_sta(ptr noundef %priv, ptr noundef nonnull %sta_cmd, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %sta_cmd) #7
  ret i32 %call38
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_sta_rx_agg_start(ptr noundef %priv, ptr noundef readonly %sta, i32 noundef %tid, i16 noundef zeroext %ssn) local_unnamed_addr #0 align 64 {
entry:
  %sta_cmd = alloca %struct.iwl_addsta_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %sta_cmd) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !169

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1365, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool.not.i = icmp eq ptr %sta, null
  br i1 %tobool.not.i, label %iwl_sta_id.exit.thread, label %iwl_sta_id.exit, !prof !169

iwl_sta_id.exit.thread:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 281, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

iwl_sta_id.exit:                                  ; preds = %if.end
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %sta_id.i = getelementptr inbounds %struct.iwl_station_priv, ptr %drv_priv.i, i32 0, i32 7
  %1 = ptrtoint ptr %sta_id.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sta_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %cmp25 = icmp eq i8 %2, -1
  br i1 %cmp25, label %iwl_sta_id.exit.cleanup_crit_edge, label %if.end27

iwl_sta_id.exit.cleanup_crit_edge:                ; preds = %iwl_sta_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %iwl_sta_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i8 %2 to i32
  %sta_lock = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_lock) #7
  %arrayidx = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %conv.i
  %station_flags_msk = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %arrayidx, i32 0, i32 5
  %3 = ptrtoint ptr %station_flags_msk to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %station_flags_msk, align 4
  %modify_mask = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %arrayidx, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %modify_mask to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 8, ptr %modify_mask, align 1
  %conv = trunc i32 %tid to i8
  %add_immediate_ba_tid = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %arrayidx, i32 0, i32 8
  %5 = ptrtoint ptr %add_immediate_ba_tid to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %add_immediate_ba_tid, align 4
  %6 = tail call i16 @llvm.bswap.i16(i16 %ssn)
  %add_immediate_ba_ssn = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %arrayidx, i32 0, i32 10
  %7 = ptrtoint ptr %add_immediate_ba_ssn to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %add_immediate_ba_ssn, align 2
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %arrayidx, align 4
  %9 = call ptr @memcpy(ptr %sta_cmd, ptr %arrayidx, i32 92)
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #7
  %call46 = call i32 @iwl_send_add_sta(ptr noundef %priv, ptr noundef nonnull %sta_cmd, i8 noundef zeroext 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %iwl_sta_id.exit.cleanup_crit_edge, %iwl_sta_id.exit.thread
  %retval.0 = phi i32 [ %call46, %if.end27 ], [ -6, %iwl_sta_id.exit.cleanup_crit_edge ], [ -6, %iwl_sta_id.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %sta_cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_sta_rx_agg_stop(ptr noundef %priv, ptr noundef readonly %sta, i32 noundef %tid) local_unnamed_addr #0 align 64 {
entry:
  %sta_cmd = alloca %struct.iwl_addsta_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %sta_cmd) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !169

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1389, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool.not.i = icmp eq ptr %sta, null
  br i1 %tobool.not.i, label %iwl_sta_id.exit.thread, label %iwl_sta_id.exit, !prof !169

iwl_sta_id.exit.thread:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 281, i32 noundef 9, ptr noundef null) #7
  br label %do.end30

iwl_sta_id.exit:                                  ; preds = %if.end
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %sta_id.i = getelementptr inbounds %struct.iwl_station_priv, ptr %drv_priv.i, i32 0, i32 7
  %1 = ptrtoint ptr %sta_id.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sta_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %cmp25 = icmp eq i8 %2, -1
  br i1 %cmp25, label %iwl_sta_id.exit.do.end30_crit_edge, label %if.end33

iwl_sta_id.exit.do.end30_crit_edge:               ; preds = %iwl_sta_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30

do.end30:                                         ; preds = %iwl_sta_id.exit.do.end30_crit_edge, %iwl_sta_id.exit.thread
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @.str.40, i32 noundef %tid) #7
  br label %cleanup

if.end33:                                         ; preds = %iwl_sta_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i8 %2 to i32
  %sta_lock = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_lock) #7
  %arrayidx = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %conv.i
  %station_flags_msk = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %arrayidx, i32 0, i32 5
  %5 = ptrtoint ptr %station_flags_msk to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %station_flags_msk, align 4
  %modify_mask = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %arrayidx, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %modify_mask to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 16, ptr %modify_mask, align 1
  %conv = trunc i32 %tid to i8
  %remove_immediate_ba_tid = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %arrayidx, i32 0, i32 9
  %7 = ptrtoint ptr %remove_immediate_ba_tid to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %remove_immediate_ba_tid, align 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %arrayidx, align 4
  %9 = call ptr @memcpy(ptr %sta_cmd, ptr %arrayidx, i32 92)
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #7
  %call49 = call i32 @iwl_send_add_sta(ptr noundef %priv, ptr noundef nonnull %sta_cmd, i8 noundef zeroext 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %do.end30
  %retval.0 = phi i32 [ -6, %do.end30 ], [ %call49, %if.end33 ]
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %sta_cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_sta_modify_sleep_tx_count(ptr noundef %priv, i32 noundef %sta_id, i32 noundef %cnt) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_addsta_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %cmd) #7
  %0 = getelementptr inbounds i8, ptr %cmd, i32 1
  %1 = call ptr @memset(ptr %0, i32 0, i32 91)
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %cmd, align 1
  %sta_id1 = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %cmd, i32 0, i32 2, i32 2
  %conv = trunc i32 %sta_id to i8
  %3 = ptrtoint ptr %sta_id1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %sta_id1, align 1
  %modify_mask = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %cmd, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %modify_mask to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 32, ptr %modify_mask, align 1
  %station_flags = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %cmd, i32 0, i32 4
  %5 = ptrtoint ptr %station_flags to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 65536, ptr %station_flags, align 1
  %station_flags_msk = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %cmd, i32 0, i32 5
  %6 = ptrtoint ptr %station_flags_msk to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 65536, ptr %station_flags_msk, align 1
  %sleep_tx_count = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %cmd, i32 0, i32 11
  %conv2 = trunc i32 %cnt to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv2)
  %8 = ptrtoint ptr %sleep_tx_count to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %7, ptr %sleep_tx_count, align 1
  %call = call i32 @iwl_send_add_sta(ptr noundef %priv, ptr noundef nonnull %cmd, i8 noundef zeroext 1)
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %cmd) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !11, !13, !14, !16, !18, !20, !22, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !46, !48, !50, !52, !54, !55, !57, !59, !61, !63, !65, !66, !68, !70, !72, !74, !75, !77, !79, !81, !82, !84, !86, !87, !89, !91, !93, !94, !96, !98, !100, !101, !103, !105, !106, !108, !110, !112, !114, !116, !118, !120, !122, !123, !125, !127, !129, !130, !131, !132, !133, !135, !137, !138, !140, !142, !144, !145, !147, !148, !150, !152, !154, !155, !157}
!llvm.module.flags = !{!159, !160, !161, !162, !163, !164, !165, !166}
!llvm.ident = !{!167}

!0 = !{ptr @iwl_bcast_addr, !1, !"iwl_bcast_addr", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 15, i32 10}
!2 = !{ptr @__func__.iwl_send_add_sta, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 96, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 101, i32 3}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 200, i32 6}
!11 = !{ptr @__func__.iwl_prep_station, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 274, i32 3}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 282, i32 3}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 289, i32 2}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 336, i32 3}
!20 = !{ptr @__func__.iwl_add_station_common, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 348, i32 3}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 371, i32 3}
!24 = !{ptr @__func__.iwl_remove_station, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 458, i32 3}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 469, i32 2}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 478, i32 3}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 484, i32 3}
!33 = !{ptr @__func__.iwl_deactivate_station, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 519, i32 3}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 525, i32 2}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 527, i32 6}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 532, i32 2}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 543, i32 6}
!43 = !{ptr @__func__.iwl_clear_ucode_stations, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 613, i32 2}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 621, i32 4}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 630, i32 3}
!50 = !{ptr @iwl_restore_stations.zero_lq, !51, !"zero_lq", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 645, i32 43}
!52 = !{ptr @__func__.iwl_restore_stations, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 653, i32 3}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 658, i32 2}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 665, i32 4}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 713, i32 3}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 716, i32 3}
!63 = !{ptr @__func__.iwl_send_lq_cmd, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 850, i32 3}
!65 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 896, i32 3}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 910, i32 3}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 918, i32 3}
!72 = !{ptr @__func__.iwl_remove_default_wep_key, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 997, i32 2}
!74 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 1002, i32 3}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 1008, i32 2}
!79 = !{ptr @__func__.iwl_set_default_wep_key, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 1024, i32 3}
!81 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 1036, i32 2}
!84 = !{ptr @__func__.iwl_remove_dynamic_key, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 1176, i32 2}
!86 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 1180, i32 3}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 1240, i32 3}
!91 = !{ptr @__func__.iwl_set_dynamic_key, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 1249, i32 2}
!93 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 1272, i32 3}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 1284, i32 3}
!98 = !{ptr @__func__.iwl_update_bcast_station, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 1318, i32 3}
!100 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 1393, i32 3}
!103 = !{ptr @__func__.iwl_process_add_sta_resp, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 48, i32 2}
!105 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 54, i32 3}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 57, i32 3}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 60, i32 3}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 64, i32 3}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 67, i32 3}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 22, i32 3}
!118 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 26, i32 3}
!120 = !{ptr @__func__.iwl_sta_ucode_activate, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 31, i32 3}
!122 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.50, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 37, i32 3}
!125 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/agn.h", i32 281, i32 6}
!127 = !{ptr @__func__.iwl_sta_calc_ht_flags, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 162, i32 2}
!129 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.56, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 179, i32 3}
!135 = !{ptr @__func__.iwl_send_remove_station, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 436, i32 3}
!137 = !{ptr @.str.57, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 440, i32 3}
!140 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 392, i32 3}
!142 = !{ptr @__func__.iwl_sta_ucode_deactivate, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 397, i32 2}
!144 = !{ptr @.str.60, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @__func__.iwl_dump_lq_cmd, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 755, i32 2}
!147 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.62, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 756, i32 2}
!150 = !{ptr @.str.63, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 761, i32 3}
!152 = !{ptr @__func__.is_lq_table_valid, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 791, i32 2}
!154 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.65, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 796, i32 4}
!157 = !{ptr @.str.66, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/sta.c", i32 869, i32 3}
!159 = !{i32 1, !"wchar_size", i32 2}
!160 = !{i32 1, !"min_enum_size", i32 4}
!161 = !{i32 8, !"branch-target-enforcement", i32 0}
!162 = !{i32 8, !"sign-return-address", i32 0}
!163 = !{i32 8, !"sign-return-address-all", i32 0}
!164 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!165 = !{i32 7, !"uwtable", i32 1}
!166 = !{i32 7, !"frame-pointer", i32 2}
!167 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!168 = !{!"auto-init"}
!169 = !{!"branch_weights", i32 1, i32 2000}
!170 = !{i8 0, i8 2}
!171 = !{!"branch_weights", i32 2000, i32 1}
