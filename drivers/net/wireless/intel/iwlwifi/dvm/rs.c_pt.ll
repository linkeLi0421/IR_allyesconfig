; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/dvm/rs.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/dvm/rs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_rate_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.rate_control_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iwl_rate_mcs_info = type { [12 x i8], [12 x i8] }
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
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.129, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.129 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.103, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.103 = type { i64, i64, i8 }
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
%struct.iwl_scale_tbl_info = type { i32, i8, i8, i8, i8, i8, i8, ptr, i32, [13 x %struct.iwl_rate_scale_data] }
%struct.iwl_rate_scale_data = type { i64, i32, i32, i32, i32, i32 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.iwl_lq_sta = type <{ i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8, i8, i8, i32, i32, i16, i16, i16, i16, i8, i8, %struct.iwl_link_quality_cmd, [2 x i8], [2 x %struct.iwl_scale_tbl_info], [8 x %struct.iwl_traffic_load], i8, [3 x i8], i32, ptr, i32, i32, i8, i8, [2 x i8] }>
%struct.iwl_link_quality_cmd = type { i8, i8, i16, %struct.iwl_link_qual_general_params, %struct.iwl_link_qual_agg_params, [16 x %struct.anon.134], i32 }
%struct.iwl_link_qual_general_params = type { i8, i8, i8, i8, [4 x i8] }
%struct.iwl_link_qual_agg_params = type { i16, i8, i8, i32 }
%struct.anon.134 = type { i32 }
%struct.iwl_traffic_load = type { i32, [20 x i32], i32, i8, i8 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.iwl_nvm_data = type { i32, [6 x i8], i8, i16, i16, i16, i16, [2 x i16], i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, [6 x %struct.ieee80211_supported_band], %struct.anon.137, [0 x %struct.ieee80211_channel] }
%struct.anon.137 = type { [2 x %struct.ieee80211_sband_iftype_data], [2 x %struct.ieee80211_sband_iftype_data] }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.101 }>
%struct.anon.101 = type { ptr, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.iwl_dvm_cfg = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.iwl_dvm_bt_params = type { i8, i8, i32, i16, i8, i8 }
%struct.iwl_op_mode = type { ptr, [0 x i8] }
%struct.sk_buff = type { %union.anon, %union.anon.107, %union.anon.108, [48 x i8], %union.anon.109, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.111, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.107 = type { ptr }
%union.anon.108 = type { i64 }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, ptr }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.113, i32, i32, i32, i16, i16, %union.anon.115, i32, %union.anon.116, %union.anon.117, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.113 = type { i32 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { i16 }
%struct.ieee80211_tx_rate_control = type { ptr, ptr, ptr, ptr, %struct.ieee80211_tx_rate, i8, i8, i32, ptr, i8 }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.file = type { %union.anon.22, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.22 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@iwl_rates = dso_local constant { [13 x %struct.iwl_rate_info], [49 x i8] } { [13 x %struct.iwl_rate_info] [%struct.iwl_rate_info { i8 10, i8 24, i8 24, i8 24, i8 2, i8 13, i8 1, i8 13, i8 1, i8 13, i8 1 }, %struct.iwl_rate_info { i8 20, i8 24, i8 24, i8 24, i8 4, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2 }, %struct.iwl_rate_info { i8 55, i8 24, i8 24, i8 24, i8 11, i8 1, i8 4, i8 1, i8 3, i8 1, i8 3 }, %struct.iwl_rate_info { i8 110, i8 24, i8 24, i8 24, i8 22, i8 5, i8 6, i8 5, i8 6, i8 2, i8 7 }, %struct.iwl_rate_info { i8 13, i8 0, i8 8, i8 16, i8 12, i8 2, i8 5, i8 2, i8 3, i8 2, i8 3 }, %struct.iwl_rate_info { i8 15, i8 0, i8 8, i8 16, i8 18, i8 4, i8 3, i8 4, i8 3, i8 2, i8 3 }, %struct.iwl_rate_info { i8 5, i8 1, i8 9, i8 17, i8 24, i8 3, i8 7, i8 3, i8 7, i8 3, i8 7 }, %struct.iwl_rate_info { i8 7, i8 2, i8 10, i8 18, i8 36, i8 6, i8 8, i8 6, i8 8, i8 3, i8 8 }, %struct.iwl_rate_info { i8 9, i8 3, i8 11, i8 19, i8 48, i8 7, i8 9, i8 7, i8 9, i8 7, i8 9 }, %struct.iwl_rate_info { i8 11, i8 4, i8 12, i8 20, i8 72, i8 8, i8 10, i8 8, i8 10, i8 8, i8 10 }, %struct.iwl_rate_info { i8 1, i8 5, i8 13, i8 21, i8 96, i8 9, i8 11, i8 9, i8 11, i8 9, i8 11 }, %struct.iwl_rate_info { i8 3, i8 6, i8 14, i8 22, i8 108, i8 10, i8 13, i8 10, i8 13, i8 10, i8 13 }, %struct.iwl_rate_info { i8 3, i8 7, i8 15, i8 23, i8 120, i8 10, i8 13, i8 10, i8 13, i8 10, i8 13 }], [49 x i8] zeroinitializer }, align 32
@__func__.iwl_rs_rate_init = private unnamed_addr constant [17 x i8] c"iwl_rs_rate_init\00", align 1
@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"LQ: *** rate scale station global init for station %d ***\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"SISO-RATE=%X MIMO2-RATE=%X MIMO3-RATE=%X\0A\00", [54 x i8] zeroinitializer }, align 32
@rs_ops = internal constant { %struct.rate_control_ops, [40 x i8] } { %struct.rate_control_ops { i32 0, ptr @.str.12, ptr @rs_alloc, ptr null, ptr @rs_free, ptr @rs_alloc_sta, ptr @rs_rate_init_stub, ptr null, ptr @rs_free_sta, ptr null, ptr @rs_tx_status, ptr @rs_get_rate, ptr @rs_add_debugfs, ptr null }, [40 x i8] zeroinitializer }, align 32
@rate_lowest_index.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/mac80211.h\00", [41 x i8] zeroinitializer }, align 32
@ant_toggle_lookup = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\02\04\06\01\03\05\07", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid HT rate index %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid tbl->lq_type %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"GF was set with SGI:SISO\0A\00", [38 x i8] zeroinitializer }, align 32
@rs_set_expected_tpt_table.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/intel/iwlwifi/dvm/rs.c\00", [52 x i8] zeroinitializer }, align 32
@expected_tpt_legacy = internal constant { [13 x i16], [38 x i8] } { [13 x i16] [i16 7, i16 13, i16 35, i16 58, i16 40, i16 57, i16 72, i16 98, i16 121, i16 154, i16 177, i16 186, i16 0], [38 x i8] zeroinitializer }, align 32
@expected_tpt_siso20MHz = internal constant { [4 x [13 x i16]], [56 x i8] } { [4 x [13 x i16]] [[13 x i16] [i16 0, i16 0, i16 0, i16 0, i16 42, i16 0, i16 76, i16 102, i16 124, i16 159, i16 183, i16 193, i16 202], [13 x i16] [i16 0, i16 0, i16 0, i16 0, i16 46, i16 0, i16 82, i16 110, i16 132, i16 168, i16 192, i16 202, i16 210], [13 x i16] [i16 0, i16 0, i16 0, i16 0, i16 47, i16 0, i16 91, i16 133, i16 171, i16 242, i16 305, i16 334, i16 362], [13 x i16] [i16 0, i16 0, i16 0, i16 0, i16 52, i16 0, i16 101, i16 145, i16 187, i16 264, i16 330, i16 361, i16 390]], [56 x i8] zeroinitializer }, align 32
@expected_tpt_siso40MHz = internal constant { [4 x [13 x i16]], [56 x i8] } { [4 x [13 x i16]] [[13 x i16] [i16 0, i16 0, i16 0, i16 0, i16 77, i16 0, i16 127, i16 160, i16 184, i16 220, i16 242, i16 250, i16 257], [13 x i16] [i16 0, i16 0, i16 0, i16 0, i16 83, i16 0, i16 135, i16 169, i16 193, i16 229, i16 250, i16 257, i16 264], [13 x i16] [i16 0, i16 0, i16 0, i16 0, i16 94, i16 0, i16 177, i16 249, i16 313, i16 423, i16 512, i16 550, i16 586], [13 x i16] [i16 0, i16 0, i16 0, i16 0, i16 104, i16 0, i16 193, i16 270, i16 338, i16 454, i16 545, i16 584, i16 620]], [56 x i8] zeroinitializer }, align 32
@expected_tpt_mimo2_20MHz = internal constant { [4 x [13 x i16]], [56 x i8] } { [4 x [13 x i16]] [[13 x i16] [i16 0, i16 0, i16 0, i16 0, i16 74, i16 0, i16 123, i16 155, i16 179, i16 214, i16 236, i16 244, i16 251], [13 x i16] [i16 0, i16 0, i16 0, i16 0, i16 81, i16 0, i16 131, i16 164, i16 188, i16 223, i16 243, i16 251, i16 257], [13 x i16] [i16 0, i16 0, i16 0, i16 0, i16 89, i16 0, i16 167, i16 235, i16 296, i16 402, i16 488, i16 526, i16 560], [13 x i16] [i16 0, i16 0, i16 0, i16 0, i16 97, i16 0, i16 182, i16 255, i16 320, i16 431, i16 520, i16 558, i16 593]], [56 x i8] zeroinitializer }, align 32
@expected_tpt_mimo2_40MHz = internal constant { [4 x [13 x i16]], [56 x i8] } { [4 x [13 x i16]] [[13 x i16] [i16 0, i16 0, i16 0, i16 0, i16 123, i16 0, i16 182, i16 214, i16 235, i16 264, i16 279, i16 285, i16 289], [13 x i16] [i16 0, i16 0, i16 0, i16 0, i16 131, i16 0, i16 191, i16 222, i16 242, i16 270, i16 284, i16 289, i16 293], [13 x i16] [i16 0, i16 0, i16 0, i16 0, i16 171, i16 0, i16 305, i16 410, i16 496, i16 634, i16 731, i16 771, i16 805], [13 x i16] [i16 0, i16 0, i16 0, i16 0, i16 186, i16 0, i16 329, i16 439, i16 527, i16 667, i16 764, i16 803, i16 838]], [56 x i8] zeroinitializer }, align 32
@expected_tpt_mimo3_20MHz = internal constant { [4 x [13 x i16]], [56 x i8] } { [4 x [13 x i16]] [[13 x i16] [i16 0, i16 0, i16 0, i16 0, i16 99, i16 0, i16 153, i16 186, i16 208, i16 239, i16 256, i16 263, i16 268], [13 x i16] [i16 0, i16 0, i16 0, i16 0, i16 106, i16 0, i16 162, i16 194, i16 215, i16 246, i16 262, i16 268, i16 273], [13 x i16] [i16 0, i16 0, i16 0, i16 0, i16 134, i16 0, i16 249, i16 346, i16 431, i16 574, i16 685, i16 732, i16 775], [13 x i16] [i16 0, i16 0, i16 0, i16 0, i16 148, i16 0, i16 272, i16 376, i16 465, i16 614, i16 727, i16 775, i16 818]], [56 x i8] zeroinitializer }, align 32
@expected_tpt_mimo3_40MHz = internal constant { [4 x [13 x i16]], [56 x i8] } { [4 x [13 x i16]] [[13 x i16] [i16 0, i16 0, i16 0, i16 0, i16 152, i16 0, i16 211, i16 239, i16 255, i16 279, i16 290, i16 294, i16 297], [13 x i16] [i16 0, i16 0, i16 0, i16 0, i16 160, i16 0, i16 219, i16 245, i16 261, i16 284, i16 294, i16 297, i16 300], [13 x i16] [i16 0, i16 0, i16 0, i16 0, i16 254, i16 0, i16 443, i16 584, i16 695, i16 868, i16 984, i16 1030, i16 1070], [13 x i16] [i16 0, i16 0, i16 0, i16 0, i16 277, i16 0, i16 478, i16 624, i16 737, i16 911, i16 1026, i16 1070, i16 1109]], [56 x i8] zeroinitializer }, align 32
@__func__.rs_dbgfs_set_mcs = private unnamed_addr constant [17 x i8] c"rs_dbgfs_set_mcs\00", align 1
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Fixed rate ON\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Invalid antenna selection 0x%X, Valid is 0x%X\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Fixed rate OFF\0A\00", [16 x i8] zeroinitializer }, align 32
@rs_ht_to_legacy = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\04\04\04\04\04\04\05\06\07\08\09\0A\0B", [19 x i8] zeroinitializer }, align 32
@__func__.rs_get_adjacent_rate = private unnamed_addr constant [21 x i8] c"rs_get_adjacent_rate\00", align 1
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Skipping masked lower rate: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Skipping masked higher rate: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iwl-agn-rs\00", [21 x i8] zeroinitializer }, align 32
@__func__.rs_alloc_sta = private unnamed_addr constant [13 x i8] c"rs_alloc_sta\00", align 1
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"create station rate scale window\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.rs_free_sta = private unnamed_addr constant [12 x i8] c"rs_free_sta\00", align 1
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enter\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"leave\0A\00", [25 x i8] zeroinitializer }, align 32
@__func__.rs_tx_status = private unnamed_addr constant [13 x i8] c"rs_tx_status\00", align 1
@.str.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"get frame ack response, update rate scale window\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Station rate scaling not created yet.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Rate scaling not initialized yet.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"initial rate %d does not match %d (0x%x)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Neither active nor search matches tx rate\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"active- lq:%x, ant:%x, SGI:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"search- lq:%x, ant:%x, SGI:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"actual- lq:%x, ant:%x, SGI:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__func__.rs_stay_in_table = private unnamed_addr constant [17 x i8] c"rs_stay_in_table\00", align 1
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"LQ: stay is expired %d %d %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"LQ: stay in table clear win\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.rs_rate_scale_perform = private unnamed_addr constant [22 x i8] c"rs_rate_scale_perform\00", align 1
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rate scale calculate new rate for skb\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Rate scale index %d for type %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mask 0x%04X\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Current Rate is not valid\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tbl->expected_tpt is NULL\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"LQ: still below TH. succ=%d total=%d for index %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"expected_tpt should have been calculated by now\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"LQ: SWITCHING TO NEW TABLE suc=%d cur-tpt=%d old-tpt=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"LQ: GOING BACK TO THE OLD TABLE suc=%d cur-tpt=%d old-tpt=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"decrease rate because of low success_ratio\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"decrease rate because of low tpt\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"choose rate scale index %d action %d low %d high %d type %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Switch current  mcs: %X index: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LQ: STAY in legacy table\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"try to aggregate tid %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid BT load %d\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.rs_move_legacy_other = private unnamed_addr constant [21 x i8] c"rs_move_legacy_other\00", align 1
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LQ: Legacy toggle Antenna\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LQ: Legacy switch to SISO\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"LQ: Legacy switch to MIMO2\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"LQ: Legacy switch to MIMO3\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.rs_switch_to_siso = private unnamed_addr constant [18 x i8] c"rs_switch_to_siso\00", align 1
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LQ: try to switch to SISO\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"LQ: get best rate %d mask %X\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"can not switch with index %d rate mask %x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"LQ: Switch to new mcs %X index is green %X\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.rs_switch_to_mimo2 = private unnamed_addr constant [19 x i8] c"rs_switch_to_mimo2\00", align 1
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"LQ: try to switch to MIMO2\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"LQ: MIMO2 best rate %d mask %X\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Can't switch with index %d rate mask %x\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.rs_switch_to_mimo3 = private unnamed_addr constant [19 x i8] c"rs_switch_to_mimo3\00", align 1
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"LQ: try to switch to MIMO3\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"LQ: MIMO3 best rate %d mask %X\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.rs_move_siso_to_other = private unnamed_addr constant [22 x i8] c"rs_move_siso_to_other\00", align 1
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LQ: SISO toggle Antenna\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LQ: SISO switch to MIMO2\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LQ: SISO toggle SGI/NGI\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SGI was set in GF+SISO\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LQ: SISO switch to MIMO3\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.rs_move_mimo2_to_other = private unnamed_addr constant [23 x i8] c"rs_move_mimo2_to_other\00", align 1
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LQ: MIMO2 toggle Antennas\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LQ: MIMO2 switch to SISO\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LQ: MIMO2 toggle SGI/NGI\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LQ: MIMO2 switch to MIMO3\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.rs_move_mimo3_to_other = private unnamed_addr constant [23 x i8] c"rs_move_mimo3_to_other\00", align 1
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LQ: MIMO3 toggle Antennas\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LQ: MIMO3 switch to SISO\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LQ: MIMO3 switch to MIMO2\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LQ: MIMO3 toggle SGI/NGI\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.rs_set_stay_in_table = private unnamed_addr constant [21 x i8] c"rs_set_stay_in_table\00", align 1
@.str.68 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"we are staying in the same table\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"tid exceeds max TID count: %d/%d\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.rs_tl_turn_on_agg_for_tid = private unnamed_addr constant [26 x i8] c"rs_tl_turn_on_agg_for_tid\00", align 1
@.str.70 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"BT traffic (%d), no aggregation allowed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Starting Tx agg: STA: %pM tid: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Fail start Tx agg on tid: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.rs_get_rate = private unnamed_addr constant [12 x i8] c"rs_get_rate\00", align 1
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rate_scale_table\00", [47 x i8] zeroinitializer }, align 32
@rs_sta_dbgfs_scale_table_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @rs_sta_dbgfs_scale_table_read, ptr @rs_sta_dbgfs_scale_table_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rate_stats_table\00", [47 x i8] zeroinitializer }, align 32
@rs_sta_dbgfs_stats_table_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @rs_sta_dbgfs_stats_table_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rate_scale_data\00", [16 x i8] zeroinitializer }, align 32
@rs_sta_dbgfs_rate_scale_data_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @rs_sta_dbgfs_rate_scale_data_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_agg_tid_enable\00", [46 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sta_id %d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed=%d success=%d rate=0%X\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fixed rate 0x%X\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"valid_tx_ant %s%s%s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ANT_A,\00", [25 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ANT_B,\00", [25 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ANT_C\00", [26 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lq type %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"legacy\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HT\00", [29 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SISO\00", [27 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIMO2\00", [26 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIMO3\00", [26 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"40MHz\00", [26 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"20MHz\00", [26 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" %s %s %s\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SGI\00", [28 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"GF enabled\00", [21 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AGG on\00", [25 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"last tx rate=0x%X\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"general:flags=0x%X mimo-d=%d s-ant0x%x d-ant=0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"agg:time_limit=%d dist_start_th=%d frame_cnt_limit=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Start idx [0]=0x%x [1]=0x%x [2]=0x%x [3]=0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c" rate[%d] 0x%X %smbps\0A\00", [41 x i8] zeroinitializer }, align 32
@iwl_rate_mcs = internal constant { [13 x %struct.iwl_rate_mcs_info], [72 x i8] } { [13 x %struct.iwl_rate_mcs_info] [%struct.iwl_rate_mcs_info { [12 x i8] c"1\00\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"BPSK DSSS\00\00\00" }, %struct.iwl_rate_mcs_info { [12 x i8] c"2\00\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"QPSK DSSS\00\00\00" }, %struct.iwl_rate_mcs_info { [12 x i8] c"5.5\00\00\00\00\00\00\00\00\00", [12 x i8] c"BPSK CCK\00\00\00\00" }, %struct.iwl_rate_mcs_info { [12 x i8] c"11\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"QPSK CCK\00\00\00\00" }, %struct.iwl_rate_mcs_info { [12 x i8] c"6\00\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"BPSK 1/2\00\00\00\00" }, %struct.iwl_rate_mcs_info { [12 x i8] c"9\00\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"BPSK 1/2\00\00\00\00" }, %struct.iwl_rate_mcs_info { [12 x i8] c"12\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"QPSK 1/2\00\00\00\00" }, %struct.iwl_rate_mcs_info { [12 x i8] c"18\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"QPSK 3/4\00\00\00\00" }, %struct.iwl_rate_mcs_info { [12 x i8] c"24\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"16QAM 1/2\00\00\00" }, %struct.iwl_rate_mcs_info { [12 x i8] c"36\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"16QAM 3/4\00\00\00" }, %struct.iwl_rate_mcs_info { [12 x i8] c"48\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"64QAM 2/3\00\00\00" }, %struct.iwl_rate_mcs_info { [12 x i8] c"54\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"64QAM 3/4\00\00\00" }, %struct.iwl_rate_mcs_info { [12 x i8] c"60\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"64QAM 5/6\00\00\00" }], [72 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c" rate[%d] 0x%X %smbps (%s)\0A\00", [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.104 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%x\00", [29 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.rs_program_fix_rate = private unnamed_addr constant [20 x i8] c"rs_program_fix_rate\00", align 1
@.str.108 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sta_id %d rate 0x%X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s type=%d SGI=%d HT40=%d DUP=%d GF=%d\0Arate=0x%X\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"x\00", [30 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"counter=%d success=%d %%=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Bit Rate= %d Mb/s\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.115 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 3, i64 1, i64 2]
@__sancov_gen_cov_switch_values.117 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.118 = internal global [14 x i64] [i64 12, i64 8, i64 1, i64 3, i64 5, i64 7, i64 9, i64 10, i64 11, i64 13, i64 15, i64 20, i64 55, i64 110]
@__sancov_gen_cov_switch_values.119 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.121 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.122 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 7]
@__sancov_gen_cov_switch_values.123 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.125 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.126 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.127 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.128 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.129 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.130 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.131 = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.132 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 7]
@__sancov_gen_cov_switch_values.133 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 7]
@__sancov_gen_cov_switch_values.134 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 7]
@___asan_gen_.135 = private unnamed_addr constant [10 x i8] c"iwl_rates\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 78, i32 28 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2786, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2826, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"rs_ops\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3269, i32 38 }
@___asan_gen_.148 = private unnamed_addr constant [26 x i8] c"../include/net/mac80211.h\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 6355, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [18 x i8] c"ant_toggle_lookup\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 46, i32 17 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 536, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 548, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 568, i32 5 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1088, i32 6 }
@___asan_gen_.165 = private unnamed_addr constant [20 x i8] c"expected_tpt_legacy\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 160, i32 18 }
@___asan_gen_.168 = private unnamed_addr constant [23 x i8] c"expected_tpt_siso20MHz\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 164, i32 18 }
@___asan_gen_.171 = private unnamed_addr constant [23 x i8] c"expected_tpt_siso40MHz\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 171, i32 18 }
@___asan_gen_.174 = private unnamed_addr constant [25 x i8] c"expected_tpt_mimo2_20MHz\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 178, i32 18 }
@___asan_gen_.177 = private unnamed_addr constant [25 x i8] c"expected_tpt_mimo2_40MHz\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 185, i32 18 }
@___asan_gen_.180 = private unnamed_addr constant [25 x i8] c"expected_tpt_mimo3_20MHz\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 192, i32 18 }
@___asan_gen_.183 = private unnamed_addr constant [25 x i8] c"expected_tpt_mimo3_40MHz\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 199, i32 18 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3044, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3047, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3050, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant [16 x i8] c"rs_ht_to_legacy\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 36, i32 11 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 753, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 763, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3270, i32 10 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2753, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3024, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3025, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 882, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 886, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 889, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 938, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 965, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 967, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 970, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 972, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2114, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2137, i32 5 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2207, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2248, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2254, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2273, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2289, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2314, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2331, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2344, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2360, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2413, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2451, i32 5 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2516, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2561, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2578, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2594, i32 6 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1427, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1454, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1480, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1496, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1521, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1356, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1375, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1377, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1382, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1252, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1269, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1271, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1307, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1324, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1624, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1647, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1674, i32 4 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1681, i32 6 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1697, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1792, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1810, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1840, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1864, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1960, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1976, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2001, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2030, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1060, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 416, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 385, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 393, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 402, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3246, i32 22 }
@___asan_gen_.390 = private unnamed_addr constant [29 x i8] c"rs_sta_dbgfs_scale_table_ops\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3165, i32 37 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3248, i32 22 }
@___asan_gen_.396 = private unnamed_addr constant [29 x i8] c"rs_sta_dbgfs_stats_table_ops\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3209, i32 37 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3250, i32 22 }
@___asan_gen_.402 = private unnamed_addr constant [33 x i8] c"rs_sta_dbgfs_rate_scale_data_ops\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3235, i32 37 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3252, i32 20 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3101, i32 29 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3102, i32 29 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3105, i32 29 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3107, i32 29 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3108, i32 47 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3108, i32 58 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3109, i32 47 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3110, i32 47 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3111, i32 29 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3112, i32 33 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3112, i32 44 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3114, i32 32 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3115, i32 32 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3116, i32 34 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3116, i32 44 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3118, i32 23 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3118, i32 33 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3119, i32 32 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3120, i32 22 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3121, i32 27 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3122, i32 25 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3124, i32 29 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3126, i32 29 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3133, i32 29 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3140, i32 4 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3150, i32 31 }
@___asan_gen_.486 = private unnamed_addr constant [13 x i8] c"iwl_rate_mcs\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 207, i32 39 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3154, i32 31 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3073, i32 18 }
@___asan_gen_.496 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.496, i32 156, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 334, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3187, i32 5 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3189, i32 31 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3189, i32 37 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3198, i32 5 }
@___asan_gen_.513 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.514 = private constant [47 x i8] c"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 3225, i32 5 }
@llvm.compiler.used = appending global [127 x ptr] [ptr @iwl_rates, ptr @.str, ptr @.str.1, ptr @rs_ops, ptr @.str.2, ptr @ant_toggle_lookup, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @expected_tpt_legacy, ptr @expected_tpt_siso20MHz, ptr @expected_tpt_siso40MHz, ptr @expected_tpt_mimo2_20MHz, ptr @expected_tpt_mimo2_40MHz, ptr @expected_tpt_mimo3_20MHz, ptr @expected_tpt_mimo3_40MHz, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @rs_ht_to_legacy, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @rs_sta_dbgfs_scale_table_ops, ptr @.str.74, ptr @rs_sta_dbgfs_stats_table_ops, ptr @.str.75, ptr @rs_sta_dbgfs_rate_scale_data_ops, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @iwl_rate_mcs, ptr @.str.103, ptr @.str.104, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113], section "llvm.metadata"
@0 = internal global [127 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_rates to i32), i32 143, i32 192, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ant_toggle_lookup to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expected_tpt_legacy to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expected_tpt_siso20MHz to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expected_tpt_siso40MHz to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expected_tpt_mimo2_20MHz to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expected_tpt_mimo2_40MHz to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expected_tpt_mimo3_20MHz to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expected_tpt_mimo3_40MHz to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_ht_to_legacy to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_sta_dbgfs_scale_table_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_sta_dbgfs_stats_table_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_sta_dbgfs_rate_scale_data_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_rate_mcs to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_rs_rate_init(ptr noundef %priv, ptr noundef %sta, i8 noundef zeroext %sta_id) local_unnamed_addr #0 align 64 {
entry:
  %supp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 13
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %supp) #12
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 8
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chandef, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %arrayidx = getelementptr %struct.wiphy, ptr %3, i32 0, i32 53, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %lq = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 5, i32 2, i32 3
  %10 = ptrtoint ptr %lq to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %sta_id, ptr %lq, align 2
  %lq_info = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 25, i32 1
  br label %for.body9

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %entry
  %i.0244 = phi i32 [ 0, %entry ], [ %inc, %for.body9.for.body9_crit_edge ]
  %arrayidx11 = getelementptr [2 x %struct.iwl_scale_tbl_info], ptr %lq_info, i32 0, i32 0, i32 9, i32 %i.0244
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %arrayidx11, align 8
  %success_counter.i = getelementptr [2 x %struct.iwl_scale_tbl_info], ptr %lq_info, i32 0, i32 0, i32 9, i32 %i.0244, i32 1
  %12 = ptrtoint ptr %success_counter.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %success_counter.i, align 8
  %success_ratio.i = getelementptr [2 x %struct.iwl_scale_tbl_info], ptr %lq_info, i32 0, i32 0, i32 9, i32 %i.0244, i32 2
  %13 = ptrtoint ptr %success_ratio.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %success_ratio.i, align 4
  %counter.i = getelementptr [2 x %struct.iwl_scale_tbl_info], ptr %lq_info, i32 0, i32 0, i32 9, i32 %i.0244, i32 3
  %14 = ptrtoint ptr %counter.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %counter.i, align 8
  %average_tpt.i = getelementptr [2 x %struct.iwl_scale_tbl_info], ptr %lq_info, i32 0, i32 0, i32 9, i32 %i.0244, i32 4
  %15 = ptrtoint ptr %average_tpt.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %average_tpt.i, align 4
  %stamp.i = getelementptr [2 x %struct.iwl_scale_tbl_info], ptr %lq_info, i32 0, i32 0, i32 9, i32 %i.0244, i32 5
  %16 = ptrtoint ptr %stamp.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %stamp.i, align 8
  %inc = add nuw nsw i32 %i.0244, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %for.body9.for.body9.1_crit_edge, label %for.body9.for.body9_crit_edge

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body9

for.body9.for.body9.1_crit_edge:                  ; preds = %for.body9
  br label %for.body9.1

for.body9.1:                                      ; preds = %for.body9.1.for.body9.1_crit_edge, %for.body9.for.body9.1_crit_edge
  %i.0244.1 = phi i32 [ %inc.1, %for.body9.1.for.body9.1_crit_edge ], [ 0, %for.body9.for.body9.1_crit_edge ]
  %arrayidx11.1 = getelementptr [2 x %struct.iwl_scale_tbl_info], ptr %lq_info, i32 0, i32 1, i32 9, i32 %i.0244.1
  %17 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %arrayidx11.1, align 8
  %success_counter.i.1 = getelementptr [2 x %struct.iwl_scale_tbl_info], ptr %lq_info, i32 0, i32 1, i32 9, i32 %i.0244.1, i32 1
  %18 = ptrtoint ptr %success_counter.i.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %success_counter.i.1, align 8
  %success_ratio.i.1 = getelementptr [2 x %struct.iwl_scale_tbl_info], ptr %lq_info, i32 0, i32 1, i32 9, i32 %i.0244.1, i32 2
  %19 = ptrtoint ptr %success_ratio.i.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %success_ratio.i.1, align 4
  %counter.i.1 = getelementptr [2 x %struct.iwl_scale_tbl_info], ptr %lq_info, i32 0, i32 1, i32 9, i32 %i.0244.1, i32 3
  %20 = ptrtoint ptr %counter.i.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %counter.i.1, align 8
  %average_tpt.i.1 = getelementptr [2 x %struct.iwl_scale_tbl_info], ptr %lq_info, i32 0, i32 1, i32 9, i32 %i.0244.1, i32 4
  %21 = ptrtoint ptr %average_tpt.i.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %average_tpt.i.1, align 4
  %stamp.i.1 = getelementptr [2 x %struct.iwl_scale_tbl_info], ptr %lq_info, i32 0, i32 1, i32 9, i32 %i.0244.1, i32 5
  %22 = ptrtoint ptr %stamp.i.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %stamp.i.1, align 8
  %inc.1 = add nuw nsw i32 %i.0244.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, 13
  br i1 %exitcond.1.not, label %for.inc12.1, label %for.body9.1.for.body9.1_crit_edge

for.body9.1.for.body9.1_crit_edge:                ; preds = %for.body9.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body9.1

for.inc12.1:                                      ; preds = %for.body9.1
  %lq_sta5 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 2
  %flush_timer = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 0, i32 3
  %23 = ptrtoint ptr %flush_timer to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %flush_timer, align 8
  %band15 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %9, i32 0, i32 2
  %24 = ptrtoint ptr %band15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %band15, align 4
  %arrayidx16 = getelementptr [6 x i32], ptr %sta, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx16, align 4
  %supp_rates17 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 5
  %28 = ptrtoint ptr %supp_rates17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %supp_rates17, align 8
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %conv = zext i8 %sta_id to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %30, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_rs_rate_init, ptr noundef nonnull @.str, i32 noundef %conv) #12
  %is_dup = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 3
  %31 = ptrtoint ptr %is_dup to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %is_dup, align 2
  %max_rate_idx = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 5, i32 2, i32 2
  %32 = ptrtoint ptr %max_rate_idx to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %max_rate_idx, align 4
  %missed_rate_counter = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta5, i32 0, i32 23
  %33 = ptrtoint ptr %missed_rate_counter to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 15, ptr %missed_rate_counter, align 1
  %is_green = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 2
  %34 = ptrtoint ptr %is_green to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %is_green, align 1
  %35 = ptrtoint ptr %band15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %band15, align 4
  %band23 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 3, i32 2
  %37 = ptrtoint ptr %band23 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %band23, align 4
  %38 = load i32, ptr %band15, align 4
  %arrayidx26 = getelementptr [6 x i32], ptr %sta, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx26, align 4
  %41 = ptrtoint ptr %supp to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %supp, align 4
  %active_legacy_rate = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 5, i32 1
  %42 = ptrtoint ptr %active_legacy_rate to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %active_legacy_rate, align 4
  %call27 = call i32 @_find_next_bit_be(ptr noundef nonnull %supp, i32 noundef 32, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call27)
  %cmp29246 = icmp slt i32 %call27, 32
  br i1 %cmp29246, label %for.body31.lr.ph, label %for.inc12.1.for.end39_crit_edge

for.inc12.1.for.end39_crit_edge:                  ; preds = %for.inc12.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end39

for.body31.lr.ph:                                 ; preds = %for.inc12.1
  %bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %9, i32 0, i32 1
  br label %for.body31

for.body31:                                       ; preds = %for.body31.for.body31_crit_edge, %for.body31.lr.ph
  %i.1247 = phi i32 [ %call27, %for.body31.lr.ph ], [ %call38, %for.body31.for.body31_crit_edge ]
  %43 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bitrates, align 4
  %hw_value = getelementptr %struct.ieee80211_rate, ptr %44, i32 %i.1247, i32 2
  %45 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %hw_value, align 2
  %conv33 = zext i16 %46 to i32
  %shl = shl nuw i32 1, %conv33
  %47 = ptrtoint ptr %active_legacy_rate to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %active_legacy_rate, align 4
  %49 = trunc i32 %shl to i16
  %conv36 = or i16 %48, %49
  store i16 %conv36, ptr %active_legacy_rate, align 4
  %add = add nsw i32 %i.1247, 1
  %call38 = call i32 @_find_next_bit_be(ptr noundef nonnull %supp, i32 noundef 32, i32 noundef %add) #12
  %cmp29 = icmp slt i32 %call38, 32
  br i1 %cmp29, label %for.body31.for.body31_crit_edge, label %for.body31.for.end39_crit_edge

for.body31.for.end39_crit_edge:                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end39

for.body31.for.body31_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body31

for.end39:                                        ; preds = %for.body31.for.end39_crit_edge, %for.inc12.1.for.end39_crit_edge
  %mcs = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4
  %50 = ptrtoint ptr %mcs to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %mcs, align 1
  %conv41 = zext i8 %51 to i16
  %shl42 = shl nuw nsw i16 %conv41, 1
  %active_siso_rate = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta5, i32 0, i32 19
  %52 = and i8 %51, 1
  %and = zext i8 %52 to i16
  %shl42.masked = and i16 %shl42, 508
  %53 = or i16 %shl42.masked, %and
  %54 = shl nuw nsw i16 %53, 4
  %55 = ptrtoint ptr %active_siso_rate to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %active_siso_rate, align 2
  %arrayidx62 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 1
  %56 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %57 to i16
  %shl64 = shl nuw nsw i16 %conv63, 1
  %active_mimo2_rate = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 5, i32 2
  %58 = and i8 %57, 1
  %and70 = zext i8 %58 to i16
  %shl64.masked = and i16 %shl64, 508
  %59 = or i16 %shl64.masked, %and70
  %60 = shl nuw nsw i16 %59, 4
  %61 = ptrtoint ptr %active_mimo2_rate to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %active_mimo2_rate, align 8
  %arrayidx85 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 2
  %62 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %63 to i16
  %shl87 = shl nuw nsw i16 %conv86, 1
  %active_mimo3_rate = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 5, i32 2, i32 1
  %64 = and i8 %63, 1
  %and93 = zext i8 %64 to i16
  %shl87.masked = and i16 %shl87, 508
  %65 = or i16 %shl87.masked, %and93
  %66 = shl nuw nsw i16 %65, 4
  %67 = ptrtoint ptr %active_mimo3_rate to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %active_mimo3_rate, align 2
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 4
  %conv112 = zext i16 %54 to i32
  %conv114 = zext i16 %60 to i32
  %conv116 = zext i16 %66 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %69, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_rs_rate_init, ptr noundef nonnull @.str.1, i32 noundef %conv112, i32 noundef %conv114, i32 noundef %conv116) #12
  %nvm_data = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %70 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %nvm_data, align 8
  %valid_tx_ant = getelementptr inbounds %struct.iwl_nvm_data, ptr %71, i32 0, i32 20
  %72 = ptrtoint ptr %valid_tx_ant to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %valid_tx_ant, align 1
  %conv.i = zext i8 %73 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and2.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %..i = select i1 %tobool3.not.i, i8 4, i8 2
  %retval.0.i = select i1 %tobool.not.i, i8 %..i, i8 1
  %single_stream_ant_msk = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 0, i32 3
  %74 = ptrtoint ptr %single_stream_ant_msk to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %retval.0.i, ptr %single_stream_ant_msk, align 2
  %75 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %nvm_data, align 8
  %valid_tx_ant122 = getelementptr inbounds %struct.iwl_nvm_data, ptr %76, i32 0, i32 20
  %77 = ptrtoint ptr %valid_tx_ant122 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %valid_tx_ant122, align 1
  %conv.i231 = zext i8 %78 to i32
  %and.i232 = and i32 %conv.i231, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i232)
  %tobool.not.i233 = icmp eq i32 %and.i232, 0
  %and2.i234 = and i32 %conv.i231, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i234)
  %tobool3.not.i235 = icmp eq i32 %and2.i234, 0
  %..i236.op = select i1 %tobool3.not.i235, i8 -5, i8 -3
  %neg = select i1 %tobool.not.i233, i8 %..i236.op, i8 -2
  %and128 = and i8 %neg, %78
  %dual_stream_ant_msk = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 0, i32 4
  %79 = ptrtoint ptr %dual_stream_ant_msk to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %and128, ptr %dual_stream_ant_msk, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and128)
  %tobool.not = icmp eq i8 %and128, 0
  br i1 %tobool.not, label %for.end39.if.end150.sink.split_crit_edge, label %if.else

for.end39.if.end150.sink.split_crit_edge:         ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end150.sink.split

if.else:                                          ; preds = %for.end39
  %80 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %nvm_data, align 8
  %valid_tx_ant139 = getelementptr inbounds %struct.iwl_nvm_data, ptr %81, i32 0, i32 20
  %82 = ptrtoint ptr %valid_tx_ant139 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %valid_tx_ant139, align 1
  %and.i238 = and i8 %83, 1
  %and3.i = lshr i8 %83, 1
  %and3.lobit.i = and i8 %and3.i, 1
  %add.i = add nuw nsw i8 %and3.lobit.i, %and.i238
  %and10.i = lshr i8 %83, 2
  %and10.lobit.i = and i8 %and10.i, 1
  %add16.i = add nuw nsw i8 %add.i, %and10.lobit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %add16.i)
  %cmp142 = icmp eq i8 %add16.i, 2
  br i1 %cmp142, label %if.else.if.end150.sink.split_crit_edge, label %if.else.if.end150_crit_edge

if.else.if.end150_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end150

if.else.if.end150.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end150.sink.split

if.end150.sink.split:                             ; preds = %if.else.if.end150.sink.split_crit_edge, %for.end39.if.end150.sink.split_crit_edge
  %.sink = phi i8 [ 3, %for.end39.if.end150.sink.split_crit_edge ], [ %83, %if.else.if.end150.sink.split_crit_edge ]
  %84 = ptrtoint ptr %dual_stream_ant_msk to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %.sink, ptr %dual_stream_ant_msk, align 1
  br label %if.end150

if.end150:                                        ; preds = %if.end150.sink.split, %if.else.if.end150_crit_edge
  %tx_agg_tid_en = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 7, i32 25, i32 5
  %85 = ptrtoint ptr %tx_agg_tid_en to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -1, ptr %tx_agg_tid_en, align 8
  %drv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 7, i32 25, i32 9
  %86 = ptrtoint ptr %drv to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %priv, ptr %drv, align 8
  %n_bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %9, i32 0, i32 4
  %87 = ptrtoint ptr %n_bitrates.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %n_bitrates.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp46.i = icmp sgt i32 %88, 0
  br i1 %cmp46.i, label %for.body.lr.ph.i, label %if.end150.land.end.i_crit_edge

if.end150.land.end.i_crit_edge:                   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

for.body.lr.ph.i:                                 ; preds = %if.end150
  %cmp.i.i = icmp eq ptr %sta, null
  br i1 %cmp.i.i, label %for.body.lr.ph.i.if.then.i.split_crit_edge, label %for.body.lr.ph.i.split

for.body.lr.ph.i.if.then.i.split_crit_edge:       ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.split

for.body.lr.ph.i.split:                           ; preds = %for.body.lr.ph.i
  %89 = ptrtoint ptr %band15 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %band15, align 4
  %arrayidx.i.i = getelementptr [6 x i32], ptr %sta, i32 0, i32 %90
  %91 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i.split
  %i.047.i = phi i32 [ 0, %for.body.lr.ph.i.split ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %93 = shl nuw i32 1, %i.047.i
  %94 = and i32 %92, %93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i239 = icmp eq i32 %94, 0
  br i1 %tobool.not.i239, label %for.inc.i, label %for.body.i.if.then.i.split_crit_edge

for.body.i.if.then.i.split_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.split

if.then.i.split:                                  ; preds = %for.body.i.if.then.i.split_crit_edge, %for.body.lr.ph.i.if.then.i.split_crit_edge
  %i.047.lcssa.i.split = phi i32 [ 0, %for.body.lr.ph.i.if.then.i.split_crit_edge ], [ %i.047.i, %for.body.i.if.then.i.split_crit_edge ]
  %sext = shl i32 %i.047.lcssa.i.split, 24
  %phi.cast = ashr exact i32 %sext, 24
  br label %rate_lowest_index.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.047.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %88
  br i1 %exitcond.not.i, label %for.inc.i.land.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.land.end.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.end.i:                                       ; preds = %for.inc.i.land.end.i_crit_edge, %if.end150.land.end.i_crit_edge
  %.b43.i = load i1, ptr @rate_lowest_index.__already_done, align 1
  br i1 %.b43.i, label %land.end.i.rate_lowest_index.exit_crit_edge, label %if.then7.i, !prof !293

land.end.i.rate_lowest_index.exit_crit_edge:      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rate_lowest_index.exit

if.then7.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rate_lowest_index.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 6355, i32 noundef 9, ptr noundef null) #12
  br label %rate_lowest_index.exit

rate_lowest_index.exit:                           ; preds = %if.then7.i, %land.end.i.rate_lowest_index.exit_crit_edge, %if.then.i.split
  %retval.0.i241 = phi i32 [ %phi.cast, %if.then.i.split ], [ 0, %if.then7.i ], [ 0, %land.end.i.rate_lowest_index.exit_crit_edge ]
  %last_txrate_idx = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 7, i32 25, i32 11
  %95 = ptrtoint ptr %last_txrate_idx to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %retval.0.i241, ptr %last_txrate_idx, align 4
  %96 = ptrtoint ptr %band15 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %band15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %97)
  %cmp154 = icmp eq i32 %97, 1
  br i1 %cmp154, label %if.then156, label %rate_lowest_index.exit.if.end159_crit_edge

rate_lowest_index.exit.if.end159_crit_edge:       ; preds = %rate_lowest_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end159

if.then156:                                       ; preds = %rate_lowest_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  %add158 = add nsw i32 %retval.0.i241, 4
  %98 = ptrtoint ptr %last_txrate_idx to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %add158, ptr %last_txrate_idx, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.then156, %rate_lowest_index.exit.if.end159_crit_edge
  %is_agg = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 7, i32 25, i32 15
  %99 = ptrtoint ptr %is_agg to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %is_agg, align 4
  %dbg_fixed_rate = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 7, i32 25, i32 7
  %100 = ptrtoint ptr %dbg_fixed_rate to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %dbg_fixed_rate, align 4
  %tobool.not.i242 = icmp eq ptr %sta, null
  %tobool1.not.i = icmp eq ptr %lq_sta5, null
  %or.cond.i = or i1 %tobool.not.i242, %tobool1.not.i
  br i1 %or.cond.i, label %if.end159.rs_initialize_lq.exit_crit_edge, label %if.end.i

if.end159.rs_initialize_lq.exit_crit_edge:        ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_initialize_lq.exit

if.end.i:                                         ; preds = %if.end159
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %101 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %drv_priv.i, align 8
  %103 = ptrtoint ptr %last_txrate_idx to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %last_txrate_idx, align 4
  %105 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %nvm_data, align 8
  %valid_tx_ant3.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %106, i32 0, i32 20
  %107 = ptrtoint ptr %valid_tx_ant3.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %valid_tx_ant3.i, align 1
  %search_better_tbl.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta5, i32 0, i32 3
  %109 = ptrtoint ptr %search_better_tbl.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %search_better_tbl.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool4.not.i = icmp eq i8 %110, 0
  %111 = ptrtoint ptr %lq_sta5 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %lq_sta5, align 8
  %sub.i = sub i8 1, %112
  %active_tbl.0.i = select i1 %tobool4.not.i, i8 %112, i8 %sub.i
  %idxprom.i = zext i8 %active_tbl.0.i to i32
  %arrayidx.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5, i32 0, i32 26, i32 %idxprom.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %104)
  %113 = icmp ugt i32 %104, 12
  %i.0.i = select i1 %113, i32 0, i32 %104
  %arrayidx17.i = getelementptr [13 x %struct.iwl_rate_info], ptr @iwl_rates, i32 0, i32 %i.0.i
  %114 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx17.i, align 1
  %conv18.i = zext i8 %115 to i32
  %conv.i.i = zext i8 %108 to i32
  %and.i.i = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and2.i.i = and i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %..i.i = select i1 %tobool3.not.i.i, i8 4, i8 2
  %retval.0.i.i = select i1 %tobool.not.i.i, i8 %..i.i, i8 1
  %ant_type.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5, i32 0, i32 26, i32 %idxprom.i, i32 1
  %116 = ptrtoint ptr %ant_type.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %retval.0.i.i, ptr %ant_type.i, align 4
  %conv21.i = zext i8 %retval.0.i.i to i32
  %shl.i = shl nuw nsw i32 %conv21.i, 14
  %or.i = or i32 %shl.i, %conv18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0.i)
  %cmp24.i = icmp ult i32 %i.0.i, 4
  %or27.i = or i32 %or.i, 512
  %spec.select.i = select i1 %cmp24.i, i32 %or27.i, i32 %or.i
  %band.i243 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 18
  %117 = ptrtoint ptr %band.i243 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %band.i243, align 8
  %and.i.i.i = lshr i32 %spec.select.i, 14
  %call1.i.i = call fastcc i32 @iwl_hwrate_to_plcp_idx(i32 noundef %spec.select.i) #12
  %is_SGI.i.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5, i32 0, i32 26, i32 %idxprom.i, i32 2
  %119 = trunc i32 %and.i.i.i to i8
  %conv3.i.i = and i8 %119, 7
  %120 = call ptr @memset(ptr %is_SGI.i.i, i32 0, i32 435)
  %121 = ptrtoint ptr %ant_type.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv3.i.i, ptr %ant_type.i, align 4
  %122 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %arrayidx.i, align 8
  %max_search.i.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5, i32 0, i32 26, i32 %idxprom.i, i32 6
  %123 = ptrtoint ptr %max_search.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 6, ptr %max_search.i.i, align 1
  %and.lobit.i.i.i = and i32 %and.i.i.i, 1
  %and2.i.i.i = lshr i32 %spec.select.i, 15
  %and2.lobit.i.i.i = and i32 %and2.i.i.i, 1
  %add.i.i.i = add nuw nsw i32 %and.lobit.i.i.i, %and2.lobit.i.i.i
  %and8.i.i.i = lshr i32 %spec.select.i, 16
  %and8.lobit.i.i.i = and i32 %and8.i.i.i, 1
  %add14.i.i.i = add nuw nsw i32 %add.i.i.i, %and8.lobit.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add14.i.i.i)
  %cmp7.i.i = icmp eq i32 %add14.i.i.i, 1
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.end.i.rs_get_tbl_info_from_mcs.exit.i_crit_edge

if.end.i.rs_get_tbl_info_from_mcs.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_get_tbl_info_from_mcs.exit.i

if.then9.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %118)
  %cmp10.i.i = icmp eq i32 %118, 1
  %..i83.i = select i1 %cmp10.i.i, i32 2, i32 1
  %124 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %..i83.i, ptr %arrayidx.i, align 8
  br label %rs_get_tbl_info_from_mcs.exit.i

rs_get_tbl_info_from_mcs.exit.i:                  ; preds = %if.then9.i.i, %if.end.i.rs_get_tbl_info_from_mcs.exit.i_crit_edge
  %call37.i = call fastcc i32 @rate_n_flags_from_tbl(ptr noundef %priv, ptr noundef %arrayidx.i, i32 noundef %call1.i.i, i8 noundef zeroext 0) #12
  %current_rate.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta5, i32 0, i32 26, i32 %idxprom.i, i32 8
  %125 = ptrtoint ptr %current_rate.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %call37.i, ptr %current_rate.i, align 8
  call fastcc void @rs_set_expected_tpt_table(ptr noundef nonnull %lq_sta5, ptr noundef %arrayidx.i) #12
  call fastcc void @rs_fill_link_cmd(ptr noundef null, ptr noundef nonnull %lq_sta5, i32 noundef %call37.i) #12
  %126 = ptrtoint ptr %lq to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %lq, align 2
  %idxprom39.i = zext i8 %127 to i32
  %lq41.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %idxprom39.i, i32 3
  %128 = ptrtoint ptr %lq41.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %lq, ptr %lq41.i, align 4
  %call43.i = call i32 @iwl_send_lq_cmd(ptr noundef %priv, ptr noundef %102, ptr noundef %lq, i8 noundef zeroext 0, i1 noundef zeroext true) #12
  br label %rs_initialize_lq.exit

rs_initialize_lq.exit:                            ; preds = %rs_get_tbl_info_from_mcs.exit.i, %if.end159.rs_initialize_lq.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %supp) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwlagn_rate_control_register() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ieee80211_rate_control_register(ptr noundef nonnull @rs_ops) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_rate_control_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwlagn_rate_control_unregister() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ieee80211_rate_control_unregister(ptr noundef nonnull @rs_ops) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rate_control_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal fastcc void @rs_get_tbl_info_from_mcs(i32 noundef %rate_n_flags, i32 noundef %band, ptr nocapture noundef writeonly %tbl, ptr nocapture noundef writeonly %rate_idx) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = lshr i32 %rate_n_flags, 14
  %and.lobit.i = and i32 %and.i, 1
  %and2.i = lshr i32 %rate_n_flags, 15
  %and2.lobit.i = and i32 %and2.i, 1
  %add.i = add nuw nsw i32 %and.lobit.i, %and2.lobit.i
  %and8.i = lshr i32 %rate_n_flags, 16
  %and8.lobit.i = and i32 %and8.i, 1
  %add14.i = add nuw nsw i32 %add.i, %and8.lobit.i
  %0 = getelementptr inbounds i8, ptr %tbl, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 432)
  %call1 = tail call fastcc i32 @iwl_hwrate_to_plcp_idx(i32 noundef %rate_n_flags)
  %2 = ptrtoint ptr %rate_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call1, ptr %rate_idx, align 4
  %is_SGI = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 2
  %3 = ptrtoint ptr %is_SGI to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %is_SGI, align 1
  %is_ht40 = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 3
  %4 = ptrtoint ptr %is_ht40 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %is_ht40, align 2
  %is_dup = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 4
  %5 = ptrtoint ptr %is_dup to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %is_dup, align 1
  %6 = trunc i32 %and.i to i8
  %conv3 = and i8 %6, 7
  %ant_type = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 1
  %7 = ptrtoint ptr %ant_type to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3, ptr %ant_type, align 4
  %8 = ptrtoint ptr %tbl to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tbl, align 8
  %max_search = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 6
  %9 = ptrtoint ptr %max_search to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 6, ptr %max_search, align 1
  %and4 = and i32 %rate_n_flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.then5, label %if.else17

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add14.i)
  %cmp7 = icmp eq i32 %add14.i, 1
  br i1 %cmp7, label %if.then9, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %band)
  %cmp10 = icmp eq i32 %band, 1
  %. = select i1 %cmp10, i32 2, i32 1
  br label %cleanup.sink.split

if.else17:                                        ; preds = %entry
  %and18 = and i32 %rate_n_flags, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else17.if.end22_crit_edge, label %if.then20

if.else17.if.end22_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then20:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %is_SGI to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %is_SGI, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.else17.if.end22_crit_edge
  %and25 = and i32 %rate_n_flags, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %11 = and i32 %rate_n_flags, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %if.end22.if.end29_crit_edge, label %if.then27

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %is_ht40 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %is_ht40, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end22.if.end29_crit_edge
  br i1 %tobool26.not, label %if.end29.if.end34_crit_edge, label %if.then32

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %is_dup to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %is_dup, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end29.if.end34_crit_edge
  %conv.i = trunc i32 %rate_n_flags to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv.i)
  %cmp37 = icmp ult i8 %conv.i, 8
  br i1 %cmp37, label %if.then39, label %if.else46

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add14.i)
  %cmp41 = icmp eq i32 %add14.i, 1
  br i1 %cmp41, label %if.then39.cleanup.sink.split_crit_edge, label %if.then39.cleanup_crit_edge

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then39.cleanup.sink.split_crit_edge:           ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.else46:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %conv.i)
  %cmp48 = icmp ult i8 %conv.i, 16
  br i1 %cmp48, label %if.then50, label %if.else57

if.then50:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add14.i)
  %cmp52 = icmp eq i32 %add14.i, 2
  br i1 %cmp52, label %if.then50.cleanup.sink.split_crit_edge, label %if.then50.cleanup_crit_edge

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then50.cleanup.sink.split_crit_edge:           ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.else57:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add14.i)
  %cmp59 = icmp eq i32 %add14.i, 3
  br i1 %cmp59, label %if.then61, label %if.else57.cleanup_crit_edge

if.else57.cleanup_crit_edge:                      ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then61:                                        ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %max_search to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 8, ptr %max_search, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then61, %if.then50.cleanup.sink.split_crit_edge, %if.then39.cleanup.sink.split_crit_edge, %if.then9
  %.sink = phi i32 [ 5, %if.then61 ], [ %., %if.then9 ], [ 3, %if.then39.cleanup.sink.split_crit_edge ], [ 4, %if.then50.cleanup.sink.split_crit_edge ]
  %16 = ptrtoint ptr %tbl to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %tbl, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else57.cleanup_crit_edge, %if.then50.cleanup_crit_edge, %if.then39.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rate_n_flags_from_tbl(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %tbl, i32 noundef %index, i8 noundef zeroext %use_green) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tbl, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end52 [
    i32 1, label %entry.if.then_crit_edge
    i32 2, label %entry.if.then_crit_edge145
    i32 3, label %entry.if.then19_crit_edge
    i32 4, label %entry.if.then19_crit_edge146
    i32 5, label %entry.if.then19_crit_edge147
  ]

entry.if.then19_crit_edge147:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

entry.if.then19_crit_edge146:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

entry.if.then19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

entry.if.then_crit_edge145:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge145
  %arrayidx = getelementptr [13 x %struct.iwl_rate_info], ptr @iwl_rates, i32 0, i32 %index
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %index)
  %5 = icmp ult i32 %index, 4
  %or = or i32 %conv, 512
  %spec.select144 = select i1 %5, i32 %or, i32 %conv
  br label %if.end58

if.then19:                                        ; preds = %entry.if.then19_crit_edge, %entry.if.then19_crit_edge146, %entry.if.then19_crit_edge147
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %index)
  %cmp20 = icmp sgt i32 %index, 12
  br i1 %cmp20, label %do.end, label %if.then19.if.end26_crit_edge

if.then19.if.end26_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

do.end:                                           ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %7, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef %index) #12
  br label %if.end26

if.end26:                                         ; preds = %do.end, %if.then19.if.end26_crit_edge
  %index.addr.0 = phi i32 [ 12, %do.end ], [ %index, %if.then19.if.end26_crit_edge ]
  %8 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tbl, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %9, label %if.else42 [
    i32 3, label %if.then30
    i32 4, label %if.then38
  ]

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %plcp_siso = getelementptr [13 x %struct.iwl_rate_info], ptr @iwl_rates, i32 0, i32 %index.addr.0, i32 1
  %11 = ptrtoint ptr %plcp_siso to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %plcp_siso, align 1
  %conv32 = zext i8 %12 to i32
  %or33 = or i32 %conv32, 256
  br label %if.end58

if.then38:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %plcp_mimo2 = getelementptr [13 x %struct.iwl_rate_info], ptr @iwl_rates, i32 0, i32 %index.addr.0, i32 2
  %13 = ptrtoint ptr %plcp_mimo2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %plcp_mimo2, align 1
  %conv40 = zext i8 %14 to i32
  %or41 = or i32 %conv40, 256
  br label %if.end58

if.else42:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %plcp_mimo3 = getelementptr [13 x %struct.iwl_rate_info], ptr @iwl_rates, i32 0, i32 %index.addr.0, i32 3
  %15 = ptrtoint ptr %plcp_mimo3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %plcp_mimo3, align 1
  %conv44 = zext i8 %16 to i32
  %or45 = or i32 %conv44, 256
  br label %if.end58

do.end52:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev53 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %17 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev53, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %18, i32 noundef 0, ptr noundef nonnull @.str.4, i32 noundef %1) #12
  br label %if.end58

if.end58:                                         ; preds = %do.end52, %if.else42, %if.then38, %if.then30, %if.then
  %rate_n_flags.0 = phi i32 [ %or33, %if.then30 ], [ %or41, %if.then38 ], [ %or45, %if.else42 ], [ 0, %do.end52 ], [ %spec.select144, %if.then ]
  %ant_type = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 1
  %19 = ptrtoint ptr %ant_type to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ant_type, align 4
  %conv59 = zext i8 %20 to i32
  %shl = shl nuw nsw i32 %conv59, 14
  %and = and i32 %shl, 114688
  %or60 = or i32 %and, %rate_n_flags.0
  %21 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tbl, align 8
  %.off = add i32 %22, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then72, label %if.end58.if.end106_crit_edge

if.end58.if.end106_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.then72:                                        ; preds = %if.end58
  %is_ht40 = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 3
  %23 = ptrtoint ptr %is_ht40 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_ht40, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not = icmp eq i8 %24, 0
  br i1 %tobool.not, label %if.then72.if.end80_crit_edge, label %if.then73

if.then72.if.end80_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

if.then73:                                        ; preds = %if.then72
  %is_dup = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 4
  %25 = ptrtoint ptr %is_dup to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %is_dup, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool74.not = icmp eq i8 %26, 0
  br i1 %tobool74.not, label %if.else77, label %if.then75

if.then75:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #14
  %or76 = or i32 %or60, 4096
  br label %if.end80

if.else77:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #14
  %or78 = or i32 %or60, 2048
  br label %if.end80

if.end80:                                         ; preds = %if.else77, %if.then75, %if.then72.if.end80_crit_edge
  %rate_n_flags.1 = phi i32 [ %or76, %if.then75 ], [ %or78, %if.else77 ], [ %or60, %if.then72.if.end80_crit_edge ]
  %is_SGI = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 2
  %27 = ptrtoint ptr %is_SGI to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %is_SGI, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool81.not = icmp eq i8 %28, 0
  %or83 = or i32 %rate_n_flags.1, 8192
  %spec.select = select i1 %tobool81.not, i32 %rate_n_flags.1, i32 %or83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %use_green)
  %tobool85.not = icmp eq i8 %use_green, 0
  br i1 %tobool85.not, label %if.end80.if.end106_crit_edge, label %if.then86

if.end80.if.end106_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.then86:                                        ; preds = %if.end80
  %or87 = or i32 %spec.select, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp89 = icmp ne i32 %22, 3
  %brmerge = select i1 %cmp89, i1 true, i1 %tobool81.not
  br i1 %brmerge, label %if.then86.if.end106_crit_edge, label %if.then95

if.then86.if.end106_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.then95:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #14
  %and96 = and i32 %or87, -8193
  %dev101 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %29 = ptrtoint ptr %dev101 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev101, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %30, i32 noundef 0, ptr noundef nonnull @.str.5) #12
  br label %if.end106

if.end106:                                        ; preds = %if.then95, %if.then86.if.end106_crit_edge, %if.end80.if.end106_crit_edge, %if.end58.if.end106_crit_edge
  %rate_n_flags.3 = phi i32 [ %and96, %if.then95 ], [ %or87, %if.then86.if.end106_crit_edge ], [ %spec.select, %if.end80.if.end106_crit_edge ], [ %or60, %if.end58.if.end106_crit_edge ]
  ret i32 %rate_n_flags.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rs_set_expected_tpt_table(ptr nocapture noundef readonly %lq_sta, ptr nocapture noundef %tbl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tbl, align 8
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.off)
  %switch = icmp ult i32 %.off, 5
  br i1 %switch, label %if.end50, label %land.rhs13

land.rhs13:                                       ; preds = %entry
  %.b174 = load i1, ptr @rs_set_expected_tpt_table.__already_done, align 1
  br i1 %.b174, label %land.rhs13.cleanup_crit_edge, label %if.then, !prof !293

land.rhs13.cleanup_crit_edge:                     ; preds = %land.rhs13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.rhs13
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rs_set_expected_tpt_table.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1088, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end50:                                         ; preds = %entry
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %1, label %land.lhs.true90 [
    i32 1, label %if.end50.cleanup_crit_edge
    i32 2, label %if.end50.cleanup_crit_edge181
    i32 3, label %land.lhs.true
    i32 4, label %land.lhs.true73
  ]

if.end50.cleanup_crit_edge181:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end50
  %is_ht40 = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 3
  %3 = ptrtoint ptr %is_ht40 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_ht40, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool61.not = icmp eq i8 %4, 0
  br i1 %tobool61.not, label %land.lhs.true.if.end103_crit_edge, label %lor.lhs.false62

land.lhs.true.if.end103_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103

lor.lhs.false62:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %is_dup = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 14
  %5 = ptrtoint ptr %is_dup to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_dup, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool63.not = icmp eq i8 %6, 0
  %spec.select = select i1 %tobool63.not, ptr @expected_tpt_siso40MHz, ptr @expected_tpt_siso20MHz
  br label %if.end103

land.lhs.true73:                                  ; preds = %if.end50
  %is_ht4074 = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 3
  %7 = ptrtoint ptr %is_ht4074 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_ht4074, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool75.not = icmp eq i8 %8, 0
  br i1 %tobool75.not, label %land.lhs.true73.if.end103_crit_edge, label %lor.lhs.false76

land.lhs.true73.if.end103_crit_edge:              ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103

lor.lhs.false76:                                  ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #14
  %is_dup77 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 14
  %9 = ptrtoint ptr %is_dup77 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_dup77, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool79.not = icmp eq i8 %10, 0
  %spec.select179 = select i1 %tobool79.not, ptr @expected_tpt_mimo2_40MHz, ptr @expected_tpt_mimo2_20MHz
  br label %if.end103

land.lhs.true90:                                  ; preds = %if.end50
  %is_ht4091 = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 3
  %11 = ptrtoint ptr %is_ht4091 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_ht4091, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool92.not = icmp eq i8 %12, 0
  br i1 %tobool92.not, label %land.lhs.true90.if.end103_crit_edge, label %lor.lhs.false93

land.lhs.true90.if.end103_crit_edge:              ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103

lor.lhs.false93:                                  ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #14
  %is_dup94 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 14
  %13 = ptrtoint ptr %is_dup94 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_dup94, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool96.not = icmp eq i8 %14, 0
  %spec.select180 = select i1 %tobool96.not, ptr @expected_tpt_mimo3_40MHz, ptr @expected_tpt_mimo3_20MHz
  br label %if.end103

if.end103:                                        ; preds = %lor.lhs.false93, %land.lhs.true90.if.end103_crit_edge, %lor.lhs.false76, %land.lhs.true73.if.end103_crit_edge, %lor.lhs.false62, %land.lhs.true.if.end103_crit_edge
  %ht_tbl_pointer.0 = phi ptr [ @expected_tpt_siso20MHz, %land.lhs.true.if.end103_crit_edge ], [ @expected_tpt_mimo2_20MHz, %land.lhs.true73.if.end103_crit_edge ], [ @expected_tpt_mimo3_20MHz, %land.lhs.true90.if.end103_crit_edge ], [ %spec.select, %lor.lhs.false62 ], [ %spec.select179, %lor.lhs.false76 ], [ %spec.select180, %lor.lhs.false93 ]
  %is_SGI = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 2
  %15 = ptrtoint ptr %is_SGI to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_SGI, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool104.not = icmp eq i8 %16, 0
  %is_agg = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 34
  %17 = ptrtoint ptr %is_agg to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %is_agg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool106.not = icmp eq i8 %18, 0
  br i1 %tobool104.not, label %land.lhs.true105, label %land.lhs.true113

land.lhs.true105:                                 ; preds = %if.end103
  br i1 %tobool106.not, label %land.lhs.true105.cleanup_crit_edge, label %land.lhs.true123

land.lhs.true105.cleanup_crit_edge:               ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true113:                                 ; preds = %if.end103
  br i1 %tobool106.not, label %if.then116, label %land.lhs.true113.if.else131_crit_edge

land.lhs.true113.if.else131_crit_edge:            ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else131

if.then116:                                       ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx117 = getelementptr [13 x i16], ptr %ht_tbl_pointer.0, i32 1
  br label %cleanup

land.lhs.true123:                                 ; preds = %land.lhs.true105
  %19 = ptrtoint ptr %is_agg to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %is_agg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool126.not = icmp eq i8 %20, 0
  br i1 %tobool126.not, label %land.lhs.true123.if.else131_crit_edge, label %if.then127

land.lhs.true123.if.else131_crit_edge:            ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else131

if.then127:                                       ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx128 = getelementptr [13 x i16], ptr %ht_tbl_pointer.0, i32 2
  br label %cleanup

if.else131:                                       ; preds = %land.lhs.true123.if.else131_crit_edge, %land.lhs.true113.if.else131_crit_edge
  %arrayidx132 = getelementptr [13 x i16], ptr %ht_tbl_pointer.0, i32 3
  br label %cleanup

cleanup:                                          ; preds = %if.else131, %if.then127, %if.then116, %land.lhs.true105.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.end50.cleanup_crit_edge181, %if.then, %land.rhs13.cleanup_crit_edge
  %ht_tbl_pointer.0.sink = phi ptr [ %arrayidx128, %if.then127 ], [ %arrayidx132, %if.else131 ], [ %arrayidx117, %if.then116 ], [ @expected_tpt_legacy, %land.rhs13.cleanup_crit_edge ], [ @expected_tpt_legacy, %if.then ], [ @expected_tpt_legacy, %if.end50.cleanup_crit_edge ], [ @expected_tpt_legacy, %if.end50.cleanup_crit_edge181 ], [ %ht_tbl_pointer.0, %land.lhs.true105.cleanup_crit_edge ]
  %expected_tpt108 = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 7
  %21 = ptrtoint ptr %expected_tpt108 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %ht_tbl_pointer.0.sink, ptr %expected_tpt108, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rs_fill_link_cmd(ptr noundef readonly %priv, ptr noundef %lq_sta, i32 noundef %new_rate) unnamed_addr #0 align 64 {
entry:
  %tbl_type = alloca %struct.iwl_scale_tbl_info, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 440, ptr nonnull %tbl_type) #12
  %drv.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 31
  %0 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv.i, align 8
  %dbg_fixed_rate.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 30
  %2 = ptrtoint ptr %dbg_fixed_rate.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dbg_fixed_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %do.end34.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %nvm_data.i = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 123
  %4 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nvm_data.i, align 8
  %valid_tx_ant1.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %valid_tx_ant1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %valid_tx_ant1.i, align 1
  %and.i = lshr i32 %3, 14
  %conv.i = and i32 %and.i, 7
  %conv3.i = zext i8 %7 to i32
  %and5.i = and i32 %conv.i, %conv3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and5.i, i32 %conv.i)
  %cmp.i = icmp eq i32 %and5.i, %conv.i
  br i1 %cmp.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 1
  br label %rs_dbgfs_set_mcs.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %dbg_fixed_rate.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %dbg_fixed_rate.i, align 4
  %dev18.i = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %dev18.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev18.i, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %10, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef %conv.i, i32 noundef %conv3.i) #12
  br label %rs_dbgfs_set_mcs.exit

do.end34.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev35.i = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 1
  br label %rs_dbgfs_set_mcs.exit

rs_dbgfs_set_mcs.exit:                            ; preds = %do.end34.i, %if.else.i, %if.then8.i
  %new_rate.addr.0 = phi i32 [ %new_rate, %do.end34.i ], [ %3, %if.then8.i ], [ %new_rate, %if.else.i ]
  %dev.sink.i = phi ptr [ %dev35.i, %do.end34.i ], [ %dev.i, %if.then8.i ], [ %dev18.i, %if.else.i ]
  %.str.7.sink.i = phi ptr [ @.str.9, %do.end34.i ], [ @.str.7, %if.then8.i ], [ @.str.9, %if.else.i ]
  %11 = ptrtoint ptr %dev.sink.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.sink.i, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %12, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_dbgfs_set_mcs, ptr noundef nonnull %.str.7.sink.i) #12
  %band = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 16
  %13 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %band, align 4
  %and.i.i = lshr i32 %new_rate.addr.0, 14
  %and.lobit.i.i = and i32 %and.i.i, 1
  %and2.i.i = lshr i32 %new_rate.addr.0, 15
  %and2.lobit.i.i = and i32 %and2.i.i, 1
  %add.i.i = add nuw nsw i32 %and.lobit.i.i, %and2.lobit.i.i
  %and8.i.i = lshr i32 %new_rate.addr.0, 16
  %and8.lobit.i.i = and i32 %and8.i.i, 1
  %add14.i.i = add nuw nsw i32 %add.i.i, %and8.lobit.i.i
  %call1.i = tail call fastcc i32 @iwl_hwrate_to_plcp_idx(i32 noundef %new_rate.addr.0) #12
  %is_SGI.i = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl_type, i32 0, i32 2
  %is_ht40.i = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl_type, i32 0, i32 3
  %is_dup.i = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl_type, i32 0, i32 4
  %15 = trunc i32 %and.i.i to i8
  %conv3.i225 = and i8 %15, 7
  %ant_type.i = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl_type, i32 0, i32 1
  %16 = call ptr @memset(ptr %is_SGI.i, i32 0, i32 435)
  %17 = ptrtoint ptr %ant_type.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv3.i225, ptr %ant_type.i, align 4
  %18 = ptrtoint ptr %tbl_type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %tbl_type, align 8
  %max_search.i = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl_type, i32 0, i32 6
  %and4.i = and i32 %new_rate.addr.0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.not.i226 = icmp eq i32 %and4.i, 0
  br i1 %tobool.not.i226, label %if.then5.i, label %if.else17.i

if.then5.i:                                       ; preds = %rs_dbgfs_set_mcs.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add14.i.i)
  %cmp7.i = icmp eq i32 %add14.i.i, 1
  br i1 %cmp7.i, label %if.then9.i, label %if.then5.i.rs_get_tbl_info_from_mcs.exit_crit_edge

if.then5.i.rs_get_tbl_info_from_mcs.exit_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_get_tbl_info_from_mcs.exit

if.then9.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp10.i = icmp eq i32 %14, 1
  %..i = select i1 %cmp10.i, i32 2, i32 1
  br label %cleanup.sink.split.i

if.else17.i:                                      ; preds = %rs_dbgfs_set_mcs.exit
  %and18.i = and i32 %new_rate.addr.0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.else17.i.if.end22.i_crit_edge, label %if.then20.i

if.else17.i.if.end22.i_crit_edge:                 ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

if.then20.i:                                      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %is_SGI.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %is_SGI.i, align 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then20.i, %if.else17.i.if.end22.i_crit_edge
  %and25.i = and i32 %new_rate.addr.0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  %20 = and i32 %new_rate.addr.0, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %if.end22.i.if.end29.i_crit_edge, label %if.then27.i

if.end22.i.if.end29.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

if.then27.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %is_ht40.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %is_ht40.i, align 2
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then27.i, %if.end22.i.if.end29.i_crit_edge
  br i1 %tobool26.not.i, label %if.end29.i.if.end34.i_crit_edge, label %if.then32.i

if.end29.i.if.end34.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

if.then32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %is_dup.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %is_dup.i, align 1
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then32.i, %if.end29.i.if.end34.i_crit_edge
  %conv.i.i = trunc i32 %new_rate.addr.0 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv.i.i)
  %cmp37.i = icmp ult i8 %conv.i.i, 8
  br i1 %cmp37.i, label %if.then39.i, label %if.else46.i

if.then39.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add14.i.i)
  %cmp41.i = icmp eq i32 %add14.i.i, 1
  br i1 %cmp41.i, label %if.then39.i.cleanup.sink.split.i_crit_edge, label %if.then39.i.rs_get_tbl_info_from_mcs.exit_crit_edge

if.then39.i.rs_get_tbl_info_from_mcs.exit_crit_edge: ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_get_tbl_info_from_mcs.exit

if.then39.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.else46.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %conv.i.i)
  %cmp48.i = icmp ult i8 %conv.i.i, 16
  br i1 %cmp48.i, label %if.then50.i, label %if.else57.i

if.then50.i:                                      ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add14.i.i)
  %cmp52.i = icmp eq i32 %add14.i.i, 2
  br i1 %cmp52.i, label %if.then50.i.cleanup.sink.split.i_crit_edge, label %if.then50.i.rs_get_tbl_info_from_mcs.exit_crit_edge

if.then50.i.rs_get_tbl_info_from_mcs.exit_crit_edge: ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_get_tbl_info_from_mcs.exit

if.then50.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.else57.i:                                      ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add14.i.i)
  %cmp59.i = icmp eq i32 %add14.i.i, 3
  br i1 %cmp59.i, label %if.then61.i, label %if.else57.i.rs_get_tbl_info_from_mcs.exit_crit_edge

if.else57.i.rs_get_tbl_info_from_mcs.exit_crit_edge: ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_get_tbl_info_from_mcs.exit

if.then61.i:                                      ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %max_search.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 8, ptr %max_search.i, align 1
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then61.i, %if.then50.i.cleanup.sink.split.i_crit_edge, %if.then39.i.cleanup.sink.split.i_crit_edge, %if.then9.i
  %.sink.i = phi i32 [ 5, %if.then61.i ], [ %..i, %if.then9.i ], [ 3, %if.then39.i.cleanup.sink.split.i_crit_edge ], [ 4, %if.then50.i.cleanup.sink.split.i_crit_edge ]
  %25 = ptrtoint ptr %tbl_type to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink.i, ptr %tbl_type, align 8
  br label %rs_get_tbl_info_from_mcs.exit

rs_get_tbl_info_from_mcs.exit:                    ; preds = %cleanup.sink.split.i, %if.else57.i.rs_get_tbl_info_from_mcs.exit_crit_edge, %if.then50.i.rs_get_tbl_info_from_mcs.exit_crit_edge, %if.then39.i.rs_get_tbl_info_from_mcs.exit_crit_edge, %if.then5.i.rs_get_tbl_info_from_mcs.exit_crit_edge
  %tobool.not = icmp eq ptr %priv, null
  br i1 %tobool.not, label %rs_get_tbl_info_from_mcs.exit.if.end_crit_edge, label %land.lhs.true

rs_get_tbl_info_from_mcs.exit.if.end_crit_edge:   ; preds = %rs_get_tbl_info_from_mcs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %rs_get_tbl_info_from_mcs.exit
  %bt_full_concurrent = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 88
  %26 = ptrtoint ptr %bt_full_concurrent to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bt_full_concurrent, align 1, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool1.not = icmp eq i8 %27, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %nvm_data = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %28 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nvm_data, align 8
  %valid_tx_ant2 = getelementptr inbounds %struct.iwl_nvm_data, ptr %29, i32 0, i32 20
  %30 = ptrtoint ptr %valid_tx_ant2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %valid_tx_ant2, align 1
  %conv.i227 = zext i8 %31 to i32
  %and.i228 = and i32 %conv.i227, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i228)
  %tobool.not.i229 = icmp eq i32 %and.i228, 0
  %and2.i = and i32 %conv.i227, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %..i230 = select i1 %tobool3.not.i, i8 4, i8 2
  %retval.0.i = select i1 %tobool.not.i229, i8 %..i230, i8 1
  %32 = ptrtoint ptr %ant_type.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %retval.0.i, ptr %ant_type.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %rs_get_tbl_info_from_mcs.exit.if.end_crit_edge
  %33 = ptrtoint ptr %tbl_type to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tbl_type, align 8
  %.off = add i32 %34, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %spec.select217 = zext i1 %switch to i8
  %not.switch = xor i1 %switch, true
  %spec.select218 = zext i1 %not.switch to i32
  %35 = and i32 %34, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %36 = icmp eq i32 %35, 4
  %conv = zext i1 %36 to i8
  %mimo_delimiter = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 24, i32 3, i32 1
  %37 = ptrtoint ptr %mimo_delimiter to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv, ptr %mimo_delimiter, align 1
  %38 = tail call i32 @llvm.bswap.i32(i32 %new_rate.addr.0)
  %rs_table = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 24, i32 5
  %39 = ptrtoint ptr %rs_table to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %38, ptr %rs_table, align 1
  %40 = ptrtoint ptr %ant_type.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ant_type.i, align 4
  %and.i231 = and i8 %41, 1
  %and3.i = lshr i8 %41, 1
  %and3.lobit.i = and i8 %and3.i, 1
  %add.i = add nuw nsw i8 %and3.lobit.i, %and.i231
  %and10.i = lshr i8 %41, 2
  %and10.lobit.i = and i8 %and10.i, 1
  %add16.i = add nuw nsw i8 %add.i, %and10.lobit.i
  %trunc = trunc i8 %add16.i to i3
  %42 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.116)
  switch i3 %trunc, label %if.end.if.end30_crit_edge [
    i3 1, label %if.then17
    i3 2, label %if.then26
  ]

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %single_stream_ant_msk = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 24, i32 3, i32 2
  br label %if.end30.sink.split

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dual_stream_ant_msk = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 24, i32 3, i32 3
  br label %if.end30.sink.split

if.end30.sink.split:                              ; preds = %if.then26, %if.then17
  %dual_stream_ant_msk.sink = phi ptr [ %dual_stream_ant_msk, %if.then26 ], [ %single_stream_ant_msk, %if.then17 ]
  %43 = ptrtoint ptr %dual_stream_ant_msk.sink to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %41, ptr %dual_stream_ant_msk.sink, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.end30.sink.split, %if.end.if.end30_crit_edge
  br i1 %tobool.not, label %if.end30.if.end40_crit_edge, label %if.then32

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then32:                                        ; preds = %if.end30
  %bt_full_concurrent33 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 88
  %44 = ptrtoint ptr %bt_full_concurrent33 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bt_full_concurrent33, align 1, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool34.not = icmp eq i8 %45, 0
  br i1 %tobool34.not, label %if.else36, label %if.then32.if.end40_crit_edge

if.then32.if.end40_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.else36:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  %nvm_data37 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %46 = ptrtoint ptr %nvm_data37 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %nvm_data37, align 8
  %valid_tx_ant38 = getelementptr inbounds %struct.iwl_nvm_data, ptr %47, i32 0, i32 20
  %48 = ptrtoint ptr %valid_tx_ant38 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %valid_tx_ant38, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.else36, %if.then32.if.end40_crit_edge, %if.end30.if.end40_crit_edge
  %valid_tx_ant.0 = phi i8 [ %49, %if.else36 ], [ 0, %if.end30.if.end40_crit_edge ], [ 1, %if.then32.if.end40_crit_edge ]
  %bt_full_concurrent81 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 88
  %nvm_data85 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %is_green1.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 13
  %active_mimo2_rate.i.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 20
  %active_siso_rate.i.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 19
  %active_legacy_rate.i104.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 18
  %supp_rates.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 17
  %active_mimo3_rate.i.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 21
  br label %while.cond43.preheader

while.cond43.preheader:                           ; preds = %rs_dbgfs_set_mcs.exit369.while.cond43.preheader_crit_edge, %if.end40
  %index.0411 = phi i32 [ 1, %if.end40 ], [ %inc131, %rs_dbgfs_set_mcs.exit369.while.cond43.preheader_crit_edge ]
  %repeat_rate.1410 = phi i32 [ %spec.select218, %if.end40 ], [ %repeat_rate.3, %rs_dbgfs_set_mcs.exit369.while.cond43.preheader_crit_edge ]
  %tobool.not.i317409 = phi i1 [ false, %if.end40 ], [ true, %rs_dbgfs_set_mcs.exit369.while.cond43.preheader_crit_edge ]
  %ant_toggle_cnt.1408 = phi i8 [ %spec.select217, %if.end40 ], [ %ant_toggle_cnt.5, %rs_dbgfs_set_mcs.exit369.while.cond43.preheader_crit_edge ]
  %new_rate.addr.1407 = phi i32 [ %new_rate.addr.0, %if.end40 ], [ %new_rate.addr.8, %rs_dbgfs_set_mcs.exit369.while.cond43.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %repeat_rate.1410)
  %cmp44397.not = icmp eq i32 %repeat_rate.1410, 0
  br i1 %cmp44397.not, label %while.cond43.preheader.while.end_crit_edge, label %while.body48.lr.ph

while.cond43.preheader.while.end_crit_edge:       ; preds = %while.cond43.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body48.lr.ph:                               ; preds = %while.cond43.preheader
  %50 = ptrtoint ptr %ant_type.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %ant_type.i.promoted = load i8, ptr %ant_type.i, align 4
  %51 = ptrtoint ptr %tbl_type to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tbl_type, align 8
  %.off219 = add i32 %52, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off219)
  %switch220 = icmp ult i32 %.off219, 2
  br i1 %switch220, label %if.then56, label %while.body48.lr.ph.if.end71_crit_edge

while.body48.lr.ph.if.end71_crit_edge:            ; preds = %while.body48.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then56:                                        ; preds = %while.body48.lr.ph
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ant_toggle_cnt.1408)
  %cmp58 = icmp eq i8 %ant_toggle_cnt.1408, 0
  %brmerge = or i1 %tobool.not, %cmp58
  %.mux = select i1 %cmp58, i8 1, i8 %ant_toggle_cnt.1408
  br i1 %brmerge, label %if.then56.if.end71_crit_edge, label %land.lhs.true64

if.then56.if.end71_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

land.lhs.true64:                                  ; preds = %if.then56
  %53 = add i8 %ant_type.i.promoted, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %53)
  %54 = icmp ult i8 %53, 7
  %and6.i.i = and i8 %ant_type.i.promoted, %valid_tx_ant.0
  call void @__sanitizer_cov_trace_cmp1(i8 %and6.i.i, i8 %ant_type.i.promoted)
  %cmp.i.not.i = icmp eq i8 %and6.i.i, %ant_type.i.promoted
  %or.cond391 = select i1 %54, i1 %cmp.i.not.i, i1 false
  br i1 %or.cond391, label %land.lhs.true64.while.cond.i_crit_edge, label %land.lhs.true64.if.end71_crit_edge

land.lhs.true64.if.end71_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

land.lhs.true64.while.cond.i_crit_edge:           ; preds = %land.lhs.true64
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %land.lhs.true64.while.cond.i_crit_edge
  %idxprom.pn.in.i = phi i8 [ %new_ant_type.0.i, %land.rhs.i.while.cond.i_crit_edge ], [ %ant_type.i.promoted, %land.lhs.true64.while.cond.i_crit_edge ]
  %idxprom.pn.i = zext i8 %idxprom.pn.in.i to i32
  %new_ant_type.0.in.i = getelementptr [8 x i8], ptr @ant_toggle_lookup, i32 0, i32 %idxprom.pn.i
  %55 = ptrtoint ptr %new_ant_type.0.in.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %new_ant_type.0.i = load i8, ptr %new_ant_type.0.in.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %new_ant_type.0.i, i8 %ant_type.i.promoted)
  %cmp12.not.i = icmp eq i8 %new_ant_type.0.i, %ant_type.i.promoted
  br i1 %cmp12.not.i, label %while.cond.i.if.end71_crit_edge, label %land.rhs.i

while.cond.i.if.end71_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

land.rhs.i:                                       ; preds = %while.cond.i
  %and6.i41.i = and i8 %new_ant_type.0.i, %valid_tx_ant.0
  %cmp.i42.not.i = icmp eq i8 %and6.i41.i, %new_ant_type.0.i
  br i1 %cmp.i42.not.i, label %rs_toggle_antenna.exit, label %land.rhs.i.while.cond.i_crit_edge

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

rs_toggle_antenna.exit:                           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv9.le.i = zext i8 %new_ant_type.0.i to i32
  %and.i240 = and i32 %new_rate.addr.1407, -114689
  %shl.i = shl nuw nsw i32 %conv9.le.i, 14
  %or.i = or i32 %shl.i, %and.i240
  br label %if.end71

if.end71:                                         ; preds = %rs_toggle_antenna.exit, %while.cond.i.if.end71_crit_edge, %land.lhs.true64.if.end71_crit_edge, %if.then56.if.end71_crit_edge, %while.body48.lr.ph.if.end71_crit_edge
  %56 = phi i8 [ %ant_type.i.promoted, %while.body48.lr.ph.if.end71_crit_edge ], [ %new_ant_type.0.i, %rs_toggle_antenna.exit ], [ %ant_type.i.promoted, %land.lhs.true64.if.end71_crit_edge ], [ %ant_type.i.promoted, %if.then56.if.end71_crit_edge ], [ %ant_type.i.promoted, %while.cond.i.if.end71_crit_edge ]
  %new_rate.addr.4 = phi i32 [ %new_rate.addr.1407, %while.body48.lr.ph.if.end71_crit_edge ], [ %or.i, %rs_toggle_antenna.exit ], [ %new_rate.addr.1407, %land.lhs.true64.if.end71_crit_edge ], [ %new_rate.addr.1407, %if.then56.if.end71_crit_edge ], [ %new_rate.addr.1407, %while.cond.i.if.end71_crit_edge ]
  %ant_toggle_cnt.3 = phi i8 [ %ant_toggle_cnt.1408, %while.body48.lr.ph.if.end71_crit_edge ], [ 1, %rs_toggle_antenna.exit ], [ %ant_toggle_cnt.1408, %land.lhs.true64.if.end71_crit_edge ], [ %.mux, %if.then56.if.end71_crit_edge ], [ %ant_toggle_cnt.1408, %while.cond.i.if.end71_crit_edge ]
  %57 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %drv.i, align 8
  %59 = ptrtoint ptr %dbg_fixed_rate.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dbg_fixed_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i244 = icmp eq i32 %60, 0
  br i1 %tobool.not.i244, label %do.end34.i258, label %if.then.i252

if.then.i252:                                     ; preds = %if.end71
  %nvm_data.i245 = getelementptr inbounds %struct.iwl_priv, ptr %58, i32 0, i32 123
  %61 = ptrtoint ptr %nvm_data.i245 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %nvm_data.i245, align 8
  %valid_tx_ant1.i246 = getelementptr inbounds %struct.iwl_nvm_data, ptr %62, i32 0, i32 20
  %63 = ptrtoint ptr %valid_tx_ant1.i246 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %valid_tx_ant1.i246, align 1
  %and.i247 = lshr i32 %60, 14
  %conv.i248 = and i32 %and.i247, 7
  %conv3.i249 = zext i8 %64 to i32
  %and5.i250 = and i32 %conv.i248, %conv3.i249
  call void @__sanitizer_cov_trace_cmp4(i32 %and5.i250, i32 %conv.i248)
  %cmp.i251 = icmp eq i32 %and5.i250, %conv.i248
  br i1 %cmp.i251, label %if.then8.i254, label %if.else.i256

if.then8.i254:                                    ; preds = %if.then.i252
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i253 = getelementptr inbounds %struct.iwl_priv, ptr %58, i32 0, i32 1
  br label %rs_dbgfs_set_mcs.exit261

if.else.i256:                                     ; preds = %if.then.i252
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %dbg_fixed_rate.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %dbg_fixed_rate.i, align 4
  %dev18.i255 = getelementptr inbounds %struct.iwl_priv, ptr %58, i32 0, i32 1
  %66 = ptrtoint ptr %dev18.i255 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev18.i255, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %67, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef %conv.i248, i32 noundef %conv3.i249) #12
  br label %rs_dbgfs_set_mcs.exit261

do.end34.i258:                                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  %dev35.i257 = getelementptr inbounds %struct.iwl_priv, ptr %58, i32 0, i32 1
  br label %rs_dbgfs_set_mcs.exit261

rs_dbgfs_set_mcs.exit261:                         ; preds = %do.end34.i258, %if.else.i256, %if.then8.i254
  %new_rate.addr.5 = phi i32 [ %new_rate.addr.4, %do.end34.i258 ], [ %60, %if.then8.i254 ], [ %new_rate.addr.4, %if.else.i256 ]
  %dev.sink.i259 = phi ptr [ %dev35.i257, %do.end34.i258 ], [ %dev.i253, %if.then8.i254 ], [ %dev18.i255, %if.else.i256 ]
  %.str.7.sink.i260 = phi ptr [ @.str.9, %do.end34.i258 ], [ @.str.7, %if.then8.i254 ], [ @.str.9, %if.else.i256 ]
  %68 = ptrtoint ptr %dev.sink.i259 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.sink.i259, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %69, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_dbgfs_set_mcs, ptr noundef nonnull %.str.7.sink.i260) #12
  %70 = tail call i32 @llvm.bswap.i32(i32 %new_rate.addr.5)
  %arrayidx73 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 24, i32 5, i32 %index.0411
  %71 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %70, ptr %arrayidx73, align 1
  %inc76 = add nsw i32 %index.0411, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %repeat_rate.1410)
  %cmp44 = icmp sgt i32 %repeat_rate.1410, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %index.0411)
  %cmp46 = icmp slt i32 %index.0411, 15
  %or.cond = select i1 %cmp44, i1 %cmp46, i1 false
  br i1 %or.cond, label %while.body48.1, label %rs_dbgfs_set_mcs.exit261.while.end_crit_edge

rs_dbgfs_set_mcs.exit261.while.end_crit_edge:     ; preds = %rs_dbgfs_set_mcs.exit261
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body48.1:                                   ; preds = %rs_dbgfs_set_mcs.exit261
  br i1 %switch220, label %if.then56.1, label %while.body48.1.if.end71.1_crit_edge

while.body48.1.if.end71.1_crit_edge:              ; preds = %while.body48.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71.1

if.then56.1:                                      ; preds = %while.body48.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ant_toggle_cnt.3)
  %cmp58.1 = icmp eq i8 %ant_toggle_cnt.3, 0
  %brmerge.1 = or i1 %tobool.not, %cmp58.1
  %.mux.1 = select i1 %cmp58.1, i8 1, i8 %ant_toggle_cnt.3
  br i1 %brmerge.1, label %if.then56.1.if.end71.1_crit_edge, label %land.lhs.true64.1

if.then56.1.if.end71.1_crit_edge:                 ; preds = %if.then56.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71.1

land.lhs.true64.1:                                ; preds = %if.then56.1
  %72 = add i8 %56, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %72)
  %73 = icmp ult i8 %72, 7
  %and6.i.i.1 = and i8 %56, %valid_tx_ant.0
  call void @__sanitizer_cov_trace_cmp1(i8 %and6.i.i.1, i8 %56)
  %cmp.i.not.i.1 = icmp eq i8 %and6.i.i.1, %56
  %or.cond391.1 = select i1 %73, i1 %cmp.i.not.i.1, i1 false
  br i1 %or.cond391.1, label %land.lhs.true64.1.while.cond.i.1_crit_edge, label %land.lhs.true64.1.if.end71.1_crit_edge

land.lhs.true64.1.if.end71.1_crit_edge:           ; preds = %land.lhs.true64.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71.1

land.lhs.true64.1.while.cond.i.1_crit_edge:       ; preds = %land.lhs.true64.1
  br label %while.cond.i.1

while.cond.i.1:                                   ; preds = %land.rhs.i.1.while.cond.i.1_crit_edge, %land.lhs.true64.1.while.cond.i.1_crit_edge
  %idxprom.pn.in.i.1 = phi i8 [ %new_ant_type.0.i.1, %land.rhs.i.1.while.cond.i.1_crit_edge ], [ %56, %land.lhs.true64.1.while.cond.i.1_crit_edge ]
  %idxprom.pn.i.1 = zext i8 %idxprom.pn.in.i.1 to i32
  %new_ant_type.0.in.i.1 = getelementptr [8 x i8], ptr @ant_toggle_lookup, i32 0, i32 %idxprom.pn.i.1
  %74 = ptrtoint ptr %new_ant_type.0.in.i.1 to i32
  call void @__asan_load1_noabort(i32 %74)
  %new_ant_type.0.i.1 = load i8, ptr %new_ant_type.0.in.i.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %new_ant_type.0.i.1, i8 %56)
  %cmp12.not.i.1 = icmp eq i8 %new_ant_type.0.i.1, %56
  br i1 %cmp12.not.i.1, label %while.cond.i.1.if.end71.1_crit_edge, label %land.rhs.i.1

while.cond.i.1.if.end71.1_crit_edge:              ; preds = %while.cond.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71.1

land.rhs.i.1:                                     ; preds = %while.cond.i.1
  %and6.i41.i.1 = and i8 %new_ant_type.0.i.1, %valid_tx_ant.0
  %cmp.i42.not.i.1 = icmp eq i8 %and6.i41.i.1, %new_ant_type.0.i.1
  br i1 %cmp.i42.not.i.1, label %rs_toggle_antenna.exit.1, label %land.rhs.i.1.while.cond.i.1_crit_edge

land.rhs.i.1.while.cond.i.1_crit_edge:            ; preds = %land.rhs.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.1

rs_toggle_antenna.exit.1:                         ; preds = %land.rhs.i.1
  call void @__sanitizer_cov_trace_pc() #14
  %conv9.le.i.1 = zext i8 %new_ant_type.0.i.1 to i32
  %and.i240.1 = and i32 %new_rate.addr.5, -114689
  %shl.i.1 = shl nuw nsw i32 %conv9.le.i.1, 14
  %or.i.1 = or i32 %shl.i.1, %and.i240.1
  br label %if.end71.1

if.end71.1:                                       ; preds = %rs_toggle_antenna.exit.1, %while.cond.i.1.if.end71.1_crit_edge, %land.lhs.true64.1.if.end71.1_crit_edge, %if.then56.1.if.end71.1_crit_edge, %while.body48.1.if.end71.1_crit_edge
  %new_rate.addr.4.1 = phi i32 [ %new_rate.addr.5, %while.body48.1.if.end71.1_crit_edge ], [ %or.i.1, %rs_toggle_antenna.exit.1 ], [ %new_rate.addr.5, %land.lhs.true64.1.if.end71.1_crit_edge ], [ %new_rate.addr.5, %if.then56.1.if.end71.1_crit_edge ], [ %new_rate.addr.5, %while.cond.i.1.if.end71.1_crit_edge ]
  %ant_toggle_cnt.3.1 = phi i8 [ %ant_toggle_cnt.3, %while.body48.1.if.end71.1_crit_edge ], [ 1, %rs_toggle_antenna.exit.1 ], [ %ant_toggle_cnt.3, %land.lhs.true64.1.if.end71.1_crit_edge ], [ %.mux.1, %if.then56.1.if.end71.1_crit_edge ], [ %ant_toggle_cnt.3, %while.cond.i.1.if.end71.1_crit_edge ]
  %75 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %drv.i, align 8
  %77 = ptrtoint ptr %dbg_fixed_rate.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dbg_fixed_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i244.1 = icmp eq i32 %78, 0
  br i1 %tobool.not.i244.1, label %do.end34.i258.1, label %if.then.i252.1

if.then.i252.1:                                   ; preds = %if.end71.1
  %nvm_data.i245.1 = getelementptr inbounds %struct.iwl_priv, ptr %76, i32 0, i32 123
  %79 = ptrtoint ptr %nvm_data.i245.1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %nvm_data.i245.1, align 8
  %valid_tx_ant1.i246.1 = getelementptr inbounds %struct.iwl_nvm_data, ptr %80, i32 0, i32 20
  %81 = ptrtoint ptr %valid_tx_ant1.i246.1 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %valid_tx_ant1.i246.1, align 1
  %and.i247.1 = lshr i32 %78, 14
  %conv.i248.1 = and i32 %and.i247.1, 7
  %conv3.i249.1 = zext i8 %82 to i32
  %and5.i250.1 = and i32 %conv.i248.1, %conv3.i249.1
  call void @__sanitizer_cov_trace_cmp4(i32 %and5.i250.1, i32 %conv.i248.1)
  %cmp.i251.1 = icmp eq i32 %and5.i250.1, %conv.i248.1
  br i1 %cmp.i251.1, label %if.then8.i254.1, label %if.else.i256.1

if.else.i256.1:                                   ; preds = %if.then.i252.1
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %dbg_fixed_rate.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %dbg_fixed_rate.i, align 4
  %dev18.i255.1 = getelementptr inbounds %struct.iwl_priv, ptr %76, i32 0, i32 1
  %84 = ptrtoint ptr %dev18.i255.1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev18.i255.1, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %85, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef %conv.i248.1, i32 noundef %conv3.i249.1) #12
  br label %rs_dbgfs_set_mcs.exit261.1

if.then8.i254.1:                                  ; preds = %if.then.i252.1
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i253.1 = getelementptr inbounds %struct.iwl_priv, ptr %76, i32 0, i32 1
  br label %rs_dbgfs_set_mcs.exit261.1

do.end34.i258.1:                                  ; preds = %if.end71.1
  call void @__sanitizer_cov_trace_pc() #14
  %dev35.i257.1 = getelementptr inbounds %struct.iwl_priv, ptr %76, i32 0, i32 1
  br label %rs_dbgfs_set_mcs.exit261.1

rs_dbgfs_set_mcs.exit261.1:                       ; preds = %do.end34.i258.1, %if.then8.i254.1, %if.else.i256.1
  %new_rate.addr.5.1 = phi i32 [ %new_rate.addr.4.1, %do.end34.i258.1 ], [ %78, %if.then8.i254.1 ], [ %new_rate.addr.4.1, %if.else.i256.1 ]
  %dev.sink.i259.1 = phi ptr [ %dev35.i257.1, %do.end34.i258.1 ], [ %dev.i253.1, %if.then8.i254.1 ], [ %dev18.i255.1, %if.else.i256.1 ]
  %.str.7.sink.i260.1 = phi ptr [ @.str.9, %do.end34.i258.1 ], [ @.str.7, %if.then8.i254.1 ], [ @.str.9, %if.else.i256.1 ]
  %86 = ptrtoint ptr %dev.sink.i259.1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev.sink.i259.1, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %87, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_dbgfs_set_mcs, ptr noundef nonnull %.str.7.sink.i260.1) #12
  %88 = tail call i32 @llvm.bswap.i32(i32 %new_rate.addr.5.1)
  %arrayidx73.1 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 24, i32 5, i32 %inc76
  %89 = ptrtoint ptr %arrayidx73.1 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 4)
  store i32 %88, ptr %arrayidx73.1, align 1
  %inc76.1 = add nsw i32 %index.0411, 2
  br label %while.end

while.end:                                        ; preds = %rs_dbgfs_set_mcs.exit261.1, %rs_dbgfs_set_mcs.exit261.while.end_crit_edge, %while.cond43.preheader.while.end_crit_edge
  %new_rate.addr.2.lcssa = phi i32 [ %new_rate.addr.1407, %while.cond43.preheader.while.end_crit_edge ], [ %new_rate.addr.5, %rs_dbgfs_set_mcs.exit261.while.end_crit_edge ], [ %new_rate.addr.5.1, %rs_dbgfs_set_mcs.exit261.1 ]
  %ant_toggle_cnt.2.lcssa = phi i8 [ %ant_toggle_cnt.1408, %while.cond43.preheader.while.end_crit_edge ], [ %ant_toggle_cnt.3, %rs_dbgfs_set_mcs.exit261.while.end_crit_edge ], [ %ant_toggle_cnt.3.1, %rs_dbgfs_set_mcs.exit261.1 ]
  %index.1.lcssa = phi i32 [ %index.0411, %while.cond43.preheader.while.end_crit_edge ], [ %inc76, %rs_dbgfs_set_mcs.exit261.while.end_crit_edge ], [ %inc76.1, %rs_dbgfs_set_mcs.exit261.1 ]
  %90 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %band, align 4
  %and.i.i262 = lshr i32 %new_rate.addr.2.lcssa, 14
  %and.lobit.i.i263 = and i32 %and.i.i262, 1
  %and2.i.i264 = lshr i32 %new_rate.addr.2.lcssa, 15
  %and2.lobit.i.i265 = and i32 %and2.i.i264, 1
  %add.i.i266 = add nuw nsw i32 %and.lobit.i.i263, %and2.lobit.i.i265
  %and8.i.i267 = lshr i32 %new_rate.addr.2.lcssa, 16
  %and8.lobit.i.i268 = and i32 %and8.i.i267, 1
  %add14.i.i269 = add nuw nsw i32 %add.i.i266, %and8.lobit.i.i268
  %call1.i270 = tail call fastcc i32 @iwl_hwrate_to_plcp_idx(i32 noundef %new_rate.addr.2.lcssa) #12
  %92 = trunc i32 %and.i.i262 to i8
  %conv3.i274 = and i8 %92, 7
  %93 = call ptr @memset(ptr %is_SGI.i, i32 0, i32 435)
  %94 = ptrtoint ptr %ant_type.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv3.i274, ptr %ant_type.i, align 4
  %95 = ptrtoint ptr %tbl_type to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %tbl_type, align 8
  %96 = ptrtoint ptr %max_search.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 6, ptr %max_search.i, align 1
  %and4.i277 = and i32 %new_rate.addr.2.lcssa, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i277)
  %tobool.not.i278 = icmp eq i32 %and4.i277, 0
  br i1 %tobool.not.i278, label %if.then5.i280, label %if.else17.i286

if.then5.i280:                                    ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add14.i.i269)
  %cmp7.i279 = icmp eq i32 %add14.i.i269, 1
  br i1 %cmp7.i279, label %if.then9.i283, label %if.then5.i280.rs_get_tbl_info_from_mcs.exit308_crit_edge

if.then5.i280.rs_get_tbl_info_from_mcs.exit308_crit_edge: ; preds = %if.then5.i280
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_get_tbl_info_from_mcs.exit308

if.then9.i283:                                    ; preds = %if.then5.i280
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %91)
  %cmp10.i281 = icmp eq i32 %91, 1
  %..i282 = select i1 %cmp10.i281, i32 2, i32 1
  br label %cleanup.sink.split.i307

if.else17.i286:                                   ; preds = %while.end
  %and18.i284 = and i32 %new_rate.addr.2.lcssa, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i284)
  %tobool19.not.i285 = icmp eq i32 %and18.i284, 0
  br i1 %tobool19.not.i285, label %if.else17.i286.if.end22.i290_crit_edge, label %if.then20.i287

if.else17.i286.if.end22.i290_crit_edge:           ; preds = %if.else17.i286
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i290

if.then20.i287:                                   ; preds = %if.else17.i286
  call void @__sanitizer_cov_trace_pc() #14
  %97 = ptrtoint ptr %is_SGI.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 1, ptr %is_SGI.i, align 1
  br label %if.end22.i290

if.end22.i290:                                    ; preds = %if.then20.i287, %if.else17.i286.if.end22.i290_crit_edge
  %and25.i288 = and i32 %new_rate.addr.2.lcssa, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i288)
  %tobool26.not.i289 = icmp eq i32 %and25.i288, 0
  %98 = and i32 %new_rate.addr.2.lcssa, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %if.end22.i290.if.end29.i292_crit_edge, label %if.then27.i291

if.end22.i290.if.end29.i292_crit_edge:            ; preds = %if.end22.i290
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i292

if.then27.i291:                                   ; preds = %if.end22.i290
  call void @__sanitizer_cov_trace_pc() #14
  %100 = ptrtoint ptr %is_ht40.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %is_ht40.i, align 2
  br label %if.end29.i292

if.end29.i292:                                    ; preds = %if.then27.i291, %if.end22.i290.if.end29.i292_crit_edge
  br i1 %tobool26.not.i289, label %if.end29.i292.if.end34.i296_crit_edge, label %if.then32.i293

if.end29.i292.if.end34.i296_crit_edge:            ; preds = %if.end29.i292
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i296

if.then32.i293:                                   ; preds = %if.end29.i292
  call void @__sanitizer_cov_trace_pc() #14
  %101 = ptrtoint ptr %is_dup.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %is_dup.i, align 1
  br label %if.end34.i296

if.end34.i296:                                    ; preds = %if.then32.i293, %if.end29.i292.if.end34.i296_crit_edge
  %conv.i.i294 = trunc i32 %new_rate.addr.2.lcssa to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv.i.i294)
  %cmp37.i295 = icmp ult i8 %conv.i.i294, 8
  br i1 %cmp37.i295, label %if.then39.i298, label %if.else46.i300

if.then39.i298:                                   ; preds = %if.end34.i296
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add14.i.i269)
  %cmp41.i297 = icmp eq i32 %add14.i.i269, 1
  br i1 %cmp41.i297, label %if.then39.i298.cleanup.sink.split.i307_crit_edge, label %if.then39.i298.rs_get_tbl_info_from_mcs.exit308_crit_edge

if.then39.i298.rs_get_tbl_info_from_mcs.exit308_crit_edge: ; preds = %if.then39.i298
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_get_tbl_info_from_mcs.exit308

if.then39.i298.cleanup.sink.split.i307_crit_edge: ; preds = %if.then39.i298
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i307

if.else46.i300:                                   ; preds = %if.end34.i296
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %conv.i.i294)
  %cmp48.i299 = icmp ult i8 %conv.i.i294, 16
  br i1 %cmp48.i299, label %if.then50.i302, label %if.else57.i304

if.then50.i302:                                   ; preds = %if.else46.i300
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add14.i.i269)
  %cmp52.i301 = icmp eq i32 %add14.i.i269, 2
  br i1 %cmp52.i301, label %if.then50.i302.cleanup.sink.split.i307_crit_edge, label %if.then50.i302.rs_get_tbl_info_from_mcs.exit308_crit_edge

if.then50.i302.rs_get_tbl_info_from_mcs.exit308_crit_edge: ; preds = %if.then50.i302
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_get_tbl_info_from_mcs.exit308

if.then50.i302.cleanup.sink.split.i307_crit_edge: ; preds = %if.then50.i302
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i307

if.else57.i304:                                   ; preds = %if.else46.i300
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add14.i.i269)
  %cmp59.i303 = icmp eq i32 %add14.i.i269, 3
  br i1 %cmp59.i303, label %if.then61.i305, label %if.else57.i304.rs_get_tbl_info_from_mcs.exit308_crit_edge

if.else57.i304.rs_get_tbl_info_from_mcs.exit308_crit_edge: ; preds = %if.else57.i304
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_get_tbl_info_from_mcs.exit308

if.then61.i305:                                   ; preds = %if.else57.i304
  call void @__sanitizer_cov_trace_pc() #14
  %102 = ptrtoint ptr %max_search.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 8, ptr %max_search.i, align 1
  br label %cleanup.sink.split.i307

cleanup.sink.split.i307:                          ; preds = %if.then61.i305, %if.then50.i302.cleanup.sink.split.i307_crit_edge, %if.then39.i298.cleanup.sink.split.i307_crit_edge, %if.then9.i283
  %.sink.i306 = phi i32 [ 5, %if.then61.i305 ], [ %..i282, %if.then9.i283 ], [ 3, %if.then39.i298.cleanup.sink.split.i307_crit_edge ], [ 4, %if.then50.i302.cleanup.sink.split.i307_crit_edge ]
  %103 = ptrtoint ptr %tbl_type to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %.sink.i306, ptr %tbl_type, align 8
  br label %rs_get_tbl_info_from_mcs.exit308

rs_get_tbl_info_from_mcs.exit308:                 ; preds = %cleanup.sink.split.i307, %if.else57.i304.rs_get_tbl_info_from_mcs.exit308_crit_edge, %if.then50.i302.rs_get_tbl_info_from_mcs.exit308_crit_edge, %if.then39.i298.rs_get_tbl_info_from_mcs.exit308_crit_edge, %if.then5.i280.rs_get_tbl_info_from_mcs.exit308_crit_edge
  br i1 %tobool.not, label %rs_get_tbl_info_from_mcs.exit308.if.end89_crit_edge, label %land.lhs.true80

rs_get_tbl_info_from_mcs.exit308.if.end89_crit_edge: ; preds = %rs_get_tbl_info_from_mcs.exit308
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

land.lhs.true80:                                  ; preds = %rs_get_tbl_info_from_mcs.exit308
  %104 = ptrtoint ptr %bt_full_concurrent81 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %bt_full_concurrent81, align 1, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool82.not = icmp eq i8 %105, 0
  br i1 %tobool82.not, label %land.lhs.true80.if.end89_crit_edge, label %if.then84

land.lhs.true80.if.end89_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

if.then84:                                        ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #14
  %106 = ptrtoint ptr %nvm_data85 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %nvm_data85, align 8
  %valid_tx_ant86 = getelementptr inbounds %struct.iwl_nvm_data, ptr %107, i32 0, i32 20
  %108 = ptrtoint ptr %valid_tx_ant86 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %valid_tx_ant86, align 1
  %conv.i309 = zext i8 %109 to i32
  %and.i310 = and i32 %conv.i309, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i310)
  %tobool.not.i311 = icmp eq i32 %and.i310, 0
  %and2.i312 = and i32 %conv.i309, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i312)
  %tobool3.not.i313 = icmp eq i32 %and2.i312, 0
  %..i314 = select i1 %tobool3.not.i313, i8 4, i8 2
  %retval.0.i315 = select i1 %tobool.not.i311, i8 %..i314, i8 1
  %110 = ptrtoint ptr %ant_type.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %retval.0.i315, ptr %ant_type.i, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then84, %land.lhs.true80.if.end89_crit_edge, %rs_get_tbl_info_from_mcs.exit308.if.end89_crit_edge
  %111 = ptrtoint ptr %tbl_type to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %tbl_type, align 8
  %113 = and i32 %112, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %113)
  %switch222 = icmp eq i32 %113, 4
  br i1 %switch222, label %if.end101.thread, label %if.end101

if.end101.thread:                                 ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  %conv98 = trunc i32 %index.1.lcssa to i8
  %114 = ptrtoint ptr %mimo_delimiter to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv98, ptr %mimo_delimiter, align 1
  %conv102381 = trunc i32 %call1.i270 to i8
  %115 = ptrtoint ptr %is_green1.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %is_green1.i, align 1
  %117 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %drv.i, align 8
  br label %land.lhs.true.i

if.end101:                                        ; preds = %if.end89
  %conv102 = trunc i32 %call1.i270 to i8
  %119 = ptrtoint ptr %is_green1.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %is_green1.i, align 1
  %121 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %drv.i, align 8
  %.off.i = add i32 %112, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end101.if.end16.i_crit_edge, label %if.end101.land.lhs.true.i_crit_edge

if.end101.land.lhs.true.i_crit_edge:              ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

if.end101.if.end16.i_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

land.lhs.true.i:                                  ; preds = %if.end101.land.lhs.true.i_crit_edge, %if.end101.thread
  %123 = phi ptr [ %118, %if.end101.thread ], [ %122, %if.end101.land.lhs.true.i_crit_edge ]
  %124 = phi i8 [ %116, %if.end101.thread ], [ %120, %if.end101.land.lhs.true.i_crit_edge ]
  %conv102385 = phi i8 [ %conv102381, %if.end101.thread ], [ %conv102, %if.end101.land.lhs.true.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv102385)
  %tobool5.not.i = icmp eq i8 %conv102385, 0
  %or.cond.i = or i1 %tobool.not.i317409, %tobool5.not.i
  br i1 %or.cond.i, label %if.then.i323, label %land.lhs.true.i.if.end16thread-pre-split.i_crit_edge

land.lhs.true.i.if.end16thread-pre-split.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16thread-pre-split.i

if.then.i323:                                     ; preds = %land.lhs.true.i
  %idxprom.i = zext i8 %conv102385 to i32
  %arrayidx.i = getelementptr [13 x i8], ptr @rs_ht_to_legacy, i32 0, i32 %idxprom.i
  %125 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %91)
  %cmp6.i = icmp eq i32 %91, 1
  %..i318 = select i1 %cmp6.i, i32 2, i32 1
  %127 = ptrtoint ptr %tbl_type to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %..i318, ptr %tbl_type, align 8
  %128 = ptrtoint ptr %ant_type.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %ant_type.i, align 4
  %and.i.i320 = and i8 %129, 1
  %and3.i.i = lshr i8 %129, 1
  %and3.lobit.i.i = and i8 %and3.i.i, 1
  %add.i.i321 = add nuw nsw i8 %and3.lobit.i.i, %and.i.i320
  %and10.i.i = lshr i8 %129, 2
  %and10.lobit.i.i = and i8 %and10.i.i, 1
  %add16.i.i = add nuw nsw i8 %add.i.i321, %and10.lobit.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %add16.i.i)
  %cmp10.i322 = icmp ugt i8 %add16.i.i, 1
  br i1 %cmp10.i322, label %if.then12.i, label %if.then.i323.if.end15.i_crit_edge

if.then.i323.if.end15.i_crit_edge:                ; preds = %if.then.i323
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

if.then12.i:                                      ; preds = %if.then.i323
  call void @__sanitizer_cov_trace_pc() #14
  %nvm_data.i324 = getelementptr inbounds %struct.iwl_priv, ptr %123, i32 0, i32 123
  %130 = ptrtoint ptr %nvm_data.i324 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %nvm_data.i324, align 8
  %valid_tx_ant.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %131, i32 0, i32 20
  %132 = ptrtoint ptr %valid_tx_ant.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %valid_tx_ant.i, align 1
  %conv.i.i325 = zext i8 %133 to i32
  %and.i96.i = and i32 %conv.i.i325, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i96.i)
  %tobool.not.i.i = icmp eq i32 %and.i96.i, 0
  %and2.i.i326 = and i32 %conv.i.i325, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i326)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i326, 0
  %..i.i = select i1 %tobool3.not.i.i, i8 4, i8 2
  %retval.0.i.i = select i1 %tobool.not.i.i, i8 %..i.i, i8 1
  %134 = ptrtoint ptr %ant_type.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %retval.0.i.i, ptr %ant_type.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.then.i323.if.end15.i_crit_edge
  %135 = ptrtoint ptr %is_ht40.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %is_ht40.i, align 2
  %136 = ptrtoint ptr %is_SGI.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %is_SGI.i, align 1
  %137 = ptrtoint ptr %max_search.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 6, ptr %max_search.i, align 1
  br label %if.end16thread-pre-split.i

if.end16thread-pre-split.i:                       ; preds = %if.end15.i, %land.lhs.true.i.if.end16thread-pre-split.i_crit_edge
  %scale_index.addr.0.ph.i = phi i8 [ %conv102385, %land.lhs.true.i.if.end16thread-pre-split.i_crit_edge ], [ %126, %if.end15.i ]
  %138 = xor i1 %or.cond.i, true
  %139 = ptrtoint ptr %tbl_type to i32
  call void @__asan_load4_noabort(i32 %139)
  %.pr.i = load i32, ptr %tbl_type, align 8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end16thread-pre-split.i, %if.end101.if.end16.i_crit_edge
  %140 = phi ptr [ %123, %if.end16thread-pre-split.i ], [ %122, %if.end101.if.end16.i_crit_edge ]
  %141 = phi i8 [ %124, %if.end16thread-pre-split.i ], [ %120, %if.end101.if.end16.i_crit_edge ]
  %142 = phi i32 [ %.pr.i, %if.end16thread-pre-split.i ], [ %112, %if.end101.if.end16.i_crit_edge ]
  %scale_index.addr.0.i = phi i8 [ %scale_index.addr.0.ph.i, %if.end16thread-pre-split.i ], [ %conv102, %if.end101.if.end16.i_crit_edge ]
  %tobool41.not.i = phi i1 [ %138, %if.end16thread-pre-split.i ], [ true, %if.end101.if.end16.i_crit_edge ]
  %143 = zext i32 %142 to i64
  call void @__sanitizer_cov_trace_switch(i64 %143, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %142, label %if.else7.i.i [
    i32 1, label %if.end16.i.if.then26.i_crit_edge
    i32 2, label %if.end16.i.if.then26.i_crit_edge424
    i32 3, label %if.end16.i.rs_get_supported_rates.exit.thread.i_crit_edge
    i32 4, label %if.then6.i.i
  ]

if.end16.i.rs_get_supported_rates.exit.thread.i_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_get_supported_rates.exit.thread.i

if.end16.i.if.then26.i_crit_edge424:              ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26.i

if.end16.i.if.then26.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26.i

if.then6.i.i:                                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_get_supported_rates.exit.thread.i

if.else7.i.i:                                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_get_supported_rates.exit.thread.i

rs_get_supported_rates.exit.thread.i:             ; preds = %if.else7.i.i, %if.then6.i.i, %if.end16.i.rs_get_supported_rates.exit.thread.i_crit_edge
  %retval.0.in.i.ph.i = phi ptr [ %active_mimo3_rate.i.i, %if.else7.i.i ], [ %active_mimo2_rate.i.i, %if.then6.i.i ], [ %active_siso_rate.i.i, %if.end16.i.rs_get_supported_rates.exit.thread.i_crit_edge ]
  %144 = ptrtoint ptr %retval.0.in.i.ph.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %retval.0.i9799.i = load i16, ptr %retval.0.in.i.ph.i, align 2
  br label %if.end39.i

if.then26.i:                                      ; preds = %if.end16.i.if.then26.i_crit_edge, %if.end16.i.if.then26.i_crit_edge424
  %145 = ptrtoint ptr %active_legacy_rate.i104.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %retval.0.i97105.i = load i16, ptr %active_legacy_rate.i104.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %91)
  %cmp28.i = icmp eq i32 %91, 1
  %146 = ptrtoint ptr %supp_rates.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %supp_rates.i, align 8
  %.tr.i = trunc i32 %147 to i16
  br i1 %cmp28.i, label %if.then30.i, label %if.else33.i

if.then30.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #14
  %148 = shl i16 %.tr.i, 4
  %conv32.i = and i16 %148, %retval.0.i97105.i
  br label %if.end39.i

if.else33.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv37.i = and i16 %retval.0.i97105.i, %.tr.i
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.else33.i, %if.then30.i, %rs_get_supported_rates.exit.thread.i
  %rate_mask.0.i = phi i16 [ %conv32.i, %if.then30.i ], [ %conv37.i, %if.else33.i ], [ %retval.0.i9799.i, %rs_get_supported_rates.exit.thread.i ]
  br i1 %tobool41.not.i, label %if.end39.if.end50_crit_edge.i, label %land.lhs.true42.i

if.end39.if.end50_crit_edge.i:                    ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  %.pre.i = zext i8 %scale_index.addr.0.i to i32
  br label %if.end50.i

land.lhs.true42.i:                                ; preds = %if.end39.i
  %conv43.i = zext i16 %rate_mask.0.i to i32
  %conv44.i = zext i8 %scale_index.addr.0.i to i32
  %shl45.i = shl nuw i32 1, %conv44.i
  %and46.i = and i32 %shl45.i, %conv43.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %land.lhs.true42.i.if.end50.i_crit_edge, label %land.lhs.true42.i.rs_get_lower_rate.exit_crit_edge

land.lhs.true42.i.rs_get_lower_rate.exit_crit_edge: ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_get_lower_rate.exit

land.lhs.true42.i.if.end50.i_crit_edge:           ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.i

if.end50.i:                                       ; preds = %land.lhs.true42.i.if.end50.i_crit_edge, %if.end39.if.end50_crit_edge.i
  %conv59.pre-phi.i = phi i32 [ %.pre.i, %if.end39.if.end50_crit_edge.i ], [ %conv44.i, %land.lhs.true42.i.if.end50.i_crit_edge ]
  %call53.i = tail call fastcc zeroext i16 @rs_get_adjacent_rate(ptr noundef %140, i8 noundef zeroext %scale_index.addr.0.i, i16 noundef zeroext %rate_mask.0.i, i32 noundef %142) #12
  %149 = and i16 %call53.i, 255
  %and55.i = zext i16 %149 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %149)
  %cmp56.i = icmp eq i16 %149, 13
  %spec.select.i = select i1 %cmp56.i, i32 %conv59.pre-phi.i, i32 %and55.i
  br label %rs_get_lower_rate.exit

rs_get_lower_rate.exit:                           ; preds = %if.end50.i, %land.lhs.true42.i.rs_get_lower_rate.exit_crit_edge
  %low.0.i = phi i32 [ %conv44.i, %land.lhs.true42.i.rs_get_lower_rate.exit_crit_edge ], [ %spec.select.i, %if.end50.i ]
  %150 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %drv.i, align 8
  %call62.i = call fastcc i32 @rate_n_flags_from_tbl(ptr noundef %151, ptr noundef nonnull %tbl_type, i32 noundef %low.0.i, i8 noundef zeroext %141) #12
  %152 = ptrtoint ptr %tbl_type to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %tbl_type, align 8
  %.off223 = add i32 %153, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off223)
  %switch224 = icmp ult i32 %.off223, 2
  br i1 %switch224, label %if.then111, label %rs_get_lower_rate.exit.if.end127_crit_edge

rs_get_lower_rate.exit.if.end127_crit_edge:       ; preds = %rs_get_lower_rate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end127

if.then111:                                       ; preds = %rs_get_lower_rate.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ant_toggle_cnt.2.lcssa)
  %cmp113 = icmp eq i8 %ant_toggle_cnt.2.lcssa, 0
  %brmerge393 = or i1 %tobool.not, %cmp113
  %.mux394 = select i1 %cmp113, i8 1, i8 %ant_toggle_cnt.2.lcssa
  br i1 %brmerge393, label %if.then111.if.end127_crit_edge, label %land.lhs.true119

if.then111.if.end127_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end127

land.lhs.true119:                                 ; preds = %if.then111
  %154 = ptrtoint ptr %ant_type.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %ant_type.i, align 4
  %156 = add i8 %155, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %156)
  %157 = icmp ult i8 %156, 7
  %and6.i.i331 = and i8 %155, %valid_tx_ant.0
  call void @__sanitizer_cov_trace_cmp1(i8 %and6.i.i331, i8 %155)
  %cmp.i.not.i332 = icmp eq i8 %and6.i.i331, %155
  %or.cond392 = select i1 %157, i1 %cmp.i.not.i332, i1 false
  br i1 %or.cond392, label %land.lhs.true119.while.cond.i339_crit_edge, label %land.lhs.true119.if.end127_crit_edge

land.lhs.true119.if.end127_crit_edge:             ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end127

land.lhs.true119.while.cond.i339_crit_edge:       ; preds = %land.lhs.true119
  br label %while.cond.i339

while.cond.i339:                                  ; preds = %land.rhs.i342.while.cond.i339_crit_edge, %land.lhs.true119.while.cond.i339_crit_edge
  %idxprom.pn.in.i334 = phi i8 [ %new_ant_type.0.i337, %land.rhs.i342.while.cond.i339_crit_edge ], [ %155, %land.lhs.true119.while.cond.i339_crit_edge ]
  %idxprom.pn.i335 = zext i8 %idxprom.pn.in.i334 to i32
  %new_ant_type.0.in.i336 = getelementptr [8 x i8], ptr @ant_toggle_lookup, i32 0, i32 %idxprom.pn.i335
  %158 = ptrtoint ptr %new_ant_type.0.in.i336 to i32
  call void @__asan_load1_noabort(i32 %158)
  %new_ant_type.0.i337 = load i8, ptr %new_ant_type.0.in.i336, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %new_ant_type.0.i337, i8 %155)
  %cmp12.not.i338 = icmp eq i8 %new_ant_type.0.i337, %155
  br i1 %cmp12.not.i338, label %while.cond.i339.if.end127_crit_edge, label %land.rhs.i342

while.cond.i339.if.end127_crit_edge:              ; preds = %while.cond.i339
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end127

land.rhs.i342:                                    ; preds = %while.cond.i339
  %and6.i41.i340 = and i8 %new_ant_type.0.i337, %valid_tx_ant.0
  %cmp.i42.not.i341 = icmp eq i8 %and6.i41.i340, %new_ant_type.0.i337
  br i1 %cmp.i42.not.i341, label %rs_toggle_antenna.exit349, label %land.rhs.i342.while.cond.i339_crit_edge

land.rhs.i342.while.cond.i339_crit_edge:          ; preds = %land.rhs.i342
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i339

rs_toggle_antenna.exit349:                        ; preds = %land.rhs.i342
  call void @__sanitizer_cov_trace_pc() #14
  %conv9.le.i343 = zext i8 %new_ant_type.0.i337 to i32
  %159 = ptrtoint ptr %ant_type.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %new_ant_type.0.i337, ptr %ant_type.i, align 4
  %and.i344 = and i32 %call62.i, -114689
  %shl.i345 = shl nuw nsw i32 %conv9.le.i343, 14
  %or.i346 = or i32 %shl.i345, %and.i344
  br label %if.end127

if.end127:                                        ; preds = %rs_toggle_antenna.exit349, %while.cond.i339.if.end127_crit_edge, %land.lhs.true119.if.end127_crit_edge, %if.then111.if.end127_crit_edge, %rs_get_lower_rate.exit.if.end127_crit_edge
  %new_rate.addr.7 = phi i32 [ %call62.i, %rs_get_lower_rate.exit.if.end127_crit_edge ], [ %or.i346, %rs_toggle_antenna.exit349 ], [ %call62.i, %land.lhs.true119.if.end127_crit_edge ], [ %call62.i, %if.then111.if.end127_crit_edge ], [ %call62.i, %while.cond.i339.if.end127_crit_edge ]
  %ant_toggle_cnt.5 = phi i8 [ %ant_toggle_cnt.2.lcssa, %rs_get_lower_rate.exit.if.end127_crit_edge ], [ 1, %rs_toggle_antenna.exit349 ], [ %ant_toggle_cnt.2.lcssa, %land.lhs.true119.if.end127_crit_edge ], [ %.mux394, %if.then111.if.end127_crit_edge ], [ %ant_toggle_cnt.2.lcssa, %while.cond.i339.if.end127_crit_edge ]
  %repeat_rate.3 = phi i32 [ 2, %rs_get_lower_rate.exit.if.end127_crit_edge ], [ 0, %rs_toggle_antenna.exit349 ], [ 0, %land.lhs.true119.if.end127_crit_edge ], [ 0, %if.then111.if.end127_crit_edge ], [ 0, %while.cond.i339.if.end127_crit_edge ]
  %160 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %drv.i, align 8
  %162 = ptrtoint ptr %dbg_fixed_rate.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %dbg_fixed_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool.not.i352 = icmp eq i32 %163, 0
  br i1 %tobool.not.i352, label %do.end34.i366, label %if.then.i360

if.then.i360:                                     ; preds = %if.end127
  %nvm_data.i353 = getelementptr inbounds %struct.iwl_priv, ptr %161, i32 0, i32 123
  %164 = ptrtoint ptr %nvm_data.i353 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %nvm_data.i353, align 8
  %valid_tx_ant1.i354 = getelementptr inbounds %struct.iwl_nvm_data, ptr %165, i32 0, i32 20
  %166 = ptrtoint ptr %valid_tx_ant1.i354 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %valid_tx_ant1.i354, align 1
  %and.i355 = lshr i32 %163, 14
  %conv.i356 = and i32 %and.i355, 7
  %conv3.i357 = zext i8 %167 to i32
  %and5.i358 = and i32 %conv.i356, %conv3.i357
  call void @__sanitizer_cov_trace_cmp4(i32 %and5.i358, i32 %conv.i356)
  %cmp.i359 = icmp eq i32 %and5.i358, %conv.i356
  br i1 %cmp.i359, label %if.then8.i362, label %if.else.i364

if.then8.i362:                                    ; preds = %if.then.i360
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i361 = getelementptr inbounds %struct.iwl_priv, ptr %161, i32 0, i32 1
  br label %rs_dbgfs_set_mcs.exit369

if.else.i364:                                     ; preds = %if.then.i360
  call void @__sanitizer_cov_trace_pc() #14
  %168 = ptrtoint ptr %dbg_fixed_rate.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %dbg_fixed_rate.i, align 4
  %dev18.i363 = getelementptr inbounds %struct.iwl_priv, ptr %161, i32 0, i32 1
  %169 = ptrtoint ptr %dev18.i363 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dev18.i363, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %170, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef %conv.i356, i32 noundef %conv3.i357) #12
  br label %rs_dbgfs_set_mcs.exit369

do.end34.i366:                                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #14
  %dev35.i365 = getelementptr inbounds %struct.iwl_priv, ptr %161, i32 0, i32 1
  br label %rs_dbgfs_set_mcs.exit369

rs_dbgfs_set_mcs.exit369:                         ; preds = %do.end34.i366, %if.else.i364, %if.then8.i362
  %new_rate.addr.8 = phi i32 [ %new_rate.addr.7, %do.end34.i366 ], [ %163, %if.then8.i362 ], [ %new_rate.addr.7, %if.else.i364 ]
  %dev.sink.i367 = phi ptr [ %dev35.i365, %do.end34.i366 ], [ %dev.i361, %if.then8.i362 ], [ %dev18.i363, %if.else.i364 ]
  %.str.7.sink.i368 = phi ptr [ @.str.9, %do.end34.i366 ], [ @.str.7, %if.then8.i362 ], [ @.str.9, %if.else.i364 ]
  %171 = ptrtoint ptr %dev.sink.i367 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev.sink.i367, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %172, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_dbgfs_set_mcs, ptr noundef nonnull %.str.7.sink.i368) #12
  %173 = tail call i32 @llvm.bswap.i32(i32 %new_rate.addr.8)
  %arrayidx129 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 24, i32 5, i32 %index.1.lcssa
  %174 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_storeN_noabort(i32 %174, i32 4)
  store i32 %173, ptr %arrayidx129, align 1
  %inc131 = add i32 %index.1.lcssa, 1
  %cmp41 = icmp slt i32 %inc131, 16
  br i1 %cmp41, label %rs_dbgfs_set_mcs.exit369.while.cond43.preheader_crit_edge, label %while.end133

rs_dbgfs_set_mcs.exit369.while.cond43.preheader_crit_edge: ; preds = %rs_dbgfs_set_mcs.exit369
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond43.preheader

while.end133:                                     ; preds = %rs_dbgfs_set_mcs.exit369
  %max_agg_bufsize = getelementptr i8, ptr %lq_sta, i32 1798
  %175 = ptrtoint ptr %max_agg_bufsize to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %max_agg_bufsize, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool135.not = icmp eq i8 %176, 0
  %narrow = select i1 %tobool135.not, i8 63, i8 %176
  %agg_params = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 24, i32 4
  %agg_frame_cnt_limit = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 24, i32 4, i32 2
  %177 = ptrtoint ptr %agg_frame_cnt_limit to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %narrow, ptr %agg_frame_cnt_limit, align 1
  %agg_dis_start_th = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 24, i32 4, i32 1
  %178 = ptrtoint ptr %agg_dis_start_th to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 3, ptr %agg_dis_start_th, align 1
  %179 = ptrtoint ptr %agg_params to i32
  call void @__asan_storeN_noabort(i32 %179, i32 2)
  store i16 -24561, ptr %agg_params, align 1
  br i1 %tobool.not, label %while.end133.if.end159_crit_edge, label %land.lhs.true141

while.end133.if.end159_crit_edge:                 ; preds = %while.end133
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end159

land.lhs.true141:                                 ; preds = %while.end133
  %lib = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 4
  %180 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %lib, align 8
  %bt_params = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %181, i32 0, i32 4
  %182 = ptrtoint ptr %bt_params to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %bt_params, align 4
  %tobool142.not = icmp eq ptr %183, null
  br i1 %tobool142.not, label %land.lhs.true141.if.end159_crit_edge, label %land.lhs.true143

land.lhs.true141.if.end159_crit_edge:             ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end159

land.lhs.true143:                                 ; preds = %land.lhs.true141
  %agg_time_limit146 = getelementptr inbounds %struct.iwl_dvm_bt_params, ptr %183, i32 0, i32 3
  %184 = ptrtoint ptr %agg_time_limit146 to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %agg_time_limit146, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %185)
  %tobool148.not = icmp eq i16 %185, 0
  br i1 %tobool148.not, label %land.lhs.true143.if.end159_crit_edge, label %land.lhs.true149

land.lhs.true143.if.end159_crit_edge:             ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end159

land.lhs.true149:                                 ; preds = %land.lhs.true143
  %bt_traffic_load = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 85
  %186 = ptrtoint ptr %bt_traffic_load to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %bt_traffic_load, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %187)
  %cmp151 = icmp ugt i8 %187, 1
  br i1 %cmp151, label %if.then153, label %land.lhs.true149.if.end159_crit_edge

land.lhs.true149.if.end159_crit_edge:             ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end159

if.then153:                                       ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #14
  %188 = tail call i16 @llvm.bswap.i16(i16 %185)
  %189 = ptrtoint ptr %agg_params to i32
  call void @__asan_storeN_noabort(i32 %189, i32 2)
  store i16 %188, ptr %agg_params, align 1
  br label %if.end159

if.end159:                                        ; preds = %if.then153, %land.lhs.true149.if.end159_crit_edge, %land.lhs.true143.if.end159_crit_edge, %land.lhs.true141.if.end159_crit_edge, %while.end133.if.end159_crit_edge
  call void @llvm.lifetime.end.p0(i64 440, ptr nonnull %tbl_type) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_send_lq_cmd(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_hwrate_to_plcp_idx(i32 noundef %rate_n_flags) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %rate_n_flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %conv.i46 = trunc i32 %rate_n_flags to i8
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %0 = zext i8 %conv.i46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.118)
  switch i8 %conv.i46, label %for.cond.preheader.if.end29_crit_edge [
    i8 10, label %for.cond.preheader.cleanup_crit_edge
    i8 20, label %cleanup.fold.split
    i8 55, label %cleanup.fold.split50
    i8 110, label %cleanup.fold.split51
    i8 13, label %cleanup.fold.split52
    i8 15, label %cleanup.fold.split53
    i8 5, label %cleanup.fold.split54
    i8 7, label %cleanup.fold.split55
    i8 9, label %cleanup.fold.split56
    i8 11, label %cleanup.fold.split57
    i8 1, label %cleanup.fold.split58
    i8 3, label %cleanup.fold.split59
  ]

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader.if.end29_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then:                                          ; preds = %entry
  %conv = and i32 %rate_n_flags, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %conv.i46)
  %cmp = icmp ugt i8 %conv.i46, 15
  %sub = add nsw i32 %conv, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %conv.i46)
  %cmp3 = icmp ugt i8 %conv.i46, 7
  %sub6 = add nsw i32 %conv, -8
  %spec.select = select i1 %cmp3, i32 %sub6, i32 %conv
  %idx.0 = select i1 %cmp, i32 %sub, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.0)
  %cmp8 = icmp sgt i32 %idx.0, 0
  %add11 = add nsw i32 %idx.0, 5
  %spec.select45 = select i1 %cmp8, i32 %add11, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %spec.select45)
  %cmp15 = icmp ult i32 %spec.select45, 13
  br i1 %cmp15, label %if.then.cleanup_crit_edge, label %if.then.if.end29_crit_edge

if.then.if.end29_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end29:                                         ; preds = %if.then.if.end29_crit_edge, %for.cond.preheader.if.end29_crit_edge
  br label %cleanup

cleanup.fold.split:                               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.fold.split50:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.fold.split51:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.fold.split52:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.fold.split53:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.fold.split54:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.fold.split55:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.fold.split56:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.fold.split57:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.fold.split58:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.fold.split59:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split59, %cleanup.fold.split58, %cleanup.fold.split57, %cleanup.fold.split56, %cleanup.fold.split55, %cleanup.fold.split54, %cleanup.fold.split53, %cleanup.fold.split52, %cleanup.fold.split51, %cleanup.fold.split50, %cleanup.fold.split, %if.end29, %if.then.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end29 ], [ %spec.select45, %if.then.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 1, %cleanup.fold.split ], [ 2, %cleanup.fold.split50 ], [ 3, %cleanup.fold.split51 ], [ 4, %cleanup.fold.split52 ], [ 5, %cleanup.fold.split53 ], [ 6, %cleanup.fold.split54 ], [ 7, %cleanup.fold.split55 ], [ 8, %cleanup.fold.split56 ], [ 9, %cleanup.fold.split57 ], [ 10, %cleanup.fold.split58 ], [ 11, %cleanup.fold.split59 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @rs_get_adjacent_rate(ptr nocapture noundef readonly %priv, i8 noundef zeroext %index, i16 noundef zeroext %rate_mask, i32 noundef %rate_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rate_type)
  %cond = icmp eq i32 %rate_type, 1
  br i1 %cond, label %while.cond.preheader, label %if.then

while.cond.preheader:                             ; preds = %entry
  %conv41 = zext i16 %rate_mask to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %index)
  %cmp34.not128 = icmp eq i8 %index, 13
  br i1 %cmp34.not128, label %while.cond.preheader.while.end79_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end79_crit_edge:       ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end79

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %conv33155 = zext i8 %index to i32
  %prev_rs156 = getelementptr [13 x %struct.iwl_rate_info], ptr @iwl_rates, i32 0, i32 %conv33155, i32 7
  %0 = ptrtoint ptr %prev_rs156 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prev_rs156, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index)
  %cmp37158 = icmp eq i8 %index, 0
  br i1 %cmp37158, label %while.body.lr.ph.while.end_crit_edge, label %while.body.lr.ph.if.end40_crit_edge

while.body.lr.ph.if.end40_crit_edge:              ; preds = %while.body.lr.ph
  br label %if.end40

while.body.lr.ph.while.end_crit_edge:             ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.then:                                          ; preds = %entry
  %conv = zext i8 %index to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index)
  %cmp7121.not = icmp eq i8 %index, 0
  br i1 %cmp7121.not, label %if.then.for.body18.lr.ph_crit_edge, label %for.body.lr.ph

if.then.for.body18.lr.ph_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body18.lr.ph

for.body.lr.ph:                                   ; preds = %if.then
  %sub = add nsw i32 %conv, -1
  %shl = shl nuw i32 1, %sub
  %conv9 = zext i16 %rate_mask to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %mask.1123 = phi i32 [ %shl, %for.body.lr.ph ], [ %shr, %for.inc.for.body_crit_edge ]
  %i.0122 = phi i32 [ %sub, %for.body.lr.ph ], [ %dec, %for.inc.for.body_crit_edge ]
  %and = and i32 %mask.1123, %conv9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc, label %if.then10

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %phi.cast118 = and i32 %i.0122, 255
  br label %for.end

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %i.0122, -1
  %shr = lshr i32 %mask.1123, 1
  %cmp7 = icmp sgt i32 %i.0122, 0
  br i1 %cmp7, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then10
  %low.0 = phi i32 [ %phi.cast118, %if.then10 ], [ 13, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %index)
  %cmp16125 = icmp ult i8 %index, 12
  br i1 %cmp16125, label %for.end.for.body18.lr.ph_crit_edge, label %for.end.for.end27_crit_edge

for.end.for.end27_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end27

for.end.for.body18.lr.ph_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body18.lr.ph

for.body18.lr.ph:                                 ; preds = %for.end.for.body18.lr.ph_crit_edge, %if.then.for.body18.lr.ph_crit_edge
  %low.0145 = phi i32 [ %low.0, %for.end.for.body18.lr.ph_crit_edge ], [ 13, %if.then.for.body18.lr.ph_crit_edge ]
  %i.1124 = add nuw nsw i32 %conv, 1
  %shl14 = shl i32 2, %conv
  %conv19 = zext i16 %rate_mask to i32
  br label %for.body18

for.cond15:                                       ; preds = %for.body18
  %shl26 = shl i32 %mask.2126, 1
  %i.1 = add nuw nsw i32 %i.1127, 1
  %exitcond.not = icmp eq i32 %i.1, 13
  br i1 %exitcond.not, label %for.cond15.for.end27_crit_edge, label %for.cond15.for.body18_crit_edge

for.cond15.for.body18_crit_edge:                  ; preds = %for.cond15
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body18

for.cond15.for.end27_crit_edge:                   ; preds = %for.cond15
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end27

for.body18:                                       ; preds = %for.cond15.for.body18_crit_edge, %for.body18.lr.ph
  %i.1127 = phi i32 [ %i.1124, %for.body18.lr.ph ], [ %i.1, %for.cond15.for.body18_crit_edge ]
  %mask.2126 = phi i32 [ %shl14, %for.body18.lr.ph ], [ %shl26, %for.cond15.for.body18_crit_edge ]
  %and20 = and i32 %mask.2126, %conv19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %for.cond15, label %if.then22

if.then22:                                        ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #14
  %phi.cast = shl i32 %i.1127, 8
  %phi.bo = and i32 %phi.cast, 65280
  br label %for.end27

for.end27:                                        ; preds = %if.then22, %for.cond15.for.end27_crit_edge, %for.end.for.end27_crit_edge
  %low.0144 = phi i32 [ %low.0145, %if.then22 ], [ %low.0, %for.end.for.end27_crit_edge ], [ %low.0145, %for.cond15.for.end27_crit_edge ]
  %high.0 = phi i32 [ %phi.bo, %if.then22 ], [ 3328, %for.end.for.end27_crit_edge ], [ 3328, %for.cond15.for.end27_crit_edge ]
  %or = or i32 %high.0, %low.0144
  br label %cleanup

if.end40:                                         ; preds = %do.end.if.end40_crit_edge, %while.body.lr.ph.if.end40_crit_edge
  %2 = phi i8 [ %6, %do.end.if.end40_crit_edge ], [ %1, %while.body.lr.ph.if.end40_crit_edge ]
  %conv36159 = zext i8 %2 to i32
  %shl43 = shl nuw i32 1, %conv36159
  %and44 = and i32 %shl43, %conv41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.end, label %if.end40.while.end_crit_edge

if.end40.while.end_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end:                                           ; preds = %if.end40
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %4, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_get_adjacent_rate, ptr noundef nonnull @.str.10, i32 noundef %conv36159) #12
  %conv33 = zext i8 %2 to i32
  %prev_rs = getelementptr [13 x %struct.iwl_rate_info], ptr @iwl_rates, i32 0, i32 %conv33, i32 7
  %5 = ptrtoint ptr %prev_rs to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %prev_rs, align 1
  %cmp37 = icmp eq i8 %2, 0
  br i1 %cmp37, label %do.end.while.end_crit_edge, label %do.end.if.end40_crit_edge

do.end.if.end40_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %if.end40.while.end_crit_edge, %while.body.lr.ph.while.end_crit_edge
  %.lcssa152 = phi i8 [ %1, %while.body.lr.ph.while.end_crit_edge ], [ %2, %if.end40.while.end_crit_edge ], [ %6, %do.end.while.end_crit_edge ]
  br i1 %cmp34.not128, label %while.end.while.end79_crit_edge, label %while.body56.lr.ph

while.end.while.end79_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end79

while.body56.lr.ph:                               ; preds = %while.end
  %dev75 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %conv53161 = zext i8 %index to i32
  %next_rs162 = getelementptr [13 x %struct.iwl_rate_info], ptr @iwl_rates, i32 0, i32 %conv53161, i32 8
  %7 = ptrtoint ptr %next_rs162 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %next_rs162, align 1
  %9 = add i8 %index, -11
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %10 = icmp ult i8 %9, 2
  br i1 %10, label %while.body56.lr.ph.while.end79.loopexit_crit_edge, label %while.body56.lr.ph.if.end63_crit_edge

while.body56.lr.ph.if.end63_crit_edge:            ; preds = %while.body56.lr.ph
  br label %if.end63

while.body56.lr.ph.while.end79.loopexit_crit_edge: ; preds = %while.body56.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end79.loopexit

if.end63:                                         ; preds = %do.end74.if.end63_crit_edge, %while.body56.lr.ph.if.end63_crit_edge
  %11 = phi i8 [ %15, %do.end74.if.end63_crit_edge ], [ %8, %while.body56.lr.ph.if.end63_crit_edge ]
  %conv59164 = zext i8 %11 to i32
  %shl66 = shl nuw i32 1, %conv59164
  %and67 = and i32 %shl66, %conv41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %do.end74, label %if.end63.while.end79.loopexit_crit_edge

if.end63.while.end79.loopexit_crit_edge:          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end79.loopexit

do.end74:                                         ; preds = %if.end63
  %12 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev75, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %13, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_get_adjacent_rate, ptr noundef nonnull @.str.11, i32 noundef %conv59164) #12
  %conv53 = zext i8 %11 to i32
  %next_rs = getelementptr [13 x %struct.iwl_rate_info], ptr @iwl_rates, i32 0, i32 %conv53, i32 8
  %14 = ptrtoint ptr %next_rs to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %next_rs, align 1
  %16 = add i8 %11, -11
  %17 = icmp ult i8 %16, 2
  br i1 %17, label %do.end74.while.end79.loopexit_crit_edge, label %do.end74.if.end63_crit_edge

do.end74.if.end63_crit_edge:                      ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

do.end74.while.end79.loopexit_crit_edge:          ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end79.loopexit

while.end79.loopexit:                             ; preds = %do.end74.while.end79.loopexit_crit_edge, %if.end63.while.end79.loopexit_crit_edge, %while.body56.lr.ph.while.end79.loopexit_crit_edge
  %.lcssa = phi i8 [ %8, %while.body56.lr.ph.while.end79.loopexit_crit_edge ], [ %15, %do.end74.while.end79.loopexit_crit_edge ], [ %11, %if.end63.while.end79.loopexit_crit_edge ]
  %phi.cast139 = zext i8 %.lcssa to i32
  %phi.bo140 = shl nuw nsw i32 %phi.cast139, 8
  br label %while.end79

while.end79:                                      ; preds = %while.end79.loopexit, %while.end.while.end79_crit_edge, %while.cond.preheader.while.end79_crit_edge
  %low.2147.shrunk = phi i8 [ %.lcssa152, %while.end79.loopexit ], [ %.lcssa152, %while.end.while.end79_crit_edge ], [ 13, %while.cond.preheader.while.end79_crit_edge ]
  %high.2 = phi i32 [ %phi.bo140, %while.end79.loopexit ], [ 3328, %while.end.while.end79_crit_edge ], [ 3328, %while.cond.preheader.while.end79_crit_edge ]
  %low.2147 = zext i8 %low.2147.shrunk to i32
  %or83 = or i32 %high.2, %low.2147
  br label %cleanup

cleanup:                                          ; preds = %while.end79, %for.end27
  %retval.0.in = phi i32 [ %or, %for.end27 ], [ %or83, %while.end79 ]
  %retval.0 = trunc i32 %retval.0.in to i16
  ret i16 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @rs_alloc(ptr nocapture noundef readonly %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rs_free(ptr nocapture noundef %priv_rate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rs_alloc_sta(ptr nocapture noundef readonly %priv_rate, ptr noundef readnone %sta, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %priv_rate, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_alloc_sta, ptr noundef nonnull @.str.13) #12
  %lq_sta = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 2
  ret ptr %lq_sta
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rs_rate_init_stub(ptr nocapture noundef %priv_r, ptr nocapture noundef %sband, ptr nocapture noundef %chandef, ptr nocapture noundef %sta, ptr nocapture noundef %priv_sta) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rs_free_sta(ptr nocapture noundef readonly %priv_r, ptr nocapture noundef readnone %sta, ptr nocapture noundef readnone %priv_sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %priv_r, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_free_sta, ptr noundef nonnull @.str.14) #12
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_free_sta, ptr noundef nonnull @.str.15) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rs_tx_status(ptr noundef %priv_r, ptr nocapture noundef readonly %sband, ptr noundef %sta, ptr noundef %priv_sta, ptr nocapture noundef readonly %skb) #0 align 64 {
entry:
  %rs_index = alloca i32, align 4
  %tbl_type = alloca %struct.iwl_scale_tbl_info, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rs_index) #12
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %priv_r, i32 0, i32 1
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 440, ptr nonnull %tbl_type) #12
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 8
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %priv_r, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %5, i32 noundef 1048576, i1 noundef zeroext true, ptr noundef nonnull @__func__.rs_tx_status, ptr noundef nonnull @.str.16) #12
  %tobool.not = icmp eq ptr %priv_sta, null
  br i1 %tobool.not, label %do.end9, label %if.else

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %7, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_tx_status, ptr noundef nonnull @.str.17) #12
  br label %cleanup

if.else:                                          ; preds = %entry
  %drv = getelementptr inbounds %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 31
  %8 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drv, align 8
  %tobool13.not = icmp eq ptr %9, null
  br i1 %tobool13.not, label %do.end18, label %if.end22

do.end18:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %11, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_tx_status, ptr noundef nonnull @.str.18) #12
  br label %cleanup

if.end22:                                         ; preds = %if.else
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 2
  %14 = and i16 %13, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %14)
  %cmp.i = icmp eq i16 %14, 2048
  br i1 %cmp.i, label %lor.lhs.false, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end22
  %15 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cb.i, align 8
  %and = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp ne i32 %and, 0
  %17 = and i32 %16, 1088
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %17)
  %18 = icmp eq i32 %17, 64
  %or.cond = or i1 %tobool24.not, %18
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end34

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end34:                                         ; preds = %lor.lhs.false
  %lq = getelementptr inbounds %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 24
  %rs_table = getelementptr inbounds %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 24, i32 5
  %19 = ptrtoint ptr %rs_table to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %rs_table, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %band = getelementptr inbounds %struct.iwl_op_mode, ptr %priv_r, i32 93
  %22 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %band, align 8
  %and.i.i = lshr i32 %21, 14
  %and.lobit.i.i = and i32 %and.i.i, 1
  %and2.i.i = lshr i32 %21, 15
  %and2.lobit.i.i = and i32 %and2.i.i, 1
  %add.i.i = add nuw nsw i32 %and.lobit.i.i, %and2.lobit.i.i
  %and8.i.i = lshr i32 %21, 16
  %and8.lobit.i.i = and i32 %and8.i.i, 1
  %add14.i.i = add nuw nsw i32 %add.i.i, %and8.lobit.i.i
  %24 = getelementptr inbounds i8, ptr %tbl_type, i32 8
  %25 = call ptr @memset(ptr %24, i32 0, i32 432)
  %call1.i = tail call fastcc i32 @iwl_hwrate_to_plcp_idx(i32 noundef %21) #12
  %26 = ptrtoint ptr %rs_index to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call1.i, ptr %rs_index, align 4
  %is_SGI.i = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl_type, i32 0, i32 2
  %27 = ptrtoint ptr %is_SGI.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %is_SGI.i, align 1
  %is_ht40.i = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl_type, i32 0, i32 3
  %28 = ptrtoint ptr %is_ht40.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %is_ht40.i, align 2
  %is_dup.i = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl_type, i32 0, i32 4
  %29 = ptrtoint ptr %is_dup.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %is_dup.i, align 1
  %30 = trunc i32 %and.i.i to i8
  %conv3.i = and i8 %30, 7
  %ant_type.i = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl_type, i32 0, i32 1
  %31 = ptrtoint ptr %ant_type.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv3.i, ptr %ant_type.i, align 4
  %32 = ptrtoint ptr %tbl_type to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %tbl_type, align 8
  %max_search.i = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl_type, i32 0, i32 6
  %and4.i = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool.not.i, label %if.then5.i, label %if.else17.i

if.then5.i:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add14.i.i)
  %cmp7.i = icmp eq i32 %add14.i.i, 1
  br i1 %cmp7.i, label %if.then9.i, label %if.then5.i.rs_get_tbl_info_from_mcs.exit_crit_edge

if.then5.i.rs_get_tbl_info_from_mcs.exit_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_get_tbl_info_from_mcs.exit

if.then9.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp10.i = icmp eq i32 %23, 1
  %..i = select i1 %cmp10.i, i32 2, i32 1
  br label %cleanup.sink.split.i

if.else17.i:                                      ; preds = %if.end34
  %and18.i = and i32 %21, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.else17.i.if.end22.i_crit_edge, label %if.then20.i

if.else17.i.if.end22.i_crit_edge:                 ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

if.then20.i:                                      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %is_SGI.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %is_SGI.i, align 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then20.i, %if.else17.i.if.end22.i_crit_edge
  %and25.i = and i32 %21, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  %34 = and i32 %21, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %if.end22.i.if.end29.i_crit_edge, label %if.then27.i

if.end22.i.if.end29.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

if.then27.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %is_ht40.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %is_ht40.i, align 2
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then27.i, %if.end22.i.if.end29.i_crit_edge
  br i1 %tobool26.not.i, label %if.end29.i.if.end34.i_crit_edge, label %if.then32.i

if.end29.i.if.end34.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

if.then32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %is_dup.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %is_dup.i, align 1
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then32.i, %if.end29.i.if.end34.i_crit_edge
  %conv.i.i = trunc i32 %21 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv.i.i)
  %cmp37.i = icmp ult i8 %conv.i.i, 8
  br i1 %cmp37.i, label %if.then39.i, label %if.else46.i

if.then39.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add14.i.i)
  %cmp41.i = icmp eq i32 %add14.i.i, 1
  br i1 %cmp41.i, label %if.then39.i.cleanup.sink.split.i_crit_edge, label %if.then39.i.rs_get_tbl_info_from_mcs.exit_crit_edge

if.then39.i.rs_get_tbl_info_from_mcs.exit_crit_edge: ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_get_tbl_info_from_mcs.exit

if.then39.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.else46.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %conv.i.i)
  %cmp48.i = icmp ult i8 %conv.i.i, 16
  br i1 %cmp48.i, label %if.then50.i, label %if.else57.i

if.then50.i:                                      ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add14.i.i)
  %cmp52.i = icmp eq i32 %add14.i.i, 2
  br i1 %cmp52.i, label %if.then50.i.cleanup.sink.split.i_crit_edge, label %if.then50.i.rs_get_tbl_info_from_mcs.exit_crit_edge

if.then50.i.rs_get_tbl_info_from_mcs.exit_crit_edge: ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_get_tbl_info_from_mcs.exit

if.then50.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.else57.i:                                      ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add14.i.i)
  %cmp59.i = icmp eq i32 %add14.i.i, 3
  br i1 %cmp59.i, label %if.then61.i, label %if.else57.i.rs_get_tbl_info_from_mcs.exit_crit_edge

if.else57.i.rs_get_tbl_info_from_mcs.exit_crit_edge: ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_get_tbl_info_from_mcs.exit

if.then61.i:                                      ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %max_search.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 8, ptr %max_search.i, align 1
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then61.i, %if.then50.i.cleanup.sink.split.i_crit_edge, %if.then39.i.cleanup.sink.split.i_crit_edge, %if.then9.i
  %.sink.i = phi i32 [ 5, %if.then61.i ], [ %..i, %if.then9.i ], [ 3, %if.then39.i.cleanup.sink.split.i_crit_edge ], [ 4, %if.then50.i.cleanup.sink.split.i_crit_edge ]
  %39 = ptrtoint ptr %tbl_type to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.sink.i, ptr %tbl_type, align 8
  br label %rs_get_tbl_info_from_mcs.exit

rs_get_tbl_info_from_mcs.exit:                    ; preds = %cleanup.sink.split.i, %if.else57.i.rs_get_tbl_info_from_mcs.exit_crit_edge, %if.then50.i.rs_get_tbl_info_from_mcs.exit_crit_edge, %if.then39.i.rs_get_tbl_info_from_mcs.exit_crit_edge, %if.then5.i.rs_get_tbl_info_from_mcs.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp = icmp eq i32 %23, 1
  br i1 %cmp, label %if.then37, label %rs_get_tbl_info_from_mcs.exit.if.end38_crit_edge

rs_get_tbl_info_from_mcs.exit.if.end38_crit_edge: ; preds = %rs_get_tbl_info_from_mcs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then37:                                        ; preds = %rs_get_tbl_info_from_mcs.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sub = add i32 %call1.i, -4
  %40 = ptrtoint ptr %rs_index to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub, ptr %rs_index, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %rs_get_tbl_info_from_mcs.exit.if.end38_crit_edge
  %41 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %flags40 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 9
  %42 = ptrtoint ptr %flags40 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %bf.load = load i16, ptr %flags40, align 1
  %bf.clear = and i16 %bf.load, 2047
  %conv = zext i16 %bf.clear to i32
  %43 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %41, align 8
  %conv43 = sext i8 %44 to i32
  %and44 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end57, label %if.end57.thread

if.end57.thread:                                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %and47 = and i32 %conv43, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %cmp48.not = icmp eq i32 %and47, 0
  %inc = add nuw nsw i32 %and47, 1
  %spec.select = select i1 %cmp48.not, i32 0, i32 %inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp53 = icmp eq i32 %23, 0
  %add = add nuw nsw i32 %spec.select, 4
  %spec.select444 = select i1 %cmp53, i32 %add, i32 %spec.select
  br label %lor.lhs.false60

if.end57:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp58 = icmp slt i8 %44, 0
  br i1 %cmp58, label %if.end57.do.end129_crit_edge, label %if.end57.lor.lhs.false60_crit_edge

if.end57.lor.lhs.false60_crit_edge:               ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false60

if.end57.do.end129_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end129

lor.lhs.false60:                                  ; preds = %if.end57.lor.lhs.false60_crit_edge, %if.end57.thread
  %mac_index.1480 = phi i32 [ %spec.select444, %if.end57.thread ], [ %conv43, %if.end57.lor.lhs.false60_crit_edge ]
  %45 = ptrtoint ptr %is_SGI.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %is_SGI.i, align 1
  %conv61 = zext i8 %46 to i32
  %and62 = lshr i32 %conv, 7
  %and62.lobit = and i32 %and62, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and62.lobit, i32 %conv61)
  %cmp65.not = icmp eq i32 %and62.lobit, %conv61
  br i1 %cmp65.not, label %lor.lhs.false67, label %lor.lhs.false60.do.end129_crit_edge

lor.lhs.false60.do.end129_crit_edge:              ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end129

lor.lhs.false67:                                  ; preds = %lor.lhs.false60
  %47 = ptrtoint ptr %is_ht40.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %is_ht40.i, align 2
  %conv68 = zext i8 %48 to i32
  %and69 = lshr i32 %conv, 5
  %and69.lobit = and i32 %and69, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and69.lobit, i32 %conv68)
  %cmp75.not = icmp eq i32 %and69.lobit, %conv68
  br i1 %cmp75.not, label %lor.lhs.false77, label %lor.lhs.false67.do.end129_crit_edge

lor.lhs.false67.do.end129_crit_edge:              ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end129

lor.lhs.false77:                                  ; preds = %lor.lhs.false67
  %49 = ptrtoint ptr %is_dup.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %is_dup.i, align 1
  %conv78 = zext i8 %50 to i32
  %and79 = lshr i32 %conv, 6
  %and79.lobit = and i32 %and79, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and79.lobit, i32 %conv78)
  %cmp85.not = icmp eq i32 %and79.lobit, %conv78
  br i1 %cmp85.not, label %lor.lhs.false87, label %lor.lhs.false77.do.end129_crit_edge

lor.lhs.false77.do.end129_crit_edge:              ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end129

lor.lhs.false87:                                  ; preds = %lor.lhs.false77
  %antenna = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %51 = ptrtoint ptr %antenna to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %antenna, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %conv3.i, i8 %52)
  %cmp90.not = icmp eq i8 %conv3.i, %52
  %and93 = lshr i32 %21, 8
  %and93.lobit = and i32 %and93, 1
  %and44.lobit = lshr exact i32 %and44, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and93.lobit, i32 %and44.lobit)
  %cmp105.not = icmp eq i32 %and93.lobit, %and44.lobit
  %or.cond442 = select i1 %cmp90.not, i1 %cmp105.not, i1 false
  br i1 %or.cond442, label %lor.lhs.false107, label %lor.lhs.false87.do.end129_crit_edge

lor.lhs.false87.do.end129_crit_edge:              ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end129

lor.lhs.false107:                                 ; preds = %lor.lhs.false87
  %and108 = lshr i32 %21, 10
  %and114 = lshr i32 %conv, 4
  %53 = xor i32 %and114, %and108
  %54 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp120.not = icmp eq i32 %54, 0
  br i1 %cmp120.not, label %lor.lhs.false122, label %lor.lhs.false107.do.end129_crit_edge

lor.lhs.false107.do.end129_crit_edge:             ; preds = %lor.lhs.false107
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end129

lor.lhs.false122:                                 ; preds = %lor.lhs.false107
  %55 = ptrtoint ptr %rs_index to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rs_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %mac_index.1480)
  %cmp123.not = icmp eq i32 %56, %mac_index.1480
  br i1 %cmp123.not, label %if.else143, label %lor.lhs.false122.do.end129_crit_edge

lor.lhs.false122.do.end129_crit_edge:             ; preds = %lor.lhs.false122
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end129

do.end129:                                        ; preds = %lor.lhs.false122.do.end129_crit_edge, %lor.lhs.false107.do.end129_crit_edge, %lor.lhs.false87.do.end129_crit_edge, %lor.lhs.false77.do.end129_crit_edge, %lor.lhs.false67.do.end129_crit_edge, %lor.lhs.false60.do.end129_crit_edge, %if.end57.do.end129_crit_edge
  %mac_index.1481 = phi i32 [ %mac_index.1480, %lor.lhs.false122.do.end129_crit_edge ], [ %mac_index.1480, %lor.lhs.false107.do.end129_crit_edge ], [ %mac_index.1480, %lor.lhs.false87.do.end129_crit_edge ], [ %mac_index.1480, %lor.lhs.false77.do.end129_crit_edge ], [ %mac_index.1480, %lor.lhs.false67.do.end129_crit_edge ], [ %mac_index.1480, %lor.lhs.false60.do.end129_crit_edge ], [ %conv43, %if.end57.do.end129_crit_edge ]
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 4
  %59 = ptrtoint ptr %rs_index to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rs_index, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %58, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_tx_status, ptr noundef nonnull @.str.19, i32 noundef %mac_index.1481, i32 noundef %60, i32 noundef %21) #12
  %missed_rate_counter = getelementptr inbounds %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 23
  %61 = ptrtoint ptr %missed_rate_counter to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %missed_rate_counter, align 1
  %inc133 = add i8 %62, 1
  store i8 %inc133, ptr %missed_rate_counter, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %inc133)
  %cmp136 = icmp ugt i8 %inc133, 15
  br i1 %cmp136, label %if.then138, label %do.end129.cleanup_crit_edge

do.end129.cleanup_crit_edge:                      ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then138:                                       ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %missed_rate_counter to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %missed_rate_counter, align 1
  %call141 = tail call i32 @iwl_send_lq_cmd(ptr noundef %op_mode_specific, ptr noundef %3, ptr noundef %lq, i8 noundef zeroext 1, i1 noundef zeroext false) #12
  br label %cleanup

if.else143:                                       ; preds = %lor.lhs.false122
  %missed_rate_counter144 = getelementptr inbounds %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 23
  %64 = ptrtoint ptr %missed_rate_counter144 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %missed_rate_counter144, align 1
  %65 = ptrtoint ptr %priv_sta to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %priv_sta, align 8
  %idxprom = zext i8 %66 to i32
  %arrayidx146 = getelementptr %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 26, i32 %idxprom
  %67 = ptrtoint ptr %tbl_type to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tbl_type, align 8
  %69 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx146, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp.i445 = icmp eq i32 %68, %70
  br i1 %cmp.i445, label %land.lhs.true.i, label %if.else143.if.else158_crit_edge

if.else143.if.else158_crit_edge:                  ; preds = %if.else143
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else158

land.lhs.true.i:                                  ; preds = %if.else143
  %ant_type2.i = getelementptr %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 26, i32 %idxprom, i32 1
  %71 = ptrtoint ptr %ant_type2.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %ant_type2.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %conv3.i, i8 %72)
  %cmp4.i = icmp eq i8 %conv3.i, %72
  br i1 %cmp4.i, label %table_type_matches.exit, label %land.lhs.true.i.if.else158_crit_edge

land.lhs.true.i.if.else158_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else158

table_type_matches.exit:                          ; preds = %land.lhs.true.i
  %is_SGI7.i = getelementptr %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 26, i32 %idxprom, i32 2
  %73 = ptrtoint ptr %is_SGI7.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %is_SGI7.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %46, i8 %74)
  %cmp9.i = icmp eq i8 %46, %74
  br i1 %cmp9.i, label %if.then148, label %table_type_matches.exit.if.else158_crit_edge

table_type_matches.exit.if.else158_crit_edge:     ; preds = %table_type_matches.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else158

if.then148:                                       ; preds = %table_type_matches.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sub156 = sub nsw i32 1, %idxprom
  br label %if.end228

if.else158:                                       ; preds = %table_type_matches.exit.if.else158_crit_edge, %land.lhs.true.i.if.else158_crit_edge, %if.else143.if.else158_crit_edge
  %sub162 = sub nsw i32 1, %idxprom
  %arrayidx163 = getelementptr %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 26, i32 %sub162
  %75 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx163, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %76)
  %cmp.i448 = icmp eq i32 %68, %76
  br i1 %cmp.i448, label %land.lhs.true.i452, label %if.else158.do.end179_crit_edge

if.else158.do.end179_crit_edge:                   ; preds = %if.else158
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end179

land.lhs.true.i452:                               ; preds = %if.else158
  %ant_type2.i450 = getelementptr %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 26, i32 %sub162, i32 1
  %77 = ptrtoint ptr %ant_type2.i450 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %ant_type2.i450, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %conv3.i, i8 %78)
  %cmp4.i451 = icmp eq i8 %conv3.i, %78
  br i1 %cmp4.i451, label %table_type_matches.exit457, label %land.lhs.true.i452.do.end179_crit_edge

land.lhs.true.i452.do.end179_crit_edge:           ; preds = %land.lhs.true.i452
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end179

table_type_matches.exit457:                       ; preds = %land.lhs.true.i452
  %is_SGI7.i454 = getelementptr %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 26, i32 %sub162, i32 2
  %79 = ptrtoint ptr %is_SGI7.i454 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %is_SGI7.i454, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %46, i8 %80)
  %cmp9.i455 = icmp eq i8 %46, %80
  br i1 %cmp9.i455, label %table_type_matches.exit457.if.end228_crit_edge, label %table_type_matches.exit457.do.end179_crit_edge

table_type_matches.exit457.do.end179_crit_edge:   ; preds = %table_type_matches.exit457
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end179

table_type_matches.exit457.if.end228_crit_edge:   ; preds = %table_type_matches.exit457
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end228

do.end179:                                        ; preds = %table_type_matches.exit457.do.end179_crit_edge, %land.lhs.true.i452.do.end179_crit_edge, %if.else158.do.end179_crit_edge
  %81 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %82, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_tx_status, ptr noundef nonnull @.str.20) #12
  %83 = ptrtoint ptr %priv_sta to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %priv_sta, align 8
  %idxprom185 = zext i8 %84 to i32
  %arrayidx186 = getelementptr %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 26, i32 %idxprom185
  %85 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev, align 4
  %87 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx186, align 8
  %ant_type192 = getelementptr %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 26, i32 %idxprom185, i32 1
  %89 = ptrtoint ptr %ant_type192 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %ant_type192, align 4
  %conv193 = zext i8 %90 to i32
  %is_SGI194 = getelementptr %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 26, i32 %idxprom185, i32 2
  %91 = ptrtoint ptr %is_SGI194 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %is_SGI194, align 1
  %conv195 = zext i8 %92 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %86, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_tx_status, ptr noundef nonnull @.str.21, i32 noundef %88, i32 noundef %conv193, i32 noundef %conv195) #12
  %93 = ptrtoint ptr %priv_sta to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %priv_sta, align 8
  %conv200 = zext i8 %94 to i32
  %sub201 = sub nsw i32 1, %conv200
  %arrayidx202 = getelementptr %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 26, i32 %sub201
  %95 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev, align 4
  %97 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx202, align 8
  %ant_type209 = getelementptr %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 26, i32 %sub201, i32 1
  %99 = ptrtoint ptr %ant_type209 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %ant_type209, align 4
  %conv210 = zext i8 %100 to i32
  %is_SGI211 = getelementptr %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 26, i32 %sub201, i32 2
  %101 = ptrtoint ptr %is_SGI211 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %is_SGI211, align 1
  %conv212 = zext i8 %102 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %96, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_tx_status, ptr noundef nonnull @.str.22, i32 noundef %98, i32 noundef %conv210, i32 noundef %conv212) #12
  %103 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev, align 4
  %conv222 = zext i8 %conv3.i to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %104, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_tx_status, ptr noundef nonnull @.str.23, i32 noundef %68, i32 noundef %conv222, i32 noundef %conv61) #12
  tail call fastcc void @rs_stay_in_table(ptr noundef nonnull %priv_sta, i1 noundef zeroext true)
  br label %done

if.end228:                                        ; preds = %table_type_matches.exit457.if.end228_crit_edge, %if.then148
  %idxprom151.pn = phi i32 [ %idxprom, %if.then148 ], [ %sub162, %table_type_matches.exit457.if.end228_crit_edge ]
  %sub156.pn = phi i32 [ %sub156, %if.then148 ], [ %idxprom, %table_type_matches.exit457.if.end228_crit_edge ]
  %other_tbl.0 = getelementptr %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 26, i32 %sub156.pn
  %curr_tbl.0 = getelementptr %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 26, i32 %idxprom151.pn
  %105 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %cb.i, align 8
  %and230 = and i32 %106, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and230)
  %tobool231.not = icmp eq i32 %and230, 0
  br i1 %tobool231.not, label %if.else253, label %if.then232

if.then232:                                       ; preds = %if.end228
  %107 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %band, align 8
  call fastcc void @rs_get_tbl_info_from_mcs(i32 noundef %21, i32 noundef %108, ptr noundef nonnull %tbl_type, ptr noundef nonnull %rs_index)
  %109 = ptrtoint ptr %rs_index to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %rs_index, align 4
  %ampdu_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 25
  %111 = ptrtoint ptr %ampdu_len to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %ampdu_len, align 1
  %conv238 = zext i8 %112 to i32
  %ampdu_ack_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %113 = ptrtoint ptr %ampdu_ack_len to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %ampdu_ack_len, align 8
  %conv239 = zext i8 %114 to i32
  tail call fastcc void @rs_collect_tx_data(ptr noundef %curr_tbl.0, i32 noundef %110, i32 noundef %conv238, i32 noundef %conv239)
  %stay_in_tbl = getelementptr inbounds %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 2
  %115 = ptrtoint ptr %stay_in_tbl to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %stay_in_tbl, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool241.not = icmp eq i8 %116, 0
  br i1 %tobool241.not, label %if.then232.if.end301_crit_edge, label %if.then242

if.then232.if.end301_crit_edge:                   ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end301

if.then242:                                       ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #14
  %117 = ptrtoint ptr %ampdu_ack_len to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %ampdu_ack_len, align 8
  %conv244 = zext i8 %118 to i32
  %total_success = getelementptr inbounds %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 10
  %119 = ptrtoint ptr %total_success to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %total_success, align 4
  %add245 = add i32 %120, %conv244
  store i32 %add245, ptr %total_success, align 4
  %121 = ptrtoint ptr %ampdu_len to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %ampdu_len, align 1
  %conv247 = zext i8 %122 to i32
  %123 = load i8, ptr %ampdu_ack_len, align 8
  %conv249 = zext i8 %123 to i32
  %sub250 = sub nsw i32 %conv247, %conv249
  br label %if.end301.sink.split

if.else253:                                       ; preds = %if.end228
  %124 = ptrtoint ptr %flags40 to i32
  call void @__asan_loadN_noabort(i32 %124, i32 2)
  %bf.load256 = load i16, ptr %flags40, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load256)
  %cmp259 = icmp sgt i16 %bf.load256, -1
  %bf.lshr = lshr i16 %bf.load256, 11
  %conv257 = zext i16 %bf.lshr to i32
  %sub258 = add nsw i32 %conv257, -1
  %cond = select i1 %cmp259, i32 %sub258, i32 15
  %and262 = lshr i32 %106, 9
  %and262.lobit = and i32 %and262, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp268.not483 = icmp slt i32 %cond, 0
  br i1 %cmp268.not483, label %if.else253.for.end_crit_edge, label %for.body.lr.ph

if.else253.for.end_crit_edge:                     ; preds = %if.else253
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.else253
  %ant_type2.i460 = getelementptr %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 26, i32 %idxprom151.pn, i32 1
  %is_SGI7.i464 = getelementptr %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 26, i32 %idxprom151.pn, i32 2
  %ant_type2.i470 = getelementptr %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 26, i32 %sub156.pn, i32 1
  %is_SGI7.i474 = getelementptr %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 26, i32 %sub156.pn, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0484 = phi i32 [ 0, %for.body.lr.ph ], [ %inc290, %for.inc.for.body_crit_edge ]
  %arrayidx271 = getelementptr %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 24, i32 5, i32 %i.0484
  %125 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %arrayidx271, align 1
  %127 = tail call i32 @llvm.bswap.i32(i32 %126)
  %128 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %band, align 8
  call fastcc void @rs_get_tbl_info_from_mcs(i32 noundef %127, i32 noundef %129, ptr noundef nonnull %tbl_type, ptr noundef nonnull %rs_index)
  %130 = ptrtoint ptr %tbl_type to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %tbl_type, align 8
  %132 = ptrtoint ptr %curr_tbl.0 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %curr_tbl.0, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %133)
  %cmp.i458 = icmp eq i32 %131, %133
  br i1 %cmp.i458, label %land.lhs.true.i462, label %for.body.if.else277_crit_edge

for.body.if.else277_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else277

land.lhs.true.i462:                               ; preds = %for.body
  %134 = ptrtoint ptr %ant_type.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %ant_type.i, align 4
  %136 = ptrtoint ptr %ant_type2.i460 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %ant_type2.i460, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %135, i8 %137)
  %cmp4.i461 = icmp eq i8 %135, %137
  br i1 %cmp4.i461, label %table_type_matches.exit467, label %land.lhs.true.i462.if.else277_crit_edge

land.lhs.true.i462.if.else277_crit_edge:          ; preds = %land.lhs.true.i462
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else277

table_type_matches.exit467:                       ; preds = %land.lhs.true.i462
  %138 = ptrtoint ptr %is_SGI.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %is_SGI.i, align 1
  %140 = ptrtoint ptr %is_SGI7.i464 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %is_SGI7.i464, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %139, i8 %141)
  %cmp9.i465 = icmp eq i8 %139, %141
  br i1 %cmp9.i465, label %table_type_matches.exit467.if.end282_crit_edge, label %table_type_matches.exit467.if.else277_crit_edge

table_type_matches.exit467.if.else277_crit_edge:  ; preds = %table_type_matches.exit467
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else277

table_type_matches.exit467.if.end282_crit_edge:   ; preds = %table_type_matches.exit467
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end282

if.else277:                                       ; preds = %table_type_matches.exit467.if.else277_crit_edge, %land.lhs.true.i462.if.else277_crit_edge, %for.body.if.else277_crit_edge
  %142 = ptrtoint ptr %other_tbl.0 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %other_tbl.0, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %143)
  %cmp.i468 = icmp eq i32 %131, %143
  br i1 %cmp.i468, label %land.lhs.true.i472, label %if.else277.for.inc_crit_edge

if.else277.for.inc_crit_edge:                     ; preds = %if.else277
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true.i472:                               ; preds = %if.else277
  %144 = ptrtoint ptr %ant_type.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %ant_type.i, align 4
  %146 = ptrtoint ptr %ant_type2.i470 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %ant_type2.i470, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %145, i8 %147)
  %cmp4.i471 = icmp eq i8 %145, %147
  br i1 %cmp4.i471, label %table_type_matches.exit477, label %land.lhs.true.i472.for.inc_crit_edge

land.lhs.true.i472.for.inc_crit_edge:             ; preds = %land.lhs.true.i472
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

table_type_matches.exit477:                       ; preds = %land.lhs.true.i472
  %148 = ptrtoint ptr %is_SGI.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %is_SGI.i, align 1
  %150 = ptrtoint ptr %is_SGI7.i474 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %is_SGI7.i474, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %149, i8 %151)
  %cmp9.i475 = icmp eq i8 %149, %151
  br i1 %cmp9.i475, label %table_type_matches.exit477.if.end282_crit_edge, label %table_type_matches.exit477.for.inc_crit_edge

table_type_matches.exit477.for.inc_crit_edge:     ; preds = %table_type_matches.exit477
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

table_type_matches.exit477.if.end282_crit_edge:   ; preds = %table_type_matches.exit477
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end282

if.end282:                                        ; preds = %table_type_matches.exit477.if.end282_crit_edge, %table_type_matches.exit467.if.end282_crit_edge
  %tmp_tbl.0 = phi ptr [ %curr_tbl.0, %table_type_matches.exit467.if.end282_crit_edge ], [ %other_tbl.0, %table_type_matches.exit477.if.end282_crit_edge ]
  %152 = ptrtoint ptr %rs_index to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %rs_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0484, i32 %cond)
  %cmp283 = icmp slt i32 %i.0484, %cond
  %spec.select443 = select i1 %cmp283, i32 0, i32 %and262.lobit
  tail call fastcc void @rs_collect_tx_data(ptr noundef %tmp_tbl.0, i32 noundef %153, i32 noundef 1, i32 noundef %spec.select443)
  br label %for.inc

for.inc:                                          ; preds = %if.end282, %table_type_matches.exit477.for.inc_crit_edge, %land.lhs.true.i472.for.inc_crit_edge, %if.else277.for.inc_crit_edge
  %inc290 = add nuw nsw i32 %i.0484, 1
  %exitcond = icmp eq i32 %i.0484, %cond
  br i1 %exitcond, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.else253.for.end_crit_edge
  %tx_rate.0.lcssa = phi i32 [ %21, %if.else253.for.end_crit_edge ], [ %127, %for.inc.for.end_crit_edge ]
  %stay_in_tbl291 = getelementptr inbounds %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 2
  %154 = ptrtoint ptr %stay_in_tbl291 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %stay_in_tbl291, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool292.not = icmp eq i8 %155, 0
  br i1 %tobool292.not, label %for.end.if.end301_crit_edge, label %if.then293

for.end.if.end301_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end301

if.then293:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %total_success294 = getelementptr inbounds %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 10
  %156 = ptrtoint ptr %total_success294 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %total_success294, align 4
  %add295 = add i32 %157, %and262.lobit
  store i32 %add295, ptr %total_success294, align 4
  %sub296 = xor i32 %and262.lobit, 1
  %add297 = add nsw i32 %cond, %sub296
  br label %if.end301.sink.split

if.end301.sink.split:                             ; preds = %if.then293, %if.then242
  %add297.sink = phi i32 [ %add297, %if.then293 ], [ %sub250, %if.then242 ]
  %tx_rate.1.ph = phi i32 [ %tx_rate.0.lcssa, %if.then293 ], [ %21, %if.then242 ]
  %total_failed = getelementptr inbounds %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 9
  %158 = ptrtoint ptr %total_failed to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %total_failed, align 8
  %add299 = add i32 %add297.sink, %159
  store i32 %add299, ptr %total_failed, align 8
  br label %if.end301

if.end301:                                        ; preds = %if.end301.sink.split, %for.end.if.end301_crit_edge, %if.then232.if.end301_crit_edge
  %tx_rate.1 = phi i32 [ %21, %if.then232.if.end301_crit_edge ], [ %tx_rate.0.lcssa, %for.end.if.end301_crit_edge ], [ %tx_rate.1.ph, %if.end301.sink.split ]
  %last_rate_n_flags = getelementptr inbounds %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 33
  %160 = ptrtoint ptr %last_rate_n_flags to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %tx_rate.1, ptr %last_rate_n_flags, align 8
  br label %done

done:                                             ; preds = %if.end301, %do.end179
  %tobool302.not = icmp eq ptr %sta, null
  br i1 %tobool302.not, label %done.if.end308_crit_edge, label %land.lhs.true303

done.if.end308_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end308

land.lhs.true303:                                 ; preds = %done
  %band304 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 2
  %161 = ptrtoint ptr %band304 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %band304, align 4
  %arrayidx305 = getelementptr [6 x i32], ptr %sta, i32 0, i32 %162
  %163 = ptrtoint ptr %arrayidx305 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx305, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool306.not = icmp eq i32 %164, 0
  br i1 %tobool306.not, label %land.lhs.true303.if.end308_crit_edge, label %if.then307

land.lhs.true303.if.end308_crit_edge:             ; preds = %land.lhs.true303
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end308

if.then307:                                       ; preds = %land.lhs.true303
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rs_rate_scale_perform(ptr noundef %op_mode_specific, ptr noundef %skb, ptr noundef nonnull %sta, ptr noundef %priv_sta)
  br label %if.end308

if.end308:                                        ; preds = %if.then307, %land.lhs.true303.if.end308_crit_edge, %done.if.end308_crit_edge
  %lib = getelementptr inbounds %struct.iwl_op_mode, ptr %priv_r, i32 5
  %165 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %lib, align 8
  %bt_params = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %166, i32 0, i32 4
  %167 = ptrtoint ptr %bt_params to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %bt_params, align 4
  %tobool309.not = icmp eq ptr %168, null
  br i1 %tobool309.not, label %if.end308.cleanup_crit_edge, label %land.lhs.true310

if.end308.cleanup_crit_edge:                      ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true310:                                 ; preds = %if.end308
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %168, align 4, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool313.not = icmp eq i8 %170, 0
  br i1 %tobool313.not, label %land.lhs.true310.cleanup_crit_edge, label %if.then315

land.lhs.true310.cleanup_crit_edge:               ; preds = %land.lhs.true310
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then315:                                       ; preds = %land.lhs.true310
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rs_bt_update_lq(ptr noundef %op_mode_specific, ptr noundef %3, ptr noundef %priv_sta)
  br label %cleanup

cleanup:                                          ; preds = %if.then315, %land.lhs.true310.cleanup_crit_edge, %if.end308.cleanup_crit_edge, %if.then138, %do.end129.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %do.end18, %do.end9
  call void @llvm.lifetime.end.p0(i64 440, ptr nonnull %tbl_type) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rs_index) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rs_get_rate(ptr nocapture noundef readonly %priv_r, ptr noundef readonly %sta, ptr noundef %priv_sta, ptr nocapture noundef readonly %txrc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %skb1 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %txrc, i32 0, i32 3
  %0 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb1, align 4
  %sband2 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %txrc, i32 0, i32 1
  %2 = ptrtoint ptr %sband2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sband2, align 4
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %priv_r, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %5, i32 noundef 1048576, i1 noundef zeroext true, ptr noundef nonnull @__func__.rs_get_rate, ptr noundef nonnull @.str.26) #12
  %tobool.not = icmp eq ptr %priv_sta, null
  br i1 %tobool.not, label %entry.if.end39_crit_edge, label %if.then

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then:                                          ; preds = %entry
  %rate_idx_mask = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %txrc, i32 0, i32 7
  %6 = ptrtoint ptr %rate_idx_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rate_idx_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  %8 = tail call i32 @llvm.ctlz.i32(i32 %7, i1 true) #12, !range !295
  %9 = trunc i32 %8 to i8
  %10 = sub nuw nsw i8 32, %9
  %11 = select i1 %tobool.not.i, i8 0, i8 %10
  %conv = add nsw i8 %11, -1
  %max_rate_idx = getelementptr inbounds %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 22
  %12 = ptrtoint ptr %max_rate_idx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %max_rate_idx, align 4
  %band = getelementptr inbounds %struct.ieee80211_supported_band, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp = icmp ne i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp10.not = icmp eq i8 %11, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp10.not
  br i1 %or.cond, label %if.endthread-pre-split, label %if.then12

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %add = add nuw nsw i8 %11, 3
  %15 = ptrtoint ptr %max_rate_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %add, ptr %max_rate_idx, align 4
  br label %if.end

if.endthread-pre-split:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %max_rate_idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %.pr = load i8, ptr %max_rate_idx, align 4
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %if.then12
  %17 = phi i8 [ %.pr, %if.endthread-pre-split ], [ %add, %if.then12 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %17)
  %18 = icmp ugt i8 %17, 12
  br i1 %18, label %if.then24, label %if.end.land.lhs.true29_crit_edge

if.end.land.lhs.true29_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true29

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %max_rate_idx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %max_rate_idx, align 4
  br label %land.lhs.true29

land.lhs.true29:                                  ; preds = %if.then24, %if.end.land.lhs.true29_crit_edge
  %drv = getelementptr inbounds %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 31
  %20 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %drv, align 8
  %tobool30.not = icmp eq ptr %21, null
  br i1 %tobool30.not, label %do.end35, label %land.lhs.true29.if.end39_crit_edge

land.lhs.true29.if.end39_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

do.end35:                                         ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %23, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_get_rate, ptr noundef nonnull @.str.18) #12
  br label %if.end39

if.end39:                                         ; preds = %do.end35, %land.lhs.true29.if.end39_crit_edge, %entry.if.end39_crit_edge
  %last_txrate_idx = getelementptr inbounds %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 32
  %24 = ptrtoint ptr %last_txrate_idx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %last_txrate_idx, align 4
  %last_rate_n_flags = getelementptr inbounds %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 33
  %26 = ptrtoint ptr %last_rate_n_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %last_rate_n_flags, align 8
  %and = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %if.else128, label %if.then41

if.then41:                                        ; preds = %if.end39
  %sub42 = add i32 %25, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub42)
  %cmp43 = icmp sgt i32 %sub42, 0
  %sub45 = add i32 %25, -5
  %spec.select = select i1 %cmp43, i32 %sub45, i32 0
  %conv.i = trunc i32 %27 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %conv.i)
  %cmp49 = icmp ugt i8 %conv.i, 15
  %add52 = add i32 %spec.select, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %conv.i)
  %cmp56 = icmp ugt i8 %conv.i, 7
  %add59 = add i32 %spec.select, 8
  %spec.select207 = select i1 %cmp56, i32 %add59, i32 %spec.select
  %rate_idx.0 = select i1 %cmp49, i32 %add52, i32 %spec.select207
  %flags = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 9
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %bf.load = load i16, ptr %flags, align 1
  %bf.clear = and i16 %bf.load, -2048
  %bf.set = or i16 %bf.clear, 8
  store i16 %bf.set, ptr %flags, align 1
  %29 = ptrtoint ptr %last_rate_n_flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %last_rate_n_flags, align 8
  %and63 = and i32 %30, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.then41.if.end76_crit_edge, label %if.then65

if.then41.if.end76_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.then65:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set75 = or i16 %bf.clear, 136
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %bf.set75, ptr %flags, align 1
  br label %if.end76

if.end76:                                         ; preds = %if.then65, %if.then41.if.end76_crit_edge
  %32 = ptrtoint ptr %last_rate_n_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %last_rate_n_flags, align 8
  %and78 = and i32 %33, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end76.if.end93_crit_edge, label %if.then80

if.end76.if.end93_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

if.then80:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %bf.load84 = load i16, ptr %flags, align 1
  %bf.set92 = or i16 %bf.load84, 64
  store i16 %bf.set92, ptr %flags, align 1
  br label %if.end93

if.end93:                                         ; preds = %if.then80, %if.end76.if.end93_crit_edge
  %35 = ptrtoint ptr %last_rate_n_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %last_rate_n_flags, align 8
  %and95 = and i32 %36, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end93.if.end110_crit_edge, label %if.then97

if.end93.if.end110_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

if.then97:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %bf.load101 = load i16, ptr %flags, align 1
  %bf.set109 = or i16 %bf.load101, 32
  store i16 %bf.set109, ptr %flags, align 1
  br label %if.end110

if.end110:                                        ; preds = %if.then97, %if.end93.if.end110_crit_edge
  %38 = ptrtoint ptr %last_rate_n_flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %last_rate_n_flags, align 8
  %and112 = and i32 %39, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.end110.if.end158_crit_edge, label %if.then114

if.end110.if.end158_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end158

if.then114:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %bf.load118 = load i16, ptr %flags, align 1
  %bf.set126 = or i16 %bf.load118, 16
  store i16 %bf.set126, ptr %flags, align 1
  br label %if.end158

if.else128:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %25)
  %41 = icmp ugt i32 %25, 11
  br i1 %41, label %if.else128.if.then141_crit_edge, label %lor.lhs.false134

if.else128.if.then141_crit_edge:                  ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then141

lor.lhs.false134:                                 ; preds = %if.else128
  %band135 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %3, i32 0, i32 2
  %42 = ptrtoint ptr %band135 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %band135, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp136 = icmp eq i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp139 = icmp ult i32 %25, 4
  %or.cond209 = select i1 %cmp136, i1 %cmp139, i1 false
  br i1 %or.cond209, label %lor.lhs.false134.if.then141_crit_edge, label %if.else144

lor.lhs.false134.if.then141_crit_edge:            ; preds = %lor.lhs.false134
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then141

if.then141:                                       ; preds = %lor.lhs.false134.if.then141_crit_edge, %if.else128.if.then141_crit_edge
  %n_bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %3, i32 0, i32 4
  %44 = ptrtoint ptr %n_bitrates.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %n_bitrates.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp46.i = icmp sgt i32 %45, 0
  br i1 %cmp46.i, label %for.body.lr.ph.i, label %if.then141.land.end.i_crit_edge

if.then141.land.end.i_crit_edge:                  ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

for.body.lr.ph.i:                                 ; preds = %if.then141
  %cmp.i.i = icmp eq ptr %sta, null
  br i1 %cmp.i.i, label %for.body.lr.ph.i.if.then.i.split_crit_edge, label %for.body.lr.ph.i.split

for.body.lr.ph.i.if.then.i.split_crit_edge:       ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.split

for.body.lr.ph.i.split:                           ; preds = %for.body.lr.ph.i
  %band.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %3, i32 0, i32 2
  %46 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %band.i, align 4
  %arrayidx.i.i = getelementptr [6 x i32], ptr %sta, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i.split
  %i.047.i = phi i32 [ 0, %for.body.lr.ph.i.split ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %50 = shl nuw i32 1, %i.047.i
  %51 = and i32 %49, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i212 = icmp eq i32 %51, 0
  br i1 %tobool.not.i212, label %for.inc.i, label %for.body.i.if.then.i.split_crit_edge

for.body.i.if.then.i.split_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.split

if.then.i.split:                                  ; preds = %for.body.i.if.then.i.split_crit_edge, %for.body.lr.ph.i.if.then.i.split_crit_edge
  %i.047.lcssa.i.split = phi i32 [ 0, %for.body.lr.ph.i.if.then.i.split_crit_edge ], [ %i.047.i, %for.body.i.if.then.i.split_crit_edge ]
  %sext = shl i32 %i.047.lcssa.i.split, 24
  %phi.cast = ashr exact i32 %sext, 24
  br label %if.end151

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.047.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %45
  br i1 %exitcond.not.i, label %for.inc.i.land.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.land.end.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.end.i:                                       ; preds = %for.inc.i.land.end.i_crit_edge, %if.then141.land.end.i_crit_edge
  %.b43.i = load i1, ptr @rate_lowest_index.__already_done, align 1
  br i1 %.b43.i, label %land.end.i.if.end151_crit_edge, label %if.then7.i, !prof !293

land.end.i.if.end151_crit_edge:                   ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end151

if.then7.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rate_lowest_index.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 6355, i32 noundef 9, ptr noundef null) #12
  br label %if.end151

if.else144:                                       ; preds = %lor.lhs.false134
  call void @__sanitizer_cov_trace_pc() #14
  %sub149 = add nsw i32 %25, -4
  %spec.select210 = select i1 %cmp136, i32 %sub149, i32 %25
  br label %if.end151

if.end151:                                        ; preds = %if.else144, %if.then7.i, %land.end.i.if.end151_crit_edge, %if.then.i.split
  %rate_idx.1 = phi i32 [ %spec.select210, %if.else144 ], [ %phi.cast, %if.then.i.split ], [ 0, %if.then7.i ], [ 0, %land.end.i.if.end151_crit_edge ]
  %flags154 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 9
  %52 = ptrtoint ptr %flags154 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %bf.load155 = load i16, ptr %flags154, align 1
  %bf.clear156 = and i16 %bf.load155, -2048
  store i16 %bf.clear156, ptr %flags154, align 1
  br label %if.end158

if.end158:                                        ; preds = %if.end151, %if.then114, %if.end110.if.end158_crit_edge
  %rate_idx.2 = phi i32 [ %rate_idx.0, %if.then114 ], [ %rate_idx.0, %if.end110.if.end158_crit_edge ], [ %rate_idx.1, %if.end151 ]
  %conv159 = trunc i32 %rate_idx.2 to i8
  %53 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv159, ptr %53, align 8
  %count = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 9
  %55 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %bf.load164 = load i16, ptr %count, align 1
  %bf.clear165 = and i16 %bf.load164, 2047
  %bf.set166 = or i16 %bf.clear165, 2048
  store i16 %bf.set166, ptr %count, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rs_add_debugfs(ptr nocapture noundef readnone %priv, ptr noundef %priv_sta, ptr noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.73, i16 noundef zeroext 384, ptr noundef %dir, ptr noundef %priv_sta, ptr noundef nonnull @rs_sta_dbgfs_scale_table_ops) #12
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.74, i16 noundef zeroext 256, ptr noundef %dir, ptr noundef %priv_sta, ptr noundef nonnull @rs_sta_dbgfs_stats_table_ops) #12
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.75, i16 noundef zeroext 256, ptr noundef %dir, ptr noundef %priv_sta, ptr noundef nonnull @rs_sta_dbgfs_rate_scale_data_ops) #12
  %tx_agg_tid_en = getelementptr inbounds %struct.iwl_lq_sta, ptr %priv_sta, i32 0, i32 28
  tail call void @debugfs_create_u8(ptr noundef nonnull @.str.76, i16 noundef zeroext 384, ptr noundef %dir, ptr noundef %tx_agg_tid_en) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rs_stay_in_table(ptr nocapture noundef %lq_sta, i1 noundef zeroext %force_search) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 31
  %0 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv, align 8
  %2 = ptrtoint ptr %lq_sta to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lq_sta, align 8
  %conv = zext i8 %3 to i32
  %stay_in_tbl = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 2
  %4 = ptrtoint ptr %stay_in_tbl to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %stay_in_tbl, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end61_crit_edge, label %if.then

entry.if.end61_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then:                                          ; preds = %entry
  %flush_timer = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 11
  %6 = ptrtoint ptr %flush_timer to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %flush_timer, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool2.not = icmp eq i64 %7, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %8 = trunc i64 %7 to i32
  %conv5 = add i32 %8, 300
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %conv5, %9
  %sub.lobit = lshr i32 %sub, 31
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %flush_interval_passed.0 = phi i32 [ %sub.lobit, %if.then3 ], [ 0, %if.then.if.end_crit_edge ]
  br i1 %force_search, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %total_failed = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 9
  %10 = ptrtoint ptr %total_failed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %total_failed, align 8
  %max_failure_limit = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 6
  %12 = ptrtoint ptr %max_failure_limit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_failure_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp9 = icmp ugt i32 %11, %13
  br i1 %cmp9, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false11

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %total_success = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 10
  %14 = ptrtoint ptr %total_success to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %total_success, align 4
  %max_success_limit = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 7
  %16 = ptrtoint ptr %max_success_limit to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_success_limit, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp12 = icmp ugt i32 %15, %17
  br i1 %cmp12, label %lor.lhs.false11.do.end_crit_edge, label %lor.lhs.false14

lor.lhs.false11.do.end_crit_edge:                 ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %search_better_tbl = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 3
  %18 = ptrtoint ptr %search_better_tbl to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %search_better_tbl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool15.not = icmp ne i8 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flush_interval_passed.0)
  %tobool19.not = icmp eq i32 %flush_interval_passed.0, 0
  %20 = select i1 %tobool15.not, i1 true, i1 %tobool2.not
  %or.cond97 = select i1 %20, i1 true, i1 %tobool19.not
  br i1 %or.cond97, label %if.else, label %lor.lhs.false14.do.end_crit_edge

lor.lhs.false14.do.end_crit_edge:                 ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false14.do.end_crit_edge, %lor.lhs.false11.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %total_failed22 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 9
  %23 = ptrtoint ptr %total_failed22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %total_failed22, align 8
  %total_success23 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 10
  %25 = ptrtoint ptr %total_success23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %total_success23, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %22, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_stay_in_table, ptr noundef nonnull @.str.24, i32 noundef %24, i32 noundef %26, i32 noundef %flush_interval_passed.0) #12
  %27 = ptrtoint ptr %stay_in_tbl to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %stay_in_tbl, align 2
  %28 = call ptr @memset(ptr %total_failed22, i32 0, i32 16)
  br label %for.body54.preheader

if.else:                                          ; preds = %lor.lhs.false14
  %table_count = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 8
  %29 = ptrtoint ptr %table_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %table_count, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %table_count, align 4
  %table_count_limit = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 5
  %31 = ptrtoint ptr %table_count_limit to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %table_count_limit, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %32)
  %cmp31.not = icmp ult i32 %inc, %32
  br i1 %cmp31.not, label %if.else.if.end47thread-pre-split_crit_edge, label %if.then33

if.else.if.end47thread-pre-split_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47thread-pre-split

if.then33:                                        ; preds = %if.else
  %33 = ptrtoint ptr %table_count to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %table_count, align 4
  %dev39 = getelementptr inbounds %struct.iwl_priv, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev39, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %35, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_stay_in_table, ptr noundef nonnull @.str.25) #12
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then33
  %i.098 = phi i32 [ 0, %if.then33 ], [ %inc45, %for.body.for.body_crit_edge ]
  %arrayidx44 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %conv, i32 9, i32 %i.098
  %36 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 0, ptr %arrayidx44, align 8
  %success_counter.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %conv, i32 9, i32 %i.098, i32 1
  %37 = ptrtoint ptr %success_counter.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %success_counter.i, align 8
  %success_ratio.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %conv, i32 9, i32 %i.098, i32 2
  %38 = ptrtoint ptr %success_ratio.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %success_ratio.i, align 4
  %counter.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %conv, i32 9, i32 %i.098, i32 3
  %39 = ptrtoint ptr %counter.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %counter.i, align 8
  %average_tpt.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %conv, i32 9, i32 %i.098, i32 4
  %40 = ptrtoint ptr %average_tpt.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %average_tpt.i, align 4
  %stamp.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %conv, i32 9, i32 %i.098, i32 5
  %41 = ptrtoint ptr %stamp.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %stamp.i, align 8
  %inc45 = add nuw nsw i32 %i.098, 1
  %exitcond.not = icmp eq i32 %inc45, 13
  br i1 %exitcond.not, label %for.body.if.end47thread-pre-split_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.if.end47thread-pre-split_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47thread-pre-split

if.end47thread-pre-split:                         ; preds = %for.body.if.end47thread-pre-split_crit_edge, %if.else.if.end47thread-pre-split_crit_edge
  %42 = ptrtoint ptr %stay_in_tbl to i32
  call void @__asan_load1_noabort(i32 %42)
  %.pr = load i8, ptr %stay_in_tbl, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %phi.cmp = icmp eq i8 %.pr, 0
  br i1 %phi.cmp, label %if.end47thread-pre-split.for.body54.preheader_crit_edge, label %if.end47thread-pre-split.if.end61_crit_edge

if.end47thread-pre-split.if.end61_crit_edge:      ; preds = %if.end47thread-pre-split
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.end47thread-pre-split.for.body54.preheader_crit_edge: ; preds = %if.end47thread-pre-split
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body54.preheader

for.body54.preheader:                             ; preds = %if.end47thread-pre-split.for.body54.preheader_crit_edge, %do.end
  br label %for.body54

for.body54:                                       ; preds = %for.body54.for.body54_crit_edge, %for.body54.preheader
  %i.199 = phi i32 [ %inc58, %for.body54.for.body54_crit_edge ], [ 0, %for.body54.preheader ]
  %arrayidx56 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %conv, i32 9, i32 %i.199
  %43 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 0, ptr %arrayidx56, align 8
  %success_counter.i92 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %conv, i32 9, i32 %i.199, i32 1
  %44 = ptrtoint ptr %success_counter.i92 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %success_counter.i92, align 8
  %success_ratio.i93 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %conv, i32 9, i32 %i.199, i32 2
  %45 = ptrtoint ptr %success_ratio.i93 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %success_ratio.i93, align 4
  %counter.i94 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %conv, i32 9, i32 %i.199, i32 3
  %46 = ptrtoint ptr %counter.i94 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %counter.i94, align 8
  %average_tpt.i95 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %conv, i32 9, i32 %i.199, i32 4
  %47 = ptrtoint ptr %average_tpt.i95 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %average_tpt.i95, align 4
  %stamp.i96 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %conv, i32 9, i32 %i.199, i32 5
  %48 = ptrtoint ptr %stamp.i96 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %stamp.i96, align 8
  %inc58 = add nuw nsw i32 %i.199, 1
  %exitcond100.not = icmp eq i32 %inc58, 13
  br i1 %exitcond100.not, label %for.body54.if.end61_crit_edge, label %for.body54.for.body54_crit_edge

for.body54.for.body54_crit_edge:                  ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body54

for.body54.if.end61_crit_edge:                    ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.end61:                                         ; preds = %for.body54.if.end61_crit_edge, %if.end47thread-pre-split.if.end61_crit_edge, %entry.if.end61_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rs_collect_tx_data(ptr nocapture noundef %tbl, i32 noundef %scale_index, i32 noundef %attempts, i32 noundef %successes) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %scale_index)
  %0 = icmp ugt i32 %scale_index, 12
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 9, i32 %scale_index
  %expected_tpt.i = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 7
  %1 = ptrtoint ptr %expected_tpt.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %expected_tpt.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.get_expected_tpt.exit_crit_edge, label %if.then.i

if.end.get_expected_tpt.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_expected_tpt.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr i16, ptr %2, i32 %scale_index
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %4 to i32
  br label %get_expected_tpt.exit

get_expected_tpt.exit:                            ; preds = %if.then.i, %if.end.get_expected_tpt.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.then.i ], [ 0, %if.end.get_expected_tpt.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attempts)
  %cmp23 = icmp sgt i32 %attempts, 0
  br i1 %cmp23, label %while.body.lr.ph, label %get_expected_tpt.exit.while.end_crit_edge

get_expected_tpt.exit.while.end_crit_edge:        ; preds = %get_expected_tpt.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %get_expected_tpt.exit
  %counter = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 9, i32 %scale_index, i32 3
  %success_counter = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 9, i32 %scale_index, i32 1
  %5 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %5)
  %counter.promoted = load i32, ptr %counter, align 8
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %6)
  %arrayidx.promoted = load i64, ptr %arrayidx, align 8
  br label %while.body

while.body:                                       ; preds = %if.end19.while.body_crit_edge, %while.body.lr.ph
  %7 = phi i64 [ %arrayidx.promoted, %while.body.lr.ph ], [ %15, %if.end19.while.body_crit_edge ]
  %8 = phi i32 [ %counter.promoted, %while.body.lr.ph ], [ %inc, %if.end19.while.body_crit_edge ]
  %successes.addr.05 = phi i32 [ %successes, %while.body.lr.ph ], [ %successes.addr.1, %if.end19.while.body_crit_edge ]
  %attempts.addr.04 = phi i32 [ %attempts, %while.body.lr.ph ], [ %dec20, %if.end19.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %8)
  %cmp3 = icmp sgt i32 %8, 61
  br i1 %cmp3, label %if.then4, label %while.body.if.end10_crit_edge

while.body.if.end10_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then4:                                         ; preds = %while.body
  %and = and i64 %7, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then4.if.end10_crit_edge, label %if.then6

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %and8 = and i64 %7, -2305843009213693953
  %9 = ptrtoint ptr %success_counter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %success_counter, align 8
  %dec = add i32 %10, -1
  store i32 %dec, ptr %success_counter, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.then4.if.end10_crit_edge, %while.body.if.end10_crit_edge
  %11 = phi i64 [ %7, %if.then4.if.end10_crit_edge ], [ %and8, %if.then6 ], [ %7, %while.body.if.end10_crit_edge ]
  %12 = phi i32 [ 61, %if.then4.if.end10_crit_edge ], [ 61, %if.then6 ], [ %8, %while.body.if.end10_crit_edge ]
  %inc = add nsw i32 %12, 1
  %shl = shl i64 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %successes.addr.05)
  %cmp13 = icmp sgt i32 %successes.addr.05, 0
  br i1 %cmp13, label %if.then14, label %if.end10.if.end19_crit_edge

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %success_counter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %success_counter, align 8
  %inc16 = add i32 %14, 1
  store i32 %inc16, ptr %success_counter, align 8
  %or = or i64 %shl, 1
  %dec18 = add nsw i32 %successes.addr.05, -1
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.end10.if.end19_crit_edge
  %15 = phi i64 [ %or, %if.then14 ], [ %shl, %if.end10.if.end19_crit_edge ]
  %successes.addr.1 = phi i32 [ %dec18, %if.then14 ], [ 0, %if.end10.if.end19_crit_edge ]
  %dec20 = add nsw i32 %attempts.addr.04, -1
  %cmp2 = icmp sgt i32 %attempts.addr.04, 1
  br i1 %cmp2, label %if.end19.while.body_crit_edge, label %while.cond.while.end_crit_edge

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %counter to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %inc, ptr %counter, align 8
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %15, ptr %arrayidx, align 8
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %get_expected_tpt.exit.while.end_crit_edge
  %counter21 = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 9, i32 %scale_index, i32 3
  %18 = ptrtoint ptr %counter21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %counter21, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp22 = icmp sgt i32 %19, 0
  br i1 %cmp22, label %if.then23, label %while.end.if.end28_crit_edge

while.end.if.end28_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then23:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %success_counter24 = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 9, i32 %scale_index, i32 1
  %20 = ptrtoint ptr %success_counter24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %success_counter24, align 8
  %mul25 = mul i32 %21, 12800
  %div = sdiv i32 %mul25, %19
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %while.end.if.end28_crit_edge
  %.sink = phi i32 [ %div, %if.then23 ], [ -1, %while.end.if.end28_crit_edge ]
  %22 = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 9, i32 %scale_index, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %22, align 4
  %24 = ptrtoint ptr %counter21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %counter21, align 8
  %success_counter30 = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 9, i32 %scale_index, i32 1
  %26 = ptrtoint ptr %success_counter30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %success_counter30, align 8
  %sub = sub i32 %25, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub)
  %cmp31 = icmp sgt i32 %sub, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %27)
  %cmp34 = icmp sgt i32 %27, 7
  %or.cond1 = or i1 %cmp34, %cmp31
  br i1 %or.cond1, label %if.then35, label %if.end28.if.end41_crit_edge

if.end28.if.end41_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then35:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %22, align 4
  %mul37 = mul i32 %29, %retval.0.i
  %add = add i32 %mul37, 64
  %div38 = sdiv i32 %add, 128
  br label %if.end41

if.end41:                                         ; preds = %if.then35, %if.end28.if.end41_crit_edge
  %.sink6 = phi i32 [ %div38, %if.then35 ], [ -1, %if.end28.if.end41_crit_edge ]
  %30 = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 9, i32 %scale_index, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink6, ptr %30, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %stamp = getelementptr %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 9, i32 %scale_index, i32 5
  %33 = ptrtoint ptr %stamp to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %stamp, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rs_rate_scale_perform(ptr noundef %priv, ptr nocapture noundef readonly %skb, ptr noundef %sta, ptr noundef %lq_sta) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 13
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %4 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_priv, align 8
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %7, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_rate_scale_perform, ptr noundef nonnull @.str.26) #12
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %3, align 2
  %10 = and i16 %9, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %10)
  %cmp.i = icmp eq i16 %10, 2048
  br i1 %cmp.i, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %11 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cb.i, align 8
  %and = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %band = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 16
  %13 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %band, align 4
  %arrayidx = getelementptr [6 x i32], ptr %sta, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %supp_rates8 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 17
  %17 = ptrtoint ptr %supp_rates8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %supp_rates8, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %call.i = tail call i32 @jiffies_to_msecs(i32 noundef %18) #12
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %3, align 2
  %21 = and i16 %20, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %21)
  %cmp.i.i = icmp eq i16 %21, -30720
  br i1 %cmp.i.i, label %if.then.i, label %if.end.if.else25_crit_edge

if.end.if.else25_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else25

if.then.i:                                        ; preds = %if.end
  %22 = and i16 %20, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %22)
  %cmp.i.i.i = icmp eq i16 %22, 3
  %retval.0.v.i.i = select i1 %cmp.i.i.i, i32 30, i32 24
  %retval.0.i.i = getelementptr i8, ptr %3, i32 %retval.0.v.i.i
  %23 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %retval.0.i.i, align 1
  %25 = and i8 %24, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %25)
  %cmp.i962 = icmp ugt i8 %25, 7
  br i1 %cmp.i962, label %if.then.i.if.else25_crit_edge, label %if.end8.i, !prof !296

if.then.i.if.else25_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else25

if.end8.i:                                        ; preds = %if.then.i
  %conv4.i = zext i8 %25 to i32
  %arrayidx9.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 27, i32 %conv4.i
  %rem.i = urem i32 %call.i, 5
  %sub.i = sub i32 %call.i, %rem.i
  %queue_count.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 27, i32 %conv4.i, i32 3
  %26 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %queue_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool10.not.i = icmp eq i8 %27, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end14.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %total.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 27, i32 %conv4.i, i32 2
  %28 = ptrtoint ptr %total.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %total.i, align 4
  %29 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub.i, ptr %arrayidx9.i, align 4
  %30 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %queue_count.i, align 4
  %head.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 27, i32 %conv4.i, i32 4
  %31 = ptrtoint ptr %head.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %head.i, align 1
  %packet_count.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 27, i32 %conv4.i, i32 1
  %32 = ptrtoint ptr %packet_count.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %packet_count.i, align 4
  br label %if.else25

if.end14.i:                                       ; preds = %if.end8.i
  %33 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx9.i, align 4
  %cond.i = sub i32 %sub.i, %34
  %div.i = udiv i32 %cond.i, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %cond.i)
  %cmp22.i = icmp ugt i32 %cond.i, 999
  br i1 %cmp22.i, label %land.rhs.lr.ph.i.i, label %if.end14.i.if.end25.i_crit_edge

if.end14.i.if.end25.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

land.rhs.lr.ph.i.i:                               ; preds = %if.end14.i
  %sub.i.i = add i32 %sub.i, -950
  %head.i.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 27, i32 %conv4.i, i32 4
  %total.i.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 27, i32 %conv4.i, i32 2
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %land.rhs.lr.ph.i.i
  %add.i83.i = phi i32 [ %add.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %34, %land.rhs.lr.ph.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i83.i, i32 %sub.i.i)
  %cmp.i82.i = icmp ult i32 %add.i83.i, %sub.i.i
  br i1 %cmp.i82.i, label %while.body.i.i, label %land.rhs.i.i.if.end25.i_crit_edge

land.rhs.i.i.if.end25.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %35 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %head.i.i, align 1
  %idxprom.i.i = zext i8 %36 to i32
  %arrayidx.i.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 27, i32 %conv4.i, i32 1, i32 %idxprom.i.i
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i, align 4
  %39 = ptrtoint ptr %total.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %total.i.i, align 4
  %sub2.i.i = sub i32 %40, %38
  store i32 %sub2.i.i, ptr %total.i.i, align 4
  store i32 0, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %add.i83.i, 50
  %41 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add.i.i, ptr %arrayidx9.i, align 4
  %42 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %queue_count.i, align 4
  %dec.i.i = add i8 %43, -1
  store i8 %dec.i.i, ptr %queue_count.i, align 4
  %44 = load i8, ptr %head.i.i, align 1
  %inc.i.i = add i8 %44, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %inc.i.i)
  %cmp12.i.i = icmp ugt i8 %inc.i.i, 19
  %spec.select.i.i = select i1 %cmp12.i.i, i8 0, i8 %inc.i.i
  %45 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %spec.select.i.i, ptr %head.i.i, align 1
  %tobool.not.i.i = icmp eq i8 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.if.end25.i_crit_edge, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i

while.body.i.i.if.end25.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

if.end25.i:                                       ; preds = %while.body.i.i.if.end25.i_crit_edge, %land.rhs.i.i.if.end25.i_crit_edge, %if.end14.i.if.end25.i_crit_edge
  %head26.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 27, i32 %conv4.i, i32 4
  %46 = ptrtoint ptr %head26.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %head26.i, align 1
  %conv27.i = zext i8 %47 to i32
  %add28.i = add nuw nsw i32 %div.i, %conv27.i
  %rem29.i = urem i32 %add28.i, 20
  %arrayidx31.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 27, i32 %conv4.i, i32 1, i32 %rem29.i
  %48 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx31.i, align 4
  %add32.i = add i32 %49, 1
  store i32 %add32.i, ptr %arrayidx31.i, align 4
  %total35.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 27, i32 %conv4.i, i32 2
  %50 = ptrtoint ptr %total35.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %total35.i, align 4
  %add36.i = add i32 %51, 1
  store i32 %add36.i, ptr %total35.i, align 4
  %52 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %queue_count.i, align 4
  %conv40.i = zext i8 %53 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem29.i, i32 %conv40.i)
  %cmp41.not.i = icmp ult i32 %rem29.i, %conv40.i
  br i1 %cmp41.not.i, label %if.end25.i.rs_tl_add_packet.exit_crit_edge, label %if.then43.i

if.end25.i.rs_tl_add_packet.exit_crit_edge:       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_tl_add_packet.exit

if.then43.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  %54 = trunc i32 %rem29.i to i8
  %conv45.i = add nuw nsw i8 %54, 1
  %55 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv45.i, ptr %queue_count.i, align 4
  br label %rs_tl_add_packet.exit

rs_tl_add_packet.exit:                            ; preds = %if.then43.i, %if.end25.i.rs_tl_add_packet.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %25)
  %cmp.not = icmp eq i8 %25, 8
  br i1 %cmp.not, label %rs_tl_add_packet.exit.if.else25_crit_edge, label %land.lhs.true

rs_tl_add_packet.exit.if.else25_crit_edge:        ; preds = %rs_tl_add_packet.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else25

land.lhs.true:                                    ; preds = %rs_tl_add_packet.exit
  %tx_agg_tid_en = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 28
  %56 = ptrtoint ptr %tx_agg_tid_en to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %tx_agg_tid_en, align 8
  %conv11 = zext i8 %57 to i32
  %shl = shl nuw i32 1, %conv4.i
  %and13 = and i32 %shl, %conv11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %land.lhs.true.if.else25_crit_edge, label %if.then15

land.lhs.true.if.else25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else25

if.then15:                                        ; preds = %land.lhs.true
  %lq = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 24
  %58 = ptrtoint ptr %lq to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %lq, align 2
  %idxprom = zext i8 %59 to i32
  %state = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %idxprom, i32 %conv4.i, i32 2, i32 1
  %60 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp20 = icmp eq i32 %61, 0
  %is_agg = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 34
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %is_agg to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %is_agg, align 4
  br label %if.end27

if.else:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %is_agg to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %is_agg, align 4
  br label %if.end27

if.else25:                                        ; preds = %land.lhs.true.if.else25_crit_edge, %rs_tl_add_packet.exit.if.else25_crit_edge, %if.then11.i, %if.then.i.if.else25_crit_edge, %if.end.if.else25_crit_edge
  %cmp.not977 = phi i1 [ false, %land.lhs.true.if.else25_crit_edge ], [ true, %rs_tl_add_packet.exit.if.else25_crit_edge ], [ true, %if.then11.i ], [ true, %if.end.if.else25_crit_edge ], [ true, %if.then.i.if.else25_crit_edge ]
  %conv975 = phi i32 [ %conv4.i, %land.lhs.true.if.else25_crit_edge ], [ 8, %rs_tl_add_packet.exit.if.else25_crit_edge ], [ 8, %if.then11.i ], [ 8, %if.end.if.else25_crit_edge ], [ 8, %if.then.i.if.else25_crit_edge ]
  %retval.0.i973 = phi i8 [ %25, %land.lhs.true.if.else25_crit_edge ], [ 8, %rs_tl_add_packet.exit.if.else25_crit_edge ], [ 8, %if.then11.i ], [ 8, %if.end.if.else25_crit_edge ], [ 8, %if.then.i.if.else25_crit_edge ]
  %is_agg26 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 34
  %64 = ptrtoint ptr %is_agg26 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %is_agg26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.else25, %if.else, %if.then22
  %cmp.not976 = phi i1 [ false, %if.then22 ], [ false, %if.else ], [ %cmp.not977, %if.else25 ]
  %conv974 = phi i32 [ %conv4.i, %if.then22 ], [ %conv4.i, %if.else ], [ %conv975, %if.else25 ]
  %retval.0.i972 = phi i8 [ %25, %if.then22 ], [ %25, %if.else ], [ %retval.0.i973, %if.else25 ]
  %search_better_tbl = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 3
  %65 = ptrtoint ptr %search_better_tbl to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %search_better_tbl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool28.not = icmp eq i8 %66, 0
  %67 = ptrtoint ptr %lq_sta to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %lq_sta, align 8
  %sub = sub i8 1, %68
  %active_tbl.0 = select i1 %tobool28.not, i8 %68, i8 %sub
  %idxprom36 = zext i8 %active_tbl.0 to i32
  %arrayidx37 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom36
  %69 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 13
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %69, align 1
  %last_txrate_idx = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 32
  %71 = ptrtoint ptr %last_txrate_idx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %last_txrate_idx, align 4
  %73 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev, align 4
  %75 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx37, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %74, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_rate_scale_perform, ptr noundef nonnull @.str.27, i32 noundef %72, i32 noundef %76) #12
  %77 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx37, align 8
  %79 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %78, label %if.else7.i [
    i32 1, label %if.end27.if.then.i963_crit_edge
    i32 2, label %if.end27.if.then.i963_crit_edge1029
    i32 3, label %if.then3.i
    i32 4, label %if.then6.i
  ]

if.end27.if.then.i963_crit_edge1029:              ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i963

if.end27.if.then.i963_crit_edge:                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i963

if.then.i963:                                     ; preds = %if.end27.if.then.i963_crit_edge, %if.end27.if.then.i963_crit_edge1029
  %active_legacy_rate.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 18
  br label %rs_get_supported_rates.exit

if.then3.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %active_siso_rate.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 19
  br label %rs_get_supported_rates.exit

if.then6.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %active_mimo2_rate.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 20
  br label %rs_get_supported_rates.exit

if.else7.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %active_mimo3_rate.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 21
  br label %rs_get_supported_rates.exit

rs_get_supported_rates.exit:                      ; preds = %if.else7.i, %if.then6.i, %if.then3.i, %if.then.i963
  %retval.0.in.i = phi ptr [ %active_legacy_rate.i, %if.then.i963 ], [ %active_siso_rate.i, %if.then3.i ], [ %active_mimo2_rate.i, %if.then6.i ], [ %active_mimo3_rate.i, %if.else7.i ]
  %80 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %retval.0.i964 = load i16, ptr %retval.0.in.i, align 2
  %81 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev, align 4
  %conv67 = zext i16 %retval.0.i964 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %82, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_rate_scale_perform, ptr noundef nonnull @.str.28, i32 noundef %conv67) #12
  %83 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx37, align 8
  %.off943 = add i32 %84, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off943)
  %switch944 = icmp ult i32 %.off943, 2
  br i1 %switch944, label %if.then77, label %rs_get_supported_rates.exit.if.end94_crit_edge

rs_get_supported_rates.exit.if.end94_crit_edge:   ; preds = %rs_get_supported_rates.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

if.then77:                                        ; preds = %rs_get_supported_rates.exit
  %85 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %86)
  %cmp79 = icmp eq i32 %86, 1
  %87 = ptrtoint ptr %supp_rates8 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %supp_rates8, align 8
  %.tr = trunc i32 %88 to i16
  br i1 %cmp79, label %if.then81, label %if.else87

if.then81:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #14
  %89 = shl i16 %.tr, 4
  %conv86 = and i16 %89, %retval.0.i964
  br label %if.end94

if.else87:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #14
  %conv91 = and i16 %retval.0.i964, %.tr
  br label %if.end94

if.end94:                                         ; preds = %if.else87, %if.then81, %rs_get_supported_rates.exit.if.end94_crit_edge
  %rate_scale_index_msk.0 = phi i16 [ %conv86, %if.then81 ], [ %conv91, %if.else87 ], [ %retval.0.i964, %rs_get_supported_rates.exit.if.end94_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rate_scale_index_msk.0)
  %tobool95.not = icmp eq i16 %rate_scale_index_msk.0, 0
  %spec.select = select i1 %tobool95.not, i16 %retval.0.i964, i16 %rate_scale_index_msk.0
  %shl98 = shl nuw i32 1, %72
  %conv99 = zext i16 %spec.select to i32
  %and100 = and i32 %shl98, %conv99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %do.end106, label %if.end121

do.end106:                                        ; preds = %if.end94
  %90 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %91, i32 noundef 0, ptr noundef nonnull @.str.29) #12
  %92 = ptrtoint ptr %search_better_tbl to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %search_better_tbl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool111.not = icmp eq i8 %93, 0
  br i1 %tobool111.not, label %do.end106.cleanup_crit_edge, label %if.then112

do.end106.cleanup_crit_edge:                      ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then112:                                       ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #14
  %94 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %arrayidx37, align 8
  %95 = ptrtoint ptr %search_better_tbl to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %search_better_tbl, align 1
  %96 = ptrtoint ptr %lq_sta to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %lq_sta, align 8
  %idxprom117 = zext i8 %97 to i32
  %arrayidx118 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom117
  %current_rate = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom117, i32 8
  %98 = ptrtoint ptr %current_rate to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %current_rate, align 8
  %call119 = tail call fastcc i32 @iwl_hwrate_to_plcp_idx(i32 noundef %99)
  %call.i965 = tail call fastcc i32 @rate_n_flags_from_tbl(ptr noundef %priv, ptr noundef %arrayidx118, i32 noundef %call119, i8 noundef zeroext 0) #12
  tail call fastcc void @rs_fill_link_cmd(ptr noundef %priv, ptr noundef %lq_sta, i32 noundef %call.i965) #12
  %lq.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 24
  %call1.i = tail call i32 @iwl_send_lq_cmd(ptr noundef %priv, ptr noundef %5, ptr noundef %lq.i, i8 noundef zeroext 1, i1 noundef zeroext false) #12
  br label %cleanup

if.end121:                                        ; preds = %if.end94
  %expected_tpt = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom36, i32 7
  %100 = ptrtoint ptr %expected_tpt to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %expected_tpt, align 4
  %tobool122.not = icmp eq ptr %101, null
  br i1 %tobool122.not, label %do.end127, label %if.end131

do.end127:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #14
  %102 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %103, i32 noundef 0, ptr noundef nonnull @.str.30) #12
  br label %cleanup

if.end131:                                        ; preds = %if.end121
  %max_rate_idx = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 22
  %104 = ptrtoint ptr %max_rate_idx to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %max_rate_idx, align 4
  %conv132 = sext i8 %105 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %105)
  %cmp133.not = icmp ne i8 %105, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %conv132)
  %cmp138 = icmp sgt i32 %72, %conv132
  %or.cond = and i1 %cmp133.not, %cmp138
  br i1 %or.cond, label %lq_update.thread998, label %if.end144

lq_update.thread998:                              ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx143 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom36, i32 9, i32 %conv132
  br label %if.then467

if.end144:                                        ; preds = %if.end131
  %arrayidx146 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom36, i32 9, i32 %72
  %counter = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom36, i32 9, i32 %72, i32 3
  %106 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %counter, align 8
  %success_counter = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom36, i32 9, i32 %72, i32 1
  %108 = ptrtoint ptr %success_counter to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %success_counter, align 8
  %sub147 = sub i32 %107, %109
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub147)
  %cmp148 = icmp ult i32 %sub147, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %109)
  %cmp152 = icmp slt i32 %109, 8
  %or.cond927 = and i1 %cmp152, %cmp148
  br i1 %or.cond927, label %do.end158, label %if.end164

do.end158:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #14
  %110 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %111, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_rate_scale_perform, ptr noundef nonnull @.str.31, i32 noundef %109, i32 noundef %107, i32 noundef %72) #12
  %average_tpt = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom36, i32 9, i32 %72, i32 4
  %112 = ptrtoint ptr %average_tpt to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 -1, ptr %average_tpt, align 4
  tail call fastcc void @rs_stay_in_table(ptr noundef %lq_sta, i1 noundef zeroext false)
  br label %out

if.end164:                                        ; preds = %if.end144
  %average_tpt165 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom36, i32 9, i32 %72, i32 4
  %113 = ptrtoint ptr %average_tpt165 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %average_tpt165, align 4
  %success_ratio = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom36, i32 9, i32 %72, i32 2
  %115 = ptrtoint ptr %success_ratio to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %success_ratio, align 4
  %arrayidx167 = getelementptr i16, ptr %101, i32 %72
  %117 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %arrayidx167, align 2
  %conv168 = zext i16 %118 to i32
  %mul = mul i32 %116, %conv168
  %add = add i32 %mul, 64
  %div = sdiv i32 %add, 128
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %div)
  %cmp169.not = icmp eq i32 %114, %div
  br i1 %cmp169.not, label %if.end164.if.end187_crit_edge, label %do.end175

if.end164.if.end187_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end187

do.end175:                                        ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #14
  %119 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %120, i32 noundef 0, ptr noundef nonnull @.str.32) #12
  %121 = ptrtoint ptr %success_ratio to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %success_ratio, align 4
  %123 = ptrtoint ptr %expected_tpt to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %expected_tpt, align 4
  %arrayidx181 = getelementptr i16, ptr %124, i32 %72
  %125 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %arrayidx181, align 2
  %conv182 = zext i16 %126 to i32
  %mul183 = mul i32 %122, %conv182
  %add184 = add i32 %mul183, 64
  %div185 = sdiv i32 %add184, 128
  %127 = ptrtoint ptr %average_tpt165 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %div185, ptr %average_tpt165, align 4
  br label %if.end187

if.end187:                                        ; preds = %do.end175, %if.end164.if.end187_crit_edge
  %128 = ptrtoint ptr %search_better_tbl to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %search_better_tbl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool190.not = icmp eq i8 %129, 0
  br i1 %tobool190.not, label %if.end187.if.end242_crit_edge, label %land.lhs.true191

if.end187.if.end242_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end242

land.lhs.true191:                                 ; preds = %if.end187
  %call192 = tail call i32 @iwl_tx_ant_restriction(ptr noundef %priv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call192)
  %cmp193 = icmp eq i32 %call192, 2
  br i1 %cmp193, label %if.then195, label %land.lhs.true191.if.end242_crit_edge

land.lhs.true191.if.end242_crit_edge:             ; preds = %land.lhs.true191
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end242

if.then195:                                       ; preds = %land.lhs.true191
  %130 = ptrtoint ptr %average_tpt165 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %average_tpt165, align 4
  %last_tpt = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 4
  %132 = ptrtoint ptr %last_tpt to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %last_tpt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %133)
  %cmp197 = icmp sgt i32 %131, %133
  %134 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev, align 4
  %136 = ptrtoint ptr %success_ratio to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %success_ratio, align 4
  br i1 %cmp197, label %do.end203, label %do.end225

do.end203:                                        ; preds = %if.then195
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %135, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_rate_scale_perform, ptr noundef nonnull @.str.33, i32 noundef %137, i32 noundef %131, i32 noundef %133) #12
  %138 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx37, align 8
  %.off945 = add i32 %139, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off945)
  %switch946 = icmp ult i32 %.off945, 2
  br i1 %switch946, label %do.end203.if.end218_crit_edge, label %if.then217

do.end203.if.end218_crit_edge:                    ; preds = %do.end203
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end218

if.then217:                                       ; preds = %do.end203
  call void @__sanitizer_cov_trace_pc() #14
  %enable_counter = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 1
  %140 = ptrtoint ptr %enable_counter to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 1, ptr %enable_counter, align 1
  br label %if.end218

if.end218:                                        ; preds = %if.then217, %do.end203.if.end218_crit_edge
  %141 = ptrtoint ptr %lq_sta to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %active_tbl.0, ptr %lq_sta, align 8
  br label %if.end240

do.end225:                                        ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %135, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_rate_scale_perform, ptr noundef nonnull @.str.34, i32 noundef %137, i32 noundef %131, i32 noundef %133) #12
  %142 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %arrayidx37, align 8
  %143 = ptrtoint ptr %lq_sta to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %lq_sta, align 8
  %idxprom235 = zext i8 %144 to i32
  %arrayidx236 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom235
  %current_rate237 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom235, i32 8
  %145 = ptrtoint ptr %current_rate237 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %current_rate237, align 8
  %call238 = tail call fastcc i32 @iwl_hwrate_to_plcp_idx(i32 noundef %146)
  br label %if.end240

if.end240:                                        ; preds = %do.end225, %if.end218
  %index.0 = phi i32 [ %72, %if.end218 ], [ %call238, %do.end225 ]
  %current_tpt.0.in = phi ptr [ %average_tpt165, %if.end218 ], [ %last_tpt, %do.end225 ]
  %update_lq.0 = phi i8 [ 0, %if.end218 ], [ 1, %do.end225 ]
  %tbl.0 = phi ptr [ %arrayidx37, %if.end218 ], [ %arrayidx236, %do.end225 ]
  %147 = ptrtoint ptr %current_tpt.0.in to i32
  call void @__asan_load4_noabort(i32 %147)
  %current_tpt.0 = load i32, ptr %current_tpt.0.in, align 4
  %148 = ptrtoint ptr %search_better_tbl to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 0, ptr %search_better_tbl, align 1
  br label %lq_update

if.end242:                                        ; preds = %land.lhs.true191.if.end242_crit_edge, %if.end187.if.end242_crit_edge
  %conv243 = trunc i32 %72 to i8
  %149 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx37, align 8
  %call245 = tail call fastcc zeroext i16 @rs_get_adjacent_rate(ptr noundef %priv, i8 noundef zeroext %conv243, i16 noundef zeroext %spec.select, i32 noundef %150)
  %conv246 = zext i16 %call245 to i32
  %and247 = and i32 %conv246, 255
  %151 = lshr i32 %conv246, 8
  %152 = ptrtoint ptr %max_rate_idx to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %max_rate_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %153)
  %cmp252.not = icmp eq i8 %153, -1
  %conv251 = sext i8 %153 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %151, i32 %conv251)
  %cmp257 = icmp sgt i32 %151, %conv251
  %spec.store.select = select i1 %cmp257, i32 13, i32 %151
  %high.0 = select i1 %cmp252.not, i32 %151, i32 %spec.store.select
  %154 = ptrtoint ptr %success_ratio to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %success_ratio, align 4
  %156 = ptrtoint ptr %average_tpt165 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %average_tpt165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and247)
  %cmp263.not = icmp eq i32 %and247, 13
  br i1 %cmp263.not, label %if.end242.if.end269_crit_edge, label %if.then265

if.end242.if.end269_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end269

if.then265:                                       ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #14
  %average_tpt268 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom36, i32 9, i32 %and247, i32 4
  %158 = ptrtoint ptr %average_tpt268 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %average_tpt268, align 4
  br label %if.end269

if.end269:                                        ; preds = %if.then265, %if.end242.if.end269_crit_edge
  %low_tpt.0 = phi i32 [ %159, %if.then265 ], [ -1, %if.end242.if.end269_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %high.0)
  %cmp270.not = icmp eq i32 %high.0, 13
  br i1 %cmp270.not, label %if.end269.if.end276_crit_edge, label %if.then272

if.end269.if.end276_crit_edge:                    ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end276

if.then272:                                       ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #14
  %average_tpt275 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom36, i32 9, i32 %high.0, i32 4
  %160 = ptrtoint ptr %average_tpt275 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %average_tpt275, align 4
  br label %if.end276

if.end276:                                        ; preds = %if.then272, %if.end269.if.end276_crit_edge
  %high_tpt.0 = phi i32 [ %161, %if.then272 ], [ -1, %if.end269.if.end276_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1921, i32 %155)
  %cmp277 = icmp slt i32 %155, 1921
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp280 = icmp eq i32 %157, 0
  %or.cond928 = select i1 %cmp277, i1 true, i1 %cmp280
  br i1 %or.cond928, label %if.end276.if.end358_crit_edge, label %if.else290

if.end276.if.end358_crit_edge:                    ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end358

if.else290:                                       ; preds = %if.end276
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %low_tpt.0)
  %cmp291 = icmp eq i32 %low_tpt.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %high_tpt.0)
  %cmp294 = icmp eq i32 %high_tpt.0, -1
  %or.cond929 = select i1 %cmp291, i1 %cmp294, i1 false
  br i1 %or.cond929, label %if.then296, label %if.else309

if.then296:                                       ; preds = %if.else290
  call void @__sanitizer_cov_trace_pc() #14
  %cmp270.not.not = xor i1 %cmp270.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 6399, i32 %155)
  %cmp300 = icmp ugt i32 %155, 6399
  %or.cond930 = select i1 %cmp270.not.not, i1 %cmp300, i1 false
  %spec.select947 = zext i1 %or.cond930 to i8
  br label %if.end376

if.else309:                                       ; preds = %if.else290
  %or.cond931 = select i1 %cmp291, i1 true, i1 %cmp294
  %or.cond931.not = xor i1 %or.cond931, true
  call void @__sanitizer_cov_trace_cmp4(i32 %low_tpt.0, i32 %157)
  %cmp316 = icmp slt i32 %low_tpt.0, %157
  %or.cond932 = select i1 %or.cond931.not, i1 %cmp316, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %high_tpt.0, i32 %157)
  %cmp319 = icmp slt i32 %high_tpt.0, %157
  %or.cond933 = select i1 %or.cond932, i1 %cmp319, i1 false
  br i1 %or.cond933, label %if.else309.if.end376_crit_edge, label %if.else322

if.else309.if.end376_crit_edge:                   ; preds = %if.else309
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end376

if.else322:                                       ; preds = %if.else309
  br i1 %cmp294, label %if.else334, label %if.then325

if.then325:                                       ; preds = %if.else322
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_cmp4(i32 %high_tpt.0, i32 %157)
  %cmp326 = icmp sgt i32 %high_tpt.0, %157
  call void @__sanitizer_cov_trace_const_cmp4(i32 6399, i32 %155)
  %cmp329 = icmp ugt i32 %155, 6399
  %or.cond934 = select i1 %cmp326, i1 %cmp329, i1 false
  %spec.select948 = zext i1 %or.cond934 to i8
  br label %if.end376

if.else334:                                       ; preds = %if.else322
  br i1 %cmp291, label %if.else334.if.end376_crit_edge, label %if.then337

if.else334.if.end376_crit_edge:                   ; preds = %if.else334
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end376

if.then337:                                       ; preds = %if.else334
  call void @__sanitizer_cov_trace_cmp4(i32 %low_tpt.0, i32 %157)
  %cmp338 = icmp sgt i32 %low_tpt.0, %157
  br i1 %cmp338, label %if.then337.if.end358_crit_edge, label %if.else348

if.then337.if.end358_crit_edge:                   ; preds = %if.then337
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end358

if.else348:                                       ; preds = %if.then337
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 6399, i32 %155)
  %cmp349 = icmp ugt i32 %155, 6399
  %spec.select935 = zext i1 %cmp349 to i8
  br label %if.end376

if.end358:                                        ; preds = %if.then337.if.end358_crit_edge, %if.end276.if.end358_crit_edge
  %.str.36.sink = phi ptr [ @.str.35, %if.end276.if.end358_crit_edge ], [ @.str.36, %if.then337.if.end358_crit_edge ]
  %162 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %163, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_rate_scale_perform, ptr noundef nonnull %.str.36.sink) #12
  br i1 %cmp263.not, label %if.end358.if.end376_crit_edge, label %land.lhs.true365

if.end358.if.end376_crit_edge:                    ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end376

land.lhs.true365:                                 ; preds = %if.end358
  call void @__sanitizer_cov_trace_const_cmp4(i32 10880, i32 %155)
  %cmp366 = icmp sgt i32 %155, 10880
  br i1 %cmp366, label %land.lhs.true365.if.then375_crit_edge, label %lor.lhs.false368

land.lhs.true365.if.then375_crit_edge:            ; preds = %land.lhs.true365
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then375

lor.lhs.false368:                                 ; preds = %land.lhs.true365
  %164 = ptrtoint ptr %expected_tpt to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %expected_tpt, align 4
  %arrayidx370 = getelementptr i16, ptr %165, i32 %and247
  %166 = ptrtoint ptr %arrayidx370 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %arrayidx370, align 2
  %conv371 = zext i16 %167 to i32
  %mul372 = mul nuw nsw i32 %conv371, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %157, i32 %mul372)
  %cmp373 = icmp sgt i32 %157, %mul372
  br i1 %cmp373, label %lor.lhs.false368.if.then375_crit_edge, label %lor.lhs.false368.if.end376_crit_edge

lor.lhs.false368.if.end376_crit_edge:             ; preds = %lor.lhs.false368
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end376

lor.lhs.false368.if.then375_crit_edge:            ; preds = %lor.lhs.false368
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then375

if.then375:                                       ; preds = %lor.lhs.false368.if.then375_crit_edge, %land.lhs.true365.if.then375_crit_edge
  br label %if.end376

if.end376:                                        ; preds = %if.then375, %lor.lhs.false368.if.end376_crit_edge, %if.end358.if.end376_crit_edge, %if.else348, %if.else334.if.end376_crit_edge, %if.then325, %if.else309.if.end376_crit_edge, %if.then296
  %scale_action.1 = phi i8 [ 0, %if.then375 ], [ -1, %lor.lhs.false368.if.end376_crit_edge ], [ -1, %if.end358.if.end376_crit_edge ], [ %spec.select948, %if.then325 ], [ %spec.select947, %if.then296 ], [ %spec.select935, %if.else348 ], [ 0, %if.else309.if.end376_crit_edge ], [ 0, %if.else334.if.end376_crit_edge ]
  %call377 = tail call zeroext i1 @iwl_ht_enabled(ptr noundef %priv) #12
  br i1 %call377, label %if.end376.if.end387_crit_edge, label %land.lhs.true378

if.end376.if.end387_crit_edge:                    ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end387

land.lhs.true378:                                 ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #14
  %168 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx37, align 8
  %.off949 = add i32 %169, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off949)
  %switch950 = icmp ult i32 %.off949, 2
  %spec.select951 = select i1 %switch950, i8 %scale_action.1, i8 -1
  br label %if.end387

if.end387:                                        ; preds = %land.lhs.true378, %if.end376.if.end387_crit_edge
  %scale_action.2 = phi i8 [ %scale_action.1, %if.end376.if.end387_crit_edge ], [ %spec.select951, %land.lhs.true378 ]
  %call388 = tail call i32 @iwl_tx_ant_restriction(ptr noundef %priv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call388)
  %cmp389.not = icmp eq i32 %call388, 2
  br i1 %cmp389.not, label %if.end387.if.end400_crit_edge, label %land.lhs.true391

if.end387.if.end400_crit_edge:                    ; preds = %if.end387
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end400

land.lhs.true391:                                 ; preds = %if.end387
  call void @__sanitizer_cov_trace_pc() #14
  %170 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx37, align 8
  %172 = and i32 %171, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %172)
  %switch953 = icmp eq i32 %172, 4
  %spec.select954 = select i1 %switch953, i8 -1, i8 %scale_action.2
  br label %if.end400

if.end400:                                        ; preds = %land.lhs.true391, %if.end387.if.end400_crit_edge
  %scale_action.3 = phi i8 [ %scale_action.2, %if.end387.if.end400_crit_edge ], [ %spec.select954, %land.lhs.true391 ]
  %bt_traffic_load = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 85
  %173 = ptrtoint ptr %bt_traffic_load to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %bt_traffic_load, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %174)
  %cmp402 = icmp ugt i8 %174, 1
  br i1 %cmp402, label %land.lhs.true404, label %if.end400.if.end429_crit_edge

if.end400.if.end429_crit_edge:                    ; preds = %if.end400
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end429

land.lhs.true404:                                 ; preds = %if.end400
  %175 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %arrayidx37, align 8
  %177 = and i32 %176, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %177)
  %switch956 = icmp eq i32 %177, 4
  br i1 %switch956, label %if.then412, label %land.lhs.true404.if.end429_crit_edge

land.lhs.true404.if.end429_crit_edge:             ; preds = %land.lhs.true404
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end429

if.then412:                                       ; preds = %land.lhs.true404
  call void @__sanitizer_cov_trace_pc() #14
  %last_bt_traffic = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 35
  %178 = ptrtoint ptr %last_bt_traffic to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %last_bt_traffic, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %179, i8 %174)
  %cmp416 = icmp ugt i8 %179, %174
  %spec.select957 = select i1 %cmp416, i8 %scale_action.3, i8 -1
  br label %if.end429

if.end429:                                        ; preds = %if.then412, %land.lhs.true404.if.end429_crit_edge, %if.end400.if.end429_crit_edge
  %scale_action.4 = phi i8 [ %scale_action.3, %if.end400.if.end429_crit_edge ], [ %scale_action.3, %land.lhs.true404.if.end429_crit_edge ], [ %spec.select957, %if.then412 ]
  %last_bt_traffic431 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 35
  %180 = ptrtoint ptr %last_bt_traffic431 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %174, ptr %last_bt_traffic431, align 1
  %181 = ptrtoint ptr %bt_traffic_load to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %bt_traffic_load, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %182)
  %cmp434 = icmp ugt i8 %182, 1
  br i1 %cmp434, label %land.lhs.true436, label %if.end429.if.end445_crit_edge

if.end429.if.end445_crit_edge:                    ; preds = %if.end429
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end445

land.lhs.true436:                                 ; preds = %if.end429
  %183 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx37, align 8
  %185 = and i32 %184, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %185)
  %switch959 = icmp eq i32 %185, 4
  br i1 %switch959, label %lq_update.thread, label %land.lhs.true436.if.end445_crit_edge

land.lhs.true436.if.end445_crit_edge:             ; preds = %land.lhs.true436
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end445

lq_update.thread:                                 ; preds = %land.lhs.true436
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rs_stay_in_table(ptr noundef %lq_sta, i1 noundef zeroext true)
  br label %if.end468

if.end445:                                        ; preds = %land.lhs.true436.if.end445_crit_edge, %if.end429.if.end445_crit_edge
  %conv446 = sext i8 %scale_action.4 to i32
  %186 = zext i32 %conv446 to i64
  call void @__sanitizer_cov_trace_switch(i64 %186, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %conv446, label %if.end445.do.end460_crit_edge [
    i32 -1, label %sw.bb
    i32 1, label %sw.bb451
  ]

if.end445.do.end460_crit_edge:                    ; preds = %if.end445
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end460

sw.bb:                                            ; preds = %if.end445
  call void @__sanitizer_cov_trace_pc() #14
  %spec.select937 = select i1 %cmp263.not, i32 %72, i32 %and247
  %not.cmp263.not = xor i1 %cmp263.not, true
  br label %do.end460

sw.bb451:                                         ; preds = %if.end445
  call void @__sanitizer_cov_trace_pc() #14
  %spec.select939 = select i1 %cmp270.not, i32 %72, i32 %high.0
  %not.cmp270.not = xor i1 %cmp270.not, true
  br label %do.end460

do.end460:                                        ; preds = %sw.bb451, %sw.bb, %if.end445.do.end460_crit_edge
  %index.1 = phi i32 [ %72, %if.end445.do.end460_crit_edge ], [ %spec.select937, %sw.bb ], [ %spec.select939, %sw.bb451 ]
  %update_lq.1.shrunk = phi i1 [ false, %if.end445.do.end460_crit_edge ], [ %not.cmp263.not, %sw.bb ], [ %not.cmp270.not, %sw.bb451 ]
  %update_lq.1 = zext i1 %update_lq.1.shrunk to i8
  %187 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dev, align 4
  %189 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx37, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %188, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_rate_scale_perform, ptr noundef nonnull @.str.37, i32 noundef %index.1, i32 noundef %conv446, i32 noundef %and247, i32 noundef %high.0, i32 noundef %190) #12
  br label %lq_update

lq_update:                                        ; preds = %do.end460, %if.end240
  %index.2 = phi i32 [ %index.0, %if.end240 ], [ %index.1, %do.end460 ]
  %current_tpt.1 = phi i32 [ %current_tpt.0, %if.end240 ], [ %157, %do.end460 ]
  %update_lq.2 = phi i8 [ %update_lq.0, %if.end240 ], [ %update_lq.1, %do.end460 ]
  %tbl.1 = phi ptr [ %tbl.0, %if.end240 ], [ %arrayidx37, %do.end460 ]
  %tobool476.not = phi i1 [ false, %if.end240 ], [ true, %do.end460 ]
  %done_search.0 = phi i32 [ 1, %if.end240 ], [ 0, %do.end460 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %update_lq.2)
  %tobool466.not = icmp eq i8 %update_lq.2, 0
  br i1 %tobool466.not, label %lq_update.if.end468_crit_edge, label %lq_update.if.then467_crit_edge

lq_update.if.then467_crit_edge:                   ; preds = %lq_update
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then467

lq_update.if.end468_crit_edge:                    ; preds = %lq_update
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end468

if.then467:                                       ; preds = %lq_update.if.then467_crit_edge, %lq_update.thread998
  %done_search.01012 = phi i32 [ 0, %lq_update.thread998 ], [ %done_search.0, %lq_update.if.then467_crit_edge ]
  %tobool476.not1011 = phi i1 [ true, %lq_update.thread998 ], [ %tobool476.not, %lq_update.if.then467_crit_edge ]
  %tbl.11010 = phi ptr [ %arrayidx37, %lq_update.thread998 ], [ %tbl.1, %lq_update.if.then467_crit_edge ]
  %current_tpt.11009 = phi i32 [ -1, %lq_update.thread998 ], [ %current_tpt.1, %lq_update.if.then467_crit_edge ]
  %window.01008 = phi ptr [ %arrayidx143, %lq_update.thread998 ], [ %arrayidx146, %lq_update.if.then467_crit_edge ]
  %index.21007 = phi i32 [ %conv132, %lq_update.thread998 ], [ %index.2, %lq_update.if.then467_crit_edge ]
  %call.i966 = tail call fastcc i32 @rate_n_flags_from_tbl(ptr noundef %priv, ptr noundef %tbl.11010, i32 noundef %index.21007, i8 noundef zeroext 0) #12
  tail call fastcc void @rs_fill_link_cmd(ptr noundef %priv, ptr noundef %lq_sta, i32 noundef %call.i966) #12
  %lq.i967 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 24
  %call1.i968 = tail call i32 @iwl_send_lq_cmd(ptr noundef %priv, ptr noundef %5, ptr noundef %lq.i967, i8 noundef zeroext 1, i1 noundef zeroext false) #12
  br label %if.end468

if.end468:                                        ; preds = %if.then467, %lq_update.if.end468_crit_edge, %lq_update.thread
  %tobool466.not997 = phi i1 [ false, %lq_update.thread ], [ true, %if.then467 ], [ false, %lq_update.if.end468_crit_edge ]
  %done_search.0996 = phi i32 [ 0, %lq_update.thread ], [ %done_search.01012, %if.then467 ], [ %done_search.0, %lq_update.if.end468_crit_edge ]
  %tobool476.not995 = phi i1 [ true, %lq_update.thread ], [ %tobool476.not1011, %if.then467 ], [ %tobool476.not, %lq_update.if.end468_crit_edge ]
  %tbl.1994 = phi ptr [ %arrayidx37, %lq_update.thread ], [ %tbl.11010, %if.then467 ], [ %tbl.1, %lq_update.if.end468_crit_edge ]
  %current_tpt.1993 = phi i32 [ %157, %lq_update.thread ], [ %current_tpt.11009, %if.then467 ], [ %current_tpt.1, %lq_update.if.end468_crit_edge ]
  %window.0992 = phi ptr [ %arrayidx146, %lq_update.thread ], [ %window.01008, %if.then467 ], [ %arrayidx146, %lq_update.if.end468_crit_edge ]
  %index.2990 = phi i32 [ %72, %lq_update.thread ], [ %index.21007, %if.then467 ], [ %index.2, %lq_update.if.end468_crit_edge ]
  %call469 = tail call i32 @iwl_tx_ant_restriction(ptr noundef %priv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call469)
  %cmp470 = icmp eq i32 %call469, 2
  br i1 %cmp470, label %if.then472, label %if.end468.if.end473_crit_edge

if.end468.if.end473_crit_edge:                    ; preds = %if.end468
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end473

if.then472:                                       ; preds = %if.end468
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rs_stay_in_table(ptr noundef %lq_sta, i1 noundef zeroext false)
  br label %if.end473

if.end473:                                        ; preds = %if.then472, %if.end468.if.end473_crit_edge
  %tobool476.not.not = xor i1 %tobool476.not995, true
  %brmerge941 = or i1 %tobool466.not997, %tobool476.not.not
  br i1 %brmerge941, label %if.end533, label %land.lhs.true477

land.lhs.true477:                                 ; preds = %if.end473
  %stay_in_tbl = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 2
  %191 = ptrtoint ptr %stay_in_tbl to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %stay_in_tbl, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool478.not = icmp eq i8 %192, 0
  br i1 %tobool478.not, label %land.lhs.true479, label %land.lhs.true477.out_crit_edge

land.lhs.true477.out_crit_edge:                   ; preds = %land.lhs.true477
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true479:                                 ; preds = %land.lhs.true477
  %counter480 = getelementptr inbounds %struct.iwl_rate_scale_data, ptr %window.0992, i32 0, i32 3
  %193 = ptrtoint ptr %counter480 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %counter480, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool481.not = icmp eq i32 %194, 0
  br i1 %tobool481.not, label %land.lhs.true479.out_crit_edge, label %if.then482

land.lhs.true479.out_crit_edge:                   ; preds = %land.lhs.true479
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then482:                                       ; preds = %land.lhs.true479
  %last_tpt483 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 4
  %195 = ptrtoint ptr %last_tpt483 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %current_tpt.1993, ptr %last_tpt483, align 4
  %196 = ptrtoint ptr %tbl.1994 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %tbl.1994, align 8
  %198 = zext i32 %197 to i64
  call void @__sanitizer_cov_trace_switch(i64 %198, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %197, label %if.else502 [
    i32 1, label %if.then482.if.then491_crit_edge
    i32 2, label %if.then482.if.then491_crit_edge1030
    i32 3, label %if.then496
    i32 4, label %if.then501
  ]

if.then482.if.then491_crit_edge1030:              ; preds = %if.then482
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then491

if.then482.if.then491_crit_edge:                  ; preds = %if.then482
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then491

if.then491:                                       ; preds = %if.then482.if.then491_crit_edge, %if.then482.if.then491_crit_edge1030
  tail call fastcc void @rs_move_legacy_other(ptr noundef %priv, ptr noundef %lq_sta, ptr noundef %1, ptr noundef %sta, i32 noundef %index.2990)
  br label %if.end505

if.then496:                                       ; preds = %if.then482
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rs_move_siso_to_other(ptr noundef %priv, ptr noundef %lq_sta, ptr noundef %1, ptr noundef %sta, i32 noundef %index.2990)
  br label %if.end505

if.then501:                                       ; preds = %if.then482
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rs_move_mimo2_to_other(ptr noundef %priv, ptr noundef %lq_sta, ptr noundef %1, ptr noundef %sta, i32 noundef %index.2990)
  br label %if.end505

if.else502:                                       ; preds = %if.then482
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rs_move_mimo3_to_other(ptr noundef %priv, ptr noundef %lq_sta, ptr noundef %1, ptr noundef %sta, i32 noundef %index.2990)
  br label %if.end505

if.end505:                                        ; preds = %if.else502, %if.then501, %if.then496, %if.then491
  %199 = ptrtoint ptr %search_better_tbl to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %search_better_tbl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool507.not = icmp eq i8 %200, 0
  br i1 %tobool507.not, label %if.end505.land.lhs.true536_crit_edge, label %if.then508

if.end505.land.lhs.true536_crit_edge:             ; preds = %if.end505
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true536

if.then508:                                       ; preds = %if.end505
  %201 = ptrtoint ptr %lq_sta to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %lq_sta, align 8
  %conv511 = zext i8 %202 to i32
  %sub512 = sub nsw i32 1, %conv511
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then508
  %i.01028 = phi i32 [ 0, %if.then508 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx517 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub512, i32 9, i32 %i.01028
  %203 = ptrtoint ptr %arrayidx517 to i32
  call void @__asan_store8_noabort(i32 %203)
  store i64 0, ptr %arrayidx517, align 8
  %success_counter.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub512, i32 9, i32 %i.01028, i32 1
  %204 = ptrtoint ptr %success_counter.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 0, ptr %success_counter.i, align 8
  %success_ratio.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub512, i32 9, i32 %i.01028, i32 2
  %205 = ptrtoint ptr %success_ratio.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 -1, ptr %success_ratio.i, align 4
  %counter.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub512, i32 9, i32 %i.01028, i32 3
  %206 = ptrtoint ptr %counter.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 0, ptr %counter.i, align 8
  %average_tpt.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub512, i32 9, i32 %i.01028, i32 4
  %207 = ptrtoint ptr %average_tpt.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 -1, ptr %average_tpt.i, align 4
  %stamp.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub512, i32 9, i32 %i.01028, i32 5
  %208 = ptrtoint ptr %stamp.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 0, ptr %stamp.i, align 8
  %inc = add nuw nsw i32 %i.01028, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx513 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub512
  %current_rate518 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub512, i32 8
  %209 = ptrtoint ptr %current_rate518 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %current_rate518, align 8
  %call519 = tail call fastcc i32 @iwl_hwrate_to_plcp_idx(i32 noundef %210)
  %211 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %212, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_rate_scale_perform, ptr noundef nonnull @.str.38, i32 noundef %210, i32 noundef %call519) #12
  %213 = ptrtoint ptr %current_rate518 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %current_rate518, align 8
  tail call fastcc void @rs_fill_link_cmd(ptr noundef %priv, ptr noundef %lq_sta, i32 noundef %214)
  %lq529 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 24
  %call530 = tail call i32 @iwl_send_lq_cmd(ptr noundef %priv, ptr noundef %5, ptr noundef %lq529, i8 noundef zeroext 1, i1 noundef zeroext false) #12
  br label %out

if.end533:                                        ; preds = %if.end473
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done_search.0996)
  %tobool535.not1027 = icmp eq i32 %done_search.0996, 0
  %tobool535.not = and i1 %tobool466.not997, %tobool535.not1027
  br i1 %tobool535.not, label %if.end533.out_crit_edge, label %if.end533.land.lhs.true536_crit_edge

if.end533.land.lhs.true536_crit_edge:             ; preds = %if.end533
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true536

if.end533.out_crit_edge:                          ; preds = %if.end533
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true536:                                 ; preds = %if.end533.land.lhs.true536_crit_edge, %if.end505.land.lhs.true536_crit_edge
  %stay_in_tbl537 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 2
  %215 = ptrtoint ptr %stay_in_tbl537 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %stay_in_tbl537, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool538.not = icmp eq i8 %216, 0
  br i1 %tobool538.not, label %if.then539, label %land.lhs.true536.out_crit_edge

land.lhs.true536.out_crit_edge:                   ; preds = %land.lhs.true536
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then539:                                       ; preds = %land.lhs.true536
  %217 = ptrtoint ptr %lq_sta to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %lq_sta, align 8
  %idxprom542 = zext i8 %218 to i32
  %arrayidx543 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom542
  %219 = ptrtoint ptr %arrayidx543 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %arrayidx543, align 8
  %.off960 = add i32 %220, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off960)
  %switch961 = icmp ult i32 %.off960, 2
  br i1 %switch961, label %land.lhs.true551, label %if.then539.if.end566_crit_edge

if.then539.if.end566_crit_edge:                   ; preds = %if.then539
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end566

land.lhs.true551:                                 ; preds = %if.then539
  %width.i = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 7, i32 1
  %221 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %width.i, align 4
  %223 = zext i32 %222 to i64
  call void @__sanitizer_cov_trace_switch(i64 %223, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %222, label %land.lhs.true551.if.end566_crit_edge [
    i32 6, label %land.lhs.true551.land.lhs.true553_crit_edge
    i32 7, label %land.lhs.true551.land.lhs.true553_crit_edge1031
    i32 0, label %land.lhs.true551.land.lhs.true553_crit_edge1032
  ]

land.lhs.true551.land.lhs.true553_crit_edge1032:  ; preds = %land.lhs.true551
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true553

land.lhs.true551.land.lhs.true553_crit_edge1031:  ; preds = %land.lhs.true551
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true553

land.lhs.true551.land.lhs.true553_crit_edge:      ; preds = %land.lhs.true551
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true553

land.lhs.true551.if.end566_crit_edge:             ; preds = %land.lhs.true551
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end566

land.lhs.true553:                                 ; preds = %land.lhs.true551.land.lhs.true553_crit_edge, %land.lhs.true551.land.lhs.true553_crit_edge1031, %land.lhs.true551.land.lhs.true553_crit_edge1032
  %action_counter = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 12
  %224 = ptrtoint ptr %action_counter to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %action_counter, align 8
  %max_search = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom542, i32 6
  %226 = ptrtoint ptr %max_search to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %max_search, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %225, i8 %227)
  %cmp556 = icmp ugt i8 %225, %227
  br i1 %cmp556, label %do.end562, label %land.lhs.true553.if.end566_crit_edge

land.lhs.true553.if.end566_crit_edge:             ; preds = %land.lhs.true553
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end566

do.end562:                                        ; preds = %land.lhs.true553
  call void @__sanitizer_cov_trace_pc() #14
  %228 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %229, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_rate_scale_perform, ptr noundef nonnull @.str.39) #12
  tail call fastcc void @rs_set_stay_in_table(ptr noundef %priv, i8 noundef zeroext 1, ptr noundef %lq_sta)
  br label %if.end566

if.end566:                                        ; preds = %do.end562, %land.lhs.true553.if.end566_crit_edge, %land.lhs.true551.if.end566_crit_edge, %if.then539.if.end566_crit_edge
  %enable_counter567 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 1
  %230 = ptrtoint ptr %enable_counter567 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %enable_counter567, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %231)
  %tobool569.not = icmp eq i8 %231, 0
  br i1 %tobool569.not, label %if.end566.out_crit_edge, label %land.lhs.true570

if.end566.out_crit_edge:                          ; preds = %if.end566
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true570:                                 ; preds = %if.end566
  %action_counter571 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 12
  %232 = ptrtoint ptr %action_counter571 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %action_counter571, align 8
  %max_search573 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom542, i32 6
  %234 = ptrtoint ptr %max_search573 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %max_search573, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %233, i8 %235)
  %cmp575.not = icmp ult i8 %233, %235
  br i1 %cmp575.not, label %land.lhs.true570.out_crit_edge, label %land.lhs.true577

land.lhs.true570.out_crit_edge:                   ; preds = %land.lhs.true570
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true577:                                 ; preds = %land.lhs.true570
  %call578 = tail call zeroext i1 @iwl_ht_enabled(ptr noundef %priv) #12
  br i1 %call578, label %if.then580, label %land.lhs.true577.out_crit_edge

land.lhs.true577.out_crit_edge:                   ; preds = %land.lhs.true577
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then580:                                       ; preds = %land.lhs.true577
  %last_tpt581 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 4
  %236 = ptrtoint ptr %last_tpt581 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %last_tpt581, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %cmp582 = icmp sgt i32 %237, 0
  br i1 %cmp582, label %land.lhs.true584, label %if.then580.if.end618_crit_edge

if.then580.if.end618_crit_edge:                   ; preds = %if.then580
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end618

land.lhs.true584:                                 ; preds = %if.then580
  %tx_agg_tid_en585 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 28
  %238 = ptrtoint ptr %tx_agg_tid_en585 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %tx_agg_tid_en585, align 8
  %conv586 = zext i8 %239 to i32
  %shl588 = shl nuw i32 1, %conv974
  %and589 = and i32 %shl588, %conv586
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and589)
  %tobool590.not = icmp eq i32 %and589, 0
  %brmerge942 = or i1 %cmp.not976, %tobool590.not
  br i1 %brmerge942, label %land.lhs.true584.if.end618_crit_edge, label %if.then595

land.lhs.true584.if.end618_crit_edge:             ; preds = %land.lhs.true584
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end618

if.then595:                                       ; preds = %land.lhs.true584
  %lq597 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 24
  %240 = ptrtoint ptr %lq597 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %lq597, align 2
  %idxprom600 = zext i8 %241 to i32
  %state605 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %idxprom600, i32 %conv974, i32 2, i32 1
  %242 = ptrtoint ptr %state605 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %state605, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %cmp606 = icmp eq i32 %243, 0
  br i1 %cmp606, label %do.end612, label %if.then595.if.end618_crit_edge

if.then595.if.end618_crit_edge:                   ; preds = %if.then595
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end618

do.end612:                                        ; preds = %if.then595
  call void @__sanitizer_cov_trace_pc() #14
  %244 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %245, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_rate_scale_perform, ptr noundef nonnull @.str.40, i32 noundef %conv974) #12
  tail call fastcc void @rs_tl_turn_on_agg(ptr noundef %priv, i8 noundef zeroext %retval.0.i972, ptr noundef %lq_sta, ptr noundef %sta)
  br label %if.end618

if.end618:                                        ; preds = %do.end612, %if.then595.if.end618_crit_edge, %land.lhs.true584.if.end618_crit_edge, %if.then580.if.end618_crit_edge
  tail call fastcc void @rs_set_stay_in_table(ptr noundef %priv, i8 noundef zeroext 0, ptr noundef %lq_sta)
  br label %out

out:                                              ; preds = %if.end618, %land.lhs.true577.out_crit_edge, %land.lhs.true570.out_crit_edge, %if.end566.out_crit_edge, %land.lhs.true536.out_crit_edge, %if.end533.out_crit_edge, %for.end, %land.lhs.true479.out_crit_edge, %land.lhs.true477.out_crit_edge, %do.end158
  %index.4 = phi i32 [ %index.2990, %land.lhs.true536.out_crit_edge ], [ %index.2990, %if.end618 ], [ %index.2990, %land.lhs.true577.out_crit_edge ], [ %index.2990, %land.lhs.true570.out_crit_edge ], [ %index.2990, %if.end566.out_crit_edge ], [ %index.2990, %if.end533.out_crit_edge ], [ %72, %do.end158 ], [ %index.2990, %land.lhs.true479.out_crit_edge ], [ %call519, %for.end ], [ %index.2990, %land.lhs.true477.out_crit_edge ]
  %tbl.3 = phi ptr [ %tbl.1994, %land.lhs.true536.out_crit_edge ], [ %tbl.1994, %if.end618 ], [ %tbl.1994, %land.lhs.true577.out_crit_edge ], [ %tbl.1994, %land.lhs.true570.out_crit_edge ], [ %tbl.1994, %if.end566.out_crit_edge ], [ %tbl.1994, %if.end533.out_crit_edge ], [ %arrayidx37, %do.end158 ], [ %tbl.1994, %land.lhs.true479.out_crit_edge ], [ %arrayidx513, %for.end ], [ %tbl.1994, %land.lhs.true477.out_crit_edge ]
  %call621 = tail call fastcc i32 @rate_n_flags_from_tbl(ptr noundef %priv, ptr noundef %tbl.3, i32 noundef %index.4, i8 noundef zeroext 0)
  %current_rate622 = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl.3, i32 0, i32 8
  %246 = ptrtoint ptr %current_rate622 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %call621, ptr %current_rate622, align 8
  %247 = ptrtoint ptr %last_txrate_idx to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %index.4, ptr %last_txrate_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end127, %if.then112, %do.end106.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rs_bt_update_lq(ptr noundef %priv, ptr noundef %ctx, ptr noundef %lq_sta) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bt_traffic_load = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 85
  %0 = ptrtoint ptr %bt_traffic_load to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bt_traffic_load, align 2
  %last_bt_traffic_load = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 86
  %2 = ptrtoint ptr %last_bt_traffic_load to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %last_bt_traffic_load, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp.not = icmp eq i8 %1, %3
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %last_bt_traffic_load to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %1, ptr %last_bt_traffic_load, align 1
  %5 = ptrtoint ptr %lq_sta to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %lq_sta, align 8
  %idxprom = zext i8 %6 to i32
  %current_rate = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 8
  %7 = ptrtoint ptr %current_rate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %current_rate, align 8
  tail call fastcc void @rs_fill_link_cmd(ptr noundef %priv, ptr noundef %lq_sta, i32 noundef %8)
  %lq = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 24
  %call = tail call i32 @iwl_send_lq_cmd(ptr noundef %priv, ptr noundef %ctx, ptr noundef %lq, i8 noundef zeroext 1, i1 noundef zeroext false) #12
  %workqueue = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 16
  %9 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %workqueue, align 4
  %bt_full_concurrency = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 113
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %bt_full_concurrency) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_tx_ant_restriction(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iwl_ht_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rs_move_legacy_other(ptr noundef %priv, ptr noundef %lq_sta, ptr nocapture noundef readonly %conf, ptr noundef %sta, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lq_sta to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %lq_sta, align 8
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom
  %sub = sub nsw i32 1, %idxprom
  %arrayidx3 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub
  %nvm_data = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %2 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nvm_data, align 8
  %valid_tx_ant5 = getelementptr inbounds %struct.iwl_nvm_data, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %valid_tx_ant5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %valid_tx_ant5, align 1
  %hw_params = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 17
  %6 = ptrtoint ptr %hw_params to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hw_params, align 8
  %bt_traffic_load = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 85
  %8 = ptrtoint ptr %bt_traffic_load to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bt_traffic_load, align 2
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.123)
  switch i8 %9, label %do.end [
    i8 0, label %entry.sw.epilog_crit_edge
    i8 1, label %sw.bb
    i8 2, label %entry.sw.bb11_crit_edge
    i8 3, label %entry.sw.bb11_crit_edge354
  ]

entry.sw.bb11_crit_edge354:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb11

entry.sw.bb11_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb11

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %action = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 5
  %11 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %action, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp = icmp eq i8 %12, 1
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %action, align 8
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry.sw.bb11_crit_edge, %entry.sw.bb11_crit_edge354
  %conv.i = zext i8 %5 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and2.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %..i = select i1 %tobool3.not.i, i8 4, i8 2
  %retval.0.i = select i1 %tobool.not.i, i8 %..i, i8 1
  %action14 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 5
  %14 = ptrtoint ptr %action14 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %action14, align 8
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.124)
  switch i8 %15, label %if.then22 [
    i8 0, label %sw.bb11.sw.epilog_crit_edge
    i8 2, label %sw.bb11.sw.epilog_crit_edge355
  ]

sw.bb11.sw.epilog_crit_edge355:                   ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then22:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %action14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %action14, align 8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv7 = zext i8 %9 to i32
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %19, i32 noundef 0, ptr noundef nonnull @.str.41, i32 noundef %conv7) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then22, %sw.bb11.sw.epilog_crit_edge, %sw.bb11.sw.epilog_crit_edge355, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %valid_tx_ant.0 = phi i8 [ %5, %do.end ], [ %retval.0.i, %if.then22 ], [ %retval.0.i, %sw.bb11.sw.epilog_crit_edge ], [ %5, %if.then ], [ %5, %sw.bb.sw.epilog_crit_edge ], [ %5, %entry.sw.epilog_crit_edge ], [ %retval.0.i, %sw.bb11.sw.epilog_crit_edge355 ]
  %call30 = tail call zeroext i1 @iwl_ht_enabled(ptr noundef %priv) #12
  br i1 %call30, label %if.else, label %if.then31

if.then31:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %action32 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 5
  %20 = ptrtoint ptr %action32 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %action32, align 8
  br label %if.end44

if.else:                                          ; preds = %sw.epilog
  %call33 = tail call i32 @iwl_tx_ant_restriction(ptr noundef %priv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call33)
  %cmp34 = icmp eq i32 %call33, 1
  br i1 %cmp34, label %land.lhs.true36, label %if.else.if.end44_crit_edge

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

land.lhs.true36:                                  ; preds = %if.else
  %action37 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 5
  %21 = ptrtoint ptr %action37 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %action37, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp39 = icmp ugt i8 %22, 2
  br i1 %cmp39, label %if.then41, label %land.lhs.true36.if.end44_crit_edge

land.lhs.true36.if.end44_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then41:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %action37 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %action37, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %land.lhs.true36.if.end44_crit_edge, %if.else.if.end44_crit_edge, %if.then31
  %bt_full_concurrent = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 88
  %24 = ptrtoint ptr %bt_full_concurrent to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bt_full_concurrent, align 1, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  br i1 %tobool.not, label %if.end44.if.end61_crit_edge, label %if.then45

if.end44.if.end61_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then45:                                        ; preds = %if.end44
  %call46 = tail call zeroext i1 @iwl_ht_enabled(ptr noundef %priv) #12
  %action50 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 5
  br i1 %call46, label %if.else49, label %if.then45.if.end57.sink.split_crit_edge

if.then45.if.end57.sink.split_crit_edge:          ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57.sink.split

if.else49:                                        ; preds = %if.then45
  %26 = ptrtoint ptr %action50 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %action50, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp52.not = icmp eq i8 %27, 0
  br i1 %cmp52.not, label %if.else49.if.end57_crit_edge, label %if.else49.if.end57.sink.split_crit_edge

if.else49.if.end57.sink.split_crit_edge:          ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57.sink.split

if.else49.if.end57_crit_edge:                     ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.end57.sink.split:                              ; preds = %if.else49.if.end57.sink.split_crit_edge, %if.then45.if.end57.sink.split_crit_edge
  %.sink = phi i8 [ 0, %if.then45.if.end57.sink.split_crit_edge ], [ 2, %if.else49.if.end57.sink.split_crit_edge ]
  %28 = ptrtoint ptr %action50 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %.sink, ptr %action50, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.end57.sink.split, %if.else49.if.end57_crit_edge
  %29 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nvm_data, align 8
  %valid_tx_ant59 = getelementptr inbounds %struct.iwl_nvm_data, ptr %30, i32 0, i32 20
  %31 = ptrtoint ptr %valid_tx_ant59 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %valid_tx_ant59, align 1
  %conv.i323 = zext i8 %32 to i32
  %and.i324 = and i32 %conv.i323, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i324)
  %tobool.not.i325 = icmp eq i32 %and.i324, 0
  %and2.i326 = and i32 %conv.i323, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i326)
  %tobool3.not.i327 = icmp eq i32 %and2.i326, 0
  %..i328 = select i1 %tobool3.not.i327, i8 4, i8 2
  %retval.0.i329 = select i1 %tobool.not.i325, i8 %..i328, i8 1
  br label %if.end61

if.end61:                                         ; preds = %if.end57, %if.end44.if.end61_crit_edge
  %valid_tx_ant.1 = phi i8 [ %retval.0.i329, %if.end57 ], [ %valid_tx_ant.0, %if.end44.if.end61_crit_edge ]
  %action62 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 5
  %33 = ptrtoint ptr %action62 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %action62, align 8
  %action_counter = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 12
  %dev161 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %is_SGI164 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub, i32 2
  %ant_type165 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub, i32 1
  %and6.i332 = and i8 %valid_tx_ant.1, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %and6.i332)
  %cmp.i333.not = icmp eq i8 %and6.i332, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp79 = icmp ult i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp87 = icmp ult i8 %7, 3
  %success_ratio = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 9, i32 %index, i32 2
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog176.for.cond_crit_edge, %if.end61
  %35 = phi i8 [ %spec.select, %sw.epilog176.for.cond_crit_edge ], [ %34, %if.end61 ]
  %36 = ptrtoint ptr %action_counter to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %action_counter, align 8
  %inc = add i8 %37, 1
  store i8 %inc, ptr %action_counter, align 8
  %38 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.125)
  switch i8 %35, label %for.cond.sw.epilog176_crit_edge [
    i8 0, label %for.cond.do.end69_crit_edge
    i8 1, label %for.cond.do.end69_crit_edge356
    i8 2, label %do.end112
    i8 3, label %for.cond.do.end125_crit_edge
    i8 4, label %for.cond.do.end125_crit_edge357
    i8 5, label %for.cond.do.end125_crit_edge358
    i8 6, label %do.end160
  ]

for.cond.do.end125_crit_edge358:                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end125

for.cond.do.end125_crit_edge357:                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end125

for.cond.do.end125_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end125

for.cond.do.end69_crit_edge356:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end69

for.cond.do.end69_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end69

for.cond.sw.epilog176_crit_edge:                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog176

do.end69:                                         ; preds = %for.cond.do.end69_crit_edge, %for.cond.do.end69_crit_edge356
  %39 = ptrtoint ptr %dev161 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev161, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %40, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_move_legacy_other, ptr noundef nonnull @.str.42) #12
  %41 = ptrtoint ptr %action62 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %action62, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp75 = icmp eq i8 %42, 0
  %or.cond = select i1 %cmp75, i1 %cmp79, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %42)
  %cmp83 = icmp eq i8 %42, 1
  %or.cond311 = select i1 %cmp83, i1 %cmp87, i1 false
  %or.cond345 = select i1 %or.cond, i1 true, i1 %or.cond311
  br i1 %or.cond345, label %do.end69.sw.epilog176_crit_edge, label %if.end90

do.end69.sw.epilog176_crit_edge:                  ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog176

if.end90:                                         ; preds = %do.end69
  %43 = ptrtoint ptr %success_ratio to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %success_ratio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12799, i32 %44)
  %cmp91 = icmp sgt i32 %44, 12799
  br i1 %cmp91, label %land.lhs.true93, label %if.end90.if.end102_crit_edge

if.end90.if.end102_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end102

land.lhs.true93:                                  ; preds = %if.end90
  %45 = ptrtoint ptr %bt_full_concurrent to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %bt_full_concurrent, align 1, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool95.not = icmp eq i8 %46, 0
  br i1 %tobool95.not, label %land.lhs.true96, label %land.lhs.true93.if.end102_crit_edge

land.lhs.true93.if.end102_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end102

land.lhs.true96:                                  ; preds = %land.lhs.true93
  %47 = ptrtoint ptr %bt_traffic_load to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bt_traffic_load, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp99 = icmp eq i8 %48, 0
  br i1 %cmp99, label %land.lhs.true96.sw.epilog176_crit_edge, label %land.lhs.true96.if.end102_crit_edge

land.lhs.true96.if.end102_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end102

land.lhs.true96.sw.epilog176_crit_edge:           ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog176

if.end102:                                        ; preds = %land.lhs.true96.if.end102_crit_edge, %land.lhs.true93.if.end102_crit_edge, %if.end90.if.end102_crit_edge
  %49 = call ptr @memcpy(ptr %arrayidx3, ptr %arrayidx, i32 24)
  %50 = ptrtoint ptr %ant_type165 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ant_type165, align 4
  %52 = add i8 %51, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %52)
  %53 = icmp ult i8 %52, 7
  %and6.i.i = and i8 %51, %valid_tx_ant.1
  call void @__sanitizer_cov_trace_cmp1(i8 %and6.i.i, i8 %51)
  %cmp.i.not.i = icmp eq i8 %and6.i.i, %51
  %or.cond337 = select i1 %53, i1 %cmp.i.not.i, i1 false
  br i1 %or.cond337, label %if.end102.while.cond.i_crit_edge, label %if.end102.sw.epilog176_crit_edge

if.end102.sw.epilog176_crit_edge:                 ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog176

if.end102.while.cond.i_crit_edge:                 ; preds = %if.end102
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %if.end102.while.cond.i_crit_edge
  %idxprom.pn.in.i = phi i8 [ %new_ant_type.0.i, %land.rhs.i.while.cond.i_crit_edge ], [ %51, %if.end102.while.cond.i_crit_edge ]
  %idxprom.pn.i = zext i8 %idxprom.pn.in.i to i32
  %new_ant_type.0.in.i = getelementptr [8 x i8], ptr @ant_toggle_lookup, i32 0, i32 %idxprom.pn.i
  %54 = ptrtoint ptr %new_ant_type.0.in.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %new_ant_type.0.i = load i8, ptr %new_ant_type.0.in.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %new_ant_type.0.i, i8 %51)
  %cmp12.not.i = icmp eq i8 %new_ant_type.0.i, %51
  br i1 %cmp12.not.i, label %while.cond.i.sw.epilog176_crit_edge, label %land.rhs.i

while.cond.i.sw.epilog176_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog176

land.rhs.i:                                       ; preds = %while.cond.i
  %and6.i41.i = and i8 %new_ant_type.0.i, %valid_tx_ant.1
  %cmp.i42.not.i = icmp eq i8 %and6.i41.i, %new_ant_type.0.i
  br i1 %cmp.i42.not.i, label %if.then106, label %land.rhs.i.while.cond.i_crit_edge

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.then106:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %current_rate.le = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub, i32 8
  %conv9.le.i = zext i8 %new_ant_type.0.i to i32
  %55 = ptrtoint ptr %ant_type165 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %new_ant_type.0.i, ptr %ant_type165, align 4
  %56 = ptrtoint ptr %current_rate.le to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %current_rate.le, align 4
  %and.i330 = and i32 %57, -114689
  %shl.i = shl nuw nsw i32 %conv9.le.i, 14
  %or.i = or i32 %and.i330, %shl.i
  store i32 %or.i, ptr %current_rate.le, align 4
  tail call fastcc void @rs_set_expected_tpt_table(ptr noundef %lq_sta, ptr noundef %arrayidx3)
  %search_better_tbl = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 3
  %58 = ptrtoint ptr %search_better_tbl to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %search_better_tbl, align 1
  %59 = ptrtoint ptr %action62 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %action62, align 8
  %inc194 = add i8 %60, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %inc194)
  %cmp197 = icmp ugt i8 %inc194, 6
  %spec.select312 = select i1 %cmp197, i8 0, i8 %inc194
  %61 = ptrtoint ptr %action62 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %spec.select312, ptr %action62, align 8
  %action205 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub, i32 5
  %62 = ptrtoint ptr %action205 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %spec.select312, ptr %action205, align 8
  br label %cleanup

do.end112:                                        ; preds = %for.cond
  %63 = ptrtoint ptr %dev161 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev161, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %64, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_move_legacy_other, ptr noundef nonnull @.str.43) #12
  %65 = call ptr @memcpy(ptr %arrayidx3, ptr %arrayidx, i32 24)
  %66 = ptrtoint ptr %is_SGI164 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %is_SGI164, align 1
  %call116 = tail call fastcc i32 @rs_switch_to_siso(ptr noundef %priv, ptr noundef %lq_sta, ptr noundef %conf, ptr noundef %sta, ptr noundef %arrayidx3, i32 noundef %index)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.then118, label %do.end112.sw.epilog176_crit_edge

do.end112.sw.epilog176_crit_edge:                 ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog176

if.then118:                                       ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %action_counter to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %action_counter, align 8
  %search_better_tbl.c319 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 3
  %68 = ptrtoint ptr %search_better_tbl.c319 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %search_better_tbl.c319, align 1
  %69 = ptrtoint ptr %action62 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %action62, align 8
  %inc194.c320 = add i8 %70, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %inc194.c320)
  %cmp197.c321 = icmp ugt i8 %inc194.c320, 6
  %spec.select312.c322 = select i1 %cmp197.c321, i8 0, i8 %inc194.c320
  %71 = ptrtoint ptr %action62 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %spec.select312.c322, ptr %action62, align 8
  br label %cleanup

do.end125:                                        ; preds = %for.cond.do.end125_crit_edge, %for.cond.do.end125_crit_edge357, %for.cond.do.end125_crit_edge358
  %72 = ptrtoint ptr %dev161 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev161, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %73, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_move_legacy_other, ptr noundef nonnull @.str.44) #12
  %74 = call ptr @memcpy(ptr %arrayidx3, ptr %arrayidx, i32 24)
  %75 = ptrtoint ptr %is_SGI164 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %is_SGI164, align 1
  %76 = ptrtoint ptr %action62 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %action62, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %77)
  %switch.selectcmp = icmp eq i8 %77, 4
  %switch.select = select i1 %switch.selectcmp, i8 5, i8 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %77)
  %switch.selectcmp349 = icmp eq i8 %77, 3
  %switch.select350 = select i1 %switch.selectcmp349, i8 3, i8 %switch.select
  %78 = ptrtoint ptr %ant_type165 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %switch.select350, ptr %ant_type165, align 4
  %and6.i = and i8 %switch.select350, %valid_tx_ant.1
  call void @__sanitizer_cov_trace_cmp1(i8 %and6.i, i8 %switch.select350)
  %cmp.i.not = icmp eq i8 %and6.i, %switch.select350
  br i1 %cmp.i.not, label %if.end150, label %do.end125.sw.epilog176_crit_edge

do.end125.sw.epilog176_crit_edge:                 ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog176

if.end150:                                        ; preds = %do.end125
  %call151 = tail call fastcc i32 @rs_switch_to_mimo2(ptr noundef %priv, ptr noundef %lq_sta, ptr noundef %conf, ptr noundef %sta, ptr noundef %arrayidx3, i32 noundef %index)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.then153, label %if.end150.sw.epilog176_crit_edge

if.end150.sw.epilog176_crit_edge:                 ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog176

if.then153:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #14
  %79 = ptrtoint ptr %action_counter to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %action_counter, align 8
  %search_better_tbl.c314 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 3
  %80 = ptrtoint ptr %search_better_tbl.c314 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %search_better_tbl.c314, align 1
  %81 = ptrtoint ptr %action62 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %action62, align 8
  %inc194.c315 = add i8 %82, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %inc194.c315)
  %cmp197.c316 = icmp ugt i8 %inc194.c315, 6
  %spec.select312.c317 = select i1 %cmp197.c316, i8 0, i8 %inc194.c315
  %83 = ptrtoint ptr %action62 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %spec.select312.c317, ptr %action62, align 8
  br label %cleanup

do.end160:                                        ; preds = %for.cond
  %84 = ptrtoint ptr %dev161 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev161, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %85, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_move_legacy_other, ptr noundef nonnull @.str.45) #12
  %86 = call ptr @memcpy(ptr %arrayidx3, ptr %arrayidx, i32 24)
  %87 = ptrtoint ptr %is_SGI164 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %is_SGI164, align 1
  %88 = ptrtoint ptr %ant_type165 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 7, ptr %ant_type165, align 4
  br i1 %cmp.i333.not, label %if.end170, label %do.end160.sw.epilog176_crit_edge

do.end160.sw.epilog176_crit_edge:                 ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog176

if.end170:                                        ; preds = %do.end160
  %call171 = tail call fastcc i32 @rs_switch_to_mimo3(ptr noundef %priv, ptr noundef %lq_sta, ptr noundef %conf, ptr noundef %sta, ptr noundef %arrayidx3, i32 noundef %index)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %if.then173, label %if.end170.sw.epilog176_crit_edge

if.end170.sw.epilog176_crit_edge:                 ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog176

if.then173:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #14
  %89 = ptrtoint ptr %action_counter to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %action_counter, align 8
  %search_better_tbl.c = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 3
  %90 = ptrtoint ptr %search_better_tbl.c to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %search_better_tbl.c, align 1
  %91 = ptrtoint ptr %action62 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %action62, align 8
  %inc194.c = add i8 %92, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %inc194.c)
  %cmp197.c = icmp ugt i8 %inc194.c, 6
  %spec.select312.c = select i1 %cmp197.c, i8 0, i8 %inc194.c
  %93 = ptrtoint ptr %action62 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %spec.select312.c, ptr %action62, align 8
  br label %cleanup

sw.epilog176:                                     ; preds = %if.end170.sw.epilog176_crit_edge, %do.end160.sw.epilog176_crit_edge, %if.end150.sw.epilog176_crit_edge, %do.end125.sw.epilog176_crit_edge, %do.end112.sw.epilog176_crit_edge, %while.cond.i.sw.epilog176_crit_edge, %if.end102.sw.epilog176_crit_edge, %land.lhs.true96.sw.epilog176_crit_edge, %do.end69.sw.epilog176_crit_edge, %for.cond.sw.epilog176_crit_edge
  %94 = ptrtoint ptr %action62 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %action62, align 8
  %inc178 = add i8 %95, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %inc178)
  %cmp181 = icmp ugt i8 %inc178, 6
  %spec.select = select i1 %cmp181, i8 0, i8 %inc178
  %96 = ptrtoint ptr %action62 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %spec.select, ptr %action62, align 8
  %cmp189 = icmp eq i8 %spec.select, %34
  br i1 %cmp189, label %for.end, label %sw.epilog176.for.cond_crit_edge

sw.epilog176.for.cond_crit_edge:                  ; preds = %sw.epilog176
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

for.end:                                          ; preds = %sw.epilog176
  call void @__sanitizer_cov_trace_pc() #14
  %97 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %arrayidx3, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then173, %if.then153, %if.then118, %if.then106
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rs_move_siso_to_other(ptr noundef %priv, ptr noundef %lq_sta, ptr nocapture noundef readonly %conf, ptr noundef %sta, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %is_green1 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 13
  %0 = ptrtoint ptr %is_green1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_green1, align 1
  %2 = ptrtoint ptr %lq_sta to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lq_sta, align 8
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom
  %sub = sub nsw i32 1, %idxprom
  %arrayidx4 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub
  %ht_cap6 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %nvm_data = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %4 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nvm_data, align 8
  %valid_tx_ant7 = getelementptr inbounds %struct.iwl_nvm_data, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %valid_tx_ant7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %valid_tx_ant7, align 1
  %hw_params = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 17
  %8 = ptrtoint ptr %hw_params to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hw_params, align 8
  %bt_traffic_load = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 85
  %10 = ptrtoint ptr %bt_traffic_load to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bt_traffic_load, align 2
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.126)
  switch i8 %11, label %do.end [
    i8 0, label %entry.sw.epilog_crit_edge
    i8 1, label %sw.bb
    i8 2, label %entry.sw.bb13_crit_edge
    i8 3, label %entry.sw.bb13_crit_edge375
  ]

entry.sw.bb13_crit_edge375:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13

entry.sw.bb13_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %action = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 5
  %13 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %action, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp = icmp eq i8 %14, 1
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %action, align 8
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry.sw.bb13_crit_edge, %entry.sw.bb13_crit_edge375
  %conv.i = zext i8 %7 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and2.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %..i = select i1 %tobool3.not.i, i8 4, i8 2
  %retval.0.i = select i1 %tobool.not.i, i8 %..i, i8 1
  %action16 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 5
  %16 = ptrtoint ptr %action16 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %action16, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp18.not = icmp eq i8 %17, 0
  br i1 %cmp18.not, label %sw.bb13.sw.epilog_crit_edge, label %if.then20

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then20:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %action16 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %action16, align 8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv9 = zext i8 %11 to i32
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %20, i32 noundef 0, ptr noundef nonnull @.str.41, i32 noundef %conv9) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then20, %sw.bb13.sw.epilog_crit_edge, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %valid_tx_ant.0 = phi i8 [ %7, %do.end ], [ %retval.0.i, %if.then20 ], [ %retval.0.i, %sw.bb13.sw.epilog_crit_edge ], [ %7, %if.then ], [ %7, %sw.bb.sw.epilog_crit_edge ], [ %7, %entry.sw.epilog_crit_edge ]
  %call28 = tail call i32 @iwl_tx_ant_restriction(ptr noundef %priv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call28)
  %cmp29 = icmp eq i32 %call28, 1
  br i1 %cmp29, label %land.lhs.true, label %sw.epilog.if.end37_crit_edge

sw.epilog.if.end37_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

land.lhs.true:                                    ; preds = %sw.epilog
  %action31 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 5
  %21 = ptrtoint ptr %action31 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %action31, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp33 = icmp ugt i8 %22, 1
  br i1 %cmp33, label %if.then35, label %land.lhs.true.if.end37_crit_edge

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then35:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %action31 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %action31, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %land.lhs.true.if.end37_crit_edge, %sw.epilog.if.end37_crit_edge
  %bt_full_concurrent = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 88
  %24 = ptrtoint ptr %bt_full_concurrent to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bt_full_concurrent, align 1, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  br i1 %tobool.not, label %if.end37.if.end49_crit_edge, label %if.then38

if.end37.if.end49_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then38:                                        ; preds = %if.end37
  %26 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nvm_data, align 8
  %valid_tx_ant40 = getelementptr inbounds %struct.iwl_nvm_data, ptr %27, i32 0, i32 20
  %28 = ptrtoint ptr %valid_tx_ant40 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %valid_tx_ant40, align 1
  %conv.i351 = zext i8 %29 to i32
  %and.i352 = and i32 %conv.i351, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i352)
  %tobool.not.i353 = icmp eq i32 %and.i352, 0
  %and2.i354 = and i32 %conv.i351, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i354)
  %tobool3.not.i355 = icmp eq i32 %and2.i354, 0
  %..i356 = select i1 %tobool3.not.i355, i8 4, i8 2
  %retval.0.i357 = select i1 %tobool.not.i353, i8 %..i356, i8 1
  %action42 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 5
  %30 = ptrtoint ptr %action42 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %action42, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp44.not = icmp eq i8 %31, 0
  br i1 %cmp44.not, label %if.then38.if.end49_crit_edge, label %if.then46

if.then38.if.end49_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then46:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %action42 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %action42, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.then38.if.end49_crit_edge, %if.end37.if.end49_crit_edge
  %valid_tx_ant.1 = phi i8 [ %retval.0.i357, %if.then46 ], [ %retval.0.i357, %if.then38.if.end49_crit_edge ], [ %valid_tx_ant.0, %if.end37.if.end49_crit_edge ]
  %action50 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 5
  %33 = ptrtoint ptr %action50 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %action50, align 8
  %action_counter = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 12
  %dev188 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %is_SGI191 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub, i32 2
  %ant_type192 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub, i32 1
  %and6.i360 = and i8 %valid_tx_ant.1, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %and6.i360)
  %cmp.i361.not = icmp eq i8 %and6.i360, 7
  %is_ht40 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool152.not = icmp eq i8 %1, 0
  %is_SGI154 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 2
  %last_tpt = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 4
  %expected_tpt = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub, i32 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp67 = icmp ult i8 %9, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp75 = icmp ult i8 %9, 3
  %success_ratio = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 9, i32 %index, i32 2
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog202.for.cond_crit_edge, %if.end49
  %35 = phi i8 [ %spec.select, %sw.epilog202.for.cond_crit_edge ], [ %34, %if.end49 ]
  %36 = ptrtoint ptr %action_counter to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %action_counter, align 8
  %inc = add i8 %37, 1
  store i8 %inc, ptr %action_counter, align 8
  %38 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.127)
  switch i8 %35, label %for.cond.sw.epilog202_crit_edge [
    i8 0, label %for.cond.do.end57_crit_edge
    i8 1, label %for.cond.do.end57_crit_edge376
    i8 2, label %for.cond.do.end100_crit_edge
    i8 3, label %for.cond.do.end100_crit_edge377
    i8 4, label %for.cond.do.end100_crit_edge378
    i8 5, label %sw.bb128
    i8 6, label %do.end187
  ]

for.cond.do.end100_crit_edge378:                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end100

for.cond.do.end100_crit_edge377:                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end100

for.cond.do.end100_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end100

for.cond.do.end57_crit_edge376:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end57

for.cond.do.end57_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end57

for.cond.sw.epilog202_crit_edge:                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog202

do.end57:                                         ; preds = %for.cond.do.end57_crit_edge, %for.cond.do.end57_crit_edge376
  %39 = ptrtoint ptr %dev188 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev188, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %40, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_move_siso_to_other, ptr noundef nonnull @.str.55) #12
  %41 = ptrtoint ptr %action50 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %action50, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp63 = icmp eq i8 %42, 0
  %or.cond = select i1 %cmp63, i1 %cmp67, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %42)
  %cmp71 = icmp eq i8 %42, 1
  %or.cond344 = select i1 %cmp71, i1 %cmp75, i1 false
  %or.cond367 = select i1 %or.cond, i1 true, i1 %or.cond344
  br i1 %or.cond367, label %do.end57.sw.epilog202_crit_edge, label %if.end78

do.end57.sw.epilog202_crit_edge:                  ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog202

if.end78:                                         ; preds = %do.end57
  %43 = ptrtoint ptr %success_ratio to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %success_ratio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12799, i32 %44)
  %cmp79 = icmp sgt i32 %44, 12799
  br i1 %cmp79, label %land.lhs.true81, label %if.end78.if.end90_crit_edge

if.end78.if.end90_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

land.lhs.true81:                                  ; preds = %if.end78
  %45 = ptrtoint ptr %bt_full_concurrent to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %bt_full_concurrent, align 1, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool83.not = icmp eq i8 %46, 0
  br i1 %tobool83.not, label %land.lhs.true84, label %land.lhs.true81.if.end90_crit_edge

land.lhs.true81.if.end90_crit_edge:               ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

land.lhs.true84:                                  ; preds = %land.lhs.true81
  %47 = ptrtoint ptr %bt_traffic_load to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bt_traffic_load, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp87 = icmp eq i8 %48, 0
  br i1 %cmp87, label %land.lhs.true84.sw.epilog202_crit_edge, label %land.lhs.true84.if.end90_crit_edge

land.lhs.true84.if.end90_crit_edge:               ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

land.lhs.true84.sw.epilog202_crit_edge:           ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog202

if.end90:                                         ; preds = %land.lhs.true84.if.end90_crit_edge, %land.lhs.true81.if.end90_crit_edge, %if.end78.if.end90_crit_edge
  %49 = call ptr @memcpy(ptr %arrayidx4, ptr %arrayidx, i32 24)
  %50 = ptrtoint ptr %ant_type192 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ant_type192, align 4
  %52 = add i8 %51, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %52)
  %53 = icmp ult i8 %52, 7
  %and6.i.i = and i8 %51, %valid_tx_ant.1
  call void @__sanitizer_cov_trace_cmp1(i8 %and6.i.i, i8 %51)
  %cmp.i.not.i = icmp eq i8 %and6.i.i, %51
  %or.cond365 = select i1 %53, i1 %cmp.i.not.i, i1 false
  br i1 %or.cond365, label %if.end90.while.cond.i_crit_edge, label %if.end90.sw.epilog202_crit_edge

if.end90.sw.epilog202_crit_edge:                  ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog202

if.end90.while.cond.i_crit_edge:                  ; preds = %if.end90
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %if.end90.while.cond.i_crit_edge
  %idxprom.pn.in.i = phi i8 [ %new_ant_type.0.i, %land.rhs.i.while.cond.i_crit_edge ], [ %51, %if.end90.while.cond.i_crit_edge ]
  %idxprom.pn.i = zext i8 %idxprom.pn.in.i to i32
  %new_ant_type.0.in.i = getelementptr [8 x i8], ptr @ant_toggle_lookup, i32 0, i32 %idxprom.pn.i
  %54 = ptrtoint ptr %new_ant_type.0.in.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %new_ant_type.0.i = load i8, ptr %new_ant_type.0.in.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %new_ant_type.0.i, i8 %51)
  %cmp12.not.i = icmp eq i8 %new_ant_type.0.i, %51
  br i1 %cmp12.not.i, label %while.cond.i.sw.epilog202_crit_edge, label %land.rhs.i

while.cond.i.sw.epilog202_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog202

land.rhs.i:                                       ; preds = %while.cond.i
  %and6.i41.i = and i8 %new_ant_type.0.i, %valid_tx_ant.1
  %cmp.i42.not.i = icmp eq i8 %and6.i41.i, %new_ant_type.0.i
  br i1 %cmp.i42.not.i, label %rs_toggle_antenna.exit, label %land.rhs.i.while.cond.i_crit_edge

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

rs_toggle_antenna.exit:                           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %current_rate.le = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub, i32 8
  %conv9.le.i = zext i8 %new_ant_type.0.i to i32
  %55 = ptrtoint ptr %ant_type192 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %new_ant_type.0.i, ptr %ant_type192, align 4
  %56 = ptrtoint ptr %current_rate.le to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %current_rate.le, align 4
  %and.i358 = and i32 %57, -114689
  %shl.i = shl nuw nsw i32 %conv9.le.i, 14
  %or.i = or i32 %and.i358, %shl.i
  store i32 %or.i, ptr %current_rate.le, align 4
  br label %out

do.end100:                                        ; preds = %for.cond.do.end100_crit_edge, %for.cond.do.end100_crit_edge377, %for.cond.do.end100_crit_edge378
  %58 = ptrtoint ptr %dev188 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev188, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %59, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_move_siso_to_other, ptr noundef nonnull @.str.56) #12
  %60 = call ptr @memcpy(ptr %arrayidx4, ptr %arrayidx, i32 24)
  %61 = ptrtoint ptr %is_SGI191 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %is_SGI191, align 1
  %62 = ptrtoint ptr %action50 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %action50, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %63)
  %switch.selectcmp = icmp eq i8 %63, 3
  %switch.select = select i1 %switch.selectcmp, i8 5, i8 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %63)
  %switch.selectcmp370 = icmp eq i8 %63, 2
  %switch.select371 = select i1 %switch.selectcmp370, i8 3, i8 %switch.select
  %64 = ptrtoint ptr %ant_type192 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %switch.select371, ptr %ant_type192, align 4
  %and6.i = and i8 %switch.select371, %valid_tx_ant.1
  call void @__sanitizer_cov_trace_cmp1(i8 %and6.i, i8 %switch.select371)
  %cmp.i.not = icmp eq i8 %and6.i, %switch.select371
  br i1 %cmp.i.not, label %if.end123, label %do.end100.sw.epilog202_crit_edge

do.end100.sw.epilog202_crit_edge:                 ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog202

if.end123:                                        ; preds = %do.end100
  %call124 = tail call fastcc i32 @rs_switch_to_mimo2(ptr noundef %priv, ptr noundef %lq_sta, ptr noundef %conf, ptr noundef %sta, ptr noundef %arrayidx4, i32 noundef %index)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %cleanup233.critedge346, label %if.end123.sw.epilog202_crit_edge

if.end123.sw.epilog202_crit_edge:                 ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog202

sw.bb128:                                         ; preds = %for.cond
  %65 = ptrtoint ptr %is_ht40 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %is_ht40, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool129.not = icmp eq i8 %66, 0
  %67 = ptrtoint ptr %ht_cap6 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %ht_cap6, align 2
  br i1 %tobool129.not, label %land.lhs.true130, label %land.lhs.true138

land.lhs.true130:                                 ; preds = %sw.bb128
  %69 = and i16 %68, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool132.not = icmp eq i16 %69, 0
  br i1 %tobool132.not, label %land.lhs.true130.sw.epilog202_crit_edge, label %land.lhs.true130.do.end148_crit_edge

land.lhs.true130.do.end148_crit_edge:             ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end148

land.lhs.true130.sw.epilog202_crit_edge:          ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog202

land.lhs.true138:                                 ; preds = %sw.bb128
  %70 = and i16 %68, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool142.not = icmp eq i16 %70, 0
  br i1 %tobool142.not, label %land.lhs.true138.sw.epilog202_crit_edge, label %land.lhs.true138.do.end148_crit_edge

land.lhs.true138.do.end148_crit_edge:             ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end148

land.lhs.true138.sw.epilog202_crit_edge:          ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog202

do.end148:                                        ; preds = %land.lhs.true138.do.end148_crit_edge, %land.lhs.true130.do.end148_crit_edge
  %71 = ptrtoint ptr %dev188 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev188, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %72, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_move_siso_to_other, ptr noundef nonnull @.str.57) #12
  %73 = call ptr @memcpy(ptr %arrayidx4, ptr %arrayidx, i32 24)
  br i1 %tobool152.not, label %do.end148.if.end166_crit_edge, label %if.then153

do.end148.if.end166_crit_edge:                    ; preds = %do.end148
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end166

if.then153:                                       ; preds = %do.end148
  %74 = ptrtoint ptr %is_SGI154 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %is_SGI154, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool155.not = icmp eq i8 %75, 0
  br i1 %tobool155.not, label %if.then153.sw.epilog202_crit_edge, label %do.end161

if.then153.sw.epilog202_crit_edge:                ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog202

do.end161:                                        ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %dev188 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev188, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %77, i32 noundef 0, ptr noundef nonnull @.str.58) #12
  br label %if.end166

if.end166:                                        ; preds = %do.end161, %do.end148.if.end166_crit_edge
  %78 = ptrtoint ptr %is_SGI154 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %is_SGI154, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool168.not = icmp eq i8 %79, 0
  %conv169 = zext i1 %tobool168.not to i8
  %80 = ptrtoint ptr %is_SGI191 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv169, ptr %is_SGI191, align 1
  tail call fastcc void @rs_set_expected_tpt_table(ptr noundef %lq_sta, ptr noundef %arrayidx4)
  %81 = ptrtoint ptr %is_SGI154 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %is_SGI154, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool172.not = icmp eq i8 %82, 0
  br i1 %tobool172.not, label %if.end166.if.end180_crit_edge, label %if.then173

if.end166.if.end180_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end180

if.then173:                                       ; preds = %if.end166
  %83 = ptrtoint ptr %last_tpt to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %last_tpt, align 4
  %div = sdiv i32 %84, 100
  %85 = ptrtoint ptr %expected_tpt to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %expected_tpt, align 4
  %arrayidx174 = getelementptr i16, ptr %86, i32 %index
  %87 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %arrayidx174, align 2
  %conv175 = zext i16 %88 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %conv175)
  %cmp176.not = icmp slt i32 %div, %conv175
  br i1 %cmp176.not, label %if.then173.if.end180_crit_edge, label %if.then173.sw.epilog202_crit_edge

if.then173.sw.epilog202_crit_edge:                ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog202

if.then173.if.end180_crit_edge:                   ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end180

if.end180:                                        ; preds = %if.then173.if.end180_crit_edge, %if.end166.if.end180_crit_edge
  %call181 = tail call fastcc i32 @rate_n_flags_from_tbl(ptr noundef %priv, ptr noundef %arrayidx4, i32 noundef %index, i8 noundef zeroext %1)
  %current_rate182 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub, i32 8
  %89 = ptrtoint ptr %current_rate182 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %call181, ptr %current_rate182, align 8
  br label %out

do.end187:                                        ; preds = %for.cond
  %90 = ptrtoint ptr %dev188 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev188, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %91, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_move_siso_to_other, ptr noundef nonnull @.str.59) #12
  %92 = call ptr @memcpy(ptr %arrayidx4, ptr %arrayidx, i32 24)
  %93 = ptrtoint ptr %is_SGI191 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %is_SGI191, align 1
  %94 = ptrtoint ptr %ant_type192 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 7, ptr %ant_type192, align 4
  br i1 %cmp.i361.not, label %if.end197, label %do.end187.sw.epilog202_crit_edge

do.end187.sw.epilog202_crit_edge:                 ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog202

if.end197:                                        ; preds = %do.end187
  %call198 = tail call fastcc i32 @rs_switch_to_mimo3(ptr noundef %priv, ptr noundef %lq_sta, ptr noundef %conf, ptr noundef %sta, ptr noundef %arrayidx4, i32 noundef %index)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198)
  %tobool199.not = icmp eq i32 %call198, 0
  br i1 %tobool199.not, label %cleanup233.critedge, label %if.end197.sw.epilog202_crit_edge

if.end197.sw.epilog202_crit_edge:                 ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog202

sw.epilog202:                                     ; preds = %if.end197.sw.epilog202_crit_edge, %do.end187.sw.epilog202_crit_edge, %if.then173.sw.epilog202_crit_edge, %if.then153.sw.epilog202_crit_edge, %land.lhs.true138.sw.epilog202_crit_edge, %land.lhs.true130.sw.epilog202_crit_edge, %if.end123.sw.epilog202_crit_edge, %do.end100.sw.epilog202_crit_edge, %while.cond.i.sw.epilog202_crit_edge, %if.end90.sw.epilog202_crit_edge, %land.lhs.true84.sw.epilog202_crit_edge, %do.end57.sw.epilog202_crit_edge, %for.cond.sw.epilog202_crit_edge
  %95 = ptrtoint ptr %action50 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %action50, align 8
  %inc204 = add i8 %96, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %inc204)
  %cmp207 = icmp ugt i8 %inc204, 6
  %spec.select = select i1 %cmp207, i8 0, i8 %inc204
  %97 = ptrtoint ptr %action50 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %spec.select, ptr %action50, align 8
  %cmp215 = icmp eq i8 %spec.select, %34
  br i1 %cmp215, label %for.end, label %sw.epilog202.for.cond_crit_edge

sw.epilog202.for.cond_crit_edge:                  ; preds = %sw.epilog202
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

for.end:                                          ; preds = %sw.epilog202
  call void @__sanitizer_cov_trace_pc() #14
  %98 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %arrayidx4, align 8
  br label %cleanup233

out:                                              ; preds = %if.end180, %rs_toggle_antenna.exit
  %search_better_tbl = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 3
  %99 = ptrtoint ptr %search_better_tbl to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %search_better_tbl, align 1
  %100 = ptrtoint ptr %action50 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %action50, align 8
  %inc220 = add i8 %101, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %inc220)
  %cmp223 = icmp ugt i8 %inc220, 6
  %spec.select345 = select i1 %cmp223, i8 0, i8 %inc220
  %102 = ptrtoint ptr %action50 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %spec.select345, ptr %action50, align 8
  %action231 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub, i32 5
  %103 = ptrtoint ptr %action231 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %spec.select345, ptr %action231, align 8
  br label %cleanup233

cleanup233.critedge:                              ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #14
  %search_better_tbl.c = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 3
  %104 = ptrtoint ptr %search_better_tbl.c to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %search_better_tbl.c, align 1
  %105 = ptrtoint ptr %action50 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %action50, align 8
  %inc220.c = add i8 %106, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %inc220.c)
  %cmp223.c = icmp ugt i8 %inc220.c, 6
  %spec.select345.c = select i1 %cmp223.c, i8 0, i8 %inc220.c
  %107 = ptrtoint ptr %action50 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %spec.select345.c, ptr %action50, align 8
  br label %cleanup233

cleanup233.critedge346:                           ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #14
  %search_better_tbl.c347 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 3
  %108 = ptrtoint ptr %search_better_tbl.c347 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %search_better_tbl.c347, align 1
  %109 = ptrtoint ptr %action50 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %action50, align 8
  %inc220.c348 = add i8 %110, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %inc220.c348)
  %cmp223.c349 = icmp ugt i8 %inc220.c348, 6
  %spec.select345.c350 = select i1 %cmp223.c349, i8 0, i8 %inc220.c348
  %111 = ptrtoint ptr %action50 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %spec.select345.c350, ptr %action50, align 8
  br label %cleanup233

cleanup233:                                       ; preds = %cleanup233.critedge346, %cleanup233.critedge, %out, %for.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rs_move_mimo2_to_other(ptr noundef %priv, ptr noundef %lq_sta, ptr nocapture noundef readonly %conf, ptr noundef %sta, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %is_green1 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 13
  %0 = ptrtoint ptr %is_green1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_green1, align 1
  %2 = ptrtoint ptr %lq_sta to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lq_sta, align 8
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom
  %sub = sub nsw i32 1, %idxprom
  %arrayidx4 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub
  %ht_cap6 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %nvm_data = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %4 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nvm_data, align 8
  %valid_tx_ant7 = getelementptr inbounds %struct.iwl_nvm_data, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %valid_tx_ant7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %valid_tx_ant7, align 1
  %hw_params = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 17
  %8 = ptrtoint ptr %hw_params to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hw_params, align 8
  %bt_traffic_load = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 85
  %10 = ptrtoint ptr %bt_traffic_load to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bt_traffic_load, align 2
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.128)
  switch i8 %11, label %do.end [
    i8 0, label %entry.sw.epilog_crit_edge
    i8 2, label %entry.sw.bb_crit_edge
    i8 3, label %entry.sw.bb_crit_edge328
    i8 1, label %sw.bb13
  ]

entry.sw.bb_crit_edge328:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge328
  %action = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 5
  %13 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %action, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp.not = icmp eq i8 %14, 2
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %action, align 8
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %action14 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 5
  %16 = ptrtoint ptr %action14 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %action14, align 8
  %.off = add i8 %17, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then22, label %sw.bb13.sw.epilog_crit_edge

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then22:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %action14 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %action14, align 8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv9 = zext i8 %11 to i32
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %20, i32 noundef 0, ptr noundef nonnull @.str.41, i32 noundef %conv9) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then22, %sw.bb13.sw.epilog_crit_edge, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %call = tail call i32 @iwl_tx_ant_restriction(ptr noundef %priv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp30 = icmp eq i32 %call, 1
  br i1 %cmp30, label %land.lhs.true, label %sw.epilog.if.end43_crit_edge

sw.epilog.if.end43_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

land.lhs.true:                                    ; preds = %sw.epilog
  %action32 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 5
  %21 = ptrtoint ptr %action32 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %action32, align 8
  %23 = add i8 %22, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %23)
  %24 = icmp ult i8 %23, -3
  br i1 %24, label %if.then41, label %land.lhs.true.if.end43_crit_edge

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then41:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %action32 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %action32, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %land.lhs.true.if.end43_crit_edge, %sw.epilog.if.end43_crit_edge
  %bt_full_concurrent = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 88
  %26 = ptrtoint ptr %bt_full_concurrent to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bt_full_concurrent, align 1, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp eq i8 %27, 0
  br i1 %tobool.not, label %if.end43.if.end57_crit_edge, label %land.lhs.true45

if.end43.if.end57_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

land.lhs.true45:                                  ; preds = %if.end43
  %action46 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 5
  %28 = ptrtoint ptr %action46 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %action46, align 8
  %30 = add i8 %29, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %30)
  %31 = icmp ult i8 %30, -3
  br i1 %31, label %if.then55, label %land.lhs.true45.if.end57_crit_edge

land.lhs.true45.if.end57_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then55:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %action46 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %action46, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %land.lhs.true45.if.end57_crit_edge, %if.end43.if.end57_crit_edge
  %action58 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 5
  %33 = ptrtoint ptr %action58 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %action58, align 8
  %action_counter = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 12
  %dev159 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %is_SGI162 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub, i32 2
  %ant_type163 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub, i32 1
  %and6.i314 = and i8 %7, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %and6.i314)
  %cmp.i315.not = icmp eq i8 %and6.i314, 7
  %is_ht40 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 3
  %is_SGI = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 2
  %last_tpt = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 4
  %expected_tpt = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub, i32 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp70 = icmp ult i8 %9, 3
  %success_ratio = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 9, i32 %index, i32 2
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog173.for.cond_crit_edge, %if.end57
  %35 = phi i8 [ %spec.select, %sw.epilog173.for.cond_crit_edge ], [ %34, %if.end57 ]
  %36 = ptrtoint ptr %action_counter to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %action_counter, align 8
  %inc = add i8 %37, 1
  store i8 %inc, ptr %action_counter, align 8
  %38 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.129)
  switch i8 %35, label %for.cond.sw.epilog173_crit_edge [
    i8 0, label %for.cond.do.end65_crit_edge
    i8 1, label %for.cond.do.end65_crit_edge329
    i8 2, label %for.cond.do.end87_crit_edge
    i8 3, label %for.cond.do.end87_crit_edge330
    i8 4, label %for.cond.do.end87_crit_edge331
    i8 5, label %sw.bb115
    i8 6, label %do.end158
  ]

for.cond.do.end87_crit_edge331:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end87

for.cond.do.end87_crit_edge330:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end87

for.cond.do.end87_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end87

for.cond.do.end65_crit_edge329:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65

for.cond.do.end65_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65

for.cond.sw.epilog173_crit_edge:                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog173

do.end65:                                         ; preds = %for.cond.do.end65_crit_edge, %for.cond.do.end65_crit_edge329
  %39 = ptrtoint ptr %dev159 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev159, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %40, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_move_mimo2_to_other, ptr noundef nonnull @.str.60) #12
  br i1 %cmp70, label %do.end65.sw.epilog173_crit_edge, label %if.end73

do.end65.sw.epilog173_crit_edge:                  ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog173

if.end73:                                         ; preds = %do.end65
  %41 = ptrtoint ptr %success_ratio to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %success_ratio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12799, i32 %42)
  %cmp74 = icmp sgt i32 %42, 12799
  br i1 %cmp74, label %if.end73.sw.epilog173_crit_edge, label %if.end77

if.end73.sw.epilog173_crit_edge:                  ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog173

if.end77:                                         ; preds = %if.end73
  %43 = call ptr @memcpy(ptr %arrayidx4, ptr %arrayidx, i32 24)
  %44 = ptrtoint ptr %ant_type163 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ant_type163, align 4
  %46 = add i8 %45, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %46)
  %47 = icmp ult i8 %46, 7
  %and6.i.i = and i8 %45, %7
  call void @__sanitizer_cov_trace_cmp1(i8 %and6.i.i, i8 %45)
  %cmp.i.not.i = icmp eq i8 %and6.i.i, %45
  %or.cond319 = select i1 %47, i1 %cmp.i.not.i, i1 false
  br i1 %or.cond319, label %if.end77.while.cond.i_crit_edge, label %if.end77.sw.epilog173_crit_edge

if.end77.sw.epilog173_crit_edge:                  ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog173

if.end77.while.cond.i_crit_edge:                  ; preds = %if.end77
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %if.end77.while.cond.i_crit_edge
  %idxprom.pn.in.i = phi i8 [ %new_ant_type.0.i, %land.rhs.i.while.cond.i_crit_edge ], [ %45, %if.end77.while.cond.i_crit_edge ]
  %idxprom.pn.i = zext i8 %idxprom.pn.in.i to i32
  %new_ant_type.0.in.i = getelementptr [8 x i8], ptr @ant_toggle_lookup, i32 0, i32 %idxprom.pn.i
  %48 = ptrtoint ptr %new_ant_type.0.in.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %new_ant_type.0.i = load i8, ptr %new_ant_type.0.in.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %new_ant_type.0.i, i8 %45)
  %cmp12.not.i = icmp eq i8 %new_ant_type.0.i, %45
  br i1 %cmp12.not.i, label %while.cond.i.sw.epilog173_crit_edge, label %land.rhs.i

while.cond.i.sw.epilog173_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog173

land.rhs.i:                                       ; preds = %while.cond.i
  %and6.i41.i = and i8 %new_ant_type.0.i, %7
  %cmp.i42.not.i = icmp eq i8 %and6.i41.i, %new_ant_type.0.i
  br i1 %cmp.i42.not.i, label %rs_toggle_antenna.exit, label %land.rhs.i.while.cond.i_crit_edge

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

rs_toggle_antenna.exit:                           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %current_rate.le = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub, i32 8
  %conv9.le.i = zext i8 %new_ant_type.0.i to i32
  %49 = ptrtoint ptr %ant_type163 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %new_ant_type.0.i, ptr %ant_type163, align 4
  %50 = ptrtoint ptr %current_rate.le to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %current_rate.le, align 4
  %and.i = and i32 %51, -114689
  %shl.i = shl nuw nsw i32 %conv9.le.i, 14
  %or.i = or i32 %and.i, %shl.i
  store i32 %or.i, ptr %current_rate.le, align 4
  br label %out

do.end87:                                         ; preds = %for.cond.do.end87_crit_edge, %for.cond.do.end87_crit_edge330, %for.cond.do.end87_crit_edge331
  %52 = ptrtoint ptr %dev159 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev159, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %53, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_move_mimo2_to_other, ptr noundef nonnull @.str.61) #12
  %54 = call ptr @memcpy(ptr %arrayidx4, ptr %arrayidx, i32 24)
  %55 = ptrtoint ptr %action58 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %action58, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %56)
  %switch.selectcmp = icmp eq i8 %56, 3
  %switch.select = select i1 %switch.selectcmp, i8 2, i8 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %56)
  %switch.selectcmp323 = icmp eq i8 %56, 2
  %switch.select324 = select i1 %switch.selectcmp323, i8 1, i8 %switch.select
  %57 = ptrtoint ptr %ant_type163 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %switch.select324, ptr %ant_type163, align 4
  %and6.i = and i8 %switch.select324, %7
  call void @__sanitizer_cov_trace_cmp1(i8 %and6.i, i8 %switch.select324)
  %cmp.i.not = icmp eq i8 %and6.i, %switch.select324
  br i1 %cmp.i.not, label %if.end110, label %do.end87.sw.epilog173_crit_edge

do.end87.sw.epilog173_crit_edge:                  ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog173

if.end110:                                        ; preds = %do.end87
  %call111 = tail call fastcc i32 @rs_switch_to_siso(ptr noundef %priv, ptr noundef %lq_sta, ptr noundef %conf, ptr noundef %sta, ptr noundef %arrayidx4, i32 noundef %index)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %cleanup204.critedge309, label %if.end110.sw.epilog173_crit_edge

if.end110.sw.epilog173_crit_edge:                 ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog173

sw.bb115:                                         ; preds = %for.cond
  %58 = ptrtoint ptr %is_ht40 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %is_ht40, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool116.not = icmp eq i8 %59, 0
  %60 = ptrtoint ptr %ht_cap6 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %ht_cap6, align 2
  br i1 %tobool116.not, label %land.lhs.true117, label %land.lhs.true125

land.lhs.true117:                                 ; preds = %sw.bb115
  %62 = and i16 %61, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool119.not = icmp eq i16 %62, 0
  br i1 %tobool119.not, label %land.lhs.true117.sw.epilog173_crit_edge, label %land.lhs.true117.do.end135_crit_edge

land.lhs.true117.do.end135_crit_edge:             ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end135

land.lhs.true117.sw.epilog173_crit_edge:          ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog173

land.lhs.true125:                                 ; preds = %sw.bb115
  %63 = and i16 %61, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool129.not = icmp eq i16 %63, 0
  br i1 %tobool129.not, label %land.lhs.true125.sw.epilog173_crit_edge, label %land.lhs.true125.do.end135_crit_edge

land.lhs.true125.do.end135_crit_edge:             ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end135

land.lhs.true125.sw.epilog173_crit_edge:          ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog173

do.end135:                                        ; preds = %land.lhs.true125.do.end135_crit_edge, %land.lhs.true117.do.end135_crit_edge
  %64 = ptrtoint ptr %dev159 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev159, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %65, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_move_mimo2_to_other, ptr noundef nonnull @.str.62) #12
  %66 = call ptr @memcpy(ptr %arrayidx4, ptr %arrayidx, i32 24)
  %67 = ptrtoint ptr %is_SGI to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %is_SGI, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool139.not = icmp eq i8 %68, 0
  %conv140 = zext i1 %tobool139.not to i8
  %69 = ptrtoint ptr %is_SGI162 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv140, ptr %is_SGI162, align 1
  tail call fastcc void @rs_set_expected_tpt_table(ptr noundef %lq_sta, ptr noundef %arrayidx4)
  %70 = ptrtoint ptr %is_SGI to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %is_SGI, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool143.not = icmp eq i8 %71, 0
  br i1 %tobool143.not, label %do.end135.if.end151_crit_edge, label %if.then144

do.end135.if.end151_crit_edge:                    ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end151

if.then144:                                       ; preds = %do.end135
  %72 = ptrtoint ptr %last_tpt to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %last_tpt, align 4
  %div = sdiv i32 %73, 100
  %74 = ptrtoint ptr %expected_tpt to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %expected_tpt, align 4
  %arrayidx145 = getelementptr i16, ptr %75, i32 %index
  %76 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx145, align 2
  %conv146 = zext i16 %77 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %conv146)
  %cmp147.not = icmp slt i32 %div, %conv146
  br i1 %cmp147.not, label %if.then144.if.end151_crit_edge, label %if.then144.sw.epilog173_crit_edge

if.then144.sw.epilog173_crit_edge:                ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog173

if.then144.if.end151_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end151

if.end151:                                        ; preds = %if.then144.if.end151_crit_edge, %do.end135.if.end151_crit_edge
  %call152 = tail call fastcc i32 @rate_n_flags_from_tbl(ptr noundef %priv, ptr noundef %arrayidx4, i32 noundef %index, i8 noundef zeroext %1)
  %current_rate153 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub, i32 8
  %78 = ptrtoint ptr %current_rate153 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call152, ptr %current_rate153, align 8
  br label %out

do.end158:                                        ; preds = %for.cond
  %79 = ptrtoint ptr %dev159 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev159, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %80, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_move_mimo2_to_other, ptr noundef nonnull @.str.63) #12
  %81 = call ptr @memcpy(ptr %arrayidx4, ptr %arrayidx, i32 24)
  %82 = ptrtoint ptr %is_SGI162 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %is_SGI162, align 1
  %83 = ptrtoint ptr %ant_type163 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 7, ptr %ant_type163, align 4
  br i1 %cmp.i315.not, label %if.end168, label %do.end158.sw.epilog173_crit_edge

do.end158.sw.epilog173_crit_edge:                 ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog173

if.end168:                                        ; preds = %do.end158
  %call169 = tail call fastcc i32 @rs_switch_to_mimo3(ptr noundef %priv, ptr noundef %lq_sta, ptr noundef %conf, ptr noundef %sta, ptr noundef %arrayidx4, i32 noundef %index)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %cleanup204.critedge, label %if.end168.sw.epilog173_crit_edge

if.end168.sw.epilog173_crit_edge:                 ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog173

sw.epilog173:                                     ; preds = %if.end168.sw.epilog173_crit_edge, %do.end158.sw.epilog173_crit_edge, %if.then144.sw.epilog173_crit_edge, %land.lhs.true125.sw.epilog173_crit_edge, %land.lhs.true117.sw.epilog173_crit_edge, %if.end110.sw.epilog173_crit_edge, %do.end87.sw.epilog173_crit_edge, %while.cond.i.sw.epilog173_crit_edge, %if.end77.sw.epilog173_crit_edge, %if.end73.sw.epilog173_crit_edge, %do.end65.sw.epilog173_crit_edge, %for.cond.sw.epilog173_crit_edge
  %84 = ptrtoint ptr %action58 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %action58, align 8
  %inc175 = add i8 %85, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %inc175)
  %cmp178 = icmp ugt i8 %inc175, 6
  %spec.select = select i1 %cmp178, i8 0, i8 %inc175
  %86 = ptrtoint ptr %action58 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %spec.select, ptr %action58, align 8
  %cmp186 = icmp eq i8 %spec.select, %34
  br i1 %cmp186, label %for.end, label %sw.epilog173.for.cond_crit_edge

sw.epilog173.for.cond_crit_edge:                  ; preds = %sw.epilog173
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

for.end:                                          ; preds = %sw.epilog173
  call void @__sanitizer_cov_trace_pc() #14
  %87 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %arrayidx4, align 8
  br label %cleanup204

out:                                              ; preds = %if.end151, %rs_toggle_antenna.exit
  %search_better_tbl = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 3
  %88 = ptrtoint ptr %search_better_tbl to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %search_better_tbl, align 1
  %89 = ptrtoint ptr %action58 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %action58, align 8
  %inc191 = add i8 %90, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %inc191)
  %cmp194 = icmp ugt i8 %inc191, 6
  %spec.select308 = select i1 %cmp194, i8 0, i8 %inc191
  %91 = ptrtoint ptr %action58 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %spec.select308, ptr %action58, align 8
  %action202 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub, i32 5
  %92 = ptrtoint ptr %action202 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %spec.select308, ptr %action202, align 8
  br label %cleanup204

cleanup204.critedge:                              ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #14
  %search_better_tbl.c = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 3
  %93 = ptrtoint ptr %search_better_tbl.c to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %search_better_tbl.c, align 1
  %94 = ptrtoint ptr %action58 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %action58, align 8
  %inc191.c = add i8 %95, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %inc191.c)
  %cmp194.c = icmp ugt i8 %inc191.c, 6
  %spec.select308.c = select i1 %cmp194.c, i8 0, i8 %inc191.c
  %96 = ptrtoint ptr %action58 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %spec.select308.c, ptr %action58, align 8
  br label %cleanup204

cleanup204.critedge309:                           ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  %search_better_tbl.c310 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 3
  %97 = ptrtoint ptr %search_better_tbl.c310 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 1, ptr %search_better_tbl.c310, align 1
  %98 = ptrtoint ptr %action58 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %action58, align 8
  %inc191.c311 = add i8 %99, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %inc191.c311)
  %cmp194.c312 = icmp ugt i8 %inc191.c311, 6
  %spec.select308.c313 = select i1 %cmp194.c312, i8 0, i8 %inc191.c311
  %100 = ptrtoint ptr %action58 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %spec.select308.c313, ptr %action58, align 8
  br label %cleanup204

cleanup204:                                       ; preds = %cleanup204.critedge309, %cleanup204.critedge, %out, %for.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rs_move_mimo3_to_other(ptr noundef %priv, ptr noundef %lq_sta, ptr nocapture noundef readonly %conf, ptr noundef %sta, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %is_green1 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 13
  %0 = ptrtoint ptr %is_green1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_green1, align 1
  %2 = ptrtoint ptr %lq_sta to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lq_sta, align 8
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom
  %sub = sub nsw i32 1, %idxprom
  %arrayidx4 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub
  %ht_cap6 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %nvm_data = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %4 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nvm_data, align 8
  %valid_tx_ant7 = getelementptr inbounds %struct.iwl_nvm_data, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %valid_tx_ant7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %valid_tx_ant7, align 1
  %hw_params = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 17
  %8 = ptrtoint ptr %hw_params to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hw_params, align 8
  %bt_traffic_load = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 85
  %10 = ptrtoint ptr %bt_traffic_load to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bt_traffic_load, align 2
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.130)
  switch i8 %11, label %do.end [
    i8 0, label %entry.sw.epilog_crit_edge
    i8 2, label %entry.sw.bb_crit_edge
    i8 3, label %entry.sw.bb_crit_edge358
    i8 1, label %sw.bb13
  ]

entry.sw.bb_crit_edge358:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge358
  %action = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 5
  %13 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %action, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp.not = icmp eq i8 %14, 2
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %action, align 8
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %action14 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 5
  %16 = ptrtoint ptr %action14 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %action14, align 8
  %.off = add i8 %17, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then22, label %sw.bb13.sw.epilog_crit_edge

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then22:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %action14 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %action14, align 8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv9 = zext i8 %11 to i32
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %20, i32 noundef 0, ptr noundef nonnull @.str.41, i32 noundef %conv9) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then22, %sw.bb13.sw.epilog_crit_edge, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %call = tail call i32 @iwl_tx_ant_restriction(ptr noundef %priv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp30 = icmp eq i32 %call, 1
  br i1 %cmp30, label %land.lhs.true, label %sw.epilog.if.end43_crit_edge

sw.epilog.if.end43_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

land.lhs.true:                                    ; preds = %sw.epilog
  %action32 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 5
  %21 = ptrtoint ptr %action32 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %action32, align 8
  %23 = add i8 %22, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %23)
  %24 = icmp ult i8 %23, -3
  br i1 %24, label %if.then41, label %land.lhs.true.if.end43_crit_edge

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then41:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %action32 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %action32, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %land.lhs.true.if.end43_crit_edge, %sw.epilog.if.end43_crit_edge
  %bt_full_concurrent = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 88
  %26 = ptrtoint ptr %bt_full_concurrent to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bt_full_concurrent, align 1, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp eq i8 %27, 0
  br i1 %tobool.not, label %if.end43.if.end57_crit_edge, label %land.lhs.true45

if.end43.if.end57_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

land.lhs.true45:                                  ; preds = %if.end43
  %action46 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 5
  %28 = ptrtoint ptr %action46 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %action46, align 8
  %30 = add i8 %29, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %30)
  %31 = icmp ult i8 %30, -3
  br i1 %31, label %if.then55, label %land.lhs.true45.if.end57_crit_edge

land.lhs.true45.if.end57_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then55:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %action46 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %action46, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %land.lhs.true45.if.end57_crit_edge, %if.end43.if.end57_crit_edge
  %action58 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 5
  %33 = ptrtoint ptr %action58 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %action58, align 8
  %action_counter = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 12
  %is_ht40 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 3
  %dev170 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %is_SGI173 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 2
  %is_SGI176 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub, i32 2
  %last_tpt = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 4
  %expected_tpt = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub, i32 7
  %ant_type135 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %9)
  %cmp70 = icmp ult i8 %9, 4
  %success_ratio = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom, i32 9, i32 %index, i32 2
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog189.for.cond_crit_edge, %if.end57
  %35 = phi i8 [ %spec.select, %sw.epilog189.for.cond_crit_edge ], [ %34, %if.end57 ]
  %36 = ptrtoint ptr %action_counter to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %action_counter, align 8
  %inc = add i8 %37, 1
  store i8 %inc, ptr %action_counter, align 8
  %38 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.131)
  switch i8 %35, label %for.cond.sw.epilog189_crit_edge [
    i8 0, label %for.cond.do.end65_crit_edge
    i8 1, label %for.cond.do.end65_crit_edge359
    i8 2, label %for.cond.do.end87_crit_edge
    i8 3, label %for.cond.do.end87_crit_edge360
    i8 4, label %for.cond.do.end87_crit_edge361
    i8 5, label %for.cond.do.end119_crit_edge
    i8 6, label %for.cond.do.end119_crit_edge362
    i8 7, label %for.cond.do.end119_crit_edge363
    i8 8, label %sw.bb149
  ]

for.cond.do.end119_crit_edge363:                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end119

for.cond.do.end119_crit_edge362:                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end119

for.cond.do.end119_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end119

for.cond.do.end87_crit_edge361:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end87

for.cond.do.end87_crit_edge360:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end87

for.cond.do.end87_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end87

for.cond.do.end65_crit_edge359:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65

for.cond.do.end65_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65

for.cond.sw.epilog189_crit_edge:                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog189

do.end65:                                         ; preds = %for.cond.do.end65_crit_edge, %for.cond.do.end65_crit_edge359
  %39 = ptrtoint ptr %dev170 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev170, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %40, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_move_mimo3_to_other, ptr noundef nonnull @.str.64) #12
  br i1 %cmp70, label %do.end65.sw.epilog189_crit_edge, label %if.end73

do.end65.sw.epilog189_crit_edge:                  ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog189

if.end73:                                         ; preds = %do.end65
  %41 = ptrtoint ptr %success_ratio to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %success_ratio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12799, i32 %42)
  %cmp74 = icmp sgt i32 %42, 12799
  br i1 %cmp74, label %if.end73.sw.epilog189_crit_edge, label %if.end77

if.end73.sw.epilog189_crit_edge:                  ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog189

if.end77:                                         ; preds = %if.end73
  %43 = call ptr @memcpy(ptr %arrayidx4, ptr %arrayidx, i32 24)
  %44 = ptrtoint ptr %ant_type135 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ant_type135, align 4
  %46 = add i8 %45, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %46)
  %47 = icmp ult i8 %46, 7
  %and6.i.i = and i8 %45, %7
  call void @__sanitizer_cov_trace_cmp1(i8 %and6.i.i, i8 %45)
  %cmp.i.not.i = icmp eq i8 %and6.i.i, %45
  %or.cond344 = select i1 %47, i1 %cmp.i.not.i, i1 false
  br i1 %or.cond344, label %if.end77.while.cond.i_crit_edge, label %if.end77.sw.epilog189_crit_edge

if.end77.sw.epilog189_crit_edge:                  ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog189

if.end77.while.cond.i_crit_edge:                  ; preds = %if.end77
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %if.end77.while.cond.i_crit_edge
  %idxprom.pn.in.i = phi i8 [ %new_ant_type.0.i, %land.rhs.i.while.cond.i_crit_edge ], [ %45, %if.end77.while.cond.i_crit_edge ]
  %idxprom.pn.i = zext i8 %idxprom.pn.in.i to i32
  %new_ant_type.0.in.i = getelementptr [8 x i8], ptr @ant_toggle_lookup, i32 0, i32 %idxprom.pn.i
  %48 = ptrtoint ptr %new_ant_type.0.in.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %new_ant_type.0.i = load i8, ptr %new_ant_type.0.in.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %new_ant_type.0.i, i8 %45)
  %cmp12.not.i = icmp eq i8 %new_ant_type.0.i, %45
  br i1 %cmp12.not.i, label %while.cond.i.sw.epilog189_crit_edge, label %land.rhs.i

while.cond.i.sw.epilog189_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog189

land.rhs.i:                                       ; preds = %while.cond.i
  %and6.i41.i = and i8 %new_ant_type.0.i, %7
  %cmp.i42.not.i = icmp eq i8 %and6.i41.i, %new_ant_type.0.i
  br i1 %cmp.i42.not.i, label %cleanup220.critedge334, label %land.rhs.i.while.cond.i_crit_edge

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

do.end87:                                         ; preds = %for.cond.do.end87_crit_edge, %for.cond.do.end87_crit_edge360, %for.cond.do.end87_crit_edge361
  %49 = ptrtoint ptr %dev170 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev170, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %50, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_move_mimo3_to_other, ptr noundef nonnull @.str.65) #12
  %51 = call ptr @memcpy(ptr %arrayidx4, ptr %arrayidx, i32 24)
  %52 = ptrtoint ptr %action58 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %action58, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %53)
  %switch.selectcmp = icmp eq i8 %53, 3
  %switch.select = select i1 %switch.selectcmp, i8 2, i8 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %53)
  %switch.selectcmp349 = icmp eq i8 %53, 2
  %switch.select350 = select i1 %switch.selectcmp349, i8 1, i8 %switch.select
  %54 = ptrtoint ptr %ant_type135 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %switch.select350, ptr %ant_type135, align 4
  %and6.i = and i8 %switch.select350, %7
  call void @__sanitizer_cov_trace_cmp1(i8 %and6.i, i8 %switch.select350)
  %cmp.i.not = icmp eq i8 %and6.i, %switch.select350
  br i1 %cmp.i.not, label %if.end110, label %do.end87.sw.epilog189_crit_edge

do.end87.sw.epilog189_crit_edge:                  ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog189

if.end110:                                        ; preds = %do.end87
  %call111 = tail call fastcc i32 @rs_switch_to_siso(ptr noundef %priv, ptr noundef %lq_sta, ptr noundef %conf, ptr noundef %sta, ptr noundef %arrayidx4, i32 noundef %index)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %cleanup220.critedge329, label %if.end110.sw.epilog189_crit_edge

if.end110.sw.epilog189_crit_edge:                 ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog189

do.end119:                                        ; preds = %for.cond.do.end119_crit_edge, %for.cond.do.end119_crit_edge362, %for.cond.do.end119_crit_edge363
  %55 = ptrtoint ptr %dev170 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev170, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %56, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_move_mimo3_to_other, ptr noundef nonnull @.str.66) #12
  %57 = call ptr @memcpy(ptr %arrayidx4, ptr %arrayidx, i32 24)
  %58 = ptrtoint ptr %is_SGI176 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %is_SGI176, align 1
  %59 = ptrtoint ptr %action58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %action58, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %60)
  %switch.selectcmp351 = icmp eq i8 %60, 6
  %switch.select352 = select i1 %switch.selectcmp351, i8 5, i8 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %60)
  %switch.selectcmp353 = icmp eq i8 %60, 5
  %switch.select354 = select i1 %switch.selectcmp353, i8 3, i8 %switch.select352
  %61 = ptrtoint ptr %ant_type135 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %switch.select354, ptr %ant_type135, align 4
  %and6.i339 = and i8 %switch.select354, %7
  call void @__sanitizer_cov_trace_cmp1(i8 %and6.i339, i8 %switch.select354)
  %cmp.i340.not = icmp eq i8 %and6.i339, %switch.select354
  br i1 %cmp.i340.not, label %if.end144, label %do.end119.sw.epilog189_crit_edge

do.end119.sw.epilog189_crit_edge:                 ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog189

if.end144:                                        ; preds = %do.end119
  %call145 = tail call fastcc i32 @rs_switch_to_mimo2(ptr noundef %priv, ptr noundef %lq_sta, ptr noundef %conf, ptr noundef %sta, ptr noundef %arrayidx4, i32 noundef %index)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %cleanup220.critedge, label %if.end144.sw.epilog189_crit_edge

if.end144.sw.epilog189_crit_edge:                 ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog189

sw.bb149:                                         ; preds = %for.cond
  %62 = ptrtoint ptr %is_ht40 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %is_ht40, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool150.not = icmp eq i8 %63, 0
  %64 = ptrtoint ptr %ht_cap6 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %ht_cap6, align 2
  br i1 %tobool150.not, label %land.lhs.true151, label %land.lhs.true159

land.lhs.true151:                                 ; preds = %sw.bb149
  %66 = and i16 %65, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool153.not = icmp eq i16 %66, 0
  br i1 %tobool153.not, label %land.lhs.true151.sw.epilog189_crit_edge, label %land.lhs.true151.do.end169_crit_edge

land.lhs.true151.do.end169_crit_edge:             ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end169

land.lhs.true151.sw.epilog189_crit_edge:          ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog189

land.lhs.true159:                                 ; preds = %sw.bb149
  %67 = and i16 %65, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool163.not = icmp eq i16 %67, 0
  br i1 %tobool163.not, label %land.lhs.true159.sw.epilog189_crit_edge, label %land.lhs.true159.do.end169_crit_edge

land.lhs.true159.do.end169_crit_edge:             ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end169

land.lhs.true159.sw.epilog189_crit_edge:          ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog189

do.end169:                                        ; preds = %land.lhs.true159.do.end169_crit_edge, %land.lhs.true151.do.end169_crit_edge
  %68 = ptrtoint ptr %dev170 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev170, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %69, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_move_mimo3_to_other, ptr noundef nonnull @.str.67) #12
  %70 = call ptr @memcpy(ptr %arrayidx4, ptr %arrayidx, i32 24)
  %71 = ptrtoint ptr %is_SGI173 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %is_SGI173, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool174.not = icmp eq i8 %72, 0
  %conv175 = zext i1 %tobool174.not to i8
  %73 = ptrtoint ptr %is_SGI176 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv175, ptr %is_SGI176, align 1
  tail call fastcc void @rs_set_expected_tpt_table(ptr noundef %lq_sta, ptr noundef %arrayidx4)
  %74 = ptrtoint ptr %is_SGI173 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %is_SGI173, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool178.not = icmp eq i8 %75, 0
  br i1 %tobool178.not, label %do.end169.if.end186_crit_edge, label %if.then179

do.end169.if.end186_crit_edge:                    ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end186

if.then179:                                       ; preds = %do.end169
  %76 = ptrtoint ptr %last_tpt to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %last_tpt, align 4
  %div = sdiv i32 %77, 100
  %78 = ptrtoint ptr %expected_tpt to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %expected_tpt, align 4
  %arrayidx180 = getelementptr i16, ptr %79, i32 %index
  %80 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx180, align 2
  %conv181 = zext i16 %81 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %conv181)
  %cmp182.not = icmp slt i32 %div, %conv181
  br i1 %cmp182.not, label %if.then179.if.end186_crit_edge, label %if.then179.sw.epilog189_crit_edge

if.then179.sw.epilog189_crit_edge:                ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog189

if.then179.if.end186_crit_edge:                   ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end186

if.end186:                                        ; preds = %if.then179.if.end186_crit_edge, %do.end169.if.end186_crit_edge
  %call187 = tail call fastcc i32 @rate_n_flags_from_tbl(ptr noundef %priv, ptr noundef %arrayidx4, i32 noundef %index, i8 noundef zeroext %1)
  %current_rate188 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub, i32 8
  %82 = ptrtoint ptr %current_rate188 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call187, ptr %current_rate188, align 8
  %search_better_tbl = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 3
  %83 = ptrtoint ptr %search_better_tbl to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %search_better_tbl, align 1
  %84 = ptrtoint ptr %action58 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %action58, align 8
  %inc207 = add i8 %85, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %inc207)
  %cmp210 = icmp ugt i8 %inc207, 8
  %spec.select328 = select i1 %cmp210, i8 0, i8 %inc207
  %86 = ptrtoint ptr %action58 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %spec.select328, ptr %action58, align 8
  %action218 = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub, i32 5
  %87 = ptrtoint ptr %action218 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %spec.select328, ptr %action218, align 8
  br label %cleanup220

sw.epilog189:                                     ; preds = %if.then179.sw.epilog189_crit_edge, %land.lhs.true159.sw.epilog189_crit_edge, %land.lhs.true151.sw.epilog189_crit_edge, %if.end144.sw.epilog189_crit_edge, %do.end119.sw.epilog189_crit_edge, %if.end110.sw.epilog189_crit_edge, %do.end87.sw.epilog189_crit_edge, %while.cond.i.sw.epilog189_crit_edge, %if.end77.sw.epilog189_crit_edge, %if.end73.sw.epilog189_crit_edge, %do.end65.sw.epilog189_crit_edge, %for.cond.sw.epilog189_crit_edge
  %88 = ptrtoint ptr %action58 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %action58, align 8
  %inc191 = add i8 %89, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %inc191)
  %cmp194 = icmp ugt i8 %inc191, 8
  %spec.select = select i1 %cmp194, i8 0, i8 %inc191
  %90 = ptrtoint ptr %action58 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %spec.select, ptr %action58, align 8
  %cmp202 = icmp eq i8 %spec.select, %34
  br i1 %cmp202, label %for.end, label %sw.epilog189.for.cond_crit_edge

sw.epilog189.for.cond_crit_edge:                  ; preds = %sw.epilog189
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

for.end:                                          ; preds = %sw.epilog189
  call void @__sanitizer_cov_trace_pc() #14
  %91 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %arrayidx4, align 8
  br label %cleanup220

cleanup220.critedge:                              ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #14
  %search_better_tbl.c = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 3
  %92 = ptrtoint ptr %search_better_tbl.c to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %search_better_tbl.c, align 1
  %93 = ptrtoint ptr %action58 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %action58, align 8
  %inc207.c = add i8 %94, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %inc207.c)
  %cmp210.c = icmp ugt i8 %inc207.c, 8
  %spec.select328.c = select i1 %cmp210.c, i8 0, i8 %inc207.c
  %95 = ptrtoint ptr %action58 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %spec.select328.c, ptr %action58, align 8
  br label %cleanup220

cleanup220.critedge329:                           ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  %search_better_tbl.c330 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 3
  %96 = ptrtoint ptr %search_better_tbl.c330 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %search_better_tbl.c330, align 1
  %97 = ptrtoint ptr %action58 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %action58, align 8
  %inc207.c331 = add i8 %98, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %inc207.c331)
  %cmp210.c332 = icmp ugt i8 %inc207.c331, 8
  %spec.select328.c333 = select i1 %cmp210.c332, i8 0, i8 %inc207.c331
  %99 = ptrtoint ptr %action58 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %spec.select328.c333, ptr %action58, align 8
  br label %cleanup220

cleanup220.critedge334:                           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %current_rate.le = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %sub, i32 8
  %conv9.le.i = zext i8 %new_ant_type.0.i to i32
  %100 = ptrtoint ptr %ant_type135 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %new_ant_type.0.i, ptr %ant_type135, align 4
  %101 = ptrtoint ptr %current_rate.le to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %current_rate.le, align 4
  %and.i = and i32 %102, -114689
  %shl.i = shl nuw nsw i32 %conv9.le.i, 14
  %or.i = or i32 %and.i, %shl.i
  store i32 %or.i, ptr %current_rate.le, align 4
  %search_better_tbl.c335 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 3
  %103 = ptrtoint ptr %search_better_tbl.c335 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 1, ptr %search_better_tbl.c335, align 1
  %104 = ptrtoint ptr %action58 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %action58, align 8
  %inc207.c336 = add i8 %105, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %inc207.c336)
  %cmp210.c337 = icmp ugt i8 %inc207.c336, 8
  %spec.select328.c338 = select i1 %cmp210.c337, i8 0, i8 %inc207.c336
  %106 = ptrtoint ptr %action58 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %spec.select328.c338, ptr %action58, align 8
  br label %cleanup220

cleanup220:                                       ; preds = %cleanup220.critedge334, %cleanup220.critedge329, %cleanup220.critedge, %for.end, %if.end186
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rs_set_stay_in_table(ptr nocapture noundef readonly %priv, i8 noundef zeroext %is_legacy, ptr nocapture noundef writeonly %lq_sta) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_set_stay_in_table, ptr noundef nonnull @.str.68) #12
  %stay_in_tbl = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 2
  %2 = ptrtoint ptr %stay_in_tbl to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %stay_in_tbl, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %is_legacy)
  %tobool.not = icmp eq i8 %is_legacy, 0
  %.sink18 = select i1 %tobool.not, i32 1500, i32 160
  %.sink17 = select i1 %tobool.not, i32 400, i32 160
  %.sink = select i1 %tobool.not, i32 4500, i32 480
  %3 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 5
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink18, ptr %3, align 8
  %5 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink17, ptr %5, align 4
  %7 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 7
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %7, align 8
  %table_count = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 8
  %9 = ptrtoint ptr %table_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %table_count, align 4
  %total_failed = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 9
  %10 = ptrtoint ptr %total_failed to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %total_failed, align 8
  %total_success = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 10
  %11 = ptrtoint ptr %total_success to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %total_success, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %conv = zext i32 %12 to i64
  %flush_timer = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 11
  %13 = ptrtoint ptr %flush_timer to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv, ptr %flush_timer, align 8
  %action_counter = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 12
  %14 = ptrtoint ptr %action_counter to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %action_counter, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rs_tl_turn_on_agg(ptr nocapture noundef readonly %priv, i8 noundef zeroext %tid, ptr nocapture noundef %lq_data, ptr noundef %sta) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %tid)
  %cmp = icmp ult i8 %tid, 8
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  %bt_traffic_load.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 85
  %0 = ptrtoint ptr %bt_traffic_load.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bt_traffic_load.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.i = icmp ugt i8 %1, 1
  br i1 %cmp.i, label %do.end.i, label %if.end.i.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = zext i8 %1 to i32
  %dev.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 32768, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_tl_turn_on_agg_for_tid, ptr noundef nonnull @.str.70, i32 noundef %conv.i) #12
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %call.i.i = tail call i32 @jiffies_to_msecs(i32 noundef %4) #12
  %.pre.i = zext i8 %tid to i32
  %arrayidx.i.i = getelementptr %struct.iwl_lq_sta, ptr %lq_data, i32 0, i32 27, i32 %.pre.i
  %rem.i.i = urem i32 %call.i.i, 5
  %sub.i.i = sub i32 %call.i.i, %rem.i.i
  %queue_count.i.i = getelementptr %struct.iwl_lq_sta, ptr %lq_data, i32 0, i32 27, i32 %.pre.i, i32 3
  %5 = ptrtoint ptr %queue_count.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %queue_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.rs_tl_get_load.exit.i_crit_edge, label %if.end3.i.i

if.end.i.i.rs_tl_get_load.exit.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_tl_get_load.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i, align 4
  %cond.i.i = sub i32 %sub.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %cond.i.i)
  %cmp10.i.i = icmp ugt i32 %cond.i.i, 999
  br i1 %cmp10.i.i, label %land.rhs.lr.ph.i.i.i, label %if.end3.i.i.rs_tl_get_load.exit.i_crit_edge

if.end3.i.i.rs_tl_get_load.exit.i_crit_edge:      ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_tl_get_load.exit.i

land.rhs.lr.ph.i.i.i:                             ; preds = %if.end3.i.i
  %sub.i.i.i = add i32 %sub.i.i, -950
  %head.i.i.i = getelementptr %struct.iwl_lq_sta, ptr %lq_data, i32 0, i32 27, i32 %.pre.i, i32 4
  %total.i.i.i = getelementptr %struct.iwl_lq_sta, ptr %lq_data, i32 0, i32 27, i32 %.pre.i, i32 2
  br label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %while.body.i.i.i.land.rhs.i.i.i_crit_edge, %land.rhs.lr.ph.i.i.i
  %add.i27.i.i = phi i32 [ %add.i.i.i, %while.body.i.i.i.land.rhs.i.i.i_crit_edge ], [ %8, %land.rhs.lr.ph.i.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i27.i.i, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp ult i32 %add.i27.i.i, %sub.i.i.i
  br i1 %cmp.i.i.i, label %while.body.i.i.i, label %land.rhs.i.i.i.rs_tl_get_load.exit.i_crit_edge

land.rhs.i.i.i.rs_tl_get_load.exit.i_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_tl_get_load.exit.i

while.body.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %9 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %head.i.i.i, align 1
  %idxprom.i.i.i = zext i8 %10 to i32
  %arrayidx.i.i.i = getelementptr %struct.iwl_lq_sta, ptr %lq_data, i32 0, i32 27, i32 %.pre.i, i32 1, i32 %idxprom.i.i.i
  %11 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i.i, align 4
  %13 = ptrtoint ptr %total.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %total.i.i.i, align 4
  %sub2.i.i.i = sub i32 %14, %12
  store i32 %sub2.i.i.i, ptr %total.i.i.i, align 4
  store i32 0, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %add.i27.i.i, 50
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add.i.i.i, ptr %arrayidx.i.i, align 4
  %16 = ptrtoint ptr %queue_count.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %queue_count.i.i, align 4
  %dec.i.i.i = add i8 %17, -1
  store i8 %dec.i.i.i, ptr %queue_count.i.i, align 4
  %18 = load i8, ptr %head.i.i.i, align 1
  %inc.i.i.i = add i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %inc.i.i.i)
  %cmp12.i.i.i = icmp ugt i8 %inc.i.i.i, 19
  %spec.select.i.i.i = select i1 %cmp12.i.i.i, i8 0, i8 %inc.i.i.i
  %19 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %spec.select.i.i.i, ptr %head.i.i.i, align 1
  %tobool.not.i.i.i = icmp eq i8 %dec.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.body.i.i.i.rs_tl_get_load.exit.i_crit_edge, label %while.body.i.i.i.land.rhs.i.i.i_crit_edge

while.body.i.i.i.land.rhs.i.i.i_crit_edge:        ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i.i

while.body.i.i.i.rs_tl_get_load.exit.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_tl_get_load.exit.i

rs_tl_get_load.exit.i:                            ; preds = %while.body.i.i.i.rs_tl_get_load.exit.i_crit_edge, %land.rhs.i.i.i.rs_tl_get_load.exit.i_crit_edge, %if.end3.i.i.rs_tl_get_load.exit.i_crit_edge, %if.end.i.i.rs_tl_get_load.exit.i_crit_edge
  %dev11.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %20 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev11.i, align 4
  %addr.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %21, i32 noundef 67108864, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_tl_turn_on_agg_for_tid, ptr noundef nonnull @.str.71, ptr noundef %addr.i, i32 noundef %.pre.i) #12
  %conv15.i = zext i8 %tid to i16
  %call.i = tail call i32 @ieee80211_start_tx_ba_session(ptr noundef %sta, i16 noundef zeroext %conv15.i, i16 noundef zeroext 5000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i)
  %cmp16.i = icmp eq i32 %call.i, -11
  br i1 %cmp16.i, label %do.end22.i, label %rs_tl_get_load.exit.i.if.end_crit_edge

rs_tl_get_load.exit.i.if.end_crit_edge:           ; preds = %rs_tl_get_load.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end22.i:                                       ; preds = %rs_tl_get_load.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev11.i, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %23, i32 noundef 0, ptr noundef nonnull @.str.72, i32 noundef %.pre.i) #12
  %call28.i = tail call i32 @ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext %conv15.i) #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %tid to i32
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %25, i32 noundef 0, ptr noundef nonnull @.str.69, i32 noundef %conv, i32 noundef 8) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %do.end22.i, %rs_tl_get_load.exit.i.if.end_crit_edge, %do.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rs_switch_to_siso(ptr noundef %priv, ptr nocapture noundef readonly %lq_sta, ptr nocapture noundef readonly %conf, ptr noundef %sta, ptr nocapture noundef %tbl, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %is_green1 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 13
  %0 = ptrtoint ptr %is_green1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_green1, align 1
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 8
  %width.i = getelementptr inbounds %struct.ieee80211_conf, ptr %conf, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %5, label %lor.lhs.false [
    i32 6, label %entry.cleanup_crit_edge
    i32 7, label %entry.cleanup_crit_edge84
    i32 0, label %entry.cleanup_crit_edge85
  ]

entry.cleanup_crit_edge85:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

entry.cleanup_crit_edge84:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ht_supported = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ht_supported, align 2, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %do.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %10, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_switch_to_siso, ptr noundef nonnull @.str.46) #12
  %is_dup = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 14
  %11 = ptrtoint ptr %is_dup to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_dup, align 2
  %is_dup6 = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 4
  %13 = ptrtoint ptr %is_dup6 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %is_dup6, align 1
  %14 = ptrtoint ptr %tbl to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %tbl, align 8
  %action = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 5
  %15 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %action, align 8
  %max_search = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 6
  %16 = ptrtoint ptr %max_search to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 6, ptr %max_search, align 1
  %active_siso_rate = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 19
  %17 = ptrtoint ptr %active_siso_rate to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %active_siso_rate, align 2
  %call7 = tail call zeroext i1 @iwl_is_ht40_tx_allowed(ptr noundef %priv, ptr noundef %3, ptr noundef %sta) #12
  %spec.select = zext i1 %call7 to i8
  %19 = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 3
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %spec.select, ptr %19, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool11.not = icmp eq i8 %1, 0
  br i1 %tobool11.not, label %do.end.if.end13_crit_edge, label %if.then12

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %is_SGI = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 2
  %21 = ptrtoint ptr %is_SGI to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %is_SGI, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %do.end.if.end13_crit_edge
  tail call fastcc void @rs_set_expected_tpt_table(ptr noundef %lq_sta, ptr noundef %tbl)
  %22 = ptrtoint ptr %lq_sta to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %lq_sta, align 8
  %idxprom.i = zext i8 %23 to i32
  %sext = shl i32 %index, 24
  %idxprom2.i = ashr exact i32 %sext, 24
  %success_ratio.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom.i, i32 9, i32 %idxprom2.i, i32 2
  %24 = ptrtoint ptr %success_ratio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %success_ratio.i, align 4
  %expected_tpt.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom.i, i32 7
  %26 = ptrtoint ptr %expected_tpt.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %expected_tpt.i, align 4
  %arrayidx5.i = getelementptr i16, ptr %27, i32 %idxprom2.i
  %28 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx5.i, align 2
  %expected_tpt6.i = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 7
  %30 = ptrtoint ptr %expected_tpt6.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %expected_tpt6.i, align 4
  %last_tpt.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1921, i32 %25)
  %cmp14.i = icmp slt i32 %25, 1921
  call void @__sanitizer_cov_trace_const_cmp4(i32 10880, i32 %25)
  %cmp17.i = icmp sgt i32 %25, 10880
  call void @__sanitizer_cov_trace_const_cmp4(i32 10880, i32 %25)
  %cmp25.i = icmp slt i32 %25, 10880
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.backedge, %if.end13
  %new_rate.0.i = phi i32 [ 13, %if.end13 ], [ %new_rate.0.i.be, %for.cond.i.backedge ]
  %start_hi.0.i = phi i32 [ 13, %if.end13 ], [ %start_hi.0.i.be, %for.cond.i.backedge ]
  %rate.0.i.in = phi i32 [ %index, %if.end13 ], [ %rate.0.i.in.be, %for.cond.i.backedge ]
  %rate.0.i = trunc i32 %rate.0.i.in to i8
  %32 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tbl, align 8
  %call.i = tail call fastcc zeroext i16 @rs_get_adjacent_rate(ptr noundef %priv, i8 noundef zeroext %rate.0.i, i16 noundef zeroext %18, i32 noundef %33) #12
  %conv7.i = zext i16 %call.i to i32
  %and.i = and i32 %conv7.i, 255
  %34 = lshr i32 %conv7.i, 8
  %sext83 = shl i32 %rate.0.i.in, 24
  %idxprom10.i = ashr exact i32 %sext83, 24
  %arrayidx11.i = getelementptr i16, ptr %31, i32 %idxprom10.i
  %35 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx11.i, align 2
  %conv12.i = zext i16 %36 to i32
  %mul.i = mul nuw nsw i32 %conv12.i, 100
  %37 = ptrtoint ptr %last_tpt.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %last_tpt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %38)
  %cmp.i = icmp sle i32 %mul.i, %38
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp14.i
  %or.cond78.i = select i1 %or.cond.i, i1 true, i1 %cmp17.i
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %29)
  %cmp23.not.i = icmp ugt i16 %36, %29
  %or.cond79.i = select i1 %or.cond78.i, i1 true, i1 %cmp23.not.i
  %cmp23.not.not.i = xor i1 %cmp23.not.i, true
  %brmerge.i = select i1 %cmp25.i, i1 true, i1 %cmp23.not.not.i
  %or.cond80.i = select i1 %or.cond79.i, i1 %brmerge.i, i1 false
  br i1 %or.cond80.i, label %if.else42.i, label %if.then.i

if.then.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %start_hi.0.i)
  %cmp33.not.i = icmp eq i32 %start_hi.0.i, 13
  br i1 %cmp33.not.i, label %if.end.i, label %if.then.i.rs_get_best_rate.exit_crit_edge

if.then.i.rs_get_best_rate.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_get_best_rate.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and.i)
  %cmp37.not.i = icmp eq i32 %and.i, 13
  br i1 %cmp37.not.i, label %if.end.i.rs_get_best_rate.exit_crit_edge, label %if.end.i.for.cond.i.backedge_crit_edge

if.end.i.for.cond.i.backedge_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.backedge

if.end.i.rs_get_best_rate.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_get_best_rate.exit

if.else42.i:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %new_rate.0.i)
  %cmp43.not.i = icmp eq i32 %new_rate.0.i, 13
  br i1 %cmp43.not.i, label %if.else46.i, label %if.else42.i.rs_get_best_rate.exit_crit_edge

if.else42.i.rs_get_best_rate.exit_crit_edge:      ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_get_best_rate.exit

if.else46.i:                                      ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %34)
  %cmp47.not.i = icmp eq i32 %34, 13
  br i1 %cmp47.not.i, label %if.else46.i.rs_get_best_rate.exit_crit_edge, label %if.else46.i.for.cond.i.backedge_crit_edge

if.else46.i.for.cond.i.backedge_crit_edge:        ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.backedge

if.else46.i.rs_get_best_rate.exit_crit_edge:      ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_get_best_rate.exit

for.cond.i.backedge:                              ; preds = %if.else46.i.for.cond.i.backedge_crit_edge, %if.end.i.for.cond.i.backedge_crit_edge
  %new_rate.0.i.be = phi i32 [ %idxprom10.i, %if.end.i.for.cond.i.backedge_crit_edge ], [ 13, %if.else46.i.for.cond.i.backedge_crit_edge ]
  %start_hi.0.i.be = phi i32 [ 13, %if.end.i.for.cond.i.backedge_crit_edge ], [ %34, %if.else46.i.for.cond.i.backedge_crit_edge ]
  %rate.0.i.in.be = phi i32 [ %and.i, %if.end.i.for.cond.i.backedge_crit_edge ], [ %34, %if.else46.i.for.cond.i.backedge_crit_edge ]
  br label %for.cond.i

rs_get_best_rate.exit:                            ; preds = %if.else46.i.rs_get_best_rate.exit_crit_edge, %if.else42.i.rs_get_best_rate.exit_crit_edge, %if.end.i.rs_get_best_rate.exit_crit_edge, %if.then.i.rs_get_best_rate.exit_crit_edge
  %new_rate.2.i = phi i32 [ %idxprom10.i, %if.end.i.rs_get_best_rate.exit_crit_edge ], [ %new_rate.0.i, %if.else42.i.rs_get_best_rate.exit_crit_edge ], [ %start_hi.0.i, %if.then.i.rs_get_best_rate.exit_crit_edge ], [ %idxprom10.i, %if.else46.i.rs_get_best_rate.exit_crit_edge ]
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  %conv20 = zext i16 %18 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %40, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_switch_to_siso, ptr noundef nonnull @.str.47, i32 noundef %new_rate.2.i, i32 noundef %conv20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %new_rate.2.i)
  %cmp = icmp eq i32 %new_rate.2.i, 13
  br i1 %cmp, label %rs_get_best_rate.exit.do.end31_crit_edge, label %lor.lhs.false24

rs_get_best_rate.exit.do.end31_crit_edge:         ; preds = %rs_get_best_rate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end31

lor.lhs.false24:                                  ; preds = %rs_get_best_rate.exit
  %shl = shl nuw i32 1, %new_rate.2.i
  %and = and i32 %shl, %conv20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %lor.lhs.false24.do.end31_crit_edge, label %if.end36

lor.lhs.false24.do.end31_crit_edge:               ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end31

do.end31:                                         ; preds = %lor.lhs.false24.do.end31_crit_edge, %rs_get_best_rate.exit.do.end31_crit_edge
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %42, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_switch_to_siso, ptr noundef nonnull @.str.48, i32 noundef %new_rate.2.i, i32 noundef %conv20) #12
  br label %cleanup

if.end36:                                         ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #14
  %call37 = tail call fastcc i32 @rate_n_flags_from_tbl(ptr noundef %priv, ptr noundef %tbl, i32 noundef %new_rate.2.i, i8 noundef zeroext %1)
  %current_rate = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 8
  %43 = ptrtoint ptr %current_rate to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call37, ptr %current_rate, align 8
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  %conv44 = zext i8 %1 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %45, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_switch_to_siso, ptr noundef nonnull @.str.49, i32 noundef %call37, i32 noundef %conv44) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end31, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge84, %entry.cleanup_crit_edge85
  %retval.0 = phi i32 [ -1, %do.end31 ], [ 0, %if.end36 ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge84 ], [ -1, %entry.cleanup_crit_edge85 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rs_switch_to_mimo2(ptr noundef %priv, ptr nocapture noundef readonly %lq_sta, ptr nocapture noundef readonly %conf, ptr noundef %sta, ptr nocapture noundef %tbl, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %is_green1 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 13
  %0 = ptrtoint ptr %is_green1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_green1, align 1
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 8
  %width.i = getelementptr inbounds %struct.ieee80211_conf, ptr %conf, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %5, label %lor.lhs.false [
    i32 6, label %entry.cleanup_crit_edge
    i32 7, label %entry.cleanup_crit_edge89
    i32 0, label %entry.cleanup_crit_edge90
  ]

entry.cleanup_crit_edge90:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

entry.cleanup_crit_edge89:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ht_supported = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ht_supported, align 2, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %smps_mode = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 15
  %9 = ptrtoint ptr %smps_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %smps_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp = icmp eq i32 %10, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %hw_params = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 17
  %11 = ptrtoint ptr %hw_params to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %hw_params, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp5 = icmp ult i8 %12, 2
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %do.end

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end4
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %14, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_switch_to_mimo2, ptr noundef nonnull @.str.50) #12
  %15 = ptrtoint ptr %tbl to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %tbl, align 8
  %is_dup = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 14
  %16 = ptrtoint ptr %is_dup to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_dup, align 2
  %is_dup12 = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 4
  %18 = ptrtoint ptr %is_dup12 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %is_dup12, align 1
  %action = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 5
  %19 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %action, align 8
  %max_search = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 6
  %20 = ptrtoint ptr %max_search to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 6, ptr %max_search, align 1
  %active_mimo2_rate = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 20
  %21 = ptrtoint ptr %active_mimo2_rate to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %active_mimo2_rate, align 8
  %call13 = tail call zeroext i1 @iwl_is_ht40_tx_allowed(ptr noundef %priv, ptr noundef %3, ptr noundef %sta) #12
  %spec.select = zext i1 %call13 to i8
  %23 = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 3
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %spec.select, ptr %23, align 2
  tail call fastcc void @rs_set_expected_tpt_table(ptr noundef %lq_sta, ptr noundef %tbl)
  %25 = ptrtoint ptr %lq_sta to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %lq_sta, align 8
  %idxprom.i = zext i8 %26 to i32
  %sext = shl i32 %index, 24
  %idxprom2.i = ashr exact i32 %sext, 24
  %success_ratio.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom.i, i32 9, i32 %idxprom2.i, i32 2
  %27 = ptrtoint ptr %success_ratio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %success_ratio.i, align 4
  %expected_tpt.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom.i, i32 7
  %29 = ptrtoint ptr %expected_tpt.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %expected_tpt.i, align 4
  %arrayidx5.i = getelementptr i16, ptr %30, i32 %idxprom2.i
  %31 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx5.i, align 2
  %expected_tpt6.i = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 7
  %33 = ptrtoint ptr %expected_tpt6.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %expected_tpt6.i, align 4
  %last_tpt.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1921, i32 %28)
  %cmp14.i = icmp slt i32 %28, 1921
  call void @__sanitizer_cov_trace_const_cmp4(i32 10880, i32 %28)
  %cmp17.i = icmp sgt i32 %28, 10880
  call void @__sanitizer_cov_trace_const_cmp4(i32 10880, i32 %28)
  %cmp25.i = icmp slt i32 %28, 10880
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.backedge, %do.end
  %new_rate.0.i = phi i32 [ 13, %do.end ], [ %new_rate.0.i.be, %for.cond.i.backedge ]
  %start_hi.0.i = phi i32 [ 13, %do.end ], [ %start_hi.0.i.be, %for.cond.i.backedge ]
  %rate.0.i.in = phi i32 [ %index, %do.end ], [ %rate.0.i.in.be, %for.cond.i.backedge ]
  %rate.0.i = trunc i32 %rate.0.i.in to i8
  %35 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tbl, align 8
  %call.i = tail call fastcc zeroext i16 @rs_get_adjacent_rate(ptr noundef %priv, i8 noundef zeroext %rate.0.i, i16 noundef zeroext %22, i32 noundef %36) #12
  %conv7.i = zext i16 %call.i to i32
  %and.i = and i32 %conv7.i, 255
  %37 = lshr i32 %conv7.i, 8
  %sext88 = shl i32 %rate.0.i.in, 24
  %idxprom10.i = ashr exact i32 %sext88, 24
  %arrayidx11.i = getelementptr i16, ptr %34, i32 %idxprom10.i
  %38 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx11.i, align 2
  %conv12.i = zext i16 %39 to i32
  %mul.i = mul nuw nsw i32 %conv12.i, 100
  %40 = ptrtoint ptr %last_tpt.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %last_tpt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %41)
  %cmp.i = icmp sle i32 %mul.i, %41
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp14.i
  %or.cond78.i = select i1 %or.cond.i, i1 true, i1 %cmp17.i
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %32)
  %cmp23.not.i = icmp ugt i16 %39, %32
  %or.cond79.i = select i1 %or.cond78.i, i1 true, i1 %cmp23.not.i
  %cmp23.not.not.i = xor i1 %cmp23.not.i, true
  %brmerge.i = select i1 %cmp25.i, i1 true, i1 %cmp23.not.not.i
  %or.cond80.i = select i1 %or.cond79.i, i1 %brmerge.i, i1 false
  br i1 %or.cond80.i, label %if.else42.i, label %if.then.i

if.then.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %start_hi.0.i)
  %cmp33.not.i = icmp eq i32 %start_hi.0.i, 13
  br i1 %cmp33.not.i, label %if.end.i, label %if.then.i.rs_get_best_rate.exit_crit_edge

if.then.i.rs_get_best_rate.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_get_best_rate.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and.i)
  %cmp37.not.i = icmp eq i32 %and.i, 13
  br i1 %cmp37.not.i, label %if.end.i.rs_get_best_rate.exit_crit_edge, label %if.end.i.for.cond.i.backedge_crit_edge

if.end.i.for.cond.i.backedge_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.backedge

if.end.i.rs_get_best_rate.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_get_best_rate.exit

if.else42.i:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %new_rate.0.i)
  %cmp43.not.i = icmp eq i32 %new_rate.0.i, 13
  br i1 %cmp43.not.i, label %if.else46.i, label %if.else42.i.rs_get_best_rate.exit_crit_edge

if.else42.i.rs_get_best_rate.exit_crit_edge:      ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_get_best_rate.exit

if.else46.i:                                      ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %37)
  %cmp47.not.i = icmp eq i32 %37, 13
  br i1 %cmp47.not.i, label %if.else46.i.rs_get_best_rate.exit_crit_edge, label %if.else46.i.for.cond.i.backedge_crit_edge

if.else46.i.for.cond.i.backedge_crit_edge:        ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.backedge

if.else46.i.rs_get_best_rate.exit_crit_edge:      ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_get_best_rate.exit

for.cond.i.backedge:                              ; preds = %if.else46.i.for.cond.i.backedge_crit_edge, %if.end.i.for.cond.i.backedge_crit_edge
  %new_rate.0.i.be = phi i32 [ %idxprom10.i, %if.end.i.for.cond.i.backedge_crit_edge ], [ 13, %if.else46.i.for.cond.i.backedge_crit_edge ]
  %start_hi.0.i.be = phi i32 [ 13, %if.end.i.for.cond.i.backedge_crit_edge ], [ %37, %if.else46.i.for.cond.i.backedge_crit_edge ]
  %rate.0.i.in.be = phi i32 [ %and.i, %if.end.i.for.cond.i.backedge_crit_edge ], [ %37, %if.else46.i.for.cond.i.backedge_crit_edge ]
  br label %for.cond.i

rs_get_best_rate.exit:                            ; preds = %if.else46.i.rs_get_best_rate.exit_crit_edge, %if.else42.i.rs_get_best_rate.exit_crit_edge, %if.end.i.rs_get_best_rate.exit_crit_edge, %if.then.i.rs_get_best_rate.exit_crit_edge
  %new_rate.2.i = phi i32 [ %idxprom10.i, %if.end.i.rs_get_best_rate.exit_crit_edge ], [ %new_rate.0.i, %if.else42.i.rs_get_best_rate.exit_crit_edge ], [ %start_hi.0.i, %if.then.i.rs_get_best_rate.exit_crit_edge ], [ %idxprom10.i, %if.else46.i.rs_get_best_rate.exit_crit_edge ]
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %conv24 = zext i16 %22 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %43, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_switch_to_mimo2, ptr noundef nonnull @.str.51, i32 noundef %new_rate.2.i, i32 noundef %conv24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %new_rate.2.i)
  %cmp27 = icmp eq i32 %new_rate.2.i, 13
  br i1 %cmp27, label %rs_get_best_rate.exit.do.end36_crit_edge, label %lor.lhs.false29

rs_get_best_rate.exit.do.end36_crit_edge:         ; preds = %rs_get_best_rate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end36

lor.lhs.false29:                                  ; preds = %rs_get_best_rate.exit
  %shl = shl nuw i32 1, %new_rate.2.i
  %and = and i32 %shl, %conv24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %lor.lhs.false29.do.end36_crit_edge, label %if.end41

lor.lhs.false29.do.end36_crit_edge:               ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end36

do.end36:                                         ; preds = %lor.lhs.false29.do.end36_crit_edge, %rs_get_best_rate.exit.do.end36_crit_edge
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %45, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_switch_to_mimo2, ptr noundef nonnull @.str.52, i32 noundef %new_rate.2.i, i32 noundef %conv24) #12
  br label %cleanup

if.end41:                                         ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #14
  %call42 = tail call fastcc i32 @rate_n_flags_from_tbl(ptr noundef %priv, ptr noundef %tbl, i32 noundef %new_rate.2.i, i8 noundef zeroext %1)
  %current_rate = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 8
  %46 = ptrtoint ptr %current_rate to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call42, ptr %current_rate, align 8
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  %conv49 = sext i8 %1 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %48, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_switch_to_mimo2, ptr noundef nonnull @.str.49, i32 noundef %call42, i32 noundef %conv49) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end36, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge89, %entry.cleanup_crit_edge90
  %retval.0 = phi i32 [ -1, %do.end36 ], [ 0, %if.end41 ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.end4.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge89 ], [ -1, %entry.cleanup_crit_edge90 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rs_switch_to_mimo3(ptr noundef %priv, ptr nocapture noundef readonly %lq_sta, ptr nocapture noundef readonly %conf, ptr noundef %sta, ptr nocapture noundef %tbl, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %is_green1 = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 13
  %0 = ptrtoint ptr %is_green1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_green1, align 1
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 8
  %width.i = getelementptr inbounds %struct.ieee80211_conf, ptr %conf, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %5, label %lor.lhs.false [
    i32 6, label %entry.cleanup_crit_edge
    i32 7, label %entry.cleanup_crit_edge89
    i32 0, label %entry.cleanup_crit_edge90
  ]

entry.cleanup_crit_edge90:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

entry.cleanup_crit_edge89:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ht_supported = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ht_supported, align 2, !range !294
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %smps_mode = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 15
  %9 = ptrtoint ptr %smps_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %smps_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp = icmp eq i32 %10, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %hw_params = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 17
  %11 = ptrtoint ptr %hw_params to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %hw_params, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp5 = icmp ult i8 %12, 3
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %do.end

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end4
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %14, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_switch_to_mimo3, ptr noundef nonnull @.str.53) #12
  %15 = ptrtoint ptr %tbl to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5, ptr %tbl, align 8
  %is_dup = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 14
  %16 = ptrtoint ptr %is_dup to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_dup, align 2
  %is_dup12 = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 4
  %18 = ptrtoint ptr %is_dup12 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %is_dup12, align 1
  %action = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 5
  %19 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %action, align 8
  %max_search = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 6
  %20 = ptrtoint ptr %max_search to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 8, ptr %max_search, align 1
  %active_mimo3_rate = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 21
  %21 = ptrtoint ptr %active_mimo3_rate to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %active_mimo3_rate, align 2
  %call13 = tail call zeroext i1 @iwl_is_ht40_tx_allowed(ptr noundef %priv, ptr noundef %3, ptr noundef %sta) #12
  %spec.select = zext i1 %call13 to i8
  %23 = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 3
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %spec.select, ptr %23, align 2
  tail call fastcc void @rs_set_expected_tpt_table(ptr noundef %lq_sta, ptr noundef %tbl)
  %25 = ptrtoint ptr %lq_sta to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %lq_sta, align 8
  %idxprom.i = zext i8 %26 to i32
  %sext = shl i32 %index, 24
  %idxprom2.i = ashr exact i32 %sext, 24
  %success_ratio.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom.i, i32 9, i32 %idxprom2.i, i32 2
  %27 = ptrtoint ptr %success_ratio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %success_ratio.i, align 4
  %expected_tpt.i = getelementptr %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 26, i32 %idxprom.i, i32 7
  %29 = ptrtoint ptr %expected_tpt.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %expected_tpt.i, align 4
  %arrayidx5.i = getelementptr i16, ptr %30, i32 %idxprom2.i
  %31 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx5.i, align 2
  %expected_tpt6.i = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 7
  %33 = ptrtoint ptr %expected_tpt6.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %expected_tpt6.i, align 4
  %last_tpt.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %lq_sta, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1921, i32 %28)
  %cmp14.i = icmp slt i32 %28, 1921
  call void @__sanitizer_cov_trace_const_cmp4(i32 10880, i32 %28)
  %cmp17.i = icmp sgt i32 %28, 10880
  call void @__sanitizer_cov_trace_const_cmp4(i32 10880, i32 %28)
  %cmp25.i = icmp slt i32 %28, 10880
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.backedge, %do.end
  %new_rate.0.i = phi i32 [ 13, %do.end ], [ %new_rate.0.i.be, %for.cond.i.backedge ]
  %start_hi.0.i = phi i32 [ 13, %do.end ], [ %start_hi.0.i.be, %for.cond.i.backedge ]
  %rate.0.i.in = phi i32 [ %index, %do.end ], [ %rate.0.i.in.be, %for.cond.i.backedge ]
  %rate.0.i = trunc i32 %rate.0.i.in to i8
  %35 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tbl, align 8
  %call.i = tail call fastcc zeroext i16 @rs_get_adjacent_rate(ptr noundef %priv, i8 noundef zeroext %rate.0.i, i16 noundef zeroext %22, i32 noundef %36) #12
  %conv7.i = zext i16 %call.i to i32
  %and.i = and i32 %conv7.i, 255
  %37 = lshr i32 %conv7.i, 8
  %sext88 = shl i32 %rate.0.i.in, 24
  %idxprom10.i = ashr exact i32 %sext88, 24
  %arrayidx11.i = getelementptr i16, ptr %34, i32 %idxprom10.i
  %38 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx11.i, align 2
  %conv12.i = zext i16 %39 to i32
  %mul.i = mul nuw nsw i32 %conv12.i, 100
  %40 = ptrtoint ptr %last_tpt.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %last_tpt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %41)
  %cmp.i = icmp sle i32 %mul.i, %41
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp14.i
  %or.cond78.i = select i1 %or.cond.i, i1 true, i1 %cmp17.i
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %32)
  %cmp23.not.i = icmp ugt i16 %39, %32
  %or.cond79.i = select i1 %or.cond78.i, i1 true, i1 %cmp23.not.i
  %cmp23.not.not.i = xor i1 %cmp23.not.i, true
  %brmerge.i = select i1 %cmp25.i, i1 true, i1 %cmp23.not.not.i
  %or.cond80.i = select i1 %or.cond79.i, i1 %brmerge.i, i1 false
  br i1 %or.cond80.i, label %if.else42.i, label %if.then.i

if.then.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %start_hi.0.i)
  %cmp33.not.i = icmp eq i32 %start_hi.0.i, 13
  br i1 %cmp33.not.i, label %if.end.i, label %if.then.i.rs_get_best_rate.exit_crit_edge

if.then.i.rs_get_best_rate.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_get_best_rate.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and.i)
  %cmp37.not.i = icmp eq i32 %and.i, 13
  br i1 %cmp37.not.i, label %if.end.i.rs_get_best_rate.exit_crit_edge, label %if.end.i.for.cond.i.backedge_crit_edge

if.end.i.for.cond.i.backedge_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.backedge

if.end.i.rs_get_best_rate.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_get_best_rate.exit

if.else42.i:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %new_rate.0.i)
  %cmp43.not.i = icmp eq i32 %new_rate.0.i, 13
  br i1 %cmp43.not.i, label %if.else46.i, label %if.else42.i.rs_get_best_rate.exit_crit_edge

if.else42.i.rs_get_best_rate.exit_crit_edge:      ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_get_best_rate.exit

if.else46.i:                                      ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %37)
  %cmp47.not.i = icmp eq i32 %37, 13
  br i1 %cmp47.not.i, label %if.else46.i.rs_get_best_rate.exit_crit_edge, label %if.else46.i.for.cond.i.backedge_crit_edge

if.else46.i.for.cond.i.backedge_crit_edge:        ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.backedge

if.else46.i.rs_get_best_rate.exit_crit_edge:      ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rs_get_best_rate.exit

for.cond.i.backedge:                              ; preds = %if.else46.i.for.cond.i.backedge_crit_edge, %if.end.i.for.cond.i.backedge_crit_edge
  %new_rate.0.i.be = phi i32 [ %idxprom10.i, %if.end.i.for.cond.i.backedge_crit_edge ], [ 13, %if.else46.i.for.cond.i.backedge_crit_edge ]
  %start_hi.0.i.be = phi i32 [ 13, %if.end.i.for.cond.i.backedge_crit_edge ], [ %37, %if.else46.i.for.cond.i.backedge_crit_edge ]
  %rate.0.i.in.be = phi i32 [ %and.i, %if.end.i.for.cond.i.backedge_crit_edge ], [ %37, %if.else46.i.for.cond.i.backedge_crit_edge ]
  br label %for.cond.i

rs_get_best_rate.exit:                            ; preds = %if.else46.i.rs_get_best_rate.exit_crit_edge, %if.else42.i.rs_get_best_rate.exit_crit_edge, %if.end.i.rs_get_best_rate.exit_crit_edge, %if.then.i.rs_get_best_rate.exit_crit_edge
  %new_rate.2.i = phi i32 [ %idxprom10.i, %if.end.i.rs_get_best_rate.exit_crit_edge ], [ %new_rate.0.i, %if.else42.i.rs_get_best_rate.exit_crit_edge ], [ %start_hi.0.i, %if.then.i.rs_get_best_rate.exit_crit_edge ], [ %idxprom10.i, %if.else46.i.rs_get_best_rate.exit_crit_edge ]
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %conv24 = zext i16 %22 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %43, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_switch_to_mimo3, ptr noundef nonnull @.str.54, i32 noundef %new_rate.2.i, i32 noundef %conv24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %new_rate.2.i)
  %cmp27 = icmp eq i32 %new_rate.2.i, 13
  br i1 %cmp27, label %rs_get_best_rate.exit.do.end36_crit_edge, label %lor.lhs.false29

rs_get_best_rate.exit.do.end36_crit_edge:         ; preds = %rs_get_best_rate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end36

lor.lhs.false29:                                  ; preds = %rs_get_best_rate.exit
  %shl = shl nuw i32 1, %new_rate.2.i
  %and = and i32 %shl, %conv24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %lor.lhs.false29.do.end36_crit_edge, label %if.end41

lor.lhs.false29.do.end36_crit_edge:               ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end36

do.end36:                                         ; preds = %lor.lhs.false29.do.end36_crit_edge, %rs_get_best_rate.exit.do.end36_crit_edge
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %45, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_switch_to_mimo3, ptr noundef nonnull @.str.52, i32 noundef %new_rate.2.i, i32 noundef %conv24) #12
  br label %cleanup

if.end41:                                         ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #14
  %call42 = tail call fastcc i32 @rate_n_flags_from_tbl(ptr noundef %priv, ptr noundef %tbl, i32 noundef %new_rate.2.i, i8 noundef zeroext %1)
  %current_rate = getelementptr inbounds %struct.iwl_scale_tbl_info, ptr %tbl, i32 0, i32 8
  %46 = ptrtoint ptr %current_rate to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call42, ptr %current_rate, align 8
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  %conv49 = sext i8 %1 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %48, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_switch_to_mimo3, ptr noundef nonnull @.str.49, i32 noundef %call42, i32 noundef %conv49) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end36, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge89, %entry.cleanup_crit_edge90
  %retval.0 = phi i32 [ -1, %do.end36 ], [ 0, %if.end41 ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.end4.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge89 ], [ -1, %entry.cleanup_crit_edge90 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iwl_is_ht40_tx_allowed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_start_tx_ba_session(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_stop_tx_ba_session(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u8(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rs_sta_dbgfs_scale_table_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 8
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %idxprom
  %drv = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 1024) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %lq = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 24
  %7 = ptrtoint ptr %lq to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %lq, align 2
  %conv = zext i8 %8 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %call7.i, ptr noundef nonnull @.str.77, i32 noundef %conv)
  %add.ptr2 = getelementptr i8, ptr %call7.i, i32 %call1
  %total_failed = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %total_failed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %total_failed, align 8
  %total_success = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %total_success to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %total_success, align 4
  %active_legacy_rate = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 18
  %13 = ptrtoint ptr %active_legacy_rate to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %active_legacy_rate, align 4
  %conv3 = zext i16 %14 to i32
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr2, ptr noundef nonnull @.str.78, i32 noundef %10, i32 noundef %12, i32 noundef %conv3)
  %add5 = add i32 %call4, %call1
  %add.ptr6 = getelementptr i8, ptr %call7.i, i32 %add5
  %dbg_fixed_rate = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 30
  %15 = ptrtoint ptr %dbg_fixed_rate to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dbg_fixed_rate, align 4
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr6, ptr noundef nonnull @.str.79, i32 noundef %16)
  %add8 = add i32 %call7, %add5
  %add.ptr9 = getelementptr i8, ptr %call7.i, i32 %add8
  %nvm_data = getelementptr inbounds %struct.iwl_priv, ptr %5, i32 0, i32 123
  %17 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nvm_data, align 8
  %valid_tx_ant = getelementptr inbounds %struct.iwl_nvm_data, ptr %18, i32 0, i32 20
  %19 = ptrtoint ptr %valid_tx_ant to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %valid_tx_ant, align 1
  %conv10 = zext i8 %20 to i32
  %and = and i32 %conv10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool11.not, ptr @.str.82, ptr @.str.81
  %and15 = and i32 %conv10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %cond17 = select i1 %tobool16.not, ptr @.str.82, ptr @.str.83
  %and21 = and i32 %conv10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %cond23 = select i1 %tobool22.not, ptr @.str.82, ptr @.str.84
  %call24 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr9, ptr noundef nonnull @.str.80, ptr noundef nonnull %cond, ptr noundef nonnull %cond17, ptr noundef nonnull %cond23)
  %add25 = add i32 %call24, %add8
  %add.ptr26 = getelementptr i8, ptr %call7.i, i32 %add25
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 8
  %23 = add i32 %22, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %24 = icmp ult i32 %23, 2
  %25 = select i1 %24, ptr @.str.86, ptr @.str.87
  %call32 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr26, ptr noundef nonnull @.str.85, ptr noundef nonnull %25)
  %add33 = add i32 %call32, %add25
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 8
  %.off258 = add i32 %27, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off258)
  %switch259 = icmp ult i32 %.off258, 3
  br i1 %switch259, label %if.then44, label %if.end.if.end74_crit_edge

if.end.if.end74_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.then44:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr45 = getelementptr i8, ptr %call7.i, i32 %add33
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp47 = icmp eq i32 %27, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %cmp50 = icmp eq i32 %27, 4
  %cond52 = select i1 %cmp50, ptr @.str.90, ptr @.str.91
  %cond53 = select i1 %cmp47, ptr @.str.89, ptr %cond52
  %call54 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr45, ptr noundef nonnull @.str.88, ptr noundef nonnull %cond53)
  %add55 = add i32 %call54, %add33
  %add.ptr56 = getelementptr i8, ptr %call7.i, i32 %add55
  %is_ht40 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %idxprom, i32 3
  %28 = ptrtoint ptr %is_ht40 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %is_ht40, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool58.not = icmp eq i8 %29, 0
  %cond59 = select i1 %tobool58.not, ptr @.str.93, ptr @.str.92
  %call60 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr56, ptr noundef nonnull @.str.88, ptr noundef nonnull %cond59)
  %add61 = add i32 %call60, %add55
  %add.ptr62 = getelementptr i8, ptr %call7.i, i32 %add61
  %is_SGI = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %idxprom, i32 2
  %30 = ptrtoint ptr %is_SGI to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %is_SGI, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool64.not = icmp eq i8 %31, 0
  %cond65 = select i1 %tobool64.not, ptr @.str.82, ptr @.str.95
  %is_green = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 13
  %32 = ptrtoint ptr %is_green to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %is_green, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool67.not = icmp eq i8 %33, 0
  %cond68 = select i1 %tobool67.not, ptr @.str.82, ptr @.str.96
  %is_agg = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 34
  %34 = ptrtoint ptr %is_agg to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %is_agg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool70.not = icmp eq i8 %35, 0
  %cond71 = select i1 %tobool70.not, ptr @.str.82, ptr @.str.97
  %call72 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr62, ptr noundef nonnull @.str.94, ptr noundef nonnull %cond65, ptr noundef nonnull %cond68, ptr noundef nonnull %cond71)
  %add73 = add i32 %call72, %add61
  br label %if.end74

if.end74:                                         ; preds = %if.then44, %if.end.if.end74_crit_edge
  %desc.0 = phi i32 [ %add73, %if.then44 ], [ %add33, %if.end.if.end74_crit_edge ]
  %add.ptr75 = getelementptr i8, ptr %call7.i, i32 %desc.0
  %last_rate_n_flags = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 33
  %36 = ptrtoint ptr %last_rate_n_flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %last_rate_n_flags, align 8
  %call76 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr75, ptr noundef nonnull @.str.98, i32 noundef %37)
  %add77 = add i32 %call76, %desc.0
  %add.ptr78 = getelementptr i8, ptr %call7.i, i32 %add77
  %general_params = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 24, i32 3
  %38 = ptrtoint ptr %general_params to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %general_params, align 2
  %conv80 = zext i8 %39 to i32
  %mimo_delimiter = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 24, i32 3, i32 1
  %40 = ptrtoint ptr %mimo_delimiter to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %mimo_delimiter, align 1
  %conv83 = zext i8 %41 to i32
  %single_stream_ant_msk = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 24, i32 3, i32 2
  %42 = ptrtoint ptr %single_stream_ant_msk to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %single_stream_ant_msk, align 2
  %conv86 = zext i8 %43 to i32
  %dual_stream_ant_msk = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 24, i32 3, i32 3
  %44 = ptrtoint ptr %dual_stream_ant_msk to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %dual_stream_ant_msk, align 1
  %conv89 = zext i8 %45 to i32
  %call90 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr78, ptr noundef nonnull @.str.99, i32 noundef %conv80, i32 noundef %conv83, i32 noundef %conv86, i32 noundef %conv89)
  %add91 = add i32 %call90, %add77
  %add.ptr92 = getelementptr i8, ptr %call7.i, i32 %add91
  %agg_params = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 24, i32 4
  %46 = ptrtoint ptr %agg_params to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %agg_params, align 2
  %48 = tail call i16 @llvm.bswap.i16(i16 %47)
  %conv94 = zext i16 %48 to i32
  %agg_dis_start_th = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 24, i32 4, i32 1
  %49 = ptrtoint ptr %agg_dis_start_th to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %agg_dis_start_th, align 2
  %conv97 = zext i8 %50 to i32
  %agg_frame_cnt_limit = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 24, i32 4, i32 2
  %51 = ptrtoint ptr %agg_frame_cnt_limit to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %agg_frame_cnt_limit, align 1
  %conv100 = zext i8 %52 to i32
  %call101 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr92, ptr noundef nonnull @.str.100, i32 noundef %conv94, i32 noundef %conv97, i32 noundef %conv100)
  %add102 = add i32 %call101, %add91
  %add.ptr103 = getelementptr i8, ptr %call7.i, i32 %add102
  %start_rate_index = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 24, i32 3, i32 4
  %53 = ptrtoint ptr %start_rate_index to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %start_rate_index, align 2
  %conv107 = zext i8 %54 to i32
  %arrayidx111 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 24, i32 3, i32 4, i32 1
  %55 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx111, align 1
  %conv112 = zext i8 %56 to i32
  %arrayidx116 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 24, i32 3, i32 4, i32 2
  %57 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx116, align 2
  %conv117 = zext i8 %58 to i32
  %arrayidx121 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 24, i32 3, i32 4, i32 3
  %59 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx121, align 1
  %conv122 = zext i8 %60 to i32
  %call123 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr103, ptr noundef nonnull @.str.101, i32 noundef %conv107, i32 noundef %conv112, i32 noundef %conv117, i32 noundef %conv122)
  %add124 = add i32 %call123, %add102
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end74
  %i.0261 = phi i32 [ 0, %if.end74 ], [ %inc, %for.inc.for.body_crit_edge ]
  %desc.1260 = phi i32 [ %add124, %if.end74 ], [ %desc.2, %for.inc.for.body_crit_edge ]
  %arrayidx128 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 24, i32 5, i32 %i.0261
  %61 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %arrayidx128, align 2
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %call129 = tail call fastcc i32 @iwl_hwrate_to_plcp_idx(i32 noundef %63)
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx, align 8
  %.off = add i32 %65, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %add.ptr138 = getelementptr i8, ptr %call7.i, i32 %desc.1260
  %arrayidx143 = getelementptr [13 x %struct.iwl_rate_mcs_info], ptr @iwl_rate_mcs, i32 0, i32 %call129
  br i1 %switch, label %if.then137, label %if.else

if.then137:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %call144 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr138, ptr noundef nonnull @.str.102, i32 noundef %i.0261, i32 noundef %63, ptr noundef %arrayidx143)
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %mcs = getelementptr [13 x %struct.iwl_rate_mcs_info], ptr @iwl_rate_mcs, i32 0, i32 %call129, i32 1
  %call156 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr138, ptr noundef nonnull @.str.103, i32 noundef %i.0261, i32 noundef %63, ptr noundef %arrayidx143, ptr noundef %mcs)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then137
  %call144.pn = phi i32 [ %call144, %if.then137 ], [ %call156, %if.else ]
  %desc.2 = add i32 %call144.pn, %desc.1260
  %inc = add nuw nsw i32 %i.0261, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %call159 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i, i32 noundef %desc.2) #12
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call159, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rs_sta_dbgfs_scale_table_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  %parsed_rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parsed_rate) #12
  %2 = ptrtoint ptr %parsed_rate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %parsed_rate, align 4, !annotation !297
  %drv = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 31
  %3 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drv, align 8
  %5 = call ptr @memset(ptr %buf, i32 0, i32 64)
  %6 = tail call i32 @llvm.umin.i32(i32 %count, i32 63)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %6, i1 noundef zeroext false) #12
  call void @__might_fault(ptr noundef nonnull @.str.107, i32 noundef 156) #12
  %call.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %7 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %6, i32 -1226833920) #16, !srcloc !298
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !293

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %6) #12
  %8 = call i32 @llvm.read_register.i32(metadata !283) #12
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #11, !srcloc !299
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !300
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !301
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %6) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #12, !srcloc !300
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !301
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %6, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %6, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !293

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %6, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.104, ptr noundef nonnull %parsed_rate)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 1
  br i1 %cmp4, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %parsed_rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %parsed_rate, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %.sink = phi i32 [ %13, %if.then5 ], [ 0, %if.end.if.end7_crit_edge ]
  %14 = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 30
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %14, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  %active_legacy_rate.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 18
  %18 = ptrtoint ptr %active_legacy_rate.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 4095, ptr %active_legacy_rate.i, align 4
  %active_siso_rate.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 19
  %19 = ptrtoint ptr %active_siso_rate.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 8144, ptr %active_siso_rate.i, align 2
  %active_mimo2_rate.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 20
  %20 = ptrtoint ptr %active_mimo2_rate.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 8144, ptr %active_mimo2_rate.i, align 8
  %active_mimo3_rate.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 21
  %21 = ptrtoint ptr %active_mimo3_rate.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 8144, ptr %active_mimo3_rate.i, align 2
  %dev.i = getelementptr inbounds %struct.iwl_priv, ptr %4, i32 0, i32 1
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %lq.i = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 24
  %24 = ptrtoint ptr %lq.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %lq.i, align 2
  %conv.i = zext i8 %25 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %23, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.rs_program_fix_rate, ptr noundef nonnull @.str.108, i32 noundef %conv.i, i32 noundef %.sink) #12
  %26 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %if.end7.cleanup_crit_edge, label %if.then.i18

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i18:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @rs_fill_link_cmd(ptr noundef null, ptr noundef %1, i32 noundef %27) #12
  %28 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %drv, align 8
  %call.i = call i32 @iwl_send_lq_cmd(ptr noundef %29, ptr noundef %17, ptr noundef %lq.i, i8 noundef zeroext 1, i1 noundef zeroext false) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i18, %if.end7.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %if.end7.cleanup_crit_edge ], [ %count, %if.then.i18 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parsed_rate) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rs_sta_dbgfs_stats_table_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 1024) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %is_green = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.077 = phi i32 [ 0, %for.cond.preheader ], [ %inc35, %for.body.for.body_crit_edge ]
  %desc.076 = phi i32 [ 0, %for.cond.preheader ], [ %add33.12, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %call7.i, i32 %desc.076
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %1, align 8
  %conv = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.077, i32 %conv)
  %cmp1 = icmp eq i32 %i.077, %conv
  %cond = select i1 %cmp1, ptr @.str.110, ptr @.str.111
  %arrayidx = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 8
  %is_SGI = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 2
  %7 = ptrtoint ptr %is_SGI to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_SGI, align 1
  %conv5 = zext i8 %8 to i32
  %is_ht40 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 3
  %9 = ptrtoint ptr %is_ht40 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_ht40, align 2
  %conv8 = zext i8 %10 to i32
  %is_dup = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 4
  %11 = ptrtoint ptr %is_dup to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_dup, align 1
  %conv11 = zext i8 %12 to i32
  %13 = ptrtoint ptr %is_green to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_green, align 1
  %conv12 = zext i8 %14 to i32
  %current_rate = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 8
  %15 = ptrtoint ptr %current_rate to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %current_rate, align 8
  %call15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.109, ptr noundef nonnull %cond, i32 noundef %6, i32 noundef %conv5, i32 noundef %conv8, i32 noundef %conv11, i32 noundef %conv12, i32 noundef %16)
  %add = add i32 %call15, %desc.076
  %add.ptr20 = getelementptr i8, ptr %call7.i, i32 %add
  %counter = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 0, i32 3
  %17 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %counter, align 8
  %success_counter = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 0, i32 1
  %19 = ptrtoint ptr %success_counter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %success_counter, align 8
  %success_ratio = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 0, i32 2
  %21 = ptrtoint ptr %success_ratio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %success_ratio, align 4
  %call32 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr20, ptr noundef nonnull @.str.112, i32 noundef %18, i32 noundef %20, i32 noundef %22)
  %add33 = add i32 %call32, %add
  %add.ptr20.1 = getelementptr i8, ptr %call7.i, i32 %add33
  %counter.1 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 1, i32 3
  %23 = ptrtoint ptr %counter.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %counter.1, align 8
  %success_counter.1 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 1, i32 1
  %25 = ptrtoint ptr %success_counter.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %success_counter.1, align 8
  %success_ratio.1 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 1, i32 2
  %27 = ptrtoint ptr %success_ratio.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %success_ratio.1, align 4
  %call32.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr20.1, ptr noundef nonnull @.str.112, i32 noundef %24, i32 noundef %26, i32 noundef %28)
  %add33.1 = add i32 %call32.1, %add33
  %add.ptr20.2 = getelementptr i8, ptr %call7.i, i32 %add33.1
  %counter.2 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 2, i32 3
  %29 = ptrtoint ptr %counter.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %counter.2, align 8
  %success_counter.2 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 2, i32 1
  %31 = ptrtoint ptr %success_counter.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %success_counter.2, align 8
  %success_ratio.2 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 2, i32 2
  %33 = ptrtoint ptr %success_ratio.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %success_ratio.2, align 4
  %call32.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr20.2, ptr noundef nonnull @.str.112, i32 noundef %30, i32 noundef %32, i32 noundef %34)
  %add33.2 = add i32 %call32.2, %add33.1
  %add.ptr20.3 = getelementptr i8, ptr %call7.i, i32 %add33.2
  %counter.3 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 3, i32 3
  %35 = ptrtoint ptr %counter.3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %counter.3, align 8
  %success_counter.3 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 3, i32 1
  %37 = ptrtoint ptr %success_counter.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %success_counter.3, align 8
  %success_ratio.3 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 3, i32 2
  %39 = ptrtoint ptr %success_ratio.3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %success_ratio.3, align 4
  %call32.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr20.3, ptr noundef nonnull @.str.112, i32 noundef %36, i32 noundef %38, i32 noundef %40)
  %add33.3 = add i32 %call32.3, %add33.2
  %add.ptr20.4 = getelementptr i8, ptr %call7.i, i32 %add33.3
  %counter.4 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 4, i32 3
  %41 = ptrtoint ptr %counter.4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %counter.4, align 8
  %success_counter.4 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 4, i32 1
  %43 = ptrtoint ptr %success_counter.4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %success_counter.4, align 8
  %success_ratio.4 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 4, i32 2
  %45 = ptrtoint ptr %success_ratio.4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %success_ratio.4, align 4
  %call32.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr20.4, ptr noundef nonnull @.str.112, i32 noundef %42, i32 noundef %44, i32 noundef %46)
  %add33.4 = add i32 %call32.4, %add33.3
  %add.ptr20.5 = getelementptr i8, ptr %call7.i, i32 %add33.4
  %counter.5 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 5, i32 3
  %47 = ptrtoint ptr %counter.5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %counter.5, align 8
  %success_counter.5 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 5, i32 1
  %49 = ptrtoint ptr %success_counter.5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %success_counter.5, align 8
  %success_ratio.5 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 5, i32 2
  %51 = ptrtoint ptr %success_ratio.5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %success_ratio.5, align 4
  %call32.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr20.5, ptr noundef nonnull @.str.112, i32 noundef %48, i32 noundef %50, i32 noundef %52)
  %add33.5 = add i32 %call32.5, %add33.4
  %add.ptr20.6 = getelementptr i8, ptr %call7.i, i32 %add33.5
  %counter.6 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 6, i32 3
  %53 = ptrtoint ptr %counter.6 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %counter.6, align 8
  %success_counter.6 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 6, i32 1
  %55 = ptrtoint ptr %success_counter.6 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %success_counter.6, align 8
  %success_ratio.6 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 6, i32 2
  %57 = ptrtoint ptr %success_ratio.6 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %success_ratio.6, align 4
  %call32.6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr20.6, ptr noundef nonnull @.str.112, i32 noundef %54, i32 noundef %56, i32 noundef %58)
  %add33.6 = add i32 %call32.6, %add33.5
  %add.ptr20.7 = getelementptr i8, ptr %call7.i, i32 %add33.6
  %counter.7 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 7, i32 3
  %59 = ptrtoint ptr %counter.7 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %counter.7, align 8
  %success_counter.7 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 7, i32 1
  %61 = ptrtoint ptr %success_counter.7 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %success_counter.7, align 8
  %success_ratio.7 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 7, i32 2
  %63 = ptrtoint ptr %success_ratio.7 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %success_ratio.7, align 4
  %call32.7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr20.7, ptr noundef nonnull @.str.112, i32 noundef %60, i32 noundef %62, i32 noundef %64)
  %add33.7 = add i32 %call32.7, %add33.6
  %add.ptr20.8 = getelementptr i8, ptr %call7.i, i32 %add33.7
  %counter.8 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 8, i32 3
  %65 = ptrtoint ptr %counter.8 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %counter.8, align 8
  %success_counter.8 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 8, i32 1
  %67 = ptrtoint ptr %success_counter.8 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %success_counter.8, align 8
  %success_ratio.8 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 8, i32 2
  %69 = ptrtoint ptr %success_ratio.8 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %success_ratio.8, align 4
  %call32.8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr20.8, ptr noundef nonnull @.str.112, i32 noundef %66, i32 noundef %68, i32 noundef %70)
  %add33.8 = add i32 %call32.8, %add33.7
  %add.ptr20.9 = getelementptr i8, ptr %call7.i, i32 %add33.8
  %counter.9 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 9, i32 3
  %71 = ptrtoint ptr %counter.9 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %counter.9, align 8
  %success_counter.9 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 9, i32 1
  %73 = ptrtoint ptr %success_counter.9 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %success_counter.9, align 8
  %success_ratio.9 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 9, i32 2
  %75 = ptrtoint ptr %success_ratio.9 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %success_ratio.9, align 4
  %call32.9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr20.9, ptr noundef nonnull @.str.112, i32 noundef %72, i32 noundef %74, i32 noundef %76)
  %add33.9 = add i32 %call32.9, %add33.8
  %add.ptr20.10 = getelementptr i8, ptr %call7.i, i32 %add33.9
  %counter.10 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 10, i32 3
  %77 = ptrtoint ptr %counter.10 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %counter.10, align 8
  %success_counter.10 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 10, i32 1
  %79 = ptrtoint ptr %success_counter.10 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %success_counter.10, align 8
  %success_ratio.10 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 10, i32 2
  %81 = ptrtoint ptr %success_ratio.10 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %success_ratio.10, align 4
  %call32.10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr20.10, ptr noundef nonnull @.str.112, i32 noundef %78, i32 noundef %80, i32 noundef %82)
  %add33.10 = add i32 %call32.10, %add33.9
  %add.ptr20.11 = getelementptr i8, ptr %call7.i, i32 %add33.10
  %counter.11 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 11, i32 3
  %83 = ptrtoint ptr %counter.11 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %counter.11, align 8
  %success_counter.11 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 11, i32 1
  %85 = ptrtoint ptr %success_counter.11 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %success_counter.11, align 8
  %success_ratio.11 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 11, i32 2
  %87 = ptrtoint ptr %success_ratio.11 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %success_ratio.11, align 4
  %call32.11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr20.11, ptr noundef nonnull @.str.112, i32 noundef %84, i32 noundef %86, i32 noundef %88)
  %add33.11 = add i32 %call32.11, %add33.10
  %add.ptr20.12 = getelementptr i8, ptr %call7.i, i32 %add33.11
  %counter.12 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 12, i32 3
  %89 = ptrtoint ptr %counter.12 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %counter.12, align 8
  %success_counter.12 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 12, i32 1
  %91 = ptrtoint ptr %success_counter.12 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %success_counter.12, align 8
  %success_ratio.12 = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %i.077, i32 9, i32 12, i32 2
  %93 = ptrtoint ptr %success_ratio.12 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %success_ratio.12, align 4
  %call32.12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr20.12, ptr noundef nonnull @.str.112, i32 noundef %90, i32 noundef %92, i32 noundef %94)
  %add33.12 = add i32 %call32.12, %add33.11
  %inc35 = add nuw nsw i32 %i.077, 1
  %exitcond.not = icmp eq i32 %inc35, 2
  br i1 %exitcond.not, label %for.end36, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end36:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %call37 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i, i32 noundef %add33.12) #12
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end36, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %for.end36 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rs_sta_dbgfs_rate_scale_data_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buff = alloca [120 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 8
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %idxprom
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %buff) #12
  %4 = call ptr @memset(ptr %buff, i32 255, i32 120)
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 8
  %.off = add i32 %6, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %expected_tpt = getelementptr %struct.iwl_lq_sta, ptr %1, i32 0, i32 26, i32 %idxprom, i32 7
  %7 = ptrtoint ptr %expected_tpt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %expected_tpt, align 4
  %last_txrate_idx = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 32
  %9 = ptrtoint ptr %last_txrate_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %last_txrate_idx, align 4
  %arrayidx6 = getelementptr i16, ptr %8, i32 %10
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx6, align 2
  %conv = zext i16 %12 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %last_txrate_idx9 = getelementptr inbounds %struct.iwl_lq_sta, ptr %1, i32 0, i32 32
  %13 = ptrtoint ptr %last_txrate_idx9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last_txrate_idx9, align 4
  %ieee = getelementptr [13 x %struct.iwl_rate_info], ptr @iwl_rates, i32 0, i32 %14, i32 4
  %15 = ptrtoint ptr %ieee to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ieee, align 1
  %17 = lshr i8 %16, 1
  %18 = zext i8 %17 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ %18, %if.else ], [ %conv, %if.then ]
  %call12 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.113, i32 noundef %.sink)
  %call15 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buff, i32 noundef %call12) #12
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %buff) #12
  ret i32 %call15
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !40, !42, !44, !46, !47, !49, !51, !53, !55, !56, !58, !59, !61, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !83, !85, !87, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !121, !123, !125, !127, !129, !130, !132, !134, !136, !138, !139, !141, !143, !145, !146, !148, !150, !151, !153, !155, !157, !159, !161, !162, !164, !166, !168, !170, !171, !173, !175, !177, !179, !180, !182, !184, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !262, !264, !266, !268, !269, !271, !273, !275, !277, !279, !281}
!llvm.named.register.sp = !{!283}
!llvm.module.flags = !{!284, !285, !286, !287, !288, !289, !290, !291}
!llvm.ident = !{!292}

!0 = !{ptr @iwl_rates, !1, !"iwl_rates", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 78, i32 28}
!2 = !{ptr @__func__.iwl_rs_rate_init, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 2786, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 2826, i32 2}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../include/net/mac80211.h", i32 6355, i32 2}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ant_toggle_lookup, !11, !"ant_toggle_lookup", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 46, i32 17}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 536, i32 4}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 548, i32 3}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 568, i32 5}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 1088, i32 6}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @expected_tpt_legacy, !22, !"expected_tpt_legacy", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 160, i32 18}
!23 = !{ptr @expected_tpt_siso20MHz, !24, !"expected_tpt_siso20MHz", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 164, i32 18}
!25 = !{ptr @expected_tpt_siso40MHz, !26, !"expected_tpt_siso40MHz", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 171, i32 18}
!27 = !{ptr @expected_tpt_mimo2_20MHz, !28, !"expected_tpt_mimo2_20MHz", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 178, i32 18}
!29 = !{ptr @expected_tpt_mimo2_40MHz, !30, !"expected_tpt_mimo2_40MHz", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 185, i32 18}
!31 = !{ptr @expected_tpt_mimo3_20MHz, !32, !"expected_tpt_mimo3_20MHz", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 192, i32 18}
!33 = !{ptr @expected_tpt_mimo3_40MHz, !34, !"expected_tpt_mimo3_40MHz", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 199, i32 18}
!35 = !{ptr @__func__.rs_dbgfs_set_mcs, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3044, i32 4}
!37 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3047, i32 4}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3050, i32 4}
!42 = !{ptr @rs_ht_to_legacy, !43, !"rs_ht_to_legacy", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 36, i32 11}
!44 = !{ptr @__func__.rs_get_adjacent_rate, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 753, i32 3}
!46 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 763, i32 3}
!49 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3270, i32 10}
!51 = !{ptr @rs_ops, !52, !"rs_ops", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3269, i32 38}
!53 = !{ptr @__func__.rs_alloc_sta, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 2753, i32 2}
!55 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @__func__.rs_free_sta, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3024, i32 2}
!58 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3025, i32 2}
!61 = !{ptr @__func__.rs_tx_status, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 882, i32 2}
!63 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.17, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 886, i32 3}
!66 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 889, i32 3}
!68 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 938, i32 3}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 965, i32 3}
!72 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 967, i32 3}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 970, i32 3}
!76 = !{ptr @.str.23, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 972, i32 3}
!78 = !{ptr @__func__.rs_stay_in_table, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 2114, i32 4}
!80 = !{ptr @.str.24, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 2137, i32 5}
!83 = distinct !{null, !84, !"mask", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 449, i32 19}
!85 = !{ptr @__func__.rs_rate_scale_perform, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 2207, i32 2}
!87 = !{ptr @.str.26, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.27, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 2248, i32 2}
!90 = !{ptr @.str.28, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 2254, i32 2}
!92 = !{ptr @.str.29, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 2273, i32 3}
!94 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 2289, i32 3}
!96 = !{ptr @.str.31, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 2314, i32 3}
!98 = !{ptr @.str.32, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 2331, i32 3}
!100 = !{ptr @.str.33, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 2344, i32 4}
!102 = !{ptr @.str.34, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 2360, i32 4}
!104 = !{ptr @.str.35, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 2413, i32 3}
!106 = !{ptr @.str.36, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 2451, i32 5}
!108 = !{ptr @.str.37, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 2516, i32 2}
!110 = !{ptr @.str.38, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 2561, i32 4}
!112 = !{ptr @.str.39, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 2578, i32 4}
!114 = !{ptr @.str.40, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 2594, i32 6}
!116 = !{ptr @.str.41, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 1427, i32 3}
!118 = !{ptr @__func__.rs_move_legacy_other, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 1454, i32 4}
!120 = !{ptr @.str.42, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.43, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 1480, i32 4}
!123 = !{ptr @.str.44, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 1496, i32 4}
!125 = !{ptr @.str.45, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 1521, i32 4}
!127 = !{ptr @__func__.rs_switch_to_siso, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 1356, i32 2}
!129 = !{ptr @.str.46, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.47, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 1375, i32 2}
!132 = !{ptr @.str.48, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 1377, i32 3}
!134 = !{ptr @.str.49, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 1382, i32 2}
!136 = !{ptr @__func__.rs_switch_to_mimo2, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 1252, i32 2}
!138 = !{ptr @.str.50, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.51, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 1269, i32 2}
!141 = !{ptr @.str.52, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 1271, i32 3}
!143 = !{ptr @__func__.rs_switch_to_mimo3, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 1307, i32 2}
!145 = !{ptr @.str.53, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.54, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 1324, i32 2}
!148 = !{ptr @__func__.rs_move_siso_to_other, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 1624, i32 4}
!150 = !{ptr @.str.55, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.56, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 1647, i32 4}
!153 = !{ptr @.str.57, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 1674, i32 4}
!155 = !{ptr @.str.58, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 1681, i32 6}
!157 = !{ptr @.str.59, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 1697, i32 4}
!159 = !{ptr @__func__.rs_move_mimo2_to_other, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 1792, i32 4}
!161 = !{ptr @.str.60, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.61, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 1810, i32 4}
!164 = !{ptr @.str.62, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 1840, i32 4}
!166 = !{ptr @.str.63, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 1864, i32 4}
!168 = !{ptr @__func__.rs_move_mimo3_to_other, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 1960, i32 4}
!170 = !{ptr @.str.64, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.65, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 1976, i32 4}
!173 = !{ptr @.str.66, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 2001, i32 4}
!175 = !{ptr @.str.67, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 2030, i32 4}
!177 = !{ptr @__func__.rs_set_stay_in_table, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 1060, i32 2}
!179 = !{ptr @.str.68, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.69, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 416, i32 3}
!182 = !{ptr @__func__.rs_tl_turn_on_agg_for_tid, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 385, i32 3}
!184 = !{ptr @.str.70, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.71, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 393, i32 2}
!187 = !{ptr @.str.72, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 402, i32 3}
!189 = !{ptr @__func__.rs_get_rate, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 2690, i32 2}
!191 = !{ptr @.str.73, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3246, i32 22}
!193 = !{ptr @.str.74, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3248, i32 22}
!195 = !{ptr @.str.75, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3250, i32 22}
!197 = !{ptr @.str.76, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3252, i32 20}
!199 = !{ptr @rs_sta_dbgfs_scale_table_ops, !200, !"rs_sta_dbgfs_scale_table_ops", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3165, i32 37}
!201 = !{ptr @.str.77, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3101, i32 29}
!203 = !{ptr @.str.78, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3102, i32 29}
!205 = !{ptr @.str.79, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3105, i32 29}
!207 = !{ptr @.str.80, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3107, i32 29}
!209 = !{ptr @.str.81, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3108, i32 47}
!211 = !{ptr @.str.82, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3108, i32 58}
!213 = !{ptr @.str.83, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3109, i32 47}
!215 = !{ptr @.str.84, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3110, i32 47}
!217 = !{ptr @.str.85, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3111, i32 29}
!219 = !{ptr @.str.86, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3112, i32 33}
!221 = !{ptr @.str.87, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3112, i32 44}
!223 = !{ptr @.str.88, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3114, i32 32}
!225 = !{ptr @.str.89, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3115, i32 32}
!227 = !{ptr @.str.90, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3116, i32 34}
!229 = !{ptr @.str.91, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3116, i32 44}
!231 = !{ptr @.str.92, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3118, i32 23}
!233 = !{ptr @.str.93, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3118, i32 33}
!235 = !{ptr @.str.94, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3119, i32 32}
!237 = !{ptr @.str.95, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3120, i32 22}
!239 = !{ptr @.str.96, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3121, i32 27}
!241 = !{ptr @.str.97, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3122, i32 25}
!243 = !{ptr @.str.98, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3124, i32 29}
!245 = !{ptr @.str.99, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3126, i32 29}
!247 = !{ptr @.str.100, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3133, i32 29}
!249 = !{ptr @.str.101, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3140, i32 4}
!251 = !{ptr @.str.102, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3150, i32 31}
!253 = !{ptr @.str.103, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3154, i32 31}
!255 = !{ptr @iwl_rate_mcs, !256, !"iwl_rate_mcs", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 207, i32 39}
!257 = !{ptr @.str.104, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3073, i32 18}
!259 = distinct !{null, !260, !"__already_done", i1 false, i1 false}
!260 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!261 = distinct !{null, !260, !"<string literal>", i1 false, i1 false}
!262 = distinct !{null, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!264 = !{ptr @.str.107, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!266 = !{ptr @__func__.rs_program_fix_rate, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 334, i32 2}
!268 = !{ptr @.str.108, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @rs_sta_dbgfs_stats_table_ops, !270, !"rs_sta_dbgfs_stats_table_ops", i1 false, i1 false}
!270 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3209, i32 37}
!271 = !{ptr @.str.109, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3187, i32 5}
!273 = !{ptr @.str.110, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3189, i32 31}
!275 = !{ptr @.str.111, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3189, i32 37}
!277 = !{ptr @.str.112, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3198, i32 5}
!279 = !{ptr @rs_sta_dbgfs_rate_scale_data_ops, !280, !"rs_sta_dbgfs_rate_scale_data_ops", i1 false, i1 false}
!280 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3235, i32 37}
!281 = !{ptr @.str.113, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rs.c", i32 3225, i32 5}
!283 = !{!"sp"}
!284 = !{i32 1, !"wchar_size", i32 2}
!285 = !{i32 1, !"min_enum_size", i32 4}
!286 = !{i32 8, !"branch-target-enforcement", i32 0}
!287 = !{i32 8, !"sign-return-address", i32 0}
!288 = !{i32 8, !"sign-return-address-all", i32 0}
!289 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!290 = !{i32 7, !"uwtable", i32 1}
!291 = !{i32 7, !"frame-pointer", i32 2}
!292 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!293 = !{!"branch_weights", i32 2000, i32 1}
!294 = !{i8 0, i8 2}
!295 = !{i32 0, i32 33}
!296 = !{!"branch_weights", i32 1, i32 2000}
!297 = !{!"auto-init"}
!298 = !{i64 2152418758, i64 2152418783}
!299 = !{i64 4914313}
!300 = !{i64 4914510}
!301 = !{i64 2152399743}
