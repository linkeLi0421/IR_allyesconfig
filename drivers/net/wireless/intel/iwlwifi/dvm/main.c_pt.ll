; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/dvm/main.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/dvm/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_bt_cmd = type { i8, i8, i8, i8, i32, i32 }
%struct.iwl_mod_params = type { i32, i32, i32, i8, i8, i32, i8, i32, i32, ptr, i32, i8, i8, i8, i8 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.85 }
%struct.atomic_t = type { i32 }
%union.anon.85 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iwl_op_mode_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iwl_dvm_cfg = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.iwl_hcmd_arr = type { ptr, i32 }
%struct.lock_class_key = type { %union.anon.5 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iwl_hcmd_names = type { i8, ptr }
%struct.anon.191 = type { ptr, i8 }
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
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
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
%struct.iwl_tx_cmd = type { i16, i16, i32, %struct.iwl_dram_scratch, i32, i8, i8, i8, i8, [16 x i8], i16, i16, %union.anon.143, i32, i8, i8, i8, i8, %union.anon.144, i16, %union.anon.145 }
%struct.iwl_dram_scratch = type { i8, i8, i16 }
%union.anon.143 = type { i32 }
%union.anon.144 = type { i16 }
%union.anon.145 = type { %struct.anon.148 }
%struct.anon.148 = type { %struct.anon.149, [0 x %struct.ieee80211_hdr] }
%struct.anon.149 = type {}
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.iwl_tx_beacon_cmd = type { %struct.iwl_tx_cmd, i16, i8, i8, [0 x %struct.ieee80211_hdr] }
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
%struct.iwl_statistics_cmd = type { i32 }
%struct.iwl_ct_kill_config = type { i32, i32, i32 }
%struct.iwl_ct_kill_throttling_config = type { i32, i32, i32 }
%struct.iwl_tx_ant_config_cmd = type { i32 }
%struct.iwl_calib_cfg_cmd = type { %struct.iwl_calib_cfg_status_s, %struct.iwl_calib_cfg_status_s, i32 }
%struct.iwl_calib_cfg_status_s = type { %struct.iwl_calib_cfg_elmnt_s, %struct.iwl_calib_cfg_elmnt_s, i32 }
%struct.iwl_calib_cfg_elmnt_s = type { i32, i32, i32, i32, i32 }
%struct.iwl_dvm_bt_params = type { i8, i8, i32, i16, i8, i8 }
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
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.iwl_trans_config = type { ptr, i8, i8, i32, ptr, i32, i32, i8, i8, ptr, i32, i8, i8 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.129, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.129 = type { i32, i16 }
%struct.iwl_op_mode = type { ptr, [0 x i8] }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.iwl_base_params = type { i32, i16, i16, i8, i16, i32, i8, i8 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.103, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.iwl_cfg = type { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }
%struct.iwl_error_event_table = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.190 = type { i32, i32, i32, i32 }

@__UNIQUE_ID_description406 = internal constant [68 x i8] c"iwldvm.description=Intel(R) Wireless WiFi Link AGN driver for Linux\00", section ".modinfo", align 1
@__UNIQUE_ID_file407 = internal constant [58 x i8] c"iwldvm.file=drivers/net/wireless/intel/iwlwifi/dvm/iwldvm\00", section ".modinfo", align 1
@__UNIQUE_ID_license408 = internal constant [19 x i8] c"iwldvm.license=GPL\00", section ".modinfo", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/intel/iwlwifi/dvm/main.c\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"trying to build beacon w/o beacon context!\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.iwl_alive_start = private unnamed_addr constant [16 x i8] c"iwl_alive_start\00", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Runtime Alive received.\0A\00", [39 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ALIVE processing complete.\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.iwl_down = private unnamed_addr constant [9 x i8] c"iwl_down\00", align 1
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"iwlwifi is going down\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Invalid event log pointer 0x%08X for %s uCode\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Init\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RT\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Log capacity %d is bogus, limit to %d entries\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Log write index %d is bogus, limit to %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Start IWL Event Log Dump: nothing in log\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Start IWL Event Log Dump: display last %u entries\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.iwlagn_lift_passive_no_rx = private unnamed_addr constant [26 x i8] c"iwlagn_lift_passive_no_rx\00", align 1
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Wake queue %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Don't wake queue %d\0A\00", [43 x i8] zeroinitializer }, align 32
@__initcall__kmod_iwldvm__502_2150_iwl_init6 = internal global ptr @iwl_init, section ".initcall6.init", align 4
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iwldvm\00", [25 x i8] zeroinitializer }, align 32
@__exitcall_iwl_exit = internal global ptr @iwl_exit, section ".exitcall.exit", align 4
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to find TIM Element in beacon\0A\00", [58 x i8] zeroinitializer }, align 32
@__const.iwl_send_bt_config.bt_cmd = private unnamed_addr constant %struct.iwl_bt_cmd { i8 0, i8 30, i8 5, i8 0, i32 0, i32 0 }, align 1
@iwlwifi_mod_params = external dso_local local_unnamed_addr global %struct.iwl_mod_params, align 4
@__func__.iwl_send_bt_config = private unnamed_addr constant [19 x i8] c"iwl_send_bt_config\00", align 1
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BT coex %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to send BT Coex Config\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.iwlagn_send_tx_ant_config = private unnamed_addr constant [26 x i8] c"iwlagn_send_tx_ant_config\00", align 1
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"select valid tx ant: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"TX_ANT_CONFIGURATION_CMD not supported\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"REPLY_CT_KILL_CONFIG_CMD failed\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.iwl_rf_kill_ct_config = private unnamed_addr constant [22 x i8] c"iwl_rf_kill_ct_config\00", align 1
@.str.23 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"REPLY_CT_KILL_CONFIG_CMD succeeded, critical temperature enter is %d,exit is %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"REPLY_CT_KILL_CONFIG_CMD succeeded, critical temperature is %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/wireless/intel/iwlwifi/dvm/../iwl-trans.h\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EVT_LOG:0x%08x:%04u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"EVT_LOGT:%010u:0x%08x:%04u\0A\00", [36 x i8] zeroinitializer }, align 32
@__tracepoint_iwlwifi_dev_ucode_event = external dso_local global %struct.tracepoint, align 4
@.str.28 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"drivers/net/wireless/intel/iwlwifi/dvm/../iwl-devtrace-iwlwifi.h\00", [63 x i8] zeroinitializer }, align 32
@trace_iwlwifi_dev_ucode_event.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@iwl_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str, i32 2138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013iwldvm: Unable to register rate control algorithm: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iwl_init\00", [23 x i8] zeroinitializer }, align 32
@iwl_init._entry_ptr = internal global ptr @iwl_init._entry, section ".printk_index", align 4
@iwl_dvm_ops = internal constant { %struct.iwl_op_mode_ops, [40 x i8] } { %struct.iwl_op_mode_ops { ptr @iwl_op_mode_dvm_start, ptr @iwl_op_mode_dvm_stop, ptr @iwl_rx_dispatch, ptr null, ptr null, ptr @iwl_stop_sw_queue, ptr @iwl_wake_sw_queue, ptr @iwl_set_hw_rfkill_state, ptr @iwl_free_skb, ptr @iwl_nic_error, ptr @iwl_cmd_queue_full, ptr @iwl_nic_config, ptr @iwl_wimax_active, ptr null }, [40 x i8] zeroinitializer }, align 32
@iwl_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str, i32 2144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013iwldvm: Unable to register op_mode: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@iwl_init._entry_ptr.35 = internal global ptr @iwl_init._entry.33, section ".printk_index", align 4
@iwl_op_mode_dvm_start.no_reclaim_cmds = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\C0\C1\C5\9D\1C", [27 x i8] zeroinitializer }, align 32
@iwl_op_mode_dvm_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str, i32 1250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013iwldvm: %s: Cannot allocate network device\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iwl_op_mode_dvm_start\00", [42 x i8] zeroinitializer }, align 32
@iwl_op_mode_dvm_start._entry_ptr = internal global ptr @iwl_op_mode_dvm_start._entry, section ".printk_index", align 4
@iwl_dvm_1000_cfg = external dso_local constant %struct.iwl_dvm_cfg, align 4
@iwl_dvm_2000_cfg = external dso_local constant %struct.iwl_dvm_cfg, align 4
@iwl_dvm_105_cfg = external dso_local constant %struct.iwl_dvm_cfg, align 4
@iwl_dvm_2030_cfg = external dso_local constant %struct.iwl_dvm_cfg, align 4
@iwl_dvm_5000_cfg = external dso_local constant %struct.iwl_dvm_cfg, align 4
@iwl_dvm_5150_cfg = external dso_local constant %struct.iwl_dvm_cfg, align 4
@iwl_dvm_6000_cfg = external dso_local constant %struct.iwl_dvm_cfg, align 4
@iwl_dvm_6005_cfg = external dso_local constant %struct.iwl_dvm_cfg, align 4
@iwl_dvm_6050_cfg = external dso_local constant %struct.iwl_dvm_cfg, align 4
@iwl_dvm_6030_cfg = external dso_local constant %struct.iwl_dvm_cfg, align 4
@iwl_op_mode_dvm_start._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str, i32 1324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013iwldvm: Unsupported amsdu_size: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@iwl_op_mode_dvm_start._entry_ptr.40 = internal global ptr @iwl_op_mode_dvm_start._entry.38, section ".printk_index", align 4
@iwl_dvm_groups = internal constant { [1 x %struct.iwl_hcmd_arr], [24 x i8] } { [1 x %struct.iwl_hcmd_arr] [%struct.iwl_hcmd_arr { ptr @iwl_dvm_cmd_names, i32 76 }], [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"*** LOAD DRIVER ***\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"BT channel inhibition is %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"On\00", [29 x i8] zeroinitializer }, align 32
@iwl_op_mode_dvm_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&priv->statistics.lock\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Detected %s, REV=0x%X\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable to init EEPROM\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MAC address: %pM\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Your EEPROM disabled PAN\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@iwl_dvm_cmd_names = internal constant { [76 x %struct.iwl_hcmd_names], [128 x i8] } { [76 x %struct.iwl_hcmd_names] [%struct.iwl_hcmd_names { i8 1, ptr @.str.51 }, %struct.iwl_hcmd_names { i8 2, ptr @.str.52 }, %struct.iwl_hcmd_names { i8 3, ptr @.str.53 }, %struct.iwl_hcmd_names { i8 16, ptr @.str.54 }, %struct.iwl_hcmd_names { i8 17, ptr @.str.55 }, %struct.iwl_hcmd_names { i8 19, ptr @.str.56 }, %struct.iwl_hcmd_names { i8 20, ptr @.str.57 }, %struct.iwl_hcmd_names { i8 24, ptr @.str.58 }, %struct.iwl_hcmd_names { i8 25, ptr @.str.59 }, %struct.iwl_hcmd_names { i8 26, ptr @.str.60 }, %struct.iwl_hcmd_names { i8 28, ptr @.str.61 }, %struct.iwl_hcmd_names { i8 30, ptr @.str.62 }, %struct.iwl_hcmd_names { i8 32, ptr @.str.63 }, %struct.iwl_hcmd_names { i8 72, ptr @.str.64 }, %struct.iwl_hcmd_names { i8 78, ptr @.str.65 }, %struct.iwl_hcmd_names { i8 90, ptr @.str.66 }, %struct.iwl_hcmd_names { i8 91, ptr @.str.67 }, %struct.iwl_hcmd_names { i8 92, ptr @.str.68 }, %struct.iwl_hcmd_names { i8 98, ptr @.str.69 }, %struct.iwl_hcmd_names { i8 101, ptr @.str.70 }, %struct.iwl_hcmd_names { i8 102, ptr @.str.71 }, %struct.iwl_hcmd_names { i8 103, ptr @.str.72 }, %struct.iwl_hcmd_names { i8 113, ptr @.str.73 }, %struct.iwl_hcmd_names { i8 114, ptr @.str.74 }, %struct.iwl_hcmd_names { i8 115, ptr @.str.75 }, %struct.iwl_hcmd_names { i8 116, ptr @.str.76 }, %struct.iwl_hcmd_names { i8 117, ptr @.str.77 }, %struct.iwl_hcmd_names { i8 119, ptr @.str.78 }, %struct.iwl_hcmd_names { i8 122, ptr @.str.79 }, %struct.iwl_hcmd_names { i8 123, ptr @.str.80 }, %struct.iwl_hcmd_names { i8 -128, ptr @.str.81 }, %struct.iwl_hcmd_names { i8 -127, ptr @.str.82 }, %struct.iwl_hcmd_names { i8 -126, ptr @.str.83 }, %struct.iwl_hcmd_names { i8 -125, ptr @.str.84 }, %struct.iwl_hcmd_names { i8 -124, ptr @.str.85 }, %struct.iwl_hcmd_names { i8 -112, ptr @.str.86 }, %struct.iwl_hcmd_names { i8 -111, ptr @.str.87 }, %struct.iwl_hcmd_names { i8 -108, ptr @.str.88 }, %struct.iwl_hcmd_names { i8 -107, ptr @.str.89 }, %struct.iwl_hcmd_names { i8 -106, ptr @.str.90 }, %struct.iwl_hcmd_names { i8 -105, ptr @.str.91 }, %struct.iwl_hcmd_names { i8 -104, ptr @.str.92 }, %struct.iwl_hcmd_names { i8 -104, ptr @.str.93 }, %struct.iwl_hcmd_names { i8 -103, ptr @.str.94 }, %struct.iwl_hcmd_names { i8 -101, ptr @.str.95 }, %struct.iwl_hcmd_names { i8 -100, ptr @.str.96 }, %struct.iwl_hcmd_names { i8 -99, ptr @.str.97 }, %struct.iwl_hcmd_names { i8 -96, ptr @.str.98 }, %struct.iwl_hcmd_names { i8 -95, ptr @.str.99 }, %struct.iwl_hcmd_names { i8 -94, ptr @.str.100 }, %struct.iwl_hcmd_names { i8 -92, ptr @.str.101 }, %struct.iwl_hcmd_names { i8 -88, ptr @.str.102 }, %struct.iwl_hcmd_names { i8 -80, ptr @.str.103 }, %struct.iwl_hcmd_names { i8 -78, ptr @.str.104 }, %struct.iwl_hcmd_names { i8 -77, ptr @.str.105 }, %struct.iwl_hcmd_names { i8 -76, ptr @.str.106 }, %struct.iwl_hcmd_names { i8 -74, ptr @.str.107 }, %struct.iwl_hcmd_names { i8 -73, ptr @.str.108 }, %struct.iwl_hcmd_names { i8 -72, ptr @.str.109 }, %struct.iwl_hcmd_names { i8 -71, ptr @.str.110 }, %struct.iwl_hcmd_names { i8 -68, ptr @.str.111 }, %struct.iwl_hcmd_names { i8 -67, ptr @.str.112 }, %struct.iwl_hcmd_names { i8 -64, ptr @.str.113 }, %struct.iwl_hcmd_names { i8 -63, ptr @.str.114 }, %struct.iwl_hcmd_names { i8 -61, ptr @.str.115 }, %struct.iwl_hcmd_names { i8 -59, ptr @.str.116 }, %struct.iwl_hcmd_names { i8 -52, ptr @.str.117 }, %struct.iwl_hcmd_names { i8 -51, ptr @.str.118 }, %struct.iwl_hcmd_names { i8 -50, ptr @.str.119 }, %struct.iwl_hcmd_names { i8 -45, ptr @.str.120 }, %struct.iwl_hcmd_names { i8 -32, ptr @.str.121 }, %struct.iwl_hcmd_names { i8 -31, ptr @.str.122 }, %struct.iwl_hcmd_names { i8 -30, ptr @.str.123 }, %struct.iwl_hcmd_names { i8 -29, ptr @.str.124 }, %struct.iwl_hcmd_names { i8 -28, ptr @.str.125 }, %struct.iwl_hcmd_names { i8 -27, ptr @.str.126 }], [128 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"REPLY_ALIVE\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"REPLY_ERROR\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"REPLY_ECHO\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"REPLY_RXON\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"REPLY_RXON_ASSOC\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"REPLY_QOS_PARAM\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"REPLY_RXON_TIMING\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"REPLY_ADD_STA\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"REPLY_REMOVE_STA\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"REPLY_REMOVE_ALL_STA\00", [43 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"REPLY_TX\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"REPLY_TXFIFO_FLUSH\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"REPLY_WEPKEY\00", [19 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"REPLY_LEDS_CMD\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"REPLY_TX_LINK_QUALITY_CMD\00", [38 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"COEX_PRIORITY_TABLE_CMD\00", [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"COEX_MEDIUM_NOTIFICATION\00", [39 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"COEX_EVENT_CMD\00", [17 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TEMPERATURE_NOTIFICATION\00", [39 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CALIBRATION_CFG_CMD\00", [44 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CALIBRATION_RES_NOTIFICATION\00", [35 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CALIBRATION_COMPLETE_NOTIFICATION\00", [62 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"REPLY_QUIET_CMD\00", [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"REPLY_CHANNEL_SWITCH\00", [43 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CHANNEL_SWITCH_NOTIFICATION\00", [36 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"REPLY_SPECTRUM_MEASUREMENT_CMD\00", [33 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SPECTRUM_MEASURE_NOTIFICATION\00", [34 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"POWER_TABLE_CMD\00", [16 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PM_SLEEP_NOTIFICATION\00", [42 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PM_DEBUG_STATISTIC_NOTIFIC\00", [37 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"REPLY_SCAN_CMD\00", [17 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"REPLY_SCAN_ABORT_CMD\00", [43 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SCAN_START_NOTIFICATION\00", [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SCAN_RESULTS_NOTIFICATION\00", [38 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SCAN_COMPLETE_NOTIFICATION\00", [37 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BEACON_NOTIFICATION\00", [44 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"REPLY_TX_BEACON\00", [16 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"WHO_IS_AWAKE_NOTIFICATION\00", [38 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"REPLY_TX_POWER_DBM_CMD\00", [41 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"QUIET_NOTIFICATION\00", [45 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"REPLY_TX_PWR_TABLE_CMD\00", [41 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"REPLY_TX_POWER_DBM_CMD_V1\00", [38 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TX_ANT_CONFIGURATION_CMD\00", [39 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MEASURE_ABORT_NOTIFICATION\00", [37 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"REPLY_BT_CONFIG\00", [16 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"REPLY_STATISTICS_CMD\00", [43 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"STATISTICS_NOTIFICATION\00", [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"REPLY_CARD_STATE_CMD\00", [43 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CARD_STATE_NOTIFICATION\00", [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MISSED_BEACONS_NOTIFICATION\00", [36 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"REPLY_CT_KILL_CONFIG_CMD\00", [39 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SENSITIVITY_CMD\00", [16 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"REPLY_PHY_CALIBRATION_CMD\00", [38 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"REPLY_WIPAN_PARAMS\00", [45 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"REPLY_WIPAN_RXON\00", [47 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"REPLY_WIPAN_RXON_TIMING\00", [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"REPLY_WIPAN_RXON_ASSOC\00", [41 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"REPLY_WIPAN_QOS_PARAM\00", [42 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"REPLY_WIPAN_WEPKEY\00", [45 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"REPLY_WIPAN_P2P_CHANNEL_SWITCH\00", [33 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"REPLY_WIPAN_NOA_NOTIFICATION\00", [35 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"REPLY_WIPAN_DEACTIVATION_COMPLETE\00", [62 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"REPLY_RX_PHY_CMD\00", [47 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"REPLY_RX_MPDU_CMD\00", [46 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"REPLY_RX\00", [23 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"REPLY_COMPRESSED_BA\00", [44 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"REPLY_BT_COEX_PRIO_TABLE\00", [39 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"REPLY_BT_COEX_PROT_ENV\00", [41 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"REPLY_BT_COEX_PROFILE_NOTIF\00", [36 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"REPLY_D3_CONFIG\00", [16 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"REPLY_WOWLAN_PATTERNS\00", [42 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"REPLY_WOWLAN_WAKEUP_FILTER\00", [37 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"REPLY_WOWLAN_TSC_RSC_PARAMS\00", [36 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"REPLY_WOWLAN_TKIP_PARAMS\00", [39 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"REPLY_WOWLAN_KEK_KCK_MATERIAL\00", [34 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"REPLY_WOWLAN_GET_STATUS\00", [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CONFIG_IWLWIFI_DEBUG enabled\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CONFIG_IWLWIFI_DEBUGFS enabled\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"CONFIG_IWLWIFI_DEVICE_TRACING enabled\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.iwl_nvm_check_version = private unnamed_addr constant [22 x i8] c"iwl_nvm_check_version\00", align 1
@.str.130 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"device EEPROM VER=0x%x, CALIB=0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Unsupported (too old) EEPROM VER=0x%x < 0x%x CALIB=0x%x < 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid 11n configuration\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid device sku\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.iwl_eeprom_init_hw_params = private unnamed_addr constant [26 x i8] c"iwl_eeprom_init_hw_params\00", align 1
@.str.134 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Device SKU: 24GHz %s %s, 52GHz %s %s, 11.n %s %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.136 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NOT\00", [28 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Valid Tx ant: 0x%X, Valid Rx ant: 0x%X\0A\00", [56 x i8] zeroinitializer }, align 32
@iwl_init_drv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.139 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&priv->sta_lock\00", [16 x i8] zeroinitializer }, align 32
@iwl_init_drv.__key.140 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.141 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&priv->mutex\00", [19 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iwlwifi\00", [24 x i8] zeroinitializer }, align 32
@iwl_setup_deferred_work.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.143 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&priv->restart)\00", [62 x i8] zeroinitializer }, align 32
@iwl_setup_deferred_work.__key.144 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.145 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&priv->beacon_update)\00", [56 x i8] zeroinitializer }, align 32
@iwl_setup_deferred_work.__key.146 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.147 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&priv->run_time_calib_work)\00", [50 x i8] zeroinitializer }, align 32
@iwl_setup_deferred_work.__key.148 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.149 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&priv->tx_flush)\00", [61 x i8] zeroinitializer }, align 32
@iwl_setup_deferred_work.__key.150 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.151 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&priv->bt_full_concurrency)\00", [50 x i8] zeroinitializer }, align 32
@iwl_setup_deferred_work.__key.152 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.153 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&priv->bt_runtime_config)\00", [52 x i8] zeroinitializer }, align 32
@iwl_setup_deferred_work.__key.154 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.155 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(&priv->statistics_periodic)\00", [35 x i8] zeroinitializer }, align 32
@iwl_setup_deferred_work.__key.156 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.157 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&priv->ucode_trace)\00", [43 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Cannot request restart before registering with mac80211\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"updating beacon w/o beacon context!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"update beacon failed -- keeping old\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.iwl_bg_tx_flush = private unnamed_addr constant [16 x i8] c"iwl_bg_tx_flush\00", align 1
@.str.161 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"device request: flush all tx frames\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.iwl_bg_bt_full_concurrency = private unnamed_addr constant [27 x i8] c"iwl_bg_bt_full_concurrency\00", align 1
@.str.162 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BT coex in %s mode\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"full concurrency\00", [47 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"3-wire\00", [25 x i8] zeroinitializer }, align 32
@__tracepoint_iwlwifi_dev_ucode_cont_event = external dso_local global %struct.tracepoint, align 4
@.str.165 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"drivers/net/wireless/intel/iwlwifi/dvm/../iwl-devtrace-ucode.h\00", [33 x i8] zeroinitializer }, align 32
@trace_iwlwifi_dev_ucode_cont_event.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_iwlwifi_dev_ucode_wrap_event = external dso_local global %struct.tracepoint, align 4
@trace_iwlwifi_dev_ucode_wrap_event.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.iwl_op_mode_dvm_stop = private unnamed_addr constant [21 x i8] c"iwl_op_mode_dvm_stop\00", align 1
@.str.166 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"*** UNLOAD DRIVER ***\0A\00", [41 x i8] zeroinitializer }, align 32
@iwl_stop_sw_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_stop_sw_queue = private unnamed_addr constant [18 x i8] c"iwl_stop_sw_queue\00", align 1
@.str.167 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"queue %d (mac80211 %d) already stopped\0A\00", [56 x i8] zeroinitializer }, align 32
@iwl_wake_sw_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_wake_sw_queue = private unnamed_addr constant [18 x i8] c"iwl_wake_sw_queue\00", align 1
@.str.168 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"queue %d (mac80211 %d) already awake\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Loaded firmware version: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Not valid error log pointer 0x%08X for %s uCode\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Start IWL Error Log Dump:\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Status: 0x%08lX, count: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"0x%08X | %-28s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"0x%08X | uPc\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"0x%08X | branchlink1\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"0x%08X | branchlink2\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"0x%08X | interruptlink1\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"0x%08X | interruptlink2\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"0x%08X | data1\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"0x%08X | data2\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0x%08X | line\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"0x%08X | beacon time\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"0x%08X | tsf low\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"0x%08X | tsf hi\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"0x%08X | time gp1\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"0x%08X | time gp2\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"0x%08X | time gp3\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"0x%08X | uCode version\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"0x%08X | hw version\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"0x%08X | board version\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0x%08X | hcmd\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0x%08X | isr0\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0x%08X | isr1\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0x%08X | isr2\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0x%08X | isr3\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0x%08X | isr4\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"0x%08X | isr_pref\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"0x%08X | wait_event\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"0x%08X | l2p_control\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"0x%08X | l2p_duration\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"0x%08X | l2p_mhvalid\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"0x%08X | l2p_addr_match\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"0x%08X | lmpm_pmg_sel\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"0x%08X | timestamp\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"0x%08X | flow_handler\0A\00", [41 x i8] zeroinitializer }, align 32
@desc_lookup_text = internal constant { [28 x ptr], [48 x i8] } { [28 x ptr] [ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233], [48 x i8] zeroinitializer }, align 32
@advanced_lookup = internal constant { [16 x %struct.anon.191], [32 x i8] } { [16 x %struct.anon.191] [%struct.anon.191 { ptr @.str.210, i8 52 }, %struct.anon.191 { ptr @.str.211, i8 53 }, %struct.anon.191 { ptr @.str.222, i8 55 }, %struct.anon.191 { ptr @.str.213, i8 56 }, %struct.anon.191 { ptr @.str.226, i8 60 }, %struct.anon.191 { ptr @.str.212, i8 61 }, %struct.anon.191 { ptr @.str.234, i8 70 }, %struct.anon.191 { ptr @.str.228, i8 76 }, %struct.anon.191 { ptr @.str.229, i8 84 }, %struct.anon.191 { ptr @.str.235, i8 92 }, %struct.anon.191 { ptr @.str.236, i8 100 }, %struct.anon.191 { ptr @.str.219, i8 102 }, %struct.anon.191 { ptr @.str.220, i8 124 }, %struct.anon.191 { ptr @.str.221, i8 -124 }, %struct.anon.191 { ptr @.str.225, i8 -122 }, %struct.anon.191 { ptr @.str.237, i8 0 }], [32 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"OK\00", [29 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"FAIL\00", [27 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BAD_PARAM\00", [22 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"BAD_CHECKSUM\00", [19 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NMI_INTERRUPT_WDG\00", [46 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SYSASSERT\00", [22 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FATAL_ERROR\00", [20 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BAD_COMMAND\00", [20 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HW_ERROR_TUNE_LOCK\00", [45 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HW_ERROR_TEMPERATURE\00", [43 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ILLEGAL_CHAN_FREQ\00", [46 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VCC_NOT_STABLE\00", [17 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FH_ERROR\00", [23 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"NMI_INTERRUPT_HOST\00", [45 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NMI_INTERRUPT_ACTION_PT\00", [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NMI_INTERRUPT_UNKNOWN\00", [42 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"UCODE_VERSION_MISMATCH\00", [41 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HW_ERROR_ABS_LOCK\00", [46 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HW_ERROR_CAL_LOCK_FAIL\00", [41 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"NMI_INTERRUPT_INST_ACTION_PT\00", [35 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"NMI_INTERRUPT_DATA_ACTION_PT\00", [35 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"NMI_TRM_HW_ER\00", [18 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NMI_INTERRUPT_TRM\00", [46 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"NMI_INTERRUPT_BREAK_POINT\00", [38 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DEBUG_0\00", [24 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DEBUG_1\00", [24 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DEBUG_2\00", [24 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DEBUG_3\00", [24 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"NMI_TRM_HW_ERR\00", [17 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"NMI_INTERRUPT_WDG_RXF_FULL\00", [37 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"NMI_INTERRUPT_WDG_NO_RBD_RXF_FULL\00", [62 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADVANCED_SYSASSERT\00", [45 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"BUG_ON, Stop restarting\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.iwlagn_fw_error = private unnamed_addr constant [16 x i8] c"iwlagn_fw_error\00", align 1
@.str.239 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Restarting adapter due to uCode error.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Detected FW error, but not restarting\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Restarting adapter queue is full\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Radio type=0x%x-0x%x-0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"RF is used by WiMAX\0A\00", [43 x i8] zeroinitializer }, align 32
@switch.table.iwl_op_mode_dvm_start = internal constant { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @iwl_dvm_1000_cfg, ptr @iwl_dvm_1000_cfg, ptr @iwl_dvm_2000_cfg, ptr @iwl_dvm_2030_cfg, ptr @iwl_dvm_105_cfg, ptr @iwl_dvm_2030_cfg, ptr @iwl_dvm_5000_cfg, ptr @iwl_dvm_5150_cfg, ptr @iwl_dvm_6000_cfg, ptr @iwl_dvm_6000_cfg, ptr @iwl_dvm_6005_cfg, ptr @iwl_dvm_6030_cfg, ptr @iwl_dvm_6050_cfg, ptr @iwl_dvm_6050_cfg], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.244 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 9]
@__sancov_gen_cov_switch_values.245 = internal global [17 x i64] [i64 15, i64 32, i64 52, i64 53, i64 55, i64 56, i64 60, i64 61, i64 70, i64 76, i64 84, i64 92, i64 100, i64 102, i64 124, i64 132, i64 134]
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 195, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 198, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 768, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 855, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 898, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1819, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1834, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1840, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1849, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1856, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2078, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2081, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2154, i32 24 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 176, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 750, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 755, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 725, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 730, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 677, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 679, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 694, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant [57 x i8] c"../drivers/net/wireless/intel/iwlwifi/dvm/../iwl-trans.h\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1091, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1727, i32 7 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1739, i32 7 }
@___asan_gen_.334 = private unnamed_addr constant [68 x i8] c"../drivers/net/wireless/intel/iwlwifi/dvm/../iwl-devtrace-iwlwifi.h\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 115, i32 1 }
@___asan_gen_.337 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 108, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2138, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant [12 x i8] c"iwl_dvm_ops\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2112, i32 37 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2144, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant [16 x i8] c"no_reclaim_cmds\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1236, i32 18 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1250, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1323, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant [15 x i8] c"iwl_dvm_groups\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 135, i32 34 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1363, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1367, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1373, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1378, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1387, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1408, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1425, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1466, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant [18 x i8] c"iwl_dvm_cmd_names\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 56, i32 36 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 57, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 58, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 59, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 60, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 61, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 62, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 63, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 64, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 65, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 66, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 67, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 68, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 69, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 70, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 71, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 72, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 73, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 74, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 75, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 76, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 77, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 78, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 79, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 80, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 81, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 82, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 83, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 84, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 85, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 86, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 87, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 88, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 89, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 90, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 91, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 92, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 93, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 94, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 95, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 96, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 97, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 98, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 99, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 100, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 101, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 102, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 103, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 104, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 105, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 106, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 107, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 108, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 109, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 110, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 111, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 112, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 113, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 114, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 115, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 116, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 117, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 118, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 119, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 120, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 121, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 122, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 123, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 124, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 125, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 126, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 127, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 128, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 129, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 130, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 131, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 132, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1153, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1159, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1165, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1213, i32 3 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1218, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1177, i32 3 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1183, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1187, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1201, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1090, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1092, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1052, i32 20 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1054, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1055, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1056, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1057, i32 2 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1058, i32 2 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1059, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1066, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1068, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1037, i32 4 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 271, i32 3 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 288, i32 3 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 564, i32 2 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 335, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant [66 x i8] c"../drivers/net/wireless/intel/iwlwifi/dvm/../iwl-devtrace-ucode.h\00", align 1
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.760, i32 15, i32 1 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1512, i32 2 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2038, i32 3 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2057, i32 3 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1950, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1622, i32 3 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1634, i32 3 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1635, i32 3 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1639, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1641, i32 2 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1642, i32 2 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1643, i32 2 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1644, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1645, i32 2 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1646, i32 2 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1647, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1648, i32 2 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1649, i32 2 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1650, i32 2 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1651, i32 2 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1652, i32 2 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1653, i32 2 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1654, i32 2 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1655, i32 2 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1656, i32 2 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1657, i32 2 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1658, i32 2 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1659, i32 2 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1660, i32 2 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1661, i32 2 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1662, i32 2 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1663, i32 2 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1664, i32 2 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1665, i32 2 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1666, i32 2 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1667, i32 2 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1668, i32 2 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1669, i32 2 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1670, i32 2 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1671, i32 2 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1672, i32 2 }
@___asan_gen_.882 = private unnamed_addr constant [17 x i8] c"desc_lookup_text\00", align 1
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1537, i32 27 }
@___asan_gen_.885 = private unnamed_addr constant [16 x i8] c"advanced_lookup\00", align 1
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1568, i32 39 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1538, i32 2 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1539, i32 2 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1540, i32 2 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1541, i32 2 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1542, i32 2 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1543, i32 2 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1544, i32 2 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1545, i32 2 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1546, i32 2 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1547, i32 2 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1548, i32 2 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1549, i32 2 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1550, i32 2 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1551, i32 2 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1552, i32 2 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1553, i32 2 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1554, i32 2 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1555, i32 2 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1556, i32 2 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1557, i32 2 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1558, i32 2 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1559, i32 2 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1560, i32 2 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1561, i32 2 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1562, i32 2 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1563, i32 2 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1564, i32 2 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1565, i32 2 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1575, i32 4 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1578, i32 4 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1579, i32 4 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1584, i32 4 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1928, i32 5 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1937, i32 4 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1941, i32 4 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1964, i32 3 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1996, i32 3 }
@___asan_gen_.999 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1000 = private constant [49 x i8] c"../drivers/net/wireless/intel/iwlwifi/dvm/main.c\00", align 1
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 2026, i32 2 }
@___asan_gen_.1002 = private unnamed_addr constant [35 x i8] c"switch.table.iwl_op_mode_dvm_start\00", align 1
@llvm.compiler.used = appending global [263 x ptr] [ptr @__UNIQUE_ID_description406, ptr @__UNIQUE_ID_file407, ptr @__UNIQUE_ID_license408, ptr @__exitcall_iwl_exit, ptr @__initcall__kmod_iwldvm__502_2150_iwl_init6, ptr @iwl_exit, ptr @iwl_init._entry, ptr @iwl_init._entry.33, ptr @iwl_init._entry_ptr, ptr @iwl_init._entry_ptr.35, ptr @iwl_op_mode_dvm_start._entry, ptr @iwl_op_mode_dvm_start._entry.38, ptr @iwl_op_mode_dvm_start._entry_ptr, ptr @iwl_op_mode_dvm_start._entry_ptr.40, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @iwl_dvm_ops, ptr @.str.34, ptr @iwl_op_mode_dvm_start.no_reclaim_cmds, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @iwl_dvm_groups, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @iwl_op_mode_dvm_start.__key, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @iwl_dvm_cmd_names, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @iwl_init_drv.__key, ptr @.str.139, ptr @iwl_init_drv.__key.140, ptr @.str.141, ptr @.str.142, ptr @iwl_setup_deferred_work.__key, ptr @.str.143, ptr @iwl_setup_deferred_work.__key.144, ptr @.str.145, ptr @iwl_setup_deferred_work.__key.146, ptr @.str.147, ptr @iwl_setup_deferred_work.__key.148, ptr @.str.149, ptr @iwl_setup_deferred_work.__key.150, ptr @.str.151, ptr @iwl_setup_deferred_work.__key.152, ptr @.str.153, ptr @iwl_setup_deferred_work.__key.154, ptr @.str.155, ptr @iwl_setup_deferred_work.__key.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @desc_lookup_text, ptr @advanced_lookup, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @switch.table.iwl_op_mode_dvm_start], section "llvm.metadata"
@0 = internal global [253 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dvm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_op_mode_dvm_start.no_reclaim_cmds to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_op_mode_dvm_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_op_mode_dvm_start._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dvm_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_op_mode_dvm_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dvm_cmd_names to i32), i32 608, i32 736, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_init_drv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_init_drv.__key.140 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_setup_deferred_work.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_setup_deferred_work.__key.144 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_setup_deferred_work.__key.146 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_setup_deferred_work.__key.148 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_setup_deferred_work.__key.150 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_setup_deferred_work.__key.152 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_setup_deferred_work.__key.154 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_setup_deferred_work.__key.156 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @desc_lookup_text to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @advanced_lookup to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iwl_op_mode_dvm_start to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_update_chain_flags(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %contexts = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50
  %arrayidx2 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 51
  %cmp20 = icmp ult ptr %contexts, %arrayidx2
  br i1 %cmp20, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %valid_contexts = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ctx.021 = phi ptr [ %contexts, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %valid_contexts to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %valid_contexts, align 4
  %conv = zext i8 %1 to i32
  %ctxid = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.021, i32 0, i32 7
  %2 = ptrtoint ptr %ctxid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctxid, align 4
  %shl = shl nuw i32 1, %3
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body
  tail call void @iwlagn_set_rxon_chain(ptr noundef %priv, ptr noundef %ctx.021) #13
  %rx_chain = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.021, i32 0, i32 14, i32 8
  %4 = ptrtoint ptr %rx_chain to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %rx_chain, align 2
  %rx_chain4 = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.021, i32 0, i32 15, i32 8
  %6 = ptrtoint ptr %rx_chain4 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %rx_chain4, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp6.not = icmp eq i16 %5, %7
  br i1 %cmp6.not, label %if.then.for.inc_crit_edge, label %if.then8

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @iwlagn_commit_rxon(ptr noundef %priv, ptr noundef %ctx.021) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.iwl_rxon_context, ptr %ctx.021, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %arrayidx2
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwlagn_set_rxon_chain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwlagn_commit_rxon(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwlagn_send_beacon_cmd(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd) #13
  %0 = call ptr @memset(ptr %cmd, i32 0, i32 36)
  %1 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd, i32 0, i32 5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 145, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !534

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 195, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %beacon_ctx = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 105
  %4 = ptrtoint ptr %beacon_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %beacon_ctx, align 4
  %tobool24.not = icmp eq ptr %5, null
  br i1 %tobool24.not, label %do.end29, label %if.end32

do.end29:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %7, i32 noundef 0, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end32:                                         ; preds = %if.end
  %beacon_skb = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 106
  %8 = ptrtoint ptr %beacon_skb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %beacon_skb, align 8
  %tobool34.not = icmp eq ptr %9, null
  br i1 %tobool34.not, label %do.end52, label %if.end68, !prof !534

do.end52:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 202, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end68:                                         ; preds = %if.end32
  %beacon_cmd = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 107
  %10 = ptrtoint ptr %beacon_cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %beacon_cmd, align 4
  %tobool69.not = icmp eq ptr %11, null
  br i1 %tobool69.not, label %if.end73, label %if.end68.if.end77_crit_edge

if.end68.if.end77_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

if.end73:                                         ; preds = %if.end68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 60) #16
  %13 = ptrtoint ptr %beacon_cmd to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %beacon_cmd, align 4
  %tobool75.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool75.not, label %if.end73.cleanup_crit_edge, label %if.end73.if.end77_crit_edge

if.end73.if.end77_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end77:                                         ; preds = %if.end73.if.end77_crit_edge, %if.end68.if.end77_crit_edge
  %14 = phi ptr [ %call7.i.i, %if.end73.if.end77_crit_edge ], [ %11, %if.end68.if.end77_crit_edge ]
  %15 = ptrtoint ptr %beacon_skb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %beacon_skb, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %conv = trunc i32 %18 to i16
  %19 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %19, ptr %14, align 1
  %21 = ptrtoint ptr %beacon_ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %beacon_ctx, align 4
  %bcast_sta_id = getelementptr inbounds %struct.iwl_rxon_context, ptr %22, i32 0, i32 18
  %23 = ptrtoint ptr %bcast_sta_id to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bcast_sta_id, align 4
  %sta_id = getelementptr inbounds %struct.iwl_tx_cmd, ptr %14, i32 0, i32 5
  %25 = ptrtoint ptr %sta_id to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %sta_id, align 1
  %stop_time = getelementptr inbounds %struct.iwl_tx_cmd, ptr %14, i32 0, i32 12
  %26 = ptrtoint ptr %stop_time to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 -1, ptr %stop_time, align 1
  %tx_flags = getelementptr inbounds %struct.iwl_tx_cmd, ptr %14, i32 0, i32 2
  %27 = ptrtoint ptr %tx_flags to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 270532864, ptr %tx_flags, align 1
  %28 = ptrtoint ptr %beacon_skb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %beacon_skb, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 19
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %sub.i = add i32 %18, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %sub.i)
  %cmp43.i = icmp ugt i32 %sub.i, 36
  br i1 %cmp43.i, label %if.end77.land.rhs.i_crit_edge, label %if.end77.while.end.i_crit_edge

if.end77.while.end.i_crit_edge:                   ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

if.end77.land.rhs.i_crit_edge:                    ; preds = %if.end77
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.end77.land.rhs.i_crit_edge
  %conv145.i = phi i32 [ %conv1.i, %while.body.i.land.rhs.i_crit_edge ], [ 36, %if.end77.land.rhs.i_crit_edge ]
  %tim_idx.044.i = phi i16 [ %add11.i, %while.body.i.land.rhs.i_crit_edge ], [ 36, %if.end77.land.rhs.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %31, i32 %conv145.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %33)
  %cmp4.not.i = icmp eq i8 %33, 5
  br i1 %cmp4.not.i, label %land.rhs.i.while.end.i_crit_edge, label %while.body.i

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  %add.i = add nuw nsw i32 %conv145.i, 1
  %arrayidx7.i = getelementptr i8, ptr %31, i32 %add.i
  %34 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %35 to i16
  %add9.i = add i16 %tim_idx.044.i, 2
  %add11.i = add i16 %add9.i, %conv8.i
  %conv1.i = zext i16 %add11.i to i32
  %cmp.i = icmp ugt i32 %sub.i, %conv1.i
  br i1 %cmp.i, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge, %if.end77.while.end.i_crit_edge
  %tim_idx.0.lcssa.i = phi i16 [ 36, %if.end77.while.end.i_crit_edge ], [ %tim_idx.044.i, %land.rhs.i.while.end.i_crit_edge ], [ %add11.i, %while.body.i.while.end.i_crit_edge ]
  %conv1.lcssa.i = phi i32 [ 36, %if.end77.while.end.i_crit_edge ], [ %conv145.i, %land.rhs.i.while.end.i_crit_edge ], [ %conv1.i, %while.body.i.while.end.i_crit_edge ]
  %sub14.i = add i32 %18, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub14.i, i32 %conv1.lcssa.i)
  %cmp15.i = icmp ugt i32 %sub14.i, %conv1.lcssa.i
  br i1 %cmp15.i, label %land.lhs.true.i, label %while.end.i.do.end.i_crit_edge

while.end.i.do.end.i_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %while.end.i
  %arrayidx18.i = getelementptr i8, ptr %31, i32 %conv1.lcssa.i
  %36 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx18.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %37)
  %cmp20.i = icmp eq i8 %37, 5
  br i1 %cmp20.i, label %if.then.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %38 = tail call i16 @llvm.bswap.i16(i16 %tim_idx.0.lcssa.i) #13
  %tim_idx22.i = getelementptr inbounds %struct.iwl_tx_beacon_cmd, ptr %14, i32 0, i32 1
  %39 = ptrtoint ptr %tim_idx22.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %38, ptr %tim_idx22.i, align 1
  %add24.i = add nuw nsw i32 %conv1.lcssa.i, 1
  %arrayidx25.i = getelementptr i8, ptr %31, i32 %add24.i
  %40 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx25.i, align 1
  %tim_size.i = getelementptr inbounds %struct.iwl_tx_beacon_cmd, ptr %14, i32 0, i32 2
  %42 = ptrtoint ptr %tim_size.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %tim_size.i, align 1
  br label %iwl_set_beacon_tim.exit

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %while.end.i.do.end.i_crit_edge
  %dev.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %43 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %44, ptr noundef nonnull @.str.15) #13
  br label %iwl_set_beacon_tim.exit

iwl_set_beacon_tim.exit:                          ; preds = %do.end.i, %if.then.i
  %45 = ptrtoint ptr %beacon_skb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %beacon_skb, align 8
  %47 = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 3, i32 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %47, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp88 = icmp slt i8 %49, 0
  br i1 %cmp88, label %iwl_set_beacon_tim.exit.if.end99_crit_edge, label %lor.lhs.false

iwl_set_beacon_tim.exit.if.end99_crit_edge:       ; preds = %iwl_set_beacon_tim.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99

lor.lhs.false:                                    ; preds = %iwl_set_beacon_tim.exit
  call void @__sanitizer_cov_trace_pc() #15
  %conv87179 = zext i8 %49 to i32
  %flags = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 3, i32 9
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %bf.load = load i16, ptr %flags, align 1
  %51 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool93.not = icmp eq i16 %51, 0
  %spec.select = select i1 %tobool93.not, i32 %conv87179, i32 0
  br label %if.end99

if.end99:                                         ; preds = %lor.lhs.false, %iwl_set_beacon_tim.exit.if.end99_crit_edge
  %rate.0 = phi i32 [ 0, %iwl_set_beacon_tim.exit.if.end99_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %mgmt_tx_ant = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 45
  %52 = ptrtoint ptr %mgmt_tx_ant to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %mgmt_tx_ant, align 2
  %nvm_data = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %54 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %nvm_data, align 8
  %valid_tx_ant = getelementptr inbounds %struct.iwl_nvm_data, ptr %55, i32 0, i32 20
  %56 = ptrtoint ptr %valid_tx_ant to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %valid_tx_ant, align 1
  %call100 = tail call zeroext i8 @iwl_toggle_tx_ant(ptr noundef %priv, i8 noundef zeroext %53, i8 noundef zeroext %57) #13
  %58 = ptrtoint ptr %mgmt_tx_ant to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %call100, ptr %mgmt_tx_ant, align 2
  %conv.i = zext i8 %call100 to i32
  %shl1.i = shl i32 16384, %conv.i
  %band = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 3, i32 4
  %59 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %59)
  %bf.load104 = load i32, ptr %band, align 4
  %bf.lshr.mask = and i32 %bf.load104, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr.mask)
  %cmp105 = icmp eq i32 %bf.lshr.mask, 536870912
  %add = add nuw nsw i32 %rate.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rate.0)
  %cmp111 = icmp ult i32 %rate.0, 4
  %or = or i32 %shl1.i, 512
  %spec.select180 = select i1 %cmp111, i32 %or, i32 %shl1.i
  %60 = or i32 %add, %shl1.i
  %61 = or i32 %rate.0, %spec.select180
  %or.i = select i1 %cmp105, i32 %60, i32 %61
  %62 = tail call i32 @llvm.bswap.i32(i32 %or.i) #13
  %rate_n_flags = getelementptr inbounds %struct.iwl_tx_cmd, ptr %14, i32 0, i32 4
  %63 = ptrtoint ptr %rate_n_flags to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %62, ptr %rate_n_flags, align 1
  %len119 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 6
  %64 = ptrtoint ptr %len119 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 60, ptr %len119, align 4
  %65 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %14, ptr %cmd, align 4
  %dataflags = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 7
  %66 = ptrtoint ptr %dataflags to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %dataflags, align 4
  %arrayidx126 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 6, i32 1
  %67 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv, ptr %arrayidx126, align 2
  %68 = ptrtoint ptr %beacon_skb to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %beacon_skb, align 8
  %data128 = getelementptr inbounds %struct.sk_buff, ptr %69, i32 0, i32 19
  %70 = ptrtoint ptr %data128 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data128, align 4
  %arrayidx130 = getelementptr inbounds [2 x ptr], ptr %cmd, i32 0, i32 1
  %72 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %arrayidx130, align 4
  %arrayidx132 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 7, i32 1
  %73 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %arrayidx132, align 1
  %call133 = call i32 @iwl_dvm_send_cmd(ptr noundef %priv, ptr noundef nonnull %cmd) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %if.end73.cleanup_crit_edge, %do.end52, %do.end29
  %retval.0 = phi i32 [ -22, %do.end52 ], [ %call133, %if.end99 ], [ 0, %do.end29 ], [ -12, %if.end73.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_toggle_tx_ant(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_dvm_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_send_statistics_request(ptr noundef %priv, i8 noundef zeroext %flags, i1 noundef zeroext %clear) local_unnamed_addr #0 align 64 {
entry:
  %statistics_cmd = alloca %struct.iwl_statistics_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %statistics_cmd) #13
  %cond = select i1 %clear, i32 16777216, i32 0
  %0 = ptrtoint ptr %statistics_cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %cond, ptr %statistics_cmd, align 4
  %1 = and i8 %flags, 1
  %2 = zext i8 %1 to i32
  %call2 = call i32 @iwl_dvm_send_cmd_pdu(ptr noundef %priv, i8 noundef zeroext -100, i32 noundef %2, i16 noundef zeroext 4, ptr noundef nonnull %statistics_cmd) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %statistics_cmd) #13
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_dvm_send_cmd_pdu(ptr noundef, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_alive_start(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i124 = alloca %struct.iwl_ct_kill_config, align 4
  %adv_cmd.i = alloca %struct.iwl_ct_kill_throttling_config, align 4
  %tx_ant_cmd.i = alloca %struct.iwl_tx_ant_config_cmd, align 4
  %calib_cfg_cmd.i = alloca %struct.iwl_calib_cfg_cmd, align 4
  %cmd.i = alloca %struct.iwl_host_cmd, align 4
  %bt_cmd.i = alloca %struct.iwl_bt_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %contexts = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_alive_start, ptr noundef nonnull @.str.2) #13
  %status = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %status) #13
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %event_log = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 131
  %4 = ptrtoint ptr %event_log to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %event_log, align 8, !range !535
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %ucode_trace6 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %call7 = tail call i32 @mod_timer(ptr noundef %ucode_trace6, i32 noundef %6) #13
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %lib = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 4
  %7 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lib, align 8
  %bt_params = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %bt_params to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bt_params, align 4
  %tobool9.not = icmp eq ptr %10, null
  br i1 %tobool9.not, label %if.end8.if.end35_crit_edge, label %land.lhs.true

if.end8.if.end35_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4, !range !535
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool12.not = icmp eq i8 %12, 0
  br i1 %tobool12.not, label %if.then33, label %if.then13

if.then13:                                        ; preds = %land.lhs.true
  %bt_sco_disable = getelementptr inbounds %struct.iwl_dvm_bt_params, ptr %10, i32 0, i32 4
  %13 = ptrtoint ptr %bt_sco_disable to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bt_sco_disable, align 2, !range !535
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 98
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %15, ptr %16, align 8
  %bt_valid = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 91
  %18 = ptrtoint ptr %bt_valid to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -256, ptr %bt_valid, align 8
  %kill_ack_mask = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 89
  %19 = ptrtoint ptr %kill_ack_mask to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 65535, ptr %kill_ack_mask, align 8
  %kill_cts_mask = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 90
  %20 = ptrtoint ptr %kill_cts_mask to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 65535, ptr %kill_cts_mask, align 4
  tail call void @iwlagn_send_advance_bt_config(ptr noundef %priv) #13
  %21 = ptrtoint ptr %bt_valid to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 256, ptr %bt_valid, align 8
  %cur_rssi_ctx = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 99
  %22 = ptrtoint ptr %cur_rssi_ctx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %cur_rssi_ctx, align 4
  tail call void @iwl_send_prio_tbl(ptr noundef %priv) #13
  %call21 = tail call i32 @iwl_send_bt_env(ptr noundef %priv, i8 noundef zeroext 1, i8 noundef zeroext 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end24:                                         ; preds = %if.then13
  %call25 = tail call i32 @iwl_send_bt_env(ptr noundef %priv, i8 noundef zeroext 0, i8 noundef zeroext 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end24.if.end35_crit_edge, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end24.if.end35_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then33:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bt_cmd.i) #13
  %23 = call ptr @memcpy(ptr %bt_cmd.i, ptr @__const.iwl_send_bt_config.bt_cmd, i32 12)
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 4) to i32))
  %24 = load i8, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 4), align 1, !range !535
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  %.str.17..str.18.i = select i1 %tobool.not.i, ptr @.str.17, ptr @.str.18
  %..i = select i1 %tobool.not.i, i8 0, i8 3
  %25 = ptrtoint ptr %bt_cmd.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %..i, ptr %bt_cmd.i, align 1
  %bt_enable_flag.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 83
  %26 = ptrtoint ptr %bt_enable_flag.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %..i, ptr %bt_enable_flag.i, align 8
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %28, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_send_bt_config, ptr noundef nonnull @.str.16, ptr noundef nonnull %.str.17..str.18.i) #13
  %call.i = call i32 @iwl_dvm_send_cmd_pdu(ptr noundef %priv, i8 noundef zeroext -101, i32 noundef 0, i16 noundef zeroext 12, ptr noundef nonnull %bt_cmd.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %if.then33.iwl_send_bt_config.exit_crit_edge, label %do.end13.i

if.then33.iwl_send_bt_config.exit_crit_edge:      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_send_bt_config.exit

do.end13.i:                                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %30, i32 noundef 0, ptr noundef nonnull @.str.19) #13
  br label %iwl_send_bt_config.exit

iwl_send_bt_config.exit:                          ; preds = %do.end13.i, %if.then33.iwl_send_bt_config.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bt_cmd.i) #13
  br label %if.end35

if.end35:                                         ; preds = %iwl_send_bt_config.exit, %if.end24.if.end35_crit_edge, %if.end8.if.end35_crit_edge
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %calib_cfg_cmd.i) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i) #13
  %31 = getelementptr inbounds i8, ptr %cmd.i, i32 32
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 65535, ptr %31, align 4, !annotation !536
  %33 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %calib_cfg_cmd.i, ptr %cmd.i, align 4
  %arrayinit.cur.ptr.i = getelementptr inbounds ptr, ptr %cmd.i, i32 1
  %id.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 5
  %34 = call ptr @memset(ptr %arrayinit.cur.ptr.i, i32 0, i32 20)
  %35 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 101, ptr %id.i, align 4
  %len.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6
  %36 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 92, ptr %len.i, align 4
  %arrayinit.start3.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6, i32 1
  %37 = ptrtoint ptr %arrayinit.start3.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %arrayinit.start3.i, align 2
  %38 = getelementptr inbounds i8, ptr %calib_cfg_cmd.i, i32 8
  %39 = call ptr @memset(ptr %38, i32 0, i32 84)
  %40 = ptrtoint ptr %calib_cfg_cmd.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -553320448, ptr %calib_cfg_cmd.i, align 4
  %start.i = getelementptr inbounds %struct.iwl_calib_cfg_elmnt_s, ptr %calib_cfg_cmd.i, i32 0, i32 1
  %41 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 33554432, ptr %start.i, align 4
  %call.i122 = call i32 @iwl_dvm_send_cmd(ptr noundef %priv, ptr noundef nonnull %cmd.i) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i) #13
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %calib_cfg_cmd.i) #13
  %hw = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 13
  %42 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw, align 4
  call void @ieee80211_wake_queues(ptr noundef %43) #13
  %nvm_data = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %44 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %nvm_data, align 8
  %valid_tx_ant = getelementptr inbounds %struct.iwl_nvm_data, ptr %45, i32 0, i32 20
  %46 = ptrtoint ptr %valid_tx_ant to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %valid_tx_ant, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_ant_cmd.i) #13
  %conv.i = zext i8 %47 to i32
  %48 = shl nuw i32 %conv.i, 24
  %49 = ptrtoint ptr %tx_ant_cmd.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %tx_ant_cmd.i, align 4
  %fw.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 3
  %50 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fw.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %54 = and i32 %53, 65024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.not.i = icmp eq i32 %54, 0
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  br i1 %cmp.not.i, label %do.end9.i, label %do.end.i

do.end.i:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %56, i32 noundef 4, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_send_tx_ant_config, ptr noundef nonnull @.str.20, i32 noundef %conv.i) #13
  %call.i123 = call i32 @iwl_dvm_send_cmd_pdu(ptr noundef %priv, i8 noundef zeroext -104, i32 noundef 0, i16 noundef zeroext 4, ptr noundef nonnull %tx_ant_cmd.i) #13
  br label %iwlagn_send_tx_ant_config.exit

do.end9.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %56, i32 noundef 4, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_send_tx_ant_config, ptr noundef nonnull @.str.21) #13
  br label %iwlagn_send_tx_ant_config.exit

iwlagn_send_tx_ant_config.exit:                   ; preds = %do.end9.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_ant_cmd.i) #13
  %filter_flags.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 14, i32 13
  %57 = ptrtoint ptr %filter_flags.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %filter_flags.i, align 4
  %59 = and i32 %58, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool39.not = icmp eq i32 %59, 0
  br i1 %tobool39.not, label %iwlagn_send_tx_ant_config.exit.if.else44_crit_edge, label %land.lhs.true40

iwlagn_send_tx_ant_config.exit.if.else44_crit_edge: ; preds = %iwlagn_send_tx_ant_config.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else44

land.lhs.true40:                                  ; preds = %iwlagn_send_tx_ant_config.exit
  %wowlan = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 48
  %60 = ptrtoint ptr %wowlan to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %wowlan, align 1, !range !535
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool41.not = icmp eq i8 %61, 0
  br i1 %tobool41.not, label %if.then42, label %land.lhs.true40.if.else44_crit_edge

land.lhs.true40.if.else44_crit_edge:              ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else44

if.then42:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #15
  %filter_flags = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 15, i32 13
  %62 = ptrtoint ptr %filter_flags to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %filter_flags, align 2
  %or = or i32 %63, 536870912
  store i32 %or, ptr %filter_flags, align 2
  %64 = ptrtoint ptr %filter_flags.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %filter_flags.i, align 1
  %and = and i32 %65, -536870913
  store i32 %and, ptr %filter_flags.i, align 1
  br label %if.end53

if.else44:                                        ; preds = %land.lhs.true40.if.else44_crit_edge, %iwlagn_send_tx_ant_config.exit.if.else44_crit_edge
  %arrayidx48 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 51
  %cmp128 = icmp ult ptr %contexts, %arrayidx48
  br i1 %cmp128, label %for.body.lr.ph, label %if.else44.for.end_crit_edge

if.else44.for.end_crit_edge:                      ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.else44
  %valid_contexts = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %tmp.0129 = phi ptr [ %contexts, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %66 = ptrtoint ptr %valid_contexts to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %valid_contexts, align 4
  %conv = zext i8 %67 to i32
  %ctxid = getelementptr inbounds %struct.iwl_rxon_context, ptr %tmp.0129, i32 0, i32 7
  %68 = ptrtoint ptr %ctxid to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ctxid, align 4
  %shl = shl nuw i32 1, %69
  %and49 = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %for.body.for.inc_crit_edge, label %if.then51

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then51:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @iwl_connection_init_rx_config(ptr noundef %priv, ptr noundef %tmp.0129) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then51, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.iwl_rxon_context, ptr %tmp.0129, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %arrayidx48
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.else44.for.end_crit_edge
  call void @iwlagn_set_rxon_chain(ptr noundef %priv, ptr noundef %contexts) #13
  br label %if.end53

if.end53:                                         ; preds = %for.end, %if.then42
  %wowlan54 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 48
  %70 = ptrtoint ptr %wowlan54 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %wowlan54, align 1, !range !535
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool55.not = icmp eq i8 %71, 0
  br i1 %tobool55.not, label %if.then56, label %if.end53.if.end57_crit_edge

if.end53.if.end57_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  call void @iwl_reset_run_time_calib(ptr noundef %priv) #13
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end53.if.end57_crit_edge
  call void @_set_bit(i32 noundef 3, ptr noundef %status) #13
  %call59 = call i32 @iwlagn_commit_rxon(ptr noundef %priv, ptr noundef %contexts) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end62:                                         ; preds = %if.end57
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd.i124) #13
  %72 = ptrtoint ptr %cmd.i124 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %cmd.i124, align 4, !annotation !536
  %73 = getelementptr inbounds %struct.iwl_ct_kill_config, ptr %cmd.i124, i32 0, i32 1
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -1, ptr %73, align 4, !annotation !536
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %adv_cmd.i) #13
  %75 = getelementptr inbounds %struct.iwl_ct_kill_throttling_config, ptr %adv_cmd.i, i32 0, i32 1
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %75, align 4, !annotation !536
  %77 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %priv, align 8
  call void @iwl_write32(ptr noundef %78, i32 noundef 92, i32 noundef 8) #13
  %ct_kill_toggle.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 3
  %79 = ptrtoint ptr %ct_kill_toggle.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %ct_kill_toggle.i, align 2
  %80 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %lib, align 8
  %support_ct_kill_exit.i = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %81, i32 0, i32 8
  %82 = ptrtoint ptr %support_ct_kill_exit.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %support_ct_kill_exit.i, align 2, !range !535
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i125 = icmp eq i8 %83, 0
  %ct_kill_threshold20.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 17, i32 3
  %84 = ptrtoint ptr %ct_kill_threshold20.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ct_kill_threshold20.i, align 4
  %86 = call i32 @llvm.bswap.i32(i32 %85) #13
  br i1 %tobool.not.i125, label %if.else18.i, label %if.then.i

if.then.i:                                        ; preds = %if.end62
  %87 = getelementptr inbounds %struct.iwl_ct_kill_throttling_config, ptr %adv_cmd.i, i32 0, i32 2
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %86, ptr %87, align 4
  %ct_kill_exit_threshold.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 17, i32 4
  %89 = ptrtoint ptr %ct_kill_exit_threshold.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ct_kill_exit_threshold.i, align 8
  %91 = call i32 @llvm.bswap.i32(i32 %90) #13
  %92 = ptrtoint ptr %adv_cmd.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %adv_cmd.i, align 4
  %call.i126 = call i32 @iwl_dvm_send_cmd_pdu(ptr noundef %priv, i8 noundef zeroext -92, i32 noundef 0, i16 noundef zeroext 12, ptr noundef nonnull %adv_cmd.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126)
  %tobool2.not.i = icmp eq i32 %call.i126, 0
  %93 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev, align 4
  br i1 %tobool2.not.i, label %do.end10.i, label %do.end.i127

do.end.i127:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %94, i32 noundef 0, ptr noundef nonnull @.str.22) #13
  br label %iwl_rf_kill_ct_config.exit

do.end10.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %95 = ptrtoint ptr %ct_kill_threshold20.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ct_kill_threshold20.i, align 4
  %97 = ptrtoint ptr %ct_kill_exit_threshold.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ct_kill_exit_threshold.i, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %94, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_rf_kill_ct_config, ptr noundef nonnull @.str.23, i32 noundef %96, i32 noundef %98) #13
  br label %iwl_rf_kill_ct_config.exit

if.else18.i:                                      ; preds = %if.end62
  %99 = getelementptr inbounds %struct.iwl_ct_kill_config, ptr %cmd.i124, i32 0, i32 2
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %86, ptr %99, align 4
  %call21.i = call i32 @iwl_dvm_send_cmd_pdu(ptr noundef %priv, i8 noundef zeroext -92, i32 noundef 0, i16 noundef zeroext 12, ptr noundef nonnull %cmd.i124) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  %101 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev, align 4
  br i1 %tobool22.not.i, label %do.end35.i, label %do.end27.i

do.end27.i:                                       ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %102, i32 noundef 0, ptr noundef nonnull @.str.22) #13
  br label %iwl_rf_kill_ct_config.exit

do.end35.i:                                       ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #15
  %103 = ptrtoint ptr %ct_kill_threshold20.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ct_kill_threshold20.i, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %102, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_rf_kill_ct_config, ptr noundef nonnull @.str.24, i32 noundef %104) #13
  br label %iwl_rf_kill_ct_config.exit

iwl_rf_kill_ct_config.exit:                       ; preds = %do.end35.i, %do.end27.i, %do.end10.i, %do.end.i127
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %adv_cmd.i) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i124) #13
  %105 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %106, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_alive_start, ptr noundef nonnull @.str.3) #13
  %call70 = call i32 @iwl_power_update_mode(ptr noundef %priv, i1 noundef zeroext true) #13
  br label %cleanup

cleanup:                                          ; preds = %iwl_rf_kill_ct_config.exit, %if.end57.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call70, %iwl_rf_kill_ct_config.exit ], [ -132, %entry.cleanup_crit_edge ], [ %call21, %if.then13.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ %call59, %if.end57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwlagn_send_advance_bt_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_send_prio_tbl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_send_bt_env(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_connection_init_rx_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_reset_run_time_calib(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_power_update_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_down(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_down, ptr noundef nonnull @.str.4) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end16, label %land.rhs.if.end_crit_edge, !prof !534

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end16:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 900, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end16, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @iwl_scan_cancel_timeout(ptr noundef %priv, i32 noundef 200) #13
  %status = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  %call30 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %status) #13
  tail call void @iwl_clear_ucode_stations(ptr noundef %priv, ptr noundef null) #13
  tail call void @iwl_dealloc_bcast_stations(ptr noundef %priv) #13
  %sta_lock.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_lock.i) #13
  %num_stations.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 62
  %contexts.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50
  %arrayidx2.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 51
  %cmp16.i = icmp ult ptr %contexts.i, %arrayidx2.i
  %3 = call ptr @memset(ptr %num_stations.i, i32 0, i32 1608)
  br i1 %cmp16.i, label %for.body.lr.ph.i, label %if.end.iwl_clear_driver_stations.exit_crit_edge

if.end.iwl_clear_driver_stations.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_clear_driver_stations.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %valid_contexts.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 19
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ctx.017.i = phi ptr [ %contexts.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %valid_contexts.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %valid_contexts.i, align 4
  %conv.i = zext i8 %5 to i32
  %ctxid.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.017.i, i32 0, i32 7
  %6 = ptrtoint ptr %ctxid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctxid.i, align 4
  %shl.i = shl nuw i32 1, %7
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %wep_keys.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.017.i, i32 0, i32 25
  %8 = call ptr @memset(ptr %wep_keys.i, i32 0, i32 97)
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.iwl_rxon_context, ptr %ctx.017.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %arrayidx2.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.iwl_clear_driver_stations.exit_crit_edge

for.inc.i.iwl_clear_driver_stations.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_clear_driver_stations.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

iwl_clear_driver_stations.exit:                   ; preds = %for.inc.i.iwl_clear_driver_stations.exit_crit_edge, %if.end.iwl_clear_driver_stations.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_lock.i) #13
  %bt_status = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 84
  %9 = ptrtoint ptr %bt_status to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %bt_status, align 1
  %cur_rssi_ctx = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 99
  %10 = ptrtoint ptr %cur_rssi_ctx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %cur_rssi_ctx, align 4
  %bt_is_sco = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 100
  %11 = ptrtoint ptr %bt_is_sco to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %bt_is_sco, align 8
  %lib = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 4
  %12 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lib, align 8
  %bt_params = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %bt_params to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bt_params, align 4
  %tobool31.not = icmp eq ptr %15, null
  br i1 %tobool31.not, label %iwl_clear_driver_stations.exit.if.end36_crit_edge, label %if.then32

iwl_clear_driver_stations.exit.if.end36_crit_edge: ; preds = %iwl_clear_driver_stations.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then32:                                        ; preds = %iwl_clear_driver_stations.exit
  call void @__sanitizer_cov_trace_pc() #15
  %bt_init_traffic_load = getelementptr inbounds %struct.iwl_dvm_bt_params, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %bt_init_traffic_load to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bt_init_traffic_load, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %iwl_clear_driver_stations.exit.if.end36_crit_edge
  %.sink = phi i8 [ %17, %if.then32 ], [ 0, %iwl_clear_driver_stations.exit.if.end36_crit_edge ]
  %18 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 85
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %.sink, ptr %18, align 2
  %bt_full_concurrent = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 88
  %20 = ptrtoint ptr %bt_full_concurrent to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %bt_full_concurrent, align 1
  %bt_ci_compliance = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 96
  %21 = ptrtoint ptr %bt_ci_compliance to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %bt_ci_compliance, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool37.not = icmp eq i32 %call30, 0
  br i1 %tobool37.not, label %if.then38, label %if.end36.if.end40_crit_edge

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %status) #13
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end36.if.end40_crit_edge
  %mac80211_registered = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 67
  %22 = ptrtoint ptr %mac80211_registered to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mac80211_registered, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool41.not = icmp eq i8 %23, 0
  br i1 %tobool41.not, label %if.end40.if.end43_crit_edge, label %if.then42

if.end40.if.end43_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  %hw = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 13
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_stop_queues(ptr noundef %25) #13
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end40.if.end43_crit_edge
  %ucode_loaded = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 32
  %26 = ptrtoint ptr %ucode_loaded to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %ucode_loaded, align 8
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.25, i32 noundef 1091) #13
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i, align 4
  %stop_device.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %stop_device.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %stop_device.i, align 4
  tail call void %32(ptr noundef %28) #13
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %28, i32 0, i32 6
  %33 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %state.i, align 8
  %num_aux_in_flight = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 66
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_aux_in_flight, i32 noundef 4) #13
  %34 = ptrtoint ptr %num_aux_in_flight to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 0, ptr %num_aux_in_flight, align 4
  %35 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %status, align 4
  %and1.i = and i32 %36, 1
  %37 = load volatile i32, ptr %status, align 4
  %and1.i83 = and i32 %37, 1024
  %or = or i32 %and1.i83, %and1.i
  %38 = load volatile i32, ptr %status, align 4
  %and1.i85 = and i32 %38, 32
  %or52 = or i32 %or, %and1.i85
  %and = and i32 %or52, %38
  store i32 %and, ptr %status, align 4
  %beacon_skb = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 106
  %39 = ptrtoint ptr %beacon_skb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %beacon_skb, align 8
  tail call void @consume_skb(ptr noundef %40) #13
  %41 = ptrtoint ptr %beacon_skb to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %beacon_skb, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_scan_cancel_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_clear_ucode_stations(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_dealloc_bcast_stations(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwlagn_prepare_restart(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !534

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 985, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %is_open = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 68
  %1 = ptrtoint ptr %is_open to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %is_open, align 1
  %bt_full_concurrent24 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 88
  %2 = ptrtoint ptr %bt_full_concurrent24 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bt_full_concurrent24, align 1, !range !535
  %bt_ci_compliance26 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 96
  %4 = ptrtoint ptr %bt_ci_compliance26 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bt_ci_compliance26, align 2
  %bt_traffic_load = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 85
  %6 = ptrtoint ptr %bt_traffic_load to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bt_traffic_load, align 2
  %bt_status27 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 84
  %8 = ptrtoint ptr %bt_status27 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bt_status27, align 1
  %bt_is_sco28 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 100
  %10 = ptrtoint ptr %bt_is_sco28 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bt_is_sco28, align 8, !range !535
  tail call void @iwl_down(ptr noundef %priv)
  %12 = ptrtoint ptr %bt_full_concurrent24 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %3, ptr %bt_full_concurrent24, align 1
  %13 = ptrtoint ptr %bt_ci_compliance26 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %5, ptr %bt_ci_compliance26, align 2
  %14 = ptrtoint ptr %bt_traffic_load to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %7, ptr %bt_traffic_load, align 2
  %15 = ptrtoint ptr %bt_status27 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %9, ptr %bt_status27, align 1
  %16 = ptrtoint ptr %bt_is_sco28 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %11, ptr %bt_is_sco28, align 8
  %uglygep = getelementptr i8, ptr %priv, i32 176
  %17 = call ptr @memset(ptr %uglygep, i32 255, i32 21)
  br label %for.body43

for.body43:                                       ; preds = %for.body43.for.body43_crit_edge, %if.end
  %i.170 = phi i32 [ %inc46, %for.body43.for.body43_crit_edge ], [ 0, %if.end ]
  %arrayidx44 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 11, i32 %i.170
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx44, i32 noundef 4) #13
  %18 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 0, ptr %arrayidx44, align 4
  %inc46 = add nuw nsw i32 %i.170, 1
  %exitcond.not = icmp eq i32 %inc46, 32
  br i1 %exitcond.not, label %for.end47, label %for.body43.for.body43_crit_edge

for.body43.for.body43_crit_edge:                  ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body43

for.end47:                                        ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #15
  %agg_q_alloc = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 12
  %19 = ptrtoint ptr %agg_q_alloc to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %agg_q_alloc, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_cancel_deferred_work(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lib = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lib, align 8
  %bt_params = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bt_params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bt_params, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @iwlagn_bt_cancel_deferred_work(ptr noundef %priv) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %run_time_calib_work = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 128
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %run_time_calib_work) #13
  %beacon_update = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 104
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %beacon_update) #13
  tail call void @iwl_cancel_scan_deferred_work(ptr noundef %priv) #13
  %bt_full_concurrency = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 113
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %bt_full_concurrency) #13
  %bt_runtime_config = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 114
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %bt_runtime_config) #13
  %statistics_periodic = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 129
  %call4 = tail call i32 @del_timer_sync(ptr noundef %statistics_periodic) #13
  %ucode_trace = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 130
  %call5 = tail call i32 @del_timer_sync(ptr noundef %ucode_trace) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwlagn_bt_cancel_deferred_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_cancel_scan_deferred_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_dump_nic_event_log(ptr nocapture noundef readonly %priv, i1 noundef zeroext %full_log, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  %value.i187 = alloca i32, align 4
  %value.i178 = alloca i32, align 4
  %value.i169 = alloca i32, align 4
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %log_event_table = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 142, i32 1
  %2 = ptrtoint ptr %log_event_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %log_event_table, align 4
  %cur_ucode = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 143
  %4 = ptrtoint ptr %cur_ucode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_ucode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  %fw = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 3
  %6 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %init_evtlog_size = getelementptr inbounds %struct.iwl_fw, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %init_evtlog_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %init_evtlog_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then2, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %init_evtlog_ptr = getelementptr inbounds %struct.iwl_fw, ptr %7, i32 0, i32 7
  br label %if.end9.sink.split

if.else:                                          ; preds = %entry
  %inst_evtlog_size = getelementptr inbounds %struct.iwl_fw, ptr %7, i32 0, i32 11
  %10 = ptrtoint ptr %inst_evtlog_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %inst_evtlog_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %if.then6, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %inst_evtlog_ptr = getelementptr inbounds %struct.iwl_fw, ptr %7, i32 0, i32 10
  br label %if.end9.sink.split

if.end9.sink.split:                               ; preds = %if.then6, %if.then2
  %inst_evtlog_ptr.sink = phi ptr [ %inst_evtlog_ptr, %if.then6 ], [ %init_evtlog_ptr, %if.then2 ]
  %logsize.0.ph = phi i32 [ %11, %if.then6 ], [ %9, %if.then2 ]
  %12 = ptrtoint ptr %inst_evtlog_ptr.sink to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %inst_evtlog_ptr.sink, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %if.else.if.end9_crit_edge, %if.then.if.end9_crit_edge
  %base.0 = phi i32 [ %3, %if.then.if.end9_crit_edge ], [ %3, %if.else.if.end9_crit_edge ], [ %13, %if.end9.sink.split ]
  %logsize.0 = phi i32 [ %9, %if.then.if.end9_crit_edge ], [ %11, %if.else.if.end9_crit_edge ], [ %logsize.0.ph, %if.end9.sink.split ]
  %call = tail call i32 @iwlagn_hw_valid_rtc_data_addr(i32 noundef %base.0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %do.end, label %if.end17

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %16 = ptrtoint ptr %cur_ucode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cur_ucode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp14 = icmp eq i32 %17, 1
  %cond = select i1 %cmp14, ptr @.str.6, ptr @.str.7
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %15, i32 noundef 0, ptr noundef nonnull @.str.5, i32 noundef %base.0, ptr noundef nonnull %cond) #13
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #13
  %18 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %value.i, align 4, !annotation !536
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i.i, align 4
  %read_mem.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %20, i32 0, i32 26
  %21 = ptrtoint ptr %read_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_mem.i.i, align 4
  %call.i.i = call i32 %22(ptr noundef %1, i32 noundef %base.0, ptr noundef nonnull %value.i, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end22.i, label %do.end.i, !prof !537

do.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 1375, i32 noundef 9, ptr noundef null) #13
  br label %iwl_trans_read_mem32.exit

if.end22.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %value.i, align 4
  br label %iwl_trans_read_mem32.exit

iwl_trans_read_mem32.exit:                        ; preds = %if.end22.i, %do.end.i
  %retval.0.i = phi i32 [ -1515870811, %do.end.i ], [ %24, %if.end22.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #13
  %add = add i32 %base.0, 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i169) #13
  %25 = ptrtoint ptr %value.i169 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %value.i169, align 4, !annotation !536
  %26 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i.i, align 4
  %read_mem.i.i171 = getelementptr inbounds %struct.iwl_trans_ops, ptr %27, i32 0, i32 26
  %28 = ptrtoint ptr %read_mem.i.i171 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read_mem.i.i171, align 4
  %call.i.i172 = call i32 %29(ptr noundef %1, i32 noundef %add, ptr noundef nonnull %value.i169, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i172)
  %tobool.not.i173 = icmp eq i32 %call.i.i172, 0
  br i1 %tobool.not.i173, label %if.end22.i175, label %do.end.i174, !prof !537

do.end.i174:                                      ; preds = %iwl_trans_read_mem32.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 1375, i32 noundef 9, ptr noundef null) #13
  br label %iwl_trans_read_mem32.exit177

if.end22.i175:                                    ; preds = %iwl_trans_read_mem32.exit
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %value.i169 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %value.i169, align 4
  br label %iwl_trans_read_mem32.exit177

iwl_trans_read_mem32.exit177:                     ; preds = %if.end22.i175, %do.end.i174
  %retval.0.i176 = phi i32 [ -1515870811, %do.end.i174 ], [ %31, %if.end22.i175 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i169) #13
  %add20 = add i32 %base.0, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i178) #13
  %32 = ptrtoint ptr %value.i178 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %value.i178, align 4, !annotation !536
  %33 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i.i, align 4
  %read_mem.i.i180 = getelementptr inbounds %struct.iwl_trans_ops, ptr %34, i32 0, i32 26
  %35 = ptrtoint ptr %read_mem.i.i180 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read_mem.i.i180, align 4
  %call.i.i181 = call i32 %36(ptr noundef %1, i32 noundef %add20, ptr noundef nonnull %value.i178, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i181)
  %tobool.not.i182 = icmp eq i32 %call.i.i181, 0
  br i1 %tobool.not.i182, label %if.end22.i184, label %do.end.i183, !prof !537

do.end.i183:                                      ; preds = %iwl_trans_read_mem32.exit177
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 1375, i32 noundef 9, ptr noundef null) #13
  br label %iwl_trans_read_mem32.exit186

if.end22.i184:                                    ; preds = %iwl_trans_read_mem32.exit177
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %value.i178 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %value.i178, align 4
  br label %iwl_trans_read_mem32.exit186

iwl_trans_read_mem32.exit186:                     ; preds = %if.end22.i184, %do.end.i183
  %retval.0.i185 = phi i32 [ -1515870811, %do.end.i183 ], [ %38, %if.end22.i184 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i178) #13
  %add22 = add i32 %base.0, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i187) #13
  %39 = ptrtoint ptr %value.i187 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %value.i187, align 4, !annotation !536
  %40 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i.i, align 4
  %read_mem.i.i189 = getelementptr inbounds %struct.iwl_trans_ops, ptr %41, i32 0, i32 26
  %42 = ptrtoint ptr %read_mem.i.i189 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read_mem.i.i189, align 4
  %call.i.i190 = call i32 %43(ptr noundef %1, i32 noundef %add22, ptr noundef nonnull %value.i187, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i190)
  %tobool.not.i191 = icmp eq i32 %call.i.i190, 0
  br i1 %tobool.not.i191, label %if.end22.i193, label %do.end.i192, !prof !537

do.end.i192:                                      ; preds = %iwl_trans_read_mem32.exit186
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 1375, i32 noundef 9, ptr noundef null) #13
  br label %iwl_trans_read_mem32.exit195

if.end22.i193:                                    ; preds = %iwl_trans_read_mem32.exit186
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %value.i187 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %value.i187, align 4
  br label %iwl_trans_read_mem32.exit195

iwl_trans_read_mem32.exit195:                     ; preds = %if.end22.i193, %do.end.i192
  %retval.0.i194 = phi i32 [ -1515870811, %do.end.i192 ], [ %45, %if.end22.i193 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i187) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %logsize.0)
  %cmp24 = icmp ugt i32 %retval.0.i, %logsize.0
  br i1 %cmp24, label %do.end29, label %iwl_trans_read_mem32.exit195.if.end33_crit_edge

iwl_trans_read_mem32.exit195.if.end33_crit_edge:  ; preds = %iwl_trans_read_mem32.exit195
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

do.end29:                                         ; preds = %iwl_trans_read_mem32.exit195
  call void @__sanitizer_cov_trace_pc() #15
  %dev30 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %46 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev30, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %47, i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i, i32 noundef %logsize.0) #13
  br label %if.end33

if.end33:                                         ; preds = %do.end29, %iwl_trans_read_mem32.exit195.if.end33_crit_edge
  %capacity.0 = phi i32 [ %logsize.0, %do.end29 ], [ %retval.0.i, %iwl_trans_read_mem32.exit195.if.end33_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i194, i32 %logsize.0)
  %cmp34 = icmp ugt i32 %retval.0.i194, %logsize.0
  br i1 %cmp34, label %do.end39, label %if.end33.if.end43_crit_edge

if.end33.if.end43_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %dev40 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %48 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev40, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %49, i32 noundef 0, ptr noundef nonnull @.str.9, i32 noundef %retval.0.i194, i32 noundef %logsize.0) #13
  br label %if.end43

if.end43:                                         ; preds = %do.end39, %if.end33.if.end43_crit_edge
  %next_entry.0 = phi i32 [ %logsize.0, %do.end39 ], [ %retval.0.i194, %if.end33.if.end43_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i185)
  %tobool44.not = icmp eq i32 %retval.0.i185, 0
  %next_entry.0.capacity.0 = select i1 %tobool44.not, i32 %next_entry.0, i32 %capacity.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %next_entry.0.capacity.0)
  %cmp46 = icmp eq i32 %next_entry.0.capacity.0, 0
  br i1 %cmp46, label %do.end51, label %if.end55

do.end51:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  %dev52 = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 8
  %50 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev52, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %51, i32 noundef 0, ptr noundef nonnull @.str.10) #13
  br label %cleanup

if.end55:                                         ; preds = %if.end43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 8) to i32))
  %52 = load i32, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 8), align 4
  %and.i = and i32 %52, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %brmerge = or i1 %tobool.i, %full_log
  %53 = call i32 @llvm.umin.i32(i32 %next_entry.0.capacity.0, i32 20)
  %size.0 = select i1 %brmerge, i32 %next_entry.0.capacity.0, i32 %53
  %dev69 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %54 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev69, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %55, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef %size.0) #13
  %tobool72.not = icmp eq ptr %buf, null
  br i1 %tobool72.not, label %if.end55.if.end83_crit_edge, label %if.then73

if.end55.if.end83_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

if.then73:                                        ; preds = %if.end55
  %capacity.0.size.0 = select i1 %full_log, i32 %capacity.0, i32 %size.0
  %bufsz.0 = mul i32 %capacity.0.size.0, 48
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %bufsz.0, i32 noundef 3264) #17
  %56 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call9.i, ptr %buf, align 4
  %tobool80.not = icmp eq ptr %call9.i, null
  br i1 %tobool80.not, label %if.then73.cleanup_crit_edge, label %if.then73.if.end83_crit_edge

if.then73.if.end83_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

if.then73.cleanup_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end83:                                         ; preds = %if.then73.if.end83_crit_edge, %if.end55.if.end83_crit_edge
  %bufsz.1 = phi i32 [ %bufsz.0, %if.then73.if.end83_crit_edge ], [ 0, %if.end55.if.end83_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 8) to i32))
  %57 = load i32, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 8), align 4
  %and.i196 = and i32 %57, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i196)
  %tobool.i197 = icmp ne i32 %and.i196, 0
  %brmerge168 = or i1 %tobool.i197, %full_log
  br i1 %brmerge168, label %if.then86, label %if.else92

if.then86:                                        ; preds = %if.end83
  br i1 %tobool44.not, label %if.then86.if.end90_crit_edge, label %if.then88

if.then86.if.end90_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

if.then88:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub i32 %capacity.0, %next_entry.0
  %call89 = call fastcc i32 @iwl_print_event_log(ptr noundef %priv, i32 noundef %next_entry.0, i32 noundef %sub, i32 noundef %retval.0.i176, i32 noundef 0, ptr noundef %buf, i32 noundef %bufsz.1)
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.then86.if.end90_crit_edge
  %pos.0 = phi i32 [ %call89, %if.then88 ], [ 0, %if.then86.if.end90_crit_edge ]
  %call91 = call fastcc i32 @iwl_print_event_log(ptr noundef %priv, i32 noundef 0, i32 noundef %next_entry.0, i32 noundef %retval.0.i176, i32 noundef %pos.0, ptr noundef %buf, i32 noundef %bufsz.1)
  br label %cleanup

if.else92:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_cmp4(i32 %next_entry.0, i32 %size.0)
  %cmp8.i = icmp ult i32 %next_entry.0, %size.0
  br i1 %tobool44.not, label %if.else7.i, label %if.then.i199

if.then.i199:                                     ; preds = %if.else92
  br i1 %cmp8.i, label %if.then1.i200, label %if.else.i

if.then1.i200:                                    ; preds = %if.then.i199
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = sub i32 %size.0, %next_entry.0
  %sub2.i = sub i32 %capacity.0, %sub.i
  %call.i = call fastcc i32 @iwl_print_event_log(ptr noundef %priv, i32 noundef %sub2.i, i32 noundef %sub.i, i32 noundef %retval.0.i176, i32 noundef 0, ptr noundef %buf, i32 noundef %bufsz.1) #13
  %call4.i = call fastcc i32 @iwl_print_event_log(ptr noundef %priv, i32 noundef 0, i32 noundef %next_entry.0, i32 noundef %retval.0.i176, i32 noundef %call.i, ptr noundef %buf, i32 noundef %bufsz.1) #13
  br label %cleanup

if.else.i:                                        ; preds = %if.then.i199
  call void @__sanitizer_cov_trace_pc() #15
  %sub5.i = sub i32 %next_entry.0, %size.0
  %call6.i = call fastcc i32 @iwl_print_event_log(ptr noundef %priv, i32 noundef %sub5.i, i32 noundef %size.0, i32 noundef %retval.0.i176, i32 noundef 0, ptr noundef %buf, i32 noundef %bufsz.1) #13
  br label %cleanup

if.else7.i:                                       ; preds = %if.else92
  br i1 %cmp8.i, label %if.then9.i, label %if.else11.i

if.then9.i:                                       ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #15
  %call10.i = call fastcc i32 @iwl_print_event_log(ptr noundef %priv, i32 noundef 0, i32 noundef %next_entry.0, i32 noundef %retval.0.i176, i32 noundef 0, ptr noundef %buf, i32 noundef %bufsz.1) #13
  br label %cleanup

if.else11.i:                                      ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub12.i = sub i32 %next_entry.0, %size.0
  %call13.i = call fastcc i32 @iwl_print_event_log(ptr noundef %priv, i32 noundef %sub12.i, i32 noundef %size.0, i32 noundef %retval.0.i176, i32 noundef 0, ptr noundef %buf, i32 noundef %bufsz.1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else11.i, %if.then9.i, %if.else.i, %if.then1.i200, %if.end90, %if.then73.cleanup_crit_edge, %do.end51, %do.end
  %retval.0 = phi i32 [ 0, %do.end51 ], [ -22, %do.end ], [ -12, %if.then73.cleanup_crit_edge ], [ %call91, %if.end90 ], [ %call4.i, %if.then1.i200 ], [ %call6.i, %if.else.i ], [ %call10.i, %if.then9.i ], [ %call13.i, %if.else11.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwlagn_hw_valid_rtc_data_addr(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_print_event_log(ptr nocapture noundef readonly %priv, i32 noundef %start_idx, i32 noundef %num_events, i32 noundef %mode, i32 noundef %pos, ptr nocapture noundef readonly %buf, i32 noundef %bufsz) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_events)
  %cmp = icmp eq i32 %num_events, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %log_event_table = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 142, i32 1
  %2 = ptrtoint ptr %log_event_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %log_event_table, align 4
  %cur_ucode = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 143
  %4 = ptrtoint ptr %cur_ucode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_ucode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp2 = icmp eq i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  br i1 %tobool.not, label %if.then4, label %if.then3.if.end10_crit_edge

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then4:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  %fw = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 3
  %6 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw, align 4
  %init_evtlog_ptr = getelementptr inbounds %struct.iwl_fw, ptr %7, i32 0, i32 7
  br label %if.end10.sink.split

if.else:                                          ; preds = %if.end
  br i1 %tobool.not, label %if.then7, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %fw8 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 3
  %8 = ptrtoint ptr %fw8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw8, align 4
  %inst_evtlog_ptr = getelementptr inbounds %struct.iwl_fw, ptr %9, i32 0, i32 10
  br label %if.end10.sink.split

if.end10.sink.split:                              ; preds = %if.then7, %if.then4
  %inst_evtlog_ptr.sink = phi ptr [ %inst_evtlog_ptr, %if.then7 ], [ %init_evtlog_ptr, %if.then4 ]
  %10 = ptrtoint ptr %inst_evtlog_ptr.sink to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %inst_evtlog_ptr.sink, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end10.sink.split, %if.else.if.end10_crit_edge, %if.then3.if.end10_crit_edge
  %base.0 = phi i32 [ %3, %if.then3.if.end10_crit_edge ], [ %3, %if.else.if.end10_crit_edge ], [ %11, %if.end10.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp11 = icmp eq i32 %mode, 0
  %ops = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %grab_nic_access = getelementptr inbounds %struct.iwl_trans_ops, ptr %13, i32 0, i32 32
  %14 = ptrtoint ptr %grab_nic_access to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %grab_nic_access, align 4
  %call = tail call zeroext i1 %15(ptr noundef %1) #13
  br i1 %call, label %for.body.lr.ph, label %if.end10.cleanup_crit_edge, !prof !537

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end10
  %. = select i1 %cmp11, i32 8, i32 12
  %mul = mul i32 %., %start_idx
  %add = add i32 %mul, 16
  %add15 = add i32 %add, %base.0
  tail call void @iwl_write32(ptr noundef %1, i32 noundef 1036, i32 noundef %add15) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bufsz)
  %tobool37.not = icmp eq i32 %bufsz, 0
  %dev48 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %dev51 = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0106 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %pos.addr.0105 = phi i32 [ %pos, %for.body.lr.ph ], [ %pos.addr.1, %for.inc.for.body_crit_edge ]
  %call21 = tail call i32 @iwl_read32(ptr noundef %1, i32 noundef 1052) #13
  %call22 = tail call i32 @iwl_read32(ptr noundef %1, i32 noundef 1052) #13
  br i1 %cmp11, label %if.then24, label %if.else35

if.then24:                                        ; preds = %for.body
  br i1 %tobool37.not, label %if.else29, label %if.then26

if.then26:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 %pos.addr.0105
  %sub = sub i32 %bufsz, %pos.addr.0105
  %call27 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.26, i32 noundef %call22, i32 noundef %call21) #13
  %add28 = add i32 %call27, %pos.addr.0105
  br label %for.inc

if.else29:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev51, align 8
  tail call fastcc void @trace_iwlwifi_dev_ucode_event(ptr noundef %19, i32 noundef 0, i32 noundef %call22, i32 noundef %call21)
  %20 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev48, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %21, i32 noundef 0, ptr noundef nonnull @.str.26, i32 noundef %call22, i32 noundef %call21) #13
  br label %for.inc

if.else35:                                        ; preds = %for.body
  %call36 = tail call i32 @iwl_read32(ptr noundef %1, i32 noundef 1052) #13
  br i1 %tobool37.not, label %do.end47, label %if.then38

if.then38:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buf, align 4
  %add.ptr39 = getelementptr i8, ptr %23, i32 %pos.addr.0105
  %sub40 = sub i32 %bufsz, %pos.addr.0105
  %call41 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr39, i32 noundef %sub40, ptr noundef nonnull @.str.27, i32 noundef %call22, i32 noundef %call36, i32 noundef %call21) #13
  %add42 = add i32 %call41, %pos.addr.0105
  br label %for.inc

do.end47:                                         ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev48, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %25, i32 noundef 0, ptr noundef nonnull @.str.27, i32 noundef %call22, i32 noundef %call36, i32 noundef %call21) #13
  %26 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev51, align 8
  tail call fastcc void @trace_iwlwifi_dev_ucode_event(ptr noundef %27, i32 noundef %call22, i32 noundef %call36, i32 noundef %call21)
  br label %for.inc

for.inc:                                          ; preds = %do.end47, %if.then38, %if.else29, %if.then26
  %pos.addr.1 = phi i32 [ %add28, %if.then26 ], [ %pos.addr.0105, %if.else29 ], [ %add42, %if.then38 ], [ %pos.addr.0105, %do.end47 ]
  %inc = add nuw i32 %i.0106, 1
  %exitcond.not = icmp eq i32 %inc, %num_events
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops, align 4
  %release_nic_access.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %29, i32 0, i32 33
  %30 = ptrtoint ptr %release_nic_access.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %release_nic_access.i, align 4
  tail call void %31(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %pos.addr.1, %for.end ], [ %pos, %entry.cleanup_crit_edge ], [ %pos, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwlagn_lift_passive_no_rx(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %passive_no_rx = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %passive_no_rx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %passive_no_rx, align 4, !range !535
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %transport_queue_stop = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 8
  %dev10 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %hw = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %mq.025 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %div3.i = lshr i32 %mq.025, 5
  %arrayidx.i = getelementptr i32, ptr %transport_queue_stop, i32 %div3.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  %4 = shl nuw i32 1, %mq.025
  %5 = and i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  %6 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev10, align 4
  br i1 %tobool1.not, label %do.end, label %do.end9

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %7, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_lift_passive_no_rx, ptr noundef nonnull @.str.12, i32 noundef %mq.025) #13
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_wake_queue(ptr noundef %9, i32 noundef %mq.025) #13
  br label %for.inc

do.end9:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %7, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_lift_passive_no_rx, ptr noundef nonnull @.str.13, i32 noundef %mq.025) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end9, %do.end
  %inc = add nuw nsw i32 %mq.025, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %passive_no_rx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %passive_no_rx, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @iwlagn_rate_control_register() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %call) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @iwl_opmode_register(ptr noundef nonnull @.str.14, ptr noundef nonnull @iwl_dvm_ops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %call2) #18
  tail call void @iwlagn_rate_control_unregister() #13
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %do.end7 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iwl_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @iwl_opmode_deregister(ptr noundef nonnull @.str.14) #13
  tail call void @iwlagn_rate_control_unregister() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_opmode_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwlagn_rate_control_unregister() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iwlwifi_dev_ucode_event(ptr noundef %dev, i32 noundef %time, i32 noundef %data, i32 noundef %ev) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_ucode_event, i32 0, i32 1), ptr blockaddress(@trace_iwlwifi_dev_ucode_event, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !538

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !524) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !537

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !524) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !539
  %call42 = tail call i32 @__traceiter_iwlwifi_dev_ucode_event(ptr noundef null, ptr noundef %dev, i32 noundef %time, i32 noundef %data, i32 noundef %ev) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !540
  %13 = tail call i32 @llvm.read_register.i32(metadata !524) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !524) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !537

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !524) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !541
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_ucode_event, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_ucode_event, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_iwlwifi_dev_ucode_event.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_iwlwifi_dev_ucode_event.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 133, ptr noundef nonnull @.str.29) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !542
  %31 = tail call i32 @llvm.read_register.i32(metadata !524) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iwlwifi_dev_ucode_event(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwlagn_rate_control_register() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_opmode_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @iwl_op_mode_dvm_start(ptr noundef %trans, ptr noundef %cfg, ptr noundef %fw, ptr noundef %dbgfs_dir) #0 align 64 {
entry:
  %trans_cfg = alloca %struct.iwl_trans_config, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %trans_cfg) #13
  %0 = call ptr @memset(ptr %trans_cfg, i32 0, i32 40)
  %call = tail call ptr @iwl_alloc_all() #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 35
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %2) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv2 = getelementptr inbounds %struct.ieee80211_hw, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv2, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @iwl_dvm_ops, ptr %4, align 4
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %trans, ptr %op_mode_specific, align 8
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %dev4 = getelementptr inbounds %struct.iwl_op_mode, ptr %4, i32 2
  %9 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %dev4, align 4
  %cfg5 = getelementptr inbounds %struct.iwl_op_mode, ptr %4, i32 3
  %10 = ptrtoint ptr %cfg5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cfg, ptr %cfg5, align 8
  %fw6 = getelementptr inbounds %struct.iwl_op_mode, ptr %4, i32 4
  %11 = ptrtoint ptr %fw6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %fw, ptr %fw6, align 4
  %trans_cfg8 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 3
  %12 = ptrtoint ptr %trans_cfg8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %trans_cfg8, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %device_family, align 4
  %switch.tableidx = add i32 %15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %switch.tableidx)
  %16 = icmp ult i32 %switch.tableidx, 14
  br i1 %16, label %switch.lookup, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [14 x ptr], ptr @switch.table.iwl_op_mode_dvm_start, i32 0, i32 %switch.tableidx
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %lib26 = getelementptr inbounds %struct.iwl_op_mode, ptr %4, i32 5
  %18 = ptrtoint ptr %lib26 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %switch.load, ptr %lib26, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  %lib27 = getelementptr inbounds %struct.iwl_op_mode, ptr %4, i32 5
  %19 = ptrtoint ptr %lib27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lib27, align 8
  %tobool28.not = icmp eq ptr %20, null
  br i1 %tobool28.not, label %do.end41, label %if.end57.critedge, !prof !534

do.end41:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1301, i32 noundef 9, ptr noundef null) #13
  br label %out_free_hw

if.end57.critedge:                                ; preds = %sw.epilog
  %21 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %4, ptr %trans_cfg, align 4
  %no_reclaim_cmds = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 4
  %22 = ptrtoint ptr %no_reclaim_cmds to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @iwl_op_mode_dvm_start.no_reclaim_cmds, ptr %no_reclaim_cmds, align 4
  %n_no_reclaim_cmds = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 5
  %23 = ptrtoint ptr %n_no_reclaim_cmds to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 5, ptr %n_no_reclaim_cmds, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 2) to i32))
  %24 = load i32, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 2), align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %24, label %sw.default63 [
    i32 0, label %if.end57.critedge.sw.bb59_crit_edge
    i32 1, label %if.end57.critedge.sw.bb59_crit_edge433
    i32 2, label %sw.bb60
  ]

if.end57.critedge.sw.bb59_crit_edge433:           ; preds = %if.end57.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb59

if.end57.critedge.sw.bb59_crit_edge:              ; preds = %if.end57.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb59

sw.bb59:                                          ; preds = %if.end57.critedge.sw.bb59_crit_edge, %if.end57.critedge.sw.bb59_crit_edge433
  %rx_buf_size = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 6
  %26 = ptrtoint ptr %rx_buf_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %rx_buf_size, align 4
  br label %sw.epilog70

sw.bb60:                                          ; preds = %if.end57.critedge
  call void @__sanitizer_cov_trace_pc() #15
  %rx_buf_size61 = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 6
  %27 = ptrtoint ptr %rx_buf_size61 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %rx_buf_size61, align 4
  br label %sw.epilog70

sw.default63:                                     ; preds = %if.end57.critedge
  call void @__sanitizer_cov_trace_pc() #15
  %rx_buf_size64 = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 6
  %28 = ptrtoint ptr %rx_buf_size64 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %rx_buf_size64, align 4
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %24) #18
  br label %sw.epilog70

sw.epilog70:                                      ; preds = %sw.default63, %sw.bb60, %sw.bb59
  %cmd_q_wdg_timeout = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 3
  %29 = ptrtoint ptr %cmd_q_wdg_timeout to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %cmd_q_wdg_timeout, align 4
  %command_groups = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 9
  %30 = ptrtoint ptr %command_groups to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @iwl_dvm_groups, ptr %command_groups, align 4
  %command_groups_size = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 10
  %31 = ptrtoint ptr %command_groups_size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %command_groups_size, align 4
  %cmd_fifo = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 2
  %32 = ptrtoint ptr %cmd_fifo to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 7, ptr %cmd_fifo, align 1
  %cb_data_offs = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 11
  %33 = ptrtoint ptr %cb_data_offs to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 16, ptr %cb_data_offs, align 4
  %34 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %op_mode_specific, align 8
  %trans_cfg73 = getelementptr inbounds %struct.iwl_trans, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %trans_cfg73 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %trans_cfg73, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %num_of_queues = getelementptr inbounds %struct.iwl_base_params, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %num_of_queues to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %num_of_queues, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %41)
  %cmp = icmp ugt i16 %41, 32
  br i1 %cmp, label %do.end90, label %sw.epilog70.if.end96_crit_edge, !prof !534

sw.epilog70.if.end96_crit_edge:                   ; preds = %sw.epilog70
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end96

do.end90:                                         ; preds = %sw.epilog70
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1337, i32 noundef 9, ptr noundef null) #13
  br label %if.end96

if.end96:                                         ; preds = %do.end90, %sw.epilog70.if.end96_crit_edge
  %ucode_capa = getelementptr inbounds %struct.iwl_fw, ptr %fw, i32 0, i32 5
  %flags = getelementptr inbounds %struct.iwl_fw, ptr %fw, i32 0, i32 5, i32 3
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags, align 4
  %and = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool104.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool104.not, i8 8, i8 16
  %spec.select432 = select i1 %tobool104.not, i8 4, i8 9
  %44 = getelementptr inbounds %struct.iwl_priv, ptr %op_mode_specific, i32 0, i32 46
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %spec.select, ptr %44, align 1
  %46 = getelementptr inbounds %struct.iwl_trans_config, ptr %trans_cfg, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %spec.select432, ptr %46, align 4
  %48 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %op_mode_specific, align 8
  %50 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %trans_cfg, align 4
  %op_mode1.i = getelementptr inbounds %struct.iwl_trans, ptr %49, i32 0, i32 2
  %52 = ptrtoint ptr %op_mode1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %op_mode1.i, align 8
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %49, i32 0, i32 1
  %53 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops.i, align 4
  %configure.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %54, i32 0, i32 29
  %55 = ptrtoint ptr %configure.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %configure.i, align 4
  call void %56(ptr noundef %49, ptr noundef nonnull %trans_cfg) #13
  %call.i = call i32 @iwl_cmd_groups_verify_sorted(ptr noundef nonnull %trans_cfg) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end96.iwl_trans_configure.exit_crit_edge, label %do.end.i, !prof !537

if.end96.iwl_trans_configure.exit_crit_edge:      ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_trans_configure.exit

do.end.i:                                         ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 1040, i32 noundef 9, ptr noundef null) #13
  br label %iwl_trans_configure.exit

iwl_trans_configure.exit:                         ; preds = %do.end.i, %if.end96.iwl_trans_configure.exit_crit_edge
  %rx_mpdu_cmd = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 16
  %57 = ptrtoint ptr %rx_mpdu_cmd to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -63, ptr %rx_mpdu_cmd, align 8
  %rx_mpdu_cmd_hdr_size = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 17
  %58 = ptrtoint ptr %rx_mpdu_cmd_hdr_size to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 4, ptr %rx_mpdu_cmd_hdr_size, align 1
  %59 = ptrtoint ptr %command_groups to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %command_groups, align 4
  %command_groups111 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 21
  %61 = ptrtoint ptr %command_groups111 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %command_groups111, align 8
  %62 = ptrtoint ptr %command_groups_size to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %command_groups_size, align 4
  %command_groups_size113 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 22
  %64 = ptrtoint ptr %command_groups_size113 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %command_groups_size113, align 4
  %hw114 = getelementptr inbounds %struct.iwl_op_mode, ptr %4, i32 84
  %65 = ptrtoint ptr %hw114 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw114, align 4
  %67 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %op_mode_specific, align 8
  %dev116 = getelementptr inbounds %struct.iwl_trans, ptr %68, i32 0, i32 8
  %69 = ptrtoint ptr %dev116 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev116, align 8
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %66, i32 0, i32 1
  %71 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %wiphy.i, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %72, i32 0, i32 56, i32 1
  %73 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %parent.i.i, align 8
  %74 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev4, align 4
  call void (ptr, ptr, ...) @__iwl_info(ptr noundef %75, ptr noundef nonnull @.str.127) #13
  %76 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev4, align 4
  call void (ptr, ptr, ...) @__iwl_info(ptr noundef %77, ptr noundef nonnull @.str.128) #13
  %78 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev4, align 4
  call void (ptr, ptr, ...) @__iwl_info(ptr noundef %79, ptr noundef nonnull @.str.129) #13
  %80 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev4, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %81, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.41) #13
  %bt_ch_announce = getelementptr inbounds %struct.iwl_op_mode, ptr %4, i32 2568
  %82 = ptrtoint ptr %bt_ch_announce to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %bt_ch_announce, align 4
  %83 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev4, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %84, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43) #13
  %lock = getelementptr inbounds %struct.iwl_op_mode, ptr %4, i32 2127
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.45, ptr noundef nonnull @iwl_op_mode_dvm_start.__key, i16 noundef signext 3) #13
  %85 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev4, align 4
  %87 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %op_mode_specific, align 8
  %name144 = getelementptr inbounds %struct.iwl_trans, ptr %88, i32 0, i32 35
  %89 = ptrtoint ptr %name144 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %name144, align 4
  %hw_rev = getelementptr inbounds %struct.iwl_trans, ptr %88, i32 0, i32 10
  %91 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %hw_rev, align 8
  call void (ptr, ptr, ...) @__iwl_info(ptr noundef %86, ptr noundef nonnull @.str.46, ptr noundef %90, i32 noundef %92) #13
  %93 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %op_mode_specific, align 8
  call void @__might_sleep(ptr noundef nonnull @.str.25, i32 noundef 1045) #13
  %ops.i411 = getelementptr inbounds %struct.iwl_trans, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %ops.i411 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ops.i411, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %call.i412 = call i32 %98(ptr noundef %94) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i412)
  %tobool150.not = icmp eq i32 %call.i412, 0
  br i1 %tobool150.not, label %if.end152, label %iwl_trans_configure.exit.out_free_hw_crit_edge

iwl_trans_configure.exit.out_free_hw_crit_edge:   ; preds = %iwl_trans_configure.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_hw

if.end152:                                        ; preds = %iwl_trans_configure.exit
  %99 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %op_mode_specific, align 8
  %eeprom_blob = getelementptr inbounds %struct.iwl_op_mode, ptr %4, i32 2744
  %eeprom_blob_size = getelementptr inbounds %struct.iwl_op_mode, ptr %4, i32 2745
  %call154 = call i32 @iwl_read_eeprom(ptr noundef %100, ptr noundef %eeprom_blob, ptr noundef %eeprom_blob_size) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %if.end164, label %do.end160

do.end160:                                        ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #15
  %101 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev4, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %102, i32 noundef 0, ptr noundef nonnull @.str.47) #13
  br label %out_free_hw

if.end164:                                        ; preds = %if.end152
  %103 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %op_mode_specific, align 8
  call void @__might_sleep(ptr noundef nonnull @.str.25, i32 noundef 1091) #13
  %ops.i413 = getelementptr inbounds %struct.iwl_trans, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %ops.i413 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ops.i413, align 4
  %stop_device.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %106, i32 0, i32 4
  %107 = ptrtoint ptr %stop_device.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %stop_device.i, align 4
  call void %108(ptr noundef %104) #13
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %104, i32 0, i32 6
  %109 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %state.i, align 8
  %110 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %op_mode_specific, align 8
  %112 = ptrtoint ptr %cfg5 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %cfg5, align 8
  %114 = ptrtoint ptr %eeprom_blob to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %eeprom_blob, align 4
  %116 = ptrtoint ptr %eeprom_blob_size to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %eeprom_blob_size, align 8
  %call170 = call ptr @iwl_parse_eeprom_data(ptr noundef %111, ptr noundef %113, ptr noundef %115, i32 noundef %117) #13
  %nvm_data = getelementptr inbounds %struct.iwl_op_mode, ptr %4, i32 2743
  %118 = ptrtoint ptr %nvm_data to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call170, ptr %nvm_data, align 8
  %tobool172.not = icmp eq ptr %call170, null
  br i1 %tobool172.not, label %if.end164.out_free_eeprom_blob_crit_edge, label %if.end174

if.end164.out_free_eeprom_blob_crit_edge:         ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_eeprom_blob

if.end174:                                        ; preds = %if.end164
  %119 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %op_mode_specific, align 8
  %nvm_version.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %call170, i32 0, i32 22
  %121 = ptrtoint ptr %nvm_version.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %nvm_version.i, align 4
  %cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %120, i32 0, i32 4
  %123 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cfg.i, align 8
  %nvm_ver.i = getelementptr inbounds %struct.iwl_cfg, ptr %124, i32 0, i32 19
  %125 = ptrtoint ptr %nvm_ver.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %nvm_ver.i, align 8
  %conv.i = zext i16 %126 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %122, %conv.i
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end174.if.end180_crit_edge

if.end174.if.end180_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end180

lor.lhs.false.i:                                  ; preds = %if.end174
  %calib_version.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %call170, i32 0, i32 2
  %127 = ptrtoint ptr %calib_version.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %calib_version.i, align 2
  %conv2.i = zext i8 %128 to i32
  %nvm_calib_ver.i = getelementptr inbounds %struct.iwl_cfg, ptr %124, i32 0, i32 20
  %129 = ptrtoint ptr %nvm_calib_ver.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %nvm_calib_ver.i, align 2
  %conv4.i = zext i16 %130 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.i, i32 %conv4.i)
  %cmp5.not.i = icmp ult i32 %conv2.i, %conv4.i
  br i1 %cmp5.not.i, label %iwl_nvm_check_version.exit, label %lor.lhs.false.i.if.end180_crit_edge

lor.lhs.false.i.if.end180_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end180

iwl_nvm_check_version.exit:                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev15.i = getelementptr inbounds %struct.iwl_trans, ptr %120, i32 0, i32 8
  %131 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev15.i, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %132, i32 noundef 0, ptr noundef nonnull @.str.131, i32 noundef %122, i32 noundef %conv.i, i32 noundef %conv2.i, i32 noundef %conv4.i) #13
  br label %out_free_eeprom

if.end180:                                        ; preds = %lor.lhs.false.i.if.end180_crit_edge, %if.end174.if.end180_crit_edge
  %dev.i414 = getelementptr inbounds %struct.iwl_trans, ptr %120, i32 0, i32 8
  %133 = ptrtoint ptr %dev.i414 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev.i414, align 8
  %calib_version9.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %call170, i32 0, i32 2
  %135 = ptrtoint ptr %calib_version9.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %calib_version9.i, align 2
  %conv10.i = zext i8 %136 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %134, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_nvm_check_version, ptr noundef nonnull @.str.130, i32 noundef %122, i32 noundef %conv10.i) #13
  %137 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %nvm_data, align 8
  %sku_cap_11n_enable.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %138, i32 0, i32 10
  %139 = ptrtoint ptr %sku_cap_11n_enable.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %sku_cap_11n_enable.i, align 2, !range !535
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool.not.i416 = icmp eq i8 %140, 0
  br i1 %tobool.not.i416, label %land.lhs.true7.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end180
  %141 = ptrtoint ptr %cfg5 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cfg5, align 8
  %ht_params.i = getelementptr inbounds %struct.iwl_cfg, ptr %142, i32 0, i32 3
  %143 = ptrtoint ptr %ht_params.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ht_params.i, align 8
  %tobool1.not.i = icmp eq ptr %144, null
  br i1 %tobool1.not.i, label %do.end.i419, label %land.lhs.true.i.do.end23.i_crit_edge

land.lhs.true.i.do.end23.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end23.i

do.end.i419:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %145 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev4, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %146, i32 noundef 0, ptr noundef nonnull @.str.132) #13
  br label %out_free_eeprom

land.lhs.true7.i:                                 ; preds = %if.end180
  %sku_cap_band_24ghz_enable.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %138, i32 0, i32 8
  %147 = ptrtoint ptr %sku_cap_band_24ghz_enable.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %sku_cap_band_24ghz_enable.i, align 4, !range !535
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool8.not.i = icmp eq i8 %148, 0
  br i1 %tobool8.not.i, label %land.lhs.true9.i, label %land.lhs.true7.i.do.end23.i_crit_edge

land.lhs.true7.i.do.end23.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end23.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true7.i
  %sku_cap_band_52ghz_enable.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %138, i32 0, i32 9
  %149 = ptrtoint ptr %sku_cap_band_52ghz_enable.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %sku_cap_band_52ghz_enable.i, align 1, !range !535
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool10.not.i = icmp eq i8 %150, 0
  br i1 %tobool10.not.i, label %do.end15.i, label %land.lhs.true9.i.do.end23.i_crit_edge

land.lhs.true9.i.do.end23.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end23.i

do.end15.i:                                       ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #15
  %151 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev4, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %152, i32 noundef 0, ptr noundef nonnull @.str.133) #13
  br label %out_free_eeprom

do.end23.i:                                       ; preds = %land.lhs.true9.i.do.end23.i_crit_edge, %land.lhs.true7.i.do.end23.i_crit_edge, %land.lhs.true.i.do.end23.i_crit_edge
  %cond32.i = phi ptr [ @.str.135, %land.lhs.true.i.do.end23.i_crit_edge ], [ @.str.136, %land.lhs.true9.i.do.end23.i_crit_edge ], [ @.str.136, %land.lhs.true7.i.do.end23.i_crit_edge ]
  %153 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dev4, align 4
  %sku_cap_band_24ghz_enable25.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %138, i32 0, i32 8
  %155 = ptrtoint ptr %sku_cap_band_24ghz_enable25.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %sku_cap_band_24ghz_enable25.i, align 4, !range !535
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool26.not.i = icmp eq i8 %156, 0
  %cond.i = select i1 %tobool26.not.i, ptr @.str.136, ptr @.str.135
  %sku_cap_band_52ghz_enable27.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %138, i32 0, i32 9
  %157 = ptrtoint ptr %sku_cap_band_52ghz_enable27.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %sku_cap_band_52ghz_enable27.i, align 1, !range !535
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool28.not.i = icmp eq i8 %158, 0
  %cond29.i = select i1 %tobool28.not.i, ptr @.str.136, ptr @.str.135
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %154, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_eeprom_init_hw_params, ptr noundef nonnull @.str.134, ptr noundef nonnull %cond.i, ptr noundef nonnull @.str.137, ptr noundef nonnull %cond29.i, ptr noundef nonnull @.str.137, ptr noundef nonnull %cond32.i, ptr noundef nonnull @.str.137) #13
  %valid_tx_ant.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %138, i32 0, i32 20
  %159 = ptrtoint ptr %valid_tx_ant.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %valid_tx_ant.i, align 1
  %and.i.i = and i8 %160, 1
  %and3.i.i = lshr i8 %160, 1
  %and3.lobit.i.i = and i8 %and3.i.i, 1
  %add.i.i = add nuw nsw i8 %and3.lobit.i.i, %and.i.i
  %and10.i.i = lshr i8 %160, 2
  %and10.lobit.i.i = and i8 %and10.i.i, 1
  %add16.i.i = add nuw nsw i8 %add.i.i, %and10.lobit.i.i
  %hw_params.i = getelementptr inbounds %struct.iwl_op_mode, ptr %4, i32 89
  %161 = ptrtoint ptr %hw_params.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %add16.i.i, ptr %hw_params.i, align 8
  %162 = ptrtoint ptr %cfg5 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %cfg5, align 8
  %rx_with_siso_diversity.i = getelementptr inbounds %struct.iwl_cfg, ptr %163, i32 0, i32 21
  %164 = ptrtoint ptr %rx_with_siso_diversity.i to i32
  call void @__asan_loadN_noabort(i32 %164, i32 3)
  %bf.load.i = load i24, ptr %rx_with_siso_diversity.i, align 4
  %tobool36.not.i = icmp sgt i24 %bf.load.i, -1
  br i1 %tobool36.not.i, label %if.else.i, label %do.end23.i.if.end184_crit_edge

do.end23.i.if.end184_crit_edge:                   ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end184

if.else.i:                                        ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  %valid_rx_ant.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %138, i32 0, i32 21
  %165 = ptrtoint ptr %valid_rx_ant.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %valid_rx_ant.i, align 2
  %and.i72.i = and i8 %166, 1
  %and3.i73.i = lshr i8 %166, 1
  %and3.lobit.i74.i = and i8 %and3.i73.i, 1
  %add.i75.i = add nuw nsw i8 %and3.lobit.i74.i, %and.i72.i
  %and10.i76.i = lshr i8 %166, 2
  %and10.lobit.i77.i = and i8 %and10.i76.i, 1
  %add16.i78.i = add nuw nsw i8 %add.i75.i, %and10.lobit.i77.i
  br label %if.end184

if.end184:                                        ; preds = %if.else.i, %do.end23.i.if.end184_crit_edge
  %.sink.i = phi i8 [ %add16.i78.i, %if.else.i ], [ 1, %do.end23.i.if.end184_crit_edge ]
  %167 = getelementptr inbounds %struct.iwl_priv, ptr %op_mode_specific, i32 0, i32 17, i32 1
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %.sink.i, ptr %167, align 1
  %169 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dev4, align 4
  %171 = ptrtoint ptr %valid_tx_ant.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %valid_tx_ant.i, align 1
  %conv.i420 = zext i8 %172 to i32
  %valid_rx_ant49.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %138, i32 0, i32 21
  %173 = ptrtoint ptr %valid_rx_ant49.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %valid_rx_ant49.i, align 2
  %conv50.i = zext i8 %174 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %170, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_eeprom_init_hw_params, ptr noundef nonnull @.str.138, i32 noundef %conv.i420, i32 noundef %conv50.i) #13
  %addresses = getelementptr inbounds %struct.iwl_priv, ptr %op_mode_specific, i32 0, i32 49
  %175 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %nvm_data, align 8
  %hw_addr = getelementptr inbounds %struct.iwl_nvm_data, ptr %176, i32 0, i32 1
  %177 = call ptr @memcpy(ptr %addresses, ptr %hw_addr, i32 6)
  %178 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dev4, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %179, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.48, ptr noundef %addresses) #13
  %180 = ptrtoint ptr %hw114 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %hw114, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %wiphy, align 8
  %addresses202 = getelementptr inbounds %struct.wiphy, ptr %183, i32 0, i32 3
  %184 = ptrtoint ptr %addresses202 to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %addresses, ptr %addresses202, align 8
  %185 = load ptr, ptr %hw114, align 4
  %wiphy204 = getelementptr inbounds %struct.ieee80211_hw, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %wiphy204 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %wiphy204, align 8
  %n_addresses = getelementptr inbounds %struct.wiphy, ptr %187, i32 0, i32 8
  %188 = ptrtoint ptr %n_addresses to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 1, ptr %n_addresses, align 2
  %189 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %nvm_data, align 8
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %190, align 4
  %conv207 = and i32 %192, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv207)
  %cmp208.not = icmp eq i32 %conv207, 0
  br i1 %cmp208.not, label %if.end184.if.end227_crit_edge, label %if.then210

if.end184.if.end227_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end227

if.then210:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx212 = getelementptr %struct.iwl_op_mode, ptr %4, i32 682
  %193 = call ptr @memcpy(ptr %arrayidx212, ptr %addresses, i32 6)
  %arrayidx222 = getelementptr [6 x i8], ptr %arrayidx212, i32 0, i32 5
  %194 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx222, align 1
  %inc = add i8 %195, 1
  store i8 %inc, ptr %arrayidx222, align 1
  %196 = ptrtoint ptr %hw114 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %hw114, align 4
  %wiphy224 = getelementptr inbounds %struct.ieee80211_hw, ptr %197, i32 0, i32 1
  %198 = ptrtoint ptr %wiphy224 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %wiphy224, align 8
  %n_addresses225 = getelementptr inbounds %struct.wiphy, ptr %199, i32 0, i32 8
  %200 = ptrtoint ptr %n_addresses225 to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %n_addresses225, align 2
  %inc226 = add i16 %201, 1
  store i16 %inc226, ptr %n_addresses225, align 2
  br label %if.end227

if.end227:                                        ; preds = %if.then210, %if.end184.if.end227_crit_edge
  %202 = ptrtoint ptr %cfg5 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %cfg5, align 8
  %ht_params.i423 = getelementptr inbounds %struct.iwl_cfg, ptr %203, i32 0, i32 3
  %204 = ptrtoint ptr %ht_params.i423 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %ht_params.i423, align 8
  %tobool.not.i424 = icmp eq ptr %205, null
  br i1 %tobool.not.i424, label %if.end227.iwl_set_hw_params.exit_crit_edge, label %if.then.i

if.end227.iwl_set_hw_params.exit_crit_edge:       ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_set_hw_params.exit

if.then.i:                                        ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #15
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load1_noabort(i32 %206)
  %bf.load.i425 = load i8, ptr %205, align 1
  %use_rts_for_aggregation.i = getelementptr inbounds %struct.iwl_priv, ptr %op_mode_specific, i32 0, i32 17, i32 2
  %207 = lshr i8 %bf.load.i425, 4
  %.lobit.i = and i8 %207, 1
  %208 = ptrtoint ptr %use_rts_for_aggregation.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %.lobit.i, ptr %use_rts_for_aggregation.i, align 2
  br label %iwl_set_hw_params.exit

iwl_set_hw_params.exit:                           ; preds = %if.then.i, %if.end227.iwl_set_hw_params.exit_crit_edge
  %209 = ptrtoint ptr %lib27 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %lib27, align 8
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %210, align 4
  call void %212(ptr noundef %op_mode_specific) #13
  %213 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %nvm_data, align 8
  %sku_cap_ipan_enable = getelementptr inbounds %struct.iwl_nvm_data, ptr %214, i32 0, i32 14
  %215 = ptrtoint ptr %sku_cap_ipan_enable to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %sku_cap_ipan_enable, align 2, !range !535
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool229.not = icmp eq i8 %216, 0
  br i1 %tobool229.not, label %do.end234, label %iwl_set_hw_params.exit.if.end242_crit_edge

iwl_set_hw_params.exit.if.end242_crit_edge:       ; preds = %iwl_set_hw_params.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end242

do.end234:                                        ; preds = %iwl_set_hw_params.exit
  call void @__sanitizer_cov_trace_pc() #15
  %217 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %dev4, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %218, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.49) #13
  %and238 = and i32 %43, -2
  %219 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 8, ptr %44, align 1
  %220 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 4, ptr %46, align 4
  %221 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %op_mode_specific, align 8
  call fastcc void @iwl_trans_configure(ptr noundef %222, ptr noundef nonnull %trans_cfg)
  br label %if.end242

if.end242:                                        ; preds = %do.end234, %iwl_set_hw_params.exit.if.end242_crit_edge
  %ucode_flags.0 = phi i32 [ %43, %iwl_set_hw_params.exit.if.end242_crit_edge ], [ %and238, %do.end234 ]
  %queue_stop_count = getelementptr inbounds %struct.iwl_op_mode, ptr %4, i32 51
  br label %for.body

for.body:                                         ; preds = %if.end257.for.body_crit_edge, %if.end242
  %i.0430 = phi i32 [ 0, %if.end242 ], [ %inc259, %if.end257.for.body_crit_edge ]
  %arrayidx245 = getelementptr %struct.iwl_priv, ptr %op_mode_specific, i32 0, i32 10, i32 %i.0430
  %223 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 -1, ptr %arrayidx245, align 1
  %i.0.fr = freeze i32 %i.0430
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.0.fr)
  %cmp246 = icmp ugt i32 %i.0.fr, 10
  br i1 %cmp246, label %for.body.if.end257_crit_edge, label %switch.early.test

for.body.if.end257_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end257

switch.early.test:                                ; preds = %for.body
  %224 = zext i32 %i.0.fr to i64
  call void @__sanitizer_cov_trace_switch(i64 %224, ptr @__sancov_gen_cov_switch_values.244)
  switch i32 %i.0.fr, label %if.then253 [
    i32 9, label %switch.early.test.if.end257_crit_edge
    i32 4, label %switch.early.test.if.end257_crit_edge434
  ]

switch.early.test.if.end257_crit_edge434:         ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end257

switch.early.test.if.end257_crit_edge:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end257

if.then253:                                       ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #15
  %conv254 = trunc i32 %i.0.fr to i8
  %225 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %conv254, ptr %arrayidx245, align 1
  br label %if.end257

if.end257:                                        ; preds = %if.then253, %switch.early.test.if.end257_crit_edge, %switch.early.test.if.end257_crit_edge434, %for.body.if.end257_crit_edge
  %arrayidx258 = getelementptr [32 x %struct.atomic_t], ptr %queue_stop_count, i32 0, i32 %i.0.fr
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx258, i32 noundef 4) #13
  %226 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_store4_noabort(i32 %226)
  store volatile i32 0, ptr %arrayidx258, align 4
  %inc259 = add nuw nsw i32 %i.0.fr, 1
  %cmp243 = icmp ult i32 %i.0.fr, 31
  br i1 %cmp243, label %if.end257.for.body_crit_edge, label %for.end

if.end257.for.body_crit_edge:                     ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end257
  call fastcc void @iwl_init_drv(ptr noundef %op_mode_specific)
  call fastcc void @iwl_setup_deferred_work(ptr noundef %op_mode_specific)
  call void @iwl_setup_rx_handlers(ptr noundef %op_mode_specific) #13
  call void @iwl_power_initialize(ptr noundef %op_mode_specific) #13
  call void @iwl_tt_initialize(ptr noundef %op_mode_specific) #13
  %227 = ptrtoint ptr %hw114 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %hw114, align 4
  %wiphy265 = getelementptr inbounds %struct.ieee80211_hw, ptr %228, i32 0, i32 1
  %229 = ptrtoint ptr %wiphy265 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %wiphy265, align 8
  %fw_version = getelementptr inbounds %struct.wiphy, ptr %230, i32 0, i32 38
  %fw_version267 = getelementptr inbounds %struct.iwl_fw, ptr %fw, i32 0, i32 1
  %call269 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 32, ptr noundef nonnull @.str.50, ptr noundef %fw_version267)
  %new_scan_threshold_behaviour = getelementptr inbounds %struct.iwl_op_mode, ptr %4, i32 680
  %231 = trunc i32 %ucode_flags.0 to i8
  %232 = lshr i8 %231, 1
  %233 = and i8 %232, 1
  %234 = ptrtoint ptr %new_scan_threshold_behaviour to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %233, ptr %new_scan_threshold_behaviour, align 4
  %standard_phy_calibration_size = getelementptr inbounds %struct.iwl_fw, ptr %fw, i32 0, i32 5, i32 2
  %235 = ptrtoint ptr %standard_phy_calibration_size to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %standard_phy_calibration_size, align 4
  %conv277 = trunc i32 %236 to i8
  %phy_calib_chain_noise_reset_cmd = getelementptr inbounds %struct.iwl_priv, ptr %op_mode_specific, i32 0, i32 79
  %237 = ptrtoint ptr %phy_calib_chain_noise_reset_cmd to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %conv277, ptr %phy_calib_chain_noise_reset_cmd, align 1
  %238 = load i32, ptr %standard_phy_calibration_size, align 4
  %239 = trunc i32 %238 to i8
  %conv280 = add i8 %239, 1
  %phy_calib_chain_noise_gain_cmd = getelementptr inbounds %struct.iwl_priv, ptr %op_mode_specific, i32 0, i32 80
  %240 = ptrtoint ptr %phy_calib_chain_noise_gain_cmd to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %conv280, ptr %phy_calib_chain_noise_gain_cmd, align 2
  call fastcc void @iwl_init_context(ptr noundef %op_mode_specific, i32 noundef %ucode_flags.0)
  %call282 = call i32 @iwlagn_mac_setup_register(ptr noundef %op_mode_specific, ptr noundef %ucode_capa) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call282)
  %tobool283.not = icmp eq i32 %call282, 0
  br i1 %tobool283.not, label %if.end285, label %out_destroy_workqueue

if.end285:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @iwl_dbgfs_register(ptr noundef %op_mode_specific, ptr noundef %dbgfs_dir) #13
  br label %cleanup

out_destroy_workqueue:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @iwl_tt_exit(ptr noundef %op_mode_specific) #13
  call void @iwl_cancel_deferred_work(ptr noundef %op_mode_specific)
  %workqueue = getelementptr inbounds %struct.iwl_op_mode, ptr %4, i32 88
  %241 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %workqueue, align 4
  call void @destroy_workqueue(ptr noundef %242) #13
  %243 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr null, ptr %workqueue, align 4
  call fastcc void @iwl_uninit_drv(ptr noundef %op_mode_specific)
  br label %out_free_eeprom_blob

out_free_eeprom_blob:                             ; preds = %out_destroy_workqueue, %if.end164.out_free_eeprom_blob_crit_edge
  %244 = ptrtoint ptr %eeprom_blob to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %eeprom_blob, align 4
  call void @kfree(ptr noundef %245) #13
  br label %out_free_eeprom

out_free_eeprom:                                  ; preds = %out_free_eeprom_blob, %do.end15.i, %do.end.i419, %iwl_nvm_check_version.exit
  %246 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %nvm_data, align 8
  call void @kfree(ptr noundef %247) #13
  br label %out_free_hw

out_free_hw:                                      ; preds = %out_free_eeprom, %do.end160, %iwl_trans_configure.exit.out_free_hw_crit_edge, %do.end41
  %hw289 = getelementptr inbounds %struct.iwl_op_mode, ptr %4, i32 84
  %248 = ptrtoint ptr %hw289 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %hw289, align 4
  call void @ieee80211_free_hw(ptr noundef %249) #13
  br label %cleanup

cleanup:                                          ; preds = %out_free_hw, %if.end285, %do.end
  %retval.0 = phi ptr [ %4, %if.end285 ], [ null, %out_free_hw ], [ null, %do.end ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %trans_cfg) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_op_mode_dvm_stop(ptr noundef %op_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 0, i32 1
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_op_mode_dvm_stop, ptr noundef nonnull @.str.166) #13
  tail call void @iwlagn_mac_unregister(ptr noundef %op_mode_specific) #13
  tail call void @iwl_tt_exit(ptr noundef %op_mode_specific) #13
  %eeprom_blob = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 2744
  %2 = ptrtoint ptr %eeprom_blob to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eeprom_blob, align 4
  tail call void @kfree(ptr noundef %3) #13
  %nvm_data = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 2743
  %4 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nvm_data, align 8
  tail call void @kfree(ptr noundef %5) #13
  %workqueue = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 88
  %6 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %7) #13
  %8 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %workqueue, align 4
  %scan_cmd.i = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 673
  %9 = ptrtoint ptr %scan_cmd.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %scan_cmd.i, align 8
  tail call void @kfree(ptr noundef %10) #13
  %beacon_cmd.i = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 2634
  %11 = ptrtoint ptr %beacon_cmd.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %beacon_cmd.i, align 4
  tail call void @kfree(ptr noundef %12) #13
  %noa_data.i = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 670
  %13 = ptrtoint ptr %noa_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %noa_data.i, align 4
  tail call void @kfree(ptr noundef %14) #13
  tail call void @iwl_calib_free_results(ptr noundef %op_mode_specific) #13
  %wowlan_sram.i = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 2742
  %15 = ptrtoint ptr %wowlan_sram.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wowlan_sram.i, align 4
  tail call void @kfree(ptr noundef %16) #13
  %beacon_skb = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 2633
  %17 = ptrtoint ptr %beacon_skb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %beacon_skb, align 8
  tail call void @consume_skb(ptr noundef %18) #13
  %19 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %op_mode_specific, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.25, i32 noundef 1052) #13
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i, align 4
  %op_mode_leave.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %op_mode_leave.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %op_mode_leave.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %entry.iwl_trans_op_mode_leave.exit_crit_edge, label %if.then.i

entry.iwl_trans_op_mode_leave.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_trans_op_mode_leave.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %24(ptr noundef %20) #13
  br label %iwl_trans_op_mode_leave.exit

iwl_trans_op_mode_leave.exit:                     ; preds = %if.then.i, %entry.iwl_trans_op_mode_leave.exit_crit_edge
  %op_mode.i = getelementptr inbounds %struct.iwl_trans, ptr %20, i32 0, i32 2
  %25 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %op_mode.i, align 8
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %20, i32 0, i32 6
  %26 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %state.i, align 8
  %hw = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 84
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_free_hw(ptr noundef %28) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_rx_dispatch(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_stop_sw_queue(ptr noundef %op_mode, i32 noundef %queue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 0, i32 1
  %arrayidx = getelementptr %struct.iwl_priv, ptr %op_mode_specific, i32 0, i32 10, i32 %queue
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp = icmp eq i8 %1, -1
  br i1 %cmp, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b63 = load i1, ptr @iwl_stop_sw_queue.__already_done, align 1
  br i1 %.b63, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !537

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @iwl_stop_sw_queue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2034, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end39:                                         ; preds = %entry
  %queue_stop_count = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 51
  %arrayidx40 = getelementptr [32 x %struct.atomic_t], ptr %queue_stop_count, i32 0, i32 %conv
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx40, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !543
  tail call void @llvm.prefetch.p0(ptr %arrayidx40, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx40, ptr %arrayidx40, i32 1, ptr elementtype(i32) %arrayidx40) #13, !srcloc !544
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !545
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp41 = icmp sgt i32 %asmresult.i.i.i.i, 1
  br i1 %cmp41, label %do.end47, label %if.end50

do.end47:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %4, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_stop_sw_queue, ptr noundef nonnull @.str.167, i32 noundef %queue, i32 noundef %conv) #13
  br label %cleanup

if.end50:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  %transport_queue_stop = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 41
  tail call void @_set_bit(i32 noundef %conv, ptr noundef %transport_queue_stop) #13
  %hw = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 84
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_stop_queue(ptr noundef %6, i32 noundef %conv) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %do.end47, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_wake_sw_queue(ptr noundef %op_mode, i32 noundef %queue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 0, i32 1
  %arrayidx = getelementptr %struct.iwl_priv, ptr %op_mode_specific, i32 0, i32 10, i32 %queue
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp = icmp eq i8 %1, -1
  br i1 %cmp, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b67 = load i1, ptr @iwl_wake_sw_queue.__already_done, align 1
  br i1 %.b67, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !537

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @iwl_wake_sw_queue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2053, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end39:                                         ; preds = %entry
  %queue_stop_count = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 51
  %arrayidx40 = getelementptr [32 x %struct.atomic_t], ptr %queue_stop_count, i32 0, i32 %conv
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx40, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !546
  tail call void @llvm.prefetch.p0(ptr %arrayidx40, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx40, ptr %arrayidx40, i32 1, ptr elementtype(i32) %arrayidx40) #13, !srcloc !547
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !548
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp41 = icmp sgt i32 %asmresult.i.i.i.i, 0
  br i1 %cmp41, label %do.end47, label %if.end50

do.end47:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %4, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_wake_sw_queue, ptr noundef nonnull @.str.168, i32 noundef %queue, i32 noundef %conv) #13
  br label %cleanup

if.end50:                                         ; preds = %if.end39
  %transport_queue_stop = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 41
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %transport_queue_stop) #13
  %passive_no_rx = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 42
  %5 = ptrtoint ptr %passive_no_rx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %passive_no_rx, align 4, !range !535
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool51.not = icmp eq i8 %6, 0
  br i1 %tobool51.not, label %if.then52, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  %hw = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 84
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_wake_queue(ptr noundef %8, i32 noundef %conv) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %if.end50.cleanup_crit_edge, %do.end47, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @iwl_set_hw_rfkill_state(ptr noundef %op_mode, i1 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 6
  br i1 %state, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 0, ptr noundef %status) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %status) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %hw = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 84
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 8
  tail call void @wiphy_rfkill_set_hw_state_reason(ptr noundef %3, i1 noundef zeroext %state, i32 noundef 1) #13
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_free_skb(ptr nocapture noundef readonly %op_mode, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 0, i32 1
  %0 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op_mode_specific, align 8
  %arrayidx = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %dev_cmd_pool.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %dev_cmd_pool.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_cmd_pool.i, align 4
  tail call void @kmem_cache_free(ptr noundef %5, ptr noundef %3) #13
  %hw = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 84
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %7, ptr noundef %skb) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_nic_error(ptr noundef %op_mode, i1 noundef zeroext %sync) #0 align 64 {
entry:
  %table.i = alloca %struct.iwl_error_event_table, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 0, i32 1
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %fw = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 4
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw, align 4
  %fw_version = getelementptr inbounds %struct.iwl_fw, ptr %3, i32 0, i32 1
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.169, ptr noundef %fw_version) #13
  %4 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %op_mode_specific, align 8
  call void @llvm.lifetime.start.p0(i64 148, ptr nonnull %table.i) #13
  %6 = call ptr @memset(ptr %table.i, i32 255, i32 148)
  %device_pointers.i = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 2921
  %7 = ptrtoint ptr %device_pointers.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %device_pointers.i, align 8
  %cur_ucode.i = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 2923
  %9 = ptrtoint ptr %cur_ucode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cur_ucode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i = icmp eq i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  br i1 %tobool.not.i, label %if.then2.i, label %if.then.i.if.end7.i_crit_edge

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw, align 4
  %init_errlog_ptr.i = getelementptr inbounds %struct.iwl_fw, ptr %12, i32 0, i32 9
  br label %if.end7.sink.split.i

if.else.i:                                        ; preds = %entry
  br i1 %tobool.not.i, label %if.then4.i, label %if.else.i.if.end7.i_crit_edge

if.else.i.if.end7.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw, align 4
  %inst_errlog_ptr.i = getelementptr inbounds %struct.iwl_fw, ptr %14, i32 0, i32 12
  br label %if.end7.sink.split.i

if.end7.sink.split.i:                             ; preds = %if.then4.i, %if.then2.i
  %inst_errlog_ptr.sink.i = phi ptr [ %inst_errlog_ptr.i, %if.then4.i ], [ %init_errlog_ptr.i, %if.then2.i ]
  %15 = ptrtoint ptr %inst_errlog_ptr.sink.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %inst_errlog_ptr.sink.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end7.sink.split.i, %if.else.i.if.end7.i_crit_edge, %if.then.i.if.end7.i_crit_edge
  %base.0.i = phi i32 [ %8, %if.then.i.if.end7.i_crit_edge ], [ %8, %if.else.i.if.end7.i_crit_edge ], [ %16, %if.end7.sink.split.i ]
  %call.i = tail call i32 @iwlagn_hw_valid_rtc_data_addr(i32 noundef %base.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %do.end.i, label %do.end19.i

do.end.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %19 = ptrtoint ptr %cur_ucode.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cur_ucode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp12.i = icmp eq i32 %20, 1
  %cond.i = select i1 %cmp12.i, ptr @.str.6, ptr @.str.7
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %18, i32 noundef 0, ptr noundef nonnull @.str.170, i32 noundef %base.0.i, ptr noundef nonnull %cond.i) #13
  br label %iwl_dump_nic_error_log.exit

do.end19.i:                                       ; preds = %if.end7.i
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i.i, align 4
  %read_mem.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %22, i32 0, i32 26
  %23 = ptrtoint ptr %read_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_mem.i.i, align 4
  %call.i.i = call i32 %24(ptr noundef %5, i32 noundef %base.0.i, ptr noundef nonnull %table.i, i32 noundef 37) #13
  %25 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %table.i, align 4
  %mul.i = mul i32 %26, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp23.not.i = icmp eq i32 %mul.i, 0
  br i1 %cmp23.not.i, label %do.end19.i.do.end44.i_crit_edge, label %do.end28.i

do.end19.i.do.end44.i_crit_edge:                  ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end44.i

do.end28.i:                                       ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev29.i = getelementptr inbounds %struct.iwl_trans, ptr %5, i32 0, i32 8
  %27 = ptrtoint ptr %dev29.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev29.i, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %28, i32 noundef 0, ptr noundef nonnull @.str.171) #13
  %29 = ptrtoint ptr %dev29.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev29.i, align 8
  %status.i = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 6
  %31 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %status.i, align 4
  %33 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %table.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %30, i32 noundef 0, ptr noundef nonnull @.str.172, i32 noundef %32, i32 noundef %34) #13
  br label %do.end44.i

do.end44.i:                                       ; preds = %do.end28.i, %do.end19.i.do.end44.i_crit_edge
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %error_id.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 1
  %37 = ptrtoint ptr %error_id.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %error_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %38)
  %cmp.i.i = icmp ult i32 %38, 28
  br i1 %cmp.i.i, label %if.then.i.i, label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %do.end44.i
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.245)
  switch i32 %38, label %for.inc.14.i.i [
    i32 52, label %for.body.preheader.i.i.for.end.i.i_crit_edge
    i32 53, label %for.end.fold.split.i.i
    i32 55, label %for.end.fold.split17.i.i
    i32 56, label %for.end.fold.split18.i.i
    i32 60, label %for.end.fold.split19.i.i
    i32 61, label %for.end.fold.split20.i.i
    i32 70, label %for.end.fold.split21.i.i
    i32 76, label %for.end.fold.split22.i.i
    i32 84, label %for.end.fold.split23.i.i
    i32 92, label %for.end.fold.split24.i.i
    i32 100, label %for.end.fold.split25.i.i
    i32 102, label %for.end.fold.split26.i.i
    i32 124, label %for.end.fold.split27.i.i
    i32 132, label %for.end.fold.split28.i.i
    i32 134, label %for.end.fold.split29.i.i
  ]

for.body.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

if.then.i.i:                                      ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i = getelementptr [28 x ptr], ptr @desc_lookup_text, i32 0, i32 %38
  br label %desc_lookup.exit.i

for.inc.14.i.i:                                   ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.fold.split.i.i:                           ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.fold.split17.i.i:                         ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.fold.split18.i.i:                         ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.fold.split19.i.i:                         ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.fold.split20.i.i:                         ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.fold.split21.i.i:                         ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.fold.split22.i.i:                         ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.fold.split23.i.i:                         ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.fold.split24.i.i:                         ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.fold.split25.i.i:                         ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.fold.split26.i.i:                         ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.fold.split27.i.i:                         ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.fold.split28.i.i:                         ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.fold.split29.i.i:                         ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.end.fold.split29.i.i, %for.end.fold.split28.i.i, %for.end.fold.split27.i.i, %for.end.fold.split26.i.i, %for.end.fold.split25.i.i, %for.end.fold.split24.i.i, %for.end.fold.split23.i.i, %for.end.fold.split22.i.i, %for.end.fold.split21.i.i, %for.end.fold.split20.i.i, %for.end.fold.split19.i.i, %for.end.fold.split18.i.i, %for.end.fold.split17.i.i, %for.end.fold.split.i.i, %for.inc.14.i.i, %for.body.preheader.i.i.for.end.i.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 0, %for.body.preheader.i.i.for.end.i.i_crit_edge ], [ 15, %for.inc.14.i.i ], [ 1, %for.end.fold.split.i.i ], [ 2, %for.end.fold.split17.i.i ], [ 3, %for.end.fold.split18.i.i ], [ 4, %for.end.fold.split19.i.i ], [ 5, %for.end.fold.split20.i.i ], [ 6, %for.end.fold.split21.i.i ], [ 7, %for.end.fold.split22.i.i ], [ 8, %for.end.fold.split23.i.i ], [ 9, %for.end.fold.split24.i.i ], [ 10, %for.end.fold.split25.i.i ], [ 11, %for.end.fold.split26.i.i ], [ 12, %for.end.fold.split27.i.i ], [ 13, %for.end.fold.split28.i.i ], [ 14, %for.end.fold.split29.i.i ]
  %arrayidx8.i.i = getelementptr [16 x %struct.anon.191], ptr @advanced_lookup, i32 0, i32 %i.0.lcssa.i.i
  br label %desc_lookup.exit.i

desc_lookup.exit.i:                               ; preds = %for.end.i.i, %if.then.i.i
  %retval.0.in.i.i = phi ptr [ %arrayidx.i.i, %if.then.i.i ], [ %arrayidx8.i.i, %for.end.i.i ]
  %40 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %retval.0.i.i = load ptr, ptr %retval.0.in.i.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %36, i32 noundef 0, ptr noundef nonnull @.str.173, i32 noundef %38, ptr noundef %retval.0.i.i) #13
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  %pc.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 2
  %43 = ptrtoint ptr %pc.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pc.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %42, i32 noundef 0, ptr noundef nonnull @.str.174, i32 noundef %44) #13
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  %blink1.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 3
  %47 = ptrtoint ptr %blink1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %blink1.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %46, i32 noundef 0, ptr noundef nonnull @.str.175, i32 noundef %48) #13
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  %blink2.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 4
  %51 = ptrtoint ptr %blink2.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %blink2.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %50, i32 noundef 0, ptr noundef nonnull @.str.176, i32 noundef %52) #13
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 4
  %ilink1.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 5
  %55 = ptrtoint ptr %ilink1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ilink1.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %54, i32 noundef 0, ptr noundef nonnull @.str.177, i32 noundef %56) #13
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 4
  %ilink2.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 6
  %59 = ptrtoint ptr %ilink2.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ilink2.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %58, i32 noundef 0, ptr noundef nonnull @.str.178, i32 noundef %60) #13
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 4
  %data1.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 7
  %63 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %data1.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %62, i32 noundef 0, ptr noundef nonnull @.str.179, i32 noundef %64) #13
  %65 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev, align 4
  %data2.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 8
  %67 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %data2.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %66, i32 noundef 0, ptr noundef nonnull @.str.180, i32 noundef %68) #13
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev, align 4
  %line.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 9
  %71 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %line.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %70, i32 noundef 0, ptr noundef nonnull @.str.181, i32 noundef %72) #13
  %73 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev, align 4
  %bcon_time.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 10
  %75 = ptrtoint ptr %bcon_time.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bcon_time.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %74, i32 noundef 0, ptr noundef nonnull @.str.182, i32 noundef %76) #13
  %77 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev, align 4
  %tsf_low.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 11
  %79 = ptrtoint ptr %tsf_low.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tsf_low.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %78, i32 noundef 0, ptr noundef nonnull @.str.183, i32 noundef %80) #13
  %81 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev, align 4
  %tsf_hi.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 12
  %83 = ptrtoint ptr %tsf_hi.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tsf_hi.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %82, i32 noundef 0, ptr noundef nonnull @.str.184, i32 noundef %84) #13
  %85 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev, align 4
  %gp1.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 13
  %87 = ptrtoint ptr %gp1.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %gp1.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %86, i32 noundef 0, ptr noundef nonnull @.str.185, i32 noundef %88) #13
  %89 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev, align 4
  %gp2.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 14
  %91 = ptrtoint ptr %gp2.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %gp2.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %90, i32 noundef 0, ptr noundef nonnull @.str.186, i32 noundef %92) #13
  %93 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev, align 4
  %gp3.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 15
  %95 = ptrtoint ptr %gp3.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %gp3.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %94, i32 noundef 0, ptr noundef nonnull @.str.187, i32 noundef %96) #13
  %97 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev, align 4
  %ucode_ver.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 16
  %99 = ptrtoint ptr %ucode_ver.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ucode_ver.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %98, i32 noundef 0, ptr noundef nonnull @.str.188, i32 noundef %100) #13
  %101 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev, align 4
  %hw_ver.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 17
  %103 = ptrtoint ptr %hw_ver.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %hw_ver.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %102, i32 noundef 0, ptr noundef nonnull @.str.189, i32 noundef %104) #13
  %105 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev, align 4
  %brd_ver.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 18
  %107 = ptrtoint ptr %brd_ver.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %brd_ver.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %106, i32 noundef 0, ptr noundef nonnull @.str.190, i32 noundef %108) #13
  %109 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev, align 4
  %hcmd.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 22
  %111 = ptrtoint ptr %hcmd.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %hcmd.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %110, i32 noundef 0, ptr noundef nonnull @.str.191, i32 noundef %112) #13
  %113 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev, align 4
  %isr0.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 23
  %115 = ptrtoint ptr %isr0.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %isr0.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %114, i32 noundef 0, ptr noundef nonnull @.str.192, i32 noundef %116) #13
  %117 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev, align 4
  %isr1.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 24
  %119 = ptrtoint ptr %isr1.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %isr1.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %118, i32 noundef 0, ptr noundef nonnull @.str.193, i32 noundef %120) #13
  %121 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev, align 4
  %isr2.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 25
  %123 = ptrtoint ptr %isr2.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %isr2.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %122, i32 noundef 0, ptr noundef nonnull @.str.194, i32 noundef %124) #13
  %125 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev, align 4
  %isr3.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 26
  %127 = ptrtoint ptr %isr3.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %isr3.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %126, i32 noundef 0, ptr noundef nonnull @.str.195, i32 noundef %128) #13
  %129 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev, align 4
  %isr4.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 27
  %131 = ptrtoint ptr %isr4.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %isr4.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %130, i32 noundef 0, ptr noundef nonnull @.str.196, i32 noundef %132) #13
  %133 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev, align 4
  %isr_pref.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 28
  %135 = ptrtoint ptr %isr_pref.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %isr_pref.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %134, i32 noundef 0, ptr noundef nonnull @.str.197, i32 noundef %136) #13
  %137 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev, align 4
  %wait_event.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 29
  %139 = ptrtoint ptr %wait_event.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %wait_event.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %138, i32 noundef 0, ptr noundef nonnull @.str.198, i32 noundef %140) #13
  %141 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev, align 4
  %l2p_control.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 30
  %143 = ptrtoint ptr %l2p_control.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %l2p_control.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %142, i32 noundef 0, ptr noundef nonnull @.str.199, i32 noundef %144) #13
  %145 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev, align 4
  %l2p_duration.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 31
  %147 = ptrtoint ptr %l2p_duration.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %l2p_duration.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %146, i32 noundef 0, ptr noundef nonnull @.str.200, i32 noundef %148) #13
  %149 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev, align 4
  %l2p_mhvalid.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 32
  %151 = ptrtoint ptr %l2p_mhvalid.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %l2p_mhvalid.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %150, i32 noundef 0, ptr noundef nonnull @.str.201, i32 noundef %152) #13
  %153 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dev, align 4
  %l2p_addr_match.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 33
  %155 = ptrtoint ptr %l2p_addr_match.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %l2p_addr_match.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %154, i32 noundef 0, ptr noundef nonnull @.str.202, i32 noundef %156) #13
  %157 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev, align 4
  %lmpm_pmg_sel.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 34
  %159 = ptrtoint ptr %lmpm_pmg_sel.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %lmpm_pmg_sel.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %158, i32 noundef 0, ptr noundef nonnull @.str.203, i32 noundef %160) #13
  %161 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev, align 4
  %u_timestamp.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 35
  %163 = ptrtoint ptr %u_timestamp.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %u_timestamp.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %162, i32 noundef 0, ptr noundef nonnull @.str.204, i32 noundef %164) #13
  %165 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev, align 4
  %flow_handler.i = getelementptr inbounds %struct.iwl_error_event_table, ptr %table.i, i32 0, i32 36
  %167 = ptrtoint ptr %flow_handler.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %flow_handler.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %166, i32 noundef 0, ptr noundef nonnull @.str.205, i32 noundef %168) #13
  br label %iwl_dump_nic_error_log.exit

iwl_dump_nic_error_log.exit:                      ; preds = %desc_lookup.exit.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %table.i) #13
  %call = call i32 @iwl_dump_nic_event_log(ptr noundef %op_mode_specific, i1 noundef zeroext false, ptr noundef null)
  call fastcc void @iwlagn_fw_error(ptr noundef %op_mode_specific)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_cmd_queue_full(ptr noundef %op_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 0, i32 1
  %call = tail call zeroext i1 @iwl_check_for_ct_kill(ptr noundef %op_mode_specific) #13
  br i1 %call, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.241) #13
  tail call fastcc void @iwlagn_fw_error(ptr noundef %op_mode_specific)
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_nic_config(ptr noundef %op_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 0, i32 1
  %0 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op_mode_specific, align 8
  %hw_rev = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_rev, align 8
  %and = and i32 %3, 15
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %set_bits_mask.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %5, i32 0, i32 34
  %6 = ptrtoint ptr %set_bits_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_bits_mask.i, align 4
  tail call void %7(ptr noundef %1, i32 noundef 0, i32 noundef 15, i32 noundef %and) #13
  %nvm_data = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 2743
  %8 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nvm_data, align 8
  %radio_cfg_type = getelementptr inbounds %struct.iwl_nvm_data, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %radio_cfg_type to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %radio_cfg_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %11)
  %cmp = icmp ult i16 %11, 4
  br i1 %cmp, label %if.then, label %do.end32

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i16 %11 to i32
  %shl = shl nuw nsw i32 %conv, 10
  %radio_cfg_step = getelementptr inbounds %struct.iwl_nvm_data, ptr %9, i32 0, i32 17
  %12 = ptrtoint ptr %radio_cfg_step to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %radio_cfg_step, align 2
  %conv7 = zext i8 %13 to i32
  %shl8 = shl nuw nsw i32 %conv7, 14
  %or = or i32 %shl8, %shl
  %radio_cfg_dash = getelementptr inbounds %struct.iwl_nvm_data, ptr %9, i32 0, i32 18
  %14 = ptrtoint ptr %radio_cfg_dash to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %radio_cfg_dash, align 1
  %conv10 = zext i8 %15 to i32
  %shl11 = shl nuw nsw i32 %conv10, 12
  %or12 = or i32 %or, %shl11
  %16 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %op_mode_specific, align 8
  %ops.i68 = getelementptr inbounds %struct.iwl_trans, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %ops.i68 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i68, align 4
  %set_bits_mask.i69 = getelementptr inbounds %struct.iwl_trans_ops, ptr %19, i32 0, i32 34
  %20 = ptrtoint ptr %set_bits_mask.i69 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_bits_mask.i69, align 4
  tail call void %21(ptr noundef %17, i32 noundef 0, i32 noundef 64512, i32 noundef %or12) #13
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 2
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %24 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nvm_data, align 8
  %radio_cfg_type16 = getelementptr inbounds %struct.iwl_nvm_data, ptr %25, i32 0, i32 16
  %26 = ptrtoint ptr %radio_cfg_type16 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %radio_cfg_type16, align 4
  %conv17 = zext i16 %27 to i32
  %radio_cfg_step19 = getelementptr inbounds %struct.iwl_nvm_data, ptr %25, i32 0, i32 17
  %28 = ptrtoint ptr %radio_cfg_step19 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %radio_cfg_step19, align 2
  %conv20 = zext i8 %29 to i32
  %radio_cfg_dash22 = getelementptr inbounds %struct.iwl_nvm_data, ptr %25, i32 0, i32 18
  %30 = ptrtoint ptr %radio_cfg_dash22 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %radio_cfg_dash22, align 1
  %conv23 = zext i8 %31 to i32
  tail call void (ptr, ptr, ...) @__iwl_info(ptr noundef %23, ptr noundef nonnull @.str.242, i32 noundef %conv17, i32 noundef %conv20, i32 noundef %conv23) #13
  br label %if.end44

do.end32:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2001, i32 noundef 9, ptr noundef null) #13
  br label %if.end44

if.end44:                                         ; preds = %do.end32, %if.then
  %32 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %op_mode_specific, align 8
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i.i, align 4
  %set_bits_mask.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %35, i32 0, i32 34
  %36 = ptrtoint ptr %set_bits_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %set_bits_mask.i.i, align 4
  tail call void %37(ptr noundef %33, i32 noundef 0, i32 noundef 768, i32 noundef 768) #13
  %38 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %op_mode_specific, align 8
  tail call void @iwl_set_bits_mask_prph(ptr noundef %39, i32 noundef 12300, i32 noundef 4194304, i32 noundef -4194305) #13
  %lib = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 5
  %40 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lib, align 8
  %nic_config = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %nic_config to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %nic_config, align 4
  %tobool47.not = icmp eq ptr %43, null
  br i1 %tobool47.not, label %if.end44.if.end51_crit_edge, label %if.then48

if.end44.if.end51_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %43(ptr noundef %op_mode_specific) #13
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end44.if.end51_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_wimax_active(ptr noundef %op_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 6
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %status) #13
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.243) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwl_alloc_all() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_trans_configure(ptr noundef %trans, ptr noundef %trans_cfg) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans_cfg, align 4
  %op_mode1 = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 2
  %2 = ptrtoint ptr %op_mode1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %op_mode1, align 8
  %ops = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 1
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %configure = getelementptr inbounds %struct.iwl_trans_ops, ptr %4, i32 0, i32 29
  %5 = ptrtoint ptr %configure to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %configure, align 4
  tail call void %6(ptr noundef %trans, ptr noundef %trans_cfg) #13
  %call = tail call i32 @iwl_cmd_groups_verify_sorted(ptr noundef %trans_cfg) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !537

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 1040, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read_eeprom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwl_parse_eeprom_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_init_drv(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sta_lock = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %sta_lock, ptr noundef nonnull @.str.139, ptr noundef nonnull @iwl_init_drv.__key, i16 noundef signext 3) #13
  %mutex = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.141, ptr noundef nonnull @iwl_init_drv.__key.140) #13
  %calib_results = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 15
  %0 = ptrtoint ptr %calib_results to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %calib_results, ptr %calib_results, align 4
  %prev.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 15, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %calib_results, ptr %prev.i, align 4
  %band = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 18
  %2 = ptrtoint ptr %band to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %band, align 8
  %lib = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 4
  %3 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lib, align 8
  %plcp_delta_threshold = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %plcp_delta_threshold to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %plcp_delta_threshold, align 4
  %plcp_delta_threshold3 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 33
  %7 = ptrtoint ptr %plcp_delta_threshold3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %plcp_delta_threshold3, align 1
  %iw_mode = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 69
  %8 = ptrtoint ptr %iw_mode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %iw_mode, align 4
  %smps = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 57, i32 1
  %9 = ptrtoint ptr %smps to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %smps, align 4
  %missed_beacon_threshold = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 25
  %10 = ptrtoint ptr %missed_beacon_threshold to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 5, ptr %missed_beacon_threshold, align 8
  %agg_tids_count = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 75
  %11 = ptrtoint ptr %agg_tids_count to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %agg_tids_count, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %rx_statistics_jiffies = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 27
  %13 = ptrtoint ptr %rx_statistics_jiffies to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %rx_statistics_jiffies, align 8
  %contexts = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50
  tail call void @iwlagn_set_rxon_chain(ptr noundef %priv, ptr noundef %contexts) #13
  tail call void @iwl_init_scan_params(ptr noundef %priv) #13
  %14 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lib, align 8
  %bt_params = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %bt_params to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bt_params, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 4, !range !535
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool7.not = icmp eq i8 %19, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %kill_ack_mask = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 89
  %20 = ptrtoint ptr %kill_ack_mask to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 65535, ptr %kill_ack_mask, align 8
  %kill_cts_mask = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 90
  %21 = ptrtoint ptr %kill_cts_mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 65535, ptr %kill_cts_mask, align 4
  %bt_valid = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 91
  %22 = ptrtoint ptr %bt_valid to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -256, ptr %bt_valid, align 8
  %bt_on_thresh = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 93
  %23 = ptrtoint ptr %bt_on_thresh to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 4, ptr %bt_on_thresh, align 4
  %bt_duration = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 94
  %24 = ptrtoint ptr %bt_duration to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 625, ptr %bt_duration, align 2
  %dynamic_frag_thresh = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 95
  %25 = ptrtoint ptr %dynamic_frag_thresh to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %dynamic_frag_thresh, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_setup_deferred_work(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.142, i32 noundef 655362, i32 noundef 1) #13
  %workqueue = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 16
  %0 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %workqueue, align 4
  %restart = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 101
  tail call void @__init_work(ptr noundef %restart, i32 noundef 0) #13
  %1 = ptrtoint ptr %restart to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %restart, align 4
  %lockdep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 101, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.143, ptr noundef nonnull @iwl_setup_deferred_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry4 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 101, i32 1
  %2 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 101, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 101, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @iwl_bg_restart, ptr %func, align 4
  %beacon_update = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 104
  tail call void @__init_work(ptr noundef %beacon_update, i32 noundef 0) #13
  %5 = ptrtoint ptr %beacon_update to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %beacon_update, align 8
  %lockdep_map12 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 104, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map12, ptr noundef nonnull @.str.145, ptr noundef nonnull @iwl_setup_deferred_work.__key.144, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry14 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 104, i32 1
  %6 = ptrtoint ptr %entry14 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry14, ptr %entry14, align 4
  %prev.i105 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 104, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i105 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry14, ptr %prev.i105, align 4
  %func16 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 104, i32 2
  %8 = ptrtoint ptr %func16 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @iwl_bg_beacon_update, ptr %func16, align 4
  %run_time_calib_work = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 128
  tail call void @__init_work(ptr noundef %run_time_calib_work, i32 noundef 0) #13
  %9 = ptrtoint ptr %run_time_calib_work to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %run_time_calib_work, align 4
  %lockdep_map24 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 128, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map24, ptr noundef nonnull @.str.147, ptr noundef nonnull @iwl_setup_deferred_work.__key.146, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry26 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 128, i32 1
  %10 = ptrtoint ptr %entry26 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry26, ptr %entry26, align 4
  %prev.i106 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 128, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i106 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry26, ptr %prev.i106, align 4
  %func28 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 128, i32 2
  %12 = ptrtoint ptr %func28 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @iwl_bg_run_time_calib_work, ptr %func28, align 4
  %tx_flush = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 112
  tail call void @__init_work(ptr noundef %tx_flush, i32 noundef 0) #13
  %13 = ptrtoint ptr %tx_flush to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %tx_flush, align 8
  %lockdep_map36 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 112, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map36, ptr noundef nonnull @.str.149, ptr noundef nonnull @iwl_setup_deferred_work.__key.148, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry38 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 112, i32 1
  %14 = ptrtoint ptr %entry38 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry38, ptr %entry38, align 4
  %prev.i107 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 112, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i107 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry38, ptr %prev.i107, align 4
  %func40 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 112, i32 2
  %16 = ptrtoint ptr %func40 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @iwl_bg_tx_flush, ptr %func40, align 4
  %bt_full_concurrency = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 113
  tail call void @__init_work(ptr noundef %bt_full_concurrency, i32 noundef 0) #13
  %17 = ptrtoint ptr %bt_full_concurrency to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -64, ptr %bt_full_concurrency, align 4
  %lockdep_map48 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 113, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map48, ptr noundef nonnull @.str.151, ptr noundef nonnull @iwl_setup_deferred_work.__key.150, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry50 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 113, i32 1
  %18 = ptrtoint ptr %entry50 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %entry50, ptr %entry50, align 4
  %prev.i108 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 113, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i108 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %entry50, ptr %prev.i108, align 4
  %func52 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 113, i32 2
  %20 = ptrtoint ptr %func52 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @iwl_bg_bt_full_concurrency, ptr %func52, align 4
  %bt_runtime_config = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 114
  tail call void @__init_work(ptr noundef %bt_runtime_config, i32 noundef 0) #13
  %21 = ptrtoint ptr %bt_runtime_config to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -64, ptr %bt_runtime_config, align 8
  %lockdep_map60 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 114, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map60, ptr noundef nonnull @.str.153, ptr noundef nonnull @iwl_setup_deferred_work.__key.152, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry62 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 114, i32 1
  %22 = ptrtoint ptr %entry62 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %entry62, ptr %entry62, align 4
  %prev.i109 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 114, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i109 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %entry62, ptr %prev.i109, align 4
  %func64 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 114, i32 2
  %24 = ptrtoint ptr %func64 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @iwl_bg_bt_runtime_config, ptr %func64, align 4
  tail call void @iwl_setup_scan_deferred_work(ptr noundef %priv) #13
  %lib = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 4
  %25 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lib, align 8
  %bt_params = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %bt_params to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bt_params, align 4
  %tobool.not = icmp eq ptr %28, null
  br i1 %tobool.not, label %entry.do.body66_crit_edge, label %if.then

entry.do.body66_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body66

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @iwlagn_bt_setup_deferred_work(ptr noundef %priv) #13
  br label %do.body66

do.body66:                                        ; preds = %if.then, %entry.do.body66_crit_edge
  %statistics_periodic = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 129
  tail call void @init_timer_key(ptr noundef %statistics_periodic, ptr noundef nonnull @iwl_bg_statistics_periodic, i32 noundef 0, ptr noundef nonnull @.str.155, ptr noundef nonnull @iwl_setup_deferred_work.__key.154) #13
  %ucode_trace = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 130
  tail call void @init_timer_key(ptr noundef %ucode_trace, ptr noundef nonnull @iwl_bg_ucode_trace, i32 noundef 0, ptr noundef nonnull @.str.157, ptr noundef nonnull @iwl_setup_deferred_work.__key.156) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_setup_rx_handlers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_power_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_tt_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal fastcc void @iwl_init_context(ptr noundef writeonly %priv, i32 noundef %ucode_flags) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %valid_contexts = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 19
  %and = and i32 %ucode_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i8 1, i8 3
  %0 = ptrtoint ptr %valid_contexts to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %spec.select, ptr %valid_contexts, align 4
  %ctxid = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 7
  %1 = ptrtoint ptr %ctxid to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ctxid, align 4
  %ctxid.1 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 1, i32 7
  %2 = ptrtoint ptr %ctxid.1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %ctxid.1, align 4
  %always_active = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 4
  %3 = ptrtoint ptr %always_active to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %always_active, align 1
  %is_active = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 5
  %4 = ptrtoint ptr %is_active to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %is_active, align 2
  %rxon_cmd = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 20
  %5 = ptrtoint ptr %rxon_cmd to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 16, ptr %rxon_cmd, align 2
  %rxon_timing_cmd = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 22
  %6 = ptrtoint ptr %rxon_timing_cmd to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 20, ptr %rxon_timing_cmd, align 4
  %rxon_assoc_cmd = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 21
  %7 = ptrtoint ptr %rxon_assoc_cmd to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 17, ptr %rxon_assoc_cmd, align 1
  %qos_cmd = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 23
  %8 = ptrtoint ptr %qos_cmd to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 19, ptr %qos_cmd, align 1
  %ap_sta_id = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 19
  %9 = ptrtoint ptr %ap_sta_id to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %ap_sta_id, align 1
  %wep_key_cmd = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 24
  %10 = ptrtoint ptr %wep_key_cmd to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 32, ptr %wep_key_cmd, align 2
  %bcast_sta_id = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 18
  %11 = ptrtoint ptr %bcast_sta_id to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 15, ptr %bcast_sta_id, align 4
  %exclusive_interface_modes = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 9
  %12 = ptrtoint ptr %exclusive_interface_modes to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 66, ptr %exclusive_interface_modes, align 4
  %interface_modes = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 8
  %13 = ptrtoint ptr %interface_modes to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %interface_modes, align 4
  %ap_devtype = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 11
  %14 = ptrtoint ptr %ap_devtype to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %ap_devtype, align 1
  %ibss_devtype = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 12
  %15 = ptrtoint ptr %ibss_devtype to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 4, ptr %ibss_devtype, align 2
  %station_devtype = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 13
  %16 = ptrtoint ptr %station_devtype to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 3, ptr %station_devtype, align 1
  %unused_devtype = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 10
  %17 = ptrtoint ptr %unused_devtype to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 3, ptr %unused_devtype, align 4
  %ac_to_queue = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 2
  %18 = ptrtoint ptr %ac_to_queue to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 66051, ptr %ac_to_queue, align 1
  %ac_to_fifo = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 3
  %19 = ptrtoint ptr %ac_to_fifo to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 50462976, ptr %ac_to_fifo, align 1
  %rxon_cmd41 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 1, i32 20
  %20 = ptrtoint ptr %rxon_cmd41 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -77, ptr %rxon_cmd41, align 2
  %rxon_timing_cmd44 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 1, i32 22
  %21 = ptrtoint ptr %rxon_timing_cmd44 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -76, ptr %rxon_timing_cmd44, align 4
  %rxon_assoc_cmd47 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 1, i32 21
  %22 = ptrtoint ptr %rxon_assoc_cmd47 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -74, ptr %rxon_assoc_cmd47, align 1
  %qos_cmd50 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 1, i32 23
  %23 = ptrtoint ptr %qos_cmd50 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -73, ptr %qos_cmd50, align 1
  %ap_sta_id53 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 1, i32 19
  %24 = ptrtoint ptr %ap_sta_id53 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %ap_sta_id53, align 1
  %wep_key_cmd56 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 1, i32 24
  %25 = ptrtoint ptr %wep_key_cmd56 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -72, ptr %wep_key_cmd56, align 2
  %bcast_sta_id59 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 1, i32 18
  %26 = ptrtoint ptr %bcast_sta_id59 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 14, ptr %bcast_sta_id59, align 4
  %station_flags = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 1, i32 27
  %27 = ptrtoint ptr %station_flags to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2097152, ptr %station_flags, align 4
  %interface_modes64 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 1, i32 8
  %28 = ptrtoint ptr %interface_modes64 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 12, ptr %interface_modes64, align 4
  %ap_devtype67 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 1, i32 11
  %29 = ptrtoint ptr %ap_devtype67 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 7, ptr %ap_devtype67, align 1
  %station_devtype70 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 1, i32 13
  %30 = ptrtoint ptr %station_devtype70 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 8, ptr %station_devtype70, align 1
  %unused_devtype73 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 1, i32 10
  %31 = ptrtoint ptr %unused_devtype73 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 9, ptr %unused_devtype73, align 4
  %ac_to_queue76 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 1, i32 2
  %32 = ptrtoint ptr %ac_to_queue76 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 117835012, ptr %ac_to_queue76, align 1
  %ac_to_fifo80 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 1, i32 3
  %33 = ptrtoint ptr %ac_to_fifo80 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 84018176, ptr %ac_to_fifo80, align 1
  %mcast_queue = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 1, i32 1
  %34 = ptrtoint ptr %mcast_queue to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 8, ptr %mcast_queue, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwlagn_mac_setup_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_dbgfs_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_tt_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_uninit_drv(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %scan_cmd = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 39
  %0 = ptrtoint ptr %scan_cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scan_cmd, align 8
  tail call void @kfree(ptr noundef %1) #13
  %beacon_cmd = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 107
  %2 = ptrtoint ptr %beacon_cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %beacon_cmd, align 4
  tail call void @kfree(ptr noundef %3) #13
  %noa_data = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 36
  %4 = ptrtoint ptr %noa_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %noa_data, align 4
  tail call void @kfree(ptr noundef %5) #13
  tail call void @iwl_calib_free_results(ptr noundef %priv) #13
  %wowlan_sram = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 122
  %6 = ptrtoint ptr %wowlan_sram to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wowlan_sram, align 4
  tail call void @kfree(ptr noundef %7) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_cmd_groups_verify_sorted(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_init_scan_params(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_bg_restart(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %data, i32 -10348
  %status = getelementptr i8, ptr %data, i32 -10328
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 10, ptr noundef %status) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end20, label %if.then4

if.then4:                                         ; preds = %if.end
  %mutex = getelementptr i8, ptr %data, i32 -10280
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  tail call void @iwlagn_prepare_restart(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  tail call void @iwl_cancel_deferred_work(ptr noundef %add.ptr)
  %mac80211_registered = getelementptr i8, ptr %data, i32 -2372
  %3 = ptrtoint ptr %mac80211_registered to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mac80211_registered, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool6.not = icmp eq i8 %4, 0
  br i1 %tobool6.not, label %do.end, label %if.then7

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  %hw = getelementptr i8, ptr %data, i32 -10016
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_restart_hw(ptr noundef %6) #13
  br label %cleanup

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr i8, ptr %data, i32 -10344
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %8, i32 noundef 0, ptr noundef nonnull @.str.158) #13
  br label %cleanup

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1040, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %do.end, %if.then7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_bg_beacon_update(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -10480
  %mutex = getelementptr i8, ptr %work, i32 -10412
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %beacon_ctx = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %beacon_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %beacon_ctx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr i8, ptr %work, i32 -10476
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %3, i32 noundef 0, ptr noundef nonnull @.str.159) #13
  br label %out

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.not = icmp eq i32 %7, 3
  br i1 %cmp.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end6:                                          ; preds = %if.end
  %hw = getelementptr i8, ptr %work, i32 -10148
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %call.i = tail call ptr @ieee80211_beacon_get_tim(ptr noundef %9, ptr noundef %5, ptr noundef null, ptr noundef null) #13
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %do.end14, label %if.end18

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %dev15 = getelementptr i8, ptr %work, i32 -10476
  %10 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev15, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %11, i32 noundef 0, ptr noundef nonnull @.str.160) #13
  br label %out

if.end18:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %beacon_skb = getelementptr i8, ptr %work, i32 48
  %12 = ptrtoint ptr %beacon_skb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %beacon_skb, align 8
  tail call void @consume_skb(ptr noundef %13) #13
  %14 = ptrtoint ptr %beacon_skb to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %beacon_skb, align 8
  %call20 = tail call i32 @iwlagn_send_beacon_cmd(ptr noundef %add.ptr)
  br label %out

out:                                              ; preds = %if.end18, %do.end14, %if.end.out_crit_edge, %do.end
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_bg_run_time_calib_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -11028
  %mutex = getelementptr i8, ptr %work, i32 -10960
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %status = getelementptr i8, ptr %work, i32 -11008
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status, align 4
  %5 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %start_calib = getelementptr i8, ptr %work, i32 -7670
  %6 = ptrtoint ptr %start_calib to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %start_calib, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @iwl_chain_noise_calibration(ptr noundef %add.ptr) #13
  tail call void @iwl_sensitivity_calibration(ptr noundef %add.ptr) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_bg_tx_flush(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -10712
  %status = getelementptr i8, ptr %work, i32 -10692
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status, align 4
  %and1.i.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %status, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %if.end.i.cleanup_crit_edge, label %iwl_is_ready_rf.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

iwl_is_ready_rf.exit:                             ; preds = %if.end.i
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %status, align 4
  %10 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not.not = icmp eq i32 %10, 0
  br i1 %tobool2.not.not, label %do.end, label %iwl_is_ready_rf.exit.cleanup_crit_edge

iwl_is_ready_rf.exit.cleanup_crit_edge:           ; preds = %iwl_is_ready_rf.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %iwl_is_ready_rf.exit
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr i8, ptr %work, i32 -10708
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %12, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_bg_tx_flush, ptr noundef nonnull @.str.161) #13
  tail call void @iwlagn_dev_txfifo_flush(ptr noundef %add.ptr) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %iwl_is_ready_rf.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_bg_bt_full_concurrency(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -10756
  %mutex = getelementptr i8, ptr %work, i32 -10688
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %status = getelementptr i8, ptr %work, i32 -10736
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status, align 4
  %and1.i.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i:                                         ; preds = %if.end
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %status, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %if.end.i.out_crit_edge, label %iwl_is_ready_rf.exit

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

iwl_is_ready_rf.exit:                             ; preds = %if.end.i
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %status, align 4
  %10 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not.not = icmp eq i32 %10, 0
  br i1 %tobool2.not.not, label %do.end, label %iwl_is_ready_rf.exit.out_crit_edge

iwl_is_ready_rf.exit.out_crit_edge:               ; preds = %iwl_is_ready_rf.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.end:                                           ; preds = %iwl_is_ready_rf.exit
  %dev = getelementptr i8, ptr %work, i32 -10752
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %bt_full_concurrent = getelementptr i8, ptr %work, i32 -487
  %13 = ptrtoint ptr %bt_full_concurrent to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bt_full_concurrent, align 1, !range !535
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool6.not = icmp eq i8 %14, 0
  %cond = select i1 %tobool6.not, ptr @.str.164, ptr @.str.163
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %12, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_bg_bt_full_concurrency, ptr noundef nonnull @.str.162, ptr noundef nonnull %cond) #13
  %contexts = getelementptr i8, ptr %work, i32 -8024
  %arrayidx10 = getelementptr i8, ptr %work, i32 -7400
  %cmp33 = icmp ult ptr %contexts, %arrayidx10
  br i1 %cmp33, label %for.body.lr.ph, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %valid_contexts = getelementptr i8, ptr %work, i32 -10384
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ctx.034 = phi ptr [ %contexts, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %15 = ptrtoint ptr %valid_contexts to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %valid_contexts, align 4
  %conv = zext i8 %16 to i32
  %ctxid = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.034, i32 0, i32 7
  %17 = ptrtoint ptr %ctxid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ctxid, align 4
  %shl = shl nuw i32 1, %18
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %for.body.for.inc_crit_edge, label %if.then12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @iwlagn_set_rxon_chain(ptr noundef %add.ptr, ptr noundef %ctx.034) #13
  %call13 = tail call i32 @iwlagn_commit_rxon(ptr noundef %add.ptr, ptr noundef %ctx.034) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.iwl_rxon_context, ptr %ctx.034, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %arrayidx10
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call void @iwlagn_send_advance_bt_config(ptr noundef %add.ptr) #13
  br label %out

out:                                              ; preds = %for.end, %iwl_is_ready_rf.exit.out_crit_edge, %if.end.i.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_bg_bt_runtime_config(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -10800
  %mutex = getelementptr i8, ptr %work, i32 -10732
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %status = getelementptr i8, ptr %work, i32 -10780
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status, align 4
  %and1.i.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i:                                         ; preds = %if.end
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %status, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %if.end.i.out_crit_edge, label %iwl_is_ready_rf.exit

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

iwl_is_ready_rf.exit:                             ; preds = %if.end.i
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %status, align 4
  %10 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not.not = icmp eq i32 %10, 0
  br i1 %tobool2.not.not, label %if.end4, label %iwl_is_ready_rf.exit.out_crit_edge

iwl_is_ready_rf.exit.out_crit_edge:               ; preds = %iwl_is_ready_rf.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end4:                                          ; preds = %iwl_is_ready_rf.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @iwlagn_send_advance_bt_config(ptr noundef %add.ptr) #13
  br label %out

out:                                              ; preds = %if.end4, %iwl_is_ready_rf.exit.out_crit_edge, %if.end.i.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_setup_scan_deferred_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwlagn_bt_setup_deferred_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_bg_statistics_periodic(ptr noundef %t) #0 align 64 {
entry:
  %statistics_cmd.i = alloca %struct.iwl_statistics_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -11072
  %status = getelementptr i8, ptr %t, i32 -11052
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status, align 4
  %and1.i.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %status, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %if.end.i.cleanup_crit_edge, label %iwl_is_ready_rf.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

iwl_is_ready_rf.exit:                             ; preds = %if.end.i
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %status, align 4
  %10 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not.not = icmp eq i32 %10, 0
  br i1 %tobool2.not.not, label %if.end4, label %iwl_is_ready_rf.exit.cleanup_crit_edge

iwl_is_ready_rf.exit.cleanup_crit_edge:           ; preds = %iwl_is_ready_rf.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %iwl_is_ready_rf.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %statistics_cmd.i) #13
  %11 = ptrtoint ptr %statistics_cmd.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %statistics_cmd.i, align 4
  %call2.i = call i32 @iwl_dvm_send_cmd_pdu(ptr noundef %add.ptr, i8 noundef zeroext -100, i32 noundef 1, i16 noundef zeroext 4, ptr noundef nonnull %statistics_cmd.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %statistics_cmd.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %iwl_is_ready_rf.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_bg_ucode_trace(ptr noundef %t) #0 align 64 {
entry:
  %read.i = alloca %struct.anon.190, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -11120
  %status = getelementptr i8, ptr %t, i32 -11100
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %event_log = getelementptr i8, ptr %t, i32 48
  %3 = ptrtoint ptr %event_log to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %event_log, align 8, !range !535
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %read.i) #13
  %log_event_table.i = getelementptr i8, ptr %t, i32 564
  %5 = call ptr @memset(ptr %read.i, i32 255, i32 16)
  %6 = ptrtoint ptr %log_event_table.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %log_event_table.i, align 4
  %call.i = tail call i32 @iwlagn_hw_valid_rtc_data_addr(i32 noundef %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then2.iwl_continuous_event_trace.exit_crit_edge, label %do.end.i

if.then2.iwl_continuous_event_trace.exit_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %iwl_continuous_event_trace.exit

do.end.i:                                         ; preds = %if.then2
  %8 = getelementptr inbounds %struct.anon.190, ptr %read.i, i32 0, i32 3
  %9 = getelementptr inbounds %struct.anon.190, ptr %read.i, i32 0, i32 2
  %10 = getelementptr inbounds %struct.anon.190, ptr %read.i, i32 0, i32 1
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 8
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i.i, align 4
  %read_mem.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %14, i32 0, i32 26
  %15 = ptrtoint ptr %read_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_mem.i.i, align 4
  %call.i.i = call i32 %16(ptr noundef %12, i32 noundef %7, ptr noundef nonnull %read.i, i32 noundef 4) #13
  %17 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %read.i, align 4
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %10, align 4
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %9, align 4
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %18)
  %cmp.i = icmp eq i32 %24, %18
  br i1 %cmp.i, label %if.then9.i, label %do.end.i.if.end10.i_crit_edge, !prof !534

do.end.i.if.end10.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

if.then9.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %do.end.i.if.end10.i_crit_edge
  %next_entry.0.i = phi i32 [ 0, %if.then9.i ], [ %24, %do.end.i.if.end10.i_crit_edge ]
  %next_entry11.i = getelementptr i8, ptr %t, i32 56
  %25 = ptrtoint ptr %next_entry11.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %next_entry11.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %next_entry.0.i, i32 %26)
  %cmp12.i = icmp ult i32 %next_entry.0.i, %26
  br i1 %cmp12.i, label %land.rhs.i, label %if.end10.i.if.end23.i_crit_edge

if.end10.i.if.end23.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.i

land.rhs.i:                                       ; preds = %if.end10.i
  %num_wraps14.i = getelementptr i8, ptr %t, i32 52
  %27 = ptrtoint ptr %num_wraps14.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_wraps14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %28)
  %cmp15.i = icmp eq i32 %22, %28
  br i1 %cmp15.i, label %if.then22.i, label %land.rhs.i.if.end23.i_crit_edge, !prof !534

land.rhs.i.if.end23.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.i

if.then22.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  %inc.i = add i32 %22, 1
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then22.i, %land.rhs.i.if.end23.i_crit_edge, %if.end10.i.if.end23.i_crit_edge
  %num_wraps.0.i = phi i32 [ %inc.i, %if.then22.i ], [ %22, %land.rhs.i.if.end23.i_crit_edge ], [ %22, %if.end10.i.if.end23.i_crit_edge ]
  %num_wraps25.i = getelementptr i8, ptr %t, i32 52
  %29 = ptrtoint ptr %num_wraps25.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_wraps25.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num_wraps.0.i, i32 %30)
  %cmp26.i = icmp eq i32 %num_wraps.0.i, %30
  br i1 %cmp26.i, label %if.then27.i, label %if.else34.i

if.then27.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = sub i32 %next_entry.0.i, %26
  call fastcc void @iwl_print_cont_event_trace(ptr noundef %add.ptr, i32 noundef %7, i32 noundef %26, i32 noundef %sub.i, i32 noundef %18, i32 noundef %20) #13
  %non_wraps_count.i = getelementptr i8, ptr %t, i32 60
  %31 = ptrtoint ptr %non_wraps_count.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %non_wraps_count.i, align 4
  %inc33.i = add i32 %32, 1
  store i32 %inc33.i, ptr %non_wraps_count.i, align 4
  br label %if.end64.i

if.else34.i:                                      ; preds = %if.end23.i
  %sub37.i = sub i32 %num_wraps.0.i, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub37.i)
  %cmp38.i = icmp ugt i32 %sub37.i, 1
  br i1 %cmp38.i, label %if.then39.i, label %if.else42.i

if.then39.i:                                      ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #15
  %wraps_more_count.i = getelementptr i8, ptr %t, i32 68
  %33 = ptrtoint ptr %wraps_more_count.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %wraps_more_count.i, align 4
  %inc41.i = add i32 %34, 1
  store i32 %inc41.i, ptr %wraps_more_count.i, align 4
  br label %if.end45.i

if.else42.i:                                      ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #15
  %wraps_once_count.i = getelementptr i8, ptr %t, i32 64
  %35 = ptrtoint ptr %wraps_once_count.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %wraps_once_count.i, align 8
  %inc44.i = add i32 %36, 1
  store i32 %inc44.i, ptr %wraps_once_count.i, align 8
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.else42.i, %if.then39.i
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr, align 8
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 8
  call fastcc void @trace_iwlwifi_dev_ucode_wrap_event(ptr noundef %40, i32 noundef %sub37.i, i32 noundef %next_entry.0.i, i32 noundef %26) #13
  %41 = ptrtoint ptr %next_entry11.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %next_entry11.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %next_entry.0.i, i32 %42)
  %cmp54.i = icmp ult i32 %next_entry.0.i, %42
  br i1 %cmp54.i, label %if.then55.i, label %if.else61.i

if.then55.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub60.i = sub i32 %18, %42
  call fastcc void @iwl_print_cont_event_trace(ptr noundef %add.ptr, i32 noundef %7, i32 noundef %42, i32 noundef %sub60.i, i32 noundef %18, i32 noundef %20) #13
  call fastcc void @iwl_print_cont_event_trace(ptr noundef %add.ptr, i32 noundef %7, i32 noundef 0, i32 noundef %next_entry.0.i, i32 noundef %18, i32 noundef %20) #13
  br label %if.end64.i

if.else61.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub62.i = sub i32 %18, %next_entry.0.i
  call fastcc void @iwl_print_cont_event_trace(ptr noundef %add.ptr, i32 noundef %7, i32 noundef %next_entry.0.i, i32 noundef %sub62.i, i32 noundef %18, i32 noundef %20) #13
  call fastcc void @iwl_print_cont_event_trace(ptr noundef %add.ptr, i32 noundef %7, i32 noundef 0, i32 noundef %next_entry.0.i, i32 noundef %18, i32 noundef %20) #13
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.else61.i, %if.then55.i, %if.then27.i
  %43 = ptrtoint ptr %num_wraps25.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %num_wraps.0.i, ptr %num_wraps25.i, align 4
  %44 = ptrtoint ptr %next_entry11.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %next_entry.0.i, ptr %next_entry11.i, align 8
  br label %iwl_continuous_event_trace.exit

iwl_continuous_event_trace.exit:                  ; preds = %if.end64.i, %if.then2.iwl_continuous_event_trace.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %read.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %45, 1
  %call5 = call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #13
  br label %cleanup

cleanup:                                          ; preds = %iwl_continuous_event_trace.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_restart_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_beacon_get_tim(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_chain_noise_calibration(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_sensitivity_calibration(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwlagn_dev_txfifo_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_print_cont_event_trace(ptr nocapture noundef readonly %priv, i32 noundef %base, i32 noundef %start_idx, i32 noundef %num_events, i32 noundef %capacity, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp = icmp eq i32 %mode, 0
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %ops = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %grab_nic_access = getelementptr inbounds %struct.iwl_trans_ops, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %grab_nic_access to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %grab_nic_access, align 4
  %call = tail call zeroext i1 %5(ptr noundef %1) #13
  br i1 %call, label %if.end10, label %entry.cleanup_crit_edge, !prof !537

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %entry
  %add = add i32 %base, 16
  %mul1 = shl i32 %start_idx, 3
  %mul5 = mul i32 %start_idx, 12
  %mul5.sink = select i1 %cmp, i32 %mul1, i32 %mul5
  %add6 = add i32 %add, %mul5.sink
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  tail call void @iwl_write32(ptr noundef %7, i32 noundef 1036, i32 noundef %add6) #13
  %sub = sub i32 %capacity, %start_idx
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %num_events)
  %cmp12 = icmp ult i32 %sub, %num_events
  br i1 %cmp12, label %do.end, label %if.end10.if.end31_crit_edge, !prof !534

if.end10.if.end31_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 422, i32 noundef 9, ptr noundef null) #13
  br label %if.end31

if.end31:                                         ; preds = %do.end, %if.end10.if.end31_crit_edge
  %8 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %num_events)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp4280.not = icmp eq i32 %8, 0
  br i1 %cmp4280.not, label %if.end31.for.end_crit_edge, label %if.end31.for.body_crit_edge

if.end31.for.body_crit_edge:                      ; preds = %if.end31
  br label %for.body

if.end31.for.end_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end31.for.body_crit_edge
  %i.081 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end31.for.body_crit_edge ]
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  %call44 = tail call i32 @iwl_read32(ptr noundef %10, i32 noundef 1052) #13
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 8
  %call46 = tail call i32 @iwl_read32(ptr noundef %12, i32 noundef 1052) #13
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 8
  br i1 %cmp, label %if.then48, label %if.else50

if.then48:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  tail call fastcc void @trace_iwlwifi_dev_ucode_cont_event(ptr noundef %16, i32 noundef 0, i32 noundef %call46, i32 noundef %call44)
  br label %for.inc

if.else50:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %call52 = tail call i32 @iwl_read32(ptr noundef %14, i32 noundef 1052) #13
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 8
  %dev54 = getelementptr inbounds %struct.iwl_trans, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev54, align 8
  tail call fastcc void @trace_iwlwifi_dev_ucode_cont_event(ptr noundef %20, i32 noundef %call46, i32 noundef %call52, i32 noundef %call44)
  br label %for.inc

for.inc:                                          ; preds = %if.else50, %if.then48
  %inc = add nuw i32 %i.081, 1
  %exitcond.not = icmp eq i32 %inc, %8
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end31.for.end_crit_edge
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 8
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  %release_nic_access.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %24, i32 0, i32 33
  %25 = ptrtoint ptr %release_nic_access.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %release_nic_access.i, align 4
  tail call void %26(ptr noundef %22) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iwlwifi_dev_ucode_wrap_event(ptr noundef %dev, i32 noundef %wraps, i32 noundef %n_entry, i32 noundef %p_entry) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_ucode_wrap_event, i32 0, i32 1), ptr blockaddress(@trace_iwlwifi_dev_ucode_wrap_event, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !538

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !524) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !537

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !524) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !549
  %call42 = tail call i32 @__traceiter_iwlwifi_dev_ucode_wrap_event(ptr noundef null, ptr noundef %dev, i32 noundef %wraps, i32 noundef %n_entry, i32 noundef %p_entry) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !550
  %13 = tail call i32 @llvm.read_register.i32(metadata !524) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !524) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !537

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !524) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !541
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_ucode_wrap_event, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_ucode_wrap_event, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_iwlwifi_dev_ucode_wrap_event.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_iwlwifi_dev_ucode_wrap_event.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.165, i32 noundef 54, ptr noundef nonnull @.str.29) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !542
  %31 = tail call i32 @llvm.read_register.i32(metadata !524) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_iwlwifi_dev_ucode_cont_event(ptr noundef %dev, i32 noundef %time, i32 noundef %data, i32 noundef %ev) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_ucode_cont_event, i32 0, i32 1), ptr blockaddress(@trace_iwlwifi_dev_ucode_cont_event, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !538

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !524) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !537

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !524) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !551
  %call42 = tail call i32 @__traceiter_iwlwifi_dev_ucode_cont_event(ptr noundef null, ptr noundef %dev, i32 noundef %time, i32 noundef %data, i32 noundef %ev) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !552
  %13 = tail call i32 @llvm.read_register.i32(metadata !524) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !524) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !537

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !524) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !541
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_ucode_cont_event, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iwlwifi_dev_ucode_cont_event, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_iwlwifi_dev_ucode_cont_event.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_iwlwifi_dev_ucode_cont_event.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.165, i32 noundef 33, ptr noundef nonnull @.str.29) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !542
  %31 = tail call i32 @llvm.read_register.i32(metadata !524) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iwlwifi_dev_ucode_cont_event(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_iwlwifi_dev_ucode_wrap_event(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_calib_free_results(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwlagn_mac_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_rfkill_set_hw_state_reason(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwlagn_fw_error(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 8) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 8), align 4
  %and.i = and i32 %0, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @iwl_print_rx_config_cmd(ptr noundef %priv, i32 noundef 0) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ucode_loaded = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 32
  %1 = ptrtoint ptr %ucode_loaded to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %ucode_loaded, align 8
  %status = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 10, ptr noundef %status) #13
  %notif_wait = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 21
  tail call void @iwl_abort_notification_waits(ptr noundef %notif_wait) #13
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %status) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %reload_jiffies3 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 30
  %3 = ptrtoint ptr %reload_jiffies3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reload_jiffies3, align 8
  %sub = sub i32 %2, %4
  %call4 = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #13
  %5 = ptrtoint ptr %reload_jiffies3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %reload_jiffies3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1001, i32 %call4)
  %cmp = icmp ult i32 %call4, 1001
  %reload_count = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 31
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %6 = ptrtoint ptr %reload_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reload_count, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %reload_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc)
  %cmp8 = icmp sgt i32 %inc, 3
  br i1 %cmp8, label %do.end, label %if.then6.if.end16_crit_edge

if.then6.if.end16_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %9, i32 noundef 0, ptr noundef nonnull @.str.238) #13
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %reload_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %reload_count, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then6.if.end16_crit_edge
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %status, align 4
  %13 = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool19.not = icmp eq i32 %13, 0
  br i1 %tobool19.not, label %if.then20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then20:                                        ; preds = %if.end16
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 3) to i32))
  %14 = load i8, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 3), align 4, !range !535
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool21.not = icmp eq i8 %14, 0
  %dev36 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %15 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev36, align 4
  br i1 %tobool21.not, label %do.end35, label %do.end26

do.end26:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %16, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_fw_error, ptr noundef nonnull @.str.239) #13
  %workqueue = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 16
  %17 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %workqueue, align 4
  %restart = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 101
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %restart) #13
  br label %cleanup

do.end35:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %16, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_fw_error, ptr noundef nonnull @.str.240) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %do.end26, %if.end16.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_print_rx_config_cmd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_abort_notification_waits(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iwl_check_for_ct_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_set_bits_mask_prph(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 253)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 253)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !17, !19, !20, !21, !23, !25, !27, !29, !31, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !49, !51, !52, !54, !56, !58, !59, !61, !63, !65, !67, !69, !70, !71, !72, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !88, !90, !91, !92, !93, !95, !96, !97, !99, !101, !102, !103, !105, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !281, !283, !285, !287, !289, !290, !291, !292, !293, !295, !297, !298, !300, !301, !303, !305, !306, !308, !309, !311, !312, !314, !315, !317, !318, !320, !321, !323, !324, !326, !327, !329, !331, !333, !335, !336, !338, !339, !340, !341, !343, !344, !345, !347, !348, !350, !352, !354, !356, !358, !359, !361, !363, !364, !366, !368, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !516, !518, !520, !522}
!llvm.named.register.sp = !{!524}
!llvm.module.flags = !{!525, !526, !527, !528, !529, !530, !531, !532}
!llvm.ident = !{!533}

!0 = !{ptr @__UNIQUE_ID_description406, !1, !"__UNIQUE_ID_description406", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 49, i32 1}
!2 = !{ptr @__UNIQUE_ID_file407, !3, !"__UNIQUE_ID_file407", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 50, i32 1}
!4 = !{ptr @__UNIQUE_ID_license408, !3, !"__UNIQUE_ID_license408", i1 false, i1 false}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 195, i32 2}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 198, i32 3}
!9 = !{ptr @__func__.iwl_alive_start, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 768, i32 2}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 855, i32 2}
!14 = !{ptr @__func__.iwl_down, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 898, i32 2}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1819, i32 3}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1834, i32 3}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1840, i32 3}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1849, i32 3}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1856, i32 2}
!29 = !{ptr @__func__.iwlagn_lift_passive_no_rx, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 2078, i32 4}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 2081, i32 4}
!34 = !{ptr @__initcall__kmod_iwldvm__502_2150_iwl_init6, !35, !"__initcall__kmod_iwldvm__502_2150_iwl_init6", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 2150, i32 1}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 2154, i32 24}
!38 = !{ptr @__exitcall_iwl_exit, !39, !"__exitcall_iwl_exit", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 2157, i32 1}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 176, i32 3}
!42 = !{ptr @__func__.iwl_send_bt_config, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 750, i32 2}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 755, i32 3}
!49 = !{ptr @__func__.iwlagn_send_tx_ant_config, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 725, i32 3}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 730, i32 3}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 677, i32 4}
!56 = !{ptr @__func__.iwl_rf_kill_ct_config, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 679, i32 4}
!58 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 694, i32 4}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/../iwl-trans.h", i32 1091, i32 2}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1727, i32 7}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1739, i32 7}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/../iwl-devtrace-iwlwifi.h", i32 115, i32 1}
!69 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!70 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!71 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!74 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 2138, i32 3}
!77 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @iwl_init._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @iwl_init._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 2144, i32 3}
!82 = !{ptr @iwl_init._entry.33, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @iwl_init._entry_ptr.35, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @iwl_dvm_ops, !85, !"iwl_dvm_ops", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 2112, i32 37}
!86 = !{ptr @iwl_op_mode_dvm_start.no_reclaim_cmds, !87, !"no_reclaim_cmds", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1236, i32 18}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1250, i32 3}
!90 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @iwl_op_mode_dvm_start._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @iwl_op_mode_dvm_start._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1323, i32 3}
!95 = !{ptr @iwl_op_mode_dvm_start._entry.38, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @iwl_op_mode_dvm_start._entry_ptr.40, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1363, i32 2}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1367, i32 2}
!101 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!102 = distinct !{null, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @iwl_op_mode_dvm_start.__key, !104, !"__key", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1373, i32 2}
!105 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1378, i32 2}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1387, i32 3}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1408, i32 2}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1425, i32 3}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1466, i32 4}
!116 = !{ptr @iwl_dvm_groups, !117, !"iwl_dvm_groups", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 135, i32 34}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 57, i32 2}
!120 = !{ptr @.str.52, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 58, i32 2}
!122 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 59, i32 2}
!124 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 60, i32 2}
!126 = !{ptr @.str.55, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 61, i32 2}
!128 = !{ptr @.str.56, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 62, i32 2}
!130 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 63, i32 2}
!132 = !{ptr @.str.58, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 64, i32 2}
!134 = !{ptr @.str.59, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 65, i32 2}
!136 = !{ptr @.str.60, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 66, i32 2}
!138 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 67, i32 2}
!140 = !{ptr @.str.62, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 68, i32 2}
!142 = !{ptr @.str.63, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 69, i32 2}
!144 = !{ptr @.str.64, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 70, i32 2}
!146 = !{ptr @.str.65, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 71, i32 2}
!148 = !{ptr @.str.66, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 72, i32 2}
!150 = !{ptr @.str.67, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 73, i32 2}
!152 = !{ptr @.str.68, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 74, i32 2}
!154 = !{ptr @.str.69, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 75, i32 2}
!156 = !{ptr @.str.70, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 76, i32 2}
!158 = !{ptr @.str.71, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 77, i32 2}
!160 = !{ptr @.str.72, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 78, i32 2}
!162 = !{ptr @.str.73, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 79, i32 2}
!164 = !{ptr @.str.74, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 80, i32 2}
!166 = !{ptr @.str.75, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 81, i32 2}
!168 = !{ptr @.str.76, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 82, i32 2}
!170 = !{ptr @.str.77, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 83, i32 2}
!172 = !{ptr @.str.78, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 84, i32 2}
!174 = !{ptr @.str.79, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 85, i32 2}
!176 = !{ptr @.str.80, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 86, i32 2}
!178 = !{ptr @.str.81, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 87, i32 2}
!180 = !{ptr @.str.82, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 88, i32 2}
!182 = !{ptr @.str.83, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 89, i32 2}
!184 = !{ptr @.str.84, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 90, i32 2}
!186 = !{ptr @.str.85, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 91, i32 2}
!188 = !{ptr @.str.86, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 92, i32 2}
!190 = !{ptr @.str.87, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 93, i32 2}
!192 = !{ptr @.str.88, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 94, i32 2}
!194 = !{ptr @.str.89, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 95, i32 2}
!196 = !{ptr @.str.90, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 96, i32 2}
!198 = !{ptr @.str.91, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 97, i32 2}
!200 = !{ptr @.str.92, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 98, i32 2}
!202 = !{ptr @.str.93, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 99, i32 2}
!204 = !{ptr @.str.94, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 100, i32 2}
!206 = !{ptr @.str.95, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 101, i32 2}
!208 = !{ptr @.str.96, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 102, i32 2}
!210 = !{ptr @.str.97, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 103, i32 2}
!212 = !{ptr @.str.98, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 104, i32 2}
!214 = !{ptr @.str.99, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 105, i32 2}
!216 = !{ptr @.str.100, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 106, i32 2}
!218 = !{ptr @.str.101, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 107, i32 2}
!220 = !{ptr @.str.102, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 108, i32 2}
!222 = !{ptr @.str.103, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 109, i32 2}
!224 = !{ptr @.str.104, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 110, i32 2}
!226 = !{ptr @.str.105, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 111, i32 2}
!228 = !{ptr @.str.106, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 112, i32 2}
!230 = !{ptr @.str.107, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 113, i32 2}
!232 = !{ptr @.str.108, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 114, i32 2}
!234 = !{ptr @.str.109, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 115, i32 2}
!236 = !{ptr @.str.110, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 116, i32 2}
!238 = !{ptr @.str.111, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 117, i32 2}
!240 = !{ptr @.str.112, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 118, i32 2}
!242 = !{ptr @.str.113, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 119, i32 2}
!244 = !{ptr @.str.114, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 120, i32 2}
!246 = !{ptr @.str.115, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 121, i32 2}
!248 = !{ptr @.str.116, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 122, i32 2}
!250 = !{ptr @.str.117, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 123, i32 2}
!252 = !{ptr @.str.118, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 124, i32 2}
!254 = !{ptr @.str.119, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 125, i32 2}
!256 = !{ptr @.str.120, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 126, i32 2}
!258 = !{ptr @.str.121, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 127, i32 2}
!260 = !{ptr @.str.122, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 128, i32 2}
!262 = !{ptr @.str.123, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 129, i32 2}
!264 = !{ptr @.str.124, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 130, i32 2}
!266 = !{ptr @.str.125, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 131, i32 2}
!268 = !{ptr @.str.126, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 132, i32 2}
!270 = !{ptr @iwl_dvm_cmd_names, !271, !"iwl_dvm_cmd_names", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 56, i32 36}
!272 = !{ptr @.str.127, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1153, i32 2}
!274 = !{ptr @.str.128, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1159, i32 2}
!276 = !{ptr @.str.129, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1165, i32 2}
!278 = !{ptr @__func__.iwl_nvm_check_version, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1213, i32 3}
!280 = !{ptr @.str.130, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @.str.131, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1218, i32 2}
!283 = !{ptr @.str.132, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1177, i32 3}
!285 = !{ptr @.str.133, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1183, i32 3}
!287 = !{ptr @__func__.iwl_eeprom_init_hw_params, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1187, i32 2}
!289 = !{ptr @.str.134, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @.str.135, !288, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @.str.136, !288, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @.str.137, !288, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @.str.138, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1201, i32 2}
!295 = !{ptr @iwl_init_drv.__key, !296, !"__key", i1 false, i1 false}
!296 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1090, i32 2}
!297 = !{ptr @.str.139, !296, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @iwl_init_drv.__key.140, !299, !"__key", i1 false, i1 false}
!299 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1092, i32 2}
!300 = !{ptr @.str.141, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @.str.142, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1052, i32 20}
!303 = !{ptr @iwl_setup_deferred_work.__key, !304, !"__key", i1 false, i1 false}
!304 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1054, i32 2}
!305 = !{ptr @.str.143, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @iwl_setup_deferred_work.__key.144, !307, !"__key", i1 false, i1 false}
!307 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1055, i32 2}
!308 = !{ptr @.str.145, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @iwl_setup_deferred_work.__key.146, !310, !"__key", i1 false, i1 false}
!310 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1056, i32 2}
!311 = !{ptr @.str.147, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @iwl_setup_deferred_work.__key.148, !313, !"__key", i1 false, i1 false}
!313 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1057, i32 2}
!314 = !{ptr @.str.149, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @iwl_setup_deferred_work.__key.150, !316, !"__key", i1 false, i1 false}
!316 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1058, i32 2}
!317 = !{ptr @.str.151, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @iwl_setup_deferred_work.__key.152, !319, !"__key", i1 false, i1 false}
!319 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1059, i32 2}
!320 = !{ptr @.str.153, !319, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @iwl_setup_deferred_work.__key.154, !322, !"__key", i1 false, i1 false}
!322 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1066, i32 2}
!323 = !{ptr @.str.155, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @iwl_setup_deferred_work.__key.156, !325, !"__key", i1 false, i1 false}
!325 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1068, i32 2}
!326 = !{ptr @.str.157, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @.str.158, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1037, i32 4}
!329 = !{ptr @.str.159, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 271, i32 3}
!331 = !{ptr @.str.160, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 288, i32 3}
!333 = !{ptr @__func__.iwl_bg_tx_flush, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 564, i32 2}
!335 = !{ptr @.str.161, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @__func__.iwl_bg_bt_full_concurrency, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 335, i32 2}
!338 = !{ptr @.str.162, !337, !"<string literal>", i1 false, i1 false}
!339 = !{ptr @.str.163, !337, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @.str.164, !337, !"<string literal>", i1 false, i1 false}
!341 = distinct !{null, !342, !"__already_done", i1 false, i1 false}
!342 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/../iwl-devtrace-ucode.h", i32 15, i32 1}
!343 = !{ptr @.str.165, !342, !"<string literal>", i1 false, i1 false}
!344 = distinct !{null, !342, !"__warned", i1 false, i1 false}
!345 = distinct !{null, !346, !"__already_done", i1 false, i1 false}
!346 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/../iwl-devtrace-ucode.h", i32 35, i32 1}
!347 = distinct !{null, !346, !"__warned", i1 false, i1 false}
!348 = distinct !{null, !349, !"iwlagn_bss_ac_to_queue", i1 false, i1 false}
!349 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 579, i32 17}
!350 = distinct !{null, !351, !"iwlagn_bss_ac_to_fifo", i1 false, i1 false}
!351 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 572, i32 17}
!352 = distinct !{null, !353, !"iwlagn_pan_ac_to_queue", i1 false, i1 false}
!353 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 590, i32 17}
!354 = distinct !{null, !355, !"iwlagn_pan_ac_to_fifo", i1 false, i1 false}
!355 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 583, i32 17}
!356 = !{ptr @__func__.iwl_op_mode_dvm_stop, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1512, i32 2}
!358 = !{ptr @.str.166, !357, !"<string literal>", i1 false, i1 false}
!359 = distinct !{null, !360, !"__already_done", i1 false, i1 false}
!360 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 2034, i32 6}
!361 = !{ptr @__func__.iwl_stop_sw_queue, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 2038, i32 3}
!363 = !{ptr @.str.167, !362, !"<string literal>", i1 false, i1 false}
!364 = distinct !{null, !365, !"__already_done", i1 false, i1 false}
!365 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 2053, i32 6}
!366 = !{ptr @__func__.iwl_wake_sw_queue, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 2057, i32 3}
!368 = !{ptr @.str.168, !367, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @.str.169, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1950, i32 2}
!371 = !{ptr @.str.170, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1622, i32 3}
!373 = !{ptr @.str.171, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1634, i32 3}
!375 = !{ptr @.str.172, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1635, i32 3}
!377 = !{ptr @.str.173, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1639, i32 2}
!379 = !{ptr @.str.174, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1641, i32 2}
!381 = !{ptr @.str.175, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1642, i32 2}
!383 = !{ptr @.str.176, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1643, i32 2}
!385 = !{ptr @.str.177, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1644, i32 2}
!387 = !{ptr @.str.178, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1645, i32 2}
!389 = !{ptr @.str.179, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1646, i32 2}
!391 = !{ptr @.str.180, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1647, i32 2}
!393 = !{ptr @.str.181, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1648, i32 2}
!395 = !{ptr @.str.182, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1649, i32 2}
!397 = !{ptr @.str.183, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1650, i32 2}
!399 = !{ptr @.str.184, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1651, i32 2}
!401 = !{ptr @.str.185, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1652, i32 2}
!403 = !{ptr @.str.186, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1653, i32 2}
!405 = !{ptr @.str.187, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1654, i32 2}
!407 = !{ptr @.str.188, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1655, i32 2}
!409 = !{ptr @.str.189, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1656, i32 2}
!411 = !{ptr @.str.190, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1657, i32 2}
!413 = !{ptr @.str.191, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1658, i32 2}
!415 = !{ptr @.str.192, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1659, i32 2}
!417 = !{ptr @.str.193, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1660, i32 2}
!419 = !{ptr @.str.194, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1661, i32 2}
!421 = !{ptr @.str.195, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1662, i32 2}
!423 = !{ptr @.str.196, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1663, i32 2}
!425 = !{ptr @.str.197, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1664, i32 2}
!427 = !{ptr @.str.198, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1665, i32 2}
!429 = !{ptr @.str.199, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1666, i32 2}
!431 = !{ptr @.str.200, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1667, i32 2}
!433 = !{ptr @.str.201, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1668, i32 2}
!435 = !{ptr @.str.202, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1669, i32 2}
!437 = !{ptr @.str.203, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1670, i32 2}
!439 = !{ptr @.str.204, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1671, i32 2}
!441 = !{ptr @.str.205, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1672, i32 2}
!443 = !{ptr @.str.206, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1538, i32 2}
!445 = !{ptr @.str.207, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1539, i32 2}
!447 = !{ptr @.str.208, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1540, i32 2}
!449 = !{ptr @.str.209, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1541, i32 2}
!451 = !{ptr @.str.210, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1542, i32 2}
!453 = !{ptr @.str.211, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1543, i32 2}
!455 = !{ptr @.str.212, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1544, i32 2}
!457 = !{ptr @.str.213, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1545, i32 2}
!459 = !{ptr @.str.214, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1546, i32 2}
!461 = !{ptr @.str.215, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1547, i32 2}
!463 = !{ptr @.str.216, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1548, i32 2}
!465 = !{ptr @.str.217, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1549, i32 2}
!467 = !{ptr @.str.218, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1550, i32 2}
!469 = !{ptr @.str.219, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1551, i32 2}
!471 = !{ptr @.str.220, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1552, i32 2}
!473 = !{ptr @.str.221, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1553, i32 2}
!475 = !{ptr @.str.222, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1554, i32 2}
!477 = !{ptr @.str.223, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1555, i32 2}
!479 = !{ptr @.str.224, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1556, i32 2}
!481 = !{ptr @.str.225, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1557, i32 2}
!483 = !{ptr @.str.226, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1558, i32 2}
!485 = !{ptr @.str.227, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1559, i32 2}
!487 = !{ptr @.str.228, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1560, i32 2}
!489 = !{ptr @.str.229, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1561, i32 2}
!491 = !{ptr @.str.230, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1562, i32 2}
!493 = !{ptr @.str.231, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1563, i32 2}
!495 = !{ptr @.str.232, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1564, i32 2}
!497 = !{ptr @.str.233, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1565, i32 2}
!499 = !{ptr @desc_lookup_text, !500, !"desc_lookup_text", i1 false, i1 false}
!500 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1537, i32 27}
!501 = !{ptr @.str.234, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1575, i32 4}
!503 = !{ptr @.str.235, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1578, i32 4}
!505 = !{ptr @.str.236, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1579, i32 4}
!507 = !{ptr @.str.237, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1584, i32 4}
!509 = !{ptr @advanced_lookup, !510, !"advanced_lookup", i1 false, i1 false}
!510 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1568, i32 39}
!511 = !{ptr @.str.238, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1928, i32 5}
!513 = !{ptr @__func__.iwlagn_fw_error, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1937, i32 4}
!515 = !{ptr @.str.239, !514, !"<string literal>", i1 false, i1 false}
!516 = !{ptr @.str.240, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1941, i32 4}
!518 = !{ptr @.str.241, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1964, i32 3}
!520 = !{ptr @.str.242, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 1996, i32 3}
!522 = !{ptr @.str.243, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/main.c", i32 2026, i32 2}
!524 = !{!"sp"}
!525 = !{i32 1, !"wchar_size", i32 2}
!526 = !{i32 1, !"min_enum_size", i32 4}
!527 = !{i32 8, !"branch-target-enforcement", i32 0}
!528 = !{i32 8, !"sign-return-address", i32 0}
!529 = !{i32 8, !"sign-return-address-all", i32 0}
!530 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!531 = !{i32 7, !"uwtable", i32 1}
!532 = !{i32 7, !"frame-pointer", i32 2}
!533 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!534 = !{!"branch_weights", i32 1, i32 2000}
!535 = !{i8 0, i8 2}
!536 = !{!"auto-init"}
!537 = !{!"branch_weights", i32 2000, i32 1}
!538 = !{i64 2148750739, i64 2148750744, i64 2148750757, i64 2148750801, i64 2148750835, i64 2148750856}
!539 = !{i64 2158616600}
!540 = !{i64 2158616847}
!541 = !{i64 2149423952}
!542 = !{i64 2149424988}
!543 = !{i64 2148354335}
!544 = !{i64 2148269644, i64 2148269676, i64 2148269705, i64 2148269739, i64 2148269770, i64 2148269793}
!545 = !{i64 2148354564}
!546 = !{i64 2148357376}
!547 = !{i64 2148272109, i64 2148272141, i64 2148272170, i64 2148272204, i64 2148272235, i64 2148272258}
!548 = !{i64 2148357605}
!549 = !{i64 2158341595}
!550 = !{i64 2158341870}
!551 = !{i64 2158323306}
!552 = !{i64 2158323563}
