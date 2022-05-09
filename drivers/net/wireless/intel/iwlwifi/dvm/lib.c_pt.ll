; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/dvm/lib.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/dvm/lib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_rate_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.iwl_mod_params = type { i32, i32, i32, i8, i8, i32, i8, i32, i32, ptr, i32, i8, i8, i8, i8 }
%struct.lock_class_key = type { %union.anon.5 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
%struct.iwlagn_tx_power_dbm_cmd = type { i8, i8, i8, i8 }
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
%struct.iwl_event_log = type { i8, i32, i32, i32, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.anon.138 = type { i32, i32 }
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
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.130, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
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
%struct.iwl_vif_priv = type { ptr, i8 }
%struct.iwl_txfifo_flush_cmd_v3 = type { i32, i16, i16 }
%struct.iwl_txfifo_flush_cmd_v2 = type { i16, i16 }
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
%struct.iwl_trans_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iwl_bt_cmd_v1 = type { %struct.iwl_basic_bt_cmd, i8, i8, i16 }
%struct.iwl_basic_bt_cmd = type { i8, i8, i8, i8, i32, i32, i8, i8, i16, [12 x i32], i8, i8, i16 }
%struct.iwl_bt_cmd_v2 = type { %struct.iwl_basic_bt_cmd, i32, i8, i8, i16 }
%struct.iwl_dvm_cfg = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.iwl_dvm_bt_params = type { i8, i8, i32, i16, i8, i8 }
%struct.iwl_rx_cmd_buffer = type { ptr, i32, i8, i32, i32 }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }
%struct.iwl_bt_coex_profile_notif = type { %struct.iwl_bt_uart_msg, i8, i8, i8, i8 }
%struct.iwl_bt_uart_msg = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cfg80211_wowlan = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, ptr }
%struct.cfg80211_pkt_pattern = type { ptr, ptr, i32, i32 }
%struct.iwlagn_wowlan_patterns_cmd = type { i32, [0 x %struct.iwlagn_wowlan_pattern] }
%struct.iwlagn_wowlan_pattern = type { [16 x i8], [128 x i8], i8, i8, i16 }
%struct.iwlagn_wowlan_wakeup_filter_cmd = type { i32, i16, i16, [8 x i16] }
%struct.iwlagn_wowlan_kek_kck_material_cmd = type <{ [32 x i8], [32 x i8], i16, i16, i64 }>
%struct.iwlagn_wowlan_tkip_params_cmd = type { %struct.iwlagn_mic_keys, %struct.iwlagn_p1k_cache, [2 x %struct.iwlagn_p1k_cache], [2 x %struct.iwlagn_p1k_cache] }
%struct.iwlagn_mic_keys = type { [8 x i8], [8 x i8], [8 x i8] }
%struct.iwlagn_p1k_cache = type { [5 x i16] }
%struct.iwlagn_d3_config_cmd = type { i32, i32 }
%struct.wowlan_key_data = type { ptr, ptr, ptr, ptr, i8, i8, i8 }
%struct.ieee80211_key_seq = type { %union.anon.143 }
%union.anon.143 = type { %struct.anon.144, [12 x i8] }
%struct.anon.144 = type { i32, i16 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.129, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.129 = type { i32, i16 }
%struct.iwl_op_mode = type { ptr, [0 x i8] }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.iwlagn_tkip_rsc_tsc = type { [16 x %struct.tkip_sc], [16 x %struct.tkip_sc], %struct.tkip_sc }
%struct.tkip_sc = type { i16, i16, i32 }
%struct.iwlagn_aes_rsc_tsc = type { [16 x %struct.aes_sc], [16 x %struct.aes_sc], %struct.aes_sc }
%struct.aes_sc = type { i64 }

@iwlagn_send_tx_power.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intel/iwlwifi/dvm/lib.c\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"TX Power requested while scanning!\0A\00", [60 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@iwl_rates = external dso_local local_unnamed_addr constant [13 x %struct.iwl_rate_info], align 1
@__func__.iwlagn_txfifo_flush = private unnamed_addr constant [20 x i8] c"iwlagn_txfifo_flush\00", align 1
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"queue control: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"flush request fail\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.iwlagn_dev_txfifo_flush = private unnamed_addr constant [24 x i8] c"iwlagn_dev_txfifo_flush\00", align 1
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wait transmit/flush all frames\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to construct BT Coex Config\0A\00", [60 x i8] zeroinitializer }, align 32
@iwlwifi_mod_params = external dso_local local_unnamed_addr global %struct.iwl_mod_params, align 4
@__func__.iwlagn_send_advance_bt_config = private unnamed_addr constant [30 x i8] c"iwlagn_send_advance_bt_config\00", align 1
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BT coex flag: 0X%x\0A\00", [44 x i8] zeroinitializer }, align 32
@iwlagn_concurrent_lookup = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 -1431655766, i32 -1431655766, i32 -1431655766, i32 -1431655766, i32 -1431655766, i32 -1431655766, i32 -1431655766, i32 -1431655766, i32 0, i32 0, i32 0, i32 0], [48 x i8] zeroinitializer }, align 32
@iwlagn_def_3w_lookup = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 -1431655766, i32 -1431655766, i32 -1431655762, i32 -1431655766, i32 687800524, i32 -1431699456, i32 -1431699252, i32 -1431699456, i32 4194496, i32 4194304, i32 5243120, i32 5243120], [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"BT coex %s in %s mode\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"full concurrency\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"3-wire\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to send BT Coex Config\0A\00", [33 x i8] zeroinitializer }, align 32
@iwlagn_bt_setup_deferred_work.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&priv->bt_traffic_change_work)\00", [47 x i8] zeroinitializer }, align 32
@__func__.iwlagn_set_rxon_chain = private unnamed_addr constant [22 x i8] c"iwlagn_set_rxon_chain\00", align 1
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rx_chain=0x%X active=%d idle=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Not sending command - %s KILL\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RF\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CT\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Command %s failed: FW Error\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Fw not loaded - dropping CMD: %x\0A\00", [62 x i8] zeroinitializer }, align 32
@iwl_trans_wait_tx_queues_empty.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/wireless/intel/iwlwifi/dvm/../iwl-trans.h\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s bad state = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.iwl_trans_wait_tx_queues_empty = private unnamed_addr constant [31 x i8] c"iwl_trans_wait_tx_queues_empty\00", align 1
@__func__.iwlagn_bt_coex_profile_notif = private unnamed_addr constant [29 x i8] c"iwlagn_bt_coex_profile_notif\00", align 1
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"BT Coex notification:\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"    status: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"    traffic load: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"    CI compliance: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.iwlagn_print_uartmsg = private unnamed_addr constant [21 x i8] c"iwlagn_print_uartmsg\00", align 1
@.str.26 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Message Type = 0x%X, SSN = 0x%X, Update Req = 0x%X\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"Open connections = 0x%X, Traffic load = 0x%X, Chl_SeqN = 0x%X, In band = 0x%X\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"SCO/eSCO = 0x%X, Sniff = 0x%X, A2DP = 0x%X, ACL = 0x%X, Master = 0x%X, OBEX = 0x%X\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Idle duration = 0x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Tx Activity = 0x%X, Rx Activity = 0x%X, eSCO Retransmissions = 0x%X\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Sniff Interval = 0x%X, Discoverable = 0x%X\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Sniff Activity = 0x%X, Page = 0x%X, Inquiry = 0x%X, Connectable = 0x%X\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.iwlagn_fill_txpower_mode = private unnamed_addr constant [25 x i8] c"iwlagn_fill_txpower_mode\00", align 1
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"BSS ctx not active or not in sta mode\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no rssi data available\0A\00", [40 x i8] zeroinitializer }, align 32
@iwlagn_set_kill_msk.bt_kill_ack_msg = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 65535, i32 -1, i32 0], [20 x i8] zeroinitializer }, align 32
@iwlagn_set_kill_msk.bt_kill_cts_msg = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 65535, i32 -1, i32 0], [20 x i8] zeroinitializer }, align 32
@__func__.iwlagn_bt_traffic_change_work = private unnamed_addr constant [30 x i8] c"iwlagn_bt_traffic_change_work\00", align 1
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"BT traffic load changes: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid BT traffic load: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid SMPS mode %d\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error setting key during suspend!\0A\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 1027073, i64 1027077]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 1027074, i64 1027076]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 31, i32 6 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 139, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 156, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 159, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 237, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 277, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [25 x i8] c"iwlagn_concurrent_lookup\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 186, i32 21 }
@___asan_gen_.66 = private unnamed_addr constant [21 x i8] c"iwlagn_def_3w_lookup\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 170, i32 21 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 287, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 304, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 686, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 828, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1216, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1222, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1232, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1307, i32 6 }
@___asan_gen_.115 = private unnamed_addr constant [57 x i8] c"../drivers/net/wireless/intel/iwlwifi/dvm/../iwl-trans.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1312, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 634, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 635, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 636, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 637, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 474, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 483, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 494, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 509, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 513, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 522, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 528, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 585, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 592, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [16 x i8] c"bt_kill_ack_msg\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 545, i32 22 }
@___asan_gen_.159 = private unnamed_addr constant [16 x i8] c"bt_kill_cts_msg\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 549, i32 22 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 403, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 421, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 750, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 899, i32 3 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @iwlagn_concurrent_lookup, ptr @iwlagn_def_3w_lookup, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @iwlagn_bt_setup_deferred_work.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @iwlagn_set_kill_msk.bt_kill_ack_msg, ptr @iwlagn_set_kill_msk.bt_kill_cts_msg, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwlagn_concurrent_lookup to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwlagn_def_3w_lookup to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwlagn_bt_setup_deferred_work.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwlagn_set_kill_msk.bt_kill_ack_msg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwlagn_set_kill_msk.bt_kill_cts_msg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @iwlagn_hw_valid_rtc_data_addr(i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %addr, -8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %0)
  %1 = icmp ult i32 %0, 49152
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwlagn_send_tx_power(ptr noundef %priv) local_unnamed_addr #1 align 64 {
entry:
  %cmd.i = alloca %struct.iwl_host_cmd, align 4
  %tx_power_cmd = alloca %struct.iwlagn_tx_power_dbm_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_power_cmd) #10
  %status = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  %0 = getelementptr inbounds i8, ptr %tx_power_cmd, i32 3
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %0, align 1
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status, align 4
  %4 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end38, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b62 = load i1, ptr @iwlagn_send_tx_power.__already_done, align 1
  br i1 %.b62, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !100

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwlagn_send_tx_power.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 32, i32 noundef 9, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end38:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = getelementptr inbounds %struct.iwlagn_tx_power_dbm_cmd, ptr %tx_power_cmd, i32 0, i32 2
  %6 = getelementptr inbounds %struct.iwlagn_tx_power_dbm_cmd, ptr %tx_power_cmd, i32 0, i32 1
  %tx_power_user_lmt = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 116
  %7 = ptrtoint ptr %tx_power_user_lmt to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tx_power_user_lmt, align 8
  %mul = shl i8 %8, 1
  %nvm_data = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %9 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nvm_data, align 8
  %max_tx_pwr_half_dbm = getelementptr inbounds %struct.iwl_nvm_data, ptr %10, i32 0, i32 23
  %11 = ptrtoint ptr %max_tx_pwr_half_dbm to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %max_tx_pwr_half_dbm, align 4
  %13 = tail call i8 @llvm.smin.i8(i8 %mul, i8 %12)
  %14 = ptrtoint ptr %tx_power_cmd to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %tx_power_cmd, align 1
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 64, ptr %6, align 1
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 127, ptr %5, align 1
  %fw = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 3
  %17 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %21 = and i32 %20, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %21)
  %cmp49 = icmp eq i32 %21, 256
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i) #10
  %22 = getelementptr inbounds i8, ptr %cmd.i, i32 32
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 65535, ptr %22, align 4, !annotation !101
  %24 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %tx_power_cmd, ptr %cmd.i, align 4
  %arrayinit.cur.ptr.i = getelementptr inbounds ptr, ptr %cmd.i, i32 1
  %id4.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 5
  %conv.i = select i1 %cmp49, i32 152, i32 149
  %25 = call ptr @memset(ptr %arrayinit.cur.ptr.i, i32 0, i32 20)
  %26 = ptrtoint ptr %id4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv.i, ptr %id4.i, align 4
  %len5.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6
  %27 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 4, ptr %len5.i, align 4
  %arrayinit.start7.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6, i32 1
  %28 = ptrtoint ptr %arrayinit.start7.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %arrayinit.start7.i, align 2
  %call.i = call i32 @iwl_dvm_send_cmd(ptr noundef %priv, ptr noundef nonnull %cmd.i) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end38 ], [ -11, %if.then ], [ -11, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_power_cmd) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_dvm_send_cmd_pdu(ptr noundef %priv, i8 noundef zeroext %id, i32 noundef %flags, i16 noundef zeroext %len, ptr noundef %data) local_unnamed_addr #1 align 64 {
entry:
  %cmd = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd) #10
  %0 = getelementptr inbounds i8, ptr %cmd, i32 32
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !101
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %cmd, align 4
  %arrayinit.cur.ptr = getelementptr inbounds ptr, ptr %cmd, i32 1
  %flags3 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 4
  %3 = call ptr @memset(ptr %arrayinit.cur.ptr, i32 0, i32 16)
  %4 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %flags, ptr %flags3, align 4
  %id4 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 5
  %conv = zext i8 %id to i32
  %5 = ptrtoint ptr %id4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %id4, align 4
  %len5 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 6
  %6 = ptrtoint ptr %len5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %len, ptr %len5, align 4
  %arrayinit.start7 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %arrayinit.start7 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %arrayinit.start7, align 2
  %arrayinit.end8 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 7
  %8 = ptrtoint ptr %arrayinit.end8 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %arrayinit.end8, align 4
  %call = call i32 @iwl_dvm_send_cmd(ptr noundef %priv, ptr noundef nonnull %cmd)
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwlagn_temperature(ptr noundef %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 10, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !102

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %common = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 1
  %1 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %common, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %temperature25 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 34
  %4 = ptrtoint ptr %temperature25 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %temperature25, align 4
  tail call void @iwl_tt_handler(ptr noundef %priv) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_tt_handler(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwlagn_hwrate_to_mac80211_idx(i32 noundef %rate_n_flags, i32 noundef %band) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %rate_n_flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and1 = and i32 %rate_n_flags, 255
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %band)
  %cmp = icmp eq i32 %band, 1
  %spec.select = select i1 %cmp, i32 4, i32 0
  %0 = trunc i32 %rate_n_flags to i8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.else
  %idx.019 = phi i32 [ %spec.select, %if.else ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [13 x %struct.iwl_rate_info], ptr @iwl_rates, i32 0, i32 %idx.019
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %0)
  %cmp5 = icmp eq i8 %2, %0
  br i1 %cmp5, label %if.then7, label %for.inc

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub nsw i32 %idx.019, %spec.select
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %idx.019, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then7, %if.then
  %retval.0 = phi i32 [ %and1, %if.then ], [ %sub, %if.then7 ], [ -1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwlagn_manage_ibss_station(ptr noundef %priv, ptr noundef %vif, i1 noundef zeroext %add) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  br i1 %add, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %bss_conf = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %2 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bss_conf, align 8
  %ibss_bssid_sta_id = getelementptr inbounds %struct.iwl_vif_priv, ptr %drv_priv, i32 0, i32 1
  %call = tail call i32 @iwlagn_add_bssid_station(ptr noundef %priv, ptr noundef %1, ptr noundef %3, ptr noundef %ibss_bssid_sta_id) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ibss_bssid_sta_id1 = getelementptr inbounds %struct.iwl_vif_priv, ptr %drv_priv, i32 0, i32 1
  %4 = ptrtoint ptr %ibss_bssid_sta_id1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ibss_bssid_sta_id1, align 4
  %bss_conf2 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %6 = ptrtoint ptr %bss_conf2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bss_conf2, align 8
  %call4 = tail call i32 @iwl_remove_station(ptr noundef %priv, i8 noundef zeroext %5, ptr noundef %7) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwlagn_add_bssid_station(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_remove_station(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwlagn_txfifo_flush(ptr noundef %priv, i32 noundef %scd_q_msk) local_unnamed_addr #1 align 64 {
entry:
  %cmd.i31 = alloca %struct.iwl_host_cmd, align 4
  %cmd.i = alloca %struct.iwl_host_cmd, align 4
  %flush_cmd_v3 = alloca %struct.iwl_txfifo_flush_cmd_v3, align 8
  %flush_cmd_v2 = alloca %struct.iwl_txfifo_flush_cmd_v2, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %flush_cmd_v3) #10
  %0 = ptrtoint ptr %flush_cmd_v3 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 33554432, ptr %flush_cmd_v3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flush_cmd_v2) #10
  %1 = ptrtoint ptr %flush_cmd_v2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 512, ptr %flush_cmd_v2, align 4
  %valid_contexts = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 19
  %2 = ptrtoint ptr %valid_contexts to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %valid_contexts, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  %spec.select = select i1 %cmp.not, i32 15, i32 511
  %nvm_data = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %4 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nvm_data, align 8
  %sku_cap_11n_enable = getelementptr inbounds %struct.iwl_nvm_data, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %sku_cap_11n_enable to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sku_cap_11n_enable, align 2, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %or3 = or i32 %spec.select, 1047552
  %queue_control.1 = select i1 %tobool.not, i32 %spec.select, i32 %or3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scd_q_msk)
  %tobool5.not = icmp eq i32 %scd_q_msk, 0
  %queue_control.2 = select i1 %tobool5.not, i32 %queue_control.1, i32 %scd_q_msk
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %9, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_txfifo_flush, ptr noundef nonnull @.str.2, i32 noundef %queue_control.2) #10
  %10 = tail call i32 @llvm.bswap.i32(i32 %queue_control.2)
  %11 = ptrtoint ptr %flush_cmd_v3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %flush_cmd_v3, align 8
  %conv12 = trunc i32 %queue_control.2 to i16
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv12)
  %13 = ptrtoint ptr %flush_cmd_v2 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %flush_cmd_v2, align 4
  %fw = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 3
  %14 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %18 = and i32 %17, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %18)
  %cmp14 = icmp ugt i32 %18, 512
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i) #10
  %19 = getelementptr inbounds i8, ptr %cmd.i, i32 32
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 65535, ptr %19, align 4, !annotation !101
  %21 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %flush_cmd_v3, ptr %cmd.i, align 4
  %arrayinit.cur.ptr.i = getelementptr inbounds ptr, ptr %cmd.i, i32 1
  %id4.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 5
  %22 = call ptr @memset(ptr %arrayinit.cur.ptr.i, i32 0, i32 20)
  %23 = ptrtoint ptr %id4.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 30, ptr %id4.i, align 4
  %len5.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6
  %24 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 8, ptr %len5.i, align 4
  %arrayinit.start7.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6, i32 1
  %25 = ptrtoint ptr %arrayinit.start7.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %arrayinit.start7.i, align 2
  %call.i = call i32 @iwl_dvm_send_cmd(ptr noundef %priv, ptr noundef nonnull %cmd.i) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i) #10
  br label %cleanup

if.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i31) #10
  %26 = getelementptr inbounds i8, ptr %cmd.i31, i32 32
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 65535, ptr %26, align 4, !annotation !101
  %28 = ptrtoint ptr %cmd.i31 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %flush_cmd_v2, ptr %cmd.i31, align 4
  %arrayinit.cur.ptr.i32 = getelementptr inbounds ptr, ptr %cmd.i31, i32 1
  %id4.i34 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i31, i32 0, i32 5
  %29 = call ptr @memset(ptr %arrayinit.cur.ptr.i32, i32 0, i32 20)
  %30 = ptrtoint ptr %id4.i34 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 30, ptr %id4.i34, align 4
  %len5.i35 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i31, i32 0, i32 6
  %31 = ptrtoint ptr %len5.i35 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 4, ptr %len5.i35, align 4
  %arrayinit.start7.i36 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i31, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %arrayinit.start7.i36 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %arrayinit.start7.i36, align 2
  %call.i38 = call i32 @iwl_dvm_send_cmd(ptr noundef %priv, ptr noundef nonnull %cmd.i31) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i31) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then16
  %retval.0 = phi i32 [ %call.i, %if.then16 ], [ %call.i38, %if.end17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flush_cmd_v2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %flush_cmd_v3) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwlagn_dev_txfifo_flush(ptr noundef %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %hw = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 13
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_stop_queues(ptr noundef %1) #10
  %call = tail call i32 @iwlagn_txfifo_flush(ptr noundef %priv, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %dev6 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev6, align 4
  br i1 %tobool.not, label %do.end5, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %3, i32 noundef 0, ptr noundef nonnull @.str.3) #10
  br label %done

do.end5:                                          ; preds = %entry
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_dev_txfifo_flush, ptr noundef nonnull @.str.4) #10
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %wait_tx_queues_empty.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %wait_tx_queues_empty.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wait_tx_queues_empty.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %do.end5
  %.b1.i = load i1, ptr @iwl_trans_wait_tx_queues_empty.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.done_crit_edge, label %if.then.i, !prof !100

land.rhs.i.done_crit_edge:                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_trans_wait_tx_queues_empty.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 1307, i32 noundef 9, ptr noundef null) #10
  br label %done

if.end39.i:                                       ; preds = %do.end5
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 2
  br i1 %cmp.not.i, label %if.end48.i, label %do.end44.i

do.end44.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %5, i32 0, i32 8
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %13, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.iwl_trans_wait_tx_queues_empty, i32 noundef %11) #10
  br label %done

if.end48.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %9(ptr noundef %5, i32 noundef -1) #10
  br label %done

done:                                             ; preds = %if.end48.i, %do.end44.i, %if.then.i, %land.rhs.i.done_crit_edge, %do.end
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_wake_queues(ptr noundef %15) #10
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwlagn_send_advance_bt_config(ptr noundef %priv) local_unnamed_addr #1 align 64 {
entry:
  %cmd.i187 = alloca %struct.iwl_host_cmd, align 4
  %cmd.i = alloca %struct.iwl_host_cmd, align 4
  %basic.sroa.22 = alloca [50 x i8], align 2
  %bt_cmd_v1 = alloca %struct.iwl_bt_cmd_v1, align 4
  %bt_cmd_v2 = alloca %struct.iwl_bt_cmd_v2, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %basic.sroa.22)
  %0 = call ptr @memset(ptr %basic.sroa.22, i32 0, i32 50)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %bt_cmd_v1) #10
  %1 = call ptr @memset(ptr %bt_cmd_v1, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %bt_cmd_v2) #10
  %2 = call ptr @memset(ptr %bt_cmd_v2, i32 255, i32 76)
  %lib = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 4
  %3 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lib, align 8
  %bt_params = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %bt_params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bt_params, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.end45, label %if.then

if.then:                                          ; preds = %entry
  %bt_session_2 = getelementptr inbounds %struct.iwl_dvm_bt_params, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %bt_session_2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bt_session_2, align 1, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  %bt_prio_boost9 = getelementptr inbounds %struct.iwl_dvm_bt_params, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %bt_prio_boost9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bt_prio_boost9, align 4
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %prio_boost = getelementptr inbounds %struct.iwl_bt_cmd_v2, ptr %bt_cmd_v2, i32 0, i32 1
  %12 = ptrtoint ptr %prio_boost to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %prio_boost, align 4
  %tx_prio_boost = getelementptr inbounds %struct.iwl_bt_cmd_v2, ptr %bt_cmd_v2, i32 0, i32 3
  %13 = ptrtoint ptr %tx_prio_boost to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %tx_prio_boost, align 1
  %rx_prio_boost = getelementptr inbounds %struct.iwl_bt_cmd_v2, ptr %bt_cmd_v2, i32 0, i32 4
  br label %if.end48

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %10)
  %tobool10.not = icmp ult i32 %10, 256
  br i1 %tobool10.not, label %if.else.if.end_crit_edge, label %do.end22, !prof !100

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end22:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end22, %if.else.if.end_crit_edge
  %14 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lib, align 8
  %bt_params35 = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %bt_params35 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bt_params35, align 4
  %bt_prio_boost36 = getelementptr inbounds %struct.iwl_dvm_bt_params, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %bt_prio_boost36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bt_prio_boost36, align 4
  %conv = trunc i32 %19 to i8
  %prio_boost37 = getelementptr inbounds %struct.iwl_bt_cmd_v1, ptr %bt_cmd_v1, i32 0, i32 1
  %20 = ptrtoint ptr %prio_boost37 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %prio_boost37, align 4
  %tx_prio_boost38 = getelementptr inbounds %struct.iwl_bt_cmd_v1, ptr %bt_cmd_v1, i32 0, i32 2
  %21 = ptrtoint ptr %tx_prio_boost38 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %tx_prio_boost38, align 1
  %rx_prio_boost39 = getelementptr inbounds %struct.iwl_bt_cmd_v1, ptr %bt_cmd_v1, i32 0, i32 3
  br label %if.end48

do.end45:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %23, i32 noundef 0, ptr noundef nonnull @.str.5) #10
  br label %cleanup

if.end48:                                         ; preds = %if.end, %if.then4
  %rx_prio_boost.sink = phi ptr [ %rx_prio_boost, %if.then4 ], [ %rx_prio_boost39, %if.end ]
  %24 = ptrtoint ptr %rx_prio_boost.sink to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %rx_prio_boost.sink, align 2
  %kill_ack_mask = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 89
  %25 = ptrtoint ptr %kill_ack_mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %kill_ack_mask, align 8
  %kill_cts_mask = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 90
  %27 = ptrtoint ptr %kill_cts_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %kill_cts_mask, align 4
  %reduced_txpower = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 92
  %29 = ptrtoint ptr %reduced_txpower to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %reduced_txpower, align 2, !range !103
  %bt_valid = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 91
  %31 = ptrtoint ptr %bt_valid to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %bt_valid, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 4) to i32))
  %33 = load i8, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 4), align 1, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool54.not = icmp eq i8 %33, 0
  br i1 %tobool54.not, label %if.end48.if.end86_crit_edge, label %lor.lhs.false

if.end48.if.end86_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

lor.lhs.false:                                    ; preds = %if.end48
  %iw_mode = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 69
  %34 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp = icmp eq i32 %35, 1
  br i1 %cmp, label %lor.lhs.false.if.end86_crit_edge, label %if.else57

lor.lhs.false.if.end86_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.else57:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %bt_enable_pspoll = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 98
  %36 = ptrtoint ptr %bt_enable_pspoll to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bt_enable_pspoll, align 8, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool59.not = icmp eq i8 %37, 0
  %. = select i1 %tobool59.not, i8 -112, i8 16
  %bt_ch_announce = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 87
  %38 = ptrtoint ptr %bt_ch_announce to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bt_ch_announce, align 4, !range !103
  %basic.sroa.0.1 = or i8 %., %39
  %dev81 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %40 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev81, align 4
  %conv83 = zext i8 %basic.sroa.0.1 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %41, i32 noundef 32768, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_send_advance_bt_config, ptr noundef nonnull @.str.6, i32 noundef %conv83) #10
  br label %if.end86

if.end86:                                         ; preds = %if.else57, %lor.lhs.false.if.end86_crit_edge, %if.end48.if.end86_crit_edge
  %basic.sroa.0.2 = phi i8 [ %basic.sroa.0.1, %if.else57 ], [ 0, %lor.lhs.false.if.end86_crit_edge ], [ 0, %if.end48.if.end86_crit_edge ]
  %bt_enable_flag = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 83
  %42 = ptrtoint ptr %bt_enable_flag to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %basic.sroa.0.2, ptr %bt_enable_flag, align 8
  %bt_full_concurrent = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 88
  %43 = ptrtoint ptr %bt_full_concurrent to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bt_full_concurrent, align 1, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool88.not = icmp eq i8 %44, 0
  %basic.sroa.22.16.arraydecay92.sroa_idx = getelementptr inbounds i8, ptr %basic.sroa.22, i32 2
  br i1 %tobool88.not, label %if.else90, label %if.then89

if.then89:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  %45 = call ptr @memcpy(ptr %basic.sroa.22.16.arraydecay92.sroa_idx, ptr @iwlagn_concurrent_lookup, i32 48)
  br label %do.end97

if.else90:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  %46 = call ptr @memcpy(ptr %basic.sroa.22.16.arraydecay92.sroa_idx, ptr @iwlagn_def_3w_lookup, i32 48)
  br label %do.end97

do.end97:                                         ; preds = %if.else90, %if.then89
  %cond105 = phi ptr [ @.str.11, %if.else90 ], [ @.str.10, %if.then89 ]
  %dev98 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %47 = ptrtoint ptr %dev98 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev98, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %basic.sroa.0.2)
  %tobool101.not = icmp eq i8 %basic.sroa.0.2, 0
  %cond = select i1 %tobool101.not, ptr @.str.9, ptr @.str.8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %48, i32 noundef 32768, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_send_advance_bt_config, ptr noundef nonnull @.str.7, ptr noundef nonnull %cond, ptr noundef nonnull %cond105) #10
  %49 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lib, align 8
  %bt_params109 = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %bt_params109 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bt_params109, align 4
  %bt_session_2110 = getelementptr inbounds %struct.iwl_dvm_bt_params, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %bt_session_2110 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bt_session_2110, align 1, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool111.not = icmp eq i8 %54, 0
  br i1 %tobool111.not, label %if.else114, label %if.then112

if.then112:                                       ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %bt_cmd_v2 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %basic.sroa.0.2, ptr %bt_cmd_v2, align 4
  %basic.sroa.16.0.basic113.sroa_idx = getelementptr inbounds i8, ptr %bt_cmd_v2, i32 1
  %56 = ptrtoint ptr %basic.sroa.16.0.basic113.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %basic.sroa.16.0.basic113.sroa_idx, align 1
  %basic.sroa.16139.0.basic113.sroa_idx = getelementptr inbounds i8, ptr %bt_cmd_v2, i32 2
  %57 = ptrtoint ptr %basic.sroa.16139.0.basic113.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 5, ptr %basic.sroa.16139.0.basic113.sroa_idx, align 2
  %basic.sroa.17.0.basic113.sroa_idx = getelementptr inbounds i8, ptr %bt_cmd_v2, i32 3
  %58 = ptrtoint ptr %basic.sroa.17.0.basic113.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %basic.sroa.17.0.basic113.sroa_idx, align 1
  %basic.sroa.18.0.basic113.sroa_idx = getelementptr inbounds i8, ptr %bt_cmd_v2, i32 4
  %59 = ptrtoint ptr %basic.sroa.18.0.basic113.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %26, ptr %basic.sroa.18.0.basic113.sroa_idx, align 4
  %basic.sroa.19.0.basic113.sroa_idx = getelementptr inbounds i8, ptr %bt_cmd_v2, i32 8
  %60 = ptrtoint ptr %basic.sroa.19.0.basic113.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %28, ptr %basic.sroa.19.0.basic113.sroa_idx, align 4
  %basic.sroa.20.0.basic113.sroa_idx = getelementptr inbounds i8, ptr %bt_cmd_v2, i32 12
  %61 = ptrtoint ptr %basic.sroa.20.0.basic113.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 2, ptr %basic.sroa.20.0.basic113.sroa_idx, align 4
  %basic.sroa.21.0.basic113.sroa_idx = getelementptr inbounds i8, ptr %bt_cmd_v2, i32 13
  %62 = ptrtoint ptr %basic.sroa.21.0.basic113.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 12, ptr %basic.sroa.21.0.basic113.sroa_idx, align 1
  %basic.sroa.22.0.basic113.sroa_idx = getelementptr inbounds i8, ptr %bt_cmd_v2, i32 14
  %63 = call ptr @memcpy(ptr %basic.sroa.22.0.basic113.sroa_idx, ptr %basic.sroa.22, i32 50)
  %basic.sroa.24.0.basic113.sroa_idx = getelementptr inbounds i8, ptr %bt_cmd_v2, i32 64
  %64 = ptrtoint ptr %basic.sroa.24.0.basic113.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %30, ptr %basic.sroa.24.0.basic113.sroa_idx, align 4
  %basic.sroa.25.0.basic113.sroa_idx = getelementptr inbounds i8, ptr %bt_cmd_v2, i32 65
  %65 = ptrtoint ptr %basic.sroa.25.0.basic113.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %basic.sroa.25.0.basic113.sroa_idx, align 1
  %basic.sroa.25148.0.basic113.sroa_idx = getelementptr inbounds i8, ptr %bt_cmd_v2, i32 66
  %66 = ptrtoint ptr %basic.sroa.25148.0.basic113.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %32, ptr %basic.sroa.25148.0.basic113.sroa_idx, align 2
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i) #10
  %67 = getelementptr inbounds i8, ptr %cmd.i, i32 32
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 65535, ptr %67, align 4, !annotation !101
  %69 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %bt_cmd_v2, ptr %cmd.i, align 4
  %arrayinit.cur.ptr.i = getelementptr inbounds ptr, ptr %cmd.i, i32 1
  %id4.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 5
  %70 = call ptr @memset(ptr %arrayinit.cur.ptr.i, i32 0, i32 20)
  %71 = ptrtoint ptr %id4.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 155, ptr %id4.i, align 4
  %len5.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6
  %72 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 76, ptr %len5.i, align 4
  %arrayinit.start7.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6, i32 1
  %73 = ptrtoint ptr %arrayinit.start7.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %arrayinit.start7.i, align 2
  %call.i = call i32 @iwl_dvm_send_cmd(ptr noundef %priv, ptr noundef nonnull %cmd.i) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i) #10
  br label %if.end117

if.else114:                                       ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %bt_cmd_v1 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %basic.sroa.0.2, ptr %bt_cmd_v1, align 4
  %basic.sroa.16.0.basic115.sroa_idx = getelementptr inbounds i8, ptr %bt_cmd_v1, i32 1
  %75 = ptrtoint ptr %basic.sroa.16.0.basic115.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %basic.sroa.16.0.basic115.sroa_idx, align 1
  %basic.sroa.16139.0.basic115.sroa_idx = getelementptr inbounds i8, ptr %bt_cmd_v1, i32 2
  %76 = ptrtoint ptr %basic.sroa.16139.0.basic115.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 5, ptr %basic.sroa.16139.0.basic115.sroa_idx, align 2
  %basic.sroa.17.0.basic115.sroa_idx = getelementptr inbounds i8, ptr %bt_cmd_v1, i32 3
  %77 = ptrtoint ptr %basic.sroa.17.0.basic115.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %basic.sroa.17.0.basic115.sroa_idx, align 1
  %basic.sroa.18.0.basic115.sroa_idx = getelementptr inbounds i8, ptr %bt_cmd_v1, i32 4
  %78 = ptrtoint ptr %basic.sroa.18.0.basic115.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %26, ptr %basic.sroa.18.0.basic115.sroa_idx, align 4
  %basic.sroa.19.0.basic115.sroa_idx = getelementptr inbounds i8, ptr %bt_cmd_v1, i32 8
  %79 = ptrtoint ptr %basic.sroa.19.0.basic115.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %28, ptr %basic.sroa.19.0.basic115.sroa_idx, align 4
  %basic.sroa.20.0.basic115.sroa_idx = getelementptr inbounds i8, ptr %bt_cmd_v1, i32 12
  %80 = ptrtoint ptr %basic.sroa.20.0.basic115.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 2, ptr %basic.sroa.20.0.basic115.sroa_idx, align 4
  %basic.sroa.21.0.basic115.sroa_idx = getelementptr inbounds i8, ptr %bt_cmd_v1, i32 13
  %81 = ptrtoint ptr %basic.sroa.21.0.basic115.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 12, ptr %basic.sroa.21.0.basic115.sroa_idx, align 1
  %basic.sroa.22.0.basic115.sroa_idx = getelementptr inbounds i8, ptr %bt_cmd_v1, i32 14
  %82 = call ptr @memcpy(ptr %basic.sroa.22.0.basic115.sroa_idx, ptr %basic.sroa.22, i32 50)
  %basic.sroa.24.0.basic115.sroa_idx = getelementptr inbounds i8, ptr %bt_cmd_v1, i32 64
  %83 = ptrtoint ptr %basic.sroa.24.0.basic115.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %30, ptr %basic.sroa.24.0.basic115.sroa_idx, align 4
  %basic.sroa.25.0.basic115.sroa_idx = getelementptr inbounds i8, ptr %bt_cmd_v1, i32 65
  %84 = ptrtoint ptr %basic.sroa.25.0.basic115.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %basic.sroa.25.0.basic115.sroa_idx, align 1
  %basic.sroa.25148.0.basic115.sroa_idx = getelementptr inbounds i8, ptr %bt_cmd_v1, i32 66
  %85 = ptrtoint ptr %basic.sroa.25148.0.basic115.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %32, ptr %basic.sroa.25148.0.basic115.sroa_idx, align 2
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i187) #10
  %86 = getelementptr inbounds i8, ptr %cmd.i187, i32 32
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 65535, ptr %86, align 4, !annotation !101
  %88 = ptrtoint ptr %cmd.i187 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %bt_cmd_v1, ptr %cmd.i187, align 4
  %arrayinit.cur.ptr.i188 = getelementptr inbounds ptr, ptr %cmd.i187, i32 1
  %id4.i190 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i187, i32 0, i32 5
  %89 = call ptr @memset(ptr %arrayinit.cur.ptr.i188, i32 0, i32 20)
  %90 = ptrtoint ptr %id4.i190 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 155, ptr %id4.i190, align 4
  %len5.i191 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i187, i32 0, i32 6
  %91 = ptrtoint ptr %len5.i191 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 72, ptr %len5.i191, align 4
  %arrayinit.start7.i192 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i187, i32 0, i32 6, i32 1
  %92 = ptrtoint ptr %arrayinit.start7.i192 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 0, ptr %arrayinit.start7.i192, align 2
  %call.i194 = call i32 @iwl_dvm_send_cmd(ptr noundef %priv, ptr noundef nonnull %cmd.i187) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i187) #10
  br label %if.end117

if.end117:                                        ; preds = %if.else114, %if.then112
  %ret.0 = phi i32 [ %call.i, %if.then112 ], [ %call.i194, %if.else114 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool118.not = icmp eq i32 %ret.0, 0
  br i1 %tobool118.not, label %if.end117.cleanup_crit_edge, label %do.end123

if.end117.cleanup_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end123:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  %93 = ptrtoint ptr %dev98 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev98, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %94, i32 noundef 0, ptr noundef nonnull @.str.12) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end123, %if.end117.cleanup_crit_edge, %do.end45
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %bt_cmd_v2) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %bt_cmd_v1) #10
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %basic.sroa.22)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwlagn_bt_adjust_rssi_monitor(ptr noundef %priv, i1 noundef zeroext %rssi_ena) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !102

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 313, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  br i1 %rssi_ena, label %if.then25, label %if.end.if.then45_crit_edge

if.end.if.then45_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45

if.then25:                                        ; preds = %if.end
  %contexts = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50
  %arrayidx27 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 51
  %cmp28149 = icmp ult ptr %contexts, %arrayidx27
  br i1 %cmp28149, label %for.body.lr.ph, label %if.then25.for.end83_crit_edge

if.then25.for.end83_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end83

for.body.lr.ph:                                   ; preds = %if.then25
  %valid_contexts = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 19
  %1 = ptrtoint ptr %valid_contexts to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %valid_contexts, align 4
  %conv = zext i8 %2 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ctx.0150 = phi ptr [ %contexts, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %ctxid = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.0150, i32 0, i32 7
  %3 = ptrtoint ptr %ctxid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ctxid, align 4
  %shl = shl nuw i32 1, %4
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %for.body.for.inc_crit_edge, label %if.then30

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then30:                                        ; preds = %for.body
  %5 = ptrtoint ptr %ctx.0150 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx.0150, align 4
  %tobool31.not = icmp eq ptr %6, null
  br i1 %tobool31.not, label %if.then30.for.inc_crit_edge, label %land.lhs.true

if.then30.for.inc_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %if.then30
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp33 = icmp eq i32 %8, 3
  br i1 %cmp33, label %land.lhs.true35, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true35:                                  ; preds = %land.lhs.true
  %filter_flags.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.0150, i32 0, i32 14, i32 13
  %9 = ptrtoint ptr %filter_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %filter_flags.i, align 4
  %11 = and i32 %10, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool37.not = icmp eq i32 %11, 0
  br i1 %tobool37.not, label %land.lhs.true35.for.inc_crit_edge, label %land.lhs.true35.if.then45_crit_edge

land.lhs.true35.if.then45_crit_edge:              ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45

land.lhs.true35.for.inc_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true35.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.then30.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.iwl_rxon_context, ptr %ctx.0150, i32 1
  %cmp28 = icmp ult ptr %incdec.ptr, %arrayidx27
  br i1 %cmp28, label %for.inc.for.body_crit_edge, label %if.end52

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.then45:                                        ; preds = %land.lhs.true35.if.then45_crit_edge, %if.end.if.then45_crit_edge
  %cur_rssi_ctx = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 99
  %12 = ptrtoint ptr %cur_rssi_ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cur_rssi_ctx, align 4
  %tobool46.not = icmp eq ptr %13, null
  br i1 %tobool46.not, label %if.then45.cleanup_crit_edge, label %if.then47

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then47:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  tail call void @ieee80211_disable_rssi_reports(ptr noundef %15) #10
  %16 = ptrtoint ptr %cur_rssi_ctx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %cur_rssi_ctx, align 4
  br label %cleanup

if.end52:                                         ; preds = %for.inc
  br i1 %cmp28149, label %for.body60.lr.ph, label %if.end52.for.end83_crit_edge

if.end52.for.end83_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end83

for.body60.lr.ph:                                 ; preds = %if.end52
  %valid_contexts61 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 19
  %17 = ptrtoint ptr %valid_contexts61 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %valid_contexts61, align 4
  %conv62 = zext i8 %18 to i32
  br label %for.body60

for.body60:                                       ; preds = %for.inc81.for.body60_crit_edge, %for.body60.lr.ph
  %ctx.1153 = phi ptr [ %contexts, %for.body60.lr.ph ], [ %incdec.ptr82, %for.inc81.for.body60_crit_edge ]
  %ctxid63 = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.1153, i32 0, i32 7
  %19 = ptrtoint ptr %ctxid63 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctxid63, align 4
  %shl64 = shl nuw i32 1, %20
  %and65 = and i32 %shl64, %conv62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %for.body60.for.inc81_crit_edge, label %if.then67

for.body60.for.inc81_crit_edge:                   ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc81

if.then67:                                        ; preds = %for.body60
  %21 = ptrtoint ptr %ctx.1153 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx.1153, align 4
  %tobool69.not = icmp eq ptr %22, null
  br i1 %tobool69.not, label %if.then67.for.inc81_crit_edge, label %land.lhs.true70

if.then67.for.inc81_crit_edge:                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc81

land.lhs.true70:                                  ; preds = %if.then67
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp73 = icmp eq i32 %24, 2
  br i1 %cmp73, label %land.lhs.true75, label %land.lhs.true70.for.inc81_crit_edge

land.lhs.true70.for.inc81_crit_edge:              ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc81

land.lhs.true75:                                  ; preds = %land.lhs.true70
  %filter_flags.i143 = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.1153, i32 0, i32 14, i32 13
  %25 = ptrtoint ptr %filter_flags.i143 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %filter_flags.i143, align 4
  %27 = and i32 %26, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool77.not = icmp eq i32 %27, 0
  br i1 %tobool77.not, label %land.lhs.true75.for.inc81_crit_edge, label %land.lhs.true75.for.end83_crit_edge

land.lhs.true75.for.end83_crit_edge:              ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end83

land.lhs.true75.for.inc81_crit_edge:              ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc81

for.inc81:                                        ; preds = %land.lhs.true75.for.inc81_crit_edge, %land.lhs.true70.for.inc81_crit_edge, %if.then67.for.inc81_crit_edge, %for.body60.for.inc81_crit_edge
  %incdec.ptr82 = getelementptr %struct.iwl_rxon_context, ptr %ctx.1153, i32 1
  %cmp58 = icmp ult ptr %incdec.ptr82, %arrayidx27
  br i1 %cmp58, label %for.inc81.for.body60_crit_edge, label %for.inc81.for.end83_crit_edge

for.inc81.for.end83_crit_edge:                    ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end83

for.inc81.for.body60_crit_edge:                   ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body60

for.end83:                                        ; preds = %for.inc81.for.end83_crit_edge, %land.lhs.true75.for.end83_crit_edge, %if.end52.for.end83_crit_edge, %if.then25.for.end83_crit_edge
  %found_ctx.0 = phi ptr [ null, %if.end52.for.end83_crit_edge ], [ null, %if.then25.for.end83_crit_edge ], [ %ctx.1153, %land.lhs.true75.for.end83_crit_edge ], [ null, %for.inc81.for.end83_crit_edge ]
  %cur_rssi_ctx84 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 99
  %28 = ptrtoint ptr %cur_rssi_ctx84 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cur_rssi_ctx84, align 4
  %cmp85 = icmp eq ptr %found_ctx.0, %29
  br i1 %cmp85, label %for.end83.cleanup_crit_edge, label %if.end88

for.end83.cleanup_crit_edge:                      ; preds = %for.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end88:                                         ; preds = %for.end83
  %tobool90.not = icmp eq ptr %29, null
  br i1 %tobool90.not, label %if.end88.if.end98_crit_edge, label %if.then91

if.end88.if.end98_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then91:                                        ; preds = %if.end88
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %tobool94.not = icmp eq ptr %31, null
  br i1 %tobool94.not, label %if.then91.if.end98_crit_edge, label %if.then95

if.then91.if.end98_crit_edge:                     ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then95:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ieee80211_disable_rssi_reports(ptr noundef nonnull %31) #10
  br label %if.end98

if.end98:                                         ; preds = %if.then95, %if.then91.if.end98_crit_edge, %if.end88.if.end98_crit_edge
  %32 = ptrtoint ptr %cur_rssi_ctx84 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %found_ctx.0, ptr %cur_rssi_ctx84, align 4
  %tobool100.not = icmp eq ptr %found_ctx.0, null
  br i1 %tobool100.not, label %if.end98.cleanup_crit_edge, label %if.end102

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end102:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %found_ctx.0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %found_ctx.0, align 4
  tail call void @ieee80211_enable_rssi_reports(ptr noundef %34, i32 noundef -75, i32 noundef -65) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end102, %if.end98.cleanup_crit_edge, %for.end83.cleanup_crit_edge, %if.then47, %if.then45.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_disable_rssi_reports(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_enable_rssi_reports(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwlagn_bt_coex_rssi_monitor(ptr noundef %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bt_is_sco = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 100
  %0 = ptrtoint ptr %bt_is_sco to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bt_is_sco, align 8, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %bt_traffic_load = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 85
  %2 = ptrtoint ptr %bt_traffic_load to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bt_traffic_load, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp = icmp eq i8 %3, 3
  br i1 %cmp, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iwlagn_bt_adjust_rssi_monitor(ptr noundef %priv, i1 noundef zeroext true)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.else.if.end.i_crit_edge, label %land.rhs.i

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.else
  %dep_map.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !102

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 313, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.else.if.end.i_crit_edge
  %cur_rssi_ctx.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 99
  %5 = ptrtoint ptr %cur_rssi_ctx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cur_rssi_ctx.i, align 4
  %tobool46.not.i = icmp eq ptr %6, null
  br i1 %tobool46.not.i, label %if.end.i.if.end_crit_edge, label %if.then47.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then47.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void @ieee80211_disable_rssi_reports(ptr noundef %8) #10
  %9 = ptrtoint ptr %cur_rssi_ctx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %cur_rssi_ctx.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then47.i, %if.end.i.if.end_crit_edge, %if.then
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @iwlagn_bt_rx_handler_setup(ptr nocapture noundef writeonly %priv) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 20, i32 206
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @iwlagn_bt_coex_profile_notif, ptr %arrayidx, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwlagn_bt_coex_profile_notif(ptr noundef %priv, ptr nocapture noundef readonly %rxb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #10
  %bt_enable_flag = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 83
  %2 = ptrtoint ptr %bt_enable_flag to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bt_enable_flag, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %4 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %_offset.i, align 4
  %6 = ptrtoint ptr %call.i to i32
  %add.i = add i32 %5, %6
  %7 = inttoptr i32 %add.i to ptr
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %7, i32 0, i32 2
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %9, i32 noundef 32768, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_bt_coex_profile_notif, ptr noundef nonnull @.str.22) #10
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %bt_status = getelementptr inbounds %struct.iwl_rx_packet, ptr %7, i32 2
  %12 = ptrtoint ptr %bt_status to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bt_status, align 1
  %conv10 = zext i8 %13 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %11, i32 noundef 32768, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_bt_coex_profile_notif, ptr noundef nonnull @.str.23, i32 noundef %conv10) #10
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %bt_traffic_load = getelementptr inbounds %struct.iwl_bt_coex_profile_notif, ptr %data, i32 0, i32 2
  %16 = ptrtoint ptr %bt_traffic_load to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bt_traffic_load, align 1
  %conv18 = zext i8 %17 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %15, i32 noundef 32768, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_bt_coex_profile_notif, ptr noundef nonnull @.str.24, i32 noundef %conv18) #10
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %bt_ci_compliance = getelementptr inbounds %struct.iwl_bt_coex_profile_notif, ptr %data, i32 0, i32 3
  %20 = ptrtoint ptr %bt_ci_compliance to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bt_ci_compliance, align 1
  %conv26 = zext i8 %21 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %19, i32 noundef 32768, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_bt_coex_profile_notif, ptr noundef nonnull @.str.25, i32 noundef %conv26) #10
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %frame1.i = getelementptr inbounds %struct.iwl_bt_uart_msg, ptr %data, i32 0, i32 1
  %24 = ptrtoint ptr %frame1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %frame1.i, align 1
  %conv.i = zext i8 %25 to i32
  %and.i = and i32 %conv.i, 7
  %and4.i = lshr i32 %conv.i, 3
  %26 = and i32 %and4.i, 3
  %and8.i = lshr i32 %conv.i, 5
  %27 = and i32 %and8.i, 1
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %23, i32 noundef 32768, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_print_uartmsg, ptr noundef nonnull @.str.26, i32 noundef %and.i, i32 noundef %26, i32 noundef %27) #10
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %frame2.i = getelementptr inbounds %struct.iwl_bt_uart_msg, ptr %data, i32 0, i32 2
  %30 = ptrtoint ptr %frame2.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %frame2.i, align 1
  %conv15.i = zext i8 %31 to i32
  %and16.i = and i32 %conv15.i, 3
  %and20.i = lshr i32 %conv15.i, 2
  %32 = and i32 %and20.i, 3
  %and24.i = lshr i32 %conv15.i, 4
  %33 = and i32 %and24.i, 1
  %and28.i = lshr i32 %conv15.i, 5
  %34 = and i32 %and28.i, 1
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %29, i32 noundef 32768, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_print_uartmsg, ptr noundef nonnull @.str.27, i32 noundef %and16.i, i32 noundef %32, i32 noundef %33, i32 noundef %34) #10
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %frame3.i = getelementptr inbounds %struct.iwl_bt_uart_msg, ptr %data, i32 0, i32 3
  %37 = ptrtoint ptr %frame3.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %frame3.i, align 1
  %conv35.i = zext i8 %38 to i32
  %and36.i = and i32 %conv35.i, 1
  %and40.i = lshr i32 %conv35.i, 1
  %39 = and i32 %and40.i, 1
  %and44.i = lshr i32 %conv35.i, 2
  %40 = and i32 %and44.i, 1
  %and48.i = lshr i32 %conv35.i, 3
  %41 = and i32 %and48.i, 1
  %and52.i = lshr i32 %conv35.i, 4
  %42 = and i32 %and52.i, 1
  %and56.i = lshr i32 %conv35.i, 5
  %43 = and i32 %and56.i, 1
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %36, i32 noundef 32768, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_print_uartmsg, ptr noundef nonnull @.str.28, i32 noundef %and36.i, i32 noundef %39, i32 noundef %40, i32 noundef %41, i32 noundef %42, i32 noundef %43) #10
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  %frame4.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %7, i32 1, i32 1
  %46 = ptrtoint ptr %frame4.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %frame4.i, align 1
  %48 = and i8 %47, 63
  %and64.i = zext i8 %48 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %45, i32 noundef 32768, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_print_uartmsg, ptr noundef nonnull @.str.29, i32 noundef %and64.i) #10
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  %frame5.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %7, i32 1, i32 1, i32 1
  %51 = ptrtoint ptr %frame5.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %frame5.i, align 1
  %conv71.i = zext i8 %52 to i32
  %and72.i = and i32 %conv71.i, 3
  %and76.i = lshr i32 %conv71.i, 2
  %53 = and i32 %and76.i, 3
  %and80.i = lshr i32 %conv71.i, 4
  %54 = and i32 %and80.i, 3
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %50, i32 noundef 32768, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_print_uartmsg, ptr noundef nonnull @.str.30, i32 noundef %and72.i, i32 noundef %53, i32 noundef %54) #10
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  %frame6.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %7, i32 1, i32 1, i32 2
  %57 = ptrtoint ptr %frame6.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %frame6.i, align 1
  %conv87.i = zext i8 %58 to i32
  %and88.i = and i32 %conv87.i, 31
  %and92.i = lshr i32 %conv87.i, 5
  %59 = and i32 %and92.i, 1
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %56, i32 noundef 32768, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_print_uartmsg, ptr noundef nonnull @.str.31, i32 noundef %and88.i, i32 noundef %59) #10
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 4
  %frame7.i = getelementptr inbounds %struct.iwl_bt_uart_msg, ptr %data, i32 0, i32 7
  %62 = ptrtoint ptr %frame7.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %frame7.i, align 1
  %conv99.i = zext i8 %63 to i32
  %and100.i = and i32 %conv99.i, 7
  %and104.i = lshr i32 %conv99.i, 3
  %64 = and i32 %and104.i, 1
  %and108.i = lshr i32 %conv99.i, 4
  %65 = and i32 %and108.i, 1
  %and112.i = lshr i32 %conv99.i, 5
  %66 = and i32 %and112.i, 1
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %61, i32 noundef 32768, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_print_uartmsg, ptr noundef nonnull @.str.32, i32 noundef %and100.i, i32 noundef %64, i32 noundef %65, i32 noundef %66) #10
  %bt_traffic_load29 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 85
  %67 = ptrtoint ptr %bt_traffic_load29 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %bt_traffic_load29, align 2
  %last_bt_traffic_load = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 86
  %69 = ptrtoint ptr %last_bt_traffic_load to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %last_bt_traffic_load, align 1
  %70 = ptrtoint ptr %frame3.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %frame3.i, align 1
  %72 = and i8 %71, 1
  %bt_is_sco = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 100
  %73 = ptrtoint ptr %bt_is_sco to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %bt_is_sco, align 8
  %iw_mode = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 69
  %74 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %75)
  %cmp31.not = icmp eq i32 %75, 1
  br i1 %cmp31.not, label %do.end.if.end62_crit_edge, label %if.then33

do.end.if.end62_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then33:                                        ; preds = %do.end
  %bt_status34 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 84
  %76 = ptrtoint ptr %bt_status34 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %bt_status34, align 1
  %78 = ptrtoint ptr %bt_status to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %bt_status, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %77, i8 %79)
  %cmp38.not = icmp eq i8 %77, %79
  br i1 %cmp38.not, label %lor.lhs.false, label %if.then33.if.then46_crit_edge

if.then33.if.then46_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46

lor.lhs.false:                                    ; preds = %if.then33
  %80 = ptrtoint ptr %bt_traffic_load to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %bt_traffic_load, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %68, i8 %81)
  %cmp44.not = icmp eq i8 %68, %81
  br i1 %cmp44.not, label %lor.lhs.false.if.end62_crit_edge, label %lor.lhs.false.if.then46_crit_edge

lor.lhs.false.if.then46_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46

lor.lhs.false.if.end62_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then46:                                        ; preds = %lor.lhs.false.if.then46_crit_edge, %if.then33.if.then46_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not = icmp eq i8 %79, 0
  br i1 %tobool.not, label %if.then46.if.end57_crit_edge, label %if.then48

if.then46.if.end57_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then48:                                        ; preds = %if.then46
  %bt_ch_announce = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 87
  %82 = ptrtoint ptr %bt_ch_announce to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %bt_ch_announce, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool49.not = icmp eq i8 %83, 0
  br i1 %tobool49.not, label %if.then48.if.end57_crit_edge, label %if.else

if.then48.if.end57_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.else:                                          ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %bt_traffic_load to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %bt_traffic_load, align 1
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.then48.if.end57_crit_edge, %if.then46.if.end57_crit_edge
  %.sink = phi i8 [ %85, %if.else ], [ 2, %if.then48.if.end57_crit_edge ], [ 0, %if.then46.if.end57_crit_edge ]
  %86 = ptrtoint ptr %bt_traffic_load29 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %.sink, ptr %bt_traffic_load29, align 2
  %87 = ptrtoint ptr %bt_status to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %bt_status, align 1
  %89 = ptrtoint ptr %bt_status34 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %bt_status34, align 1
  %workqueue = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 16
  %90 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %workqueue, align 4
  %bt_traffic_change_work = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 97
  %call.i112 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %91, ptr noundef %bt_traffic_change_work) #10
  br label %if.end62

if.end62:                                         ; preds = %if.end57, %lor.lhs.false.if.end62_crit_edge, %do.end.if.end62_crit_edge
  %contexts.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50
  %92 = ptrtoint ptr %contexts.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %contexts.i, align 4
  %tobool.not.i = icmp eq ptr %93, null
  br i1 %tobool.not.i, label %if.end62.do.end.i_crit_edge, label %lor.lhs.false.i

if.end62.do.end.i_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end62
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %95)
  %cmp.not.i = icmp eq i32 %95, 2
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end62.do.end.i_crit_edge
  %96 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %97, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_fill_txpower_mode, ptr noundef nonnull @.str.33) #10
  br label %lor.lhs.false65

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i114 = tail call i32 @ieee80211_ave_rssi(ptr noundef nonnull %93) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %tobool6.not.i = icmp eq i32 %call.i114, 0
  br i1 %tobool6.not.i, label %do.end11.i, label %if.end16.i

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %98 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %99, i32 noundef 32768, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_fill_txpower_mode, ptr noundef nonnull @.str.34) #10
  br label %lor.lhs.false65

if.end16.i:                                       ; preds = %if.end.i
  %reduced_txpower.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 92
  %100 = ptrtoint ptr %reduced_txpower.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %reduced_txpower.i, align 2, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool17.not.i = icmp eq i8 %101, 0
  %filter_flags.i.i.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 1, i32 14, i32 13
  %102 = ptrtoint ptr %filter_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %filter_flags.i.i.i, align 4
  %104 = and i32 %103, 536870912
  br i1 %tobool17.not.i, label %land.lhs.true.i, label %land.lhs.true36.i

land.lhs.true.i:                                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool19.not.i = icmp eq i32 %104, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -62, i32 %call.i114)
  %cmp21.i = icmp sgt i32 %call.i114, -62
  %or.cond.i = select i1 %tobool19.not.i, i1 %cmp21.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true22.i, label %land.lhs.true.i.lor.lhs.false65_crit_edge

land.lhs.true.i.lor.lhs.false65_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false65

land.lhs.true22.i:                                ; preds = %land.lhs.true.i
  %105 = ptrtoint ptr %frame3.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %frame3.i, align 1
  %conv.i116 = zext i8 %106 to i32
  %and.i117 = and i32 %conv.i116, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i117)
  %tobool23.not.i = icmp ne i32 %and.i117, 0
  %and27.i = and i32 %conv.i116, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  %or.cond81.i = and i1 %tobool23.not.i, %tobool28.not.i
  br i1 %or.cond81.i, label %if.then29.i, label %land.lhs.true22.i.lor.lhs.false65_crit_edge

land.lhs.true22.i.lor.lhs.false65_crit_edge:      ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false65

if.then29.i:                                      ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #12
  %107 = ptrtoint ptr %reduced_txpower.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %reduced_txpower.i, align 2
  %bt_valid.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 91
  %108 = ptrtoint ptr %bt_valid.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %bt_valid.i, align 8
  %110 = or i16 %109, 16384
  store i16 %110, ptr %bt_valid.i, align 8
  br label %if.then68

land.lhs.true36.i:                                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool38.not.i = icmp ne i32 %104, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65, i32 %call.i114)
  %cmp40.i = icmp slt i32 %call.i114, -65
  %or.cond82.i = select i1 %tobool38.not.i, i1 true, i1 %cmp40.i
  br i1 %or.cond82.i, label %land.lhs.true36.i.if.then52.i_crit_edge, label %lor.lhs.false42.i

land.lhs.true36.i.if.then52.i_crit_edge:          ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52.i

lor.lhs.false42.i:                                ; preds = %land.lhs.true36.i
  %111 = ptrtoint ptr %frame3.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %frame3.i, align 1
  %conv44.i = zext i8 %112 to i32
  %and45.i = and i32 %conv44.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp ne i32 %and45.i, 0
  %and50.i = and i32 %conv44.i, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  %or.cond83.i = or i1 %tobool46.not.i, %tobool51.not.i
  br i1 %or.cond83.i, label %lor.lhs.false42.i.if.then52.i_crit_edge, label %lor.lhs.false42.i.lor.lhs.false65_crit_edge

lor.lhs.false42.i.lor.lhs.false65_crit_edge:      ; preds = %lor.lhs.false42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false65

lor.lhs.false42.i.if.then52.i_crit_edge:          ; preds = %lor.lhs.false42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52.i

if.then52.i:                                      ; preds = %lor.lhs.false42.i.if.then52.i_crit_edge, %land.lhs.true36.i.if.then52.i_crit_edge
  %113 = ptrtoint ptr %reduced_txpower.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %reduced_txpower.i, align 2
  %bt_valid54.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 91
  %114 = ptrtoint ptr %bt_valid54.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %bt_valid54.i, align 8
  %116 = or i16 %115, 16384
  store i16 %116, ptr %bt_valid54.i, align 8
  br label %if.then68

lor.lhs.false65:                                  ; preds = %lor.lhs.false42.i.lor.lhs.false65_crit_edge, %land.lhs.true22.i.lor.lhs.false65_crit_edge, %land.lhs.true.i.lor.lhs.false65_crit_edge, %do.end11.i, %do.end.i
  %reduced_txpower.i118 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 92
  %117 = ptrtoint ptr %reduced_txpower.i118 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %reduced_txpower.i118, align 2, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool.not.i119 = icmp eq i8 %118, 0
  br i1 %tobool.not.i119, label %if.then.i, label %lor.lhs.false65.if.end.i122_crit_edge

lor.lhs.false65.if.end.i122_crit_edge:            ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i122

if.then.i:                                        ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #12
  %119 = ptrtoint ptr %frame3.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %frame3.i, align 1
  %121 = and i8 %120, 1
  %phi.cast.i = zext i8 %121 to i32
  br label %if.end.i122

if.end.i122:                                      ; preds = %if.then.i, %lor.lhs.false65.if.end.i122_crit_edge
  %kill_msk.0.i = phi i32 [ 2, %lor.lhs.false65.if.end.i122_crit_edge ], [ %phi.cast.i, %if.then.i ]
  %kill_ack_mask.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 89
  %122 = ptrtoint ptr %kill_ack_mask.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %kill_ack_mask.i, align 8
  %arrayidx.i = getelementptr [3 x i32], ptr @iwlagn_set_kill_msk.bt_kill_ack_msg, i32 0, i32 %kill_msk.0.i
  %124 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %125)
  %cmp.not.i121 = icmp eq i32 %123, %125
  br i1 %cmp.not.i121, label %lor.lhs.false.i123, label %if.end.i122.iwlagn_set_kill_msk.exit.thread_crit_edge

if.end.i122.iwlagn_set_kill_msk.exit.thread_crit_edge: ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwlagn_set_kill_msk.exit.thread

lor.lhs.false.i123:                               ; preds = %if.end.i122
  %kill_cts_mask.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 90
  %126 = ptrtoint ptr %kill_cts_mask.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %kill_cts_mask.i, align 4
  %arrayidx5.i = getelementptr [3 x i32], ptr @iwlagn_set_kill_msk.bt_kill_cts_msg, i32 0, i32 %kill_msk.0.i
  %128 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %129)
  %cmp6.not.i = icmp eq i32 %127, %129
  br i1 %cmp6.not.i, label %lor.lhs.false.i123.if.end71_crit_edge, label %lor.lhs.false.i123.iwlagn_set_kill_msk.exit.thread_crit_edge

lor.lhs.false.i123.iwlagn_set_kill_msk.exit.thread_crit_edge: ; preds = %lor.lhs.false.i123
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwlagn_set_kill_msk.exit.thread

lor.lhs.false.i123.if.end71_crit_edge:            ; preds = %lor.lhs.false.i123
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

iwlagn_set_kill_msk.exit.thread:                  ; preds = %lor.lhs.false.i123.iwlagn_set_kill_msk.exit.thread_crit_edge, %if.end.i122.iwlagn_set_kill_msk.exit.thread_crit_edge
  %bt_valid.i124 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 91
  %130 = ptrtoint ptr %bt_valid.i124 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %bt_valid.i124, align 8
  %132 = ptrtoint ptr %kill_ack_mask.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %125, ptr %kill_ack_mask.i, align 8
  %133 = or i16 %131, 12288
  store i16 %133, ptr %bt_valid.i124, align 8
  %arrayidx19.i = getelementptr [3 x i32], ptr @iwlagn_set_kill_msk.bt_kill_cts_msg, i32 0, i32 %kill_msk.0.i
  %134 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx19.i, align 4
  %kill_cts_mask20.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 90
  %136 = ptrtoint ptr %kill_cts_mask20.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %kill_cts_mask20.i, align 4
  br label %if.then68

if.then68:                                        ; preds = %iwlagn_set_kill_msk.exit.thread, %if.then52.i, %if.then29.i
  %workqueue69 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 16
  %137 = ptrtoint ptr %workqueue69 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %workqueue69, align 4
  %bt_runtime_config = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 114
  %call.i125 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %138, ptr noundef %bt_runtime_config) #10
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %lor.lhs.false.i123.if.end71_crit_edge
  %139 = ptrtoint ptr %bt_ci_compliance to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %bt_ci_compliance, align 1
  %bt_ci_compliance73 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 96
  %141 = ptrtoint ptr %bt_ci_compliance73 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %140, ptr %bt_ci_compliance73, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwlagn_bt_setup_deferred_work(ptr noundef %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bt_traffic_change_work = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 97
  tail call void @__init_work(ptr noundef %bt_traffic_change_work, i32 noundef 0) #10
  %0 = ptrtoint ptr %bt_traffic_change_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %bt_traffic_change_work, align 4
  %lockdep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 97, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.13, ptr noundef nonnull @iwlagn_bt_setup_deferred_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry4 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 97, i32 1
  %1 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 97, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 97, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @iwlagn_bt_traffic_change_work, ptr %func, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwlagn_bt_traffic_change_work(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -10292
  %bt_enable_flag = getelementptr i8, ptr %work, i32 -28
  %0 = ptrtoint ptr %bt_enable_flag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bt_enable_flag, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  %dev = getelementptr i8, ptr %work, i32 -10288
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %bt_traffic_load = getelementptr i8, ptr %work, i32 -26
  %4 = ptrtoint ptr %bt_traffic_load to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bt_traffic_load, align 2
  %conv3 = zext i8 %5 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 32768, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_bt_traffic_change_work, ptr noundef nonnull @.str.35, i32 noundef %conv3) #10
  %6 = ptrtoint ptr %bt_traffic_load to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bt_traffic_load, align 2
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %do.end15 [
    i8 0, label %sw.bb
    i8 1, label %do.end.sw.epilog_crit_edge
    i8 2, label %do.end.sw.bb11_crit_edge
    i8 3, label %do.end.sw.bb11_crit_edge71
  ]

do.end.sw.bb11_crit_edge71:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb11

do.end.sw.bb11_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb11

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %bt_status = getelementptr i8, ptr %work, i32 -27
  %9 = ptrtoint ptr %bt_status to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bt_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %. = select i1 %tobool.not, i32 0, i32 3
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end.sw.bb11_crit_edge, %do.end.sw.bb11_crit_edge71
  br label %sw.epilog

do.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv7 = zext i8 %7 to i32
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %12, i32 noundef 0, ptr noundef nonnull @.str.36, i32 noundef %conv7) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end15, %sw.bb11, %sw.bb, %do.end.sw.epilog_crit_edge
  %cmp24.not = phi i1 [ true, %do.end15 ], [ false, %sw.bb11 ], [ false, %sw.bb ], [ false, %do.end.sw.epilog_crit_edge ]
  %smps_request.0 = phi i32 [ -1, %do.end15 ], [ 2, %sw.bb11 ], [ %., %sw.bb ], [ 3, %do.end.sw.epilog_crit_edge ]
  %mutex = getelementptr i8, ptr %work, i32 -10224
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %status = getelementptr i8, ptr %work, i32 -10272
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %status, align 4
  %15 = and i32 %14, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool21.not = icmp eq i32 %15, 0
  br i1 %tobool21.not, label %if.end23, label %sw.epilog.out_crit_edge

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end23:                                         ; preds = %sw.epilog
  tail call void @iwl_update_chain_flags(ptr noundef %add.ptr) #10
  br i1 %cmp24.not, label %if.end23.if.end42_crit_edge, label %if.then26

if.end23.if.end42_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then26:                                        ; preds = %if.end23
  %smps = getelementptr i8, ptr %work, i32 -6696
  %16 = ptrtoint ptr %smps to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %smps_request.0, ptr %smps, align 4
  %contexts = getelementptr i8, ptr %work, i32 -7560
  %arrayidx28 = getelementptr i8, ptr %work, i32 -6936
  %cmp2968 = icmp ult ptr %contexts, %arrayidx28
  br i1 %cmp2968, label %for.body.lr.ph, label %if.then26.if.end42_crit_edge

if.then26.if.end42_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

for.body.lr.ph:                                   ; preds = %if.then26
  %valid_contexts = getelementptr i8, ptr %work, i32 -9920
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ctx.069 = phi ptr [ %contexts, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %17 = ptrtoint ptr %valid_contexts to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %valid_contexts, align 4
  %conv31 = zext i8 %18 to i32
  %ctxid = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.069, i32 0, i32 7
  %19 = ptrtoint ptr %ctxid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctxid, align 4
  %shl = shl nuw i32 1, %20
  %and = and i32 %shl, %conv31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %for.body.for.inc_crit_edge, label %if.then33

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then33:                                        ; preds = %for.body
  %21 = ptrtoint ptr %ctx.069 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx.069, align 4
  %tobool34.not = icmp eq ptr %22, null
  br i1 %tobool34.not, label %if.then33.for.inc_crit_edge, label %land.lhs.true

if.then33.for.inc_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %if.then33
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp36 = icmp eq i32 %24, 2
  br i1 %cmp36, label %if.then38, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then38:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ieee80211_request_smps(ptr noundef nonnull %22, i32 noundef %smps_request.0) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then38, %land.lhs.true.for.inc_crit_edge, %if.then33.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.iwl_rxon_context, ptr %ctx.069, i32 1
  %cmp29 = icmp ult ptr %incdec.ptr, %arrayidx28
  br i1 %cmp29, label %for.inc.for.body_crit_edge, label %for.inc.if.end42_crit_edge

for.inc.if.end42_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end42:                                         ; preds = %for.inc.if.end42_crit_edge, %if.then26.if.end42_crit_edge, %if.end23.if.end42_crit_edge
  %bt_is_sco.i = getelementptr i8, ptr %work, i32 52
  %25 = ptrtoint ptr %bt_is_sco.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bt_is_sco.i, align 8, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %if.end42.if.else.i_crit_edge, label %land.lhs.true.i

if.end42.if.else.i_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end42
  %27 = ptrtoint ptr %bt_traffic_load to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bt_traffic_load, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %28)
  %cmp.i = icmp eq i8 %28, 3
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iwlagn_bt_adjust_rssi_monitor(ptr noundef %add.ptr, i1 noundef zeroext true) #10
  br label %out

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end42.if.else.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %29 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i, label %if.else.i.if.end.i.i_crit_edge, label %land.rhs.i.i

if.else.i.if.end.i.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %if.else.i
  %dep_map.i.i = getelementptr i8, ptr %work, i32 -10160
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !102

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 313, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %if.else.i.if.end.i.i_crit_edge
  %cur_rssi_ctx.i.i = getelementptr i8, ptr %work, i32 48
  %30 = ptrtoint ptr %cur_rssi_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cur_rssi_ctx.i.i, align 4
  %tobool46.not.i.i = icmp eq ptr %31, null
  br i1 %tobool46.not.i.i, label %if.end.i.i.out_crit_edge, label %if.then47.i.i

if.end.i.i.out_crit_edge:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then47.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  tail call void @ieee80211_disable_rssi_reports(ptr noundef %33) #10
  %34 = ptrtoint ptr %cur_rssi_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %cur_rssi_ctx.i.i, align 4
  br label %out

out:                                              ; preds = %if.then47.i.i, %if.end.i.i.out_crit_edge, %if.then.i, %sw.epilog.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwlagn_bt_cancel_deferred_work(ptr noundef %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bt_traffic_change_work = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 97
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %bt_traffic_change_work) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwlagn_set_rxon_chain(ptr noundef %priv, ptr nocapture noundef %ctx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %smps.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 57, i32 1
  %0 = ptrtoint ptr %smps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %smps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %entry.is_single_rx_stream.exit_crit_edge, label %lor.rhs.i

entry.is_single_rx_stream.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_single_rx_stream.exit

lor.rhs.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %current_ht_config.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 57
  %2 = ptrtoint ptr %current_ht_config.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %current_ht_config.i, align 8, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i = icmp eq i8 %3, 0
  br label %is_single_rx_stream.exit

is_single_rx_stream.exit:                         ; preds = %lor.rhs.i, %entry.is_single_rx_stream.exit_crit_edge
  %4 = phi i1 [ false, %entry.is_single_rx_stream.exit_crit_edge ], [ %tobool.i, %lor.rhs.i ]
  %status = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %status, align 4
  %7 = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp ne i32 %7, 0
  %chain_noise_data = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 54
  %8 = ptrtoint ptr %chain_noise_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chain_noise_data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %if.else, label %is_single_rx_stream.exit.if.end_crit_edge

is_single_rx_stream.exit.if.end_crit_edge:        ; preds = %is_single_rx_stream.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else:                                          ; preds = %is_single_rx_stream.exit
  call void @__sanitizer_cov_trace_pc() #12
  %nvm_data = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %10 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nvm_data, align 8
  %valid_rx_ant = getelementptr inbounds %struct.iwl_nvm_data, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %valid_rx_ant to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %valid_rx_ant, align 2
  %conv = zext i8 %13 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %is_single_rx_stream.exit.if.end_crit_edge
  %active_chains.0 = phi i32 [ %conv, %if.else ], [ %9, %is_single_rx_stream.exit.if.end_crit_edge ]
  %lib = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 4
  %14 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lib, align 8
  %bt_params = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %bt_params to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bt_params, align 4
  %tobool7.not = icmp eq ptr %17, null
  br i1 %tobool7.not, label %if.end21, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool10.not = icmp eq i8 %19, 0
  br i1 %tobool10.not, label %land.lhs.true.i.thread, label %land.lhs.true12

land.lhs.true.i.thread:                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %conv22159167 = shl i32 %active_chains.0, 1
  br label %if.end.i

land.lhs.true12:                                  ; preds = %land.lhs.true
  %bt_full_concurrent = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 88
  %20 = ptrtoint ptr %bt_full_concurrent to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bt_full_concurrent, align 1, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool13.not = icmp eq i8 %21, 0
  br i1 %tobool13.not, label %lor.lhs.false, label %land.lhs.true12.if.then17_crit_edge

land.lhs.true12.if.then17_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

lor.lhs.false:                                    ; preds = %land.lhs.true12
  %bt_traffic_load = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 85
  %22 = ptrtoint ptr %bt_traffic_load to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bt_traffic_load, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp = icmp ugt i8 %23, 1
  br i1 %cmp, label %lor.lhs.false.if.then17_crit_edge, label %lor.lhs.false.land.lhs.true.i_crit_edge

lor.lhs.false.land.lhs.true.i_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %land.lhs.true12.if.then17_crit_edge
  %and.i = and i32 %active_chains.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and2.i = and i32 %active_chains.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %24 = select i1 %tobool3.not.i, i32 4, i32 2
  %conv20 = select i1 %tobool.not.i, i32 %24, i32 1
  br label %land.lhs.true.i

if.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv22 = shl i32 %active_chains.0, 1
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then17, %lor.lhs.false.land.lhs.true.i_crit_edge
  %active_chains.1.ph.ph = phi i32 [ %conv20, %if.then17 ], [ %active_chains.0, %lor.lhs.false.land.lhs.true.i_crit_edge ]
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %25)
  %.pr = load i8, ptr %17, align 4
  %conv22159 = shl i32 %active_chains.1.ph.ph, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool3.not.i151 = icmp eq i8 %.pr, 0
  br i1 %tobool3.not.i151, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %26 = ptrtoint ptr %bt_full_concurrent to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bt_full_concurrent, align 1, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool5.not.i = icmp eq i8 %27, 0
  br i1 %tobool5.not.i, label %lor.lhs.false.i, label %land.lhs.true4.i.iwl_get_active_rx_chain_count.exit_crit_edge

land.lhs.true4.i.iwl_get_active_rx_chain_count.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_get_active_rx_chain_count.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true4.i
  %bt_traffic_load.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 85
  %28 = ptrtoint ptr %bt_traffic_load.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bt_traffic_load.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp.i152 = icmp ugt i8 %29, 1
  br i1 %cmp.i152, label %lor.lhs.false.i.iwl_get_active_rx_chain_count.exit_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

lor.lhs.false.i.iwl_get_active_rx_chain_count.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_get_active_rx_chain_count.exit

if.end.i:                                         ; preds = %lor.lhs.false.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %if.end21, %land.lhs.true.i.thread
  %conv22165 = phi i32 [ %conv22159, %lor.lhs.false.i.if.end.i_crit_edge ], [ %conv22159, %land.lhs.true.i.if.end.i_crit_edge ], [ %conv22, %if.end21 ], [ %conv22159167, %land.lhs.true.i.thread ]
  %active_chains.1162 = phi i32 [ %active_chains.1.ph.ph, %lor.lhs.false.i.if.end.i_crit_edge ], [ %active_chains.1.ph.ph, %land.lhs.true.i.if.end.i_crit_edge ], [ %active_chains.0, %if.end21 ], [ %active_chains.0, %land.lhs.true.i.thread ]
  br i1 %cmp.i, label %if.end.i.is_single_rx_stream.exit.thread.i_crit_edge, label %is_single_rx_stream.exit.i

if.end.i.is_single_rx_stream.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_single_rx_stream.exit.thread.i

is_single_rx_stream.exit.i:                       ; preds = %if.end.i
  %current_ht_config.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 57
  %30 = ptrtoint ptr %current_ht_config.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %current_ht_config.i.i, align 8, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.i.not.i = icmp eq i8 %31, 0
  br i1 %tobool.i.not.i, label %is_single_rx_stream.exit.i.iwl_get_active_rx_chain_count.exit_crit_edge, label %is_single_rx_stream.exit.i.is_single_rx_stream.exit.thread.i_crit_edge

is_single_rx_stream.exit.i.is_single_rx_stream.exit.thread.i_crit_edge: ; preds = %is_single_rx_stream.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_single_rx_stream.exit.thread.i

is_single_rx_stream.exit.i.iwl_get_active_rx_chain_count.exit_crit_edge: ; preds = %is_single_rx_stream.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_get_active_rx_chain_count.exit

is_single_rx_stream.exit.thread.i:                ; preds = %is_single_rx_stream.exit.i.is_single_rx_stream.exit.thread.i_crit_edge, %if.end.i.is_single_rx_stream.exit.thread.i_crit_edge
  br label %iwl_get_active_rx_chain_count.exit

iwl_get_active_rx_chain_count.exit:               ; preds = %is_single_rx_stream.exit.thread.i, %is_single_rx_stream.exit.i.iwl_get_active_rx_chain_count.exit_crit_edge, %lor.lhs.false.i.iwl_get_active_rx_chain_count.exit_crit_edge, %land.lhs.true4.i.iwl_get_active_rx_chain_count.exit_crit_edge
  %conv22163 = phi i32 [ %conv22159, %lor.lhs.false.i.iwl_get_active_rx_chain_count.exit_crit_edge ], [ %conv22159, %land.lhs.true4.i.iwl_get_active_rx_chain_count.exit_crit_edge ], [ %conv22165, %is_single_rx_stream.exit.thread.i ], [ %conv22165, %is_single_rx_stream.exit.i.iwl_get_active_rx_chain_count.exit_crit_edge ]
  %active_chains.1160 = phi i32 [ %active_chains.1.ph.ph, %lor.lhs.false.i.iwl_get_active_rx_chain_count.exit_crit_edge ], [ %active_chains.1.ph.ph, %land.lhs.true4.i.iwl_get_active_rx_chain_count.exit_crit_edge ], [ %active_chains.1162, %is_single_rx_stream.exit.thread.i ], [ %active_chains.1162, %is_single_rx_stream.exit.i.iwl_get_active_rx_chain_count.exit_crit_edge ]
  %retval.0.i153 = phi i32 [ 2, %lor.lhs.false.i.iwl_get_active_rx_chain_count.exit_crit_edge ], [ 2, %land.lhs.true4.i.iwl_get_active_rx_chain_count.exit_crit_edge ], [ 2, %is_single_rx_stream.exit.thread.i ], [ 3, %is_single_rx_stream.exit.i.iwl_get_active_rx_chain_count.exit_crit_edge ]
  %32 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %1, label %do.end.i [
    i32 2, label %iwl_get_active_rx_chain_count.exit.iwl_get_idle_rx_chain_count.exit_crit_edge
    i32 3, label %iwl_get_active_rx_chain_count.exit.iwl_get_idle_rx_chain_count.exit_crit_edge170
    i32 0, label %iwl_get_active_rx_chain_count.exit.sw.bb1.i_crit_edge
    i32 1, label %iwl_get_active_rx_chain_count.exit.sw.bb1.i_crit_edge171
  ]

iwl_get_active_rx_chain_count.exit.sw.bb1.i_crit_edge171: ; preds = %iwl_get_active_rx_chain_count.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

iwl_get_active_rx_chain_count.exit.sw.bb1.i_crit_edge: ; preds = %iwl_get_active_rx_chain_count.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

iwl_get_active_rx_chain_count.exit.iwl_get_idle_rx_chain_count.exit_crit_edge170: ; preds = %iwl_get_active_rx_chain_count.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_get_idle_rx_chain_count.exit

iwl_get_active_rx_chain_count.exit.iwl_get_idle_rx_chain_count.exit_crit_edge: ; preds = %iwl_get_active_rx_chain_count.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_get_idle_rx_chain_count.exit

sw.bb1.i:                                         ; preds = %iwl_get_active_rx_chain_count.exit.sw.bb1.i_crit_edge, %iwl_get_active_rx_chain_count.exit.sw.bb1.i_crit_edge171
  br label %iwl_get_idle_rx_chain_count.exit

do.end.i:                                         ; preds = %iwl_get_active_rx_chain_count.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 751, i32 noundef 9, ptr noundef nonnull @.str.37, i32 noundef %1) #10
  br label %iwl_get_idle_rx_chain_count.exit

iwl_get_idle_rx_chain_count.exit:                 ; preds = %do.end.i, %sw.bb1.i, %iwl_get_active_rx_chain_count.exit.iwl_get_idle_rx_chain_count.exit_crit_edge, %iwl_get_active_rx_chain_count.exit.iwl_get_idle_rx_chain_count.exit_crit_edge170
  %retval.0.i155 = phi i32 [ %retval.0.i153, %do.end.i ], [ %retval.0.i153, %sw.bb1.i ], [ 1, %iwl_get_active_rx_chain_count.exit.iwl_get_idle_rx_chain_count.exit_crit_edge ], [ 1, %iwl_get_active_rx_chain_count.exit.iwl_get_idle_rx_chain_count.exit_crit_edge170 ]
  %conv.i156 = and i32 %active_chains.1160, 1
  %and1.i157 = lshr i32 %active_chains.1160, 1
  %shr2.i = and i32 %and1.i157, 1
  %add.i = add nuw nsw i32 %shr2.i, %conv.i156
  %and5.i = lshr i32 %active_chains.1160, 2
  %shr6.i = and i32 %and5.i, 1
  %add8.i = add nuw nsw i32 %add.i, %shr6.i
  %and10.i = lshr i32 %active_chains.1160, 3
  %shr11.i = and i32 %and10.i, 1
  %add13.i = add nuw nsw i32 %add8.i, %shr11.i
  %33 = tail call i32 @llvm.umin.i32(i32 %retval.0.i153, i32 %add13.i)
  %34 = trunc i32 %33 to i8
  %35 = tail call i32 @llvm.umin.i32(i32 %retval.0.i155, i32 %add13.i)
  %idle_rx_cnt.0 = trunc i32 %35 to i8
  %shl42 = shl nuw nsw i32 %33, 12
  %or = or i32 %shl42, %conv22163
  %shl46 = shl nuw nsw i32 %35, 10
  %or48 = or i32 %or, %shl46
  %conv49 = trunc i32 %or48 to i16
  %rx_chain50 = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %34)
  %cmp54 = icmp ugt i8 %34, 1
  %or.cond = and i1 %4, %cmp54
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %tobool.not
  %36 = and i16 %conv49, -16385
  %37 = call i16 @llvm.bswap.i16(i16 %36)
  %masksel = select i1 %brmerge, i16 0, i16 64
  %storemerge = or i16 %37, %masksel
  %38 = ptrtoint ptr %rx_chain50 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %storemerge, ptr %rx_chain50, align 2
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  %conv74 = zext i16 %storemerge to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %40, i32 noundef 4097, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_set_rxon_chain, ptr noundef nonnull @.str.14, i32 noundef %conv74, i32 noundef %33, i32 noundef %35) #10
  %41 = add nsw i8 %idle_rx_cnt.0, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %34)
  %.not = icmp ult i8 %41, %34
  br i1 %.not, label %iwl_get_idle_rx_chain_count.exit.if.end108_crit_edge, label %do.end102, !prof !104

iwl_get_idle_rx_chain_count.exit.if.end108_crit_edge: ; preds = %iwl_get_idle_rx_chain_count.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

do.end102:                                        ; preds = %iwl_get_idle_rx_chain_count.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 833, i32 noundef 9, ptr noundef null) #10
  br label %if.end108

if.end108:                                        ; preds = %do.end102, %iwl_get_idle_rx_chain_count.exit.if.end108_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @iwl_toggle_tx_ant(ptr nocapture noundef readonly %priv, i8 noundef zeroext %ant, i8 noundef zeroext %valid) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %band = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 18
  %0 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %band, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %bt_traffic_load = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 85
  %2 = ptrtoint ptr %bt_traffic_load to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bt_traffic_load, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp1 = icmp ugt i8 %3, 1
  br i1 %cmp1, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %conv11 = zext i8 %valid to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %ant)
  %cmp6 = icmp ult i8 %ant, 2
  %add = add i8 %ant, 1
  %spec.select = select i1 %cmp6, i8 %add, i8 0
  %conv12 = zext i8 %spec.select to i32
  %shl = shl nuw nsw i32 1, %conv12
  %and = and i32 %shl, %conv11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %spec.select)
  %cmp6.1 = icmp ult i8 %spec.select, 2
  %add.1 = add nuw nsw i8 %spec.select, 1
  %spec.select.1 = select i1 %cmp6.1, i8 %add.1, i8 0
  %conv12.1 = zext i8 %spec.select.1 to i32
  %shl.1 = shl nuw nsw i32 1, %conv12.1
  %and.1 = and i32 %shl.1, %conv11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  %spec.select24 = select i1 %tobool.not.1, i8 %ant, i8 %spec.select.1
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %land.lhs.true.cleanup_crit_edge ], [ %spec.select, %if.end.cleanup_crit_edge ], [ %spec.select24, %for.cond ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwlagn_send_patterns(ptr noundef %priv, ptr nocapture noundef readonly %wowlan) local_unnamed_addr #1 align 64 {
entry:
  %cmd = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd) #10
  %0 = getelementptr inbounds i8, ptr %cmd, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 32)
  %2 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd, i32 0, i32 5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 224, ptr %2, align 4
  %4 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd, i32 0, i32 7
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %4, align 4
  %n_patterns = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 9
  %6 = ptrtoint ptr %n_patterns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_patterns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 148) #10
  %9 = extractvalue { i32, i1 } %8, 1
  %10 = extractvalue { i32, i1 } %8, 0
  %11 = add nuw i32 %10, 4
  %retval.0.i = select i1 %9, i32 -1, i32 %11
  %conv = trunc i32 %retval.0.i to i16
  %len = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %len, align 4
  %conv4 = and i32 %retval.0.i, 65535
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv4, i32 noundef 3264) #13
  %tobool6.not = icmp eq ptr %call9.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %13 = ptrtoint ptr %n_patterns to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_patterns, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %call9.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp70 = icmp sgt i32 %14, 0
  br i1 %cmp70, label %for.body.lr.ph, label %if.end8.for.end_crit_edge

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %patterns = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 7
  %17 = ptrtoint ptr %patterns to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %patterns, align 4
  %19 = load ptr, ptr %patterns, align 4
  %20 = load ptr, ptr %patterns, align 4
  %21 = ptrtoint ptr %n_patterns to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n_patterns, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.071 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx13 = getelementptr %struct.cfg80211_pkt_pattern, ptr %18, i32 %i.071
  %pattern_len = getelementptr %struct.cfg80211_pkt_pattern, ptr %18, i32 %i.071, i32 2
  %23 = ptrtoint ptr %pattern_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pattern_len, align 4
  %sub = add i32 %24, 7
  %div = sdiv i32 %sub, 8
  %arrayidx15 = getelementptr %struct.iwlagn_wowlan_patterns_cmd, ptr %call9.i, i32 0, i32 1, i32 %i.071
  %25 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx13, align 4
  %27 = call ptr @memcpy(ptr %arrayidx15, ptr %26, i32 %div)
  %pattern = getelementptr %struct.iwlagn_wowlan_patterns_cmd, ptr %call9.i, i32 0, i32 1, i32 %i.071, i32 1
  %pattern23 = getelementptr %struct.cfg80211_pkt_pattern, ptr %19, i32 %i.071, i32 1
  %28 = ptrtoint ptr %pattern23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pattern23, align 4
  %pattern_len26 = getelementptr %struct.cfg80211_pkt_pattern, ptr %19, i32 %i.071, i32 2
  %30 = ptrtoint ptr %pattern_len26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pattern_len26, align 4
  %32 = call ptr @memcpy(ptr %pattern, ptr %29, i32 %31)
  %conv27 = trunc i32 %div to i8
  %mask_size = getelementptr %struct.iwlagn_wowlan_patterns_cmd, ptr %call9.i, i32 0, i32 1, i32 %i.071, i32 2
  %33 = ptrtoint ptr %mask_size to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv27, ptr %mask_size, align 4
  %pattern_len32 = getelementptr %struct.cfg80211_pkt_pattern, ptr %20, i32 %i.071, i32 2
  %34 = ptrtoint ptr %pattern_len32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pattern_len32, align 4
  %conv33 = trunc i32 %35 to i8
  %pattern_size = getelementptr %struct.iwlagn_wowlan_patterns_cmd, ptr %call9.i, i32 0, i32 1, i32 %i.071, i32 3
  %36 = ptrtoint ptr %pattern_size to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv33, ptr %pattern_size, align 1
  %inc = add nuw nsw i32 %i.071, 1
  %cmp = icmp slt i32 %inc, %22
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end8.for.end_crit_edge
  %37 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call9.i, ptr %cmd, align 4
  %call37 = call i32 @iwl_dvm_send_cmd(ptr noundef %priv, ptr noundef nonnull %cmd)
  call void @kfree(ptr noundef nonnull %call9.i) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %for.end ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_dvm_send_cmd(ptr noundef %priv, ptr noundef %cmd) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %status.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %7 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %status.i, align 4
  %and1.i.i77 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i77)
  %tobool5.not = icmp eq i32 %and1.i.i77, 0
  %cond = select i1 %tobool5.not, ptr @.str.17, ptr @.str.16
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %6, ptr noundef nonnull @.str.15, ptr noundef nonnull %cond) #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %status.i, align 4
  %11 = and i32 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  br i1 %tobool8.not, label %if.end16, label %do.end12

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev13 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %12 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev13, align 4
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 8
  %id = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 5
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id, align 4
  %call14 = tail call ptr @iwl_get_cmd_string(ptr noundef %15, i32 noundef %17) #10
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %13, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef %call14) #10
  br label %return

if.end16:                                         ; preds = %if.end
  %ucode_loaded = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 32
  %18 = ptrtoint ptr %ucode_loaded to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ucode_loaded, align 8, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool17.not = icmp eq i8 %19, 0
  br i1 %tobool17.not, label %do.end21, label %if.end25

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %dev22 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %20 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev22, align 4
  %id23 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 5
  %22 = ptrtoint ptr %id23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id23, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %21, i32 noundef 0, ptr noundef nonnull @.str.19, i32 noundef %23) #10
  br label %return

if.end25:                                         ; preds = %if.end16
  %flags = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 4
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %and = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %do.body28, label %if.end25.if.end57_crit_edge

if.end25.if.end57_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

do.body28:                                        ; preds = %if.end25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %26 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool29.not = icmp eq i32 %26, 0
  br i1 %tobool29.not, label %do.body28.if.end57_crit_edge, label %land.rhs

do.body28.if.end57_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

land.rhs:                                         ; preds = %do.body28
  %dep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end42, label %land.rhs.if.end57_crit_edge, !prof !102

land.rhs.if.end57_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

do.end42:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1242, i32 noundef 9, ptr noundef null) #10
  br label %if.end57

if.end57:                                         ; preds = %do.end42, %land.rhs.if.end57_crit_edge, %do.body28.if.end57_crit_edge, %if.end25.if.end57_crit_edge
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 8
  %call59 = tail call i32 @iwl_trans_send_cmd(ptr noundef %28, ptr noundef %cmd) #10
  br label %return

return:                                           ; preds = %if.end57, %do.end21, %do.end12, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end12 ], [ %call59, %if.end57 ], [ -5, %do.end21 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwlagn_suspend(ptr noundef %priv, ptr nocapture noundef readonly %wowlan) local_unnamed_addr #1 align 64 {
entry:
  %cmd.i213 = alloca %struct.iwl_host_cmd, align 4
  %cmd.i205 = alloca %struct.iwl_host_cmd, align 4
  %cmd.i197 = alloca %struct.iwl_host_cmd, align 4
  %cmd.i = alloca %struct.iwl_host_cmd, align 4
  %wakeup_filter_cmd = alloca %struct.iwlagn_wowlan_wakeup_filter_cmd, align 8
  %rxon = alloca %struct.iwl_rxon_cmd, align 1
  %kek_kck_cmd = alloca %struct.iwlagn_wowlan_kek_kck_material_cmd, align 1
  %tkip_cmd = alloca %struct.iwlagn_wowlan_tkip_params_cmd, align 1
  %d3_cfg_cmd = alloca %struct.iwlagn_d3_config_cmd, align 8
  %key_data = alloca %struct.wowlan_key_data, align 4
  %rsc_tsc_cmd = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %wakeup_filter_cmd) #10
  %0 = call ptr @memset(ptr %wakeup_filter_cmd, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %rxon)
  %1 = call ptr @memset(ptr %rxon, i32 255, i32 50)
  %contexts = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %kek_kck_cmd) #10
  %2 = call ptr @memset(ptr %kek_kck_cmd, i32 255, i32 76)
  call void @llvm.lifetime.start.p0(i64 74, ptr nonnull %tkip_cmd) #10
  %3 = call ptr @memset(ptr %tkip_cmd, i32 0, i32 74)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %d3_cfg_cmd) #10
  %4 = ptrtoint ptr %d3_cfg_cmd to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -9180983664580755456, ptr %d3_cfg_cmd, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %key_data) #10
  %5 = getelementptr inbounds i8, ptr %key_data, i32 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4
  %7 = ptrtoint ptr %key_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %contexts, ptr %key_data, align 4
  %rsc_tsc = getelementptr inbounds %struct.wowlan_key_data, ptr %key_data, i32 0, i32 1
  %tkip = getelementptr inbounds %struct.wowlan_key_data, ptr %key_data, i32 0, i32 2
  %8 = ptrtoint ptr %tkip to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %tkip_cmd, ptr %tkip, align 4
  %bssid = getelementptr inbounds %struct.wowlan_key_data, ptr %key_data, i32 0, i32 3
  %active = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 14
  %bssid_addr = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 14, i32 2
  %9 = ptrtoint ptr %bssid to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %bssid_addr, ptr %bssid, align 4
  %error = getelementptr inbounds %struct.wowlan_key_data, ptr %key_data, i32 0, i32 4
  %10 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %error, align 4
  %use_rsc_tsc = getelementptr inbounds %struct.wowlan_key_data, ptr %key_data, i32 0, i32 5
  %11 = ptrtoint ptr %use_rsc_tsc to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %use_rsc_tsc, align 1
  %use_tkip = getelementptr inbounds %struct.wowlan_key_data, ptr %key_data, i32 0, i32 6
  %12 = ptrtoint ptr %use_tkip to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %use_tkip, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 264) #14
  %14 = ptrtoint ptr %rsc_tsc to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %rsc_tsc, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup132_crit_edge, label %if.end

entry.cleanup132_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup132

if.end:                                           ; preds = %entry
  %15 = getelementptr inbounds %struct.iwlagn_wowlan_wakeup_filter_cmd, ptr %wakeup_filter_cmd, i32 0, i32 3, i32 7
  %16 = getelementptr inbounds %struct.iwlagn_wowlan_wakeup_filter_cmd, ptr %wakeup_filter_cmd, i32 0, i32 3, i32 6
  %17 = getelementptr inbounds %struct.iwlagn_wowlan_wakeup_filter_cmd, ptr %wakeup_filter_cmd, i32 0, i32 3, i32 5
  %18 = getelementptr inbounds %struct.iwlagn_wowlan_wakeup_filter_cmd, ptr %wakeup_filter_cmd, i32 0, i32 3, i32 4
  %19 = getelementptr inbounds %struct.iwlagn_wowlan_wakeup_filter_cmd, ptr %wakeup_filter_cmd, i32 0, i32 3, i32 3
  %20 = getelementptr inbounds %struct.iwlagn_wowlan_wakeup_filter_cmd, ptr %wakeup_filter_cmd, i32 0, i32 3, i32 2
  %21 = getelementptr inbounds %struct.iwlagn_wowlan_wakeup_filter_cmd, ptr %wakeup_filter_cmd, i32 0, i32 3, i32 1
  %22 = getelementptr inbounds %struct.iwlagn_wowlan_wakeup_filter_cmd, ptr %wakeup_filter_cmd, i32 0, i32 3
  %23 = getelementptr inbounds %struct.iwlagn_wowlan_wakeup_filter_cmd, ptr %wakeup_filter_cmd, i32 0, i32 1
  %24 = ptrtoint ptr %wakeup_filter_cmd to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 0, ptr %wakeup_filter_cmd, align 8
  %last_seq_ctl = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 139
  %25 = ptrtoint ptr %last_seq_ctl to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %last_seq_ctl, align 8
  %27 = and i16 %26, -3841
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %23, align 4
  %tid_data = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 65
  %29 = ptrtoint ptr %tid_data to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %tid_data, align 4
  %sub = add i16 %30, -16
  %31 = call i16 @llvm.bswap.i16(i16 %sub)
  %32 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %22, align 8
  %arrayidx7.1 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx7.1, align 4
  %sub.1 = add i16 %34, -16
  %35 = call i16 @llvm.bswap.i16(i16 %sub.1)
  %36 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %21, align 2
  %arrayidx7.2 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 0, i32 2
  %37 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx7.2, align 4
  %sub.2 = add i16 %38, -16
  %39 = call i16 @llvm.bswap.i16(i16 %sub.2)
  %40 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %20, align 4
  %arrayidx7.3 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 0, i32 3
  %41 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx7.3, align 4
  %sub.3 = add i16 %42, -16
  %43 = call i16 @llvm.bswap.i16(i16 %sub.3)
  %44 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %19, align 2
  %arrayidx7.4 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 0, i32 4
  %45 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx7.4, align 4
  %sub.4 = add i16 %46, -16
  %47 = call i16 @llvm.bswap.i16(i16 %sub.4)
  %48 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %18, align 8
  %arrayidx7.5 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 0, i32 5
  %49 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx7.5, align 4
  %sub.5 = add i16 %50, -16
  %51 = call i16 @llvm.bswap.i16(i16 %sub.5)
  %52 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %17, align 2
  %arrayidx7.6 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 0, i32 6
  %53 = ptrtoint ptr %arrayidx7.6 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx7.6, align 4
  %sub.6 = add i16 %54, -16
  %55 = call i16 @llvm.bswap.i16(i16 %sub.6)
  %56 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %16, align 4
  %arrayidx7.7 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 65, i32 0, i32 7
  %57 = ptrtoint ptr %arrayidx7.7 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx7.7, align 4
  %sub.7 = add i16 %58, -16
  %59 = call i16 @llvm.bswap.i16(i16 %sub.7)
  %60 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %15, align 2
  %disconnect = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 1
  %61 = ptrtoint ptr %disconnect to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %disconnect, align 1, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool11.not = icmp eq i8 %62, 0
  br i1 %tobool11.not, label %if.end.if.end13_crit_edge, label %if.then12

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %wakeup_filter_cmd to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %wakeup_filter_cmd, align 8
  %or = or i32 %64, 201326592
  store i32 %or, ptr %wakeup_filter_cmd, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end.if.end13_crit_edge
  %magic_pkt = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 2
  %65 = ptrtoint ptr %magic_pkt to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %magic_pkt, align 2, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool14.not = icmp eq i8 %66, 0
  br i1 %tobool14.not, label %if.end13.if.end18_crit_edge, label %if.then15

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %wakeup_filter_cmd to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %wakeup_filter_cmd, align 8
  %or17 = or i32 %68, 16777216
  store i32 %or17, ptr %wakeup_filter_cmd, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end13.if.end18_crit_edge
  %gtk_rekey_failure = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 3
  %69 = ptrtoint ptr %gtk_rekey_failure to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %gtk_rekey_failure, align 1, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool19.not = icmp eq i8 %70, 0
  br i1 %tobool19.not, label %if.end18.if.end23_crit_edge, label %if.then20

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %wakeup_filter_cmd to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %wakeup_filter_cmd, align 8
  %or22 = or i32 %72, 268435456
  store i32 %or22, ptr %wakeup_filter_cmd, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end18.if.end23_crit_edge
  %eap_identity_req = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 4
  %73 = ptrtoint ptr %eap_identity_req to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %eap_identity_req, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool24.not = icmp eq i8 %74, 0
  br i1 %tobool24.not, label %if.end23.if.end28_crit_edge, label %if.then25

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %wakeup_filter_cmd to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %wakeup_filter_cmd, align 8
  %or27 = or i32 %76, 536870912
  store i32 %or27, ptr %wakeup_filter_cmd, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end23.if.end28_crit_edge
  %four_way_handshake = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 5
  %77 = ptrtoint ptr %four_way_handshake to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %four_way_handshake, align 1, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool29.not = icmp eq i8 %78, 0
  br i1 %tobool29.not, label %if.end28.if.end33_crit_edge, label %if.then30

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %wakeup_filter_cmd to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %wakeup_filter_cmd, align 8
  %or32 = or i32 %80, 1073741824
  store i32 %or32, ptr %wakeup_filter_cmd, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end28.if.end33_crit_edge
  %n_patterns = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 9
  %81 = ptrtoint ptr %n_patterns to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %n_patterns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool34.not = icmp eq i32 %82, 0
  br i1 %tobool34.not, label %if.end33.if.end38_crit_edge, label %if.then35

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %wakeup_filter_cmd to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %wakeup_filter_cmd, align 8
  %or37 = or i32 %84, 33554432
  store i32 %or37, ptr %wakeup_filter_cmd, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end33.if.end38_crit_edge
  %rfkill_release = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 6
  %85 = ptrtoint ptr %rfkill_release to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %rfkill_release, align 2, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool39.not = icmp eq i8 %86, 0
  br i1 %tobool39.not, label %if.end38.if.end42_crit_edge, label %if.then40

if.end38.if.end42_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %wakeup_flags = getelementptr inbounds %struct.iwlagn_d3_config_cmd, ptr %d3_cfg_cmd, i32 0, i32 1
  %87 = ptrtoint ptr %wakeup_flags to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %wakeup_flags, align 4
  %or41 = or i32 %88, 16777216
  store i32 %or41, ptr %wakeup_flags, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end38.if.end42_crit_edge
  call void @iwl_scan_cancel_timeout(ptr noundef %priv, i32 noundef 200) #10
  %89 = call ptr @memcpy(ptr %rxon, ptr %active, i32 50)
  %ucode_loaded = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 32
  %90 = ptrtoint ptr %ucode_loaded to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %ucode_loaded, align 8
  %91 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %priv, align 8
  call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 1091) #10
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ops.i, align 4
  %stop_device.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %stop_device.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %stop_device.i, align 4
  call void %96(ptr noundef %92) #10
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %92, i32 0, i32 6
  %97 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %state.i, align 8
  %98 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %priv, align 8
  call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 1045) #10
  %ops.i195 = getelementptr inbounds %struct.iwl_trans, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %ops.i195 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ops.i195, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %call.i = call i32 %103(ptr noundef %99) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool46.not = icmp eq i32 %call.i, 0
  br i1 %tobool46.not, label %if.end48, label %if.end42.out_crit_edge

if.end42.out_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end48:                                         ; preds = %if.end42
  %wowlan49 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 48
  %104 = ptrtoint ptr %wowlan49 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %wowlan49, align 1
  %call50 = call i32 @iwl_load_ucode_wait_alive(ptr noundef %priv, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end48.out_crit_edge

if.end48.out_crit_edge:                           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end53:                                         ; preds = %if.end48
  %call54 = call i32 @iwl_alive_start(ptr noundef %priv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end53.out_crit_edge

if.end53.out_crit_edge:                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end57:                                         ; preds = %if.end53
  %staging = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 15
  %105 = call ptr @memcpy(ptr %staging, ptr %rxon, i32 50)
  %call58 = call i32 @iwlagn_commit_rxon(ptr noundef %priv, ptr noundef %contexts) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end57.out_crit_edge

if.end57.out_crit_edge:                           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end61:                                         ; preds = %if.end57
  %call62 = call i32 @iwl_power_update_mode(ptr noundef %priv, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end61.out_crit_edge

if.end61.out_crit_edge:                           ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end65:                                         ; preds = %if.end61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iwlwifi_mod_params to i32))
  %106 = load i32, ptr @iwlwifi_mod_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool66.not = icmp eq i32 %106, 0
  br i1 %tobool66.not, label %if.then67, label %if.end65.if.end121_crit_edge

if.end65.if.end121_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

if.then67:                                        ; preds = %if.end65
  %ucode_key_table = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 64
  %107 = ptrtoint ptr %ucode_key_table to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %ucode_key_table, align 8
  %key_mapping_keys = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 26
  %108 = ptrtoint ptr %key_mapping_keys to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %key_mapping_keys, align 1
  %mutex = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7
  call void @mutex_unlock(ptr noundef %mutex) #10
  %hw = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 13
  %109 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hw, align 4
  %111 = ptrtoint ptr %contexts to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %contexts, align 4
  call void @ieee80211_iter_keys(ptr noundef %110, ptr noundef %112, ptr noundef nonnull @iwlagn_wowlan_program_keys, ptr noundef nonnull %key_data) #10
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %113 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %error, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool70.not = icmp eq i8 %114, 0
  br i1 %tobool70.not, label %if.end72, label %if.then67.out_crit_edge

if.then67.out_crit_edge:                          ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end72:                                         ; preds = %if.then67
  %115 = ptrtoint ptr %use_rsc_tsc to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %use_rsc_tsc, align 1, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool74.not = icmp eq i8 %116, 0
  br i1 %tobool74.not, label %if.end72.if.end98_crit_edge, label %if.then75

if.end72.if.end98_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then75:                                        ; preds = %if.end72
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %rsc_tsc_cmd) #10
  %117 = getelementptr inbounds i8, ptr %rsc_tsc_cmd, i32 32
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 -1, ptr %117, align 4, !annotation !101
  %119 = ptrtoint ptr %rsc_tsc to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rsc_tsc, align 4
  %121 = ptrtoint ptr %rsc_tsc_cmd to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %120, ptr %rsc_tsc_cmd, align 4
  %arrayinit.cur.ptr = getelementptr inbounds ptr, ptr %rsc_tsc_cmd, i32 1
  %id = getelementptr inbounds %struct.iwl_host_cmd, ptr %rsc_tsc_cmd, i32 0, i32 5
  %122 = call ptr @memset(ptr %arrayinit.cur.ptr, i32 0, i32 20)
  %123 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 226, ptr %id, align 4
  %len = getelementptr inbounds %struct.iwl_host_cmd, ptr %rsc_tsc_cmd, i32 0, i32 6
  %124 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 264, ptr %len, align 4
  %arrayinit.start79 = getelementptr inbounds %struct.iwl_host_cmd, ptr %rsc_tsc_cmd, i32 0, i32 6, i32 1
  %125 = ptrtoint ptr %arrayinit.start79 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 0, ptr %arrayinit.start79, align 2
  %arrayinit.end80 = getelementptr inbounds %struct.iwl_host_cmd, ptr %rsc_tsc_cmd, i32 0, i32 7
  %126 = ptrtoint ptr %arrayinit.end80 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %arrayinit.end80, align 4
  %arrayinit.start87 = getelementptr inbounds %struct.iwl_host_cmd, ptr %rsc_tsc_cmd, i32 0, i32 7, i32 1
  %127 = ptrtoint ptr %arrayinit.start87 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %arrayinit.start87, align 1
  %call94 = call i32 @iwl_dvm_send_cmd(ptr noundef %priv, ptr noundef nonnull %rsc_tsc_cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %rsc_tsc_cmd) #10
  br i1 %tobool95.not, label %if.then75.if.end98_crit_edge, label %if.then75.out_crit_edge

if.then75.out_crit_edge:                          ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then75.if.end98_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.end98:                                         ; preds = %if.then75.if.end98_crit_edge, %if.end72.if.end98_crit_edge
  %128 = ptrtoint ptr %use_tkip to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %use_tkip, align 2, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool100.not = icmp eq i8 %129, 0
  br i1 %tobool100.not, label %if.end98.if.end106_crit_edge, label %if.then101

if.end98.if.end106_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

if.then101:                                       ; preds = %if.end98
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i) #10
  %130 = getelementptr inbounds i8, ptr %cmd.i, i32 32
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 65535, ptr %130, align 4, !annotation !101
  %132 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %tkip_cmd, ptr %cmd.i, align 4
  %arrayinit.cur.ptr.i = getelementptr inbounds ptr, ptr %cmd.i, i32 1
  %id4.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 5
  %133 = call ptr @memset(ptr %arrayinit.cur.ptr.i, i32 0, i32 20)
  %134 = ptrtoint ptr %id4.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 227, ptr %id4.i, align 4
  %len5.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6
  %135 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 74, ptr %len5.i, align 4
  %arrayinit.start7.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6, i32 1
  %136 = ptrtoint ptr %arrayinit.start7.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 0, ptr %arrayinit.start7.i, align 2
  %call.i196 = call i32 @iwl_dvm_send_cmd(ptr noundef %priv, ptr noundef nonnull %cmd.i) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i196)
  %tobool103.not = icmp eq i32 %call.i196, 0
  br i1 %tobool103.not, label %if.then101.if.end106_crit_edge, label %if.then101.out_crit_edge

if.then101.out_crit_edge:                         ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then101.if.end106_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

if.end106:                                        ; preds = %if.then101.if.end106_crit_edge, %if.end98.if.end106_crit_edge
  %have_rekey_data = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 140
  %137 = ptrtoint ptr %have_rekey_data to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %have_rekey_data, align 2, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool107.not = icmp eq i8 %138, 0
  br i1 %tobool107.not, label %if.end106.if.end121_crit_edge, label %if.then108

if.end106.if.end121_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

if.then108:                                       ; preds = %if.end106
  %kck110 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 136
  %139 = getelementptr inbounds i8, ptr %kek_kck_cmd, i32 16
  %140 = call ptr @memset(ptr %139, i32 0, i32 48)
  %141 = call ptr @memcpy(ptr %kek_kck_cmd, ptr %kck110, i32 16)
  %kck_len = getelementptr inbounds %struct.iwlagn_wowlan_kek_kck_material_cmd, ptr %kek_kck_cmd, i32 0, i32 2
  %142 = ptrtoint ptr %kck_len to i32
  call void @__asan_storeN_noabort(i32 %142, i32 2)
  store i16 4096, ptr %kck_len, align 1
  %kek = getelementptr inbounds %struct.iwlagn_wowlan_kek_kck_material_cmd, ptr %kek_kck_cmd, i32 0, i32 1
  %kek113 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 137
  %143 = call ptr @memcpy(ptr %kek, ptr %kek113, i32 16)
  %kek_len = getelementptr inbounds %struct.iwlagn_wowlan_kek_kck_material_cmd, ptr %kek_kck_cmd, i32 0, i32 3
  %144 = ptrtoint ptr %kek_len to i32
  call void @__asan_storeN_noabort(i32 %144, i32 2)
  store i16 4096, ptr %kek_len, align 1
  %replay_ctr = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 138
  %145 = ptrtoint ptr %replay_ctr to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %replay_ctr, align 8
  %replay_ctr115 = getelementptr inbounds %struct.iwlagn_wowlan_kek_kck_material_cmd, ptr %kek_kck_cmd, i32 0, i32 4
  %147 = ptrtoint ptr %replay_ctr115 to i32
  call void @__asan_storeN_noabort(i32 %147, i32 8)
  store i64 %146, ptr %replay_ctr115, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i197) #10
  %148 = getelementptr inbounds i8, ptr %cmd.i197, i32 32
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 65535, ptr %148, align 4, !annotation !101
  %150 = ptrtoint ptr %cmd.i197 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %kek_kck_cmd, ptr %cmd.i197, align 4
  %arrayinit.cur.ptr.i198 = getelementptr inbounds ptr, ptr %cmd.i197, i32 1
  %id4.i200 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i197, i32 0, i32 5
  %151 = call ptr @memset(ptr %arrayinit.cur.ptr.i198, i32 0, i32 20)
  %152 = ptrtoint ptr %id4.i200 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 228, ptr %id4.i200, align 4
  %len5.i201 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i197, i32 0, i32 6
  %153 = ptrtoint ptr %len5.i201 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 76, ptr %len5.i201, align 4
  %arrayinit.start7.i202 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i197, i32 0, i32 6, i32 1
  %154 = ptrtoint ptr %arrayinit.start7.i202 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 0, ptr %arrayinit.start7.i202, align 2
  %call.i204 = call i32 @iwl_dvm_send_cmd(ptr noundef %priv, ptr noundef nonnull %cmd.i197) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i197) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i204)
  %tobool117.not = icmp eq i32 %call.i204, 0
  br i1 %tobool117.not, label %if.then108.if.end121_crit_edge, label %if.then108.out_crit_edge

if.then108.out_crit_edge:                         ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then108.if.end121_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

if.end121:                                        ; preds = %if.then108.if.end121_crit_edge, %if.end106.if.end121_crit_edge, %if.end65.if.end121_crit_edge
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i205) #10
  %155 = getelementptr inbounds i8, ptr %cmd.i205, i32 32
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 65535, ptr %155, align 4, !annotation !101
  %157 = ptrtoint ptr %cmd.i205 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %d3_cfg_cmd, ptr %cmd.i205, align 4
  %arrayinit.cur.ptr.i206 = getelementptr inbounds ptr, ptr %cmd.i205, i32 1
  %id4.i208 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i205, i32 0, i32 5
  %158 = call ptr @memset(ptr %arrayinit.cur.ptr.i206, i32 0, i32 20)
  %159 = ptrtoint ptr %id4.i208 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 211, ptr %id4.i208, align 4
  %len5.i209 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i205, i32 0, i32 6
  %160 = ptrtoint ptr %len5.i209 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 8, ptr %len5.i209, align 4
  %arrayinit.start7.i210 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i205, i32 0, i32 6, i32 1
  %161 = ptrtoint ptr %arrayinit.start7.i210 to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 0, ptr %arrayinit.start7.i210, align 2
  %call.i212 = call i32 @iwl_dvm_send_cmd(ptr noundef %priv, ptr noundef nonnull %cmd.i205) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i205) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i212)
  %tobool123.not = icmp eq i32 %call.i212, 0
  br i1 %tobool123.not, label %if.end125, label %if.end121.out_crit_edge

if.end121.out_crit_edge:                          ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end125:                                        ; preds = %if.end121
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i213) #10
  %162 = getelementptr inbounds i8, ptr %cmd.i213, i32 32
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 65535, ptr %162, align 4, !annotation !101
  %164 = ptrtoint ptr %cmd.i213 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %wakeup_filter_cmd, ptr %cmd.i213, align 4
  %arrayinit.cur.ptr.i214 = getelementptr inbounds ptr, ptr %cmd.i213, i32 1
  %id4.i216 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i213, i32 0, i32 5
  %165 = call ptr @memset(ptr %arrayinit.cur.ptr.i214, i32 0, i32 20)
  %166 = ptrtoint ptr %id4.i216 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 225, ptr %id4.i216, align 4
  %len5.i217 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i213, i32 0, i32 6
  %167 = ptrtoint ptr %len5.i217 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 24, ptr %len5.i217, align 4
  %arrayinit.start7.i218 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i213, i32 0, i32 6, i32 1
  %168 = ptrtoint ptr %arrayinit.start7.i218 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 0, ptr %arrayinit.start7.i218, align 2
  %call.i220 = call i32 @iwl_dvm_send_cmd(ptr noundef %priv, ptr noundef nonnull %cmd.i213) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i213) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i220)
  %tobool127.not = icmp eq i32 %call.i220, 0
  br i1 %tobool127.not, label %if.end129, label %if.end125.out_crit_edge

if.end125.out_crit_edge:                          ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end129:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  %call130 = call i32 @iwlagn_send_patterns(ptr noundef %priv, ptr noundef %wowlan)
  br label %out

out:                                              ; preds = %if.end129, %if.end125.out_crit_edge, %if.end121.out_crit_edge, %if.then108.out_crit_edge, %if.then101.out_crit_edge, %if.then75.out_crit_edge, %if.then67.out_crit_edge, %if.end61.out_crit_edge, %if.end57.out_crit_edge, %if.end53.out_crit_edge, %if.end48.out_crit_edge, %if.end42.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end42.out_crit_edge ], [ %call50, %if.end48.out_crit_edge ], [ %call54, %if.end53.out_crit_edge ], [ %call58, %if.end57.out_crit_edge ], [ %call62, %if.end61.out_crit_edge ], [ %call.i212, %if.end121.out_crit_edge ], [ %call.i220, %if.end125.out_crit_edge ], [ %call130, %if.end129 ], [ %call94, %if.then75.out_crit_edge ], [ %call.i196, %if.then101.out_crit_edge ], [ %call.i204, %if.then108.out_crit_edge ], [ -5, %if.then67.out_crit_edge ]
  %169 = ptrtoint ptr %rsc_tsc to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %rsc_tsc, align 4
  call void @kfree(ptr noundef %170) #10
  br label %cleanup132

cleanup132:                                       ; preds = %out, %entry.cleanup132_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup132_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %key_data) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %d3_cfg_cmd) #10
  call void @llvm.lifetime.end.p0(i64 74, ptr nonnull %tkip_cmd) #10
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %kek_kck_cmd) #10
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %rxon)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wakeup_filter_cmd) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_scan_cancel_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_load_ucode_wait_alive(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_alive_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwlagn_commit_rxon(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_power_update_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iter_keys(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwlagn_wowlan_program_keys(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, ptr noundef %sta, ptr noundef %key, ptr nocapture noundef %_data) #1 align 64 {
entry:
  %seq = alloca %struct.ieee80211_key_seq, align 4
  %p1k = alloca [5 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %seq) #10
  %4 = call ptr @memset(ptr %seq, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %p1k) #10
  %5 = getelementptr inbounds [5 x i16], ptr %p1k, i32 0, i32 1
  %6 = getelementptr inbounds [5 x i16], ptr %p1k, i32 0, i32 2
  %7 = getelementptr inbounds [5 x i16], ptr %p1k, i32 0, i32 3
  %8 = getelementptr inbounds [5 x i16], ptr %p1k, i32 0, i32 4
  %mutex = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 18
  %9 = call ptr @memset(ptr %p1k, i32 255, i32 10)
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %10 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cipher, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %11, label %entry.if.else_crit_edge [
    i32 1027073, label %entry.land.lhs.true_crit_edge
    i32 1027077, label %entry.land.lhs.true_crit_edge209
  ]

entry.land.lhs.true_crit_edge209:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge209
  %tobool.not = icmp eq ptr %sta, null
  br i1 %tobool.not, label %land.lhs.true5, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true
  %key_mapping_keys = getelementptr inbounds %struct.iwl_rxon_context, ptr %3, i32 0, i32 26
  %13 = ptrtoint ptr %key_mapping_keys to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %key_mapping_keys, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool6.not = icmp eq i8 %14, 0
  br i1 %tobool6.not, label %if.then, label %land.lhs.true5.if.else_crit_edge

land.lhs.true5.if.else_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @iwl_set_default_wep_key(ptr noundef %op_mode_specific, ptr noundef %3, ptr noundef %key) #10
  br label %if.end

if.else:                                          ; preds = %land.lhs.true5.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %call7 = tail call i32 @iwl_set_dynamic_key(ptr noundef %op_mode_specific, ptr noundef %3, ptr noundef %key, ptr noundef %sta) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call7, %if.else ], [ %call, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool8.not = icmp eq i32 %ret.0, 0
  br i1 %tobool8.not, label %if.end.if.end13_crit_edge, label %do.end

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %16, i32 noundef 0, ptr noundef nonnull @.str.38) #10
  %error = getelementptr inbounds %struct.wowlan_key_data, ptr %_data, i32 0, i32 4
  %17 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %error, align 4
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.end.if.end13_crit_edge
  %18 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cipher, align 8
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %19, label %if.end13.sw.epilog_crit_edge [
    i32 1027074, label %sw.bb
    i32 1027076, label %sw.bb74
  ]

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end13
  %tobool15.not = icmp eq ptr %sta, null
  %rsc_tsc38 = getelementptr inbounds %struct.wowlan_key_data, ptr %_data, i32 0, i32 1
  %21 = ptrtoint ptr %rsc_tsc38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rsc_tsc38, align 4
  br i1 %tobool15.not, label %if.else37, label %if.then16

if.then16:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %tsc = getelementptr inbounds %struct.iwlagn_tkip_rsc_tsc, ptr %22, i32 0, i32 2
  %tkip = getelementptr inbounds %struct.wowlan_key_data, ptr %_data, i32 0, i32 2
  %23 = ptrtoint ptr %tkip to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tkip, align 4
  %rx_uni = getelementptr inbounds %struct.iwlagn_wowlan_tkip_params_cmd, ptr %24, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %key, i32 noundef 8) #10
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %key) #10
  %conv = trunc i64 %call.i to i16
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %26 = ptrtoint ptr %tsc to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %25, ptr %tsc, align 1
  %shr = lshr i64 %call.i, 16
  %conv23 = trunc i64 %shr to i32
  %27 = tail call i32 @llvm.bswap.i32(i32 %conv23)
  %iv32 = getelementptr inbounds %struct.iwlagn_tkip_rsc_tsc, ptr %22, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %iv32 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %iv32, align 1
  %29 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %seq, align 4
  call void @ieee80211_get_tkip_p1k_iv(ptr noundef %key, i32 noundef %30, ptr noundef nonnull %p1k) #10
  %31 = ptrtoint ptr %tkip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tkip, align 4
  %tx = getelementptr inbounds %struct.iwlagn_wowlan_tkip_params_cmd, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %p1k to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %p1k, align 2
  %35 = call i16 @llvm.bswap.i16(i16 %34) #10
  %36 = ptrtoint ptr %tx to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %tx, align 2
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %5, align 2
  %39 = call i16 @llvm.bswap.i16(i16 %38) #10
  %arrayidx1.1.i = getelementptr %struct.iwlagn_wowlan_tkip_params_cmd, ptr %32, i32 0, i32 1, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %arrayidx1.1.i, align 2
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %6, align 2
  %43 = call i16 @llvm.bswap.i16(i16 %42) #10
  %arrayidx1.2.i = getelementptr %struct.iwlagn_wowlan_tkip_params_cmd, ptr %32, i32 0, i32 1, i32 0, i32 2
  %44 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %arrayidx1.2.i, align 2
  %45 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %7, align 2
  %47 = call i16 @llvm.bswap.i16(i16 %46) #10
  %arrayidx1.3.i = getelementptr %struct.iwlagn_wowlan_tkip_params_cmd, ptr %32, i32 0, i32 1, i32 0, i32 3
  %48 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %arrayidx1.3.i, align 2
  %49 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %8, align 2
  %51 = call i16 @llvm.bswap.i16(i16 %50) #10
  %arrayidx1.4.i = getelementptr %struct.iwlagn_wowlan_tkip_params_cmd, ptr %32, i32 0, i32 1, i32 0, i32 4
  %52 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %arrayidx1.4.i, align 2
  %53 = ptrtoint ptr %tkip to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tkip, align 4
  %key33 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %arrayidx = getelementptr [0 x i8], ptr %key33, i32 0, i32 16
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %55, i32 8)
  %56 = load i64, ptr %arrayidx, align 1
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 8)
  store i64 %56, ptr %54, align 1
  %58 = load ptr, ptr %tkip, align 4
  %rx_unicast = getelementptr inbounds %struct.iwlagn_mic_keys, ptr %58, i32 0, i32 1
  br label %if.end46

if.else37:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %multicast_rsc = getelementptr inbounds %struct.iwlagn_tkip_rsc_tsc, ptr %22, i32 0, i32 1
  %tkip41 = getelementptr inbounds %struct.wowlan_key_data, ptr %_data, i32 0, i32 2
  %59 = ptrtoint ptr %tkip41 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tkip41, align 4
  %rx_multi = getelementptr inbounds %struct.iwlagn_wowlan_tkip_params_cmd, ptr %60, i32 0, i32 3
  %rx_mcast = getelementptr inbounds %struct.iwlagn_mic_keys, ptr %60, i32 0, i32 2
  br label %if.end46

if.end46:                                         ; preds = %if.else37, %if.then16
  %tkip_sc.0 = phi ptr [ %22, %if.then16 ], [ %multicast_rsc, %if.else37 ]
  %rx_p1ks.0 = phi ptr [ %rx_uni, %if.then16 ], [ %rx_multi, %if.else37 ]
  %rx_mic_key.0 = phi ptr [ %rx_unicast, %if.then16 ], [ %rx_mcast, %if.else37 ]
  %iv1649 = getelementptr inbounds %struct.anon.144, ptr %seq, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end46
  %i.0207 = phi i32 [ 0, %if.end46 ], [ %inc, %for.body.for.body_crit_edge ]
  %cur_rx_iv32.0206 = phi i32 [ 0, %if.end46 ], [ %71, %for.body.for.body_crit_edge ]
  call void @ieee80211_get_key_rx_seq(ptr noundef %key, i32 noundef %i.0207, ptr noundef nonnull %seq) #10
  %61 = ptrtoint ptr %iv1649 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %iv1649, align 4
  %63 = call i16 @llvm.bswap.i16(i16 %62)
  %arrayidx50 = getelementptr %struct.tkip_sc, ptr %tkip_sc.0, i32 %i.0207
  %64 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 2)
  store i16 %63, ptr %arrayidx50, align 1
  %65 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %seq, align 4
  %67 = call i32 @llvm.bswap.i32(i32 %66)
  %iv3254 = getelementptr %struct.tkip_sc, ptr %tkip_sc.0, i32 %i.0207, i32 2
  %68 = ptrtoint ptr %iv3254 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %67, ptr %iv3254, align 1
  %69 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %seq, align 4
  %71 = call i32 @llvm.umax.i32(i32 %70, i32 %cur_rx_iv32.0206)
  %inc = add nuw nsw i32 %i.0207, 1
  %exitcond208.not = icmp eq i32 %inc, 16
  br i1 %exitcond208.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %bssid = getelementptr inbounds %struct.wowlan_key_data, ptr %_data, i32 0, i32 3
  %72 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bssid, align 4
  call void @ieee80211_get_tkip_rx_p1k(ptr noundef %key, ptr noundef %73, i32 noundef %71, ptr noundef nonnull %p1k) #10
  %74 = ptrtoint ptr %p1k to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %p1k, align 2
  %76 = call i16 @llvm.bswap.i16(i16 %75) #10
  %77 = ptrtoint ptr %rx_p1ks.0 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %rx_p1ks.0, align 2
  %78 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %5, align 2
  %80 = call i16 @llvm.bswap.i16(i16 %79) #10
  %arrayidx1.1.i190 = getelementptr i16, ptr %rx_p1ks.0, i32 1
  %81 = ptrtoint ptr %arrayidx1.1.i190 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %arrayidx1.1.i190, align 2
  %82 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %6, align 2
  %84 = call i16 @llvm.bswap.i16(i16 %83) #10
  %arrayidx1.2.i192 = getelementptr i16, ptr %rx_p1ks.0, i32 2
  %85 = ptrtoint ptr %arrayidx1.2.i192 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %arrayidx1.2.i192, align 2
  %86 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %7, align 2
  %88 = call i16 @llvm.bswap.i16(i16 %87) #10
  %arrayidx1.3.i194 = getelementptr i16, ptr %rx_p1ks.0, i32 3
  %89 = ptrtoint ptr %arrayidx1.3.i194 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %arrayidx1.3.i194, align 2
  %90 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %8, align 2
  %92 = call i16 @llvm.bswap.i16(i16 %91) #10
  %arrayidx1.4.i196 = getelementptr i16, ptr %rx_p1ks.0, i32 4
  %93 = ptrtoint ptr %arrayidx1.4.i196 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %arrayidx1.4.i196, align 2
  %94 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bssid, align 4
  %add = add i32 %71, 1
  call void @ieee80211_get_tkip_rx_p1k(ptr noundef %key, ptr noundef %95, i32 noundef %add, ptr noundef nonnull %p1k) #10
  %arrayidx69 = getelementptr %struct.iwlagn_p1k_cache, ptr %rx_p1ks.0, i32 1
  %96 = ptrtoint ptr %p1k to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %p1k, align 2
  %98 = call i16 @llvm.bswap.i16(i16 %97) #10
  %99 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %arrayidx69, align 2
  %100 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %5, align 2
  %102 = call i16 @llvm.bswap.i16(i16 %101) #10
  %arrayidx1.1.i198 = getelementptr %struct.iwlagn_p1k_cache, ptr %rx_p1ks.0, i32 1, i32 0, i32 1
  %103 = ptrtoint ptr %arrayidx1.1.i198 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %102, ptr %arrayidx1.1.i198, align 2
  %104 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %6, align 2
  %106 = call i16 @llvm.bswap.i16(i16 %105) #10
  %arrayidx1.2.i200 = getelementptr %struct.iwlagn_p1k_cache, ptr %rx_p1ks.0, i32 1, i32 0, i32 2
  %107 = ptrtoint ptr %arrayidx1.2.i200 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %arrayidx1.2.i200, align 2
  %108 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %7, align 2
  %110 = call i16 @llvm.bswap.i16(i16 %109) #10
  %arrayidx1.3.i202 = getelementptr %struct.iwlagn_p1k_cache, ptr %rx_p1ks.0, i32 1, i32 0, i32 3
  %111 = ptrtoint ptr %arrayidx1.3.i202 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %110, ptr %arrayidx1.3.i202, align 2
  %112 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %8, align 2
  %114 = call i16 @llvm.bswap.i16(i16 %113) #10
  %arrayidx1.4.i204 = getelementptr %struct.iwlagn_p1k_cache, ptr %rx_p1ks.0, i32 1, i32 0, i32 4
  %115 = ptrtoint ptr %arrayidx1.4.i204 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %114, ptr %arrayidx1.4.i204, align 2
  %arrayidx73 = getelementptr %struct.ieee80211_key_conf, ptr %key, i32 1, i32 8
  %116 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_loadN_noabort(i32 %116, i32 8)
  %117 = load i64, ptr %arrayidx73, align 1
  %118 = ptrtoint ptr %rx_mic_key.0 to i32
  call void @__asan_storeN_noabort(i32 %118, i32 8)
  store i64 %117, ptr %rx_mic_key.0, align 1
  %use_tkip = getelementptr inbounds %struct.wowlan_key_data, ptr %_data, i32 0, i32 6
  %119 = ptrtoint ptr %use_tkip to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %use_tkip, align 2
  br label %sw.epilog.sink.split

sw.bb74:                                          ; preds = %if.end13
  %tobool75.not = icmp eq ptr %sta, null
  %rsc_tsc88 = getelementptr inbounds %struct.wowlan_key_data, ptr %_data, i32 0, i32 1
  %120 = ptrtoint ptr %rsc_tsc88 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %rsc_tsc88, align 4
  br i1 %tobool75.not, label %if.else87, label %if.then76

if.then76:                                        ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #12
  %tsc84 = getelementptr inbounds %struct.iwlagn_aes_rsc_tsc, ptr %121, i32 0, i32 2
  %call.i.i187 = tail call zeroext i1 @__kasan_check_read(ptr noundef %key, i32 noundef 8) #10
  %call.i188 = tail call i64 @generic_atomic64_read(ptr noundef %key) #10
  %122 = tail call i64 @llvm.bswap.i64(i64 %call.i188)
  %123 = ptrtoint ptr %tsc84 to i32
  call void @__asan_storeN_noabort(i32 %123, i32 8)
  store i64 %122, ptr %tsc84, align 1
  br label %if.end92

if.else87:                                        ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #12
  %multicast_rsc90 = getelementptr inbounds %struct.iwlagn_aes_rsc_tsc, ptr %121, i32 0, i32 1
  br label %if.end92

if.end92:                                         ; preds = %if.else87, %if.then76
  %aes_sc.0 = phi ptr [ %121, %if.then76 ], [ %multicast_rsc90, %if.else87 ]
  %arrayidx100 = getelementptr inbounds i8, ptr %seq, i32 5
  %arrayidx102 = getelementptr inbounds i8, ptr %seq, i32 4
  %arrayidx104 = getelementptr inbounds i8, ptr %seq, i32 3
  %arrayidx108 = getelementptr inbounds i8, ptr %seq, i32 2
  %arrayidx112 = getelementptr inbounds i8, ptr %seq, i32 1
  br label %for.body96

for.body96:                                       ; preds = %for.body96.for.body96_crit_edge, %if.end92
  %i.1205 = phi i32 [ 0, %if.end92 ], [ %inc123, %for.body96.for.body96_crit_edge ]
  call void @ieee80211_get_key_rx_seq(ptr noundef %key, i32 noundef %i.1205, ptr noundef nonnull %seq) #10
  %124 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx100, align 1
  %conv101 = zext i8 %125 to i64
  %126 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx102, align 4
  %conv103 = zext i8 %127 to i64
  %shl = shl nuw nsw i64 %conv103, 8
  %or = or i64 %shl, %conv101
  %128 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx104, align 1
  %conv105 = zext i8 %129 to i64
  %shl106 = shl nuw nsw i64 %conv105, 16
  %or107 = or i64 %or, %shl106
  %130 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx108, align 2
  %conv109 = zext i8 %131 to i64
  %shl110 = shl nuw nsw i64 %conv109, 24
  %or111 = or i64 %or107, %shl110
  %132 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx112, align 1
  %conv113 = zext i8 %133 to i64
  %shl114 = shl nuw nsw i64 %conv113, 32
  %or115 = or i64 %or111, %shl114
  %134 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %seq, align 4
  %conv117 = zext i8 %135 to i64
  %shl118 = shl nuw nsw i64 %conv117, 40
  %or119 = or i64 %or115, %shl118
  %136 = call i64 @llvm.bswap.i64(i64 %or119)
  %arrayidx120 = getelementptr %struct.aes_sc, ptr %aes_sc.0, i32 %i.1205
  %137 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_storeN_noabort(i32 %137, i32 8)
  store i64 %136, ptr %arrayidx120, align 1
  %inc123 = add nuw nsw i32 %i.1205, 1
  %exitcond.not = icmp eq i32 %inc123, 16
  br i1 %exitcond.not, label %for.body96.sw.epilog.sink.split_crit_edge, label %for.body96.for.body96_crit_edge

for.body96.for.body96_crit_edge:                  ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body96

for.body96.sw.epilog.sink.split_crit_edge:        ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %for.body96.sw.epilog.sink.split_crit_edge, %for.end
  %use_rsc_tsc125 = getelementptr inbounds %struct.wowlan_key_data, ptr %_data, i32 0, i32 5
  %138 = ptrtoint ptr %use_rsc_tsc125 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 1, ptr %use_rsc_tsc125, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end13.sw.epilog_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #10
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %p1k) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %seq) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwl_get_cmd_string(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_trans_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_ave_rssi(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_update_chain_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_request_smps(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_set_default_wep_key(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_set_dynamic_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_get_tkip_p1k_iv(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_get_key_rx_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_get_tkip_rx_p1k(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smin.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !12, !14, !16, !17, !19, !20, !21, !22, !23, !25, !27, !28, !30, !31, !33, !34, !35, !37, !39, !41, !42, !44, !45, !47, !49, !51, !52, !54, !56, !58, !60, !61, !63, !65, !67, !69, !71, !73, !75, !76, !78, !80, !82, !84, !85, !87, !89}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 31, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__func__.iwlagn_txfifo_flush, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 139, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 156, i32 3}
!9 = !{ptr @__func__.iwlagn_dev_txfifo_flush, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 159, i32 2}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 237, i32 3}
!14 = !{ptr @__func__.iwlagn_send_advance_bt_config, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 277, i32 3}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 287, i32 2}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 304, i32 3}
!25 = !{ptr @iwlagn_bt_setup_deferred_work.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 686, i32 2}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__func__.iwlagn_set_rxon_chain, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 828, i32 2}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 1216, i32 3}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 1222, i32 3}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 1232, i32 3}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/../iwl-trans.h", i32 1307, i32 6}
!41 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/../iwl-trans.h", i32 1312, i32 3}
!44 = !{ptr @__func__.iwl_trans_wait_tx_queues_empty, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @iwlagn_concurrent_lookup, !46, !"iwlagn_concurrent_lookup", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 186, i32 21}
!47 = !{ptr @iwlagn_def_3w_lookup, !48, !"iwlagn_def_3w_lookup", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 170, i32 21}
!49 = !{ptr @__func__.iwlagn_bt_coex_profile_notif, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 634, i32 2}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 635, i32 2}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 636, i32 2}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 637, i32 2}
!58 = !{ptr @__func__.iwlagn_print_uartmsg, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 474, i32 2}
!60 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 483, i32 2}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 494, i32 2}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 509, i32 2}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 513, i32 2}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 522, i32 2}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 528, i32 2}
!73 = !{ptr @__func__.iwlagn_fill_txpower_mode, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 585, i32 3}
!75 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 592, i32 3}
!78 = !{ptr @iwlagn_set_kill_msk.bt_kill_ack_msg, !79, !"bt_kill_ack_msg", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 545, i32 22}
!80 = !{ptr @iwlagn_set_kill_msk.bt_kill_cts_msg, !81, !"bt_kill_cts_msg", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 549, i32 22}
!82 = !{ptr @__func__.iwlagn_bt_traffic_change_work, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 403, i32 2}
!84 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 421, i32 3}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 750, i32 3}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/lib.c", i32 899, i32 3}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{!"branch_weights", i32 2000, i32 1}
!101 = !{!"auto-init"}
!102 = !{!"branch_weights", i32 1, i32 2000}
!103 = !{i8 0, i8 2}
!104 = !{!"branch_weights", i32 2000, i32 2002}
