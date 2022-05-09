; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_mod_params = type { i32, i32, i32, i8, i8, i32, i8, i32, i32, ptr, i32, i8, i8, i8, i8 }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_iface_limit = type { i16, i16 }
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
%struct.iwl_nvm_data = type { i32, [6 x i8], i8, i16, i16, i16, i16, [2 x i16], i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, [6 x %struct.ieee80211_supported_band], %struct.anon.137, [0 x %struct.ieee80211_channel] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.anon.137 = type { [2 x %struct.ieee80211_sband_iftype_data], [2 x %struct.ieee80211_sband_iftype_data] }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.101 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.101 = type { ptr, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
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
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
%struct.iwl_trans_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iwl_op_mode = type { ptr, [0 x i8] }
%struct.error_table_start = type { i32, i32 }
%struct.iwl_notification_wait = type { %struct.list_head, ptr, ptr, [5 x i16], i8, i8, i8 }
%struct.iwlagn_wowlan_status = type <{ i64, i32, i32, i8, i8, [8 x i16], i16, i16, %union.iwlagn_all_tsc_rsc, i16 }>
%union.iwlagn_all_tsc_rsc = type { %struct.iwlagn_aes_rsc_tsc }
%struct.iwlagn_aes_rsc_tsc = type { [16 x %struct.aes_sc], [16 x %struct.aes_sc], %struct.aes_sc }
%struct.aes_sc = type { i64 }
%struct.iwl_resume_data = type { ptr, ptr, i8 }
%struct.cfg80211_wowlan_wakeup = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr }
%struct.fw_desc = type { ptr, i32, i32 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.130, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
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
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.cfg80211_gtk_rekey_data = type { ptr, ptr, ptr, i32, i8, i8 }
%struct.ieee80211_scan_request = type { %struct.ieee80211_scan_ies, %struct.cfg80211_scan_request }
%struct.ieee80211_scan_ies = type { [6 x ptr], [6 x i32], ptr, i32 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
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
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.ieee80211_ampdu_params = type { i32, ptr, i16, i16, i16, i8, i16 }
%struct.iwl_base_params = type { i32, i16, i16, i8, i16, i32, i8, i8 }
%struct.ieee80211_channel_switch = type { i64, i32, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.iwl_dvm_cfg = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ieee80211_event = type { i32, %union.anon.150 }
%union.anon.150 = type { %struct.ieee80211_mlme_event }
%struct.ieee80211_mlme_event = type { i32, i32, i16 }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iwl-agn-rs\00", [21 x i8] zeroinitializer }, align 32
@iwlwifi_mod_params = external dso_local local_unnamed_addr global %struct.iwl_mod_params, align 4
@iwlagn_iface_combinations_dualmode = internal constant { [2 x %struct.ieee80211_iface_combination], [56 x i8] } { [2 x %struct.ieee80211_iface_combination] [%struct.ieee80211_iface_combination { ptr @iwlagn_sta_ap_limits, i32 1, i16 2, i8 2, i8 1, i8 0, i8 0, i32 0 }, %struct.ieee80211_iface_combination { ptr @iwlagn_2sta_limits, i32 1, i16 2, i8 1, i8 0, i8 0, i8 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to register hw (error %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@iwlagn_hw_ops = dso_local constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @iwlagn_mac_tx, ptr @iwlagn_mac_start, ptr @iwlagn_mac_stop, ptr @iwlagn_mac_suspend, ptr @iwlagn_mac_resume, ptr @iwlagn_mac_set_wakeup, ptr @iwlagn_mac_add_interface, ptr @iwlagn_mac_change_interface, ptr @iwlagn_mac_remove_interface, ptr @iwlagn_mac_config, ptr @iwlagn_bss_info_changed, ptr null, ptr null, ptr null, ptr @iwlagn_configure_filter, ptr null, ptr @iwlagn_mac_set_tim, ptr @iwlagn_mac_set_key, ptr @iwlagn_mac_update_tkip_key, ptr @iwlagn_mac_set_rekey_data, ptr null, ptr @iwlagn_mac_hw_scan, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iwlagn_mac_sta_notify, ptr null, ptr @iwlagn_mac_sta_state, ptr null, ptr null, ptr null, ptr null, ptr @iwlagn_mac_conf_tx, ptr null, ptr null, ptr null, ptr null, ptr @iwlagn_mac_tx_last_beacon, ptr @iwlagn_mac_ampdu_action, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iwlagn_mac_flush, ptr @iwlagn_mac_channel_switch, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iwlagn_mac_event_callback, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@iwlagn_sta_ap_limits = internal constant { [2 x %struct.ieee80211_iface_limit], [24 x i8] } { [2 x %struct.ieee80211_iface_limit] [%struct.ieee80211_iface_limit { i16 1, i16 4 }, %struct.ieee80211_iface_limit { i16 1, i16 8 }], [24 x i8] zeroinitializer }, align 32
@iwlagn_2sta_limits = internal constant { [1 x %struct.ieee80211_iface_limit], [28 x i8] } { [1 x %struct.ieee80211_iface_limit] [%struct.ieee80211_iface_limit { i16 2, i16 4 }], [28 x i8] zeroinitializer }, align 32
@__func__.iwlagn_mac_start = private unnamed_addr constant [17 x i8] c"iwlagn_mac_start\00", align 1
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enter\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Start UP work done.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"leave\0A\00", [25 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Exit pending; will not bring the NIC up\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to start HW: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to run INIT ucode: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to start RT ucode: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to initialize device.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/wireless/intel/iwlwifi/dvm/../iwl-trans.h\00", [42 x i8] zeroinitializer }, align 32
@__func__.iwlagn_mac_stop = private unnamed_addr constant [16 x i8] c"iwlagn_mac_stop\00", align 1
@__func__.iwlagn_mac_suspend = private unnamed_addr constant [19 x i8] c"iwlagn_mac_suspend\00", align 1
@iwlagn_mac_resume.status_cmd = internal constant { [1 x i16], [30 x i8] } { [1 x i16] [i16 229], [30 x i8] zeroinitializer }, align 32
@__const.iwlagn_mac_resume.wakeup = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr } { i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 -1, i32 0, i32 0, ptr null, ptr null }, align 4
@__func__.iwlagn_mac_resume = private unnamed_addr constant [18 x i8] c"iwlagn_mac_resume\00", align 1
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Device was reset during suspend\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid error table during resume!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error table is valid (%d, 0x%x)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"WoWLAN wakeup reason(s): 0x%.8x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rx wrong size data\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.iwlagn_mac_add_interface = private unnamed_addr constant [25 x i8] c"iwlagn_mac_add_interface\00", align 1
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"enter: type %d, addr %pM\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Try to add interface when device not ready\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.iwlagn_mac_change_interface = private unnamed_addr constant [28 x i8] c"iwlagn_mac_change_interface\00", align 1
@__func__.iwlagn_mac_remove_interface = private unnamed_addr constant [28 x i8] c"iwlagn_mac_remove_interface\00", align 1
@__func__.iwlagn_configure_filter = private unnamed_addr constant [24 x i8] c"iwlagn_configure_filter\00", align 1
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Enter: changed: 0x%x, total: 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.iwlagn_mac_set_key = private unnamed_addr constant [19 x i8] c"iwlagn_mac_set_key\00", align 1
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"leave - hwcrypto disabled\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"enable hwcrypto key\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"disable hwcrypto key\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.iwlagn_mac_set_rekey_data = private unnamed_addr constant [26 x i8] c"iwlagn_mac_set_rekey_data\00", align 1
@__func__.iwlagn_mac_hw_scan = private unnamed_addr constant [19 x i8] c"iwlagn_mac_hw_scan\00", align 1
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"SCAN request during internal scan - defer\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.iwlagn_mac_sta_notify = private unnamed_addr constant [22 x i8] c"iwlagn_mac_sta_notify\00", align 1
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intel/iwlwifi/dvm/agn.h\00", [51 x i8] zeroinitializer }, align 32
@__func__.iwlagn_mac_sta_state = private unnamed_addr constant [21 x i8] c"iwlagn_mac_sta_state\00", align 1
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"station %pM state change %d->%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Initializing rate scaling for station %pM\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.iwlagn_mac_sta_add = private unnamed_addr constant [19 x i8] c"iwlagn_mac_sta_add\00", align 1
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"proceeding to add station %pM\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to add station %pM (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.iwlagn_mac_sta_remove = private unnamed_addr constant [22 x i8] c"iwlagn_mac_sta_remove\00", align 1
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"proceeding to remove station %pM\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error removing station %pM\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.iwlagn_mac_conf_tx = private unnamed_addr constant [19 x i8] c"iwlagn_mac_conf_tx\00", align 1
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"leave - RF not ready\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"leave - queue >= AC_NUM %d\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.iwlagn_mac_ampdu_action = private unnamed_addr constant [24 x i8] c"iwlagn_mac_ampdu_action\00", align 1
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"A-MPDU action on addr %pM tid %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"start Rx\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"stop Rx\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"start Tx\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Flush Tx\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"stop Tx\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"priv->agg_tids_count = %u\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.iwlagn_mac_flush = private unnamed_addr constant [17 x i8] c"iwlagn_mac_flush\00", align 1
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Aborting flush due to device shutdown\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Aborting flush due to RF Kill\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Flushing SCD queues: 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"flush request fail\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wait transmit/flush all frames\0A\00", [32 x i8] zeroinitializer }, align 32
@iwl_trans_wait_tx_queues_empty.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s bad state = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.iwl_trans_wait_tx_queues_empty = private unnamed_addr constant [31 x i8] c"iwl_trans_wait_tx_queues_empty\00", align 1
@__func__.iwlagn_mac_channel_switch = private unnamed_addr constant [26 x i8] c"iwlagn_mac_channel_switch\00", align 1
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/cfg80211.h\00", [41 x i8] zeroinitializer }, align 32
@__func__.iwlagn_mac_event_callback = private unnamed_addr constant [26 x i8] c"iwlagn_mac_event_callback\00", align 1
@.str.47 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Advanced BT coex disabled,ignoring RSSI callback\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 1027074, i64 1027076]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 1027073, i64 1027077]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.53 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 85, i32 31 }
@___asan_gen_.60 = private unnamed_addr constant [35 x i8] c"iwlagn_iface_combinations_dualmode\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 60, i32 1 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 202, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [14 x i8] c"iwlagn_hw_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1571, i32 28 }
@___asan_gen_.69 = private unnamed_addr constant [21 x i8] c"iwlagn_sta_ap_limits\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 41, i32 43 }
@___asan_gen_.72 = private unnamed_addr constant [19 x i8] c"iwlagn_2sta_limits\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 52, i32 43 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 283, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 292, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 295, i32 6 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 301, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 228, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 242, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 248, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 260, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 274, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1045, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [11 x i8] c"status_cmd\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 434, i32 19 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 461, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 471, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 479, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 526, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 411, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1271, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1277, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1046, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 610, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 679, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 687, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1500, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/dvm/agn.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 281, i32 6 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 846, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 893, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 784, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 795, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 814, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 827, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1170, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1175, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 712, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 725, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 729, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 737, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 742, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 746, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 750, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1090, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1094, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1103, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1106, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1111, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant [57 x i8] c"../drivers/net/wireless/intel/iwlwifi/dvm/../iwl-trans.h\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1312, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant [26 x i8] c"../include/net/cfg80211.h\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 778, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.214 = private constant [53 x i8] c"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1138, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @.str, ptr @iwlagn_iface_combinations_dualmode, ptr @.str.1, ptr @iwlagn_hw_ops, ptr @iwlagn_sta_ap_limits, ptr @iwlagn_2sta_limits, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @iwlagn_mac_resume.status_cmd, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwlagn_iface_combinations_dualmode to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwlagn_hw_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwlagn_sta_ap_limits to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwlagn_2sta_limits to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwlagn_mac_resume.status_cmd to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwlagn_mac_setup_register(ptr noundef %priv, ptr nocapture noundef readonly %capa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 13
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %rate_control_algorithm = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rate_control_algorithm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str, ptr %rate_control_algorithm, align 4
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %or.i.i212 = or i32 %4, 366064
  store i32 %or.i.i212, ptr %flags.i, align 4
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  %max_skb_frags = getelementptr inbounds %struct.iwl_trans, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %max_skb_frags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_skb_frags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %netdev_features = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 24
  %9 = ptrtoint ptr %netdev_features to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 33, ptr %netdev_features, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %offchannel_tx_hw_queue = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %offchannel_tx_hw_queue to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 10, ptr %offchannel_tx_hw_queue, align 1
  %radiotap_mcs_details = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 21
  %11 = ptrtoint ptr %radiotap_mcs_details to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %radiotap_mcs_details, align 2
  %13 = or i8 %12, 8
  store i8 %13, ptr %radiotap_mcs_details, align 2
  %nvm_data = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %14 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nvm_data, align 8
  %sku_cap_11n_enable = getelementptr inbounds %struct.iwl_nvm_data, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %sku_cap_11n_enable to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sku_cap_11n_enable, align 2, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool3.not = icmp eq i8 %17, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wiphy, align 8
  %features = getelementptr inbounds %struct.wiphy, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %features, align 8
  %or5 = or i32 %21, 50331648
  store i32 %or5, ptr %features, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %fw = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 3
  %22 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fw, align 4
  %flags = getelementptr inbounds %struct.iwl_fw, ptr %23, i32 0, i32 5, i32 3
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %and = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end6.if.end10_crit_edge, label %land.lhs.true

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iwlwifi_mod_params to i32))
  %26 = load i32, ptr @iwlwifi_mod_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool8.not = icmp eq i32 %26, 0
  br i1 %tobool8.not, label %if.then9, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i, align 4
  %or.i.i214 = or i32 %28, 2048
  store i32 %or.i.i214, ptr %flags.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %land.lhs.true.if.end10_crit_edge, %if.end6.if.end10_crit_edge
  %sta_data_size = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 8
  %29 = ptrtoint ptr %sta_data_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1808, ptr %sta_data_size, align 8
  %vif_data_size = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 7
  %30 = ptrtoint ptr %vif_data_size to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 8, ptr %vif_data_size, align 4
  %contexts = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50
  %arrayidx12 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 51
  %cmp217 = icmp ult ptr %contexts, %arrayidx12
  br i1 %cmp217, label %for.body.lr.ph, label %if.end10.do.end_crit_edge

if.end10.do.end_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.lr.ph:                                   ; preds = %if.end10
  %valid_contexts = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 19
  %wiphy18 = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ctx.0218 = phi ptr [ %contexts, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %31 = ptrtoint ptr %valid_contexts to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %valid_contexts, align 4
  %conv14 = zext i8 %32 to i32
  %ctxid = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.0218, i32 0, i32 7
  %33 = ptrtoint ptr %ctxid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ctxid, align 4
  %shl = shl nuw i32 1, %34
  %and15 = and i32 %shl, %conv14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %for.body.for.inc_crit_edge, label %if.then17

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %interface_modes = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.0218, i32 0, i32 8
  %35 = ptrtoint ptr %interface_modes to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %interface_modes, align 4
  %37 = ptrtoint ptr %wiphy18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wiphy18, align 8
  %interface_modes19 = getelementptr inbounds %struct.wiphy, ptr %38, i32 0, i32 9
  %39 = ptrtoint ptr %interface_modes19 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %interface_modes19, align 4
  %41 = trunc i32 %36 to i16
  %conv22 = or i16 %40, %41
  store i16 %conv22, ptr %interface_modes19, align 4
  %exclusive_interface_modes = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.0218, i32 0, i32 9
  %42 = ptrtoint ptr %exclusive_interface_modes to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %exclusive_interface_modes, align 4
  %44 = load ptr, ptr %wiphy18, align 8
  %interface_modes24 = getelementptr inbounds %struct.wiphy, ptr %44, i32 0, i32 9
  %45 = ptrtoint ptr %interface_modes24 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %interface_modes24, align 4
  %47 = trunc i32 %43 to i16
  %conv27 = or i16 %46, %47
  store i16 %conv27, ptr %interface_modes24, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.iwl_rxon_context, ptr %ctx.0218, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %arrayidx12
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.end_crit_edge

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %if.end10.do.end_crit_edge
  %wiphy29 = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %48 = ptrtoint ptr %wiphy29 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wiphy29, align 8
  %interface_modes30 = getelementptr inbounds %struct.wiphy, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %interface_modes30 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %interface_modes30, align 4
  %52 = and i16 %51, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool33.not = icmp eq i16 %52, 0
  br i1 %tobool33.not, label %do.end.if.end37_crit_edge, label %if.then34

do.end.if.end37_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then34:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %iface_combinations = getelementptr inbounds %struct.wiphy, ptr %49, i32 0, i32 5
  %53 = ptrtoint ptr %iface_combinations to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @iwlagn_iface_combinations_dualmode, ptr %iface_combinations, align 16
  %54 = ptrtoint ptr %wiphy29 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wiphy29, align 8
  %n_iface_combinations = getelementptr inbounds %struct.wiphy, ptr %55, i32 0, i32 6
  %56 = ptrtoint ptr %n_iface_combinations to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 2, ptr %n_iface_combinations, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %do.end.if.end37_crit_edge
  %57 = ptrtoint ptr %wiphy29 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wiphy29, align 8
  %flags39 = getelementptr inbounds %struct.wiphy, ptr %58, i32 0, i32 11
  %59 = ptrtoint ptr %flags39 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags39, align 32
  %or40 = or i32 %60, 256
  store i32 %or40, ptr %flags39, align 32
  %61 = load ptr, ptr %wiphy29, align 8
  %regulatory_flags = getelementptr inbounds %struct.wiphy, ptr %61, i32 0, i32 12
  %62 = ptrtoint ptr %regulatory_flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %regulatory_flags, align 4
  %or42 = or i32 %63, 5
  store i32 %or42, ptr %regulatory_flags, align 4
  %64 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fw, align 4
  %num_sec = getelementptr %struct.iwl_fw, ptr %65, i32 0, i32 2, i32 2, i32 1
  %66 = ptrtoint ptr %num_sec to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_sec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool45.not = icmp eq i32 %67, 0
  br i1 %tobool45.not, label %if.end37.if.end69_crit_edge, label %land.lhs.true46

if.end37.if.end69_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

land.lhs.true46:                                  ; preds = %if.end37
  %68 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %priv, align 8
  %ops = getelementptr inbounds %struct.iwl_trans, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ops, align 4
  %d3_suspend = getelementptr inbounds %struct.iwl_trans_ops, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %d3_suspend to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %d3_suspend, align 4
  %tobool48.not = icmp eq ptr %73, null
  br i1 %tobool48.not, label %land.lhs.true46.if.end69_crit_edge, label %land.lhs.true49

land.lhs.true46.if.end69_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

land.lhs.true49:                                  ; preds = %land.lhs.true46
  %d3_resume = getelementptr inbounds %struct.iwl_trans_ops, ptr %71, i32 0, i32 6
  %74 = ptrtoint ptr %d3_resume to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %d3_resume, align 4
  %tobool52.not = icmp eq ptr %75, null
  br i1 %tobool52.not, label %land.lhs.true49.if.end69_crit_edge, label %land.lhs.true53

land.lhs.true49.if.end69_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

land.lhs.true53:                                  ; preds = %land.lhs.true49
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %69, i32 0, i32 8
  %76 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev, align 8
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %77, i32 0, i32 12, i32 1
  %78 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.then56, label %land.lhs.true53.if.end69_crit_edge

land.lhs.true53.if.end69_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then56:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #9
  %wowlan_support = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iwlwifi_mod_params to i32))
  %79 = load i32, ptr @iwlwifi_mod_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool58.not = icmp eq i32 %79, 0
  %spec.store.select = select i1 %tobool58.not, i32 190, i32 166
  %80 = ptrtoint ptr %wowlan_support to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %spec.store.select, ptr %wowlan_support, align 4
  %n_patterns = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 141, i32 1
  %81 = ptrtoint ptr %n_patterns to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 20, ptr %n_patterns, align 4
  %pattern_min_len = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 141, i32 3
  %82 = ptrtoint ptr %pattern_min_len to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 16, ptr %pattern_min_len, align 4
  %pattern_max_len = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 141, i32 2
  %83 = ptrtoint ptr %pattern_max_len to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 128, ptr %pattern_max_len, align 4
  %84 = ptrtoint ptr %wiphy29 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %wiphy29, align 8
  %wowlan = getelementptr inbounds %struct.wiphy, ptr %85, i32 0, i32 40
  %86 = ptrtoint ptr %wowlan to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %wowlan_support, ptr %wowlan, align 32
  br label %if.end69

if.end69:                                         ; preds = %if.then56, %land.lhs.true53.if.end69_crit_edge, %land.lhs.true49.if.end69_crit_edge, %land.lhs.true46.if.end69_crit_edge, %if.end37.if.end69_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 6) to i32))
  %87 = load i8, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 6), align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool70.not = icmp eq i8 %87, 0
  %88 = ptrtoint ptr %wiphy29 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %wiphy29, align 8
  %flags76 = getelementptr inbounds %struct.wiphy, ptr %89, i32 0, i32 11
  %90 = ptrtoint ptr %flags76 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %flags76, align 32
  %and77 = and i32 %91, -17
  %masksel = select i1 %tobool70.not, i32 0, i32 16
  %and77.sink = or i32 %and77, %masksel
  store i32 %and77.sink, ptr %flags76, align 32
  %92 = load ptr, ptr %wiphy29, align 8
  %max_scan_ssids = getelementptr inbounds %struct.wiphy, ptr %92, i32 0, i32 18
  %93 = ptrtoint ptr %max_scan_ssids to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 20, ptr %max_scan_ssids, align 32
  %94 = ptrtoint ptr %capa to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %capa, align 4
  %96 = trunc i32 %95 to i16
  %conv81 = add i16 %96, -58
  %97 = load ptr, ptr %wiphy29, align 8
  %max_scan_ie_len = getelementptr inbounds %struct.wiphy, ptr %97, i32 0, i32 22
  %98 = ptrtoint ptr %max_scan_ie_len to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %conv81, ptr %max_scan_ie_len, align 4
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 11
  %99 = ptrtoint ptr %queues to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 11, ptr %queues, align 4
  %max_listen_interval = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 12
  %100 = ptrtoint ptr %max_listen_interval to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 10, ptr %max_listen_interval, align 2
  %101 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %nvm_data, align 8
  %n_channels = getelementptr inbounds %struct.iwl_nvm_data, ptr %102, i32 0, i32 26, i32 0, i32 3
  %103 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool85.not = icmp eq i32 %104, 0
  br i1 %tobool85.not, label %if.end69.if.end94_crit_edge, label %if.then86

if.end69.if.end94_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

if.then86:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %bands = getelementptr inbounds %struct.iwl_nvm_data, ptr %102, i32 0, i32 26
  %105 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hw1, align 4
  %wiphy91 = getelementptr inbounds %struct.ieee80211_hw, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %wiphy91 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %wiphy91, align 8
  %bands92 = getelementptr inbounds %struct.wiphy, ptr %108, i32 0, i32 53
  %109 = ptrtoint ptr %bands92 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %bands, ptr %bands92, align 16
  br label %if.end94

if.end94:                                         ; preds = %if.then86, %if.end69.if.end94_crit_edge
  %110 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %nvm_data, align 8
  %n_channels98 = getelementptr %struct.iwl_nvm_data, ptr %111, i32 0, i32 26, i32 1, i32 3
  %112 = ptrtoint ptr %n_channels98 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %n_channels98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool99.not = icmp eq i32 %113, 0
  br i1 %tobool99.not, label %if.end94.if.end108_crit_edge, label %if.then100

if.end94.if.end108_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108

if.then100:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx97 = getelementptr %struct.iwl_nvm_data, ptr %111, i32 0, i32 26, i32 1
  %114 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hw1, align 4
  %wiphy105 = getelementptr inbounds %struct.ieee80211_hw, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %wiphy105 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %wiphy105, align 8
  %arrayidx107 = getelementptr %struct.wiphy, ptr %117, i32 0, i32 53, i32 1
  %118 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %arrayidx97, ptr %arrayidx107, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.then100, %if.end94.if.end108_crit_edge
  %119 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %priv, align 8
  %hw_id = getelementptr inbounds %struct.iwl_trans, ptr %120, i32 0, i32 13
  %121 = ptrtoint ptr %hw_id to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %hw_id, align 4
  %123 = ptrtoint ptr %wiphy29 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %wiphy29, align 8
  %hw_version = getelementptr inbounds %struct.wiphy, ptr %124, i32 0, i32 39
  %125 = ptrtoint ptr %hw_version to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %122, ptr %hw_version, align 4
  tail call void @iwl_leds_init(ptr noundef %priv) #7
  %126 = ptrtoint ptr %wiphy29 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %wiphy29, align 8
  %arrayidx.i = getelementptr %struct.wiphy, ptr %127, i32 0, i32 14, i32 1
  %128 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx.i, align 1
  %conv1.i = or i8 %129, 32
  store i8 %conv1.i, ptr %arrayidx.i, align 1
  %130 = load ptr, ptr %wiphy29, align 8
  %arrayidx.i215 = getelementptr %struct.wiphy, ptr %130, i32 0, i32 14, i32 4
  %131 = ptrtoint ptr %arrayidx.i215 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx.i215, align 1
  %conv1.i216 = or i8 %132, 16
  store i8 %conv1.i216, ptr %arrayidx.i215, align 1
  %133 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %hw1, align 4
  %call114 = tail call i32 @ieee80211_register_hw(ptr noundef %134) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end124, label %do.end120

do.end120:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  %dev121 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %135 = ptrtoint ptr %dev121 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev121, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %136, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef %call114) #7
  tail call void @iwl_leds_exit(ptr noundef %priv) #7
  br label %cleanup

if.end124:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  %mac80211_registered = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 67
  %137 = ptrtoint ptr %mac80211_registered to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 1, ptr %mac80211_registered, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end124, %do.end120
  ret i32 %call114
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_leds_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_register_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_leds_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwlagn_mac_unregister(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mac80211_registered = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 67
  %0 = ptrtoint ptr %mac80211_registered to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mac80211_registered, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iwl_leds_exit(ptr noundef %priv) #7
  %hw = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 13
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_unregister_hw(ptr noundef %3) #7
  %4 = ptrtoint ptr %mac80211_registered to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %mac80211_registered, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_unregister_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_chswitch_done(ptr noundef %priv, i1 noundef zeroext %is_success) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %contexts = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50
  %status = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 11, ptr noundef %status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %contexts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %contexts, align 4
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.then7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ieee80211_chswitch_done(ptr noundef nonnull %4, i1 noundef zeroext %is_success) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_chswitch_done(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwlagn_mac_tx(ptr noundef %hw, ptr nocapture noundef readonly %control, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %control, align 4
  %call = tail call i32 @iwlagn_tx_skb(ptr noundef %op_mode_specific, ptr noundef %3, ptr noundef %skb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ieee80211_free_txskb(ptr noundef %hw, ptr noundef %skb) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwlagn_mac_start(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 0, i32 1
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_start, ptr noundef nonnull @.str.2) #7
  %mutex = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 34
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !152

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 225, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %status.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 6
  %5 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %status.i, align 4
  %7 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool25.not.i = icmp eq i32 %7, 0
  br i1 %tobool25.not.i, label %if.end33.i, label %do.end30.i

do.end30.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %9, ptr noundef nonnull @.str.6) #7
  br label %__iwl_up.exit.thread

if.end33.i:                                       ; preds = %if.end.i
  %contexts.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 684
  %arrayidx35.i = getelementptr %struct.iwl_op_mode, ptr %1, i32 840
  %cmp36141.i = icmp ult ptr %contexts.i, %arrayidx35.i
  br i1 %cmp36141.i, label %for.body.lr.ph.i, label %if.end33.i.for.end.i_crit_edge

if.end33.i.for.end.i_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end33.i
  %valid_contexts.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 94
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ctx.0142.i = phi ptr [ %contexts.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %valid_contexts.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %valid_contexts.i, align 4
  %conv.i = zext i8 %11 to i32
  %ctxid.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.0142.i, i32 0, i32 7
  %12 = ptrtoint ptr %ctxid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctxid.i, align 4
  %shl.i = shl nuw i32 1, %13
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool37.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool37.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then38.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then38.i:                                      ; preds = %for.body.i
  %call39.i = tail call i32 @iwlagn_alloc_bcast_station(ptr noundef %op_mode_specific, ptr noundef %ctx.0142.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.then38.i.for.inc.i_crit_edge, label %if.then41.i

if.then38.i.for.inc.i_crit_edge:                  ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then41.i:                                      ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iwl_dealloc_bcast_stations(ptr noundef %op_mode_specific) #7
  br label %__iwl_up.exit.thread

for.inc.i:                                        ; preds = %if.then38.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.iwl_rxon_context, ptr %ctx.0142.i, i32 1
  %cmp36.i = icmp ult ptr %incdec.ptr.i, %arrayidx35.i
  br i1 %cmp36.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end33.i.for.end.i_crit_edge
  %14 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %op_mode_specific, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 1045) #7
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %call.i138.i = tail call i32 %19(ptr noundef %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138.i)
  %tobool45.not.i = icmp eq i32 %call.i138.i, 0
  br i1 %tobool45.not.i, label %if.end54.i, label %do.end50.i

do.end50.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %21, i32 noundef 0, ptr noundef nonnull @.str.7, i32 noundef %call.i138.i) #7
  br label %error.i

if.end54.i:                                       ; preds = %for.end.i
  %call55.i = tail call i32 @iwl_run_init_ucode(ptr noundef %op_mode_specific) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %if.end65.i, label %do.end61.i

do.end61.i:                                       ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %23, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef %call55.i) #7
  br label %error.i

if.end65.i:                                       ; preds = %if.end54.i
  %24 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %op_mode_specific, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 1045) #7
  %ops.i139.i = getelementptr inbounds %struct.iwl_trans, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %ops.i139.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i139.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %call.i140.i = tail call i32 %29(ptr noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140.i)
  %tobool68.not.i = icmp eq i32 %call.i140.i, 0
  br i1 %tobool68.not.i, label %if.end77.i, label %do.end73.i

do.end73.i:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %31, i32 noundef 0, ptr noundef nonnull @.str.7, i32 noundef %call.i140.i) #7
  br label %error.i

if.end77.i:                                       ; preds = %if.end65.i
  %call78.i = tail call i32 @iwl_load_ucode_wait_alive(ptr noundef %op_mode_specific, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %tobool79.not.i = icmp eq i32 %call78.i, 0
  br i1 %tobool79.not.i, label %if.end88.i, label %do.end84.i

do.end84.i:                                       ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %33, i32 noundef 0, ptr noundef nonnull @.str.9, i32 noundef %call78.i) #7
  br label %error.i

if.end88.i:                                       ; preds = %if.end77.i
  %call89.i = tail call i32 @iwl_alive_start(ptr noundef %op_mode_specific) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i)
  %tobool90.not.i = icmp eq i32 %call89.i, 0
  br i1 %tobool90.not.i, label %do.end9, label %if.end88.i.error.i_crit_edge

if.end88.i.error.i_crit_edge:                     ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %error.i

error.i:                                          ; preds = %if.end88.i.error.i_crit_edge, %do.end84.i, %do.end73.i, %do.end61.i, %do.end50.i
  %ret.0.i = phi i32 [ %call.i138.i, %do.end50.i ], [ %call55.i, %do.end61.i ], [ %call.i140.i, %do.end73.i ], [ %call78.i, %do.end84.i ], [ %call89.i, %if.end88.i.error.i_crit_edge ]
  tail call void @_set_bit(i32 noundef 5, ptr noundef %status.i) #7
  tail call void @iwl_down(ptr noundef %op_mode_specific) #7
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %status.i) #7
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %35, i32 noundef 0, ptr noundef nonnull @.str.10) #7
  br label %__iwl_up.exit.thread

__iwl_up.exit.thread:                             ; preds = %error.i, %if.then41.i, %do.end30.i
  %retval.0.i.ph = phi i32 [ %ret.0.i, %error.i ], [ %call39.i, %if.then41.i ], [ -5, %do.end30.i ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

do.end9:                                          ; preds = %if.end88.i
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %37, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_start, ptr noundef nonnull @.str.3) #7
  %38 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %status.i, align 4
  %40 = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool14.not = icmp eq i32 %40, 0
  br i1 %tobool14.not, label %do.end27, label %do.end9.if.end42_crit_edge, !prof !152

do.end9.if.end42_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

do.end27:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 295, i32 noundef 9, ptr noundef null) #7
  br label %if.end42

if.end42:                                         ; preds = %do.end27, %do.end9.if.end42_crit_edge
  tail call void @iwlagn_led_enable(ptr noundef %op_mode_specific) #7
  %is_open = getelementptr inbounds %struct.iwl_priv, ptr %op_mode_specific, i32 0, i32 68
  %41 = ptrtoint ptr %is_open to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %is_open, align 1
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %43, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_start, ptr noundef nonnull @.str.5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %__iwl_up.exit.thread
  %retval.0 = phi i32 [ 0, %if.end42 ], [ %retval.0.i.ph, %__iwl_up.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwlagn_mac_stop(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 0, i32 1
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_stop, ptr noundef nonnull @.str.2) #7
  %is_open = getelementptr inbounds %struct.iwl_priv, ptr %op_mode_specific, i32 0, i32 68
  %4 = ptrtoint ptr %is_open to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_open, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %is_open to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %is_open, align 1
  %mutex = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  tail call void @iwl_down(ptr noundef %op_mode_specific) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  tail call void @iwl_cancel_deferred_work(ptr noundef %op_mode_specific) #7
  %workqueue = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 88
  %7 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %workqueue, align 4
  tail call void @flush_workqueue(ptr noundef %8) #7
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %10, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_stop, ptr noundef nonnull @.str.5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwlagn_mac_suspend(ptr nocapture noundef readonly %hw, ptr noundef %wowlan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 0, i32 1
  %tobool.not = icmp eq ptr %wowlan, null
  br i1 %tobool.not, label %do.end, label %do.end28, !prof !152

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 362, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

do.end28:                                         ; preds = %entry
  %contexts = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 684
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_suspend, ptr noundef nonnull @.str.2) #7
  %mutex = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %4 = ptrtoint ptr %contexts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %contexts, align 4
  %tobool31.not = icmp eq ptr %5, null
  br i1 %tobool31.not, label %do.end28.out_crit_edge, label %lor.lhs.false

do.end28.out_crit_edge:                           ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false:                                    ; preds = %do.end28
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not = icmp eq i32 %7, 2
  br i1 %cmp.not, label %lor.lhs.false33, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false33:                                  ; preds = %lor.lhs.false
  %filter_flags.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 701
  %8 = ptrtoint ptr %filter_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %filter_flags.i, align 4
  %10 = and i32 %9, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool34.not = icmp eq i32 %10, 0
  br i1 %tobool34.not, label %lor.lhs.false33.out_crit_edge, label %if.end36

lor.lhs.false33.out_crit_edge:                    ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end36:                                         ; preds = %lor.lhs.false33
  %call37 = tail call i32 @iwlagn_suspend(ptr noundef %op_mode_specific, ptr noundef nonnull %wowlan) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %error

if.end40:                                         ; preds = %if.end36
  %11 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %op_mode_specific, align 8
  tail call void @iwl_write32(ptr noundef %12, i32 noundef 88, i32 noundef 32) #7
  %13 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %op_mode_specific, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 1101) #7
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %d3_suspend.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %d3_suspend.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d3_suspend.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end40.out_crit_edge, label %if.end.i

if.end40.out_crit_edge:                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end.i:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %18(ptr noundef %14, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %out

error:                                            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %wowlan43 = getelementptr inbounds %struct.iwl_priv, ptr %op_mode_specific, i32 0, i32 48
  %19 = ptrtoint ptr %wowlan43 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %wowlan43, align 1
  tail call void @iwlagn_prepare_restart(ptr noundef %op_mode_specific) #7
  %hw44 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 84
  %20 = ptrtoint ptr %hw44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw44, align 4
  tail call void @ieee80211_restart_hw(ptr noundef %21) #7
  br label %out

out:                                              ; preds = %error, %if.end.i, %if.end40.out_crit_edge, %lor.lhs.false33.out_crit_edge, %lor.lhs.false.out_crit_edge, %do.end28.out_crit_edge
  %ret.0 = phi i32 [ %call37, %error ], [ 1, %lor.lhs.false33.out_crit_edge ], [ 1, %lor.lhs.false.out_crit_edge ], [ 1, %do.end28.out_crit_edge ], [ 0, %if.end40.out_crit_edge ], [ 0, %if.end.i ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %23, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_suspend, ptr noundef nonnull @.str.5) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwlagn_mac_resume(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %d3_status = alloca i32, align 4
  %err_info = alloca %struct.error_table_start, align 4
  %status_wait = alloca %struct.iwl_notification_wait, align 4
  %status_data = alloca %struct.iwlagn_wowlan_status, align 1
  %resume_data = alloca %struct.iwl_resume_data, align 4
  %wakeup = alloca %struct.cfg80211_wowlan_wakeup, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 0, i32 1
  %contexts = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 684
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d3_status) #7
  %2 = ptrtoint ptr %d3_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %d3_status, align 4, !annotation !153
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %err_info) #7
  %3 = ptrtoint ptr %err_info to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %err_info, align 4, !annotation !153
  %4 = getelementptr inbounds %struct.error_table_start, ptr %err_info, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !153
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %status_wait) #7
  %6 = call ptr @memset(ptr %status_wait, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 304, ptr nonnull %status_data) #7
  %7 = call ptr @memset(ptr %status_data, i32 0, i32 304)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %resume_data) #7
  %8 = getelementptr inbounds i8, ptr %resume_data, i32 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4
  %10 = ptrtoint ptr %resume_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %op_mode_specific, ptr %resume_data, align 4
  %cmd = getelementptr inbounds %struct.iwl_resume_data, ptr %resume_data, i32 0, i32 1
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %status_data, ptr %cmd, align 4
  %valid = getelementptr inbounds %struct.iwl_resume_data, ptr %resume_data, i32 0, i32 2
  %12 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %valid, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wakeup) #7
  %13 = call ptr @memcpy(ptr %wakeup, ptr @__const.iwlagn_mac_resume.wakeup, i32 32)
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %15, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_resume, ptr noundef nonnull @.str.2) #7
  %mutex = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 18
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %16 = ptrtoint ptr %contexts to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %contexts, align 4
  %18 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %op_mode_specific, align 8
  call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 1112) #7
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  %d3_resume.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %d3_resume.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d3_resume.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %iwl_trans_d3_resume.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

iwl_trans_d3_resume.exit:                         ; preds = %entry
  %call.i = call i32 %23(ptr noundef %19, ptr noundef nonnull %d3_status, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %iwl_trans_d3_resume.exit.if.end_crit_edge, label %iwl_trans_d3_resume.exit.out_unlock_crit_edge

iwl_trans_d3_resume.exit.out_unlock_crit_edge:    ; preds = %iwl_trans_d3_resume.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

iwl_trans_d3_resume.exit.if.end_crit_edge:        ; preds = %iwl_trans_d3_resume.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %iwl_trans_d3_resume.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %24 = ptrtoint ptr %d3_status to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %d3_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.not = icmp eq i32 %25, 0
  br i1 %cmp.not, label %if.end15, label %do.end11

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @__iwl_info(ptr noundef %27, ptr noundef nonnull @.str.12) #7
  br label %out_unlock

if.end15:                                         ; preds = %if.end
  %28 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %op_mode_specific, align 8
  call void @iwl_write32(ptr noundef %29, i32 noundef 92, i32 noundef 32) #7
  %device_pointers = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2921
  %30 = ptrtoint ptr %device_pointers to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %device_pointers, align 8
  %call17 = call i32 @iwlagn_hw_valid_rtc_data_addr(i32 noundef %31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.end23, label %do.end31

do.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %33, ptr noundef nonnull @.str.13) #7
  br label %out_unlock

do.end31:                                         ; preds = %if.end15
  %34 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %op_mode_specific, align 8
  %ops.i172 = getelementptr inbounds %struct.iwl_trans, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %ops.i172 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i172, align 4
  %read_mem.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %37, i32 0, i32 26
  %38 = ptrtoint ptr %read_mem.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read_mem.i, align 4
  %call.i173 = call i32 %39(ptr noundef %35, i32 noundef %31, ptr noundef nonnull %err_info, i32 noundef 2) #7
  %40 = ptrtoint ptr %err_info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %err_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool37.not = icmp eq i32 %41, 0
  br i1 %tobool37.not, label %if.end51, label %do.end42

do.end42:                                         ; preds = %do.end31
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %4, align 4
  call void (ptr, ptr, ...) @__iwl_info(ptr noundef %43, ptr noundef nonnull @.str.14, i32 noundef %41, i32 noundef %45) #7
  %46 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 135, i32 %47)
  %cmp48 = icmp eq i32 %47, 135
  br i1 %cmp48, label %if.then49, label %do.end42.out_unlock_crit_edge

do.end42.out_unlock_crit_edge:                    ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.then49:                                        ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #9
  %rfkill_release = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %wakeup, i32 0, i32 5
  %48 = ptrtoint ptr %rfkill_release to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %rfkill_release, align 1
  call void @ieee80211_report_wowlan_wakeup(ptr noundef %17, ptr noundef nonnull %wakeup, i32 noundef 3264) #7
  br label %out_unlock

if.end51:                                         ; preds = %do.end31
  %fw = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 4
  %49 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fw, align 4
  %arrayidx53 = getelementptr %struct.iwl_fw, ptr %50, i32 0, i32 2, i32 2
  %wowlan_sram = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2742
  %51 = ptrtoint ptr %wowlan_sram to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wowlan_sram, align 4
  %tobool54.not = icmp eq ptr %52, null
  br i1 %tobool54.not, label %if.end8.i.i, label %if.end51.if.then62_crit_edge

if.end51.if.then62_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then62

if.end8.i.i:                                      ; preds = %if.end51
  %53 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx53, align 4
  %len = getelementptr inbounds %struct.fw_desc, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len, align 4
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %56, i32 noundef 3520) #10
  %57 = ptrtoint ptr %wowlan_sram to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call9.i.i, ptr %wowlan_sram, align 4
  %tobool61.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool61.not, label %if.end8.i.i.if.end69_crit_edge, label %if.end8.i.i.if.then62_crit_edge

if.end8.i.i.if.then62_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then62

if.end8.i.i.if.end69_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then62:                                        ; preds = %if.end8.i.i.if.then62_crit_edge, %if.end51.if.then62_crit_edge
  %58 = phi ptr [ %call9.i.i, %if.end8.i.i.if.then62_crit_edge ], [ %52, %if.end51.if.then62_crit_edge ]
  %59 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %op_mode_specific, align 8
  %61 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx53, align 4
  %len67 = getelementptr inbounds %struct.fw_desc, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %len67 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len67, align 4
  %div171 = lshr i32 %64, 2
  %ops.i174 = getelementptr inbounds %struct.iwl_trans, ptr %60, i32 0, i32 1
  %65 = ptrtoint ptr %ops.i174 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ops.i174, align 4
  %read_mem.i175 = getelementptr inbounds %struct.iwl_trans_ops, ptr %66, i32 0, i32 26
  %67 = ptrtoint ptr %read_mem.i175 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read_mem.i175, align 4
  %call.i176 = call i32 %68(ptr noundef %60, i32 noundef 8388608, ptr noundef nonnull %58, i32 noundef %div171) #7
  br label %if.end69

if.end69:                                         ; preds = %if.then62, %if.end8.i.i.if.end69_crit_edge
  %notif_wait = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 350
  call void @iwl_init_notification_wait(ptr noundef %notif_wait, ptr noundef nonnull %status_wait, ptr noundef nonnull @iwlagn_mac_resume.status_cmd, i32 noundef 1, ptr noundef nonnull @iwl_resume_status_fn, ptr noundef nonnull %resume_data) #7
  %call70 = call i32 @iwl_dvm_send_cmd_pdu(ptr noundef %op_mode_specific, i8 noundef zeroext -27, i32 noundef 1, i16 noundef zeroext 0, ptr noundef null) #7
  %call71 = call i32 @iwl_dvm_send_cmd_pdu(ptr noundef %op_mode_specific, i8 noundef zeroext 3, i32 noundef 1, i16 noundef zeroext 0, ptr noundef null) #7
  %call73 = call i32 @iwl_wait_notification(ptr noundef %notif_wait, ptr noundef nonnull %status_wait, i32 noundef 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end69.out_unlock_crit_edge

if.end69.out_unlock_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end76:                                         ; preds = %if.end69
  %69 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %valid, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool78.not = icmp eq i8 %70, 0
  br i1 %tobool78.not, label %if.end76.if.end117_crit_edge, label %land.lhs.true

if.end76.if.end117_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

land.lhs.true:                                    ; preds = %if.end76
  %71 = ptrtoint ptr %contexts to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %contexts, align 4
  %tobool82.not = icmp eq ptr %72, null
  br i1 %tobool82.not, label %land.lhs.true.if.end117_crit_edge, label %if.then83

land.lhs.true.if.end117_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

if.then83:                                        ; preds = %land.lhs.true
  %wakeup_reason = getelementptr inbounds %struct.iwlagn_wowlan_status, ptr %status_data, i32 0, i32 2
  %73 = ptrtoint ptr %wakeup_reason to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %wakeup_reason, align 1
  %75 = call i32 @llvm.bswap.i32(i32 %74)
  %76 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @__iwl_info(ptr noundef %77, ptr noundef nonnull @.str.15, i32 noundef %75) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool91.not = icmp eq i32 %74, 0
  br i1 %tobool91.not, label %if.then83.if.end116_crit_edge, label %if.then92

if.then83.if.end116_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116

if.then92:                                        ; preds = %if.then83
  %and = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool93.not = icmp eq i32 %and, 0
  br i1 %tobool93.not, label %if.then92.if.end95_crit_edge, label %if.then94

if.then92.if.end95_crit_edge:                     ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.then94:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #9
  %magic_pkt = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %wakeup, i32 0, i32 1
  %78 = ptrtoint ptr %magic_pkt to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %magic_pkt, align 1
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %if.then92.if.end95_crit_edge
  %and96 = and i32 %75, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.end95.if.end99_crit_edge, label %if.then98

if.end95.if.end99_crit_edge:                      ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  %pattern_number = getelementptr inbounds %struct.iwlagn_wowlan_status, ptr %status_data, i32 0, i32 3
  %79 = ptrtoint ptr %pattern_number to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %pattern_number, align 1
  %conv = zext i8 %80 to i32
  %pattern_idx = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %wakeup, i32 0, i32 10
  %81 = ptrtoint ptr %pattern_idx to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %conv, ptr %pattern_idx, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %if.end95.if.end99_crit_edge
  %and100 = and i32 %75, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end99.if.end103_crit_edge, label %if.then102

if.end99.if.end103_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.then102:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %wakeup to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %wakeup, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %if.end99.if.end103_crit_edge
  %and104 = and i32 %75, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end103.if.end107_crit_edge, label %if.then106

if.end103.if.end107_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

if.then106:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  %gtk_rekey_failure = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %wakeup, i32 0, i32 2
  %83 = ptrtoint ptr %gtk_rekey_failure to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %gtk_rekey_failure, align 2
  br label %if.end107

if.end107:                                        ; preds = %if.then106, %if.end103.if.end107_crit_edge
  %and108 = and i32 %75, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.end107.if.end111_crit_edge, label %if.then110

if.end107.if.end111_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  %eap_identity_req = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %wakeup, i32 0, i32 3
  %84 = ptrtoint ptr %eap_identity_req to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %eap_identity_req, align 1
  br label %if.end111

if.end111:                                        ; preds = %if.then110, %if.end107.if.end111_crit_edge
  %and112 = and i32 %75, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.end111.if.end116_crit_edge, label %if.then114

if.end111.if.end116_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116

if.then114:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  %four_way_handshake = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %wakeup, i32 0, i32 4
  %85 = ptrtoint ptr %four_way_handshake to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %four_way_handshake, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %if.end111.if.end116_crit_edge, %if.then83.if.end116_crit_edge
  %wakeup_report.0 = phi ptr [ %wakeup, %if.then114 ], [ %wakeup, %if.end111.if.end116_crit_edge ], [ null, %if.then83.if.end116_crit_edge ]
  call void @ieee80211_report_wowlan_wakeup(ptr noundef %17, ptr noundef %wakeup_report.0, i32 noundef 3264) #7
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %land.lhs.true.if.end117_crit_edge, %if.end76.if.end117_crit_edge
  %wowlan = getelementptr inbounds %struct.iwl_priv, ptr %op_mode_specific, i32 0, i32 48
  %86 = ptrtoint ptr %wowlan to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %wowlan, align 1
  call void @iwlagn_prepare_restart(ptr noundef %op_mode_specific) #7
  %active = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 692
  %87 = call ptr @memset(ptr %active, i32 0, i32 50)
  call void @iwl_connection_init_rx_config(ptr noundef %op_mode_specific, ptr noundef %contexts) #7
  call void @iwlagn_set_rxon_chain(ptr noundef %op_mode_specific, ptr noundef %contexts) #7
  br label %out_unlock

out_unlock:                                       ; preds = %if.end117, %if.end69.out_unlock_crit_edge, %if.then49, %do.end42.out_unlock_crit_edge, %do.end23, %do.end11, %iwl_trans_d3_resume.exit.out_unlock_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #7
  %88 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %89, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_resume, ptr noundef nonnull @.str.5) #7
  call void @ieee80211_resume_disconnect(ptr noundef %17) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wakeup) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %resume_data) #7
  call void @llvm.lifetime.end.p0(i64 304, ptr nonnull %status_data) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %status_wait) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %err_info) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d3_status) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwlagn_mac_set_wakeup(ptr nocapture noundef readonly %hw, i1 noundef zeroext %enabled) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %op_mode_specific, align 8
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %call = tail call i32 @device_set_wakeup_enable(ptr noundef %5, i1 noundef zeroext %enabled) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwlagn_mac_add_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 0, i32 1
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vif, align 8
  %p2p.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %4 = ptrtoint ptr %p2p.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %p2p.i, align 2, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %entry.if.end.i.i_crit_edge, label %if.then.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  %6 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.then.i.i.if.end.i.i_crit_edge [
    i32 2, label %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge
    i32 3, label %sw.bb1.i.i
  ]

if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ieee80211_vif_type_p2p.exit

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

sw.bb1.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ieee80211_vif_type_p2p.exit

if.end.i.i:                                       ; preds = %if.then.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  br label %ieee80211_vif_type_p2p.exit

ieee80211_vif_type_p2p.exit:                      ; preds = %if.end.i.i, %sw.bb1.i.i, %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge
  %retval.0.i.i = phi i32 [ %3, %if.end.i.i ], [ 9, %sw.bb1.i.i ], [ 8, %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge ]
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %8, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_add_interface, ptr noundef nonnull @.str.17, i32 noundef %retval.0.i.i, ptr noundef %addr) #7
  %mutex = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %status.i.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 6
  %9 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %status.i.i, align 4
  %and1.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i118 = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i118, label %if.end.i, label %ieee80211_vif_type_p2p.exit.do.end11_crit_edge

ieee80211_vif_type_p2p.exit.do.end11_crit_edge:   ; preds = %ieee80211_vif_type_p2p.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

if.end.i:                                         ; preds = %ieee80211_vif_type_p2p.exit
  %11 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %status.i.i, align 4
  %13 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %if.end.i.do.end11_crit_edge, label %iwl_is_ready_rf.exit

if.end.i.do.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

iwl_is_ready_rf.exit:                             ; preds = %if.end.i
  %14 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %status.i.i, align 4
  %16 = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.not = icmp eq i32 %16, 0
  br i1 %tobool.not.not, label %if.end, label %iwl_is_ready_rf.exit.do.end11_crit_edge

iwl_is_ready_rf.exit.do.end11_crit_edge:          ; preds = %iwl_is_ready_rf.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

do.end11:                                         ; preds = %iwl_is_ready_rf.exit.do.end11_crit_edge, %if.end.i.do.end11_crit_edge, %ieee80211_vif_type_p2p.exit.do.end11_crit_edge
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %18, ptr noundef nonnull @.str.18) #7
  br label %cleanup69

if.end:                                           ; preds = %iwl_is_ready_rf.exit
  %contexts = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 684
  %arrayidx16 = getelementptr %struct.iwl_op_mode, ptr %1, i32 840
  %cmp133 = icmp ult ptr %contexts, %arrayidx16
  br i1 %cmp133, label %for.body.lr.ph, label %if.end.cleanup69_crit_edge

if.end.cleanup69_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup69

for.body.lr.ph:                                   ; preds = %if.end
  %valid_contexts = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 94
  %19 = ptrtoint ptr %valid_contexts to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %valid_contexts, align 4
  %conv = zext i8 %20 to i32
  %shl35 = shl nuw i32 1, %retval.0.i.i
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %tmp.0134 = phi ptr [ %contexts, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %ctxid = getelementptr inbounds %struct.iwl_rxon_context, ptr %tmp.0134, i32 0, i32 7
  %21 = ptrtoint ptr %ctxid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ctxid, align 4
  %shl = shl nuw i32 1, %22
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %for.body.for.inc_crit_edge, label %if.then18

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then18:                                        ; preds = %for.body
  %exclusive_interface_modes = getelementptr inbounds %struct.iwl_rxon_context, ptr %tmp.0134, i32 0, i32 9
  %23 = ptrtoint ptr %exclusive_interface_modes to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %exclusive_interface_modes, align 4
  %25 = ptrtoint ptr %tmp.0134 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tmp.0134, align 4
  %tobool20.not = icmp eq ptr %26, null
  br i1 %tobool20.not, label %if.end34, label %if.then21

if.then21:                                        ; preds = %if.then18
  %cmp23 = icmp eq ptr %26, %vif
  br i1 %cmp23, label %if.then21.for.end_crit_edge, label %if.end26

if.then21.for.end_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end26:                                         ; preds = %if.then21
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %shl29 = shl nuw i32 1, %28
  %and30 = and i32 %shl29, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end26.for.inc_crit_edge, label %if.end26.cleanup69_crit_edge

if.end26.cleanup69_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup69

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end34:                                         ; preds = %if.then18
  %interface_modes = getelementptr inbounds %struct.iwl_rxon_context, ptr %tmp.0134, i32 0, i32 8
  %29 = ptrtoint ptr %interface_modes to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %interface_modes, align 4
  %or = or i32 %30, %24
  %and36 = and i32 %or, %shl35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end34.for.inc_crit_edge, label %if.end34.for.end_crit_edge

if.end34.for.end_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end34.for.inc_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.end34.for.inc_crit_edge, %if.end26.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.iwl_rxon_context, ptr %tmp.0134, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %arrayidx16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup69_crit_edge

for.inc.cleanup69_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup69

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end34.for.end_crit_edge, %if.then21.for.end_crit_edge
  %tobool41.not = icmp eq ptr %tmp.0134, null
  br i1 %tobool41.not, label %for.end.cleanup69_crit_edge, label %if.end43

for.end.cleanup69_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup69

if.end43:                                         ; preds = %for.end
  %31 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %tmp.0134, ptr %drv_priv, align 4
  %32 = ptrtoint ptr %tmp.0134 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %vif, ptr %tmp.0134, align 4
  %33 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %34)
  %cmp47 = icmp eq i32 %34, 6
  %hw50 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 84
  %35 = ptrtoint ptr %hw50 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw50, align 4
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %38, -3
  %masksel = select i1 %cmp47, i32 2, i32 0
  %and.i.sink = or i32 %and.i, %masksel
  store i32 %and.i.sink, ptr %flags.i, align 4
  %call54 = tail call fastcc i32 @iwl_setup_interface(ptr noundef %op_mode_specific, ptr noundef nonnull %tmp.0134)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp ne i32 %call54, 0
  %39 = and i1 %tobool20.not, %tobool55.not
  br i1 %39, label %if.end59, label %if.end43.cleanup69_crit_edge

if.end43.cleanup69_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup69

if.end59:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %tmp.0134 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %tmp.0134, align 4
  %iw_mode = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1996
  %41 = ptrtoint ptr %iw_mode to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %iw_mode, align 4
  br label %cleanup69

cleanup69:                                        ; preds = %if.end59, %if.end43.cleanup69_crit_edge, %for.end.cleanup69_crit_edge, %for.inc.cleanup69_crit_edge, %if.end26.cleanup69_crit_edge, %if.end.cleanup69_crit_edge, %do.end11
  %err.3 = phi i32 [ %call54, %if.end59 ], [ %call54, %if.end43.cleanup69_crit_edge ], [ -22, %do.end11 ], [ -95, %for.end.cleanup69_crit_edge ], [ -95, %if.end.cleanup69_crit_edge ], [ -95, %for.inc.cleanup69_crit_edge ], [ -22, %if.end26.cleanup69_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %43, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_add_interface, ptr noundef nonnull @.str.5) #7
  ret i32 %err.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwlagn_mac_change_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif, i32 noundef %newtype, i1 noundef zeroext %newp2p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %newp2p to i8
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 0, i32 1
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_change_interface, ptr noundef nonnull @.str.2) #7
  br i1 %newp2p, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  %4 = zext i32 %newtype to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %newtype, label %if.then.i.if.end.i_crit_edge [
    i32 2, label %if.then.i.ieee80211_iftype_p2p.exit_crit_edge
    i32 3, label %sw.bb1.i
  ]

if.then.i.ieee80211_iftype_p2p.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ieee80211_iftype_p2p.exit

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

sw.bb1.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ieee80211_iftype_p2p.exit

if.end.i:                                         ; preds = %if.then.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  br label %ieee80211_iftype_p2p.exit

ieee80211_iftype_p2p.exit:                        ; preds = %if.end.i, %sw.bb1.i, %if.then.i.ieee80211_iftype_p2p.exit_crit_edge
  %retval.0.i = phi i32 [ %newtype, %if.end.i ], [ 9, %sw.bb1.i ], [ 8, %if.then.i.ieee80211_iftype_p2p.exit_crit_edge ]
  %mutex = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %5 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drv_priv.i, align 4
  %ctxid = getelementptr inbounds %struct.iwl_rxon_context, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %ctxid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ctxid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %if.end, label %ieee80211_iftype_p2p.exit.out_crit_edge

ieee80211_iftype_p2p.exit.out_crit_edge:          ; preds = %ieee80211_iftype_p2p.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %ieee80211_iftype_p2p.exit
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.end.out_crit_edge, label %lor.lhs.false

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false:                                    ; preds = %if.end
  %status.i.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 6
  %11 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %status.i.i, align 4
  %and1.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i103, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end.i103:                                      ; preds = %lor.lhs.false
  %13 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %status.i.i, align 4
  %15 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %if.end.i103.out_crit_edge, label %iwl_is_ready_rf.exit

if.end.i103.out_crit_edge:                        ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

iwl_is_ready_rf.exit:                             ; preds = %if.end.i103
  %16 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %status.i.i, align 4
  %18 = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool9.not.not = icmp eq i32 %18, 0
  br i1 %tobool9.not.not, label %if.end11, label %iwl_is_ready_rf.exit.out_crit_edge

iwl_is_ready_rf.exit.out_crit_edge:               ; preds = %iwl_is_ready_rf.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end11:                                         ; preds = %iwl_is_ready_rf.exit
  %interface_modes12 = getelementptr inbounds %struct.iwl_rxon_context, ptr %6, i32 0, i32 8
  %19 = ptrtoint ptr %interface_modes12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %interface_modes12, align 4
  %exclusive_interface_modes = getelementptr inbounds %struct.iwl_rxon_context, ptr %6, i32 0, i32 9
  %21 = ptrtoint ptr %exclusive_interface_modes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %exclusive_interface_modes, align 4
  %or = or i32 %22, %20
  %shl = shl nuw i32 1, %retval.0.i
  %and = and i32 %or, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end11.out_crit_edge, label %if.end15

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end15:                                         ; preds = %if.end11
  %and18 = and i32 %22, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end15.if.end37_crit_edge, label %if.then20

if.end15.if.end37_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then20:                                        ; preds = %if.end15
  %contexts = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 684
  %arrayidx22 = getelementptr %struct.iwl_op_mode, ptr %1, i32 840
  %cmp23109 = icmp ult ptr %contexts, %arrayidx22
  br i1 %cmp23109, label %for.body.lr.ph, label %if.then20.if.end37_crit_edge

if.then20.if.end37_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

for.body.lr.ph:                                   ; preds = %if.then20
  %valid_contexts = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 94
  %23 = ptrtoint ptr %valid_contexts to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %valid_contexts, align 4
  %conv = zext i8 %24 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %tmp.0110 = phi ptr [ %contexts, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %ctxid24 = getelementptr inbounds %struct.iwl_rxon_context, ptr %tmp.0110, i32 0, i32 7
  %25 = ptrtoint ptr %ctxid24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ctxid24, align 4
  %shl25 = shl nuw i32 1, %26
  %and26 = and i32 %shl25, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %cmp29 = icmp eq ptr %6, %tmp.0110
  %or.cond = select i1 %tobool27.not, i1 true, i1 %cmp29
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.end32

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end32:                                         ; preds = %for.body
  %is_active = getelementptr inbounds %struct.iwl_rxon_context, ptr %tmp.0110, i32 0, i32 5
  %27 = ptrtoint ptr %is_active to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %is_active, align 2, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool33.not = icmp eq i8 %28, 0
  br i1 %tobool33.not, label %if.end32.for.inc_crit_edge, label %if.end32.out_crit_edge

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.end32.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.iwl_rxon_context, ptr %tmp.0110, i32 1
  %cmp23 = icmp ult ptr %incdec.ptr, %arrayidx22
  br i1 %cmp23, label %for.inc.for.body_crit_edge, label %for.inc.if.end37_crit_edge

for.inc.if.end37_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end37:                                         ; preds = %for.inc.if.end37_crit_edge, %if.then20.if.end37_crit_edge, %if.end15.if.end37_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %29 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i105 = icmp eq i32 %29, 0
  br i1 %tobool.not.i105, label %if.end37.if.end.i106_crit_edge, label %land.rhs.i

if.end37.if.end.i106_crit_edge:                   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i106

land.rhs.i:                                       ; preds = %if.end37
  %dep_map.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 34
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i106_crit_edge, !prof !152

land.rhs.i.if.end.i106_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i106

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1352, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i106

if.end.i106:                                      ; preds = %do.end.i, %land.rhs.i.if.end.i106_crit_edge, %if.end37.if.end.i106_crit_edge
  %scan_vif.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 676
  %30 = ptrtoint ptr %scan_vif.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %scan_vif.i, align 4
  %cmp25.i = icmp eq ptr %31, %vif
  br i1 %cmp25.i, label %if.then26.i, label %if.end.i106.if.end27.i_crit_edge

if.end.i106.if.end27.i_crit_edge:                 ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

if.then26.i:                                      ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iwl_scan_cancel_timeout(ptr noundef %op_mode_specific, i32 noundef 200) #7
  tail call void @iwl_force_scan_end(ptr noundef %op_mode_specific) #7
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then26.i, %if.end.i106.if.end27.i_crit_edge
  %32 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp35.i = icmp eq i32 %33, 1
  br i1 %cmp35.i, label %if.then36.i, label %if.end27.i.iwl_teardown_interface.exit_crit_edge

if.end27.i.iwl_teardown_interface.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_teardown_interface.exit

if.then36.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %last_bt_traffic_load.i = getelementptr inbounds %struct.iwl_priv, ptr %op_mode_specific, i32 0, i32 86
  %34 = ptrtoint ptr %last_bt_traffic_load.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %last_bt_traffic_load.i, align 1
  %bt_traffic_load.i = getelementptr inbounds %struct.iwl_priv, ptr %op_mode_specific, i32 0, i32 85
  %36 = ptrtoint ptr %bt_traffic_load.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %bt_traffic_load.i, align 2
  br label %iwl_teardown_interface.exit

iwl_teardown_interface.exit:                      ; preds = %if.then36.i, %if.end27.i.iwl_teardown_interface.exit_crit_edge
  %37 = ptrtoint ptr %vif to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %newtype, ptr %vif, align 8
  %p2p = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %38 = ptrtoint ptr %p2p to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool, ptr %p2p, align 2
  %call40 = tail call fastcc i32 @iwl_setup_interface(ptr noundef %op_mode_specific, ptr noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %iwl_teardown_interface.exit.out_crit_edge, label %do.end53, !prof !154

iwl_teardown_interface.exit.out_crit_edge:        ; preds = %iwl_teardown_interface.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end53:                                         ; preds = %iwl_teardown_interface.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1463, i32 noundef 9, ptr noundef null) #7
  br label %out

out:                                              ; preds = %do.end53, %iwl_teardown_interface.exit.out_crit_edge, %if.end32.out_crit_edge, %if.end11.out_crit_edge, %iwl_is_ready_rf.exit.out_crit_edge, %if.end.i103.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end.out_crit_edge, %ieee80211_iftype_p2p.exit.out_crit_edge
  %err.0 = phi i32 [ -16, %ieee80211_iftype_p2p.exit.out_crit_edge ], [ -16, %iwl_is_ready_rf.exit.out_crit_edge ], [ -16, %if.end.out_crit_edge ], [ -16, %if.end11.out_crit_edge ], [ 0, %do.end53 ], [ 0, %iwl_teardown_interface.exit.out_crit_edge ], [ -16, %lor.lhs.false.out_crit_edge ], [ -16, %if.end.i103.out_crit_edge ], [ -16, %if.end32.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %40, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_change_interface, ptr noundef nonnull @.str.5) #7
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwlagn_mac_remove_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %5, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_remove_interface, ptr noundef nonnull @.str.2) #7
  %mutex = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %cmp.not = icmp eq ptr %7, %vif
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end15, !prof !154

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end15:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1386, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end15, %entry.if.end_crit_edge
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %3, align 4
  tail call fastcc void @iwl_teardown_interface(ptr noundef %op_mode_specific, ptr noundef %vif, i1 noundef zeroext false)
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %10, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_remove_interface, ptr noundef nonnull @.str.5) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwlagn_mac_config(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwlagn_bss_info_changed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwlagn_configure_filter(ptr nocapture noundef readonly %hw, i32 noundef %changed_flags, ptr nocapture noundef %total_flags, i64 noundef %multicast) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %total_flags, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_configure_filter, ptr noundef nonnull @.str.19, i32 noundef %changed_flags, i32 noundef %5) #7
  %6 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %total_flags, align 4
  %and = shl i32 %7, 18
  %8 = and i32 %and, 16777216
  %and10 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %filter_or.1 = select i1 %tobool11.not, i32 %8, i32 50331648
  %and20 = shl i32 %7, 26
  %9 = and i32 %and20, 1073741824
  %10 = or i32 %filter_or.1, %9
  %mutex = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %contexts = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 684
  %arrayidx30 = getelementptr %struct.iwl_op_mode, ptr %1, i32 840
  %cmp61 = icmp ult ptr %contexts, %arrayidx30
  br i1 %cmp61, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %11 = xor i32 %8, 16777216
  %filter_nand.1 = select i1 %tobool11.not, i32 50331648, i32 %11
  %12 = or i32 %filter_nand.1, %9
  %valid_contexts = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 94
  %neg = xor i32 %12, -1073741825
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ctx.062 = phi ptr [ %contexts, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %13 = ptrtoint ptr %valid_contexts to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %valid_contexts, align 4
  %conv = zext i8 %14 to i32
  %ctxid = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.062, i32 0, i32 7
  %15 = ptrtoint ptr %ctxid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctxid, align 4
  %shl = shl nuw i32 1, %16
  %and31 = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %for.body.for.inc_crit_edge, label %if.then33

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then33:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %filter_flags = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.062, i32 0, i32 15, i32 13
  %17 = ptrtoint ptr %filter_flags to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %filter_flags, align 2
  %and34 = and i32 %18, %neg
  %or37 = or i32 %and34, %10
  store i32 %or37, ptr %filter_flags, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then33, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.iwl_rxon_context, ptr %ctx.062, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %arrayidx30
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  %19 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %total_flags, align 4
  %and40 = and i32 %20, 114
  store i32 %and40, ptr %total_flags, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwlagn_mac_set_tim(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %sta, i1 noundef zeroext %set) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %workqueue = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 88
  %2 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %workqueue, align 4
  %beacon_update = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2621
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %beacon_update) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwlagn_mac_set_key(ptr nocapture noundef readonly %hw, i32 noundef %cmd, ptr nocapture noundef readonly %vif, ptr noundef %sta, ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 0, i32 1
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %5, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_set_key, ptr noundef nonnull @.str.2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iwlwifi_mod_params to i32))
  %6 = load i32, ptr @iwlwifi_mod_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %do.end10

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %8, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_set_key, ptr noundef nonnull @.str.20) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %9 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cipher, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %10, label %if.end.sw.epilog_crit_edge [
    i32 1027074, label %sw.bb
    i32 1027076, label %if.end.sw.bb15_crit_edge
  ]

if.end.sw.bb15_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb15

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags, align 8
  %14 = or i16 %13, 4
  store i16 %14, ptr %flags, align 8
  br label %sw.bb15

sw.bb15:                                          ; preds = %sw.bb, %if.end.sw.bb15_crit_edge
  %flags16 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %15 = ptrtoint ptr %flags16 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags16, align 8
  %17 = or i16 %16, 2
  store i16 %17, ptr %flags16, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %if.end.sw.epilog_crit_edge
  %18 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp = icmp eq i32 %19, 1
  br i1 %cmp, label %land.lhs.true, label %sw.epilog.if.end25_crit_edge

sw.epilog.if.end25_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

land.lhs.true:                                    ; preds = %sw.epilog
  %flags21 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %20 = ptrtoint ptr %flags21 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flags21, align 8
  %22 = and i16 %21, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool23.not = icmp eq i16 %22, 0
  br i1 %tobool23.not, label %if.then24, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %23 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %hw_key_idx, align 2
  br label %cleanup

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %sw.epilog.if.end25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cmd)
  %cmp26 = icmp eq i32 %cmd, 1
  br i1 %cmp26, label %land.lhs.true28, label %if.end25.if.end34_crit_edge

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

land.lhs.true28:                                  ; preds = %if.end25
  %hw_key_idx29 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %24 = ptrtoint ptr %hw_key_idx29 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %hw_key_idx29, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %cmp31 = icmp eq i8 %25, -1
  br i1 %cmp31, label %land.lhs.true28.cleanup_crit_edge, label %land.lhs.true28.if.end34_crit_edge

land.lhs.true28.if.end34_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %land.lhs.true28.if.end34_crit_edge, %if.end25.if.end34_crit_edge
  %mutex = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  tail call void @iwl_scan_cancel_timeout(ptr noundef %op_mode_specific, i32 noundef 100) #7
  %26 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cipher, align 8
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %27, label %if.end34.if.end57_crit_edge [
    i32 1027073, label %if.end34.land.lhs.true44_crit_edge
    i32 1027077, label %if.end34.land.lhs.true44_crit_edge141
  ]

if.end34.land.lhs.true44_crit_edge141:            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true44

if.end34.land.lhs.true44_crit_edge:               ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true44

if.end34.if.end57_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

land.lhs.true44:                                  ; preds = %if.end34.land.lhs.true44_crit_edge, %if.end34.land.lhs.true44_crit_edge141
  %tobool45.not = icmp eq ptr %sta, null
  br i1 %tobool45.not, label %if.then46, label %land.lhs.true44.if.end57_crit_edge

land.lhs.true44.if.end57_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then46:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd)
  %cmp47 = icmp eq i32 %cmd, 0
  br i1 %cmp47, label %if.end57.thread, label %if.else

if.end57.thread:                                  ; preds = %if.then46
  %key_mapping_keys = getelementptr inbounds %struct.iwl_rxon_context, ptr %3, i32 0, i32 26
  %29 = ptrtoint ptr %key_mapping_keys to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %key_mapping_keys, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool50.not = icmp eq i8 %30, 0
  br i1 %tobool50.not, label %if.end57.thread.if.then60_crit_edge, label %if.end57.thread.if.end62_crit_edge

if.end57.thread.if.end62_crit_edge:               ; preds = %if.end57.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.end57.thread.if.then60_crit_edge:              ; preds = %if.end57.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60

if.else:                                          ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  %hw_key_idx51 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %31 = ptrtoint ptr %hw_key_idx51 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %hw_key_idx51, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %32)
  %cmp53 = icmp eq i8 %32, -2
  br label %if.end57

if.end57:                                         ; preds = %if.else, %land.lhs.true44.if.end57_crit_edge, %if.end34.if.end57_crit_edge
  %is_default_wep_key.0.shrunk = phi i1 [ false, %land.lhs.true44.if.end57_crit_edge ], [ %cmp53, %if.else ], [ false, %if.end34.if.end57_crit_edge ]
  %33 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %cmd, label %if.end57.sw.epilog91_crit_edge [
    i32 0, label %sw.bb58
    i32 1, label %sw.bb76
  ]

if.end57.sw.epilog91_crit_edge:                   ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog91

sw.bb58:                                          ; preds = %if.end57
  br i1 %is_default_wep_key.0.shrunk, label %sw.bb58.if.then60_crit_edge, label %sw.bb58.if.end62_crit_edge

sw.bb58.if.end62_crit_edge:                       ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

sw.bb58.if.then60_crit_edge:                      ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60

if.then60:                                        ; preds = %sw.bb58.if.then60_crit_edge, %if.end57.thread.if.then60_crit_edge
  %34 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %drv_priv, align 4
  %call = tail call i32 @iwl_set_default_wep_key(ptr noundef %op_mode_specific, ptr noundef %35, ptr noundef %key) #7
  br label %sw.epilog91

if.end62:                                         ; preds = %sw.bb58.if.end62_crit_edge, %if.end57.thread.if.end62_crit_edge
  %36 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %drv_priv, align 4
  %call64 = tail call i32 @iwl_set_dynamic_key(ptr noundef %op_mode_specific, ptr noundef %37, ptr noundef %key, ptr noundef %sta) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end62.do.end72_crit_edge, label %if.then66

if.end62.do.end72_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end72

if.then66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %hw_key_idx67 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %38 = ptrtoint ptr %hw_key_idx67 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %hw_key_idx67, align 2
  br label %do.end72

do.end72:                                         ; preds = %if.then66, %if.end62.do.end72_crit_edge
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %40, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_set_key, ptr noundef nonnull @.str.21) #7
  br label %sw.epilog91

sw.bb76:                                          ; preds = %if.end57
  br i1 %is_default_wep_key.0.shrunk, label %if.then78, label %if.else80

if.then78:                                        ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #9
  %call79 = tail call i32 @iwl_remove_default_wep_key(ptr noundef %op_mode_specific, ptr noundef %3, ptr noundef %key) #7
  br label %do.end86

if.else80:                                        ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #9
  %call81 = tail call i32 @iwl_remove_dynamic_key(ptr noundef %op_mode_specific, ptr noundef %3, ptr noundef %key, ptr noundef %sta) #7
  br label %do.end86

do.end86:                                         ; preds = %if.else80, %if.then78
  %ret.1 = phi i32 [ %call79, %if.then78 ], [ %call81, %if.else80 ]
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %42, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_set_key, ptr noundef nonnull @.str.22) #7
  br label %sw.epilog91

sw.epilog91:                                      ; preds = %do.end86, %do.end72, %if.then60, %if.end57.sw.epilog91_crit_edge
  %ret.2 = phi i32 [ %ret.1, %do.end86 ], [ %call, %if.then60 ], [ 0, %do.end72 ], [ -22, %if.end57.sw.epilog91_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %44, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_set_key, ptr noundef nonnull @.str.5) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog91, %land.lhs.true28.cleanup_crit_edge, %if.then24, %do.end10
  %retval.0 = phi i32 [ -95, %do.end10 ], [ %ret.2, %sw.epilog91 ], [ 0, %if.then24 ], [ 0, %land.lhs.true28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwlagn_mac_update_tkip_key(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %keyconf, ptr noundef %sta, i32 noundef %iv32, ptr noundef %phase1key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 0, i32 1
  tail call void @iwl_update_tkip_key(ptr noundef %op_mode_specific, ptr noundef %vif, ptr noundef %keyconf, ptr noundef %sta, i32 noundef %iv32, ptr noundef %phase1key) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwlagn_mac_set_rekey_data(ptr nocapture noundef readonly %hw, ptr noundef readnone %vif, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iwlwifi_mod_params to i32))
  %2 = load i32, ptr @iwlwifi_mod_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %4, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_set_rekey_data, ptr noundef nonnull @.str.2) #7
  %mutex = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %contexts = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 684
  %5 = ptrtoint ptr %contexts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %contexts, align 4
  %cmp.not = icmp eq ptr %6, %vif
  br i1 %cmp.not, label %if.end7, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %kek = getelementptr inbounds %struct.iwl_priv, ptr %op_mode_specific, i32 0, i32 137
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = call ptr @memcpy(ptr %kek, ptr %8, i32 16)
  %kck = getelementptr inbounds %struct.iwl_priv, ptr %op_mode_specific, i32 0, i32 136
  %kck11 = getelementptr inbounds %struct.cfg80211_gtk_rekey_data, ptr %data, i32 0, i32 1
  %10 = ptrtoint ptr %kck11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %kck11, align 4
  %12 = call ptr @memcpy(ptr %kck, ptr %11, i32 16)
  %replay_ctr = getelementptr inbounds %struct.cfg80211_gtk_rekey_data, ptr %data, i32 0, i32 2
  %13 = ptrtoint ptr %replay_ctr to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %replay_ctr, align 8
  %15 = tail call i64 @llvm.bswap.i64(i64 %14)
  %replay_ctr12 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2911
  %16 = ptrtoint ptr %replay_ctr12 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %replay_ctr12, align 8
  %have_rekey_data = getelementptr inbounds %struct.iwl_priv, ptr %op_mode_specific, i32 0, i32 140
  %17 = ptrtoint ptr %have_rekey_data to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %have_rekey_data, align 2
  br label %out

out:                                              ; preds = %if.end7, %do.end.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %19, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_set_rekey_data, ptr noundef nonnull @.str.5) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwlagn_mac_hw_scan(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %hw_req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 0, i32 1
  %req2 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %hw_req, i32 0, i32 1
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_hw_scan, ptr noundef nonnull @.str.2) #7
  %n_channels = getelementptr inbounds %struct.ieee80211_scan_request, ptr %hw_req, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %scan_type = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 677
  %6 = ptrtoint ptr %scan_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %scan_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6.not = icmp eq i32 %7, 0
  br i1 %cmp6.not, label %if.else, label %do.end11

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %9, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_hw_scan, ptr noundef nonnull @.str.23) #7
  %scan_request = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 675
  %10 = ptrtoint ptr %scan_request to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %req2, ptr %scan_request, align 8
  %scan_vif = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 676
  %11 = ptrtoint ptr %scan_vif to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %vif, ptr %scan_vif, align 4
  br label %do.end25

if.else:                                          ; preds = %if.end
  %scan_request15 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 675
  %12 = ptrtoint ptr %scan_request15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %req2, ptr %scan_request15, align 8
  %scan_vif16 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 676
  %13 = ptrtoint ptr %scan_vif16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %vif, ptr %scan_vif16, align 4
  %channels = getelementptr inbounds %struct.ieee80211_scan_request, ptr %hw_req, i32 0, i32 1, i32 22
  %14 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %channels, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %call = tail call i32 @iwl_scan_initiate(ptr noundef %op_mode_specific, ptr noundef %vif, i32 noundef 0, i32 noundef %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else.do.end25_crit_edge, label %if.then17

if.else.do.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %scan_request15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %scan_request15, align 8
  %19 = ptrtoint ptr %scan_vif16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %scan_vif16, align 4
  br label %do.end25

do.end25:                                         ; preds = %if.then17, %if.else.do.end25_crit_edge, %do.end11
  %ret.0 = phi i32 [ 0, %do.end11 ], [ %call, %if.then17 ], [ 0, %if.else.do.end25_crit_edge ]
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %21, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_hw_scan, ptr noundef nonnull @.str.5) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end25 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwlagn_mac_sta_notify(ptr noundef %hw, ptr nocapture noundef readnone %vif, i32 noundef %cmd, ptr noundef %sta) #0 align 64 {
entry:
  %cmd.i = alloca %struct.iwl_addsta_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 0, i32 1
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_sta_notify, ptr noundef nonnull @.str.2) #7
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %cmd, label %entry.do.end78_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb31
  ]

entry.do.end78_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end78

sw.bb:                                            ; preds = %entry
  %client = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 7, i32 27, i32 1
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %client, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %do.end17, label %sw.bb.if.end_crit_edge, !prof !152

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end17:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1551, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end17, %sw.bb.if.end_crit_edge
  %asleep = getelementptr inbounds %struct.iwl_station_priv, ptr %drv_priv, i32 0, i32 5
  %7 = ptrtoint ptr %asleep to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %asleep, align 1
  %pending_frames = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 7, i32 27
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending_frames, i32 noundef 4) #7
  %8 = ptrtoint ptr %pending_frames to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %pending_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %if.then29, label %if.end.do.end78_crit_edge

if.end.do.end78_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end78

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ieee80211_sta_block_awake(ptr noundef %hw, ptr noundef %sta, i1 noundef zeroext true) #7
  br label %do.end78

sw.bb31:                                          ; preds = %entry
  %client33 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 7, i32 27, i32 1
  %10 = ptrtoint ptr %client33 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %client33, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool34.not = icmp eq i8 %11, 0
  br i1 %tobool34.not, label %do.end52, label %sw.bb31.if.end58_crit_edge, !prof !152

sw.bb31.if.end58_crit_edge:                       ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

do.end52:                                         ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1557, i32 noundef 9, ptr noundef null) #7
  br label %if.end58

if.end58:                                         ; preds = %do.end52, %sw.bb31.if.end58_crit_edge
  %asleep66 = getelementptr inbounds %struct.iwl_station_priv, ptr %drv_priv, i32 0, i32 5
  %12 = ptrtoint ptr %asleep66 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %asleep66, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool67.not = icmp eq i8 %13, 0
  br i1 %tobool67.not, label %if.end58.do.end78_crit_edge, label %if.end69

if.end58.do.end78_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end78

if.end69:                                         ; preds = %if.end58
  %14 = ptrtoint ptr %asleep66 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %asleep66, align 1
  %tobool.not.i = icmp eq ptr %sta, null
  br i1 %tobool.not.i, label %iwl_sta_id.exit.thread, label %iwl_sta_id.exit, !prof !152

iwl_sta_id.exit.thread:                           ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 281, i32 noundef 9, ptr noundef null) #7
  br label %do.end78

iwl_sta_id.exit:                                  ; preds = %if.end69
  %sta_id.i = getelementptr inbounds %struct.iwl_station_priv, ptr %drv_priv, i32 0, i32 7
  %15 = ptrtoint ptr %sta_id.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sta_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp72.not = icmp eq i8 %16, -1
  br i1 %cmp72.not, label %iwl_sta_id.exit.do.end78_crit_edge, label %if.then73

iwl_sta_id.exit.do.end78_crit_edge:               ; preds = %iwl_sta_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end78

if.then73:                                        ; preds = %iwl_sta_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %cmd.i) #7
  %17 = getelementptr inbounds i8, ptr %cmd.i, i32 1
  %18 = call ptr @memset(ptr %17, i32 0, i32 91)
  %19 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %cmd.i, align 1
  %sta_id1.i = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %cmd.i, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %sta_id1.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %16, ptr %sta_id1.i, align 1
  %station_flags_msk.i = getelementptr inbounds %struct.iwl_addsta_cmd, ptr %cmd.i, i32 0, i32 5
  %21 = ptrtoint ptr %station_flags_msk.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 65536, ptr %station_flags_msk.i, align 1
  %call.i = call i32 @iwl_send_add_sta(ptr noundef %op_mode_specific, ptr noundef nonnull %cmd.i, i8 noundef zeroext 1) #7
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %cmd.i) #7
  br label %do.end78

do.end78:                                         ; preds = %if.then73, %iwl_sta_id.exit.do.end78_crit_edge, %iwl_sta_id.exit.thread, %if.end58.do.end78_crit_edge, %if.then29, %if.end.do.end78_crit_edge, %entry.do.end78_crit_edge
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %23, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_sta_notify, ptr noundef nonnull @.str.5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwlagn_mac_sta_state(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %vif, ptr noundef %sta, i32 noundef %old_state, i32 noundef %new_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 0, i32 1
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_sta_state, ptr noundef nonnull @.str.25, ptr noundef %addr, i32 noundef %old_state, i32 noundef %new_state) #7
  %mutex = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %4 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then, label %if.else21

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %old_state)
  %cmp7 = icmp eq i32 %old_state, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %new_state)
  %cmp8 = icmp eq i32 %new_state, 1
  %or.cond = and i1 %cmp7, %cmp8
  br i1 %or.cond, label %sw.bb, label %if.else

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %old_state)
  %cmp10 = icmp eq i32 %old_state, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_state)
  %cmp12 = icmp eq i32 %new_state, 0
  %or.cond128 = and i1 %cmp10, %cmp12
  br i1 %or.cond128, label %if.else.sw.bb39_crit_edge, label %if.else14

if.else.sw.bb39_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb39

if.else14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %old_state)
  %cmp15 = icmp eq i32 %old_state, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %new_state)
  %cmp17 = icmp eq i32 %new_state, 3
  %or.cond129 = and i1 %cmp15, %cmp17
  br i1 %or.cond129, label %sw.bb57, label %if.else14.sw.epilog_crit_edge

if.else14.sw.epilog_crit_edge:                    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.else21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %old_state)
  %cmp22 = icmp eq i32 %old_state, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %new_state)
  %cmp24 = icmp eq i32 %new_state, 3
  %or.cond130 = and i1 %cmp22, %cmp24
  br i1 %or.cond130, label %sw.bb41, label %if.else26

if.else26:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %old_state)
  %cmp27 = icmp eq i32 %old_state, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %new_state)
  %cmp29 = icmp eq i32 %new_state, 2
  %or.cond131 = and i1 %cmp27, %cmp29
  br i1 %or.cond131, label %if.else26.sw.bb39_crit_edge, label %if.else26.sw.epilog_crit_edge

if.else26.sw.epilog_crit_edge:                    ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.else26.sw.bb39_crit_edge:                      ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb39

sw.bb:                                            ; preds = %if.then
  %call = tail call fastcc i32 @iwlagn_mac_sta_add(ptr noundef %hw, ptr noundef %vif, ptr noundef %sta)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end35, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end35:                                         ; preds = %sw.bb
  %sta_lock = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_lock) #7
  %stations = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 953
  %tobool.not.i = icmp eq ptr %sta, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !152

do.end.i:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 281, i32 noundef 9, ptr noundef null) #7
  br label %iwl_sta_id.exit

if.end23.i:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %sta_id.i = getelementptr inbounds %struct.iwl_station_priv, ptr %drv_priv.i, i32 0, i32 7
  %6 = ptrtoint ptr %sta_id.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sta_id.i, align 1
  %conv.i = zext i8 %7 to i32
  br label %iwl_sta_id.exit

iwl_sta_id.exit:                                  ; preds = %if.end23.i, %do.end.i
  %retval.0.i = phi i32 [ 255, %do.end.i ], [ %conv.i, %if.end23.i ]
  %arrayidx = getelementptr [16 x %struct.iwl_station_entry], ptr %stations, i32 0, i32 %retval.0.i
  %used = getelementptr inbounds %struct.iwl_station_entry, ptr %arrayidx, i32 0, i32 1
  %8 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %used, align 4
  %10 = and i8 %9, -5
  store i8 %10, ptr %used, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock) #7
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.else26.sw.bb39_crit_edge, %if.else.sw.bb39_crit_edge
  %11 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv1, align 8
  %op_mode_specific.i = getelementptr inbounds %struct.iwl_op_mode, ptr %12, i32 0, i32 1
  %drv_priv.i134 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %dev.i = getelementptr inbounds %struct.iwl_op_mode, ptr %12, i32 2
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %14, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_sta_remove, ptr noundef nonnull @.str.29, ptr noundef %addr) #7
  %15 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp.i = icmp eq i32 %16, 2
  %sta_id.i135 = getelementptr inbounds %struct.iwl_station_priv, ptr %drv_priv.i134, i32 0, i32 7
  %17 = ptrtoint ptr %sta_id.i135 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sta_id.i135, align 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iwl_deactivate_station(ptr noundef %op_mode_specific.i, i8 noundef zeroext %18, ptr noundef %addr) #7
  br label %sw.epilog

if.else.i:                                        ; preds = %sw.bb39
  %call.i = tail call i32 @iwl_remove_station(ptr noundef %op_mode_specific.i, i8 noundef zeroext %18, ptr noundef %addr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i136 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i136, label %if.else.i.sw.epilog_crit_edge, label %do.body13.i

if.else.i.sw.epilog_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body13.i:                                      ; preds = %if.else.i
  %status.i.i = getelementptr inbounds %struct.iwl_op_mode, ptr %12, i32 6
  %19 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %status.i.i, align 4
  %and1.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool15.not.i = icmp eq i32 %and1.i.i.i, 0
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  br i1 %tobool15.not.i, label %do.end20.i, label %if.else26.i

do.end20.i:                                       ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %22, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef %addr) #7
  br label %sw.epilog

if.else26.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 8) to i32))
  %23 = load i32, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 8), align 4
  %and.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %cond.i = select i1 %tobool.i.not.i, i32 2, i32 1
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %22, i32 noundef %cond.i, ptr noundef nonnull @.str.30, ptr noundef %addr) #7
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.else21
  %call42 = tail call fastcc i32 @iwlagn_mac_sta_add(ptr noundef %hw, ptr noundef %vif, ptr noundef %sta)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.end49, label %sw.bb41.sw.epilog_crit_edge

sw.bb41.sw.epilog_crit_edge:                      ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end49:                                         ; preds = %sw.bb41
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %25, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_sta_state, ptr noundef nonnull @.str.26, ptr noundef %addr) #7
  %tobool.not.i137 = icmp eq ptr %sta, null
  br i1 %tobool.not.i137, label %do.end.i138, label %if.end23.i142, !prof !152

do.end.i138:                                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 281, i32 noundef 9, ptr noundef null) #7
  br label %iwl_sta_id.exit144

if.end23.i142:                                    ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #9
  %drv_priv.i139 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %sta_id.i140 = getelementptr inbounds %struct.iwl_station_priv, ptr %drv_priv.i139, i32 0, i32 7
  %26 = ptrtoint ptr %sta_id.i140 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sta_id.i140, align 1
  br label %iwl_sta_id.exit144

iwl_sta_id.exit144:                               ; preds = %if.end23.i142, %do.end.i138
  %retval.0.i143 = phi i8 [ -1, %do.end.i138 ], [ %27, %if.end23.i142 ]
  tail call void @iwl_rs_rate_init(ptr noundef %op_mode_specific, ptr noundef %sta, i8 noundef zeroext %retval.0.i143) #7
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.else14
  %28 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %drv_priv, align 4
  %call58 = tail call i32 @iwl_sta_update_ht(ptr noundef %op_mode_specific, ptr noundef %29, ptr noundef %sta) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %do.end65, label %sw.bb57.sw.epilog_crit_edge

sw.bb57.sw.epilog_crit_edge:                      ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end65:                                         ; preds = %sw.bb57
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %31, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_sta_state, ptr noundef nonnull @.str.26, ptr noundef %addr) #7
  %tobool.not.i145 = icmp eq ptr %sta, null
  br i1 %tobool.not.i145, label %do.end.i146, label %if.end23.i150, !prof !152

do.end.i146:                                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 281, i32 noundef 9, ptr noundef null) #7
  br label %iwl_sta_id.exit152

if.end23.i150:                                    ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #9
  %drv_priv.i147 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %sta_id.i148 = getelementptr inbounds %struct.iwl_station_priv, ptr %drv_priv.i147, i32 0, i32 7
  %32 = ptrtoint ptr %sta_id.i148 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %sta_id.i148, align 1
  br label %iwl_sta_id.exit152

iwl_sta_id.exit152:                               ; preds = %if.end23.i150, %do.end.i146
  %retval.0.i151 = phi i8 [ -1, %do.end.i146 ], [ %33, %if.end23.i150 ]
  tail call void @iwl_rs_rate_init(ptr noundef %op_mode_specific, ptr noundef %sta, i8 noundef zeroext %retval.0.i151) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %iwl_sta_id.exit152, %sw.bb57.sw.epilog_crit_edge, %iwl_sta_id.exit144, %sw.bb41.sw.epilog_crit_edge, %if.else26.i, %do.end20.i, %if.else.i.sw.epilog_crit_edge, %if.then.i, %iwl_sta_id.exit, %sw.bb.sw.epilog_crit_edge, %if.else26.sw.epilog_crit_edge, %if.else14.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call58, %sw.bb57.sw.epilog_crit_edge ], [ 0, %iwl_sta_id.exit152 ], [ %call42, %sw.bb41.sw.epilog_crit_edge ], [ 0, %iwl_sta_id.exit144 ], [ %call, %sw.bb.sw.epilog_crit_edge ], [ 0, %iwl_sta_id.exit ], [ 0, %if.then.i ], [ %call.i, %if.else26.i ], [ %call.i, %do.end20.i ], [ 0, %if.else.i.sw.epilog_crit_edge ], [ 0, %if.else14.sw.epilog_crit_edge ], [ 0, %if.else26.sw.epilog_crit_edge ]
  %status.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 6
  %34 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool74.not = icmp eq i32 %and1.i.i, 0
  %spec.select = select i1 %tobool74.not, i32 %ret.0, i32 0
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %37, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_sta_state, ptr noundef nonnull @.str.5) #7
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwlagn_mac_conf_tx(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %vif, i16 noundef zeroext %queue, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %do.end30, !prof !152

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1164, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

do.end30:                                         ; preds = %entry
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %5, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_conf_tx, ptr noundef nonnull @.str.2) #7
  %status.i.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 6
  %6 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %status.i.i, align 4
  %and1.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end30.do.end38_crit_edge

do.end30.do.end38_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end38

if.end.i:                                         ; preds = %do.end30
  %8 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %status.i.i, align 4
  %10 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %if.end.i.do.end38_crit_edge, label %iwl_is_ready_rf.exit

if.end.i.do.end38_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end38

iwl_is_ready_rf.exit:                             ; preds = %if.end.i
  %11 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %status.i.i, align 4
  %13 = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool33.not.not = icmp eq i32 %13, 0
  br i1 %tobool33.not.not, label %if.end42, label %iwl_is_ready_rf.exit.do.end38_crit_edge

iwl_is_ready_rf.exit.do.end38_crit_edge:          ; preds = %iwl_is_ready_rf.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end38

do.end38:                                         ; preds = %iwl_is_ready_rf.exit.do.end38_crit_edge, %if.end.i.do.end38_crit_edge, %do.end30.do.end38_crit_edge
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %15, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_conf_tx, ptr noundef nonnull @.str.31) #7
  br label %cleanup

if.end42:                                         ; preds = %iwl_is_ready_rf.exit
  %conv = zext i16 %queue to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %queue)
  %cmp = icmp ugt i16 %queue, 3
  br i1 %cmp, label %do.end48, label %if.end53

do.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %17, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_conf_tx, ptr noundef nonnull @.str.32, i32 noundef %conv) #7
  br label %cleanup

if.end53:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub nsw i32 3, %conv
  %mutex = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %cw_min = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 1
  %18 = ptrtoint ptr %cw_min to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %cw_min, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %arrayidx = getelementptr %struct.iwl_rxon_context, ptr %3, i32 0, i32 17, i32 1, i32 1, i32 %sub
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %arrayidx, align 4
  %cw_max = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 2
  %22 = ptrtoint ptr %cw_max to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %cw_max, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %cw_max60 = getelementptr %struct.iwl_rxon_context, ptr %3, i32 0, i32 17, i32 1, i32 1, i32 %sub, i32 1
  %25 = ptrtoint ptr %cw_max60 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %cw_max60, align 2
  %aifs = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 3
  %26 = ptrtoint ptr %aifs to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %aifs, align 2
  %aifsn = getelementptr %struct.iwl_rxon_context, ptr %3, i32 0, i32 17, i32 1, i32 1, i32 %sub, i32 2
  %28 = ptrtoint ptr %aifsn to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %aifsn, align 4
  %29 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %params, align 2
  %mul = shl i16 %30, 5
  %31 = tail call i16 @llvm.bswap.i16(i16 %mul)
  %edca_txop = getelementptr %struct.iwl_rxon_context, ptr %3, i32 0, i32 17, i32 1, i32 1, i32 %sub, i32 4
  %32 = ptrtoint ptr %edca_txop to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %edca_txop, align 2
  %reserved1 = getelementptr %struct.iwl_rxon_context, ptr %3, i32 0, i32 17, i32 1, i32 1, i32 %sub, i32 3
  %33 = ptrtoint ptr %reserved1 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %reserved1, align 1
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %35, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_conf_tx, ptr noundef nonnull @.str.5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %do.end48, %do.end38, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end48 ], [ 0, %if.end53 ], [ -5, %do.end38 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iwlagn_mac_tx_last_beacon(ptr nocapture noundef readonly %hw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %ibss_manager = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 404
  %2 = ptrtoint ptr %ibss_manager to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ibss_manager, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwlagn_mac_ampdu_action(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 0, i32 1
  %sta2 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 1
  %2 = ptrtoint ptr %sta2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sta2, align 4
  %4 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %params, align 4
  %tid4 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 2
  %6 = ptrtoint ptr %tid4 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tid4, align 4
  %ssn5 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 3
  %buf_size6 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 4
  %8 = ptrtoint ptr %buf_size6 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %buf_size6, align 4
  %conv = trunc i16 %9 to i8
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 0, i32 1
  %conv10 = zext i16 %7 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %11, i32 noundef 67108864, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_ampdu_action, ptr noundef nonnull @.str.33, ptr noundef %addr, i32 noundef %conv10) #7
  %nvm_data = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2743
  %12 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nvm_data, align 8
  %sku_cap_11n_enable = getelementptr inbounds %struct.iwl_nvm_data, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %sku_cap_11n_enable to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sku_cap_11n_enable, align 2, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end16

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end16:                                         ; preds = %entry
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %17, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_ampdu_action, ptr noundef nonnull @.str.2) #7
  %mutex = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %18 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %5, label %do.end16.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %do.end35
    i32 2, label %sw.bb41
    i32 4, label %do.end16.do.end60_crit_edge
    i32 5, label %do.end16.do.end60_crit_edge170
    i32 3, label %do.end69
    i32 6, label %sw.bb103
  ]

do.end16.do.end60_crit_edge170:                   ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60

do.end16.do.end60_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60

do.end16.sw.epilog_crit_edge:                     ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 1) to i32))
  %19 = load i32, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 1), align 4
  %and.i = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end25, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end25:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %21, i32 noundef 67108864, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_ampdu_action, ptr noundef nonnull @.str.34) #7
  %22 = ptrtoint ptr %ssn5 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ssn5, align 2
  %call30 = tail call i32 @iwl_sta_rx_agg_start(ptr noundef %op_mode_specific, ptr noundef %3, i32 noundef %conv10, i16 noundef zeroext %23) #7
  br label %sw.epilog

do.end35:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %25, i32 noundef 67108864, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_ampdu_action, ptr noundef nonnull @.str.35) #7
  %call40 = tail call i32 @iwl_sta_rx_agg_stop(ptr noundef %op_mode_specific, ptr noundef %3, i32 noundef %conv10) #7
  br label %sw.epilog

sw.bb41:                                          ; preds = %do.end16
  %26 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %op_mode_specific, align 8
  %ops = getelementptr inbounds %struct.iwl_trans, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops, align 4
  %txq_enable = getelementptr inbounds %struct.iwl_trans_ops, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %txq_enable to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %txq_enable, align 4
  %tobool42.not = icmp eq ptr %31, null
  br i1 %tobool42.not, label %sw.bb41.sw.epilog_crit_edge, label %if.end44

sw.bb41.sw.epilog_crit_edge:                      ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end44:                                         ; preds = %sw.bb41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 1) to i32))
  %32 = load i32, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 1), align 4
  %and.i168 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i168)
  %tobool.not.i169 = icmp eq i32 %and.i168, 0
  br i1 %tobool.not.i169, label %do.end51, label %if.end44.sw.epilog_crit_edge

if.end44.sw.epilog_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end51:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %34, i32 noundef 67108864, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_ampdu_action, ptr noundef nonnull @.str.36) #7
  %call55 = tail call i32 @iwlagn_tx_agg_start(ptr noundef %op_mode_specific, ptr noundef %vif, ptr noundef %3, i16 noundef zeroext %7, ptr noundef %ssn5) #7
  br label %sw.epilog

do.end60:                                         ; preds = %do.end16.do.end60_crit_edge, %do.end16.do.end60_crit_edge170
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %36, i32 noundef 67108864, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_ampdu_action, ptr noundef nonnull @.str.37) #7
  %call64 = tail call i32 @iwlagn_tx_agg_flush(ptr noundef %op_mode_specific, ptr noundef %vif, ptr noundef %3, i16 noundef zeroext %7) #7
  br label %sw.epilog

do.end69:                                         ; preds = %do.end16
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %38, i32 noundef 67108864, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_ampdu_action, ptr noundef nonnull @.str.38) #7
  %call73 = tail call i32 @iwlagn_tx_agg_stop(ptr noundef %op_mode_specific, ptr noundef %vif, ptr noundef %3, i16 noundef zeroext %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp = icmp eq i32 %call73, 0
  br i1 %cmp, label %land.lhs.true, label %do.end69.if.end89_crit_edge

do.end69.if.end89_crit_edge:                      ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

land.lhs.true:                                    ; preds = %do.end69
  %agg_tids_count = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2513
  %39 = ptrtoint ptr %agg_tids_count to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %agg_tids_count, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp76.not = icmp eq i8 %40, 0
  br i1 %cmp76.not, label %land.lhs.true.if.end89_crit_edge, label %if.then78

land.lhs.true.if.end89_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.then78:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %dec = add i8 %40, -1
  %41 = ptrtoint ptr %agg_tids_count to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %dec, ptr %agg_tids_count, align 8
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %conv86 = zext i8 %dec to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %43, i32 noundef 67108864, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_ampdu_action, ptr noundef nonnull @.str.39, i32 noundef %conv86) #7
  br label %if.end89

if.end89:                                         ; preds = %if.then78, %land.lhs.true.if.end89_crit_edge, %do.end69.if.end89_crit_edge
  %agg_tids_count90 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2513
  %44 = ptrtoint ptr %agg_tids_count90 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %agg_tids_count90, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool91.not = icmp eq i8 %45, 0
  br i1 %tobool91.not, label %land.lhs.true92, label %if.end89.sw.epilog_crit_edge

if.end89.sw.epilog_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true92:                                  ; preds = %if.end89
  %hw_params = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 89
  %use_rts_for_aggregation = getelementptr inbounds %struct.iwl_hw_params, ptr %hw_params, i32 0, i32 2
  %46 = ptrtoint ptr %use_rts_for_aggregation to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %use_rts_for_aggregation, align 2, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool93.not = icmp eq i8 %47, 0
  br i1 %tobool93.not, label %land.lhs.true92.sw.epilog_crit_edge, label %if.then95

land.lhs.true92.sw.epilog_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then95:                                        ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #9
  %lq = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 1, i32 5, i32 2, i32 3
  %general_params = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 1, i32 6, i32 1, i32 0, i32 1
  %48 = ptrtoint ptr %general_params to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %general_params, align 2
  %50 = and i8 %49, -2
  store i8 %50, ptr %general_params, align 2
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %51 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %drv_priv.i, align 4
  %call101 = tail call i32 @iwl_send_lq_cmd(ptr noundef %op_mode_specific, ptr noundef %52, ptr noundef %lq, i8 noundef zeroext 1, i1 noundef zeroext false) #7
  br label %sw.epilog

sw.bb103:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  %call104 = tail call i32 @iwlagn_tx_agg_oper(ptr noundef %op_mode_specific, ptr noundef %vif, ptr noundef %3, i16 noundef zeroext %7, i8 noundef zeroext %conv) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb103, %if.then95, %land.lhs.true92.sw.epilog_crit_edge, %if.end89.sw.epilog_crit_edge, %do.end60, %do.end51, %if.end44.sw.epilog_crit_edge, %sw.bb41.sw.epilog_crit_edge, %do.end35, %do.end25, %sw.bb.sw.epilog_crit_edge, %do.end16.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %do.end16.sw.epilog_crit_edge ], [ %call104, %sw.bb103 ], [ %call73, %if.end89.sw.epilog_crit_edge ], [ %call73, %if.then95 ], [ %call73, %land.lhs.true92.sw.epilog_crit_edge ], [ %call64, %do.end60 ], [ %call55, %do.end51 ], [ -22, %if.end44.sw.epilog_crit_edge ], [ -22, %sw.bb41.sw.epilog_crit_edge ], [ %call40, %do.end35 ], [ %call30, %do.end25 ], [ -22, %sw.bb.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %54, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_ampdu_action, ptr noundef nonnull @.str.5) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -13, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwlagn_mac_flush(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, i32 noundef %queues, i1 noundef zeroext %drop) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 0, i32 1
  %mutex = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_flush, ptr noundef nonnull @.str.2) #7
  %status = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 6
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %status, align 4
  %6 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %do.end8

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %8, i32 noundef 8388608, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_flush, ptr noundef nonnull @.str.40) #7
  br label %done

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %status, align 4
  %and1.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool13.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool13.not, label %if.end22, label %do.end18

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %12, i32 noundef 8388608, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_flush, ptr noundef nonnull @.str.41) #7
  br label %done

if.end22:                                         ; preds = %if.end
  %13 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %op_mode_specific, align 8
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %trans_cfg, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %num_of_queues = getelementptr inbounds %struct.iwl_base_params, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %num_of_queues to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %num_of_queues, align 2
  %conv = zext i16 %20 to i32
  %notmask = shl nsw i32 -1, %conv
  %sub = and i32 %notmask, -529
  %and = xor i32 %sub, -529
  br i1 %drop, label %do.end28, label %if.end22.do.end47_crit_edge

if.end22.do.end47_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end47

do.end28:                                         ; preds = %if.end22
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %22, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_flush, ptr noundef nonnull @.str.42, i32 noundef %and) #7
  %call32 = tail call i32 @iwlagn_txfifo_flush(ptr noundef %op_mode_specific, i32 noundef %and) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %do.end28.do.end47_crit_edge, label %do.end38

do.end28.do.end47_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end47

do.end38:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %24, i32 noundef 0, ptr noundef nonnull @.str.43) #7
  br label %done

do.end47:                                         ; preds = %do.end28.do.end47_crit_edge, %if.end22.do.end47_crit_edge
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %26, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_flush, ptr noundef nonnull @.str.44) #7
  %27 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %op_mode_specific, align 8
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i, align 4
  %wait_tx_queues_empty.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %30, i32 0, i32 17
  %31 = ptrtoint ptr %wait_tx_queues_empty.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wait_tx_queues_empty.i, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %do.end47
  %.b1.i = load i1, ptr @iwl_trans_wait_tx_queues_empty.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.done_crit_edge, label %if.then.i, !prof !154

land.rhs.i.done_crit_edge:                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @iwl_trans_wait_tx_queues_empty.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1307, i32 noundef 9, ptr noundef null) #7
  br label %done

if.end39.i:                                       ; preds = %do.end47
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %28, i32 0, i32 6
  %33 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp.not.i = icmp eq i32 %34, 2
  br i1 %cmp.not.i, label %if.end48.i, label %do.end44.i

do.end44.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %28, i32 0, i32 8
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %36, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.iwl_trans_wait_tx_queues_empty, i32 noundef %34) #7
  br label %done

if.end48.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %32(ptr noundef %28, i32 noundef %and) #7
  br label %done

done:                                             ; preds = %if.end48.i, %do.end44.i, %if.then.i, %land.rhs.i.done_crit_edge, %do.end38, %do.end18, %do.end8
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %38, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_flush, ptr noundef nonnull @.str.5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwlagn_mac_channel_switch(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, ptr noundef %ch_switch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 0, i32 1
  %chandef = getelementptr inbounds %struct.ieee80211_channel_switch, ptr %ch_switch, i32 0, i32 3
  %2 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chandef, align 8
  %current_ht_config = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 899
  %contexts = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 684
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %5, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_channel_switch, ptr noundef nonnull @.str.2) #7
  %mutex = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %status.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 6
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %status.i, align 4
  %10 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false:                                    ; preds = %if.end
  %11 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %status.i, align 4
  %13 = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not = icmp eq i32 %13, 0
  br i1 %tobool10.not, label %lor.lhs.false11, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %status.i, align 4
  %16 = and i32 %15, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool14.not = icmp eq i32 %16, 0
  br i1 %tobool14.not, label %if.end16, label %lor.lhs.false11.out_crit_edge

lor.lhs.false11.out_crit_edge:                    ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end16:                                         ; preds = %lor.lhs.false11
  %filter_flags.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 701
  %17 = ptrtoint ptr %filter_flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %filter_flags.i, align 4
  %19 = and i32 %18, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool18.not = icmp eq i32 %19, 0
  br i1 %tobool18.not, label %if.end16.out_crit_edge, label %if.end20

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end20:                                         ; preds = %if.end16
  %lib = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 5
  %20 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lib, align 8
  %set_channel_switch = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %set_channel_switch to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_channel_switch, align 4
  %tobool21.not = icmp eq ptr %23, null
  br i1 %tobool21.not, label %if.end20.out_crit_edge, label %if.end23

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end23:                                         ; preds = %if.end20
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %3, i32 0, i32 3
  %24 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %hw_value, align 2
  %channel24 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 702
  %26 = ptrtoint ptr %channel24 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %channel24, align 4
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %25)
  %cmp = icmp eq i16 %28, %25
  br i1 %cmp, label %if.end23.out_crit_edge, label %if.end28

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end28:                                         ; preds = %if.end23
  %smps_mode = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 9
  %29 = ptrtoint ptr %smps_mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %smps_mode, align 4
  %smps = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 900
  %31 = ptrtoint ptr %smps to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %smps, align 4
  %call31 = tail call fastcc i32 @cfg80211_get_chandef_type(ptr noundef %chandef)
  %32 = zext i32 %call31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %call31, label %if.end28.sw.epilog_crit_edge [
    i32 0, label %if.end28.sw.bb_crit_edge
    i32 1, label %if.end28.sw.bb_crit_edge114
    i32 2, label %sw.bb33
    i32 3, label %sw.bb38
  ]

if.end28.sw.bb_crit_edge114:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end28.sw.bb_crit_edge:                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end28.sw.epilog_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end28.sw.bb_crit_edge, %if.end28.sw.bb_crit_edge114
  %ht = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 760
  %is_40mhz = getelementptr inbounds %struct.anon.133, ptr %ht, i32 0, i32 3
  %33 = ptrtoint ptr %is_40mhz to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %is_40mhz, align 1
  %extension_chan_offset = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 761
  %34 = ptrtoint ptr %extension_chan_offset to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %extension_chan_offset, align 4
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %ht34 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 760
  %extension_chan_offset35 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 761
  %35 = ptrtoint ptr %extension_chan_offset35 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 3, ptr %extension_chan_offset35, align 4
  %is_40mhz37 = getelementptr inbounds %struct.anon.133, ptr %ht34, i32 0, i32 3
  %36 = ptrtoint ptr %is_40mhz37 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %is_40mhz37, align 1
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %ht39 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 760
  %extension_chan_offset40 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 761
  %37 = ptrtoint ptr %extension_chan_offset40 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %extension_chan_offset40, align 4
  %is_40mhz42 = getelementptr inbounds %struct.anon.133, ptr %ht39, i32 0, i32 3
  %38 = ptrtoint ptr %is_40mhz42 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %is_40mhz42, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb38, %sw.bb33, %sw.bb, %if.end28.sw.epilog_crit_edge
  %staging = getelementptr inbounds %struct.iwl_rxon_context, ptr %contexts, i32 0, i32 15
  %channel43 = getelementptr inbounds %struct.iwl_rxon_cmd, ptr %staging, i32 0, i32 14
  %39 = ptrtoint ptr %channel43 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %channel43, align 2
  %41 = tail call i16 @llvm.bswap.i16(i16 %40)
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %25)
  %cmp46.not = icmp eq i16 %41, %25
  br i1 %cmp46.not, label %sw.epilog.if.end50_crit_edge, label %if.then48

sw.epilog.if.end50_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then48:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.iwl_rxon_cmd, ptr %staging, i32 0, i32 12
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 0, ptr %flags, align 2
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %sw.epilog.if.end50_crit_edge
  tail call void @iwl_set_rxon_channel(ptr noundef %op_mode_specific, ptr noundef %3, ptr noundef %contexts) #7
  tail call void @iwl_set_rxon_ht(ptr noundef %op_mode_specific, ptr noundef %current_ht_config) #7
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %3, align 4
  %45 = ptrtoint ptr %contexts to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %contexts, align 4
  tail call void @iwl_set_flags_for_band(ptr noundef %op_mode_specific, ptr noundef %contexts, i32 noundef %44, ptr noundef %46) #7
  tail call void @_set_bit(i32 noundef 11, ptr noundef %status.i) #7
  %47 = tail call i16 @llvm.bswap.i16(i16 %25)
  %switch_channel = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 840
  %48 = ptrtoint ptr %switch_channel to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %switch_channel, align 4
  %49 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lib, align 8
  %set_channel_switch54 = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %set_channel_switch54 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %set_channel_switch54, align 4
  %call55 = tail call i32 %52(ptr noundef %op_mode_specific, ptr noundef %ch_switch) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end50.out_crit_edge, label %if.then57

if.end50.out_crit_edge:                           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then57:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %status.i) #7
  %53 = ptrtoint ptr %switch_channel to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %switch_channel, align 4
  %54 = ptrtoint ptr %contexts to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %contexts, align 4
  tail call void @ieee80211_chswitch_done(ptr noundef %55, i1 noundef zeroext false) #7
  br label %out

out:                                              ; preds = %if.then57, %if.end50.out_crit_edge, %if.end23.out_crit_edge, %if.end20.out_crit_edge, %if.end16.out_crit_edge, %lor.lhs.false11.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %57, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_channel_switch, ptr noundef nonnull @.str.5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwlagn_mac_event_callback(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, ptr nocapture noundef readonly %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %5, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_event_callback, ptr noundef nonnull @.str.2) #7
  %lib = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 5
  %6 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lib, align 8
  %bt_params = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %bt_params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bt_params, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %do.end.do.end22_crit_edge, label %land.lhs.true

do.end.do.end22_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22

land.lhs.true:                                    ; preds = %do.end
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not = icmp eq i8 %11, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end22_crit_edge, label %if.then8

land.lhs.true.do.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22

if.then8:                                         ; preds = %land.lhs.true
  %u = getelementptr inbounds %struct.ieee80211_event, ptr %event, i32 0, i32 1
  %12 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %u, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %13, label %if.then8.if.end17_crit_edge [
    i32 1, label %if.then8.if.end17.sink.split_crit_edge
    i32 0, label %if.then14
  ]

if.then8.if.end17.sink.split_crit_edge:           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.sink.split

if.then8.if.end17_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then14:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.sink.split

if.end17.sink.split:                              ; preds = %if.then14, %if.then8.if.end17.sink.split_crit_edge
  %.sink = phi i8 [ 0, %if.then14 ], [ 1, %if.then8.if.end17.sink.split_crit_edge ]
  %bt_enable_pspoll15 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2585
  %15 = ptrtoint ptr %bt_enable_pspoll15 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink, ptr %bt_enable_pspoll15, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %if.then8.if.end17_crit_edge
  %workqueue = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 88
  %16 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %workqueue, align 4
  %bt_runtime_config = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2701
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %bt_runtime_config) #7
  br label %do.end30

do.end22:                                         ; preds = %land.lhs.true.do.end22_crit_edge, %do.end.do.end22_crit_edge
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %19, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_event_callback, ptr noundef nonnull @.str.47) #7
  br label %do.end30

do.end30:                                         ; preds = %do.end22, %if.end17
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %21, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_event_callback, ptr noundef nonnull @.str.5) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iwl_alloc_all() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ieee80211_alloc_hw_nm(i32 noundef 11700, ptr noundef nonnull @iwlagn_hw_ops, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %hw2 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 84
  %2 = ptrtoint ptr %hw2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %hw2, align 4
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwlagn_tx_skb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwlagn_led_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwlagn_alloc_bcast_station(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_dealloc_bcast_stations(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_run_init_ucode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_load_ucode_wait_alive(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_alive_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_cancel_deferred_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwlagn_suspend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwlagn_prepare_restart(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_restart_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwlagn_hw_valid_rtc_data_addr(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_report_wowlan_wakeup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_init_notification_wait(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @iwl_resume_status_fn(ptr nocapture noundef readnone %notif_wait, ptr nocapture noundef readonly %pkt, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %pkt, align 1
  %2 = and i32 %1, -12648448
  call void @__sanitizer_cov_trace_const_cmp4(i32 872480768, i32 %2)
  %cmp.not = icmp eq i32 %2, 872480768
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %6, i32 noundef 0, ptr noundef nonnull @.str.16) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cmd = getelementptr inbounds %struct.iwl_resume_data, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmd, align 4
  %data5 = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %8, ptr %data5, i32 304)
  %valid = getelementptr inbounds %struct.iwl_resume_data, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %valid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_dvm_send_cmd_pdu(ptr noundef, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_wait_notification(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_connection_init_rx_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwlagn_set_rxon_chain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_resume_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_setup_interface(ptr noundef %priv, ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !152

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1221, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 8
  %iw_mode = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 69
  %5 = ptrtoint ptr %iw_mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %iw_mode, align 4
  %is_active = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 5
  %6 = ptrtoint ptr %is_active to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %is_active, align 2
  tail call void @iwl_connection_init_rx_config(ptr noundef %priv, ptr noundef %ctx) #7
  tail call void @iwlagn_set_rxon_chain(ptr noundef %priv, ptr noundef %ctx) #7
  %call.i72 = tail call i32 @iwlagn_commit_rxon(ptr noundef %priv, ptr noundef %ctx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool26.not = icmp eq i32 %call.i72, 0
  br i1 %tobool26.not, label %if.end32, label %if.then27

if.then27:                                        ; preds = %if.end
  %always_active = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 4
  %7 = ptrtoint ptr %always_active to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %always_active, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool28.not = icmp eq i8 %8, 0
  br i1 %tobool28.not, label %if.then29, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then29:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %is_active to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %is_active, align 2
  br label %cleanup

if.end32:                                         ; preds = %if.end
  %lib = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 4
  %10 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lib, align 8
  %bt_params = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %bt_params to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bt_params, align 4
  %tobool33.not = icmp eq ptr %13, null
  br i1 %tobool33.not, label %if.end32.if.end41_crit_edge, label %land.lhs.true

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end32
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool36.not = icmp eq i8 %15, 0
  br i1 %tobool36.not, label %land.lhs.true.if.end41_crit_edge, label %land.lhs.true37

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

land.lhs.true37:                                  ; preds = %land.lhs.true
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp39 = icmp eq i32 %17, 1
  br i1 %cmp39, label %if.then40, label %land.lhs.true37.if.end41_crit_edge

land.lhs.true37.if.end41_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then40:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  %bt_traffic_load = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 85
  %18 = ptrtoint ptr %bt_traffic_load to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %bt_traffic_load, align 2
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %land.lhs.true37.if.end41_crit_edge, %land.lhs.true.if.end41_crit_edge, %if.end32.if.end41_crit_edge
  %arrayidx = getelementptr %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 2, i32 0
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %arrayidx43 = getelementptr %struct.ieee80211_vif, ptr %1, i32 0, i32 7, i32 0
  %21 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx43, align 1
  %arrayidx.1 = getelementptr %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.1, align 1
  %arrayidx43.1 = getelementptr %struct.ieee80211_vif, ptr %1, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %arrayidx43.1 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx43.1, align 1
  %arrayidx.2 = getelementptr %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.2, align 1
  %arrayidx43.2 = getelementptr %struct.ieee80211_vif, ptr %1, i32 0, i32 7, i32 2
  %27 = ptrtoint ptr %arrayidx43.2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx43.2, align 1
  %arrayidx.3 = getelementptr %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 2, i32 3
  %28 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.3, align 1
  %arrayidx43.3 = getelementptr %struct.ieee80211_vif, ptr %1, i32 0, i32 7, i32 3
  %30 = ptrtoint ptr %arrayidx43.3 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx43.3, align 1
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp45 = icmp eq i32 %32, 3
  br i1 %cmp45, label %if.then46, label %if.else

if.then46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %mcast_queue = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 1
  %33 = ptrtoint ptr %mcast_queue to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %mcast_queue, align 4
  %cab_queue = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 6
  %35 = ptrtoint ptr %cab_queue to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %cab_queue, align 1
  br label %cleanup

if.else:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %cab_queue47 = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 6
  %36 = ptrtoint ptr %cab_queue47 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %cab_queue47, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then46, %if.then29, %if.then27.cleanup_crit_edge
  ret i32 %call.i72
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwlagn_commit_rxon(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_teardown_interface(ptr noundef %priv, ptr noundef readonly %vif, i1 noundef zeroext %mode_change) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !152

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1352, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %scan_vif = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 42
  %3 = ptrtoint ptr %scan_vif to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %scan_vif, align 4
  %cmp25 = icmp eq ptr %4, %vif
  br i1 %cmp25, label %if.then26, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iwl_scan_cancel_timeout(ptr noundef %priv, i32 noundef 200) #7
  tail call void @iwl_force_scan_end(ptr noundef %priv) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end.if.end27_crit_edge
  br i1 %mode_change, label %if.end27.if.end34_crit_edge, label %if.then29

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then29:                                        ; preds = %if.end27
  tail call void @iwl_connection_init_rx_config(ptr noundef %priv, ptr noundef %1) #7
  tail call void @iwlagn_set_rxon_chain(ptr noundef %priv, ptr noundef %1) #7
  %call.i49 = tail call i32 @iwlagn_commit_rxon(ptr noundef %priv, ptr noundef %1) #7
  %always_active = getelementptr inbounds %struct.iwl_rxon_context, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %always_active to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %always_active, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool31.not = icmp eq i8 %6, 0
  br i1 %tobool31.not, label %if.then32, label %if.then29.if.end34_crit_edge

if.then29.if.end34_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %is_active = getelementptr inbounds %struct.iwl_rxon_context, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %is_active to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %is_active, align 2
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.then29.if.end34_crit_edge, %if.end27.if.end34_crit_edge
  %8 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp35 = icmp eq i32 %9, 1
  br i1 %cmp35, label %if.then36, label %if.end34.if.end37_crit_edge

if.end34.if.end37_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %last_bt_traffic_load = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 86
  %10 = ptrtoint ptr %last_bt_traffic_load to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %last_bt_traffic_load, align 1
  %bt_traffic_load = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 85
  %12 = ptrtoint ptr %bt_traffic_load to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %bt_traffic_load, align 2
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end34.if.end37_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_scan_cancel_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_force_scan_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_set_default_wep_key(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_set_dynamic_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_remove_default_wep_key(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_remove_dynamic_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_update_tkip_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_scan_initiate(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_block_awake(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_send_add_sta(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwlagn_mac_sta_add(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %vif, ptr noundef %sta) unnamed_addr #0 align 64 {
entry:
  %sta_id = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 0, i32 1
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %drv_priv3 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sta_id) #7
  %4 = ptrtoint ptr %sta_id to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %sta_id, align 1, !annotation !153
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %6, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_sta_add, ptr noundef nonnull @.str.27, ptr noundef %addr) #7
  %sta_id9 = getelementptr inbounds %struct.iwl_station_priv, ptr %drv_priv, i32 0, i32 7
  %7 = ptrtoint ptr %sta_id9 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %sta_id9, align 1
  %pending_frames = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 7, i32 27
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_frames, i32 noundef 4) #7
  %8 = ptrtoint ptr %pending_frames to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %pending_frames, align 4
  %9 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp11 = icmp eq i32 %10, 3
  br i1 %cmp11, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %client = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 7, i32 27, i32 1
  %11 = ptrtoint ptr %client to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %client, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %drv_priv3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drv_priv3, align 4
  %call = call i32 @iwl_add_station_common(ptr noundef %op_mode_specific, ptr noundef %13, ptr noundef %addr, i1 noundef zeroext %cmp, ptr noundef %sta, ptr noundef nonnull %sta_id) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool14.not = icmp eq i32 %call, 0
  br i1 %tobool14.not, label %if.end25, label %do.end19

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %15, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef %addr, i32 noundef %call) #7
  br label %cleanup

if.end25:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %sta_id to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sta_id, align 1
  %18 = ptrtoint ptr %sta_id9 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %sta_id9, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sta_id) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_rs_rate_init(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_sta_update_ht(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_add_station_common(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_deactivate_station(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_remove_station(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_sta_rx_agg_start(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_sta_rx_agg_stop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwlagn_tx_agg_start(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwlagn_tx_agg_flush(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwlagn_tx_agg_stop(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_send_lq_cmd(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwlagn_tx_agg_oper(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwlagn_txfifo_flush(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cfg80211_get_chandef_type(ptr nocapture noundef readonly %chandef) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %width = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 1
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %1, label %do.end [
    i32 0, label %entry.return_crit_edge
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %center_freq1 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 2
  %3 = ptrtoint ptr %center_freq1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %center_freq1, align 4
  %5 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %center_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %8)
  %cmp = icmp ugt i32 %4, %8
  %. = select i1 %cmp, i32 3, i32 2
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 778, i32 noundef 9, ptr noundef null) #7
  br label %return

return:                                           ; preds = %do.end, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %sw.bb1 ], [ %1, %entry.return_crit_edge ], [ %., %sw.bb2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_set_rxon_channel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_set_rxon_ht(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_set_flags_for_band(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_alloc_hw_nm(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !56, !58, !60, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !86, !88, !89, !91, !93, !94, !96, !98, !100, !102, !104, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !134, !136, !138, !140}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147, !148, !149}
!llvm.ident = !{!150}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 85, i32 31}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 202, i32 3}
!4 = !{ptr @iwlagn_hw_ops, !5, !"iwlagn_hw_ops", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 1571, i32 28}
!6 = !{ptr @iwlagn_iface_combinations_dualmode, !7, !"iwlagn_iface_combinations_dualmode", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 60, i32 1}
!8 = !{ptr @iwlagn_sta_ap_limits, !9, !"iwlagn_sta_ap_limits", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 41, i32 43}
!10 = !{ptr @iwlagn_2sta_limits, !11, !"iwlagn_2sta_limits", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 52, i32 43}
!12 = !{ptr @__func__.iwlagn_mac_start, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 283, i32 2}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 292, i32 2}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 295, i32 6}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 301, i32 2}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 228, i32 3}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 242, i32 3}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 248, i32 3}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 260, i32 3}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 274, i32 2}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/../iwl-trans.h", i32 1045, i32 2}
!33 = !{ptr @__func__.iwlagn_mac_stop, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 309, i32 2}
!35 = !{ptr @__func__.iwlagn_mac_suspend, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 365, i32 2}
!37 = !{ptr @iwlagn_mac_resume.status_cmd, !38, !"status_cmd", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 434, i32 19}
!39 = !{ptr @__func__.iwlagn_mac_resume, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 450, i32 2}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 461, i32 3}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 471, i32 3}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 479, i32 3}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 526, i32 3}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 411, i32 3}
!51 = !{ptr @__func__.iwlagn_mac_add_interface, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 1271, i32 2}
!53 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 1277, i32 3}
!56 = !{ptr @__func__.iwlagn_mac_change_interface, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 1407, i32 2}
!58 = !{ptr @__func__.iwlagn_mac_remove_interface, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 1382, i32 2}
!60 = !{ptr @__func__.iwlagn_configure_filter, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 1046, i32 2}
!62 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @__func__.iwlagn_mac_set_key, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 607, i32 2}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 610, i32 3}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 679, i32 3}
!69 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 687, i32 3}
!71 = !{ptr @__func__.iwlagn_mac_set_rekey_data, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 336, i32 2}
!73 = !{ptr @__func__.iwlagn_mac_hw_scan, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 1488, i32 2}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 1500, i32 3}
!77 = !{ptr @__func__.iwlagn_mac_sta_notify, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 1547, i32 2}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/agn.h", i32 281, i32 6}
!81 = !{ptr @__func__.iwlagn_mac_sta_state, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 846, i32 2}
!83 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.26, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 893, i32 3}
!86 = !{ptr @__func__.iwlagn_mac_sta_add, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 784, i32 2}
!88 = !{ptr @.str.27, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.28, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 795, i32 3}
!91 = !{ptr @__func__.iwlagn_mac_sta_remove, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 814, i32 2}
!93 = !{ptr @.str.29, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 827, i32 4}
!96 = !{ptr @__func__.iwlagn_mac_conf_tx, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 1167, i32 2}
!98 = !{ptr @.str.31, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 1170, i32 3}
!100 = !{ptr @.str.32, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 1175, i32 3}
!102 = !{ptr @__func__.iwlagn_mac_ampdu_action, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 712, i32 2}
!104 = !{ptr @.str.33, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.34, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 725, i32 3}
!107 = !{ptr @.str.35, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 729, i32 3}
!109 = !{ptr @.str.36, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 737, i32 3}
!111 = !{ptr @.str.37, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 742, i32 3}
!113 = !{ptr @.str.38, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 746, i32 3}
!115 = !{ptr @.str.39, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 750, i32 4}
!117 = !{ptr @__func__.iwlagn_mac_flush, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 1087, i32 2}
!119 = !{ptr @.str.40, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 1090, i32 3}
!121 = !{ptr @.str.41, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 1094, i32 3}
!123 = !{ptr @.str.42, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 1103, i32 3}
!125 = !{ptr @.str.43, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 1106, i32 4}
!127 = !{ptr @.str.44, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 1111, i32 2}
!129 = distinct !{null, !130, !"__already_done", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/../iwl-trans.h", i32 1307, i32 6}
!131 = !{ptr @.str.45, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/../iwl-trans.h", i32 1312, i32 3}
!133 = !{ptr @__func__.iwl_trans_wait_tx_queues_empty, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @__func__.iwlagn_mac_channel_switch, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 947, i32 2}
!136 = !{ptr @.str.46, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../include/net/cfg80211.h", i32 778, i32 3}
!138 = !{ptr @__func__.iwlagn_mac_event_callback, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 1127, i32 2}
!140 = !{ptr @.str.47, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/mac80211.c", i32 1138, i32 3}
!142 = !{i32 1, !"wchar_size", i32 2}
!143 = !{i32 1, !"min_enum_size", i32 4}
!144 = !{i32 8, !"branch-target-enforcement", i32 0}
!145 = !{i32 8, !"sign-return-address", i32 0}
!146 = !{i32 8, !"sign-return-address-all", i32 0}
!147 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!148 = !{i32 7, !"uwtable", i32 1}
!149 = !{i32 7, !"frame-pointer", i32 2}
!150 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!151 = !{i8 0, i8 2}
!152 = !{!"branch_weights", i32 1, i32 2000}
!153 = !{!"auto-init"}
!154 = !{!"branch_weights", i32 2000, i32 1}
