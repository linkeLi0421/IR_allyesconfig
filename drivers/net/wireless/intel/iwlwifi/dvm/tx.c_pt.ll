; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/dvm/tx.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/dvm/tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_rate_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.iwl_priv = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.mutex, i32, i8, [32 x i8], [32 x %struct.atomic_t], [1 x i32], ptr, ptr, %struct.list_head, ptr, %struct.iwl_hw_params, i32, i8, [255 x ptr], %struct.iwl_notif_wait_data, %struct.iwl_spectrum_notification, i8, i32, i32, i32, i32, [255 x i32], %struct.iwl_rf_reset, i32, i32, i8, i8, i32, i32, ptr, i32, i32, ptr, i32, ptr, ptr, i32, [6 x i8], i8, i8, i8, i8, [2 x %struct.mac_address], [2 x %struct.iwl_rxon_context], i16, i8, %struct.iwl_sensitivity_data, %struct.iwl_chain_noise_data, [11 x i16], [12 x i16], %struct.iwl_ht_config, i8, i32, %struct.iwl_power_mgr, %struct.iwl_tt_mgmt, i32, [16 x %struct.iwl_station_entry], i32, [16 x [8 x %struct.iwl_tid_data]], %struct.atomic_t, i8, i8, i32, i64, %struct.anon.135, %struct.anon.136, %struct.anon.136, %struct.anon.136, i8, %struct.iwl_rx_phy_res, i32, i8, i8, i8, %struct.reply_tx_error_statistics, %struct.reply_agg_tx_error_statistics, i8, i8, i8, i8, i8, i8, i32, i32, i16, i8, i16, i16, i16, i8, %struct.work_struct, i8, ptr, i8, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, i8, i8, ptr, i32, i32, i8, ptr, ptr, ptr, i32, %struct.work_struct, i32, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.iwl_event_log, %struct.led_classdev, i32, i32, i8, [16 x i8], [16 x i8], i64, i16, i8, %struct.wiphy_wowlan_support, %struct.anon.138, i32 }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
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
%struct.iwl_wipan_noa_data = type { %struct.callback_head, i32, [0 x i8] }
%struct.callback_head = type { ptr, ptr }
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
%struct.iwl_link_quality_cmd = type { i8, i8, i16, %struct.iwl_link_qual_general_params, %struct.iwl_link_qual_agg_params, [16 x %struct.anon.134], i32 }
%struct.iwl_link_qual_general_params = type { i8, i8, i8, i8, [4 x i8] }
%struct.iwl_link_qual_agg_params = type { i16, i8, i8, i32 }
%struct.anon.134 = type { i32 }
%struct.iwl_scale_tbl_info = type { i32, i8, i8, i8, i8, i8, i8, ptr, i32, [13 x %struct.iwl_rate_scale_data] }
%struct.iwl_rate_scale_data = type { i64, i32, i32, i32, i32, i32 }
%struct.iwl_traffic_load = type { i32, [20 x i32], i32, i8, i8 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.iwl_trans = type { i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, [52 x i8], [3 x i32], i8, i8, i8, i8, i8, ptr, i32, i8, %struct.wait_queue_head, i8, i32, ptr, ptr, [50 x i8], ptr, %struct.lockdep_map, %struct.iwl_trans_debug, %struct.iwl_self_init_dram, i32, ptr, %struct.iwl_trans_txqs, [0 x i8] }
%struct.iwl_trans_debug = type { i8, i8, ptr, [32 x ptr], ptr, [2 x i32], i32, [2 x i32], [2 x i32], i32, i32, i32, [5 x %struct.iwl_fw_ini_allocation_tlv], [5 x %struct.iwl_fw_mon], %struct.iwl_dram_data, i8, i32, i64, [64 x ptr], %struct.list_head, [27 x %struct.iwl_dbg_tlv_time_point_data], %struct.list_head, i32, i32, i8, i32 }
%struct.iwl_fw_ini_allocation_tlv = type { %struct.iwl_fw_ini_header, i32, i32, i32, i32, i32 }
%struct.iwl_fw_ini_header = type { i32, i32 }
%struct.iwl_fw_mon = type { i32, ptr }
%struct.iwl_dram_data = type { i32, ptr, i32 }
%struct.iwl_dbg_tlv_time_point_data = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.iwl_self_init_dram = type { ptr, i32, ptr, i32 }
%struct.iwl_trans_txqs = type { [16 x i32], [16 x i32], [512 x ptr], ptr, i32, i8, i8, i8, ptr, %struct.anon.127, %struct.anon.128, %struct.iwl_dma_ptr }
%struct.anon.127 = type { i8, i8, i32 }
%struct.anon.128 = type { i8, i16, i8 }
%struct.iwl_dma_ptr = type { i32, ptr, i32 }
%struct.iwl_device_tx_cmd = type { %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.iwl_tx_cmd = type { i16, i16, i32, %struct.iwl_dram_scratch, i32, i8, i8, i8, i8, [16 x i8], i16, i16, %union.anon.150, i32, i8, i8, i8, i8, %union.anon.151, i16, %union.anon.152 }
%struct.iwl_dram_scratch = type { i8, i8, i16 }
%union.anon.150 = type { i32 }
%union.anon.151 = type { i16 }
%union.anon.152 = type { %struct.anon.155 }
%struct.anon.155 = type { %struct.anon.156, [0 x %struct.ieee80211_hdr] }
%struct.anon.156 = type {}
%struct.iwl_dvm_cfg = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.iwl_nvm_data = type { i32, [6 x i8], i8, i16, i16, i16, i16, [2 x i16], i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, [6 x %struct.ieee80211_supported_band], %struct.anon.137, [0 x %struct.ieee80211_channel] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.anon.137 = type { [2 x %struct.ieee80211_sband_iftype_data], [2 x %struct.ieee80211_sband_iftype_data] }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.101 }>
%struct.anon.101 = type { ptr, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.iwl_trans_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iwl_base_params = type { i32, i16, i16, i8, i16, i32, i8, i8 }
%struct.iwl_trans_txq_scd_cfg = type { i8, i8, i8, i8, i32 }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.iwl_rx_cmd_buffer = type { ptr, i32, i8, i32, i32 }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwlagn_tx_resp = type { i8, i8, i8, i8, i32, i16, i8, [3 x i8], [3 x i8], [3 x i8], i32, i16, i16, i8, i8, i16, %struct.agg_tx_status }
%struct.agg_tx_status = type { i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_tx_info = type { i32, i32, %union.anon.143 }
%union.anon.143 = type { %struct.anon.147, [32 x i8] }
%struct.anon.147 = type { i64 }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.iwl_compressed_ba_resp = type <{ i32, i16, i16, i8, i8, i16, i64, i16, i16, i8, i8, i16 }>

@__func__.iwlagn_tx_skb = private unnamed_addr constant [14 x i8] c"iwlagn_tx_skb\00", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Dropping - RF KILL\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Sending AUTH frame\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Sending ASSOC frame\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Sending REASSOC frame\0A\00", [41 x i8] zeroinitializer }, align 32
@iwlagn_tx_skb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/intel/iwlwifi/dvm/tx.c\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Dropping - INVALID STATION: %pM\0A\00", [63 x i8] zeroinitializer }, align 32
@iwlagn_tx_skb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"TX_CTL_AMPDU while not in AGG: Tx flags = 0x%08x, agg.state = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sta_id = %d, tid = %d seq_num = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@iwlagn_tx_skb.__already_done.9 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Tx while agg.state = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@iwlagn_tx_skb.__already_done.11 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"TX to [%d|%d] Q:%d - seq: 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid station for AGG tid %d\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.iwlagn_tx_agg_stop = private unnamed_addr constant [19 x i8] c"iwlagn_tx_agg_stop\00", align 1
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AGG stop before setup done\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"AGG stop before AGG became operational\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Stopping AGG while state not ON or starting for %d on %d (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"stopping AGG on STA/TID %d/%d but hwq %d not used\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Can't proceed: ssn %d, next_recl = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Can proceed: ssn = next_recl = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Don't disable tx agg: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.iwlagn_tx_agg_start = private unnamed_addr constant [20 x i8] c"iwlagn_tx_agg_start\00", align 1
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TX AGG request on ra = %pM tid = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Start AGG on invalid station\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Start AGG when state is not IWL_AGG_OFF !\0A\00", [53 x i8] zeroinitializer }, align 32
@tid_to_ac = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\02\03\03\02\01\01\00\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"No free aggregation queue for %pM/%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Can't proceed: ssn %d, next_reclaimed = %d\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.iwlagn_tx_agg_flush = private unnamed_addr constant [20 x i8] c"iwlagn_tx_agg_flush\00", align 1
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Flush AGG: sta %d tid %d q %d state %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Couldn't flush the AGG queue\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.iwlagn_tx_agg_oper = private unnamed_addr constant [19 x i8] c"iwlagn_tx_agg_oper\00", align 1
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"priv->agg_tids_count = %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Tx aggregation enabled on ra = %pM tid = %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SUCCESS\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DELAY\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FEW_BYTES\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BT_PRIO\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"QUIET_PERIOD\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CALC_TTAK\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"INTERNAL_CROSSED_RETRY\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SHORT_LIMIT\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LONG_LIMIT\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FIFO_UNDERRUN\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DRAIN_FLOW\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RFKILL_FLUSH\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LIFE_EXPIRE\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DEST_PS\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HOST_ABORTED\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BT_RETRY\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"STA_INVALID\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FRAG_DROPPED\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TID_DISABLE\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FIFO_FLUSHED\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"INSUFFICIENT_CF_POLL\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PASSIVE_NO_RX\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"NO_BEACON_ON_RADAR\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"UNDERRUN_MSK\00", [19 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BT_PRIO_MSK\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FEW_BYTES_MSK\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ABORT_MSK\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LAST_SENT_TTL_MSK\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LAST_SENT_TRY_CNT_MSK\00", [42 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LAST_SENT_BT_KILL_MSK\00", [42 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SCD_QUERY_MSK\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TEST_BAD_CRC32_MSK\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RESPONSE_MSK\00", [19 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DUMP_TX_MSK\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DELAY_TX_MSK\00", [19 x i8] zeroinitializer }, align 32
@iwlagn_rx_reply_tx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"txq_id mismatch: %d %d\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.iwlagn_rx_reply_tx = private unnamed_addr constant [19 x i8] c"iwlagn_rx_reply_tx\00", align 1
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Next reclaimed packet:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"stop all queues: passive channel\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"TXQ %d status %s (0x%08x) rate_n_flags 0x%x retries %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"FrameCnt = %d, idx=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Q: %d, freed %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TXQ %d status %s (0x%08x)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\09\09\09\09initial_rate 0x%x retries %d, idx=%d ssn=%d seq_ctl=0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"BUG_ON scd_flow is bigger than number of queues\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Received BA when not expected\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.iwlagn_rx_reply_compressed_ba = private unnamed_addr constant [30 x i8] c"iwlagn_rx_reply_compressed_ba\00", align 1
@.str.76 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Bad queue mapping txq_id=%d, agg_txq[sta:%d,tid:%d]=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"REPLY_COMPRESSED_BA [%d] Received from %pM, sta_id = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"TID = %d, SeqCtl = %d, bitmap = 0x%llx, scd_flow = %d, scd_ssn = %d sent:%d, acked:%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bogus sent(%d) and ack(%d) count\0A\00", [62 x i8] zeroinitializer }, align 32
@iwlagn_rx_reply_compressed_ba.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwlagn_tx_cmd_build_hwcrypto = private unnamed_addr constant [29 x i8] c"iwlagn_tx_cmd_build_hwcrypto\00", align 1
@.str.80 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Configuring packet for WEP encryption with key %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unknown encode cipher %x\0A\00", [38 x i8] zeroinitializer }, align 32
@iwl_rates = external dso_local local_unnamed_addr constant [13 x %struct.iwl_rate_info], align 1
@rate_lowest_index.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/mac80211.h\00", [41 x i8] zeroinitializer }, align 32
@iwl_trans_tx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.83 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/wireless/intel/iwlwifi/dvm/../iwl-trans.h\00", [42 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s bad state = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.iwl_trans_tx = private unnamed_addr constant [13 x i8] c"iwl_trans_tx\00", align 1
@.str.85 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intel/iwlwifi/dvm/agn.h\00", [51 x i8] zeroinitializer }, align 32
@iwl_trans_txq_enable_cfg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_trans_txq_enable_cfg = private unnamed_addr constant [25 x i8] c"iwl_trans_txq_enable_cfg\00", align 1
@__func__.iwl_rx_reply_tx_agg = private unnamed_addr constant [20 x i8] c"iwl_rx_reply_tx_agg\00", align 1
@.str.86 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"got tx response w/o block-ack\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"receive reply tx w/ bt_kill\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"TXQ %d initial_rate 0x%x ssn %d frm_cnt %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%d: status %s (0x%04x), try-count (0x%01x)\0A\00", [52 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__func__.iwlagn_check_ratid_empty = private unnamed_addr constant [25 x i8] c"iwlagn_check_ratid_empty\00", align 1
@.str.90 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Can continue DELBA flow ssn = next_recl = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Can continue ADDBA flow ssn = next_recl = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@iwl_trans_reclaim.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_trans_reclaim = private unnamed_addr constant [18 x i8] c"iwl_trans_reclaim\00", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.92 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.94 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Tx flush command to flush out all frames\0A\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 20480]
@__sancov_gen_cov_switch_values.96 = internal global [6 x i64] [i64 4, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 16, i64 20480, i64 33792]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 45056]
@__sancov_gen_cov_switch_values.99 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.100 = internal global [25 x i64] [i64 23, i64 8, i64 1, i64 64, i64 65, i64 66, i64 67, i64 68, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135, i64 136, i64 137, i64 138, i64 139, i64 140, i64 141, i64 142, i64 143, i64 144, i64 145]
@__sancov_gen_cov_switch_values.101 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 511, i64 512, i64 1024]
@__sancov_gen_cov_switch_values.102 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 511, i64 512, i64 1024]
@__sancov_gen_cov_switch_values.103 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 511, i64 512, i64 1024]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.105 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 136, i64 144]
@__sancov_gen_cov_switch_values.106 = internal global [24 x i64] [i64 22, i64 8, i64 64, i64 65, i64 66, i64 67, i64 68, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135, i64 136, i64 137, i64 138, i64 139, i64 140, i64 141, i64 142, i64 143, i64 144, i64 145]
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 278, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 286, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 288, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 290, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 295, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 314, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 382, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 385, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 394, i32 7 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 429, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 491, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 508, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 515, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 520, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 531, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 535, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 544, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 562, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 579, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 584, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 591, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [10 x i8] c"tid_to_ac\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 18, i32 17 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 597, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 620, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 648, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 656, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 727, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 733, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 832, i32 10 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 833, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 834, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 835, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 836, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 837, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 838, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 839, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 840, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 841, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 842, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 843, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 844, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 845, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 846, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 847, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 848, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 849, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 850, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 851, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 852, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 853, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 854, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 857, i32 9 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 987, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 988, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 989, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 990, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 991, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 992, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 993, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 994, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 995, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 996, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 997, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 998, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1138, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1167, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1195, i32 5 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1199, i32 5 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1208, i32 5 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1232, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1234, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1237, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1280, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1293, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1305, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1320, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1325, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1337, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 215, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 220, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant [26 x i8] c"../include/net/mac80211.h\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 6355, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1150, i32 6 }
@___asan_gen_.357 = private unnamed_addr constant [57 x i8] c"../drivers/net/wireless/intel/iwlwifi/dvm/../iwl-trans.h\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1151, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/dvm/agn.h\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 281, i32 6 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 932, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 945, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 951, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 969, i32 4 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 757, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 770, i32 4 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 695, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 723, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.390 = private constant [47 x i8] c"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1102, i32 3 }
@llvm.compiler.used = appending global [95 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @tid_to_ac, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tid_to_ac to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwlagn_tx_skb(ptr noundef %priv, ptr noundef %sta, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %contexts = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %vif = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %3 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vif, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drv_priv.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ctx.0 = phi ptr [ %6, %if.then ], [ %contexts, %entry.if.end_crit_edge ]
  %status.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  %7 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool4.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool4.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %10, i32 noundef 8192, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_tx_skb, ptr noundef nonnull @.str) #9
  br label %cleanup446

if.end9:                                          ; preds = %if.end
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %1, align 2
  %13 = and i16 %12, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -20480, i16 %13)
  %cmp.i = icmp eq i16 %13, -20480
  br i1 %cmp.i, label %do.end15, label %if.else

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %dev16 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %14 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev16, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %15, i32 noundef 8388608, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_tx_skb, ptr noundef nonnull @.str.1) #9
  br label %if.end70

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %12)
  %cmp.i594 = icmp ult i16 %12, 1024
  br i1 %cmp.i594, label %do.end24, label %if.else28

do.end24:                                         ; preds = %if.else
  %dev25 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %16 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev25, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %17, i32 noundef 8388608, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_tx_skb, ptr noundef nonnull @.str.2) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %13)
  %cmp.i596 = icmp eq i16 %13, 20480
  br i1 %cmp.i596, label %do.end24.if.then44_crit_edge, label %do.end24.if.end70_crit_edge, !prof !231

do.end24.if.end70_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

do.end24.if.then44_crit_edge:                     ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44

if.else28:                                        ; preds = %if.else
  %18 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i16 %13, label %if.else28.if.end70_crit_edge [
    i16 8192, label %do.end34
    i16 20480, label %if.else28.if.then44_crit_edge
  ], !prof !232

if.else28.if.then44_crit_edge:                    ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44

if.else28.if.end70_crit_edge:                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

do.end34:                                         ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #11
  %dev35 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %19 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev35, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %20, i32 noundef 8388608, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_tx_skb, ptr noundef nonnull @.str.3) #9
  br label %if.end70

if.then44:                                        ; preds = %if.else28.if.then44_crit_edge, %do.end24.if.then44_crit_edge
  %noa_data48 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 36
  %21 = ptrtoint ptr %noa_data48 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %noa_data48, align 4
  %call50 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %land.lhs.true, label %if.then44.do.end59_crit_edge

if.then44.do.end59_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end59

land.lhs.true:                                    ; preds = %if.then44
  %call52 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %land.lhs.true.do.end59_crit_edge, label %land.lhs.true54

land.lhs.true.do.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end59

land.lhs.true54:                                  ; preds = %land.lhs.true
  %.b589 = load i1, ptr @iwlagn_tx_skb.__warned, align 1
  br i1 %.b589, label %land.lhs.true54.do.end59_crit_edge, label %if.then56

land.lhs.true54.do.end59_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end59

if.then56:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwlagn_tx_skb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 295, ptr noundef nonnull @.str.5) #9
  br label %do.end59

do.end59:                                         ; preds = %if.then56, %land.lhs.true54.do.end59_crit_edge, %land.lhs.true.do.end59_crit_edge, %if.then44.do.end59_crit_edge
  %tobool61.not = icmp eq ptr %22, null
  br i1 %tobool61.not, label %do.end59.if.end70_crit_edge, label %land.lhs.true62

do.end59.if.end70_crit_edge:                      ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

land.lhs.true62:                                  ; preds = %do.end59
  %length = getelementptr inbounds %struct.iwl_wipan_noa_data, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length, align 4
  %call63 = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef %24, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp = icmp eq i32 %call63, 0
  br i1 %cmp, label %if.then64, label %land.lhs.true62.if.end70_crit_edge

land.lhs.true62.if.end70_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  %data65 = getelementptr inbounds %struct.iwl_wipan_noa_data, ptr %22, i32 0, i32 2
  %25 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %length, align 4
  %call.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %26) #9
  %27 = call ptr @memcpy(ptr %call.i, ptr %data65, i32 %26)
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then64, %land.lhs.true62.if.end70_crit_edge, %do.end59.if.end70_crit_edge, %do.end34, %if.else28.if.end70_crit_edge, %do.end24.if.end70_crit_edge, %do.end15
  %cmp.i596624 = phi i1 [ false, %do.end24.if.end70_crit_edge ], [ true, %if.then64 ], [ true, %land.lhs.true62.if.end70_crit_edge ], [ true, %do.end59.if.end70_crit_edge ], [ false, %do.end34 ], [ false, %do.end15 ], [ false, %if.else28.if.end70_crit_edge ]
  %hdr.1 = phi ptr [ %1, %do.end24.if.end70_crit_edge ], [ %29, %if.then64 ], [ %1, %land.lhs.true62.if.end70_crit_edge ], [ %1, %do.end59.if.end70_crit_edge ], [ %1, %do.end34 ], [ %1, %do.end15 ], [ %1, %if.else28.if.end70_crit_edge ]
  %call71 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %12) #12
  %30 = and i16 %12, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %30)
  %cmp.i597 = icmp eq i16 %30, 2048
  br i1 %cmp.i597, label %if.else74, label %if.then73

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %bcast_sta_id = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.0, i32 0, i32 18
  %31 = ptrtoint ptr %bcast_sta_id to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bcast_sta_id, align 4
  br label %if.end90

if.else74:                                        ; preds = %if.end70
  %tobool.not.i = icmp eq ptr %sta, null
  br i1 %tobool.not.i, label %iwl_sta_id_or_broadcast.exit, label %iwl_sta_id.exit.i

iwl_sta_id.exit.i:                                ; preds = %if.else74
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %sta_id.i.i = getelementptr inbounds %struct.iwl_station_priv, ptr %drv_priv.i.i, i32 0, i32 7
  %33 = ptrtoint ptr %sta_id.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sta_id.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %34)
  %cmp.i598 = icmp eq i8 %34, -1
  br i1 %cmp.i598, label %iwl_sta_id_or_broadcast.exit.thread, label %iwl_sta_id.exit.i.if.end90_crit_edge, !prof !231

iwl_sta_id.exit.i.if.end90_crit_edge:             ; preds = %iwl_sta_id.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

iwl_sta_id_or_broadcast.exit.thread:              ; preds = %iwl_sta_id.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 249, i32 noundef 9, ptr noundef null) #9
  br label %do.end84

iwl_sta_id_or_broadcast.exit:                     ; preds = %if.else74
  %bcast_sta_id.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.0, i32 0, i32 18
  %35 = ptrtoint ptr %bcast_sta_id.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bcast_sta_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %cmp78 = icmp eq i8 %36, -1
  br i1 %cmp78, label %iwl_sta_id_or_broadcast.exit.do.end84_crit_edge, label %iwl_sta_id_or_broadcast.exit.if.end90_crit_edge

iwl_sta_id_or_broadcast.exit.if.end90_crit_edge:  ; preds = %iwl_sta_id_or_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

iwl_sta_id_or_broadcast.exit.do.end84_crit_edge:  ; preds = %iwl_sta_id_or_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end84

do.end84:                                         ; preds = %iwl_sta_id_or_broadcast.exit.do.end84_crit_edge, %iwl_sta_id_or_broadcast.exit.thread
  %dev85 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %37 = ptrtoint ptr %dev85 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev85, align 4
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr.1, i32 0, i32 2
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %38, i32 noundef 8192, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_tx_skb, ptr noundef nonnull @.str.6, ptr noundef %addr1) #9
  br label %cleanup446

if.end90:                                         ; preds = %iwl_sta_id_or_broadcast.exit.if.end90_crit_edge, %iwl_sta_id.exit.i.if.end90_crit_edge, %if.then73
  %sta_id.0 = phi i8 [ %36, %iwl_sta_id_or_broadcast.exit.if.end90_crit_edge ], [ %32, %if.then73 ], [ %34, %iwl_sta_id.exit.i.if.end90_crit_edge ]
  %tobool91.not = icmp eq ptr %sta, null
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %spec.select = select i1 %tobool91.not, ptr null, ptr %drv_priv
  %tobool95.not = icmp eq ptr %spec.select, null
  br i1 %tobool95.not, label %if.end90.if.end103_crit_edge, label %land.lhs.true96

if.end90.if.end103_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

land.lhs.true96:                                  ; preds = %if.end90
  %asleep = getelementptr inbounds %struct.iwl_station_priv, ptr %spec.select, i32 0, i32 5
  %39 = ptrtoint ptr %asleep to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %asleep, align 1, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool97.not = icmp eq i8 %40, 0
  br i1 %tobool97.not, label %land.lhs.true96.if.end103_crit_edge, label %land.lhs.true99

land.lhs.true96.if.end103_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

land.lhs.true99:                                  ; preds = %land.lhs.true96
  %41 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cb.i, align 8
  %and = and i32 %42, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool100.not = icmp eq i32 %and, 0
  br i1 %tobool100.not, label %land.lhs.true99.if.end103_crit_edge, label %if.then101

land.lhs.true99.if.end103_crit_edge:              ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.then101:                                       ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #11
  %conv102 = zext i8 %sta_id.0 to i32
  tail call void @iwl_sta_modify_sleep_tx_count(ptr noundef %priv, i32 noundef %conv102, i32 noundef 1) #9
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %land.lhs.true99.if.end103_crit_edge, %land.lhs.true96.if.end103_crit_edge, %if.end90.if.end103_crit_edge
  %43 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv, align 8
  %dev_cmd_pool.i = getelementptr inbounds %struct.iwl_trans, ptr %44, i32 0, i32 28
  %45 = ptrtoint ptr %dev_cmd_pool.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_cmd_pool.i, align 4
  %call.i.i599 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %46, i32 noundef 2848) #9
  %tobool105.not = icmp eq ptr %call.i.i599, null
  br i1 %tobool105.not, label %if.end103.cleanup446_crit_edge, label %if.end115, !prof !231

if.end103.cleanup446_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup446

if.end115:                                        ; preds = %if.end103
  %47 = ptrtoint ptr %call.i.i599 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 28, ptr %call.i.i599, align 8
  %payload = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i599, i32 0, i32 1
  %len118 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %48 = ptrtoint ptr %len118 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len118, align 4
  %conv119 = trunc i32 %49 to i16
  %50 = tail call i16 @llvm.bswap.i16(i16 %conv119)
  %51 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %payload, align 4
  %hw_key = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %52 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw_key, align 4
  %tobool121.not = icmp eq ptr %53, null
  br i1 %tobool121.not, label %if.end115.if.end123_crit_edge, label %if.then122

if.end115.if.end123_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123

if.then122:                                       ; preds = %if.end115
  %cipher.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %cipher.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cipher.i, align 8
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %55, label %do.end33.i [
    i32 1027076, label %sw.bb.i
    i32 1027074, label %sw.bb3.i
    i32 1027077, label %sw.bb7.i
    i32 1027073, label %if.then122.sw.bb12.i_crit_edge
  ]

if.then122.sw.bb12.i_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12.i

sw.bb.i:                                          ; preds = %if.then122
  %sec_ctl.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i599, i32 5, i32 0, i32 1
  %57 = ptrtoint ptr %sec_ctl.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 2, ptr %sec_ctl.i, align 1
  %key.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i599, i32 6
  %key1.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %53, i32 0, i32 8
  %keylen.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %53, i32 0, i32 7
  %58 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %keylen.i, align 2
  %conv.i = zext i8 %59 to i32
  %60 = call ptr @memcpy(ptr %key.i, ptr %key1.i, i32 %conv.i)
  %61 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cb.i, align 8
  %and.i = and i32 %62, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i600 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i600, label %sw.bb.i.if.end123_crit_edge, label %if.then.i601

sw.bb.i.if.end123_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123

if.then.i601:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %tx_flags.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i599, i32 2
  %63 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx_flags.i, align 8
  %or.i = or i32 %64, 16384
  store i32 %or.i, ptr %tx_flags.i, align 8
  br label %if.end123

sw.bb3.i:                                         ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #11
  %sec_ctl4.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i599, i32 5, i32 0, i32 1
  %65 = ptrtoint ptr %sec_ctl4.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 3, ptr %sec_ctl4.i, align 1
  %key5.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i599, i32 6
  tail call void @ieee80211_get_tkip_p2k(ptr noundef nonnull %53, ptr noundef %skb, ptr noundef %key5.i) #9
  br label %if.end123

sw.bb7.i:                                         ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #11
  %sec_ctl8.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i599, i32 5, i32 0, i32 1
  %66 = ptrtoint ptr %sec_ctl8.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %sec_ctl8.i, align 1
  %68 = or i8 %67, 8
  store i8 %68, ptr %sec_ctl8.i, align 1
  br label %sw.bb12.i

sw.bb12.i:                                        ; preds = %sw.bb7.i, %if.then122.sw.bb12.i_crit_edge
  %keyidx.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %53, i32 0, i32 5
  %69 = ptrtoint ptr %keyidx.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %keyidx.i, align 1
  %71 = shl i8 %70, 6
  %sec_ctl16.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i599, i32 5, i32 0, i32 1
  %72 = ptrtoint ptr %sec_ctl16.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %sec_ctl16.i, align 1
  %74 = or i8 %73, %71
  %or1856.i = or i8 %74, 1
  store i8 %or1856.i, ptr %sec_ctl16.i, align 1
  %arrayidx.i = getelementptr %struct.iwl_tx_cmd, ptr %payload, i32 0, i32 9, i32 3
  %key21.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %53, i32 0, i32 8
  %keylen23.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %53, i32 0, i32 7
  %75 = ptrtoint ptr %keylen23.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %keylen23.i, align 2
  %conv24.i = zext i8 %76 to i32
  %77 = call ptr @memcpy(ptr %arrayidx.i, ptr %key21.i, i32 %conv24.i)
  %dev.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %78 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev.i, align 4
  %80 = load i8, ptr %keyidx.i, align 1
  %conv27.i = sext i8 %80 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %79, i32 noundef 8388608, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_tx_cmd_build_hwcrypto, ptr noundef nonnull @.str.80, i32 noundef %conv27.i) #9
  br label %if.end123

do.end33.i:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #11
  %dev34.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %81 = ptrtoint ptr %dev34.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev34.i, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %82, i32 noundef 0, ptr noundef nonnull @.str.81, i32 noundef %55) #9
  br label %if.end123

if.end123:                                        ; preds = %do.end33.i, %sw.bb12.i, %sw.bb3.i, %if.then.i601, %sw.bb.i.if.end123_crit_edge, %if.end115.if.end123_crit_edge
  %83 = ptrtoint ptr %hdr.1 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %hdr.1, align 2
  %tx_flags1.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i599, i32 2
  %85 = ptrtoint ptr %tx_flags1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tx_flags1.i, align 8
  %stop_time.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i599, i32 11
  %87 = ptrtoint ptr %stop_time.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -1, ptr %stop_time.i, align 4
  %88 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cb.i, align 8
  %and2.i = and i32 %86, -134217729
  %and.i602 = shl i32 %89, 25
  %90 = and i32 %and.i602, 134217728
  %91 = or i32 %90, %and2.i
  %storemerge.i = xor i32 %91, 134217728
  %92 = and i16 %84, -1024
  %93 = zext i16 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.97)
  switch i16 %92, label %if.else9.i [
    i16 20480, label %if.then3.i
    i16 -31744, label %if.then7.i
  ]

if.then3.i:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  %or4.i = or i32 %storemerge.i, 256
  br label %if.end28.i

if.then7.i:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  %or8.i = or i32 %86, 1207959552
  br label %if.end28.i

if.else9.i:                                       ; preds = %if.end123
  %band.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %94 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %bf.load.i = load i32, ptr %band.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load.i)
  %cmp.i603 = icmp ult i32 %bf.load.i, 536870912
  br i1 %cmp.i603, label %land.lhs.true.i, label %if.else9.i.if.end28.i_crit_edge

if.else9.i.if.end28.i_crit_edge:                  ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

land.lhs.true.i:                                  ; preds = %if.else9.i
  %lib.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 4
  %95 = ptrtoint ptr %lib.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %lib.i, align 8
  %bt_params.i = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %bt_params.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bt_params.i, align 4
  %tobool10.not.i = icmp eq ptr %98, null
  br i1 %tobool10.not.i, label %land.lhs.true.i.if.end28.i_crit_edge, label %land.lhs.true11.i

land.lhs.true.i.if.end28.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %98, align 4, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool14.not.i = icmp eq i8 %100, 0
  br i1 %tobool14.not.i, label %land.lhs.true11.i.if.end28.i_crit_edge, label %land.lhs.true15.i

land.lhs.true11.i.if.end28.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

land.lhs.true15.i:                                ; preds = %land.lhs.true11.i
  %.fr.i = freeze i16 %84
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %.fr.i)
  %cmp.i3.i = icmp ult i16 %.fr.i, 1024
  br i1 %cmp.i3.i, label %land.lhs.true15.i.if.then24.i_crit_edge, label %switch.early.test.i

land.lhs.true15.i.if.then24.i_crit_edge:          ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24.i

switch.early.test.i:                              ; preds = %land.lhs.true15.i
  %101 = zext i16 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.98)
  switch i16 %92, label %lor.lhs.false20.i [
    i16 -20480, label %switch.early.test.i.if.then24.i_crit_edge
    i16 8192, label %switch.early.test.i.if.then24.i_crit_edge680
  ]

switch.early.test.i.if.then24.i_crit_edge680:     ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24.i

switch.early.test.i.if.then24.i_crit_edge:        ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24.i

lor.lhs.false20.i:                                ; preds = %switch.early.test.i
  %flags21.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %102 = ptrtoint ptr %flags21.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %flags21.i, align 8
  %and22.i = and i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %lor.lhs.false20.i.if.end28.i_crit_edge, label %lor.lhs.false20.i.if.then24.i_crit_edge

lor.lhs.false20.i.if.then24.i_crit_edge:          ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24.i

lor.lhs.false20.i.if.end28.i_crit_edge:           ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

if.then24.i:                                      ; preds = %lor.lhs.false20.i.if.then24.i_crit_edge, %switch.early.test.i.if.then24.i_crit_edge, %switch.early.test.i.if.then24.i_crit_edge680, %land.lhs.true15.i.if.then24.i_crit_edge
  %or25.i = or i32 %storemerge.i, 1048576
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then24.i, %lor.lhs.false20.i.if.end28.i_crit_edge, %land.lhs.true11.i.if.end28.i_crit_edge, %land.lhs.true.i.if.end28.i_crit_edge, %if.else9.i.if.end28.i_crit_edge, %if.then7.i, %if.then3.i
  %tx_flags.0.i = phi i32 [ %or4.i, %if.then3.i ], [ %or8.i, %if.then7.i ], [ %storemerge.i, %land.lhs.true.i.if.end28.i_crit_edge ], [ %storemerge.i, %land.lhs.true11.i.if.end28.i_crit_edge ], [ %or25.i, %if.then24.i ], [ %storemerge.i, %lor.lhs.false20.i.if.end28.i_crit_edge ], [ %storemerge.i, %if.else9.i.if.end28.i_crit_edge ]
  %sta_id29.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i599, i32 5
  %104 = ptrtoint ptr %sta_id29.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %sta_id.0, ptr %sta_id29.i, align 4
  %105 = and i16 %84, 4
  %106 = zext i16 %105 to i32
  %107 = shl nuw nsw i32 %106, 20
  %108 = or i32 %tx_flags.0.i, %107
  %109 = and i16 %84, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %109)
  %cmp.i6.i = icmp eq i16 %109, -30720
  br i1 %cmp.i6.i, label %if.then35.i, label %if.else40.i

if.then35.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  %110 = ptrtoint ptr %hdr.1 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %hdr.1, align 2
  %112 = and i16 %111, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %112)
  %cmp.i.i.i = icmp eq i16 %112, 3
  %retval.0.v.i.i = select i1 %cmp.i.i.i, i32 30, i32 24
  %retval.0.i.i = getelementptr i8, ptr %hdr.1, i32 %retval.0.v.i.i
  %113 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %retval.0.i.i, align 1
  %115 = and i8 %114, 15
  %tid_tspec.i = getelementptr inbounds %struct.iwl_tx_cmd, ptr %payload, i32 0, i32 17
  %116 = ptrtoint ptr %tid_tspec.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %tid_tspec.i, align 1
  %and39.i = and i32 %108, -2097153
  br label %if.end50.i

if.else40.i:                                      ; preds = %if.end28.i
  %tid_tspec41.i = getelementptr inbounds %struct.iwl_tx_cmd, ptr %payload, i32 0, i32 17
  %117 = ptrtoint ptr %tid_tspec41.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 8, ptr %tid_tspec41.i, align 1
  %and43.i = and i32 %89, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %if.else47.i, label %if.then45.i

if.then45.i:                                      ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #11
  %or46.i = or i32 %108, 2097152
  br label %if.end50.i

if.else47.i:                                      ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #11
  %and48.i = and i32 %108, -2097153
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.else47.i, %if.then45.i, %if.then35.i
  %tx_flags.2.i = phi i32 [ %and39.i, %if.then35.i ], [ %and48.i, %if.else47.i ], [ %or46.i, %if.then45.i ]
  %flags.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 9
  %118 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %118, i32 2)
  %bf.load.i.i = load i16, ptr %flags.i.i, align 1
  %119 = and i16 %bf.load.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %119)
  %120 = icmp eq i16 %119, 0
  %and11.i.i = and i32 %89, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  %or.cond = select i1 %120, i1 %tobool12.not.i.i, i1 false
  %or.i.i = or i32 %tx_flags.2.i, 16777216
  %tx_flags.3.i = select i1 %or.cond, i32 %tx_flags.2.i, i32 %or.i.i
  %121 = and i16 %84, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %121)
  %cmp.i7.i = icmp eq i16 %121, 0
  br i1 %cmp.i7.i, label %if.then53.i, label %if.else63.i

if.then53.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %84)
  %cmp.i8.i = icmp ult i16 %84, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %92)
  %cmp.i9.i = icmp eq i16 %92, 8192
  %or.cond22.i = or i1 %cmp.i8.i, %cmp.i9.i
  %timeout.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i599, i32 14
  br i1 %or.cond22.i, label %if.then59.i, label %if.else60.i

if.then59.i:                                      ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 768, ptr %timeout.i, align 8
  br label %iwlagn_tx_cmd_build_basic.exit

if.else60.i:                                      ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #11
  %123 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 512, ptr %timeout.i, align 8
  br label %iwlagn_tx_cmd_build_basic.exit

if.else63.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  %timeout64.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i599, i32 14
  %124 = ptrtoint ptr %timeout64.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 0, ptr %timeout64.i, align 8
  br label %iwlagn_tx_cmd_build_basic.exit

iwlagn_tx_cmd_build_basic.exit:                   ; preds = %if.else63.i, %if.else60.i, %if.then59.i
  %and51.i = and i32 %tx_flags.3.i, -983041
  %driver_txop.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i599, i32 14, i32 0, i32 2
  %125 = ptrtoint ptr %driver_txop.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 0, ptr %driver_txop.i, align 2
  %126 = ptrtoint ptr %tx_flags1.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %and51.i, ptr %tx_flags1.i, align 8
  %next_frame_len.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i599, i32 1, i32 0, i32 2
  %127 = ptrtoint ptr %next_frame_len.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 0, ptr %next_frame_len.i, align 2
  %wowlan.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 48
  %128 = ptrtoint ptr %wowlan.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %wowlan.i, align 1, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i604 = icmp ne i8 %129, 0
  %brmerge667 = or i1 %cmp.i596624, %tobool.not.i604
  %.mux = select i1 %tobool.not.i604, i8 7, i8 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31744, i16 %13)
  %cmp.i121.i = icmp eq i16 %13, -31744
  %..i = select i1 %cmp.i121.i, i8 60, i8 15
  %rts_retry_limit.0.i = select i1 %brmerge667, i8 %.mux, i8 60
  %data_retry_limit.0.i = select i1 %brmerge667, i8 %.mux, i8 %..i
  %data_retry_limit13.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i599, i32 13, i32 0, i32 2
  %130 = ptrtoint ptr %data_retry_limit13.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %data_retry_limit.0.i, ptr %data_retry_limit13.i, align 2
  %rts_retry_limit14.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i599, i32 13, i32 0, i32 1
  %131 = ptrtoint ptr %rts_retry_limit14.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %rts_retry_limit.0.i, ptr %rts_retry_limit14.i, align 1
  br i1 %cmp.i597, label %if.then16.i, label %if.else17.i

if.then16.i:                                      ; preds = %iwlagn_tx_cmd_build_basic.exit
  call void @__sanitizer_cov_trace_pc() #11
  %initial_rate_index.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i599, i32 5, i32 0, i32 2
  %132 = ptrtoint ptr %initial_rate_index.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %initial_rate_index.i, align 2
  %or.i606 = or i32 %and51.i, 268435456
  %133 = ptrtoint ptr %tx_flags1.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %or.i606, ptr %tx_flags1.i, align 8
  br label %iwlagn_tx_cmd_build_rate.exit

if.else17.i:                                      ; preds = %iwlagn_tx_cmd_build_basic.exit
  br i1 %cmp.i121.i, label %if.then19.i, label %if.else17.i.if.end23.i_crit_edge

if.else17.i.if.end23.i_crit_edge:                 ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then19.i:                                      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #11
  %or21.i = or i32 %and51.i, 268435456
  %134 = ptrtoint ptr %tx_flags1.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %or21.i, ptr %tx_flags1.i, align 8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then19.i, %if.else17.i.if.end23.i_crit_edge
  %135 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %2, align 8
  %137 = and i16 %bf.load.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %137)
  %tobool28.not.i = icmp ne i16 %137, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %cmp29.i = icmp slt i8 %136, 0
  %or.cond.i = select i1 %tobool28.not.i, i1 true, i1 %cmp29.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %136)
  %cmp32.i = icmp sgt i8 %136, 12
  %or.cond119.i = select i1 %or.cond.i, i1 true, i1 %cmp32.i
  br i1 %or.cond119.i, label %if.then34.i, label %if.end23.i.if.end39.i_crit_edge

if.end23.i.if.end39.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i

if.then34.i:                                      ; preds = %if.end23.i
  %nvm_data.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %138 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %nvm_data.i, align 8
  %band.i608 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %140 = ptrtoint ptr %band.i608 to i32
  call void @__asan_load4_noabort(i32 %140)
  %bf.load35.i = load i32, ptr %band.i608, align 4
  %bf.lshr.i = lshr i32 %bf.load35.i, 29
  %n_bitrates.i.i = getelementptr %struct.iwl_nvm_data, ptr %139, i32 0, i32 26, i32 %bf.lshr.i, i32 4
  %141 = ptrtoint ptr %n_bitrates.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %n_bitrates.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp46.i.i = icmp sgt i32 %142, 0
  br i1 %cmp46.i.i, label %for.body.lr.ph.i.i, label %if.then34.i.land.end.i.i_crit_edge

if.then34.i.land.end.i.i_crit_edge:               ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.then34.i
  br i1 %tobool91.not, label %for.body.lr.ph.i.i.if.then.i.split.i_crit_edge, label %for.body.lr.ph.i.split.i

for.body.lr.ph.i.i.if.then.i.split.i_crit_edge:   ; preds = %for.body.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.split.i

for.body.lr.ph.i.split.i:                         ; preds = %for.body.lr.ph.i.i
  %band.i.i = getelementptr %struct.iwl_nvm_data, ptr %139, i32 0, i32 26, i32 %bf.lshr.i, i32 2
  %143 = ptrtoint ptr %band.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %band.i.i, align 4
  %arrayidx.i.i.i = getelementptr [6 x i32], ptr %sta, i32 0, i32 %144
  %145 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx.i.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.split.i
  %i.047.i.i = phi i32 [ 0, %for.body.lr.ph.i.split.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %147 = shl nuw i32 1, %i.047.i.i
  %148 = and i32 %147, %146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool.not.i.i = icmp eq i32 %148, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %for.body.i.i.if.then.i.split.i_crit_edge

for.body.i.i.if.then.i.split.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.split.i

if.then.i.split.i:                                ; preds = %for.body.i.i.if.then.i.split.i_crit_edge, %for.body.lr.ph.i.i.if.then.i.split.i_crit_edge
  %i.047.lcssa.i.split.i = phi i32 [ 0, %for.body.lr.ph.i.i.if.then.i.split.i_crit_edge ], [ %i.047.i.i, %for.body.i.i.if.then.i.split.i_crit_edge ]
  %conv.i.i = trunc i32 %i.047.lcssa.i.split.i to i8
  br label %if.end39.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.047.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %142
  br i1 %exitcond.not.i.i, label %for.inc.i.i.land.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.land.end.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %for.inc.i.i.land.end.i.i_crit_edge, %if.then34.i.land.end.i.i_crit_edge
  %.b43.i.i = load i1, ptr @rate_lowest_index.__already_done, align 1
  br i1 %.b43.i.i, label %land.end.i.i.if.end39.i_crit_edge, label %if.then7.i.i, !prof !234

land.end.i.i.if.end39.i_crit_edge:                ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i

if.then7.i.i:                                     ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rate_lowest_index.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.82, i32 noundef 6355, i32 noundef 9, ptr noundef null) #9
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then7.i.i, %land.end.i.i.if.end39.i_crit_edge, %if.then.i.split.i, %if.end23.i.if.end39.i_crit_edge
  %rate_idx.0.in.i = phi i8 [ %136, %if.end23.i.if.end39.i_crit_edge ], [ %conv.i.i, %if.then.i.split.i ], [ 0, %if.then7.i.i ], [ 0, %land.end.i.i.if.end39.i_crit_edge ]
  %rate_idx.0.i = sext i8 %rate_idx.0.in.i to i32
  %band40.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %149 = ptrtoint ptr %band40.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %bf.load41.i = load i32, ptr %band40.i, align 4
  %bf.lshr42.mask.i = and i32 %bf.load41.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr42.mask.i)
  %cmp43.i = icmp eq i32 %bf.lshr42.mask.i, 536870912
  %add.i = add nsw i32 %rate_idx.0.i, 4
  %spec.select.i = select i1 %cmp43.i, i32 %add.i, i32 %rate_idx.0.i
  %arrayidx47.i = getelementptr [13 x %struct.iwl_rate_info], ptr @iwl_rates, i32 0, i32 %spec.select.i
  %150 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx47.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %spec.select.i)
  %152 = icmp ult i32 %spec.select.i, 4
  %rate_flags.0.i = select i1 %152, i32 512, i32 0
  %lib.i610 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 4
  %153 = ptrtoint ptr %lib.i610 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %lib.i610, align 8
  %bt_params.i611 = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %154, i32 0, i32 4
  %155 = ptrtoint ptr %bt_params.i611 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %bt_params.i611, align 4
  %tobool55.not.i = icmp eq ptr %156, null
  br i1 %tobool55.not.i, label %if.end39.i.if.else69.i_crit_edge, label %land.lhs.true56.i

if.end39.i.if.else69.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else69.i

land.lhs.true56.i:                                ; preds = %if.end39.i
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %156, align 4, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool59.not.i = icmp eq i8 %158, 0
  br i1 %tobool59.not.i, label %land.lhs.true56.i.if.else69.i_crit_edge, label %land.lhs.true61.i

land.lhs.true56.i.if.else69.i_crit_edge:          ; preds = %land.lhs.true56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else69.i

land.lhs.true61.i:                                ; preds = %land.lhs.true56.i
  %bt_full_concurrent.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 88
  %159 = ptrtoint ptr %bt_full_concurrent.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %bt_full_concurrent.i, align 1, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool62.not.i = icmp eq i8 %160, 0
  br i1 %tobool62.not.i, label %land.lhs.true61.i.if.else69.i_crit_edge, label %if.then64.i

land.lhs.true61.i.if.else69.i_crit_edge:          ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else69.i

if.then64.i:                                      ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #11
  %mgmt_tx_ant.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 45
  %161 = ptrtoint ptr %mgmt_tx_ant.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %mgmt_tx_ant.i, align 2
  %nvm_data65.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %163 = ptrtoint ptr %nvm_data65.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %nvm_data65.i, align 8
  %valid_tx_ant.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %164, i32 0, i32 20
  %165 = ptrtoint ptr %valid_tx_ant.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %valid_tx_ant.i, align 1
  %conv.i124.i = zext i8 %166 to i32
  %and.i.i = and i32 %conv.i124.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i125.i = icmp eq i32 %and.i.i, 0
  %and2.i.i = and i32 %conv.i124.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %..i.i = select i1 %tobool3.not.i.i, i8 4, i8 2
  %retval.0.i126.i = select i1 %tobool.not.i125.i, i8 %..i.i, i8 1
  %call67.i = tail call zeroext i8 @iwl_toggle_tx_ant(ptr noundef %priv, i8 noundef zeroext %162, i8 noundef zeroext %retval.0.i126.i) #9
  %167 = ptrtoint ptr %mgmt_tx_ant.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %call67.i, ptr %mgmt_tx_ant.i, align 2
  br label %if.end75.i

if.else69.i:                                      ; preds = %land.lhs.true61.i.if.else69.i_crit_edge, %land.lhs.true56.i.if.else69.i_crit_edge, %if.end39.i.if.else69.i_crit_edge
  %mgmt_tx_ant70.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 45
  %168 = ptrtoint ptr %mgmt_tx_ant70.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %mgmt_tx_ant70.i, align 2
  %nvm_data71.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %170 = ptrtoint ptr %nvm_data71.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %nvm_data71.i, align 8
  %valid_tx_ant72.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %171, i32 0, i32 20
  %172 = ptrtoint ptr %valid_tx_ant72.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %valid_tx_ant72.i, align 1
  %call73.i = tail call zeroext i8 @iwl_toggle_tx_ant(ptr noundef %priv, i8 noundef zeroext %169, i8 noundef zeroext %173) #9
  %174 = ptrtoint ptr %mgmt_tx_ant70.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %call73.i, ptr %mgmt_tx_ant70.i, align 2
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.else69.i, %if.then64.i
  %mgmt_tx_ant76.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 45
  %175 = ptrtoint ptr %mgmt_tx_ant76.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %mgmt_tx_ant76.i, align 2
  %conv.i127.i = zext i8 %176 to i32
  %shl1.i.i = shl i32 16384, %conv.i127.i
  %or78.i = or i32 %shl1.i.i, %rate_flags.0.i
  %conv.i128.i = zext i8 %151 to i32
  %or.i.i612 = or i32 %or78.i, %conv.i128.i
  %177 = tail call i32 @llvm.bswap.i32(i32 %or.i.i612) #9
  %rate_n_flags.i = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i599, i32 4
  %178 = ptrtoint ptr %rate_n_flags.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %rate_n_flags.i, align 8
  br label %iwlagn_tx_cmd_build_rate.exit

iwlagn_tx_cmd_build_rate.exit:                    ; preds = %if.end75.i, %if.then16.i
  %179 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %180 = call ptr @memset(ptr %179, i32 0, i32 32)
  %181 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %ctx.0, ptr %2, align 8
  %arrayidx126 = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %182 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %call.i.i599, ptr %arrayidx126, align 4
  %sta_lock = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %sta_lock) #9
  %183 = and i16 %12, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %183)
  %cmp.i613 = icmp ne i16 %183, -30720
  call void @__sanitizer_cov_trace_const_cmp2(i16 -14336, i16 %13)
  %cmp.i614 = icmp eq i16 %13, -14336
  %or.cond669 = or i1 %cmp.i613, %cmp.i614
  br i1 %or.cond669, label %if.end314.thread, label %if.then131

if.then131:                                       ; preds = %iwlagn_tx_cmd_build_rate.exit
  %184 = ptrtoint ptr %hdr.1 to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %hdr.1, align 2
  %186 = and i16 %185, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %186)
  %cmp.i.i615 = icmp eq i16 %186, 3
  %retval.0.v.i = select i1 %cmp.i.i615, i32 30, i32 24
  %retval.0.i616 = getelementptr i8, ptr %hdr.1, i32 %retval.0.v.i
  %187 = ptrtoint ptr %retval.0.i616 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %retval.0.i616, align 1
  %189 = and i8 %188, 15
  %conv137 = zext i8 %189 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %189)
  %cmp138 = icmp ugt i8 %189, 7
  br i1 %cmp138, label %land.rhs, label %if.end191

land.rhs:                                         ; preds = %if.then131
  %.b582588 = load i1, ptr @iwlagn_tx_skb.__already_done, align 1
  br i1 %.b582588, label %land.rhs.if.end444_crit_edge, label %if.then155, !prof !234

land.rhs.if.end444_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end444

if.then155:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwlagn_tx_skb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 375, i32 noundef 9, ptr noundef null) #9
  br label %if.end444

if.end191:                                        ; preds = %if.then131
  %idxprom = zext i8 %sta_id.0 to i32
  %arrayidx195 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %idxprom, i32 %conv137
  %190 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %cb.i, align 8
  %and197 = and i32 %191, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and197)
  %tobool198.not = icmp eq i32 %and197, 0
  br i1 %tobool198.not, label %if.end191.if.end225_crit_edge, label %land.lhs.true199

if.end191.if.end225_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end225

land.lhs.true199:                                 ; preds = %if.end191
  %state = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %idxprom, i32 %conv137, i32 2, i32 1
  %192 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %193)
  %cmp200.not = icmp eq i32 %193, 2
  br i1 %cmp200.not, label %land.lhs.true199.if.end225_crit_edge, label %do.end206

land.lhs.true199.if.end225_crit_edge:             ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end225

do.end206:                                        ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #11
  %dev207 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %194 = ptrtoint ptr %dev207 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dev207, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %195, i32 noundef 0, ptr noundef nonnull @.str.7, i32 noundef %191, i32 noundef %193) #9
  %196 = ptrtoint ptr %dev207 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dev207, align 4
  %198 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %arrayidx195, align 4
  %200 = lshr i16 %199, 4
  %201 = zext i16 %200 to i32
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %197, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef %idxprom, i32 noundef %conv137, i32 noundef %201) #9
  br label %if.end444

if.end225:                                        ; preds = %land.lhs.true199.if.end225_crit_edge, %if.end191.if.end225_crit_edge
  %state228 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %idxprom, i32 %conv137, i32 2, i32 1
  %202 = ptrtoint ptr %state228 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %state228, align 4
  %204 = and i32 %203, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %.not = icmp eq i32 %204, 0
  br i1 %.not, label %if.end314, label %land.rhs244

land.rhs244:                                      ; preds = %if.end225
  %.b583587 = load i1, ptr @iwlagn_tx_skb.__already_done.9, align 1
  br i1 %.b583587, label %land.rhs244.if.end444_crit_edge, label %if.then255, !prof !234

land.rhs244.if.end444_crit_edge:                  ; preds = %land.rhs244
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end444

if.then255:                                       ; preds = %land.rhs244
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwlagn_tx_skb.__already_done.9, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 396, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %203) #9
  br label %if.end444

if.end314.thread:                                 ; preds = %iwlagn_tx_cmd_build_rate.exit
  call void @__sanitizer_cov_trace_pc() #11
  %hdr315637 = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i599, i32 15
  %conv317638 = and i32 %call71, 255
  %205 = call ptr @memcpy(ptr %hdr315637, ptr %hdr.1, i32 %conv317638)
  %hw_queue639 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  br label %if.else328

if.end314:                                        ; preds = %if.end225
  %206 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %arrayidx195, align 4
  %208 = and i16 %207, -16
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr.1, i32 0, i32 5
  %209 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %seq_ctrl, align 2
  %211 = and i16 %210, 3840
  %212 = tail call i16 @llvm.bswap.i16(i16 %208)
  %or586 = or i16 %211, %212
  %213 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 %or586, ptr %seq_ctrl, align 2
  %add = add i16 %208, 16
  %214 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %cb.i, align 8
  %and309 = and i32 %215, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and309)
  %tobool310.not = icmp eq i32 %and309, 0
  %hdr315 = getelementptr inbounds %struct.iwl_device_tx_cmd, ptr %call.i.i599, i32 15
  %conv317 = and i32 %call71, 255
  %216 = call ptr @memcpy(ptr %hdr315, ptr %hdr.1, i32 %conv317)
  %hw_queue = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  br i1 %tobool310.not, label %if.end314.if.else328_crit_edge, label %land.rhs342

if.end314.if.else328_crit_edge:                   ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else328

if.else328:                                       ; preds = %if.end314.if.else328_crit_edge, %if.end314.thread
  %bf.clear653.in.in.in = phi ptr [ %hw_queue639, %if.end314.thread ], [ %hw_queue, %if.end314.if.else328_crit_edge ]
  %tid.0646 = phi i8 [ 8, %if.end314.thread ], [ %189, %if.end314.if.else328_crit_edge ]
  %seq_number.1644 = phi i16 [ 0, %if.end314.thread ], [ %add, %if.end314.if.else328_crit_edge ]
  %.demorgan = or i1 %cmp.i613, %cmp.i614
  %217 = xor i1 %.demorgan, true
  %218 = ptrtoint ptr %bf.clear653.in.in.in to i32
  call void @__asan_load4_noabort(i32 %218)
  %bf.clear653.in.in = load i32, ptr %bf.clear653.in.in.in, align 4
  %bf.clear653.in = lshr i32 %bf.clear653.in.in, 12
  %bf.clear653 = and i32 %bf.clear653.in, 15
  %219 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %cb.i, align 8
  %and330 = and i32 %220, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and330)
  %tobool331.not = icmp eq i32 %and330, 0
  br i1 %tobool331.not, label %if.else328.if.end397_crit_edge, label %if.then332

if.else328.if.end397_crit_edge:                   ; preds = %if.else328
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end397

if.then332:                                       ; preds = %if.else328
  call void @__sanitizer_cov_trace_pc() #11
  %221 = ptrtoint ptr %hdr.1 to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %hdr.1, align 2
  %223 = or i16 %222, 32
  store i16 %223, ptr %hdr.1, align 2
  br label %if.end397

land.rhs342:                                      ; preds = %if.end314
  %txq_id326 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %idxprom, i32 %conv137, i32 2, i32 2
  %224 = ptrtoint ptr %txq_id326 to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %txq_id326, align 4
  %conv327 = zext i16 %225 to i32
  %arrayidx343 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 10, i32 %conv327
  %226 = ptrtoint ptr %arrayidx343 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %arrayidx343, align 1
  %conv344 = zext i8 %227 to i32
  %228 = ptrtoint ptr %hw_queue to i32
  call void @__asan_load4_noabort(i32 %228)
  %bf.load346 = load i32, ptr %hw_queue, align 4
  %bf.lshr347 = lshr i32 %bf.load346, 12
  %bf.clear348 = and i32 %bf.lshr347, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear348, i32 %conv344)
  %cmp349.not = icmp eq i32 %bf.clear348, %conv344
  br i1 %cmp349.not, label %land.rhs342.if.end397_crit_edge, label %land.rhs359

land.rhs342.if.end397_crit_edge:                  ; preds = %land.rhs342
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end397

land.rhs359:                                      ; preds = %land.rhs342
  %.b584585 = load i1, ptr @iwlagn_tx_skb.__already_done.11, align 1
  br i1 %.b584585, label %land.rhs359.if.end397_crit_edge, label %if.then370, !prof !234

land.rhs359.if.end397_crit_edge:                  ; preds = %land.rhs359
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end397

if.then370:                                       ; preds = %land.rhs359
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwlagn_tx_skb.__already_done.11, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 427, i32 noundef 9, ptr noundef null) #9
  br label %if.end397

if.end397:                                        ; preds = %if.then370, %land.rhs359.if.end397_crit_edge, %land.rhs342.if.end397_crit_edge, %if.then332, %if.else328.if.end397_crit_edge
  %txq_id.0664 = phi i32 [ %conv327, %land.rhs342.if.end397_crit_edge ], [ %conv327, %if.then370 ], [ %conv327, %land.rhs359.if.end397_crit_edge ], [ %bf.clear653, %if.then332 ], [ %bf.clear653, %if.else328.if.end397_crit_edge ]
  %seq_number.1643663 = phi i16 [ %add, %land.rhs342.if.end397_crit_edge ], [ %add, %if.then370 ], [ %add, %land.rhs359.if.end397_crit_edge ], [ %seq_number.1644, %if.then332 ], [ %seq_number.1644, %if.else328.if.end397_crit_edge ]
  %tid.0645662 = phi i8 [ %189, %land.rhs342.if.end397_crit_edge ], [ %189, %if.then370 ], [ %189, %land.rhs359.if.end397_crit_edge ], [ %tid.0646, %if.then332 ], [ %tid.0646, %if.else328.if.end397_crit_edge ]
  %is_agg.2.off0647661 = phi i1 [ true, %land.rhs342.if.end397_crit_edge ], [ true, %if.then370 ], [ true, %land.rhs359.if.end397_crit_edge ], [ false, %if.then332 ], [ false, %if.else328.if.end397_crit_edge ]
  %is_data_qos.1.off0649660 = phi i1 [ true, %land.rhs342.if.end397_crit_edge ], [ true, %if.then370 ], [ true, %land.rhs359.if.end397_crit_edge ], [ %217, %if.then332 ], [ %217, %if.else328.if.end397_crit_edge ]
  %dev409 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %229 = ptrtoint ptr %dev409 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dev409, align 4
  %conv410 = zext i8 %sta_id.0 to i32
  %conv411 = zext i8 %tid.0645662 to i32
  %conv412 = zext i16 %seq_number.1643663 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %230, i32 noundef 8388608, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_tx_skb, ptr noundef nonnull @.str.12, i32 noundef %conv410, i32 noundef %conv411, i32 noundef %txq_id.0664, i32 noundef %conv412) #9
  %231 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %priv, align 8
  %status.i617 = getelementptr inbounds %struct.iwl_trans, ptr %232, i32 0, i32 7
  %233 = ptrtoint ptr %status.i617 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load volatile i32, ptr %status.i617, align 4
  %235 = and i32 %234, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %tobool.not.i618 = icmp eq i32 %235, 0
  br i1 %tobool.not.i618, label %if.end.i, label %if.end397.if.end444_crit_edge, !prof !234

if.end397.if.end444_crit_edge:                    ; preds = %if.end397
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end444

if.end.i:                                         ; preds = %if.end397
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %232, i32 0, i32 6
  %236 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %237)
  %cmp.not.i = icmp eq i32 %237, 2
  br i1 %cmp.not.i, label %iwl_trans_tx.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end.i
  %.b65.i = load i1, ptr @iwl_trans_tx.__already_done, align 1
  br i1 %.b65.i, label %land.rhs.i.do.end52.i_crit_edge, label %if.then17.i, !prof !234

land.rhs.i.do.end52.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52.i

if.then17.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwl_trans_tx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.83, i32 noundef 1150, i32 noundef 9, ptr noundef null) #9
  br label %do.end52.i

do.end52.i:                                       ; preds = %if.then17.i, %land.rhs.i.do.end52.i_crit_edge
  %dev.i619 = getelementptr inbounds %struct.iwl_trans, ptr %232, i32 0, i32 8
  %238 = ptrtoint ptr %dev.i619 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %dev.i619, align 8
  %240 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %state.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %239, i32 noundef 0, ptr noundef nonnull @.str.84, ptr noundef nonnull @__func__.iwl_trans_tx, i32 noundef %241) #9
  br label %if.end444

iwl_trans_tx.exit:                                ; preds = %if.end.i
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %232, i32 0, i32 1
  %242 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %ops.i, align 4
  %tx.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %243, i32 0, i32 8
  %244 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %tx.i, align 4
  %call57.i = tail call i32 %245(ptr noundef %232, ptr noundef %skb, ptr noundef nonnull %call.i.i599, i32 noundef %txq_id.0664) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool417.not = icmp eq i32 %call57.i, 0
  br i1 %tobool417.not, label %if.end419, label %iwl_trans_tx.exit.if.end444_crit_edge

iwl_trans_tx.exit.if.end444_crit_edge:            ; preds = %iwl_trans_tx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end444

if.end419:                                        ; preds = %iwl_trans_tx.exit
  %is_data_qos.1.off0649660.not = xor i1 %is_data_qos.1.off0649660, true
  %246 = and i16 %12, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %246)
  %cmp.i621 = icmp ne i16 %246, 0
  %or.cond670 = select i1 %is_data_qos.1.off0649660.not, i1 true, i1 %cmp.i621
  br i1 %or.cond670, label %if.end419.if.end431_crit_edge, label %if.then424

if.end419.if.end431_crit_edge:                    ; preds = %if.end419
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end431

if.then424:                                       ; preds = %if.end419
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx429 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %conv410, i32 %conv411
  %247 = ptrtoint ptr %arrayidx429 to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 %seq_number.1643663, ptr %arrayidx429, align 4
  br label %if.end431

if.end431:                                        ; preds = %if.then424, %if.end419.if.end431_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sta_lock) #9
  br i1 %tobool95.not, label %if.end431.cleanup446_crit_edge, label %land.lhs.true434

if.end431.cleanup446_crit_edge:                   ; preds = %if.end431
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup446

land.lhs.true434:                                 ; preds = %if.end431
  %client = getelementptr inbounds %struct.iwl_station_priv, ptr %spec.select, i32 0, i32 4
  %248 = ptrtoint ptr %client to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %client, align 4, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %249)
  %tobool435.not = icmp eq i8 %249, 0
  %brmerge = or i1 %is_agg.2.off0647661, %tobool435.not
  br i1 %brmerge, label %land.lhs.true434.cleanup446_crit_edge, label %if.then439

land.lhs.true434.cleanup446_crit_edge:            ; preds = %land.lhs.true434
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup446

if.then439:                                       ; preds = %land.lhs.true434
  call void @__sanitizer_cov_trace_pc() #11
  %pending_frames = getelementptr inbounds %struct.iwl_station_priv, ptr %spec.select, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_frames, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %pending_frames, i32 1, i32 3, i32 1) #9
  %250 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_frames, ptr %pending_frames, i32 1, ptr elementtype(i32) %pending_frames) #9, !srcloc !235
  br label %cleanup446

if.end444:                                        ; preds = %iwl_trans_tx.exit.if.end444_crit_edge, %do.end52.i, %if.end397.if.end444_crit_edge, %if.then255, %land.rhs244.if.end444_crit_edge, %do.end206, %if.then155, %land.rhs.if.end444_crit_edge
  %251 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %priv, align 8
  %dev_cmd_pool.i622 = getelementptr inbounds %struct.iwl_trans, ptr %252, i32 0, i32 28
  %253 = ptrtoint ptr %dev_cmd_pool.i622 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %dev_cmd_pool.i622, align 4
  tail call void @kmem_cache_free(ptr noundef %254, ptr noundef nonnull %call.i.i599) #9
  tail call void @_raw_spin_unlock(ptr noundef %sta_lock) #9
  br label %cleanup446

cleanup446:                                       ; preds = %if.end444, %if.then439, %land.lhs.true434.cleanup446_crit_edge, %if.end431.cleanup446_crit_edge, %if.end103.cleanup446_crit_edge, %do.end84, %do.end
  %retval.0 = phi i32 [ 0, %land.lhs.true434.cleanup446_crit_edge ], [ 0, %if.then439 ], [ 0, %if.end431.cleanup446_crit_edge ], [ -1, %if.end103.cleanup446_crit_edge ], [ -1, %if.end444 ], [ -1, %do.end84 ], [ -1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_sta_modify_sleep_tx_count(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwlagn_tx_agg_stop(ptr noundef %priv, ptr noundef %vif, ptr noundef %sta, i16 noundef zeroext %tid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %sta, null
  br i1 %tobool.not.i, label %iwl_sta_id.exit.thread, label %iwl_sta_id.exit, !prof !231

iwl_sta_id.exit.thread:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.85, i32 noundef 281, i32 noundef 9, ptr noundef null) #9
  br label %do.end

iwl_sta_id.exit:                                  ; preds = %entry
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %sta_id.i = getelementptr inbounds %struct.iwl_station_priv, ptr %drv_priv.i, i32 0, i32 7
  %0 = ptrtoint ptr %sta_id.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sta_id.i, align 1
  %conv.i = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp = icmp eq i8 %1, -1
  br i1 %cmp, label %iwl_sta_id.exit.do.end_crit_edge, label %if.end

iwl_sta_id.exit.do.end_crit_edge:                 ; preds = %iwl_sta_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %iwl_sta_id.exit.do.end_crit_edge, %iwl_sta_id.exit.thread
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %conv = zext i16 %tid to i32
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %3, i32 noundef 0, ptr noundef nonnull @.str.13, i32 noundef %conv) #9
  br label %cleanup

if.end:                                           ; preds = %iwl_sta_id.exit
  %sta_lock = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_lock) #9
  %idxprom = zext i16 %tid to i32
  %txq_id6 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %conv.i, i32 %idxprom, i32 2, i32 2
  %4 = ptrtoint ptr %txq_id6 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %txq_id6, align 4
  %conv7 = zext i16 %5 to i32
  %state = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %conv.i, i32 %idxprom, i32 2, i32 1
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %7, label %do.end27 [
    i32 3, label %do.end12
    i32 1, label %do.end20
    i32 2, label %sw.epilog
  ]

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev13 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %9 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev13, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %10, i32 noundef 67108864, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_tx_agg_stop, ptr noundef nonnull @.str.14) #9
  br label %turn_off

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev21 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %11 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev21, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %12, i32 noundef 67108864, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_tx_agg_stop, ptr noundef nonnull @.str.15) #9
  br label %turn_off

do.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev28 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %13 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev28, align 4
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %14, ptr noundef nonnull @.str.16, i32 noundef %conv.i, i32 noundef %idxprom, i32 noundef %7) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #9
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  %arrayidx5 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %conv.i, i32 %idxprom
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx5, align 4
  %17 = lshr i16 %16, 4
  %ssn = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %conv.i, i32 %idxprom, i32 2, i32 3
  %18 = ptrtoint ptr %ssn to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %ssn, align 2
  %agg_q_alloc = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 12
  %div3.i = lshr i32 %conv7, 5
  %arrayidx.i = getelementptr i32, ptr %agg_q_alloc, i32 %div3.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv7, 31
  %21 = shl nuw i32 1, %and.i
  %22 = and i32 %20, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %do.end43, label %if.else

do.end43:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %dev44 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %23 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev44, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %24, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_tx_agg_stop, ptr noundef nonnull @.str.17, i32 noundef %conv.i, i32 noundef %idxprom, i32 noundef %conv7) #9
  br label %do.end75

if.else:                                          ; preds = %sw.epilog
  %next_reclaimed = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %conv.i, i32 %idxprom, i32 1
  %25 = ptrtoint ptr %next_reclaimed to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %next_reclaimed, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %26)
  %cmp52.not = icmp eq i16 %17, %26
  br i1 %cmp52.not, label %if.else.do.end75_crit_edge, label %do.end58

if.else.do.end75_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end75

do.end58:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %conv51 = zext i16 %26 to i32
  %conv50 = zext i16 %17 to i32
  %dev59 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %27 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev59, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %28, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_tx_agg_stop, ptr noundef nonnull @.str.18, i32 noundef %conv50, i32 noundef %conv51) #9
  %29 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %state, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #9
  br label %cleanup

do.end75:                                         ; preds = %if.else.do.end75_crit_edge, %do.end43
  %dev76 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %30 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev76, align 4
  %32 = ptrtoint ptr %ssn to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %ssn, align 2
  %conv79 = zext i16 %33 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %31, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_tx_agg_stop, ptr noundef nonnull @.str.19, i32 noundef %conv79) #9
  br label %turn_off

turn_off:                                         ; preds = %do.end75, %do.end20, %do.end12
  %34 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state, align 4
  store i32 0, ptr %state, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #9
  %agg_q_alloc87 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 12
  %div3.i150 = lshr i32 %conv7, 5
  %arrayidx.i151 = getelementptr i32, ptr %agg_q_alloc87, i32 %div3.i150
  %36 = ptrtoint ptr %arrayidx.i151 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %arrayidx.i151, align 4
  %and.i152 = and i32 %conv7, 31
  %38 = shl nuw i32 1, %and.i152
  %39 = and i32 %37, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool90.not = icmp eq i32 %39, 0
  br i1 %tobool90.not, label %turn_off.if.end104_crit_edge, label %if.then91

turn_off.if.end104_crit_edge:                     ; preds = %turn_off
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

if.then91:                                        ; preds = %turn_off
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp92 = icmp eq i32 %35, 2
  br i1 %cmp92, label %if.then94, label %do.end99

if.then94:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv, align 8
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i, align 4
  %txq_disable.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %txq_disable.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %txq_disable.i, align 4
  tail call void %45(ptr noundef %41, i32 noundef %conv7, i1 noundef zeroext true) #9
  br label %if.end103

do.end99:                                         ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  %dev100 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %46 = ptrtoint ptr %dev100 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev100, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %47, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_tx_agg_stop, ptr noundef nonnull @.str.20, i32 noundef %35) #9
  br label %if.end103

if.end103:                                        ; preds = %do.end99, %if.then94
  tail call void @_clear_bit(i32 noundef %conv7, ptr noundef %agg_q_alloc87) #9
  %arrayidx.i155 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 10, i32 %conv7
  %48 = ptrtoint ptr %arrayidx.i155 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -1, ptr %arrayidx.i155, align 1
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %turn_off.if.end104_crit_edge
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  tail call void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef %vif, ptr noundef %addr, i16 noundef zeroext %tid) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end104, %do.end58, %do.end27, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ 0, %do.end27 ], [ 0, %do.end58 ], [ 0, %if.end104 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwlagn_tx_agg_start(ptr noundef %priv, ptr nocapture noundef readonly %vif, ptr noundef %sta, i16 noundef zeroext %tid, ptr nocapture noundef writeonly %ssn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %conv = zext i16 %tid to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 67108864, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_tx_agg_start, ptr noundef nonnull @.str.21, ptr noundef %addr, i32 noundef %conv) #9
  %tobool.not.i = icmp eq ptr %sta, null
  br i1 %tobool.not.i, label %iwl_sta_id.exit.thread, label %iwl_sta_id.exit, !prof !231

iwl_sta_id.exit.thread:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.85, i32 noundef 281, i32 noundef 9, ptr noundef null) #9
  br label %do.end9

iwl_sta_id.exit:                                  ; preds = %entry
  %drv_priv.i143 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %sta_id.i = getelementptr inbounds %struct.iwl_station_priv, ptr %drv_priv.i143, i32 0, i32 7
  %4 = ptrtoint ptr %sta_id.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sta_id.i, align 1
  %conv.i = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp = icmp eq i8 %5, -1
  br i1 %cmp, label %iwl_sta_id.exit.do.end9_crit_edge, label %if.end

iwl_sta_id.exit.do.end9_crit_edge:                ; preds = %iwl_sta_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

do.end9:                                          ; preds = %iwl_sta_id.exit.do.end9_crit_edge, %iwl_sta_id.exit.thread
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %7, i32 noundef 0, ptr noundef nonnull @.str.22) #9
  br label %cleanup

if.end:                                           ; preds = %iwl_sta_id.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %tid)
  %cmp14 = icmp ugt i16 %tid, 7
  br i1 %cmp14, label %if.end.cleanup_crit_edge, label %if.end18, !prof !231

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %arrayidx20 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %conv.i, i32 %conv
  %state = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %conv.i, i32 %conv, i32 2, i32 1
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp21.not = icmp eq i32 %9, 0
  br i1 %cmp21.not, label %if.end31, label %do.end27

do.end27:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %11, i32 noundef 0, ptr noundef nonnull @.str.23) #9
  br label %cleanup

if.end31:                                         ; preds = %if.end18
  %arrayidx33 = getelementptr [8 x i8], ptr @tid_to_ac, i32 0, i32 %conv
  %12 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx33, align 1
  %idxprom34 = zext i8 %13 to i32
  %arrayidx35 = getelementptr %struct.iwl_rxon_context, ptr %1, i32 0, i32 2, i32 %idxprom34
  %14 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx35, align 1
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 8
  %trans_cfg10.i = getelementptr inbounds %struct.iwl_trans, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %trans_cfg10.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %trans_cfg10.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %num_of_queues11.i = getelementptr inbounds %struct.iwl_base_params, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %num_of_queues11.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %num_of_queues11.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %23)
  %cmp13.i = icmp ugt i16 %23, 11
  br i1 %cmp13.i, label %for.body.lr.ph.i, label %if.end31.do.end44_crit_edge

if.end31.do.end44_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44

for.body.lr.ph.i:                                 ; preds = %if.end31
  %agg_q_alloc.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %q.014.i = phi i32 [ 11, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef %q.014.i, ptr noundef %agg_q_alloc.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i144 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i144, label %iwlagn_alloc_agg_txq.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %q.014.i, 1
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 8
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %trans_cfg.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %num_of_queues.i = getelementptr inbounds %struct.iwl_base_params, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %num_of_queues.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %num_of_queues.i, align 2
  %conv.i145 = zext i16 %31 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i145
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.end44_crit_edge

for.inc.i.do.end44_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

iwlagn_alloc_agg_txq.exit:                        ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 10, i32 %q.014.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %15, ptr %arrayidx.i, align 1
  %call53 = tail call i32 @iwl_sta_tx_modify_enable_tid(ptr noundef %priv, i32 noundef %conv.i, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %iwlagn_alloc_agg_txq.exit.cleanup_crit_edge

iwlagn_alloc_agg_txq.exit.cleanup_crit_edge:      ; preds = %iwlagn_alloc_agg_txq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end44:                                         ; preds = %for.inc.i.do.end44_crit_edge, %if.end31.do.end44_crit_edge
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %34, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_tx_agg_start, ptr noundef nonnull @.str.24, ptr noundef %addr, i32 noundef %conv) #9
  br label %cleanup

if.end56:                                         ; preds = %iwlagn_alloc_agg_txq.exit
  %sta_lock = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_lock) #9
  %35 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx20, align 4
  %37 = lshr i16 %36, 4
  %ssn64 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %conv.i, i32 %conv, i32 2, i32 3
  %38 = ptrtoint ptr %ssn64 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %ssn64, align 2
  %conv65 = trunc i32 %q.014.i to i16
  %txq_id67 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %conv.i, i32 %conv, i32 2, i32 2
  %39 = ptrtoint ptr %txq_id67 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv65, ptr %txq_id67, align 4
  %40 = ptrtoint ptr %ssn to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %37, ptr %ssn, align 2
  %next_reclaimed = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %conv.i, i32 %conv, i32 1
  %41 = ptrtoint ptr %next_reclaimed to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %next_reclaimed, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %42)
  %cmp72 = icmp eq i16 %37, %42
  br i1 %cmp72, label %do.end78, label %do.end90

do.end78:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  %45 = ptrtoint ptr %ssn64 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %ssn64, align 2
  %conv82 = zext i16 %46 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %44, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_tx_agg_start, ptr noundef nonnull @.str.19, i32 noundef %conv82) #9
  br label %if.end101

do.end90:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %conv71 = zext i16 %42 to i32
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  %49 = ptrtoint ptr %ssn64 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %ssn64, align 2
  %conv94 = zext i16 %50 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %48, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_tx_agg_start, ptr noundef nonnull @.str.25, i32 noundef %conv94, i32 noundef %conv71) #9
  br label %if.end101

if.end101:                                        ; preds = %do.end90, %do.end78
  %storemerge = phi i32 [ 3, %do.end90 ], [ 1, %do.end78 ]
  %ret.0 = phi i32 [ 0, %do.end90 ], [ 1, %do.end78 ]
  %51 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %storemerge, ptr %state, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %do.end44, %iwlagn_alloc_agg_txq.exit.cleanup_crit_edge, %do.end27, %if.end.cleanup_crit_edge, %do.end9
  %retval.0 = phi i32 [ -6, %do.end9 ], [ -6, %do.end27 ], [ -28, %do.end44 ], [ %ret.0, %if.end101 ], [ -22, %if.end.cleanup_crit_edge ], [ %call53, %iwlagn_alloc_agg_txq.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_sta_tx_modify_enable_tid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwlagn_tx_agg_flush(ptr noundef %priv, ptr nocapture noundef readnone %vif, ptr noundef readonly %sta, i16 noundef zeroext %tid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %sta, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !231

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.85, i32 noundef 281, i32 noundef 9, ptr noundef null) #9
  br label %iwl_sta_id.exit

if.end23.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %sta_id.i = getelementptr inbounds %struct.iwl_station_priv, ptr %drv_priv.i, i32 0, i32 7
  %0 = ptrtoint ptr %sta_id.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sta_id.i, align 1
  %conv.i = zext i8 %1 to i32
  br label %iwl_sta_id.exit

iwl_sta_id.exit:                                  ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi i32 [ 255, %do.end.i ], [ %conv.i, %if.end23.i ]
  %sta_lock = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_lock) #9
  %idxprom = zext i16 %tid to i32
  %txq_id3 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %retval.0.i, i32 %idxprom, i32 2, i32 2
  %2 = ptrtoint ptr %txq_id3 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %txq_id3, align 4
  %conv = zext i16 %3 to i32
  %state = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %retval.0.i, i32 %idxprom, i32 2, i32 1
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %7, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_tx_agg_flush, ptr noundef nonnull @.str.26, i32 noundef %retval.0.i, i32 noundef %idxprom, i32 noundef %conv, i32 noundef %5) #9
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %state, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #9
  %shl = shl nuw i32 1, %conv
  %call14 = tail call i32 @iwlagn_txfifo_flush(ptr noundef %priv, i32 noundef %shl) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %iwl_sta_id.exit.if.end_crit_edge, label %do.end18

iwl_sta_id.exit.if.end_crit_edge:                 ; preds = %iwl_sta_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end18:                                         ; preds = %iwl_sta_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %10, i32 noundef 0, ptr noundef nonnull @.str.27) #9
  br label %if.end

if.end:                                           ; preds = %do.end18, %iwl_sta_id.exit.if.end_crit_edge
  %agg_q_alloc = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 12
  %div3.i = lshr i32 %conv, 5
  %arrayidx.i = getelementptr i32, ptr %agg_q_alloc, i32 %div3.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv, 31
  %13 = shl nuw i32 1, %and.i
  %14 = and i32 %12, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool23.not = icmp eq i32 %14, 0
  br i1 %tobool23.not, label %if.end.if.end35_crit_edge, label %if.then24

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then26, label %do.end30

if.then26:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 8
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %txq_disable.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %txq_disable.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %txq_disable.i, align 4
  tail call void %20(ptr noundef %16, i32 noundef %conv, i1 noundef zeroext true) #9
  br label %if.end34

do.end30:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %22, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_tx_agg_flush, ptr noundef nonnull @.str.20, i32 noundef %5) #9
  br label %if.end34

if.end34:                                         ; preds = %do.end30, %if.then26
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %agg_q_alloc) #9
  %arrayidx.i55 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 10, i32 %conv
  %23 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %arrayidx.i55, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end.if.end35_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwlagn_txfifo_flush(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwlagn_tx_agg_oper(ptr noundef %priv, ptr nocapture noundef readonly %vif, ptr noundef %sta, i16 noundef zeroext %tid, i8 noundef zeroext %buf_size) local_unnamed_addr #0 align 64 {
entry:
  %cfg.i = alloca %struct.iwl_trans_txq_scd_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = tail call i8 @llvm.umin.i8(i8 %buf_size, i8 63)
  %cond = zext i8 %2 to i32
  %sta_lock = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_lock) #9
  %sta_id = getelementptr inbounds %struct.iwl_station_priv, ptr %drv_priv, i32 0, i32 7
  %3 = ptrtoint ptr %sta_id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sta_id, align 1
  %idxprom = zext i8 %4 to i32
  %idxprom3 = zext i16 %tid to i32
  %ssn5 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %idxprom, i32 %idxprom3, i32 2, i32 3
  %5 = ptrtoint ptr %ssn5 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ssn5, align 2
  %txq_id = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %idxprom, i32 %idxprom3, i32 2, i32 2
  %7 = ptrtoint ptr %txq_id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %txq_id, align 4
  %state = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %idxprom, i32 %idxprom3, i32 2, i32 1
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %state, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #9
  %arrayidx23 = getelementptr [8 x i8], ptr @tid_to_ac, i32 0, i32 %idxprom3
  %10 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx23, align 1
  %idxprom24 = zext i8 %11 to i32
  %arrayidx25 = getelementptr %struct.iwl_rxon_context, ptr %1, i32 0, i32 3, i32 %idxprom24
  %12 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx25, align 1
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 8
  %16 = ptrtoint ptr %sta_id to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sta_id, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cfg.i) #9
  %18 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg.i, i32 0, i32 1
  %19 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg.i, i32 0, i32 2
  %20 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg.i, i32 0, i32 3
  %21 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg.i, i32 0, i32 4
  %22 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %13, ptr %cfg.i, align 4
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %17, ptr %18, align 1
  %conv5.i = trunc i16 %tid to i8
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv5.i, ptr %19, align 2
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %20, align 1
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cond, ptr %21, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.83, i32 noundef 1191) #9
  %state.i.i = getelementptr inbounds %struct.iwl_trans, ptr %15, i32 0, i32 6
  %27 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp.not.i.i = icmp eq i32 %28, 2
  br i1 %cmp.not.i.i, label %if.end48.i.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %entry
  %.b1.i.i = load i1, ptr @iwl_trans_txq_enable_cfg.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.do.end44.i.i_crit_edge, label %if.then.i.i, !prof !234

land.rhs.i.i.do.end44.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwl_trans_txq_enable_cfg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.83, i32 noundef 1193, i32 noundef 9, ptr noundef null) #9
  br label %do.end44.i.i

do.end44.i.i:                                     ; preds = %if.then.i.i, %land.rhs.i.i.do.end44.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.iwl_trans, ptr %15, i32 0, i32 8
  %29 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i.i, align 8
  %31 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state.i.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %30, i32 noundef 0, ptr noundef nonnull @.str.84, ptr noundef nonnull @__func__.iwl_trans_txq_enable_cfg, i32 noundef %32) #9
  br label %iwl_trans_txq_enable.exit

if.end48.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv13 = zext i16 %8 to i32
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %15, i32 0, i32 1
  %33 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i.i, align 4
  %txq_enable.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %34, i32 0, i32 11
  %35 = ptrtoint ptr %txq_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %txq_enable.i.i, align 4
  %call.i.i = call zeroext i1 %36(ptr noundef %15, i32 noundef %conv13, i16 noundef zeroext %6, ptr noundef nonnull %cfg.i, i32 noundef 0) #9
  br label %iwl_trans_txq_enable.exit

iwl_trans_txq_enable.exit:                        ; preds = %if.end48.i.i, %do.end44.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cfg.i) #9
  %max_agg_bufsize = getelementptr inbounds %struct.iwl_station_priv, ptr %drv_priv, i32 0, i32 6
  %37 = ptrtoint ptr %max_agg_bufsize to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %max_agg_bufsize, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp32 = icmp eq i8 %38, 0
  br i1 %cmp32, label %if.then, label %iwl_trans_txq_enable.exit.if.end_crit_edge

iwl_trans_txq_enable.exit.if.end_crit_edge:       ; preds = %iwl_trans_txq_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %iwl_trans_txq_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %max_agg_bufsize to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 63, ptr %max_agg_bufsize, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %iwl_trans_txq_enable.exit.if.end_crit_edge
  %40 = ptrtoint ptr %max_agg_bufsize to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %max_agg_bufsize, align 2
  %42 = call i8 @llvm.umin.i8(i8 %2, i8 %41)
  %43 = ptrtoint ptr %max_agg_bufsize to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %max_agg_bufsize, align 2
  %use_rts_for_aggregation = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 17, i32 2
  %44 = ptrtoint ptr %use_rts_for_aggregation to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %use_rts_for_aggregation, align 2, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not = icmp eq i8 %45, 0
  br i1 %tobool.not, label %if.end.if.end52_crit_edge, label %if.then49

if.end.if.end52_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then49:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %general_params = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 0, i32 1
  %46 = ptrtoint ptr %general_params to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %general_params, align 2
  %48 = or i8 %47, 1
  store i8 %48, ptr %general_params, align 2
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end.if.end52_crit_edge
  %agg_tids_count = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 75
  %49 = ptrtoint ptr %agg_tids_count to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %agg_tids_count, align 8
  %inc = add i8 %50, 1
  store i8 %inc, ptr %agg_tids_count, align 8
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  %conv55 = zext i8 %inc to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %52, i32 noundef 67108864, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_tx_agg_oper, ptr noundef nonnull @.str.28, i32 noundef %conv55) #9
  %53 = ptrtoint ptr %max_agg_bufsize to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %max_agg_bufsize, align 2
  %lq60 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 5, i32 2, i32 3
  %agg_frame_cnt_limit = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 1, i32 6
  %55 = ptrtoint ptr %agg_frame_cnt_limit to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %agg_frame_cnt_limit, align 1
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 4
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %57, i32 noundef 67108864, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_tx_agg_oper, ptr noundef nonnull @.str.29, ptr noundef %addr, i32 noundef %idxprom3) #9
  %call72 = call i32 @iwl_send_lq_cmd(ptr noundef %priv, ptr noundef %1, ptr noundef %lq60, i8 noundef zeroext 1, i1 noundef zeroext false) #9
  ret i32 %call72
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_send_lq_cmd(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @iwl_get_tx_fail_reason(i32 noundef %status) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %trunc = trunc i32 %status to i8
  %0 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.100)
  switch i8 %trunc, label %sw.epilog [
    i8 1, label %entry.return_crit_edge
    i8 64, label %sw.bb1
    i8 65, label %sw.bb2
    i8 66, label %sw.bb3
    i8 67, label %sw.bb4
    i8 68, label %sw.bb5
    i8 -127, label %sw.bb6
    i8 -126, label %sw.bb7
    i8 -125, label %sw.bb8
    i8 -124, label %sw.bb9
    i8 -123, label %sw.bb10
    i8 -122, label %sw.bb11
    i8 -121, label %sw.bb12
    i8 -120, label %sw.bb13
    i8 -119, label %sw.bb14
    i8 -118, label %sw.bb15
    i8 -117, label %sw.bb16
    i8 -116, label %sw.bb17
    i8 -115, label %sw.bb18
    i8 -114, label %sw.bb19
    i8 -113, label %sw.bb20
    i8 -112, label %sw.bb21
    i8 -111, label %sw.bb22
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi ptr [ @.str.53, %sw.epilog ], [ @.str.52, %sw.bb22 ], [ @.str.51, %sw.bb21 ], [ @.str.50, %sw.bb20 ], [ @.str.49, %sw.bb19 ], [ @.str.48, %sw.bb18 ], [ @.str.47, %sw.bb17 ], [ @.str.46, %sw.bb16 ], [ @.str.45, %sw.bb15 ], [ @.str.44, %sw.bb14 ], [ @.str.43, %sw.bb13 ], [ @.str.42, %sw.bb12 ], [ @.str.41, %sw.bb11 ], [ @.str.40, %sw.bb10 ], [ @.str.39, %sw.bb9 ], [ @.str.38, %sw.bb8 ], [ @.str.37, %sw.bb7 ], [ @.str.36, %sw.bb6 ], [ @.str.35, %sw.bb5 ], [ @.str.34, %sw.bb4 ], [ @.str.33, %sw.bb3 ], [ @.str.32, %sw.bb2 ], [ @.str.31, %sw.bb1 ], [ @.str.30, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @iwl_get_agg_tx_fail_reason(i16 noundef zeroext %status) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %status, 4095
  %conv2 = zext i16 %0 to i32
  %1 = zext i32 %conv2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %conv2, label %sw.epilog [
    i32 0, label %entry.return_crit_edge
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
    i32 4, label %sw.bb5
    i32 8, label %sw.bb6
    i32 16, label %sw.bb7
    i32 32, label %sw.bb8
    i32 64, label %sw.bb9
    i32 128, label %sw.bb10
    i32 256, label %sw.bb11
    i32 511, label %sw.bb12
    i32 512, label %sw.bb13
    i32 1024, label %sw.bb14
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %entry.return_crit_edge
  %retval.0 = phi ptr [ @.str.53, %sw.epilog ], [ @.str.65, %sw.bb14 ], [ @.str.64, %sw.bb13 ], [ @.str.63, %sw.bb12 ], [ @.str.62, %sw.bb11 ], [ @.str.61, %sw.bb10 ], [ @.str.60, %sw.bb9 ], [ @.str.59, %sw.bb8 ], [ @.str.58, %sw.bb7 ], [ @.str.57, %sw.bb6 ], [ @.str.56, %sw.bb5 ], [ @.str.55, %sw.bb4 ], [ @.str.54, %sw.bb3 ], [ @.str.30, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwlagn_rx_reply_tx(ptr noundef %priv, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
entry:
  %skbs = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #9
  %2 = ptrtoint ptr %call.i to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %sequence1 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %sequence1 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %sequence1, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv = zext i16 %8 to i32
  %9 = lshr i32 %conv, 8
  %and = and i32 %9, 31
  %and3 = and i32 %conv, 255
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  %status5 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 5
  %10 = ptrtoint ptr %status5 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %status5, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %conv7 = zext i16 %12 to i32
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data, align 1
  %conv.i = zext i8 %14 to i32
  %add.ptr.i = getelementptr i32, ptr %status5, i32 %conv.i
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i, align 4
  %17 = and i32 %16, -15794176
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  %conv9 = trunc i32 %18 to i16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %skbs) #9
  %19 = getelementptr inbounds i8, ptr %skbs, i32 12
  %20 = call ptr @memset(ptr %19, i32 255, i32 44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and)
  %cmp = icmp ugt i32 %and, 10
  %ra_tid = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 4, i32 1, i32 1
  %21 = ptrtoint ptr %ra_tid to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ra_tid, align 1
  %conv11 = zext i8 %22 to i32
  %and12 = and i32 %conv11, 15
  %23 = lshr i32 %conv11, 4
  %sta_lock = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_lock) #9
  br i1 %cmp, label %lor.end, label %entry.if.end79_crit_edge

entry.if.end79_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

lor.end:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and12)
  %cmp20 = icmp ugt i32 %and12, 7
  br i1 %cmp20, label %land.rhs, label %lor.end.if.end52_crit_edge

lor.end.if.end52_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

land.rhs:                                         ; preds = %lor.end
  %.b319 = load i1, ptr @iwlagn_rx_reply_tx.__already_done, align 1
  br i1 %.b319, label %land.rhs.if.end52_crit_edge, label %if.then31, !prof !234

land.rhs.if.end52_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then31:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwlagn_rx_reply_tx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1136, i32 noundef 9, ptr noundef null) #9
  br label %if.end52

if.end52:                                         ; preds = %if.then31, %land.rhs.if.end52_crit_edge, %lor.end.if.end52_crit_edge
  %txq_id61 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %23, i32 %and12, i32 2, i32 2
  %24 = ptrtoint ptr %txq_id61 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %txq_id61, align 4
  %conv62 = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv62)
  %cmp63.not = icmp eq i32 %and, %conv62
  br i1 %cmp63.not, label %if.end52.if.end78_crit_edge, label %do.end69

if.end52.if.end78_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

do.end69:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %27, i32 noundef 0, ptr noundef nonnull @.str.66, i32 noundef %and, i32 noundef %conv62) #9
  br label %if.end78

if.end78:                                         ; preds = %do.end69, %if.end52.if.end78_crit_edge
  %28 = ptrtoint ptr %ra_tid to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ra_tid, align 1
  %conv.i324 = zext i8 %29 to i32
  %and.i = and i32 %conv.i324, 15
  %30 = lshr i32 %conv.i324, 4
  %agg6.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %30, i32 %and.i, i32 2
  %31 = ptrtoint ptr %status5 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %status5, align 1
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #9
  %conv10.i = zext i16 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 8
  br i1 %cmp.i, label %do.end.i, label %if.end78.if.end.i_crit_edge, !prof !231

if.end78.if.end.i_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 929, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end78.if.end.i_crit_edge
  %wait_for_ba.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %30, i32 %and.i, i32 2, i32 4
  %34 = ptrtoint ptr %wait_for_ba.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %wait_for_ba.i, align 4, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool30.not.i = icmp eq i8 %35, 0
  br i1 %tobool30.not.i, label %if.end.i.if.end38.i_crit_edge, label %do.end35.i

if.end.i.if.end38.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

do.end35.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %37, i32 noundef 1073741824, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_rx_reply_tx_agg, ptr noundef nonnull @.str.86) #9
  br label %if.end38.i

if.end38.i:                                       ; preds = %do.end35.i, %if.end.i.if.end38.i_crit_edge
  %rate_n_flags.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %38 = ptrtoint ptr %rate_n_flags.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %rate_n_flags.i, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #9
  %41 = ptrtoint ptr %agg6.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %agg6.i, align 4
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %43)
  %cmp41.i = icmp ugt i8 %43, 1
  %frombool.i = zext i1 %cmp41.i to i8
  %44 = ptrtoint ptr %wait_for_ba.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %frombool.i, ptr %wait_for_ba.i, align 4
  %bt_kill_count.i = getelementptr inbounds %struct.iwlagn_tx_resp, ptr %data, i32 0, i32 1
  %45 = ptrtoint ptr %bt_kill_count.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %bt_kill_count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool45.not.i = icmp eq i8 %46, 0
  br i1 %tobool45.not.i, label %if.end38.i.if.end65.i_crit_edge, label %land.lhs.true.i

if.end38.i.if.end65.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i

land.lhs.true.i:                                  ; preds = %if.end38.i
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %48)
  %cmp48.i = icmp eq i8 %48, 1
  br i1 %cmp48.i, label %land.lhs.true50.i, label %land.lhs.true.i.do.end75.i_crit_edge

land.lhs.true.i.do.end75.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end75.i

land.lhs.true50.i:                                ; preds = %land.lhs.true.i
  %lib.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 4
  %49 = ptrtoint ptr %lib.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lib.i, align 8
  %bt_params.i = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %bt_params.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bt_params.i, align 4
  %tobool51.not.i = icmp eq ptr %52, null
  br i1 %tobool51.not.i, label %land.lhs.true50.i.if.end65.i_crit_edge, label %land.lhs.true52.i

land.lhs.true50.i.if.end65.i_crit_edge:           ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i

land.lhs.true52.i:                                ; preds = %land.lhs.true50.i
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %52, align 4, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool55.not.i = icmp eq i8 %54, 0
  br i1 %tobool55.not.i, label %land.lhs.true52.i.if.end65.i_crit_edge, label %do.end61.i

land.lhs.true52.i.if.end65.i_crit_edge:           ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i

do.end61.i:                                       ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev62.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %55 = ptrtoint ptr %dev62.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev62.i, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %56, i32 noundef 32768, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_rx_reply_tx_agg, ptr noundef nonnull @.str.87) #9
  br label %if.end65.i

if.end65.i:                                       ; preds = %do.end61.i, %land.lhs.true52.i.if.end65.i_crit_edge, %land.lhs.true50.i.if.end65.i_crit_edge, %if.end38.i.if.end65.i_crit_edge
  %57 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %57)
  %.pr.i = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.pr.i)
  %cmp68.i = icmp eq i8 %.pr.i, 1
  br i1 %cmp68.i, label %if.end65.i.if.end79_crit_edge, label %if.end65.i.do.end75.i_crit_edge

if.end65.i.do.end75.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end75.i

if.end65.i.if.end79_crit_edge:                    ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

do.end75.i:                                       ; preds = %if.end65.i.do.end75.i_crit_edge, %land.lhs.true.i.do.end75.i_crit_edge
  %58 = phi i8 [ %.pr.i, %if.end65.i.do.end75.i_crit_edge ], [ %48, %land.lhs.true.i.do.end75.i_crit_edge ]
  %dev76.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %59 = ptrtoint ptr %dev76.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev76.i, align 4
  %txq_id.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %30, i32 %and.i, i32 2, i32 2
  %61 = ptrtoint ptr %txq_id.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %txq_id.i, align 4
  %conv77.i = zext i16 %62 to i32
  %63 = ptrtoint ptr %rate_n_flags.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %rate_n_flags.i, align 1
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #9
  %conv.i.i = zext i8 %58 to i32
  %add.ptr.i.i = getelementptr i32, ptr %status5, i32 %conv.i.i
  %66 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr.i.i, align 4
  %68 = and i32 %67, -15794176
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #9
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %60, i32 noundef 1073741824, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_rx_reply_tx_agg, ptr noundef nonnull @.str.88, i32 noundef %conv77.i, i32 noundef %65, i32 noundef %69, i32 noundef %conv.i.i) #9
  %70 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp85168.not.i = icmp eq i8 %71, 0
  br i1 %cmp85168.not.i, label %do.end75.i.if.end79_crit_edge, label %for.body.lr.ph.i

do.end75.i.if.end79_crit_edge:                    ; preds = %do.end75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

for.body.lr.ph.i:                                 ; preds = %do.end75.i
  %and93.i = and i32 %conv10.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93.i)
  %tobool94.not.i = icmp eq i32 %and93.i, 0
  %delay_tx.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 82, i32 11
  %dump_tx.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 82, i32 10
  %response.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 82, i32 9
  %bad_crc32.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 82, i32 8
  %scd_query.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 82, i32 7
  %last_sent_bt_kill.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 82, i32 6
  %last_sent_try.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 82, i32 5
  %last_sent_ttl.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 82, i32 4
  %abort.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 82, i32 3
  %few_bytes.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 82, i32 2
  %bt_prio.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 82, i32 1
  %reply_agg_tx_stats.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 82
  %unknown.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 82, i32 12
  %and97.i = and i32 %conv10.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i)
  %tobool98.not.i = icmp eq i32 %and97.i, 0
  %tobool94.not.not.i = xor i1 %tobool94.not.i, true
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0169.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx87.i = getelementptr %struct.agg_tx_status, ptr %status5, i32 %i.0169.i
  %72 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %arrayidx87.i, align 1
  %74 = tail call i16 @llvm.bswap.i16(i16 %73) #9
  %75 = lshr i16 %74, 12
  %conv92.i = zext i16 %75 to i32
  br i1 %tobool94.not.i, label %for.body.i.if.end96.i_crit_edge, label %if.then95.i

for.body.i.if.end96.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96.i

if.then95.i:                                      ; preds = %for.body.i
  %76 = and i16 %74, 4095
  %conv2.i.i = zext i16 %76 to i32
  %77 = zext i32 %conv2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %conv2.i.i, label %sw.default.i.i [
    i32 1, label %if.then95.i.iwlagn_count_agg_tx_err_status.exit.i_crit_edge
    i32 2, label %sw.bb3.i.i
    i32 4, label %sw.bb6.i.i
    i32 8, label %sw.bb9.i.i
    i32 16, label %sw.bb12.i.i
    i32 32, label %sw.bb15.i.i
    i32 64, label %sw.bb18.i.i
    i32 128, label %sw.bb21.i.i
    i32 256, label %sw.bb24.i.i
    i32 511, label %sw.bb27.i.i
    i32 512, label %sw.bb30.i.i
    i32 1024, label %sw.bb33.i.i
  ]

if.then95.i.iwlagn_count_agg_tx_err_status.exit.i_crit_edge: ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_count_agg_tx_err_status.exit.i

sw.bb3.i.i:                                       ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_count_agg_tx_err_status.exit.i

sw.bb6.i.i:                                       ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_count_agg_tx_err_status.exit.i

sw.bb9.i.i:                                       ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_count_agg_tx_err_status.exit.i

sw.bb12.i.i:                                      ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_count_agg_tx_err_status.exit.i

sw.bb15.i.i:                                      ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_count_agg_tx_err_status.exit.i

sw.bb18.i.i:                                      ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_count_agg_tx_err_status.exit.i

sw.bb21.i.i:                                      ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_count_agg_tx_err_status.exit.i

sw.bb24.i.i:                                      ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_count_agg_tx_err_status.exit.i

sw.bb27.i.i:                                      ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_count_agg_tx_err_status.exit.i

sw.bb30.i.i:                                      ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_count_agg_tx_err_status.exit.i

sw.bb33.i.i:                                      ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_count_agg_tx_err_status.exit.i

sw.default.i.i:                                   ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_count_agg_tx_err_status.exit.i

iwlagn_count_agg_tx_err_status.exit.i:            ; preds = %sw.default.i.i, %sw.bb33.i.i, %sw.bb30.i.i, %sw.bb27.i.i, %sw.bb24.i.i, %sw.bb21.i.i, %sw.bb18.i.i, %sw.bb15.i.i, %sw.bb12.i.i, %sw.bb9.i.i, %sw.bb6.i.i, %sw.bb3.i.i, %if.then95.i.iwlagn_count_agg_tx_err_status.exit.i_crit_edge
  %unknown.sink51.i.i = phi ptr [ %unknown.i.i, %sw.default.i.i ], [ %delay_tx.i.i, %sw.bb33.i.i ], [ %dump_tx.i.i, %sw.bb30.i.i ], [ %response.i.i, %sw.bb27.i.i ], [ %bad_crc32.i.i, %sw.bb24.i.i ], [ %scd_query.i.i, %sw.bb21.i.i ], [ %last_sent_bt_kill.i.i, %sw.bb18.i.i ], [ %last_sent_try.i.i, %sw.bb15.i.i ], [ %last_sent_ttl.i.i, %sw.bb12.i.i ], [ %abort.i.i, %sw.bb9.i.i ], [ %few_bytes.i.i, %sw.bb6.i.i ], [ %bt_prio.i.i, %sw.bb3.i.i ], [ %reply_agg_tx_stats.i.i, %if.then95.i.iwlagn_count_agg_tx_err_status.exit.i_crit_edge ]
  %78 = ptrtoint ptr %unknown.sink51.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %unknown.sink51.i.i, align 4
  %inc37.i.i = add i32 %79, 1
  store i32 %inc37.i.i, ptr %unknown.sink51.i.i, align 4
  br label %if.end96.i

if.end96.i:                                       ; preds = %iwlagn_count_agg_tx_err_status.exit.i, %for.body.i.if.end96.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %74)
  %cmp104.i = icmp ugt i16 %74, 8191
  %or.cond.i = select i1 %tobool94.not.not.i, i1 true, i1 %cmp104.i
  %or.cond170.i = select i1 %tobool98.not.i, i1 %or.cond.i, i1 false
  br i1 %or.cond170.i, label %do.end110.i, label %if.end96.i.cleanup.i_crit_edge

if.end96.i.cleanup.i_crit_edge:                   ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

do.end110.i:                                      ; preds = %if.end96.i
  %80 = ptrtoint ptr %dev76.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev76.i, align 4
  %82 = and i16 %74, 4095
  %conv2.i161.i = zext i16 %82 to i32
  %83 = zext i32 %conv2.i161.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %conv2.i161.i, label %sw.epilog.i.i [
    i32 0, label %do.end110.i.iwl_get_agg_tx_fail_reason.exit.i_crit_edge
    i32 1, label %sw.bb3.i162.i
    i32 2, label %sw.bb4.i.i
    i32 4, label %sw.bb5.i.i
    i32 8, label %sw.bb6.i163.i
    i32 16, label %sw.bb7.i.i
    i32 32, label %sw.bb8.i.i
    i32 64, label %sw.bb9.i164.i
    i32 128, label %sw.bb10.i.i
    i32 256, label %sw.bb11.i.i
    i32 511, label %sw.bb12.i165.i
    i32 512, label %sw.bb13.i.i
    i32 1024, label %sw.bb14.i.i
  ]

do.end110.i.iwl_get_agg_tx_fail_reason.exit.i_crit_edge: ; preds = %do.end110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_get_agg_tx_fail_reason.exit.i

sw.bb3.i162.i:                                    ; preds = %do.end110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_get_agg_tx_fail_reason.exit.i

sw.bb4.i.i:                                       ; preds = %do.end110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_get_agg_tx_fail_reason.exit.i

sw.bb5.i.i:                                       ; preds = %do.end110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_get_agg_tx_fail_reason.exit.i

sw.bb6.i163.i:                                    ; preds = %do.end110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_get_agg_tx_fail_reason.exit.i

sw.bb7.i.i:                                       ; preds = %do.end110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_get_agg_tx_fail_reason.exit.i

sw.bb8.i.i:                                       ; preds = %do.end110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_get_agg_tx_fail_reason.exit.i

sw.bb9.i164.i:                                    ; preds = %do.end110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_get_agg_tx_fail_reason.exit.i

sw.bb10.i.i:                                      ; preds = %do.end110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_get_agg_tx_fail_reason.exit.i

sw.bb11.i.i:                                      ; preds = %do.end110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_get_agg_tx_fail_reason.exit.i

sw.bb12.i165.i:                                   ; preds = %do.end110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_get_agg_tx_fail_reason.exit.i

sw.bb13.i.i:                                      ; preds = %do.end110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_get_agg_tx_fail_reason.exit.i

sw.bb14.i.i:                                      ; preds = %do.end110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_get_agg_tx_fail_reason.exit.i

sw.epilog.i.i:                                    ; preds = %do.end110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_get_agg_tx_fail_reason.exit.i

iwl_get_agg_tx_fail_reason.exit.i:                ; preds = %sw.epilog.i.i, %sw.bb14.i.i, %sw.bb13.i.i, %sw.bb12.i165.i, %sw.bb11.i.i, %sw.bb10.i.i, %sw.bb9.i164.i, %sw.bb8.i.i, %sw.bb7.i.i, %sw.bb6.i163.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i162.i, %do.end110.i.iwl_get_agg_tx_fail_reason.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ @.str.53, %sw.epilog.i.i ], [ @.str.65, %sw.bb14.i.i ], [ @.str.64, %sw.bb13.i.i ], [ @.str.63, %sw.bb12.i165.i ], [ @.str.62, %sw.bb11.i.i ], [ @.str.61, %sw.bb10.i.i ], [ @.str.60, %sw.bb9.i164.i ], [ @.str.59, %sw.bb8.i.i ], [ @.str.58, %sw.bb7.i.i ], [ @.str.57, %sw.bb6.i163.i ], [ @.str.56, %sw.bb5.i.i ], [ @.str.55, %sw.bb4.i.i ], [ @.str.54, %sw.bb3.i162.i ], [ @.str.30, %do.end110.i.iwl_get_agg_tx_fail_reason.exit.i_crit_edge ]
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %81, i32 noundef 1073741824, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_rx_reply_tx_agg, ptr noundef nonnull @.str.89, i32 noundef %i.0169.i, ptr noundef nonnull %retval.0.i.i, i32 noundef %conv2.i161.i, i32 noundef %conv92.i) #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %iwl_get_agg_tx_fail_reason.exit.i, %if.end96.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0169.i, 1
  %84 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %data, align 1
  %conv84.i = zext i8 %85 to i32
  %cmp85.i = icmp ult i32 %inc.i, %conv84.i
  br i1 %cmp85.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.if.end79_crit_edge

cleanup.i.if.end79_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end79:                                         ; preds = %cleanup.i.if.end79_crit_edge, %do.end75.i.if.end79_crit_edge, %if.end65.i.if.end79_crit_edge, %entry.if.end79_crit_edge
  %86 = ptrtoint ptr %skbs to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %skbs, ptr %skbs, align 4
  %prev.i = getelementptr inbounds %struct.anon.52, ptr %skbs, i32 0, i32 1
  %87 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %skbs, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %skbs, i32 0, i32 1
  %88 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %qlen.i, align 4
  %89 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %90)
  %cmp81 = icmp eq i8 %90, 1
  br i1 %cmp81, label %if.then83, label %if.end79.if.end218_crit_edge

if.end79.if.end218_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end218

if.then83:                                        ; preds = %if.end79
  %seq_ctl = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 4
  %91 = ptrtoint ptr %seq_ctl to i32
  call void @__asan_loadN_noabort(i32 %91, i32 2)
  %92 = load i16, ptr %seq_ctl, align 1
  %93 = call i16 @llvm.bswap.i16(i16 %92)
  %94 = add i16 %93, 16
  %95 = lshr i16 %94, 4
  %spec.select = select i1 %cmp, i16 %conv9, i16 %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and12)
  %cmp91.not = icmp eq i32 %and12, 8
  br i1 %cmp91.not, label %if.then83.if.end107_crit_edge, label %if.then93

if.then83.if.end107_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

if.then93:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  %next_reclaimed97 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %23, i32 %and12, i32 1
  %96 = ptrtoint ptr %next_reclaimed97 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %spec.select, ptr %next_reclaimed97, align 2
  %dev102 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %97 = ptrtoint ptr %dev102 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev102, align 4
  %conv103 = zext i16 %spec.select to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %98, i32 noundef 1073741824, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_rx_reply_tx, ptr noundef nonnull @.str.67, i32 noundef %conv103) #9
  %conv106 = trunc i32 %and12 to i8
  call fastcc void @iwlagn_check_ratid_empty(ptr noundef %priv, i32 noundef %23, i8 noundef zeroext %conv106)
  br label %if.end107

if.end107:                                        ; preds = %if.then93, %if.then83.if.end107_crit_edge
  %99 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %priv, align 8
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %100, i32 0, i32 6
  %101 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %102)
  %cmp.not.i = icmp eq i32 %102, 2
  br i1 %cmp.not.i, label %if.end44.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end107
  %.b51.i = load i1, ptr @iwl_trans_reclaim.__already_done, align 1
  br i1 %.b51.i, label %land.rhs.i.do.end40.i_crit_edge, label %if.then.i, !prof !234

land.rhs.i.do.end40.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwl_trans_reclaim.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.83, i32 noundef 1161, i32 noundef 9, ptr noundef null) #9
  br label %do.end40.i

do.end40.i:                                       ; preds = %if.then.i, %land.rhs.i.do.end40.i_crit_edge
  %dev.i325 = getelementptr inbounds %struct.iwl_trans, ptr %100, i32 0, i32 8
  %103 = ptrtoint ptr %dev.i325 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev.i325, align 8
  %105 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %state.i, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %104, i32 noundef 0, ptr noundef nonnull @.str.84, ptr noundef nonnull @__func__.iwl_trans_reclaim, i32 noundef %106) #9
  br label %iwl_trans_reclaim.exit

if.end44.i:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %100, i32 0, i32 1
  %107 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ops.i, align 4
  %reclaim.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %108, i32 0, i32 9
  %109 = ptrtoint ptr %reclaim.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %reclaim.i, align 4
  call void %110(ptr noundef %100, i32 noundef %and, i32 noundef %18, ptr noundef nonnull %skbs) #9
  br label %iwl_trans_reclaim.exit

iwl_trans_reclaim.exit:                           ; preds = %if.end44.i, %do.end40.i
  %111 = ptrtoint ptr %skbs to i32
  call void @__asan_load4_noabort(i32 %111)
  %skb.0346 = load ptr, ptr %skbs, align 4
  %cmp109.not347 = icmp eq ptr %skb.0346, %skbs
  br i1 %cmp109.not347, label %iwl_trans_reclaim.exit.for.end_crit_edge, label %for.body.lr.ph

iwl_trans_reclaim.exit.for.end_crit_edge:         ; preds = %iwl_trans_reclaim.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %iwl_trans_reclaim.exit
  %last_seq_ctl = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 139
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28672, i16 %11)
  %cmp120 = icmp eq i16 %11, -28672
  %passive_no_rx = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 9
  %dev132 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %hw = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 13
  %rate_n_flags = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %failure_frame = getelementptr inbounds %struct.iwlagn_tx_resp, ptr %data, i32 0, i32 3
  %and.i327 = and i32 %conv7, 255
  %112 = add nsw i32 %and.i327, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %112)
  %113 = icmp ult i32 %112, 2
  br label %for.body

for.body:                                         ; preds = %if.end164.for.body_crit_edge, %for.body.lr.ph
  %skb.0349 = phi ptr [ %skb.0346, %for.body.lr.ph ], [ %skb.0, %if.end164.for.body_crit_edge ]
  %freed.0348 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end164.for.body_crit_edge ]
  %data111 = getelementptr inbounds %struct.sk_buff, ptr %skb.0349, i32 0, i32 19
  %114 = ptrtoint ptr %data111 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %data111, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %115, align 2
  %118 = and i16 %117, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %118)
  %cmp.i326 = icmp eq i16 %118, -30720
  br i1 %cmp.i326, label %for.body.if.end115_crit_edge, label %if.then113

for.body.if.end115_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115

if.then113:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %119 = ptrtoint ptr %seq_ctl to i32
  call void @__asan_loadN_noabort(i32 %119, i32 2)
  %120 = load i16, ptr %seq_ctl, align 1
  %121 = ptrtoint ptr %last_seq_ctl to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %120, ptr %last_seq_ctl, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %for.body.if.end115_crit_edge
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0349, i32 0, i32 3
  %122 = getelementptr inbounds %struct.sk_buff, ptr %skb.0349, i32 0, i32 3, i32 8
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 8
  %125 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %priv, align 8
  %arrayidx119 = getelementptr %struct.sk_buff, ptr %skb.0349, i32 0, i32 3, i32 12
  %127 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx119, align 4
  %dev_cmd_pool.i = getelementptr inbounds %struct.iwl_trans, ptr %126, i32 0, i32 28
  %129 = ptrtoint ptr %dev_cmd_pool.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev_cmd_pool.i, align 4
  call void @kmem_cache_free(ptr noundef %130, ptr noundef %128) #9
  %131 = call ptr @memset(ptr %122, i32 0, i32 40)
  br i1 %cmp120, label %land.lhs.true, label %if.end115.if.end153_crit_edge

if.end115.if.end153_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153

land.lhs.true:                                    ; preds = %if.end115
  %132 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %124, align 4
  %tobool122.not = icmp eq ptr %133, null
  br i1 %tobool122.not, label %land.lhs.true.if.end153_crit_edge, label %land.lhs.true123

land.lhs.true.if.end153_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153

land.lhs.true123:                                 ; preds = %land.lhs.true
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %133, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %135)
  %cmp125 = icmp eq i32 %135, 2
  br i1 %cmp125, label %if.then127, label %land.lhs.true123.if.end153_crit_edge

land.lhs.true123.if.end153_crit_edge:             ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153

if.then127:                                       ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #11
  %136 = ptrtoint ptr %passive_no_rx to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 1, ptr %passive_no_rx, align 4
  %137 = ptrtoint ptr %dev132 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev132, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %138, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_rx_reply_tx, ptr noundef nonnull @.str.68) #9
  %139 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %hw, align 4
  call void @ieee80211_stop_queues(ptr noundef %140) #9
  %141 = ptrtoint ptr %dev132 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev132, align 4
  %143 = ptrtoint ptr %rate_n_flags to i32
  call void @__asan_loadN_noabort(i32 %143, i32 4)
  %144 = load i32, ptr %rate_n_flags, align 1
  %145 = call i32 @llvm.bswap.i32(i32 %144)
  %146 = ptrtoint ptr %failure_frame to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %failure_frame, align 1
  %conv141 = zext i8 %147 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %142, i32 noundef 1073741824, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_rx_reply_tx, ptr noundef nonnull @.str.69, i32 noundef %and, ptr noundef nonnull @.str.51, i32 noundef 144, i32 noundef %145, i32 noundef %conv141) #9
  %148 = ptrtoint ptr %dev132 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev132, align 4
  %150 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %data, align 1
  %conv150 = zext i8 %151 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %149, i32 noundef 1073741824, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_rx_reply_tx, ptr noundef nonnull @.str.70, i32 noundef %conv150, i32 noundef %and3) #9
  br label %if.end153

if.end153:                                        ; preds = %if.then127, %land.lhs.true123.if.end153_crit_edge, %land.lhs.true.if.end153_crit_edge, %if.end115.if.end153_crit_edge
  br i1 %cmp, label %land.lhs.true156, label %if.then162.critedge

land.lhs.true156:                                 ; preds = %if.end153
  br i1 %113, label %if.end164.critedge320, label %if.then158

if.then158:                                       ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #11
  %152 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %cb.i, align 8
  %or = or i32 %153, 2048
  store i32 %or, ptr %cb.i, align 8
  call fastcc void @iwlagn_set_tx_status(ptr noundef %priv, ptr noundef %cb.i, ptr noundef %data)
  br label %if.end164

if.then162.critedge:                              ; preds = %if.end153
  call fastcc void @iwlagn_set_tx_status(ptr noundef %priv, ptr noundef %cb.i, ptr noundef %data)
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %115, i32 0, i32 2
  %154 = call i32 @llvm.read_register.i32(metadata !221) #9
  %and.i.i.i.i.i.i = and i32 %154, -16384
  %155 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %157, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !236
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %if.then162.critedge.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then162.critedge.rcu_read_lock.exit.i_crit_edge: ; preds = %if.then162.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then162.critedge
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.92, i32 noundef 696, ptr noundef nonnull @.str.93) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then162.critedge.rcu_read_lock.exit.i_crit_edge
  %158 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %124, align 4
  %call.i330 = call ptr @ieee80211_find_sta(ptr noundef %159, ptr noundef %addr1) #9
  %tobool.not.i = icmp eq ptr %call.i330, null
  br i1 %tobool.not.i, label %rcu_read_lock.exit.i.if.end4.i_crit_edge, label %if.then.i331

rcu_read_lock.exit.i.if.end4.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.then.i331:                                     ; preds = %rcu_read_lock.exit.i
  %client.i = getelementptr inbounds %struct.ieee80211_sta, ptr %call.i330, i32 7, i32 27, i32 1
  %160 = ptrtoint ptr %client.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %client.i, align 4, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool1.not.i = icmp eq i8 %161, 0
  br i1 %tobool1.not.i, label %if.then.i331.if.end4.i_crit_edge, label %land.lhs.true.i333

if.then.i331.if.end4.i_crit_edge:                 ; preds = %if.then.i331
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

land.lhs.true.i333:                               ; preds = %if.then.i331
  %pending_frames.i = getelementptr inbounds %struct.ieee80211_sta, ptr %call.i330, i32 7, i32 27
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pending_frames.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !237
  call void @llvm.prefetch.p0(ptr %pending_frames.i, i32 1, i32 3, i32 1) #9
  %162 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_frames.i, ptr %pending_frames.i, i32 1, ptr elementtype(i32) %pending_frames.i) #9, !srcloc !238
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %162, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i332 = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i332, label %if.then3.i, label %land.lhs.true.i333.if.end4.i_crit_edge

land.lhs.true.i333.if.end4.i_crit_edge:           ; preds = %land.lhs.true.i333
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.then3.i:                                       ; preds = %land.lhs.true.i333
  call void @__sanitizer_cov_trace_pc() #11
  %163 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %hw, align 4
  call void @ieee80211_sta_block_awake(ptr noundef %164, ptr noundef nonnull %call.i330, i1 noundef zeroext false) #9
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %land.lhs.true.i333.if.end4.i_crit_edge, %if.then.i331.if.end4.i_crit_edge, %rcu_read_lock.exit.i.if.end4.i_crit_edge
  %call.i8.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i8.i, label %if.end4.i.iwlagn_non_agg_tx_status.exit_crit_edge, label %land.lhs.true.i11.i

if.end4.i.iwlagn_non_agg_tx_status.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_non_agg_tx_status.exit

land.lhs.true.i11.i:                              ; preds = %if.end4.i
  %call1.i9.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9.i)
  %tobool.not.i10.i = icmp eq i32 %call1.i9.i, 0
  br i1 %tobool.not.i10.i, label %land.lhs.true.i11.i.iwlagn_non_agg_tx_status.exit_crit_edge, label %land.lhs.true2.i13.i

land.lhs.true.i11.i.iwlagn_non_agg_tx_status.exit_crit_edge: ; preds = %land.lhs.true.i11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_non_agg_tx_status.exit

land.lhs.true2.i13.i:                             ; preds = %land.lhs.true.i11.i
  %.b4.i12.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i12.i, label %land.lhs.true2.i13.i.iwlagn_non_agg_tx_status.exit_crit_edge, label %if.then.i14.i

land.lhs.true2.i13.i.iwlagn_non_agg_tx_status.exit_crit_edge: ; preds = %land.lhs.true2.i13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_non_agg_tx_status.exit

if.then.i14.i:                                    ; preds = %land.lhs.true2.i13.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.92, i32 noundef 724, ptr noundef nonnull @.str.94) #9
  br label %iwlagn_non_agg_tx_status.exit

iwlagn_non_agg_tx_status.exit:                    ; preds = %if.then.i14.i, %land.lhs.true2.i13.i.iwlagn_non_agg_tx_status.exit_crit_edge, %land.lhs.true.i11.i.iwlagn_non_agg_tx_status.exit_crit_edge, %if.end4.i.iwlagn_non_agg_tx_status.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !240
  %165 = call i32 @llvm.read_register.i32(metadata !221) #9
  %and.i.i.i.i.i15.i = and i32 %165, -16384
  %166 = inttoptr i32 %and.i.i.i.i.i15.i to ptr
  %preempt_count.i.i.i.i16.i = getelementptr inbounds %struct.thread_info, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %preempt_count.i.i.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile i32, ptr %preempt_count.i.i.i.i16.i, align 4
  %sub.i.i.i.i = add i32 %168, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i16.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %if.end164

if.end164.critedge320:                            ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @iwlagn_set_tx_status(ptr noundef %priv, ptr noundef %cb.i, ptr noundef %data)
  br label %if.end164

if.end164:                                        ; preds = %if.end164.critedge320, %iwlagn_non_agg_tx_status.exit, %if.then158
  %inc = add i32 %freed.0348, 1
  %169 = ptrtoint ptr %skb.0349 to i32
  call void @__asan_load4_noabort(i32 %169)
  %skb.0 = load ptr, ptr %skb.0349, align 4
  %cmp109.not = icmp eq ptr %skb.0, %skbs
  br i1 %cmp109.not, label %if.end164.for.end_crit_edge, label %if.end164.for.body_crit_edge

if.end164.for.body_crit_edge:                     ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end164.for.end_crit_edge:                      ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end164.for.end_crit_edge, %iwl_trans_reclaim.exit.for.end_crit_edge
  %freed.0.lcssa = phi i32 [ 0, %iwl_trans_reclaim.exit.for.end_crit_edge ], [ %inc, %if.end164.for.end_crit_edge ]
  br i1 %cmp91.not, label %for.end.if.end181_crit_edge, label %if.then168

for.end.if.end181_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end181

if.then168:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %next_reclaimed172 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %23, i32 %and12, i32 1
  %170 = ptrtoint ptr %next_reclaimed172 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %spec.select, ptr %next_reclaimed172, align 2
  %dev177 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %171 = ptrtoint ptr %dev177 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev177, align 4
  %conv178 = zext i16 %spec.select to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %172, i32 noundef 1073741824, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_rx_reply_tx, ptr noundef nonnull @.str.67, i32 noundef %conv178) #9
  br label %if.end181

if.end181:                                        ; preds = %if.then168, %for.end.if.end181_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %freed.0.lcssa)
  %cmp184.not = icmp eq i32 %freed.0.lcssa, 1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp184.not
  br i1 %or.cond, label %if.end181.do.end198_crit_edge, label %do.end190

if.end181.do.end198_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end198

do.end190:                                        ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #11
  %dev191 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %173 = ptrtoint ptr %dev191 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev191, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %174, i32 noundef 0, ptr noundef nonnull @.str.71, i32 noundef %and, i32 noundef %freed.0.lcssa) #9
  br label %do.end198

do.end198:                                        ; preds = %do.end190, %if.end181.do.end198_crit_edge
  %dev199 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %175 = ptrtoint ptr %dev199 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %dev199, align 4
  %call200 = call ptr @iwl_get_tx_fail_reason(i32 noundef %conv7)
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %176, i32 noundef 1073741824, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_rx_reply_tx, ptr noundef nonnull @.str.72, i32 noundef %and, ptr noundef nonnull %call200, i32 noundef %conv7) #9
  %177 = ptrtoint ptr %dev199 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev199, align 4
  %rate_n_flags208 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %179 = ptrtoint ptr %rate_n_flags208 to i32
  call void @__asan_loadN_noabort(i32 %179, i32 4)
  %180 = load i32, ptr %rate_n_flags208, align 1
  %181 = call i32 @llvm.bswap.i32(i32 %180)
  %failure_frame209 = getelementptr inbounds %struct.iwlagn_tx_resp, ptr %data, i32 0, i32 3
  %182 = ptrtoint ptr %failure_frame209 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %failure_frame209, align 1
  %conv210 = zext i8 %183 to i32
  %184 = ptrtoint ptr %seq_ctl to i32
  call void @__asan_loadN_noabort(i32 %184, i32 2)
  %185 = load i16, ptr %seq_ctl, align 1
  %186 = call i16 @llvm.bswap.i16(i16 %185)
  %conv215 = zext i16 %186 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %178, i32 noundef 1073741824, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_rx_reply_tx, ptr noundef nonnull @.str.73, i32 noundef %181, i32 noundef %conv210, i32 noundef %and3, i32 noundef %18, i32 noundef %conv215) #9
  br label %if.end218

if.end218:                                        ; preds = %do.end198, %if.end79.if.end218_crit_edge
  %187 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %188)
  %cmp.i335 = icmp eq i8 %188, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31232, i16 %11)
  %cmp2.i = icmp eq i16 %11, -31232
  %or.cond.i336 = and i1 %cmp2.i, %cmp.i335
  br i1 %or.cond.i336, label %do.end.i339, label %if.end218.iwl_check_abort_status.exit_crit_edge

if.end218.iwl_check_abort_status.exit_crit_edge:  ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_check_abort_status.exit

do.end.i339:                                      ; preds = %if.end218
  %dev.i337 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %189 = ptrtoint ptr %dev.i337 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev.i337, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %190, i32 noundef 0, ptr noundef nonnull @.str.95) #9
  %status6.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  %191 = ptrtoint ptr %status6.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load volatile i32, ptr %status6.i, align 4
  %193 = and i32 %192, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool.not.i338 = icmp eq i32 %193, 0
  br i1 %tobool.not.i338, label %if.then7.i, label %do.end.i339.iwl_check_abort_status.exit_crit_edge

do.end.i339.iwl_check_abort_status.exit_crit_edge: ; preds = %do.end.i339
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_check_abort_status.exit

if.then7.i:                                       ; preds = %do.end.i339
  call void @__sanitizer_cov_trace_pc() #11
  %workqueue.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 16
  %194 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %workqueue.i, align 4
  %tx_flush.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 112
  %call.i.i340 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %195, ptr noundef %tx_flush.i) #9
  br label %iwl_check_abort_status.exit

iwl_check_abort_status.exit:                      ; preds = %if.then7.i, %do.end.i339.iwl_check_abort_status.exit_crit_edge, %if.end218.iwl_check_abort_status.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #9
  %196 = ptrtoint ptr %skbs to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %skbs, align 4
  %cmp.i341350 = icmp eq ptr %197, %skbs
  br i1 %cmp.i341350, label %iwl_check_abort_status.exit.while.end_crit_edge, label %while.body.lr.ph

iwl_check_abort_status.exit.while.end_crit_edge:  ; preds = %iwl_check_abort_status.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %iwl_check_abort_status.exit
  %hw226 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 13
  br label %while.body

while.body:                                       ; preds = %__skb_dequeue.exit.while.body_crit_edge, %while.body.lr.ph
  %198 = phi ptr [ %197, %while.body.lr.ph ], [ %210, %__skb_dequeue.exit.while.body_crit_edge ]
  %tobool.not.i343 = icmp eq ptr %198, null
  br i1 %tobool.not.i343, label %while.body.__skb_dequeue.exit_crit_edge, label %if.then.i344

while.body.__skb_dequeue.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %__skb_dequeue.exit

if.then.i344:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %199 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %qlen.i, align 4
  %sub.i.i = add i32 %200, -1
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %201 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %198, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon, ptr %198, i32 0, i32 1
  %203 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %198, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon, ptr %202, i32 0, i32 1
  %205 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store volatile ptr %204, ptr %prev17.i.i, align 4
  %206 = ptrtoint ptr %204 to i32
  call void @__asan_store4_noabort(i32 %206)
  store volatile ptr %202, ptr %204, align 8
  br label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %if.then.i344, %while.body.__skb_dequeue.exit_crit_edge
  %207 = ptrtoint ptr %hw226 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %hw226, align 4
  call void @ieee80211_tx_status(ptr noundef %208, ptr noundef %198) #9
  %209 = ptrtoint ptr %skbs to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %skbs, align 4
  %cmp.i341 = icmp eq ptr %210, %skbs
  br i1 %cmp.i341, label %__skb_dequeue.exit.while.end_crit_edge, label %__skb_dequeue.exit.while.body_crit_edge

__skb_dequeue.exit.while.body_crit_edge:          ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

__skb_dequeue.exit.while.end_crit_edge:           ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %__skb_dequeue.exit.while.end_crit_edge, %iwl_check_abort_status.exit.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %skbs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwlagn_check_ratid_empty(ptr noundef %priv, i32 noundef %sta_id, i8 noundef zeroext %tid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %tid to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !231

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 747, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %sta27 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %sta_id, i32 0, i32 2
  %ctxid = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 63, i32 %sta_id, i32 2
  %1 = ptrtoint ptr %ctxid to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ctxid, align 1
  %conv = zext i8 %2 to i32
  %arrayidx31 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 %conv
  %3 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx31, align 4
  %state = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %sta_id, i32 %idxprom, i32 2, i32 1
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %6, label %if.end.sw.epilog_crit_edge [
    i32 4, label %sw.bb
    i32 3, label %sw.bb60
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %ssn = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %sta_id, i32 %idxprom, i32 2, i32 3
  %8 = ptrtoint ptr %ssn to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ssn, align 2
  %next_reclaimed = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %sta_id, i32 %idxprom, i32 1
  %10 = ptrtoint ptr %next_reclaimed to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %next_reclaimed, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp40 = icmp eq i16 %9, %11
  br i1 %cmp40, label %do.end46, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end46:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %conv39 = zext i16 %9 to i32
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %13, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_check_ratid_empty, ptr noundef nonnull @.str.90, i32 noundef %conv39) #9
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 8
  %txq_id = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %sta_id, i32 %idxprom, i32 2, i32 2
  %16 = ptrtoint ptr %txq_id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %txq_id, align 4
  %conv52 = zext i16 %17 to i32
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %txq_disable.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %txq_disable.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %txq_disable.i, align 4
  tail call void %21(ptr noundef %15, i32 noundef %conv52, i1 noundef zeroext true) #9
  %22 = ptrtoint ptr %txq_id to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %txq_id, align 4
  %conv55 = zext i16 %23 to i32
  %agg_q_alloc.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef %conv55, ptr noundef %agg_q_alloc.i) #9
  %arrayidx.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 10, i32 %conv55
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %arrayidx.i, align 1
  %25 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %state, align 4
  %conv58 = zext i8 %tid to i16
  tail call void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef %4, ptr noundef %sta27, i16 noundef zeroext %conv58) #9
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.end
  %ssn62 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %sta_id, i32 %idxprom, i32 2, i32 3
  %26 = ptrtoint ptr %ssn62 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %ssn62, align 2
  %next_reclaimed64 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %sta_id, i32 %idxprom, i32 1
  %28 = ptrtoint ptr %next_reclaimed64 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %next_reclaimed64, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %29)
  %cmp66 = icmp eq i16 %27, %29
  br i1 %cmp66, label %do.end72, label %sw.bb60.sw.epilog_crit_edge

sw.bb60.sw.epilog_crit_edge:                      ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end72:                                         ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #11
  %conv65 = zext i16 %27 to i32
  %dev73 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %30 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev73, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %31, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_check_ratid_empty, ptr noundef nonnull @.str.91, i32 noundef %conv65) #9
  %32 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %state, align 4
  %conv80 = zext i8 %tid to i16
  tail call void @ieee80211_start_tx_ba_cb_irqsafe(ptr noundef %4, ptr noundef %sta27, i16 noundef zeroext %conv80) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end72, %sw.bb60.sw.epilog_crit_edge, %do.end46, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwlagn_set_tx_status(ptr noundef %priv, ptr nocapture noundef %info, ptr nocapture noundef readonly %tx_resp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %status1 = getelementptr inbounds %struct.iwlagn_tx_resp, ptr %tx_resp, i32 0, i32 16
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %status1, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %3 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %info, align 8
  %and = and i32 %4, -65
  store i32 %and, ptr %info, align 8
  %failure_frame = getelementptr inbounds %struct.iwlagn_tx_resp, ptr %tx_resp, i32 0, i32 3
  %5 = ptrtoint ptr %failure_frame to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %failure_frame, align 1
  %7 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2
  %count = getelementptr inbounds %struct.ieee80211_tx_rate, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %bf.load = load i16, ptr %count, align 1
  %9 = add i8 %6, 1
  %bf.value = zext i8 %9 to i16
  %bf.shl = shl i16 %bf.value, 11
  %bf.clear = and i16 %bf.load, 2047
  %bf.set = or i16 %bf.shl, %bf.clear
  store i16 %bf.set, ptr %count, align 1
  %trunc.i = trunc i16 %2 to i8
  %10 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.105)
  switch i8 %trunc.i, label %sw.default.i [
    i8 1, label %entry.iwl_tx_status_to_mac80211.exit_crit_edge
    i8 2, label %entry.iwl_tx_status_to_mac80211.exit_crit_edge19
    i8 -120, label %entry.sw.bb1.i_crit_edge
    i8 -112, label %entry.sw.bb1.i_crit_edge20
  ]

entry.sw.bb1.i_crit_edge20:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

entry.iwl_tx_status_to_mac80211.exit_crit_edge19: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_tx_status_to_mac80211.exit

entry.iwl_tx_status_to_mac80211.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_tx_status_to_mac80211.exit

sw.bb1.i:                                         ; preds = %entry.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge20
  br label %iwl_tx_status_to_mac80211.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_tx_status_to_mac80211.exit

iwl_tx_status_to_mac80211.exit:                   ; preds = %sw.default.i, %sw.bb1.i, %entry.iwl_tx_status_to_mac80211.exit_crit_edge, %entry.iwl_tx_status_to_mac80211.exit_crit_edge19
  %retval.0.i = phi i32 [ 0, %sw.default.i ], [ 256, %sw.bb1.i ], [ 512, %entry.iwl_tx_status_to_mac80211.exit_crit_edge ], [ 512, %entry.iwl_tx_status_to_mac80211.exit_crit_edge19 ]
  %or = or i32 %retval.0.i, %and
  %11 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or, ptr %info, align 8
  %rate_n_flags = getelementptr inbounds %struct.iwlagn_tx_resp, ptr %tx_resp, i32 0, i32 4
  %12 = ptrtoint ptr %rate_n_flags to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %rate_n_flags, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %and.i = lshr i32 %14, 14
  %15 = trunc i32 %and.i to i8
  %conv.i = and i8 %15, 7
  %antenna.i = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2, i32 1, i32 10
  %16 = ptrtoint ptr %antenna.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.i, ptr %antenna.i, align 2
  %and1.i = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %iwl_tx_status_to_mac80211.exit.if.end.i_crit_edge, label %if.then.i

iwl_tx_status_to_mac80211.exit.if.end.i_crit_edge: ; preds = %iwl_tx_status_to_mac80211.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %iwl_tx_status_to_mac80211.exit
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set.i = or i16 %bf.set, 8
  %17 = ptrtoint ptr %count to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %bf.set.i, ptr %count, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %iwl_tx_status_to_mac80211.exit.if.end.i_crit_edge
  %and6.i = and i32 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end.i.if.end19.i_crit_edge, label %if.then8.i

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %bf.load10.i = load i16, ptr %count, align 1
  %bf.set18.i = or i16 %bf.load10.i, 16
  store i16 %bf.set18.i, ptr %count, align 1
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then8.i, %if.end.i.if.end19.i_crit_edge
  %and20.i = and i32 %14, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.end19.i.if.end33.i_crit_edge, label %if.then22.i

if.end19.i.if.end33.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %bf.load24.i = load i16, ptr %count, align 1
  %bf.set32.i = or i16 %bf.load24.i, 32
  store i16 %bf.set32.i, ptr %count, align 1
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then22.i, %if.end19.i.if.end33.i_crit_edge
  %and34.i = and i32 %14, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %if.end33.i.if.end47.i_crit_edge, label %if.then36.i

if.end33.i.if.end47.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

if.then36.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %bf.load38.i = load i16, ptr %count, align 1
  %bf.set46.i = or i16 %bf.load38.i, 64
  store i16 %bf.set46.i, ptr %count, align 1
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then36.i, %if.end33.i.if.end47.i_crit_edge
  %and48.i = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %if.end47.i.iwlagn_hwrate_to_tx_control.exit_crit_edge, label %if.then50.i

if.end47.i.iwlagn_hwrate_to_tx_control.exit_crit_edge: ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_hwrate_to_tx_control.exit

if.then50.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %bf.load52.i = load i16, ptr %count, align 1
  %bf.set60.i = or i16 %bf.load52.i, 128
  store i16 %bf.set60.i, ptr %count, align 1
  br label %iwlagn_hwrate_to_tx_control.exit

iwlagn_hwrate_to_tx_control.exit:                 ; preds = %if.then50.i, %if.end47.i.iwlagn_hwrate_to_tx_control.exit_crit_edge
  %band.i = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 1
  %22 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load62.i = load i32, ptr %band.i, align 4
  %bf.lshr.i = lshr i32 %bf.load62.i, 29
  %call.i = tail call i32 @iwlagn_hwrate_to_mac80211_idx(i32 noundef %14, i32 noundef %bf.lshr.i) #9
  %conv63.i = trunc i32 %call.i to i8
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv63.i, ptr %7, align 1
  %24 = and i16 %2, 255
  %and.i16 = zext i16 %24 to i32
  %25 = add nsw i32 %and.i16, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %26 = icmp ult i32 %25, 2
  br i1 %26, label %iwlagn_hwrate_to_tx_control.exit.if.end_crit_edge, label %if.then

iwlagn_hwrate_to_tx_control.exit.if.end_crit_edge: ; preds = %iwlagn_hwrate_to_tx_control.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %iwlagn_hwrate_to_tx_control.exit
  %27 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.106)
  switch i8 %trunc.i, label %sw.default.i18 [
    i8 64, label %sw.bb.i
    i8 65, label %sw.bb3.i
    i8 66, label %sw.bb6.i
    i8 67, label %sw.bb9.i
    i8 68, label %sw.bb12.i
    i8 -127, label %sw.bb15.i
    i8 -126, label %sw.bb18.i
    i8 -125, label %sw.bb21.i
    i8 -124, label %sw.bb24.i
    i8 -123, label %sw.bb27.i
    i8 -122, label %sw.bb30.i
    i8 -121, label %sw.bb33.i
    i8 -120, label %sw.bb36.i
    i8 -119, label %sw.bb39.i
    i8 -118, label %sw.bb42.i
    i8 -117, label %sw.bb45.i
    i8 -116, label %sw.bb48.i
    i8 -115, label %sw.bb51.i
    i8 -114, label %sw.bb54.i
    i8 -113, label %sw.bb57.i
    i8 -112, label %sw.bb60.i
    i8 -111, label %sw.bb63.i
  ]

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %reply_tx_stats.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 81
  %28 = ptrtoint ptr %reply_tx_stats.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reply_tx_stats.i, align 8
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr %reply_tx_stats.i, align 8
  br label %if.end

sw.bb3.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %pp_few_bytes.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 81, i32 1
  %30 = ptrtoint ptr %pp_few_bytes.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pp_few_bytes.i, align 4
  %inc5.i = add i32 %31, 1
  store i32 %inc5.i, ptr %pp_few_bytes.i, align 4
  br label %if.end

sw.bb6.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %pp_bt_prio.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 81, i32 2
  %32 = ptrtoint ptr %pp_bt_prio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pp_bt_prio.i, align 8
  %inc8.i = add i32 %33, 1
  store i32 %inc8.i, ptr %pp_bt_prio.i, align 8
  br label %if.end

sw.bb9.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %pp_quiet_period.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 81, i32 3
  %34 = ptrtoint ptr %pp_quiet_period.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pp_quiet_period.i, align 4
  %inc11.i = add i32 %35, 1
  store i32 %inc11.i, ptr %pp_quiet_period.i, align 4
  br label %if.end

sw.bb12.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %pp_calc_ttak.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 81, i32 4
  %36 = ptrtoint ptr %pp_calc_ttak.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pp_calc_ttak.i, align 8
  %inc14.i = add i32 %37, 1
  store i32 %inc14.i, ptr %pp_calc_ttak.i, align 8
  br label %if.end

sw.bb15.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %int_crossed_retry.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 81, i32 5
  %38 = ptrtoint ptr %int_crossed_retry.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %int_crossed_retry.i, align 4
  %inc17.i = add i32 %39, 1
  store i32 %inc17.i, ptr %int_crossed_retry.i, align 4
  br label %if.end

sw.bb18.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %short_limit.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 81, i32 6
  %40 = ptrtoint ptr %short_limit.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %short_limit.i, align 8
  %inc20.i = add i32 %41, 1
  store i32 %inc20.i, ptr %short_limit.i, align 8
  br label %if.end

sw.bb21.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %long_limit.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 81, i32 7
  %42 = ptrtoint ptr %long_limit.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %long_limit.i, align 4
  %inc23.i = add i32 %43, 1
  store i32 %inc23.i, ptr %long_limit.i, align 4
  br label %if.end

sw.bb24.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %fifo_underrun.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 81, i32 8
  %44 = ptrtoint ptr %fifo_underrun.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fifo_underrun.i, align 8
  %inc26.i = add i32 %45, 1
  store i32 %inc26.i, ptr %fifo_underrun.i, align 8
  br label %if.end

sw.bb27.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %drain_flow.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 81, i32 9
  %46 = ptrtoint ptr %drain_flow.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %drain_flow.i, align 4
  %inc29.i = add i32 %47, 1
  store i32 %inc29.i, ptr %drain_flow.i, align 4
  br label %if.end

sw.bb30.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %rfkill_flush.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 81, i32 10
  %48 = ptrtoint ptr %rfkill_flush.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rfkill_flush.i, align 8
  %inc32.i = add i32 %49, 1
  store i32 %inc32.i, ptr %rfkill_flush.i, align 8
  br label %if.end

sw.bb33.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %life_expire.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 81, i32 11
  %50 = ptrtoint ptr %life_expire.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %life_expire.i, align 4
  %inc35.i = add i32 %51, 1
  store i32 %inc35.i, ptr %life_expire.i, align 4
  br label %if.end

sw.bb36.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dest_ps.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 81, i32 12
  %52 = ptrtoint ptr %dest_ps.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dest_ps.i, align 8
  %inc38.i = add i32 %53, 1
  store i32 %inc38.i, ptr %dest_ps.i, align 8
  br label %if.end

sw.bb39.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %host_abort.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 81, i32 13
  %54 = ptrtoint ptr %host_abort.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %host_abort.i, align 4
  %inc41.i = add i32 %55, 1
  store i32 %inc41.i, ptr %host_abort.i, align 4
  br label %if.end

sw.bb42.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %bt_retry.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 81, i32 14
  %56 = ptrtoint ptr %bt_retry.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bt_retry.i, align 8
  %inc44.i = add i32 %57, 1
  store i32 %inc44.i, ptr %bt_retry.i, align 8
  br label %if.end

sw.bb45.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %sta_invalid.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 81, i32 15
  %58 = ptrtoint ptr %sta_invalid.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sta_invalid.i, align 4
  %inc47.i = add i32 %59, 1
  store i32 %inc47.i, ptr %sta_invalid.i, align 4
  br label %if.end

sw.bb48.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %frag_drop.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 81, i32 16
  %60 = ptrtoint ptr %frag_drop.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %frag_drop.i, align 8
  %inc50.i = add i32 %61, 1
  store i32 %inc50.i, ptr %frag_drop.i, align 8
  br label %if.end

sw.bb51.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %tid_disable.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 81, i32 17
  %62 = ptrtoint ptr %tid_disable.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tid_disable.i, align 4
  %inc53.i = add i32 %63, 1
  store i32 %inc53.i, ptr %tid_disable.i, align 4
  br label %if.end

sw.bb54.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %fifo_flush.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 81, i32 18
  %64 = ptrtoint ptr %fifo_flush.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %fifo_flush.i, align 8
  %inc56.i = add i32 %65, 1
  store i32 %inc56.i, ptr %fifo_flush.i, align 8
  br label %if.end

sw.bb57.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %insuff_cf_poll.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 81, i32 19
  %66 = ptrtoint ptr %insuff_cf_poll.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %insuff_cf_poll.i, align 4
  %inc59.i = add i32 %67, 1
  store i32 %inc59.i, ptr %insuff_cf_poll.i, align 4
  br label %if.end

sw.bb60.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %fail_hw_drop.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 81, i32 20
  %68 = ptrtoint ptr %fail_hw_drop.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %fail_hw_drop.i, align 8
  %inc62.i = add i32 %69, 1
  store i32 %inc62.i, ptr %fail_hw_drop.i, align 8
  br label %if.end

sw.bb63.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %sta_color_mismatch.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 81, i32 21
  %70 = ptrtoint ptr %sta_color_mismatch.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %sta_color_mismatch.i, align 4
  %inc65.i = add i32 %71, 1
  store i32 %inc65.i, ptr %sta_color_mismatch.i, align 4
  br label %if.end

sw.default.i18:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %unknown.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 81, i32 22
  %72 = ptrtoint ptr %unknown.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %unknown.i, align 8
  %inc67.i = add i32 %73, 1
  store i32 %inc67.i, ptr %unknown.i, align 8
  br label %if.end

if.end:                                           ; preds = %sw.default.i18, %sw.bb63.i, %sw.bb60.i, %sw.bb57.i, %sw.bb54.i, %sw.bb51.i, %sw.bb48.i, %sw.bb45.i, %sw.bb42.i, %sw.bb39.i, %sw.bb36.i, %sw.bb33.i, %sw.bb30.i, %sw.bb27.i, %sw.bb24.i, %sw.bb21.i, %sw.bb18.i, %sw.bb15.i, %sw.bb12.i, %sw.bb9.i, %sw.bb6.i, %sw.bb3.i, %sw.bb.i, %iwlagn_hwrate_to_tx_control.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwlagn_rx_reply_compressed_ba(ptr noundef %priv, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
entry:
  %reclaimed_skbs = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #9
  %2 = ptrtoint ptr %call.i to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %reclaimed_skbs) #9
  %6 = getelementptr inbounds i8, ptr %reclaimed_skbs, i32 12
  %7 = call ptr @memset(ptr %6, i32 255, i32 44)
  %scd_flow1 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 3, i32 1
  %8 = ptrtoint ptr %scd_flow1 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %scd_flow1, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %scd_ssn = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 3, i32 1, i32 2
  %11 = ptrtoint ptr %scd_ssn to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %scd_ssn, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv = zext i16 %10 to i32
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 8
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trans_cfg, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %num_of_queues = getelementptr inbounds %struct.iwl_base_params, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %num_of_queues to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %num_of_queues, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %21)
  %cmp.not = icmp ult i16 %10, %21
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %23, i32 noundef 0, ptr noundef nonnull @.str.74) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sta_id7 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2
  %24 = ptrtoint ptr %sta_id7 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %sta_id7, align 1
  %conv8 = zext i8 %25 to i32
  %tid9 = getelementptr inbounds %struct.iwl_compressed_ba_resp, ptr %data, i32 0, i32 4
  %26 = ptrtoint ptr %tid9 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tid9, align 1
  %conv10 = zext i8 %27 to i32
  %agg12 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %conv8, i32 %conv10, i32 2
  %sta_lock = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_lock) #9
  %wait_for_ba = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %conv8, i32 %conv10, i32 2, i32 4
  %28 = ptrtoint ptr %wait_for_ba to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %wait_for_ba, align 4, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not = icmp eq i8 %29, 0
  br i1 %tobool.not, label %if.then16, label %if.end34, !prof !231

if.then16:                                        ; preds = %if.end
  %bitmap = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2, i32 1
  %30 = ptrtoint ptr %bitmap to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %bitmap, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %tobool17.not = icmp eq i64 %31, 0
  br i1 %tobool17.not, label %if.then16.if.end32_crit_edge, label %do.end28, !prof !234

if.then16.if.end32_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

do.end28:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %dev29 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %32 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev29, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %33, i32 noundef 0, ptr noundef nonnull @.str.75) #9
  br label %if.end32

if.end32:                                         ; preds = %do.end28, %if.then16.if.end32_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #9
  br label %cleanup

if.end34:                                         ; preds = %if.end
  %txq_id = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %conv8, i32 %conv10, i32 2, i32 2
  %34 = ptrtoint ptr %txq_id to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %txq_id, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %35)
  %cmp37.not = icmp eq i16 %10, %35
  br i1 %cmp37.not, label %if.end57, label %do.end49, !prof !234

do.end49:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %conv36 = zext i16 %35 to i32
  %dev50 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %36 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev50, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %37, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_rx_reply_compressed_ba, ptr noundef nonnull @.str.76, i32 noundef %conv, i32 noundef %conv8, i32 noundef %conv10, i32 noundef %conv36) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #9
  br label %cleanup

if.end57:                                         ; preds = %if.end34
  %38 = ptrtoint ptr %reclaimed_skbs to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %reclaimed_skbs, ptr %reclaimed_skbs, align 4
  %prev.i = getelementptr inbounds %struct.anon.52, ptr %reclaimed_skbs, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %reclaimed_skbs, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %reclaimed_skbs, i32 0, i32 1
  %40 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %qlen.i, align 4
  %41 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv, align 8
  %conv60 = zext i16 %13 to i32
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp.not.i = icmp eq i32 %44, 2
  br i1 %cmp.not.i, label %if.end44.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end57
  %.b51.i = load i1, ptr @iwl_trans_reclaim.__already_done, align 1
  br i1 %.b51.i, label %land.rhs.i.do.end40.i_crit_edge, label %if.then.i, !prof !234

land.rhs.i.do.end40.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwl_trans_reclaim.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.83, i32 noundef 1161, i32 noundef 9, ptr noundef null) #9
  br label %do.end40.i

do.end40.i:                                       ; preds = %if.then.i, %land.rhs.i.do.end40.i_crit_edge
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %42, i32 0, i32 8
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 8
  %47 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %state.i, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %46, i32 noundef 0, ptr noundef nonnull @.str.84, ptr noundef nonnull @__func__.iwl_trans_reclaim, i32 noundef %48) #9
  br label %iwl_trans_reclaim.exit

if.end44.i:                                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %42, i32 0, i32 1
  %49 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i, align 4
  %reclaim.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %reclaim.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reclaim.i, align 4
  call void %52(ptr noundef %42, i32 noundef %conv, i32 noundef %conv60, ptr noundef nonnull %reclaimed_skbs) #9
  br label %iwl_trans_reclaim.exit

iwl_trans_reclaim.exit:                           ; preds = %if.end44.i, %do.end40.i
  %dev65 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %53 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev65, align 4
  %55 = ptrtoint ptr %wait_for_ba to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %wait_for_ba, align 4, !range !233
  %57 = zext i8 %56 to i32
  %58 = ptrtoint ptr %sta_id7 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %sta_id7, align 1
  %conv70 = zext i8 %59 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %54, i32 noundef 1073741824, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_rx_reply_compressed_ba, ptr noundef nonnull @.str.77, i32 noundef %57, ptr noundef %data, i32 noundef %conv70) #9
  %60 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev65, align 4
  %62 = ptrtoint ptr %tid9 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %tid9, align 1
  %conv79 = zext i8 %63 to i32
  %seq_ctl = getelementptr inbounds %struct.iwl_compressed_ba_resp, ptr %data, i32 0, i32 5
  %64 = ptrtoint ptr %seq_ctl to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %seq_ctl, align 1
  %66 = call i16 @llvm.bswap.i16(i16 %65)
  %conv80 = zext i16 %66 to i32
  %bitmap81 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2, i32 1
  %67 = ptrtoint ptr %bitmap81 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 8)
  %68 = load i64, ptr %bitmap81, align 1
  %69 = call i64 @llvm.bswap.i64(i64 %68)
  %txed = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 4
  %70 = ptrtoint ptr %txed to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %txed, align 1
  %conv84 = zext i8 %71 to i32
  %txed_2_done = getelementptr inbounds %struct.iwl_compressed_ba_resp, ptr %data, i32 0, i32 10
  %72 = ptrtoint ptr %txed_2_done to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %txed_2_done, align 1
  %conv85 = zext i8 %73 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %61, i32 noundef 1073741824, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_rx_reply_compressed_ba, ptr noundef nonnull @.str.78, i32 noundef %conv79, i32 noundef %conv80, i64 noundef %69, i32 noundef %conv, i32 noundef %conv60, i32 noundef %conv84, i32 noundef %conv85) #9
  %74 = ptrtoint ptr %wait_for_ba to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %wait_for_ba, align 4
  %75 = ptrtoint ptr %txed_2_done to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %txed_2_done, align 1
  %77 = ptrtoint ptr %txed to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %txed, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %76, i8 %78)
  %cmp93 = icmp ugt i8 %76, %78
  br i1 %cmp93, label %do.end99, label %iwl_trans_reclaim.exit.if.end109_crit_edge

iwl_trans_reclaim.exit.if.end109_crit_edge:       ; preds = %iwl_trans_reclaim.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

do.end99:                                         ; preds = %iwl_trans_reclaim.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv92 = zext i8 %78 to i32
  %conv90 = zext i8 %76 to i32
  %79 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev65, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %80, i32 noundef 1073741824, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_rx_reply_compressed_ba, ptr noundef nonnull @.str.79, i32 noundef %conv92, i32 noundef %conv90) #9
  %81 = ptrtoint ptr %txed_2_done to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %txed_2_done, align 1
  %83 = ptrtoint ptr %txed to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %txed, align 1
  br label %if.end109

if.end109:                                        ; preds = %do.end99, %iwl_trans_reclaim.exit.if.end109_crit_edge
  %next_reclaimed = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 %conv8, i32 %conv10, i32 1
  %84 = ptrtoint ptr %next_reclaimed to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %13, ptr %next_reclaimed, align 2
  call fastcc void @iwlagn_check_ratid_empty(ptr noundef %priv, i32 noundef %conv8, i8 noundef zeroext %27)
  %85 = ptrtoint ptr %reclaimed_skbs to i32
  call void @__asan_load4_noabort(i32 %85)
  %skb.0269 = load ptr, ptr %reclaimed_skbs, align 4
  %cmp114.not270 = icmp eq ptr %skb.0269, %reclaimed_skbs
  br i1 %cmp114.not270, label %if.end109.for.end_crit_edge, label %if.end109.for.body_crit_edge

if.end109.for.body_crit_edge:                     ; preds = %if.end109
  br label %for.body

if.end109.for.end_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end175.for.body_crit_edge, %if.end109.for.body_crit_edge
  %skb.0272 = phi ptr [ %skb.0, %if.end175.for.body_crit_edge ], [ %skb.0269, %if.end109.for.body_crit_edge ]
  %freed.0271 = phi i32 [ %freed.1, %if.end175.for.body_crit_edge ], [ 0, %if.end109.for.body_crit_edge ]
  %data116 = getelementptr inbounds %struct.sk_buff, ptr %skb.0272, i32 0, i32 19
  %86 = ptrtoint ptr %data116 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %data116, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0272, i32 0, i32 3
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %87, align 2
  %90 = and i16 %89, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %90)
  %cmp.i = icmp eq i16 %90, -30720
  br i1 %cmp.i, label %if.then119, label %land.end

if.then119:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add i32 %freed.0271, 1
  br label %if.end164

land.end:                                         ; preds = %for.body
  %.b260 = load i1, ptr @iwlagn_rx_reply_compressed_ba.__already_done, align 1
  br i1 %.b260, label %land.end.if.end164_crit_edge, label %if.then131, !prof !234

land.end.if.end164_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end164

if.then131:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwlagn_rx_reply_compressed_ba.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1359, i32 noundef 9, ptr noundef null) #9
  br label %if.end164

if.end164:                                        ; preds = %if.then131, %land.end.if.end164_crit_edge, %if.then119
  %freed.1 = phi i32 [ %inc, %if.then119 ], [ %freed.0271, %if.then131 ], [ %freed.0271, %land.end.if.end164_crit_edge ]
  %91 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %priv, align 8
  %93 = getelementptr inbounds %struct.sk_buff, ptr %skb.0272, i32 0, i32 3, i32 8
  %arrayidx166 = getelementptr %struct.sk_buff, ptr %skb.0272, i32 0, i32 3, i32 12
  %94 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx166, align 4
  %dev_cmd_pool.i = getelementptr inbounds %struct.iwl_trans, ptr %92, i32 0, i32 28
  %96 = ptrtoint ptr %dev_cmd_pool.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev_cmd_pool.i, align 4
  call void @kmem_cache_free(ptr noundef %97, ptr noundef %95) #9
  %98 = call ptr @memset(ptr %93, i32 0, i32 40)
  %99 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %cb.i, align 8
  %or = or i32 %100, 512
  store i32 %or, ptr %cb.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %freed.1)
  %cmp167 = icmp eq i32 %freed.1, 1
  br i1 %cmp167, label %if.then169, label %if.end164.if.end175_crit_edge

if.end164.if.end175_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end175

if.then169:                                       ; preds = %if.end164
  %or172 = or i32 %100, 1536
  %101 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %or172, ptr %cb.i, align 8
  %102 = ptrtoint ptr %txed_2_done to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %txed_2_done, align 1
  %ampdu_ack_len = getelementptr inbounds %struct.sk_buff, ptr %skb.0272, i32 0, i32 3, i32 24
  %104 = ptrtoint ptr %ampdu_ack_len to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %ampdu_ack_len, align 8
  %105 = ptrtoint ptr %txed to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %txed, align 1
  %ampdu_len = getelementptr inbounds %struct.sk_buff, ptr %skb.0272, i32 0, i32 3, i32 25
  %107 = ptrtoint ptr %ampdu_len to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %ampdu_len, align 1
  %108 = ptrtoint ptr %agg12 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %agg12, align 4
  %and.i = lshr i32 %109, 14
  %110 = trunc i32 %and.i to i8
  %conv.i = and i8 %110, 7
  %antenna.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0272, i32 0, i32 3, i32 26
  %111 = ptrtoint ptr %antenna.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv.i, ptr %antenna.i, align 2
  %and1.i = and i32 %109, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %if.then169.if.end.i_crit_edge, label %if.then.i262

if.then169.if.end.i_crit_edge:                    ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i262:                                     ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0272, i32 0, i32 3, i32 9
  %112 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %112, i32 2)
  %bf.load.i = load i16, ptr %flags.i, align 1
  %bf.set.i = or i16 %bf.load.i, 8
  store i16 %bf.set.i, ptr %flags.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i262, %if.then169.if.end.i_crit_edge
  %and6.i = and i32 %109, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end.i.if.end19.i_crit_edge, label %if.then8.i

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags9.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0272, i32 0, i32 3, i32 9
  %113 = ptrtoint ptr %flags9.i to i32
  call void @__asan_loadN_noabort(i32 %113, i32 2)
  %bf.load10.i = load i16, ptr %flags9.i, align 1
  %bf.set18.i = or i16 %bf.load10.i, 16
  store i16 %bf.set18.i, ptr %flags9.i, align 1
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then8.i, %if.end.i.if.end19.i_crit_edge
  %and20.i = and i32 %109, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.end19.i.if.end33.i_crit_edge, label %if.then22.i

if.end19.i.if.end33.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags23.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0272, i32 0, i32 3, i32 9
  %114 = ptrtoint ptr %flags23.i to i32
  call void @__asan_loadN_noabort(i32 %114, i32 2)
  %bf.load24.i = load i16, ptr %flags23.i, align 1
  %bf.set32.i = or i16 %bf.load24.i, 32
  store i16 %bf.set32.i, ptr %flags23.i, align 1
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then22.i, %if.end19.i.if.end33.i_crit_edge
  %and34.i = and i32 %109, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %if.end33.i.if.end47.i_crit_edge, label %if.then36.i

if.end33.i.if.end47.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

if.then36.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags37.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0272, i32 0, i32 3, i32 9
  %115 = ptrtoint ptr %flags37.i to i32
  call void @__asan_loadN_noabort(i32 %115, i32 2)
  %bf.load38.i = load i16, ptr %flags37.i, align 1
  %bf.set46.i = or i16 %bf.load38.i, 64
  store i16 %bf.set46.i, ptr %flags37.i, align 1
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then36.i, %if.end33.i.if.end47.i_crit_edge
  %and48.i = and i32 %109, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %if.end47.i.iwlagn_hwrate_to_tx_control.exit_crit_edge, label %if.then50.i

if.end47.i.iwlagn_hwrate_to_tx_control.exit_crit_edge: ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_hwrate_to_tx_control.exit

if.then50.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags51.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0272, i32 0, i32 3, i32 9
  %116 = ptrtoint ptr %flags51.i to i32
  call void @__asan_loadN_noabort(i32 %116, i32 2)
  %bf.load52.i = load i16, ptr %flags51.i, align 1
  %bf.set60.i = or i16 %bf.load52.i, 128
  store i16 %bf.set60.i, ptr %flags51.i, align 1
  br label %iwlagn_hwrate_to_tx_control.exit

iwlagn_hwrate_to_tx_control.exit:                 ; preds = %if.then50.i, %if.end47.i.iwlagn_hwrate_to_tx_control.exit_crit_edge
  %band.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0272, i32 0, i32 3, i32 4
  %117 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %bf.load62.i = load i32, ptr %band.i, align 4
  %bf.lshr.i = lshr i32 %bf.load62.i, 29
  %call.i263 = call i32 @iwlagn_hwrate_to_mac80211_idx(i32 noundef %109, i32 noundef %bf.lshr.i) #9
  %conv63.i = trunc i32 %call.i263 to i8
  %118 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv63.i, ptr %93, align 1
  br label %if.end175

if.end175:                                        ; preds = %iwlagn_hwrate_to_tx_control.exit, %if.end164.if.end175_crit_edge
  %119 = ptrtoint ptr %skb.0272 to i32
  call void @__asan_load4_noabort(i32 %119)
  %skb.0 = load ptr, ptr %skb.0272, align 4
  %cmp114.not = icmp eq ptr %skb.0, %reclaimed_skbs
  br i1 %cmp114.not, label %if.end175.for.end_crit_edge, label %if.end175.for.body_crit_edge

if.end175.for.body_crit_edge:                     ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end175.for.end_crit_edge:                      ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end175.for.end_crit_edge, %if.end109.for.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #9
  %120 = ptrtoint ptr %reclaimed_skbs to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %reclaimed_skbs, align 4
  %cmp.i264273 = icmp eq ptr %121, %reclaimed_skbs
  br i1 %cmp.i264273, label %for.end.cleanup_crit_edge, label %while.body.lr.ph

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph:                                 ; preds = %for.end
  %hw = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 13
  br label %while.body

while.body:                                       ; preds = %__skb_dequeue.exit.while.body_crit_edge, %while.body.lr.ph
  %122 = phi ptr [ %121, %while.body.lr.ph ], [ %134, %__skb_dequeue.exit.while.body_crit_edge ]
  %tobool.not.i266 = icmp eq ptr %122, null
  br i1 %tobool.not.i266, label %while.body.__skb_dequeue.exit_crit_edge, label %if.then.i267

while.body.__skb_dequeue.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %__skb_dequeue.exit

if.then.i267:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %123 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %qlen.i, align 4
  %sub.i.i = add i32 %124, -1
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %125 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %122, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon, ptr %122, i32 0, i32 1
  %127 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %122, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon, ptr %126, i32 0, i32 1
  %129 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %128, ptr %prev17.i.i, align 4
  %130 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile ptr %126, ptr %128, align 8
  br label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %if.then.i267, %while.body.__skb_dequeue.exit_crit_edge
  %131 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %hw, align 4
  call void @ieee80211_tx_status(ptr noundef %132, ptr noundef %122) #9
  %133 = ptrtoint ptr %reclaimed_skbs to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %reclaimed_skbs, align 4
  %cmp.i264 = icmp eq ptr %134, %reclaimed_skbs
  br i1 %cmp.i264, label %__skb_dequeue.exit.cleanup_crit_edge, label %__skb_dequeue.exit.while.body_crit_edge

__skb_dequeue.exit.while.body_crit_edge:          ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

__skb_dequeue.exit.cleanup_crit_edge:             ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %__skb_dequeue.exit.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.end49, %if.end32, %do.end
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %reclaimed_skbs) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_get_tkip_p2k(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_toggle_tx_ant(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_start_tx_ba_cb_irqsafe(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_block_awake(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwlagn_hwrate_to_mac80211_idx(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !15, !17, !19, !21, !23, !24, !26, !28, !30, !32, !33, !35, !37, !39, !41, !43, !45, !47, !48, !50, !52, !54, !56, !58, !59, !61, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !164, !166, !168, !170, !172, !174, !175, !177, !179, !180, !182, !183, !185, !186, !188, !190, !192, !194, !196, !197, !199, !201, !203, !205, !206, !208, !210, !212, !214, !215, !216, !218, !219}
!llvm.named.register.sp = !{!221}
!llvm.module.flags = !{!222, !223, !224, !225, !226, !227, !228, !229}
!llvm.ident = !{!230}

!0 = !{ptr @__func__.iwlagn_tx_skb, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 278, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 286, i32 3}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 288, i32 3}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 290, i32 3}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 295, i32 4}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 314, i32 4}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 375, i32 7}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 382, i32 4}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 385, i32 4}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 394, i32 7}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 426, i32 2}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 429, i32 2}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 491, i32 3}
!30 = !{ptr @__func__.iwlagn_tx_agg_stop, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 508, i32 3}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 515, i32 3}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 520, i32 3}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 531, i32 3}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 535, i32 3}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 544, i32 2}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 562, i32 4}
!45 = !{ptr @__func__.iwlagn_tx_agg_start, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 579, i32 2}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 584, i32 3}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 591, i32 3}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 597, i32 3}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 620, i32 3}
!56 = !{ptr @__func__.iwlagn_tx_agg_flush, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 648, i32 2}
!58 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 656, i32 3}
!61 = !{ptr @__func__.iwlagn_tx_agg_oper, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 727, i32 2}
!63 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 733, i32 2}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 832, i32 10}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 833, i32 2}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 834, i32 2}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 835, i32 2}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 836, i32 2}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 837, i32 2}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 838, i32 2}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 839, i32 2}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 840, i32 2}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 841, i32 2}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 842, i32 2}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 843, i32 2}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 844, i32 2}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 845, i32 2}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 846, i32 2}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 847, i32 2}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 848, i32 2}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 849, i32 2}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 850, i32 2}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 851, i32 2}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 852, i32 2}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 853, i32 2}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 854, i32 2}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 857, i32 9}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 987, i32 3}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 988, i32 3}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 989, i32 3}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 990, i32 3}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 991, i32 3}
!124 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 992, i32 3}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 993, i32 3}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 994, i32 3}
!130 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 995, i32 3}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 996, i32 3}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 997, i32 3}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 998, i32 3}
!138 = distinct !{null, !139, !"__already_done", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 1135, i32 3}
!140 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 1138, i32 4}
!142 = !{ptr @__func__.iwlagn_rx_reply_tx, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 1167, i32 4}
!144 = !{ptr @.str.67, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 1195, i32 5}
!147 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 1199, i32 5}
!149 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 1208, i32 5}
!151 = !{ptr @.str.71, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 1232, i32 4}
!153 = !{ptr @.str.72, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 1234, i32 3}
!155 = !{ptr @.str.73, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 1237, i32 3}
!157 = !{ptr @.str.74, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 1280, i32 3}
!159 = !{ptr @.str.75, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 1293, i32 4}
!161 = !{ptr @__func__.iwlagn_rx_reply_compressed_ba, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 1305, i32 3}
!163 = !{ptr @.str.76, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.77, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 1320, i32 2}
!166 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 1325, i32 2}
!168 = !{ptr @.str.79, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 1337, i32 3}
!170 = distinct !{null, !171, !"__already_done", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 1359, i32 4}
!172 = !{ptr @__func__.iwlagn_tx_cmd_build_hwcrypto, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 215, i32 3}
!174 = !{ptr @.str.80, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.81, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 220, i32 3}
!177 = distinct !{null, !178, !"__already_done", i1 false, i1 false}
!178 = !{!"../include/net/mac80211.h", i32 6355, i32 2}
!179 = !{ptr @.str.82, !178, !"<string literal>", i1 false, i1 false}
!180 = distinct !{null, !181, !"__already_done", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/../iwl-trans.h", i32 1150, i32 6}
!182 = !{ptr @.str.83, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.84, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/../iwl-trans.h", i32 1151, i32 3}
!185 = !{ptr @__func__.iwl_trans_tx, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.85, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/agn.h", i32 281, i32 6}
!188 = !{ptr @tid_to_ac, !189, !"tid_to_ac", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 18, i32 17}
!190 = distinct !{null, !191, !"__already_done", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/../iwl-trans.h", i32 1193, i32 6}
!192 = !{ptr @__func__.iwl_trans_txq_enable_cfg, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/../iwl-trans.h", i32 1194, i32 3}
!194 = !{ptr @__func__.iwl_rx_reply_tx_agg, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 932, i32 3}
!196 = !{ptr @.str.86, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.87, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 945, i32 3}
!199 = !{ptr @.str.88, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 951, i32 2}
!201 = !{ptr @.str.89, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 969, i32 4}
!203 = !{ptr @__func__.iwlagn_check_ratid_empty, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 757, i32 4}
!205 = !{ptr @.str.90, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.91, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 770, i32 4}
!208 = distinct !{null, !209, !"__already_done", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/../iwl-trans.h", i32 1161, i32 6}
!210 = !{ptr @__func__.iwl_trans_reclaim, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/../iwl-trans.h", i32 1162, i32 3}
!212 = distinct !{null, !213, !"__warned", i1 false, i1 false}
!213 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!214 = !{ptr @.str.92, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.93, !213, !"<string literal>", i1 false, i1 false}
!216 = distinct !{null, !217, !"__warned", i1 false, i1 false}
!217 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!218 = !{ptr @.str.94, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.95, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tx.c", i32 1102, i32 3}
!221 = !{!"sp"}
!222 = !{i32 1, !"wchar_size", i32 2}
!223 = !{i32 1, !"min_enum_size", i32 4}
!224 = !{i32 8, !"branch-target-enforcement", i32 0}
!225 = !{i32 8, !"sign-return-address", i32 0}
!226 = !{i32 8, !"sign-return-address-all", i32 0}
!227 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!228 = !{i32 7, !"uwtable", i32 1}
!229 = !{i32 7, !"frame-pointer", i32 2}
!230 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!231 = !{!"branch_weights", i32 1, i32 2000}
!232 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!233 = !{i8 0, i8 2}
!234 = !{!"branch_weights", i32 2000, i32 1}
!235 = !{i64 2148248202, i64 2148248228, i64 2148248257, i64 2148248291, i64 2148248322, i64 2148248345}
!236 = !{i64 2149394671}
!237 = !{i64 2148336654}
!238 = !{i64 2148251387, i64 2148251419, i64 2148251448, i64 2148251482, i64 2148251513, i64 2148251536}
!239 = !{i64 2148336883}
!240 = !{i64 2149394937}
