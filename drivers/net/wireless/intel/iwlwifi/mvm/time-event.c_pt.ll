; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/mvm/time-event.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iwl_mvm = type <{ ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i32, i8, [3 x i8], %struct.iwl_notif_wait_data, %union.anon.136, %struct.anon.137, %struct.anon.137, %struct.list_head, %union.anon.138, %struct.work_struct, ptr, ptr, ptr, ptr, i8, i8, [2 x i8], %struct.work_struct, ptr, [13 x %struct.iwl_nvm_section], %struct.iwl_fw_runtime, [5 x %struct.mac_address], %struct.iwl_rx_phy_info, [2 x i8], [16 x ptr], i8, [3 x i8], i32, i32, ptr, ptr, i32, i32, i32, %struct.delayed_work, i32, [4 x i32], [4 x i8], i64, ptr, i8, [3 x i8], %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i8, i8, i8, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.iwl_mvm_frame_stats, %struct.spinlock, i16, [2 x i8], [3 x %struct.iwl_mvm_phy_ctxt], %struct.list_head, %struct.spinlock, [1 x i32], [16 x i8], i8, [3 x i8], [4 x ptr], i8, [3 x i8], ptr, %struct.led_classdev, ptr, %struct.wiphy_wowlan_support, i32, i32, i32, i32, %struct.ieee80211_scan_ies, ptr, i32, ptr, i32, i8, i8, i8, i8, i32, ptr, i32, %struct.wait_queue_head, %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_ci_cmd, i8, [3 x i8], i32, %struct.list_head, %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_thermal_device, %struct.iwl_mvm_cooling_device, i32, i8, i8, [2 x i8], i32, [4 x i8], %struct.iwl_mvm_tcm, i8, i8, [20 x %struct.mac_address], %struct.iwl_time_quota_cmd, [2 x i8], i32, ptr, i16, i16, i16, i16, i8, [3 x i8], i32, ptr, ptr, ptr, i8, [3 x i8], i32, i8, i8, [2 x i8], i32, %struct.anon.151, [10 x i32], [1 x %struct.ieee80211_cipher_scheme], %struct.cfg80211_ftm_responder_stats, %struct.anon.153, %struct.list_head, %struct.anon.155, [2 x i8], ptr, [32 x ptr], i8, [3 x i8], %struct.delayed_work, i8, i8, i16, [6 x i8], [2 x i8], i32, i32 }>
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.iwl_notif_wait_data = type { %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%union.anon.136 = type { %struct.mvm_statistics_rx_v3 }
%struct.mvm_statistics_rx_v3 = type { %struct.mvm_statistics_rx_phy_v2, %struct.mvm_statistics_rx_phy_v2, %struct.mvm_statistics_rx_non_phy_v3, %struct.mvm_statistics_rx_ht_phy_v1 }
%struct.mvm_statistics_rx_phy_v2 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mvm_statistics_rx_non_phy_v3 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mvm_statistics_rx_ht_phy_v1 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.137 = type { i64, i64, i64, i64 }
%union.anon.138 = type { [32 x %struct.iwl_mvm_dqa_txq_info] }
%struct.iwl_mvm_dqa_txq_info = type { i8, i8, i8, i8, i16, [9 x i32], i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.iwl_nvm_section = type { i16, ptr }
%struct.iwl_fw_runtime = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [33 x %struct.iwl_fw_paging], i16, i16, i32, %struct.iwl_fwrt_shared_mem_cfg, %struct.anon.141, %struct.anon.146, i8 }
%struct.iwl_fw_paging = type { i32, ptr, i32, i32 }
%struct.iwl_fwrt_shared_mem_cfg = type { i32, i32, [2 x %struct.anon.140], i32, i32, i32, [6 x i32] }
%struct.anon.140 = type { [15 x i32], i32 }
%struct.anon.141 = type { [5 x %struct.iwl_fwrt_wk_data], i32, i8, [27 x i32], ptr, [2 x i32], i32, %struct.iwl_txf_iter_data, %struct.anon.145 }
%struct.iwl_fwrt_wk_data = type { i8, %struct.delayed_work, %struct.iwl_fwrt_dump_data }
%struct.iwl_fwrt_dump_data = type { %union.anon.142 }
%union.anon.142 = type { %struct.anon.143 }
%struct.anon.143 = type { ptr, ptr }
%struct.iwl_txf_iter_data = type { i32, i32, i32, i8 }
%struct.anon.145 = type { i8, i8, i32, i32, i32, i32 }
%struct.anon.146 = type { %struct.delayed_work, i32, i64 }
%struct.mac_address = type { [6 x i8] }
%struct.iwl_rx_phy_info = type <{ i8, i8, i8, i8, i32, i64, i32, i16, i16, [8 x i32], i32, i32, i8, i8, i16 }>
%struct.iwl_mvm_int_sta = type { i32, i32, i32 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.iwl_mvm_frame_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32 }
%struct.iwl_mvm_phy_ctxt = type { i16, i16, i32, i32, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.ieee80211_scan_ies = type { [6 x ptr], [6 x i32], ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.iwl_bt_coex_profile_notif = type { [4 x i32], i32, i32, i32, i32, i32, i8, i8, i16 }
%struct.iwl_bt_coex_ci_cmd = type <{ i64, i32, i64, i32 }>
%struct.iwl_mvm_tt_mgmt = type { %struct.delayed_work, i8, i32, i32, %struct.iwl_tt_params, i8 }
%struct.iwl_tt_params = type { i32, i32, i32, i32, i32, i32, i32, [6 x %struct.iwl_tt_tx_backoff], i8 }
%struct.iwl_tt_tx_backoff = type { i32, i32 }
%struct.iwl_mvm_thermal_device = type { [8 x i16], [8 x i8], ptr }
%struct.iwl_mvm_cooling_device = type { i32, ptr }
%struct.iwl_mvm_tcm = type { %struct.delayed_work, %struct.spinlock, i32, i32, i32, i8, [4 x %struct.iwl_mvm_tcm_mac], %struct.anon.150 }
%struct.iwl_mvm_tcm_mac = type { %struct.anon.147, %struct.anon.148, %struct.anon.149, i8 }
%struct.anon.147 = type { [4 x i32], i32 }
%struct.anon.148 = type { [4 x i32], i32, i32 }
%struct.anon.149 = type { i64, %struct.ewma_rate, i8 }
%struct.ewma_rate = type { i32 }
%struct.anon.150 = type { i32, [4 x i32], [4 x i32], [6 x i32], i32, [4 x i8], [4 x i8] }
%struct.iwl_time_quota_cmd = type { [4 x %struct.iwl_time_quota_data] }
%struct.iwl_time_quota_data = type { i32, i32, i32, i32 }
%struct.anon.151 = type { %struct.delayed_work, i32, i8, %struct.anon.152 }
%struct.anon.152 = type { i8, i8, i8, %struct.cfg80211_chan_def, ptr, i32, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_cipher_scheme = type { i32, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.cfg80211_ftm_responder_stats = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.anon.153 = type { ptr, ptr, %struct.list_head, [5 x i32], %struct.anon.154, %struct.list_head }
%struct.anon.154 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.155 = type { i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.iwl_mvm_time_event_data = type { ptr, %struct.list_head, i32, i32, i8, i32, i32 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.131, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.131 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.132] }
%struct.anon.132 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.iwl_rx_cmd_buffer = type { ptr, i32, i8, i32, i32 }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.iwl_notification_wait = type { %struct.list_head, ptr, ptr, [5 x i16], i8, i8, i8 }
%struct.iwl_time_event_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16 }
%struct.iwl_mvm_vif = type { ptr, i16, i16, i8, [6 x i8], i8, i8, i16, i8, i8, i8, i8, i8, i8, %struct.iwl_mvm_vif_bf_data, %struct.anon.130, i32, i32, [4 x %struct.ieee80211_tx_queue_params], %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta, ptr, %struct.anon.134, i32, i8, i16, [12 x %struct.in6_addr], [1 x i32], i32, ptr, ptr, %struct.iwl_dbgfs_pm, %struct.iwl_dbgfs_bf, %struct.iwl_mac_power_cmd, i32, [4 x i32], [6 x i8], %struct.delayed_work, i8, i8, i16, i16, i16, %struct.delayed_work, i8, i64, ptr, [4 x ptr], i8, %struct.anon.135 }
%struct.iwl_mvm_vif_bf_data = type { i8, i8, i32, i32, i32, i32, i32 }
%struct.anon.130 = type { i32, i32, i8 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.anon.134 = type { [24 x i8], [32 x i8], i32, i32, i32, i64, i8 }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%struct.iwl_dbgfs_pm = type { i16, i32, i32, i8, i8, i8, i32, i8, i8, i8, i32 }
%struct.iwl_dbgfs_bf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iwl_mac_power_cmd = type { i32, i16, i16, i32, i32, i32, i32, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.135 = type { [2 x ptr] }
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
%struct.iwl_mvm_session_prot_cmd = type { i32, i32, i32, i32, i32, i32 }
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
%struct.iwl_hs20_roc_req = type { i32, i32, i32, i32, %struct.iwl_fw_channel_info, %struct.iwl_hs20_roc_req_tail }
%struct.iwl_fw_channel_info = type { i32, i8, i8, i8, i8 }
%struct.iwl_hs20_roc_req_tail = type { [6 x i8], i16, i32, i32, i32 }
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
%struct.iwl_fw_dbg_trigger_tlv = type { i32, i32, i32, i32, i8, i8, i16, i16, i8, [5 x i8], [0 x i8] }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.121, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.anon.121 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.cfg80211_bss_selection = type { i32, %union.anon.122 }
%union.anon.122 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.iwl_time_event_notif = type { i32, i32, i32, i32, i32, i32 }
%struct.anon.160 = type { i32, i32, i32 }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/time-event.c\00", [44 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_rx_time_event_notif = private unnamed_addr constant [28 x i8] c"iwl_mvm_rx_time_event_notif\00", align 1
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Time event notification - UID = 0x%x action %d\0A\00", [48 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__func__.iwl_mvm_protect_session = private unnamed_addr constant [24 x i8] c"iwl_mvm_protect_session\00", align 1
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"We have enough time in the current TE: %u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"extend 0x%x: only %u ms left\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to add TE to protect session\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to protect session until TE\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_remove_time_event = private unnamed_addr constant [26 x i8] c"iwl_mvm_remove_time_event\00", align 1
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Removing TE 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Couldn't remove the time event\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_stop_session_protection = private unnamed_addr constant [32 x i8] c"iwl_mvm_stop_session_protection\00", align 1
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"don't remove session protection id=%u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"don't remove TE with id=%u (not session protection)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Session protection failure\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Not associated and the session protection is over already...\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"No beacon heard and the session protection is over already...\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"P2P_DEVICE remain on channel already running\0A\00", [50 x i8] zeroinitializer }, align 32
@iwl_mvm_start_p2p_roc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Got an invalid ROC type\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No remain on channel event\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_schedule_csa_period = private unnamed_addr constant [28 x i8] c"iwl_mvm_schedule_csa_period\00", align 1
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CS period is already scheduled\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_schedule_session_protection = private unnamed_addr constant [36 x i8] c"iwl_mvm_schedule_session_protection\00", align 1
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Add new session protection, duration %d TU\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Couldn't send the SESSION_PROTECTION_CMD\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to protect session until session protection\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_aux_roc_te_handle_notif = private unnamed_addr constant [32 x i8] c"iwl_mvm_aux_roc_te_handle_notif\00", align 1
@.str.20 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Aux ROC time event notification  - UID = 0x%x action %d (error = %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ERROR: Unknown Aux ROC Time Event (action = %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Time event %d Action 0x%x received status: %d\00", [50 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Trigger %d occurred while no-collect window.\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_te_handle_notif = private unnamed_addr constant [24 x i8] c"iwl_mvm_te_handle_notif\00", align 1
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Handle time event notif - UID = 0x%x action %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Time Event start notification failure\00", [58 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Time Event end notification failure\00", [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"TE ended - current time %lu, estimated end %lu\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"No beacon heard and the CS time event is over, don't disconnect\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Not associated and the time event is over already...\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"No beacon heard and the time event is over already...\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Got TE with unknown action\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_te_handle_notify_csa = private unnamed_addr constant [29 x i8] c"iwl_mvm_te_handle_notify_csa\00", align 1
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CSA time event failed to start\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CSA TE failed to start\00", [41 x i8] zeroinitializer }, align 32
@iwl_mvm_te_handle_notify_csa.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_csa_noa_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_csa_noa_start = private unnamed_addr constant [22 x i8] c"iwl_mvm_csa_noa_start\00", align 1
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CSA NOA started\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CSA NOA started too early\0A\00", [37 x i8] zeroinitializer }, align 32
@iwl_mvm_time_event_send_add.time_event_response = internal constant { [1 x i16], [30 x i8] } { [1 x i16] [i16 41], [30 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_time_event_send_add = private unnamed_addr constant [28 x i8] c"iwl_mvm_time_event_send_add\00", align 1
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Add new TE, duration %d TU\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Couldn't send TIME_EVENT_CMD: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@iwl_mvm_time_event_send_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_time_event_response.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid TIME_EVENT_CMD response\0A\00", [63 x i8] zeroinitializer }, align 32
@iwl_mvm_time_event_response.__already_done.41 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_mvm_time_event_response = private unnamed_addr constant [28 x i8] c"iwl_mvm_time_event_response\00", align 1
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"TIME_EVENT_CMD response - UID = 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@iwl_mvm_te_notif.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.43 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Invalid TIME_EVENT_NOTIFICATION response\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_te_notif = private unnamed_addr constant [17 x i8] c"iwl_mvm_te_notif\00", align 1
@.str.44 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"TIME_EVENT_NOTIFICATION response - UID = 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"TIME_EVENT_NOTIFICATION received but not executed\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.__iwl_mvm_remove_time_event = private unnamed_addr constant [28 x i8] c"__iwl_mvm_remove_time_event\00", align 1
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TE 0x%x has already ended\0A\00", [37 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/mvm.h\00", [51 x i8] zeroinitializer }, align 32
@iwl_mvm_rcu_dereference_vif_id.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iwl_mvm_sta_from_staid_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@iwl_mvm_start_p2p_roc_session_protection.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.53 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Couldn't send the SESSION_PROTECTION_CMD: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_remove_aux_roc_te = private unnamed_addr constant [26 x i8] c"iwl_mvm_remove_aux_roc_te\00", align 1
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Removing BSS AUX ROC TE 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@iwl_mvm_session_prot_notif.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.55 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Invalid SESSION_PROTECTION_NOTIF response\0A\00", [53 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16777216, i64 33554432]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 28, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 433, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 587, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 593, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 640, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 644, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 783, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 787, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 806, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 812, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 845, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 864, i32 11 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 865, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 940, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 962, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1051, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1103, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1199, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1207, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1230, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 394, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 414, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 260, i32 6 }
@___asan_gen_.130 = private unnamed_addr constant [54 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/../fw/dbg.h\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 121, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 293, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 311, i32 10 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 313, i32 10 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 315, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 324, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 340, i32 5 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 351, i32 5 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 352, i32 5 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 370, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 203, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 214, i32 7 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 126, i32 12 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 130, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 139, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [20 x i8] c"time_event_response\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 516, i32 19 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 522, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 553, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 495, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 506, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 463, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 473, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 476, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 721, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 695, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 1216, i32 6 }
@___asan_gen_.211 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 723, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 665, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 752, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.220 = private constant [55 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1145, i32 3 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @iwl_mvm_time_event_send_add.time_event_response, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_time_event_send_add.time_event_response to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_te_clear_data(ptr noundef %mvm, ptr noundef %te_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 89, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !158

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool24.not = icmp eq ptr %te_data, null
  br i1 %tobool24.not, label %if.end.return_crit_edge, label %lor.lhs.false

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false:                                    ; preds = %if.end
  %1 = ptrtoint ptr %te_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %te_data, align 4
  %tobool25.not = icmp eq ptr %2, null
  br i1 %tobool25.not, label %lor.lhs.false.return_crit_edge, label %if.end27

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end27:                                         ; preds = %lor.lhs.false
  %list = getelementptr inbounds %struct.iwl_mvm_time_event_data, ptr %te_data, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end27.list_del.exit_crit_edge

if.end27.list_del.exit_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.iwl_mvm_time_event_data, ptr %te_data, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end27.list_del.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.iwl_mvm_time_event_data, ptr %te_data, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %list, align 4
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %prev.i, align 4
  %running = getelementptr inbounds %struct.iwl_mvm_time_event_data, ptr %te_data, i32 0, i32 4
  %11 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %running, align 4
  %uid = getelementptr inbounds %struct.iwl_mvm_time_event_data, ptr %te_data, i32 0, i32 5
  %12 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %uid, align 4
  %id = getelementptr inbounds %struct.iwl_mvm_time_event_data, ptr %te_data, i32 0, i32 6
  %13 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 16, ptr %id, align 4
  %14 = ptrtoint ptr %te_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %te_data, align 4
  br label %return

return:                                           ; preds = %list_del.exit, %lor.lhs.false.return_crit_edge, %if.end.return_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_roc_done_wk(ptr noundef %wk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wk, i32 -212
  %status = getelementptr i8, ptr %wk, i32 48
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %status) #6
  tail call void @synchronize_net() #6
  %mutex = getelementptr i8, ptr %wk, i32 -188
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end31_crit_edge, label %if.then

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then:                                          ; preds = %entry
  %p2p_device_vif = getelementptr i8, ptr %wk, i32 5024
  %0 = ptrtoint ptr %p2p_device_vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p2p_device_vif, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %do.end, label %if.then26.critedge, !prof !158

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 80, i32 noundef 9, ptr noundef null) #6
  br label %if.end31

if.then26.critedge:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %bcast_sta = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 39, i32 9
  %call29 = tail call i32 @iwl_mvm_flush_sta(ptr noundef %add.ptr, ptr noundef %bcast_sta, i1 noundef zeroext true) #6
  br label %if.end31

if.end31:                                         ; preds = %if.then26.critedge, %do.end, %entry.if.end31_crit_edge
  %call33 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end31.if.end42_crit_edge, label %if.then35

if.end31.if.end42_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then35:                                        ; preds = %if.end31
  %aux_sta = getelementptr i8, ptr %wk, i32 4220
  %call36 = tail call i32 @iwl_mvm_flush_sta(ptr noundef %add.ptr, ptr noundef %aux_sta, i1 noundef zeroext true) #6
  %fw = getelementptr i8, ptr %wk, i32 -204
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw, align 8
  %call37 = tail call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 24, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %call37)
  %cmp = icmp ugt i8 %call37, 11
  br i1 %cmp, label %if.then39, label %if.then35.if.end42_crit_edge

if.then35.if.end42_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then39:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  %call40 = tail call i32 @iwl_mvm_rm_aux_sta(ptr noundef %add.ptr) #6
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.then35.if.end42_crit_edge, %if.end31.if.end42_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_flush_sta(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_rm_aux_sta(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rx_time_event_notif(ptr noundef %mvm, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #6
  %2 = ptrtoint ptr %call.i to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mvm, align 8
  %unique_id = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2
  %8 = ptrtoint ptr %unique_id to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %unique_id, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %action = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 3
  %11 = ptrtoint ptr %action to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %action, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %7, i32 noundef 32, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_time_event_notif, ptr noundef nonnull @.str.1, i32 noundef %10, i32 noundef %13) #6
  %time_event_lock = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 89
  tail call void @_raw_spin_lock_bh(ptr noundef %time_event_lock) #6
  %aux_roc_te_list.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 123
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.in.i = phi ptr [ %aux_roc_te_list.i, %entry ], [ %.pn.in.i, %for.body.i.for.cond.i_crit_edge ]
  %14 = ptrtoint ptr %.pn.in.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.in.i = load ptr, ptr %.pn.in.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.in.i, %aux_roc_te_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %15 = ptrtoint ptr %unique_id to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %unique_id, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  %uid.i = getelementptr i8, ptr %.pn.in.i, i32 20
  %18 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %uid.i, align 4
  %cmp8.i = icmp eq i32 %17, %19
  br i1 %cmp8.i, label %if.end15.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

if.end15.i:                                       ; preds = %for.body.i
  %uid.i.le = getelementptr i8, ptr %.pn.in.i, i32 20
  %te_data.0.le.i = getelementptr i8, ptr %.pn.in.i, i32 -4
  tail call fastcc void @iwl_mvm_te_check_trigger(ptr noundef %mvm, ptr noundef %data, ptr noundef %te_data.0.le.i) #6
  %20 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mvm, align 8
  %22 = ptrtoint ptr %unique_id to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %unique_id, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #6
  %25 = ptrtoint ptr %action to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %action, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  %status.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 3, i32 1
  %28 = ptrtoint ptr %status.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %status.i, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #6
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %21, i32 noundef 32, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_aux_roc_te_handle_notif, ptr noundef nonnull @.str.20, i32 noundef %24, i32 noundef %27, i32 noundef %30) #6
  %31 = ptrtoint ptr %status.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool21.not.i = icmp eq i32 %32, 0
  br i1 %tobool21.not.i, label %if.end15.i.if.then24.i_crit_edge, label %lor.lhs.false.i

if.end15.i.if.then24.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24.i

lor.lhs.false.i:                                  ; preds = %if.end15.i
  %33 = ptrtoint ptr %action to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %action, align 1
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %34, label %do.end37.i [
    i32 33554432, label %lor.lhs.false.i.if.then24.i_crit_edge
    i32 16777216, label %if.then29.i
  ]

lor.lhs.false.i.if.then24.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24.i

if.then24.i:                                      ; preds = %lor.lhs.false.i.if.then24.i_crit_edge, %if.end15.i.if.then24.i_crit_edge
  %hw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %36 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw.i, align 4
  tail call void @ieee80211_remain_on_channel_expired(ptr noundef %37) #6
  %roc_done_wk.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %38 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %roc_done_wk.i.i) #6
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then24.i.list_del.exit.i_crit_edge

if.then24.i.list_del.exit.i_crit_edge:            ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i.i, align 4
  %41 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %.pn.in.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then24.i.list_del.exit.i_crit_edge
  %45 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %running.i = getelementptr i8, ptr %.pn.in.i, i32 16
  %47 = ptrtoint ptr %running.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %running.i, align 4
  %48 = ptrtoint ptr %te_data.0.le.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %te_data.0.le.i, align 4
  %49 = ptrtoint ptr %uid.i.le to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %uid.i.le, align 4
  %id.i = getelementptr i8, ptr %.pn.in.i, i32 24
  %50 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 16, ptr %id.i, align 4
  br label %unlock

if.then29.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %status30.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 5, ptr noundef %status30.i) #6
  %running31.i = getelementptr i8, ptr %.pn.in.i, i32 16
  %51 = ptrtoint ptr %running31.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %running31.i, align 4
  %hw32.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %52 = ptrtoint ptr %hw32.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw32.i, align 4
  tail call void @ieee80211_ready_on_channel(ptr noundef %53) #6
  br label %unlock

do.end37.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %54 = tail call i32 @llvm.bswap.i32(i32 %34) #6
  %55 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %56, i32 noundef 32, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_aux_roc_te_handle_notif, ptr noundef nonnull @.str.21, i32 noundef %54) #6
  br label %if.end

if.end:                                           ; preds = %do.end37.i, %for.cond.i.if.end_crit_edge
  %time_event_list = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 88
  %57 = ptrtoint ptr %time_event_list to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %time_event_list, align 8
  %cmp.not55 = icmp eq ptr %58, %time_event_list
  br i1 %cmp.not55, label %if.end.unlock_crit_edge, label %for.body.lr.ph

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

for.body.lr.ph:                                   ; preds = %if.end
  %dep_map.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 89, i32 0, i32 0, i32 4
  %status.i40 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 3, i32 1
  %hw.i44 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %status.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %roc_done_wk.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 10
  %csa_vif1.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 149
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in56 = phi ptr [ %58, %for.body.lr.ph ], [ %.pn63, %for.inc.for.body_crit_edge ]
  %te_data.061 = getelementptr i8, ptr %.pn.in56, i32 -4
  %59 = ptrtoint ptr %.pn.in56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pn63 = load ptr, ptr %.pn.in56, align 4
  %60 = ptrtoint ptr %unique_id to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %unique_id, align 1
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %uid = getelementptr i8, ptr %.pn.in56, i32 20
  %63 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %uid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp13 = icmp eq i32 %62, %64
  br i1 %cmp13, label %if.then14, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then14:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %65 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i = icmp eq i32 %65, 0
  br i1 %tobool.not.i, label %if.then14.if.end.i_crit_edge, label %land.rhs.i

if.then14.if.end.i_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then14
  %call.i143.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143.i)
  %cmp.not.i37 = icmp eq i32 %call.i143.i, 0
  br i1 %cmp.not.i37, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !158

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 291, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then14.if.end.i_crit_edge
  %66 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mvm, align 8
  %68 = ptrtoint ptr %unique_id to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %unique_id, align 1
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #6
  %71 = ptrtoint ptr %action to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %action, align 1
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #6
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %67, i32 noundef 32, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_te_handle_notif, ptr noundef nonnull @.str.24, i32 noundef %70, i32 noundef %73) #6
  tail call fastcc void @iwl_mvm_te_check_trigger(ptr noundef %mvm, ptr noundef %data, ptr noundef %te_data.061) #6
  %74 = ptrtoint ptr %status.i40 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %status.i40, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool30.not.i = icmp eq i32 %75, 0
  br i1 %tobool30.not.i, label %if.then31.i, label %if.end.i.if.end46.i_crit_edge

if.end.i.if.end46.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46.i

if.then31.i:                                      ; preds = %if.end.i
  %76 = ptrtoint ptr %action to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %action, align 1
  %and.i = and i32 %77, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool33.not.i = icmp eq i32 %and.i, 0
  %.str.26..str.25.i = select i1 %tobool33.not.i, ptr @.str.26, ptr @.str.25
  %78 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %79, i32 noundef 32, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_te_handle_notif, ptr noundef nonnull @.str.27, ptr noundef nonnull %.str.26..str.25.i) #6
  %80 = ptrtoint ptr %te_data.061 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %te_data.061, align 4
  %call43.i = tail call fastcc zeroext i1 @iwl_mvm_te_check_disconnect(ptr noundef %mvm, ptr noundef %81, ptr noundef nonnull %.str.26..str.25.i) #6
  br i1 %call43.i, label %if.then44.i, label %if.then31.i.if.end46.i_crit_edge

if.then31.i.if.end46.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46.i

if.then44.i:                                      ; preds = %if.then31.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %82 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i.i = icmp eq i32 %82, 0
  br i1 %tobool.not.i.i, label %if.then44.i.if.end.i144.i_crit_edge, label %land.rhs.i.i

if.then44.i.if.end.i144.i_crit_edge:              ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i144.i

land.rhs.i.i:                                     ; preds = %if.then44.i
  %call.i.i.i41 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i41)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i41, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i144.i_crit_edge, !prof !158

land.rhs.i.i.if.end.i144.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i144.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i144.i

if.end.i144.i:                                    ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i144.i_crit_edge, %if.then44.i.if.end.i144.i_crit_edge
  %tobool24.not.i.i = icmp eq ptr %te_data.061, null
  br i1 %tobool24.not.i.i, label %if.end.i144.i.for.inc_crit_edge, label %lor.lhs.false.i.i

if.end.i144.i.for.inc_crit_edge:                  ; preds = %if.end.i144.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false.i.i:                                ; preds = %if.end.i144.i
  %83 = ptrtoint ptr %te_data.061 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %te_data.061, align 4
  %tobool25.not.i.i = icmp eq ptr %84, null
  br i1 %tobool25.not.i.i, label %lor.lhs.false.i.i.for.inc_crit_edge, label %if.end27.i.i

lor.lhs.false.i.i.for.inc_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end27.i.i:                                     ; preds = %lor.lhs.false.i.i
  %call.i.i.i.i42 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in56) #6
  br i1 %call.i.i.i.i42, label %if.end.i.i.i.i, label %if.end27.i.i.list_del.exit.i.i_crit_edge

if.end27.i.i.list_del.exit.i.i_crit_edge:         ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in56, i32 4
  %85 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev.i.i.i.i, align 4
  %87 = ptrtoint ptr %.pn.in56 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %.pn.in56, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %prev1.i.i.i.i.i, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %88, ptr %86, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end27.i.i.list_del.exit.i.i_crit_edge
  %prev.i.i.i43 = getelementptr i8, ptr %.pn.in56, i32 4
  %91 = ptrtoint ptr %.pn.in56 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %.pn.in56, ptr %.pn.in56, align 4
  %92 = ptrtoint ptr %prev.i.i.i43 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %.pn.in56, ptr %prev.i.i.i43, align 4
  %running.i.i = getelementptr i8, ptr %.pn.in56, i32 16
  %93 = ptrtoint ptr %running.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %running.i.i, align 4
  %94 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %uid, align 4
  %id.i.i = getelementptr i8, ptr %.pn.in56, i32 24
  %95 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 16, ptr %id.i.i, align 4
  %96 = ptrtoint ptr %te_data.061 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %te_data.061, align 4
  br label %for.inc

if.end46.i:                                       ; preds = %if.then31.i.if.end46.i_crit_edge, %if.end.i.if.end46.i_crit_edge
  %97 = ptrtoint ptr %action to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %action, align 1
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #6
  %and48.i = and i32 %99, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %if.else76.i, label %do.end54.i

do.end54.i:                                       ; preds = %if.end46.i
  %100 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mvm, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %102 = load volatile i32, ptr @jiffies, align 128
  %end_jiffies.i = getelementptr i8, ptr %.pn.in56, i32 8
  %103 = ptrtoint ptr %end_jiffies.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %end_jiffies.i, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %101, i32 noundef 32, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_te_handle_notif, ptr noundef nonnull @.str.28, i32 noundef %102, i32 noundef %104) #6
  %105 = ptrtoint ptr %te_data.061 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %te_data.061, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %106, align 8
  %109 = zext i32 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %108, label %do.end54.i.sw.epilog.i_crit_edge [
    i32 10, label %sw.bb.i
    i32 2, label %sw.bb59.i
  ]

do.end54.i.sw.epilog.i_crit_edge:                 ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %do.end54.i
  %110 = ptrtoint ptr %hw.i44 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hw.i44, align 4
  tail call void @ieee80211_remain_on_channel_expired(ptr noundef %111) #6
  %call.i145.i = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %status.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145.i)
  %tobool.not.i146.i = icmp eq i32 %call.i145.i, 0
  br i1 %tobool.not.i146.i, label %if.then.i147.i, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.then.i147.i:                                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %112 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %112, ptr noundef %roc_done_wk.i.i.i) #6
  br label %sw.epilog.i

sw.bb59.i:                                        ; preds = %do.end54.i
  %id.i45 = getelementptr i8, ptr %.pn.in56, i32 24
  %113 = ptrtoint ptr %id.i45 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %id.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %114)
  %cmp60.i = icmp eq i32 %114, 15
  br i1 %cmp60.i, label %do.end65.i, label %if.end69.i

do.end65.i:                                       ; preds = %sw.bb59.i
  call void @__sanitizer_cov_trace_pc() #8
  %115 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %116, i32 noundef 32, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_te_handle_notif, ptr noundef nonnull @.str.29) #6
  br label %sw.epilog.i

if.end69.i:                                       ; preds = %sw.bb59.i
  call void @__sanitizer_cov_trace_pc() #8
  %assoc.i = getelementptr inbounds %struct.ieee80211_vif, ptr %106, i32 0, i32 1, i32 10
  %117 = ptrtoint ptr %assoc.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %assoc.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool72.not.i = icmp eq i8 %118, 0
  %cond.i = select i1 %tobool72.not.i, ptr @.str.30, ptr @.str.31
  %call75.i = tail call fastcc zeroext i1 @iwl_mvm_te_check_disconnect(ptr noundef %mvm, ptr noundef %106, ptr noundef nonnull %cond.i) #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end69.i, %do.end65.i, %if.then.i147.i, %sw.bb.i.sw.epilog.i_crit_edge, %do.end54.i.sw.epilog.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %119 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool.not.i149.i = icmp eq i32 %119, 0
  br i1 %tobool.not.i149.i, label %sw.epilog.i.if.end.i156.i_crit_edge, label %land.rhs.i153.i

sw.epilog.i.if.end.i156.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i156.i

land.rhs.i153.i:                                  ; preds = %sw.epilog.i
  %call.i.i151.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i151.i)
  %cmp.not.i152.i = icmp eq i32 %call.i.i151.i, 0
  br i1 %cmp.not.i152.i, label %do.end.i154.i, label %land.rhs.i153.i.if.end.i156.i_crit_edge, !prof !158

land.rhs.i153.i.if.end.i156.i_crit_edge:          ; preds = %land.rhs.i153.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i156.i

do.end.i154.i:                                    ; preds = %land.rhs.i153.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i156.i

if.end.i156.i:                                    ; preds = %do.end.i154.i, %land.rhs.i153.i.if.end.i156.i_crit_edge, %sw.epilog.i.if.end.i156.i_crit_edge
  %tobool24.not.i155.i = icmp eq ptr %te_data.061, null
  br i1 %tobool24.not.i155.i, label %if.end.i156.i.for.inc_crit_edge, label %lor.lhs.false.i158.i

if.end.i156.i.for.inc_crit_edge:                  ; preds = %if.end.i156.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false.i158.i:                             ; preds = %if.end.i156.i
  %120 = ptrtoint ptr %te_data.061 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %te_data.061, align 4
  %tobool25.not.i157.i = icmp eq ptr %121, null
  br i1 %tobool25.not.i157.i, label %lor.lhs.false.i158.i.for.inc_crit_edge, label %if.end27.i161.i

lor.lhs.false.i158.i.for.inc_crit_edge:           ; preds = %lor.lhs.false.i158.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end27.i161.i:                                  ; preds = %lor.lhs.false.i158.i
  %call.i.i.i160.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in56) #6
  br i1 %call.i.i.i160.i, label %if.end.i.i.i164.i, label %if.end27.i161.i.list_del.exit.i169.i_crit_edge

if.end27.i161.i.list_del.exit.i169.i_crit_edge:   ; preds = %if.end27.i161.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i169.i

if.end.i.i.i164.i:                                ; preds = %if.end27.i161.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i162.i = getelementptr i8, ptr %.pn.in56, i32 4
  %122 = ptrtoint ptr %prev.i.i.i162.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %prev.i.i.i162.i, align 4
  %124 = ptrtoint ptr %.pn.in56 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %.pn.in56, align 4
  %prev1.i.i.i.i163.i = getelementptr inbounds %struct.list_head, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %prev1.i.i.i.i163.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %123, ptr %prev1.i.i.i.i163.i, align 4
  %127 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile ptr %125, ptr %123, align 4
  br label %list_del.exit.i169.i

list_del.exit.i169.i:                             ; preds = %if.end.i.i.i164.i, %if.end27.i161.i.list_del.exit.i169.i_crit_edge
  %prev.i.i165.i = getelementptr i8, ptr %.pn.in56, i32 4
  %128 = ptrtoint ptr %.pn.in56 to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %.pn.in56, ptr %.pn.in56, align 4
  %129 = ptrtoint ptr %prev.i.i165.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %.pn.in56, ptr %prev.i.i165.i, align 4
  %running.i166.i = getelementptr i8, ptr %.pn.in56, i32 16
  %130 = ptrtoint ptr %running.i166.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %running.i166.i, align 4
  %131 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %uid, align 4
  %id.i168.i = getelementptr i8, ptr %.pn.in56, i32 24
  %132 = ptrtoint ptr %id.i168.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 16, ptr %id.i168.i, align 4
  %133 = ptrtoint ptr %te_data.061 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %te_data.061, align 4
  br label %for.inc

if.else76.i:                                      ; preds = %if.end46.i
  %and78.i = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.i)
  %tobool79.not.i = icmp eq i32 %and78.i, 0
  br i1 %tobool79.not.i, label %do.end99.i, label %if.then80.i

if.then80.i:                                      ; preds = %if.else76.i
  %running.i46 = getelementptr i8, ptr %.pn.in56, i32 16
  %134 = ptrtoint ptr %running.i46 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 1, ptr %running.i46, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %135 = load volatile i32, ptr @jiffies, align 128
  %duration.i = getelementptr i8, ptr %.pn.in56, i32 12
  %136 = ptrtoint ptr %duration.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %duration.i, align 4
  %mul.i = shl i32 %137, 10
  %call3.i.i = tail call i32 @__usecs_to_jiffies(i32 noundef %mul.i) #6
  %add.i47 = add i32 %call3.i.i, %135
  %end_jiffies82.i = getelementptr i8, ptr %.pn.in56, i32 8
  %138 = ptrtoint ptr %end_jiffies82.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %add.i47, ptr %end_jiffies82.i, align 4
  %139 = ptrtoint ptr %te_data.061 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %te_data.061, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %140, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %142)
  %cmp85.i = icmp eq i32 %142, 10
  br i1 %cmp85.i, label %if.then86.i, label %if.else89.i

if.then86.i:                                      ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 2, ptr noundef %status.i.i) #6
  %143 = ptrtoint ptr %hw.i44 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %hw.i44, align 4
  tail call void @ieee80211_ready_on_channel(ptr noundef %144) #6
  br label %for.inc

if.else89.i:                                      ; preds = %if.then80.i
  %id90.i = getelementptr i8, ptr %.pn.in56, i32 24
  %145 = ptrtoint ptr %id90.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %id90.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %146)
  %cmp91.i = icmp eq i32 %146, 15
  br i1 %cmp91.i, label %if.then92.i, label %if.else89.i.for.inc_crit_edge

if.else89.i.for.inc_crit_edge:                    ; preds = %if.else89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then92.i:                                      ; preds = %if.else89.i
  %147 = ptrtoint ptr %status.i40 to i32
  call void @__asan_loadN_noabort(i32 %147, i32 4)
  %148 = load i32, ptr %status.i40, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool.not.i172.i = icmp eq i32 %148, 0
  br i1 %tobool.not.i172.i, label %do.end.i173.i, label %if.then92.i.if.end.i174.i_crit_edge

if.then92.i.if.end.i174.i_crit_edge:              ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i174.i

do.end.i173.i:                                    ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #8
  %149 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %150, i32 noundef 32, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_te_handle_notify_csa, ptr noundef nonnull @.str.33) #6
  br label %if.end.i174.i

if.end.i174.i:                                    ; preds = %do.end.i173.i, %if.then92.i.if.end.i174.i_crit_edge
  %151 = ptrtoint ptr %te_data.061 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %te_data.061, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %152, align 8
  %155 = zext i32 %154 to i64
  call void @__sanitizer_cov_trace_switch(i64 %155, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %154, label %land.end.i.i [
    i32 3, label %sw.bb.i.i
    i32 2, label %sw.bb10.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i174.i
  %156 = ptrtoint ptr %status.i40 to i32
  call void @__asan_loadN_noabort(i32 %156, i32 4)
  %157 = load i32, ptr %status.i40, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool7.not.i.i = icmp eq i32 %157, 0
  br i1 %tobool7.not.i.i, label %if.then8.i.i, label %sw.bb.i.i.if.end9.i.i_crit_edge

sw.bb.i.i.if.end9.i.i_crit_edge:                  ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i.i

if.then8.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %csa_failed.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %140, i32 1, i32 1, i32 64, i32 5, i32 1, i32 7
  %158 = ptrtoint ptr %csa_failed.i.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 1, ptr %csa_failed.i.i, align 1
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then8.i.i, %sw.bb.i.i.if.end9.i.i_crit_edge
  %159 = tail call i32 @llvm.read_register.i32(metadata !148) #6
  %and.i.i.i.i.i.i.i.i = and i32 %159, -16384
  %160 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %162, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !160
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i.i.i175.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i.i.i175.i, label %if.end9.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end9.i.i.rcu_read_lock.exit.i.i.i_crit_edge:   ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end9.i.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.47, i32 noundef 696, ptr noundef nonnull @.str.48) #6
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %if.end9.i.i.rcu_read_lock.exit.i.i.i_crit_edge
  %163 = ptrtoint ptr %csa_vif1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load volatile ptr, ptr %csa_vif1.i.i.i, align 8
  %call.i.i176.i = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i176.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i176.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %rcu_read_lock.exit.i.i.i.do.end8.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.do.end8.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8.i.i.i

land.lhs.true.i.i.i:                              ; preds = %rcu_read_lock.exit.i.i.i
  %call3.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i.i.i.do.end8.i.i.i_crit_edge, label %land.lhs.true5.i.i.i

land.lhs.true.i.i.i.do.end8.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8.i.i.i

land.lhs.true5.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b49.i.i.i = load i1, ptr @iwl_mvm_csa_noa_start.__warned, align 1
  br i1 %.b49.i.i.i, label %land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge:     ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @iwl_mvm_csa_noa_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 126, ptr noundef nonnull @.str.35) #6
  br label %do.end8.i.i.i

do.end8.i.i.i:                                    ; preds = %if.then.i.i.i, %land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end8.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.do.end8.i.i.i_crit_edge
  %tobool10.not.i.i.i = icmp eq ptr %164, null
  br i1 %tobool10.not.i.i.i, label %do.end8.i.i.i.out_unlock.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

do.end8.i.i.i.out_unlock.i.i.i_crit_edge:         ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %do.end8.i.i.i
  %csa_active.i.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %164, i32 0, i32 4
  %165 = ptrtoint ptr %csa_active.i.i.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %csa_active.i.i.i, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool11.not.i.i.i = icmp eq i8 %166, 0
  br i1 %tobool11.not.i.i.i, label %lor.lhs.false.i.i.i.out_unlock.i.i.i_crit_edge, label %do.end17.i.i.i

lor.lhs.false.i.i.i.out_unlock.i.i.i_crit_edge:   ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock.i.i.i

do.end17.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %167 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %168, i32 noundef 32, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_csa_noa_start, ptr noundef nonnull @.str.36) #6
  %call20.i.i.i = tail call zeroext i1 @ieee80211_beacon_cntdwn_is_complete(ptr noundef nonnull %164) #6
  br i1 %call20.i.i.i, label %if.end29.i.i.i, label %do.end25.i.i.i

do.end25.i.i.i:                                   ; preds = %do.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %169 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %mvm, align 8
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %170, ptr noundef nonnull @.str.37) #6
  br label %out_unlock.i.i.i

if.end29.i.i.i:                                   ; preds = %do.end17.i.i.i
  tail call void @ieee80211_csa_finish(ptr noundef nonnull %164) #6
  %call.i50.i.i.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i50.i.i.i, label %if.end29.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %land.lhs.true.i53.i.i.i

if.end29.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i.i.i

land.lhs.true.i53.i.i.i:                          ; preds = %if.end29.i.i.i
  %call1.i51.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i51.i.i.i)
  %tobool.not.i52.i.i.i = icmp eq i32 %call1.i51.i.i.i, 0
  br i1 %tobool.not.i52.i.i.i, label %land.lhs.true.i53.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %land.lhs.true2.i55.i.i.i

land.lhs.true.i53.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i53.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i.i.i

land.lhs.true2.i55.i.i.i:                         ; preds = %land.lhs.true.i53.i.i.i
  %.b4.i54.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i54.i.i.i, label %land.lhs.true2.i55.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %if.then.i56.i.i.i

land.lhs.true2.i55.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i55.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i.i.i

if.then.i56.i.i.i:                                ; preds = %land.lhs.true2.i55.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.47, i32 noundef 724, ptr noundef nonnull @.str.52) #6
  br label %rcu_read_unlock.exit.i.i.i

rcu_read_unlock.exit.i.i.i:                       ; preds = %if.then.i56.i.i.i, %land.lhs.true2.i55.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, %land.lhs.true.i53.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, %if.end29.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !161
  %171 = tail call i32 @llvm.read_register.i32(metadata !148) #6
  %and.i.i.i.i.i57.i.i.i = and i32 %171, -16384
  %172 = inttoptr i32 %and.i.i.i.i.i57.i.i.i to ptr
  %preempt_count.i.i.i.i58.i.i.i = getelementptr inbounds %struct.thread_info, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %preempt_count.i.i.i.i58.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load volatile i32, ptr %preempt_count.i.i.i.i58.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %174, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i58.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  %175 = ptrtoint ptr %csa_vif1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store volatile ptr null, ptr %csa_vif1.i.i.i, align 8
  br label %sw.epilog.i.i

out_unlock.i.i.i:                                 ; preds = %do.end25.i.i.i, %lor.lhs.false.i.i.i.out_unlock.i.i.i_crit_edge, %do.end8.i.i.i.out_unlock.i.i.i_crit_edge
  %call.i59.i.i.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i59.i.i.i, label %out_unlock.i.i.i.rcu_read_unlock.exit69.i.i.i_crit_edge, label %land.lhs.true.i62.i.i.i

out_unlock.i.i.i.rcu_read_unlock.exit69.i.i.i_crit_edge: ; preds = %out_unlock.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit69.i.i.i

land.lhs.true.i62.i.i.i:                          ; preds = %out_unlock.i.i.i
  %call1.i60.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i60.i.i.i)
  %tobool.not.i61.i.i.i = icmp eq i32 %call1.i60.i.i.i, 0
  br i1 %tobool.not.i61.i.i.i, label %land.lhs.true.i62.i.i.i.rcu_read_unlock.exit69.i.i.i_crit_edge, label %land.lhs.true2.i64.i.i.i

land.lhs.true.i62.i.i.i.rcu_read_unlock.exit69.i.i.i_crit_edge: ; preds = %land.lhs.true.i62.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit69.i.i.i

land.lhs.true2.i64.i.i.i:                         ; preds = %land.lhs.true.i62.i.i.i
  %.b4.i63.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i63.i.i.i, label %land.lhs.true2.i64.i.i.i.rcu_read_unlock.exit69.i.i.i_crit_edge, label %if.then.i65.i.i.i

land.lhs.true2.i64.i.i.i.rcu_read_unlock.exit69.i.i.i_crit_edge: ; preds = %land.lhs.true2.i64.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit69.i.i.i

if.then.i65.i.i.i:                                ; preds = %land.lhs.true2.i64.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.47, i32 noundef 724, ptr noundef nonnull @.str.52) #6
  br label %rcu_read_unlock.exit69.i.i.i

rcu_read_unlock.exit69.i.i.i:                     ; preds = %if.then.i65.i.i.i, %land.lhs.true2.i64.i.i.i.rcu_read_unlock.exit69.i.i.i_crit_edge, %land.lhs.true.i62.i.i.i.rcu_read_unlock.exit69.i.i.i_crit_edge, %out_unlock.i.i.i.rcu_read_unlock.exit69.i.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !161
  %176 = tail call i32 @llvm.read_register.i32(metadata !148) #6
  %and.i.i.i.i.i66.i.i.i = and i32 %176, -16384
  %177 = inttoptr i32 %and.i.i.i.i.i66.i.i.i to ptr
  %preempt_count.i.i.i.i67.i.i.i = getelementptr inbounds %struct.thread_info, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %preempt_count.i.i.i.i67.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load volatile i32, ptr %preempt_count.i.i.i.i67.i.i.i, align 4
  %sub.i.i.i68.i.i.i = add i32 %179, -1
  store volatile i32 %sub.i.i.i68.i.i.i, ptr %preempt_count.i.i.i.i67.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br label %sw.epilog.i.i

sw.bb10.i.i:                                      ; preds = %if.end.i174.i
  %180 = ptrtoint ptr %status.i40 to i32
  call void @__asan_loadN_noabort(i32 %180, i32 4)
  %181 = load i32, ptr %status.i40, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool12.not.i.i = icmp eq i32 %181, 0
  br i1 %tobool12.not.i.i, label %if.then13.i.i, label %if.end14.i.i

if.then13.i.i:                                    ; preds = %sw.bb10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iwl_mvm_connection_loss(ptr noundef %mvm, ptr noundef %140, ptr noundef nonnull @.str.34) #6
  br label %sw.epilog.i.i

if.end14.i.i:                                     ; preds = %sw.bb10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iwl_mvm_csa_client_absent(ptr noundef %mvm, ptr noundef %152) #6
  %csa_work.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %140, i32 1, i32 1, i32 64, i32 6, i32 1, i32 5
  %call16.i.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %csa_work.i.i) #6
  %182 = ptrtoint ptr %te_data.061 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %te_data.061, align 4
  tail call void @ieee80211_chswitch_done(ptr noundef %183, i1 noundef zeroext true) #6
  br label %sw.epilog.i.i

land.end.i.i:                                     ; preds = %if.end.i174.i
  %.b70.i.i = load i1, ptr @iwl_mvm_te_handle_notify_csa.__already_done, align 1
  br i1 %.b70.i.i, label %land.end.i.i.sw.epilog.i.i_crit_edge, label %if.then23.i.i, !prof !162

land.end.i.i.sw.epilog.i.i_crit_edge:             ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i

if.then23.i.i:                                    ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @iwl_mvm_te_handle_notify_csa.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 223, i32 noundef 9, ptr noundef null) #6
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %if.then23.i.i, %land.end.i.i.sw.epilog.i.i_crit_edge, %if.end14.i.i, %if.then13.i.i, %rcu_read_unlock.exit69.i.i.i, %rcu_read_unlock.exit.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %184 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool.not.i71.i.i = icmp eq i32 %184, 0
  br i1 %tobool.not.i71.i.i, label %sw.epilog.i.i.if.end.i.i.i48_crit_edge, label %land.rhs.i.i.i

sw.epilog.i.i.if.end.i.i.i48_crit_edge:           ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i48

land.rhs.i.i.i:                                   ; preds = %sw.epilog.i.i
  %call.i.i72.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i72.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i72.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.if.end.i.i.i48_crit_edge, !prof !158

land.rhs.i.i.i.if.end.i.i.i48_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i48

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i.i.i48

if.end.i.i.i48:                                   ; preds = %do.end.i.i.i, %land.rhs.i.i.i.if.end.i.i.i48_crit_edge, %sw.epilog.i.i.if.end.i.i.i48_crit_edge
  %tobool24.not.i.i.i = icmp eq ptr %te_data.061, null
  br i1 %tobool24.not.i.i.i, label %if.end.i.i.i48.for.inc_crit_edge, label %lor.lhs.false.i73.i.i

if.end.i.i.i48.for.inc_crit_edge:                 ; preds = %if.end.i.i.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false.i73.i.i:                            ; preds = %if.end.i.i.i48
  %185 = ptrtoint ptr %te_data.061 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %te_data.061, align 4
  %tobool25.not.i.i.i = icmp eq ptr %186, null
  br i1 %tobool25.not.i.i.i, label %lor.lhs.false.i73.i.i.for.inc_crit_edge, label %if.end27.i.i.i

lor.lhs.false.i73.i.i.for.inc_crit_edge:          ; preds = %lor.lhs.false.i73.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end27.i.i.i:                                   ; preds = %lor.lhs.false.i73.i.i
  %call.i.i.i.i177.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in56) #6
  br i1 %call.i.i.i.i177.i, label %if.end.i.i.i.i.i, label %if.end27.i.i.i.list_del.exit.i.i.i_crit_edge

if.end27.i.i.i.list_del.exit.i.i.i_crit_edge:     ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i.i.i = getelementptr i8, ptr %.pn.in56, i32 4
  %187 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %189 = ptrtoint ptr %.pn.in56 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %.pn.in56, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %190, i32 0, i32 1
  %191 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %188, ptr %prev1.i.i.i.i.i.i, align 4
  %192 = ptrtoint ptr %188 to i32
  call void @__asan_store4_noabort(i32 %192)
  store volatile ptr %190, ptr %188, align 4
  br label %list_del.exit.i.i.i

list_del.exit.i.i.i:                              ; preds = %if.end.i.i.i.i.i, %if.end27.i.i.i.list_del.exit.i.i.i_crit_edge
  %prev.i.i.i178.i = getelementptr i8, ptr %.pn.in56, i32 4
  %193 = ptrtoint ptr %.pn.in56 to i32
  call void @__asan_store4_noabort(i32 %193)
  store volatile ptr %.pn.in56, ptr %.pn.in56, align 4
  %194 = ptrtoint ptr %prev.i.i.i178.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %.pn.in56, ptr %prev.i.i.i178.i, align 4
  %195 = ptrtoint ptr %running.i46 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 0, ptr %running.i46, align 4
  %196 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 0, ptr %uid, align 4
  %197 = ptrtoint ptr %id90.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 16, ptr %id90.i, align 4
  %198 = ptrtoint ptr %te_data.061 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr null, ptr %te_data.061, align 4
  br label %for.inc

do.end99.i:                                       ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_pc() #8
  %199 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %mvm, align 8
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %200, ptr noundef nonnull @.str.32) #6
  br label %for.inc

for.inc:                                          ; preds = %do.end99.i, %list_del.exit.i.i.i, %lor.lhs.false.i73.i.i.for.inc_crit_edge, %if.end.i.i.i48.for.inc_crit_edge, %if.else89.i.for.inc_crit_edge, %if.then86.i, %list_del.exit.i169.i, %lor.lhs.false.i158.i.for.inc_crit_edge, %if.end.i156.i.for.inc_crit_edge, %list_del.exit.i.i, %lor.lhs.false.i.i.for.inc_crit_edge, %if.end.i144.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn63, %time_event_list
  br i1 %cmp.not, label %for.inc.unlock_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.unlock_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

unlock:                                           ; preds = %for.inc.unlock_crit_edge, %if.end.unlock_crit_edge, %if.then29.i, %list_del.exit.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %time_event_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_protect_session(ptr noundef %mvm, ptr noundef %vif, i32 noundef %duration, i32 noundef %min_duration, i32 noundef %max_delay, i1 noundef zeroext %wait_for_notif) local_unnamed_addr #0 align 64 {
entry:
  %te_notif_response = alloca [1 x i16], align 2
  %wait_te_notif = alloca %struct.iwl_notification_wait, align 4
  %time_cmd = alloca %struct.iwl_time_event_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %time_event_data = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 32, i32 4, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %te_notif_response) #6
  %0 = ptrtoint ptr %te_notif_response to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 42, ptr %te_notif_response, align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wait_te_notif) #6
  %1 = call ptr @memset(ptr %wait_te_notif, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %time_cmd) #6
  %2 = getelementptr inbounds i8, ptr %time_cmd, i32 20
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i127 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127)
  %cmp.not = icmp eq i32 %call.i127, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !158

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 583, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %running = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 33, i32 1, i32 4
  %5 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %running, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool25.not = icmp eq i8 %6, 0
  br i1 %tobool25.not, label %if.end.if.end52_crit_edge, label %land.lhs.true

if.end.if.end52_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

land.lhs.true:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %mul = shl i32 %min_duration, 10
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %mul) #6
  %add = add i32 %call3.i, %7
  %end_jiffies = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 33, i32 0, i32 4
  %8 = ptrtoint ptr %end_jiffies to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end_jiffies, align 4
  %sub = sub i32 %add, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp27 = icmp slt i32 %sub, 0
  br i1 %cmp27, label %do.end32, label %if.end38

do.end32:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mvm, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub34 = sub i32 %9, %12
  %call35 = tail call i32 @jiffies_to_msecs(i32 noundef %sub34) #6
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %11, i32 noundef 32, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_protect_session, ptr noundef nonnull @.str.2, i32 noundef %call35) #6
  br label %cleanup

if.end38:                                         ; preds = %land.lhs.true
  %13 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %13)
  %.pr = load i8, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool40.not = icmp eq i8 %.pr, 0
  br i1 %tobool40.not, label %if.end38.if.end52_crit_edge, label %do.end45

if.end38.if.end52_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mvm, align 8
  %uid = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 33, i32 1, i32 8
  %16 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %uid, align 4
  %18 = ptrtoint ptr %end_jiffies to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %end_jiffies, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub48 = sub i32 %19, %20
  %call49 = tail call i32 @jiffies_to_msecs(i32 noundef %sub48) #6
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %15, i32 noundef 32, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_protect_session, ptr noundef nonnull @.str.3, i32 noundef %17, i32 noundef %call49) #6
  tail call void @iwl_mvm_stop_session_protection(ptr noundef %mvm, ptr noundef %vif)
  br label %if.end52

if.end52:                                         ; preds = %do.end45, %if.end38.if.end52_crit_edge, %if.end.if.end52_crit_edge
  %action = getelementptr inbounds %struct.iwl_time_event_cmd, ptr %time_cmd, i32 0, i32 1
  %21 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16777216, ptr %action, align 4
  %id = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %id, align 4
  %conv = zext i16 %23 to i32
  %color = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 2
  %24 = ptrtoint ptr %color to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %color, align 2
  %conv53 = zext i16 %25 to i32
  %shl54 = shl nuw nsw i32 %conv53, 8
  %or = or i32 %shl54, %conv
  %26 = tail call i32 @llvm.bswap.i32(i32 %or)
  %27 = ptrtoint ptr %time_cmd to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %time_cmd, align 4
  %id55 = getelementptr inbounds %struct.iwl_time_event_cmd, ptr %time_cmd, i32 0, i32 2
  %28 = ptrtoint ptr %id55 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %id55, align 4
  %apply_time = getelementptr inbounds %struct.iwl_time_event_cmd, ptr %time_cmd, i32 0, i32 3
  %29 = ptrtoint ptr %apply_time to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %apply_time, align 4
  %max_frags = getelementptr inbounds %struct.iwl_time_event_cmd, ptr %time_cmd, i32 0, i32 9
  %30 = ptrtoint ptr %max_frags to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %max_frags, align 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %max_delay)
  %max_delay56 = getelementptr inbounds %struct.iwl_time_event_cmd, ptr %time_cmd, i32 0, i32 4
  %32 = ptrtoint ptr %max_delay56 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %max_delay56, align 4
  %interval = getelementptr inbounds %struct.iwl_time_event_cmd, ptr %time_cmd, i32 0, i32 6
  %33 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 16777216, ptr %interval, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %duration)
  %duration57 = getelementptr inbounds %struct.iwl_time_event_cmd, ptr %time_cmd, i32 0, i32 7
  %35 = ptrtoint ptr %duration57 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %duration57, align 4
  %repeat = getelementptr inbounds %struct.iwl_time_event_cmd, ptr %time_cmd, i32 0, i32 8
  %36 = ptrtoint ptr %repeat to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %repeat, align 4
  %policy = getelementptr inbounds %struct.iwl_time_event_cmd, ptr %time_cmd, i32 0, i32 10
  %37 = ptrtoint ptr %policy to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 776, ptr %policy, align 2
  br i1 %wait_for_notif, label %if.end61, label %if.then59

if.then59:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %call60 = call fastcc i32 @iwl_mvm_time_event_send_add(ptr noundef %mvm, ptr noundef %vif, ptr noundef %time_event_data, ptr noundef nonnull %time_cmd)
  br label %cleanup

if.end61:                                         ; preds = %if.end52
  %notif_wait = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 23
  call void @iwl_init_notification_wait(ptr noundef %notif_wait, ptr noundef nonnull %wait_te_notif, ptr noundef nonnull %te_notif_response, i32 noundef 1, ptr noundef nonnull @iwl_mvm_te_notif, ptr noundef %time_event_data) #6
  %call62 = call fastcc i32 @iwl_mvm_time_event_send_add(ptr noundef %mvm, ptr noundef %vif, ptr noundef %time_event_data, ptr noundef nonnull %time_cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.else.i124, label %do.end68

do.end68:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %39, i32 noundef 0, ptr noundef nonnull @.str.4) #6
  call void @iwl_remove_notification(ptr noundef %notif_wait, ptr noundef nonnull %wait_te_notif) #6
  br label %cleanup

if.else.i124:                                     ; preds = %if.end61
  %mul74 = shl i32 %max_delay, 10
  %call3.i123 = call i32 @__usecs_to_jiffies(i32 noundef %mul74) #6
  %call76 = call i32 @iwl_wait_notification(ptr noundef %notif_wait, ptr noundef nonnull %wait_te_notif, i32 noundef %call3.i123) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.else.i124.cleanup_crit_edge, label %do.end82

if.else.i124.cleanup_crit_edge:                   ; preds = %if.else.i124
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end82:                                         ; preds = %if.else.i124
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %41, i32 noundef 0, ptr noundef nonnull @.str.5) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end82, %if.else.i124.cleanup_crit_edge, %do.end68, %if.then59, %do.end32
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %time_cmd) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wait_te_notif) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %te_notif_response) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_stop_session_protection(ptr noundef %mvm, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %time_event_data = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 32, i32 4, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !158

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 797, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %time_event_lock = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 89
  tail call void @_raw_spin_lock_bh(ptr noundef %time_event_lock) #6
  %id25 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 33, i32 1, i32 12
  %1 = ptrtoint ptr %id25 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id25, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %time_event_lock) #6
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %3 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw, align 8
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %4, i32 0, i32 5, i32 8, i32 1
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i, align 4
  %7 = and i32 %6, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp38.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end
  br i1 %cmp38.not, label %if.then28.if.end48_crit_edge, label %do.end34

if.then28.if.end48_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

do.end34:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %9, i32 noundef 32, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_stop_session_protection, ptr noundef nonnull @.str.8, i32 noundef %2) #6
  br label %cleanup

if.else:                                          ; preds = %if.end
  br i1 %cmp38.not, label %if.else.if.end48_crit_edge, label %do.end43

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

do.end43:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %11, i32 noundef 32, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_stop_session_protection, ptr noundef nonnull @.str.9, i32 noundef %2) #6
  br label %cleanup

if.end48:                                         ; preds = %if.else.if.end48_crit_edge, %if.then28.if.end48_crit_edge
  tail call void @iwl_mvm_remove_time_event(ptr noundef %mvm, ptr noundef %drv_priv.i, ptr noundef %time_event_data)
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %do.end43, %do.end34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_time_event_send_add(ptr noundef %mvm, ptr noundef %vif, ptr noundef %te_data, ptr noundef %te_cmd) unnamed_addr #0 align 64 {
entry:
  %wait_time_event = alloca %struct.iwl_notification_wait, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wait_time_event) #6
  %0 = call ptr @memset(ptr %wait_time_event, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !158

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 520, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mvm, align 8
  %duration = getelementptr inbounds %struct.iwl_time_event_cmd, ptr %te_cmd, i32 0, i32 7
  %4 = ptrtoint ptr %duration to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %duration, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 32, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_time_event_send_add, ptr noundef nonnull @.str.38, i32 noundef %6) #6
  %time_event_lock = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 89
  tail call void @_raw_spin_lock_bh(ptr noundef %time_event_lock) #6
  %id = getelementptr inbounds %struct.iwl_mvm_time_event_data, ptr %te_data, i32 0, i32 6
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp31.not = icmp eq i32 %8, 16
  br i1 %cmp31.not, label %if.end64, label %do.end47, !prof !162

do.end47:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 526, i32 noundef 9, ptr noundef null) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %time_event_lock) #6
  br label %cleanup

if.end64:                                         ; preds = %if.end
  %9 = ptrtoint ptr %te_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %vif, ptr %te_data, align 4
  %10 = ptrtoint ptr %duration to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %duration, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %duration67 = getelementptr inbounds %struct.iwl_mvm_time_event_data, ptr %te_data, i32 0, i32 3
  %13 = ptrtoint ptr %duration67 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %duration67, align 4
  %id68 = getelementptr inbounds %struct.iwl_time_event_cmd, ptr %te_cmd, i32 0, i32 2
  %14 = ptrtoint ptr %id68 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %id68, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %id, align 4
  %list = getelementptr inbounds %struct.iwl_mvm_time_event_data, ptr %te_data, i32 0, i32 1
  %time_event_list = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 88
  %prev.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 88, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %19, ptr noundef %time_event_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end64.list_add_tail.exit_crit_edge

if.end64.list_add_tail.exit_crit_edge:            ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list, ptr %prev.i, align 4
  %21 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %time_event_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.iwl_mvm_time_event_data, ptr %te_data, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %list, ptr %19, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end64.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %time_event_lock) #6
  %notif_wait = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 23
  call void @iwl_init_notification_wait(ptr noundef %notif_wait, ptr noundef nonnull %wait_time_event, ptr noundef nonnull @iwl_mvm_time_event_send_add.time_event_response, i32 noundef 1, ptr noundef nonnull @iwl_mvm_time_event_response, ptr noundef %te_data) #6
  %call71 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 41, i32 noundef 0, i16 noundef zeroext 36, ptr noundef %te_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end82, label %do.end77

do.end77:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %25, i32 noundef 0, ptr noundef nonnull @.str.39, i32 noundef %call71) #6
  call void @iwl_remove_notification(ptr noundef %notif_wait, ptr noundef nonnull %wait_time_event) #6
  br label %out_clear_te

if.end82:                                         ; preds = %list_add_tail.exit
  %call84 = call i32 @iwl_wait_notification(ptr noundef %notif_wait, ptr noundef nonnull %wait_time_event, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end82.cleanup_crit_edge, label %land.rhs91

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs91:                                       ; preds = %if.end82
  %.b173 = load i1, ptr @iwl_mvm_time_event_send_add.__already_done, align 1
  br i1 %.b173, label %land.rhs91.out_clear_te_crit_edge, label %if.then102, !prof !162

land.rhs91.out_clear_te_crit_edge:                ; preds = %land.rhs91
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_clear_te

if.then102:                                       ; preds = %land.rhs91
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @iwl_mvm_time_event_send_add.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 561, i32 noundef 9, ptr noundef null) #6
  br label %out_clear_te

out_clear_te:                                     ; preds = %if.then102, %land.rhs91.out_clear_te_crit_edge, %do.end77
  %ret.0 = phi i32 [ %call71, %do.end77 ], [ %call84, %if.then102 ], [ %call84, %land.rhs91.out_clear_te_crit_edge ]
  call void @_raw_spin_lock_bh(ptr noundef %time_event_lock) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %26 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %out_clear_te.if.end.i_crit_edge, label %land.rhs.i

out_clear_te.if.end.i_crit_edge:                  ; preds = %out_clear_te
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.rhs.i:                                       ; preds = %out_clear_te
  %dep_map.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 89, i32 0, i32 0, i32 4
  %call.i.i175 = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i175)
  %cmp.not.i = icmp eq i32 %call.i.i175, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !158

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %out_clear_te.if.end.i_crit_edge
  %tobool24.not.i = icmp eq ptr %te_data, null
  br i1 %tobool24.not.i, label %if.end.i.iwl_mvm_te_clear_data.exit_crit_edge, label %lor.lhs.false.i

if.end.i.iwl_mvm_te_clear_data.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_te_clear_data.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %27 = ptrtoint ptr %te_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %te_data, align 4
  %tobool25.not.i = icmp eq ptr %28, null
  br i1 %tobool25.not.i, label %lor.lhs.false.i.iwl_mvm_te_clear_data.exit_crit_edge, label %if.end27.i

lor.lhs.false.i.iwl_mvm_te_clear_data.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_te_clear_data.exit

if.end27.i:                                       ; preds = %lor.lhs.false.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end27.i.list_del.exit.i_crit_edge

if.end27.i.list_del.exit.i_crit_edge:             ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.iwl_mvm_time_event_data, ptr %te_data, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i, align 4
  %31 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %list, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end27.i.list_del.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.iwl_mvm_time_event_data, ptr %te_data, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %list, ptr %list, align 4
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %list, ptr %prev.i.i, align 4
  %running.i = getelementptr inbounds %struct.iwl_mvm_time_event_data, ptr %te_data, i32 0, i32 4
  %37 = ptrtoint ptr %running.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %running.i, align 4
  %uid.i = getelementptr inbounds %struct.iwl_mvm_time_event_data, ptr %te_data, i32 0, i32 5
  %38 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %uid.i, align 4
  %39 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 16, ptr %id, align 4
  %40 = ptrtoint ptr %te_data to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %te_data, align 4
  br label %iwl_mvm_te_clear_data.exit

iwl_mvm_te_clear_data.exit:                       ; preds = %list_del.exit.i, %lor.lhs.false.i.iwl_mvm_te_clear_data.exit_crit_edge, %if.end.i.iwl_mvm_te_clear_data.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %time_event_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %iwl_mvm_te_clear_data.exit, %if.end82.cleanup_crit_edge, %do.end47
  %retval.0 = phi i32 [ -5, %do.end47 ], [ %ret.0, %iwl_mvm_te_clear_data.exit ], [ 0, %if.end82.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wait_time_event) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_init_notification_wait(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @iwl_mvm_te_notif(ptr nocapture noundef readonly %notif_wait, ptr nocapture noundef readonly %pkt, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %notif_wait, i32 -288
  %hdr = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hdr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %1)
  %cmp.not = icmp eq i8 %1, 42
  br i1 %cmp.not, label %if.end23, label %do.end, !prof !162

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 459, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %2 = ptrtoint ptr %pkt to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %pkt, align 1
  %4 = and i32 %3, -12648448
  call void @__sanitizer_cov_trace_const_cmp4(i32 469762048, i32 %4)
  %cmp24.not = icmp eq i32 %4, 469762048
  br i1 %cmp24.not, label %if.end84, label %land.rhs

land.rhs:                                         ; preds = %if.end23
  %.b120 = load i1, ptr @iwl_mvm_te_notif.__already_done, align 1
  br i1 %.b120, label %land.rhs.do.end81_crit_edge, label %if.then41, !prof !162

land.rhs.do.end81_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end81

if.then41:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @iwl_mvm_te_notif.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 462, i32 noundef 9, ptr noundef null) #6
  br label %do.end81

do.end81:                                         ; preds = %if.then41, %land.rhs.do.end81_crit_edge
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %6, i32 noundef 0, ptr noundef nonnull @.str.43) #6
  br label %cleanup

if.end84:                                         ; preds = %if.end23
  %unique_id = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 2
  %7 = ptrtoint ptr %unique_id to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %unique_id, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %uid = getelementptr inbounds %struct.iwl_mvm_time_event_data, ptr %data, i32 0, i32 5
  %10 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp86.not = icmp eq i32 %9, %11
  br i1 %cmp86.not, label %do.end93, label %if.end84.cleanup_crit_edge

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end93:                                         ; preds = %if.end84
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %13, i32 noundef 32, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_te_notif, ptr noundef nonnull @.str.44, i32 noundef %9) #6
  %status = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 3, i32 1
  %14 = ptrtoint ptr %status to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool98.not = icmp eq i32 %15, 0
  br i1 %tobool98.not, label %do.end103, label %do.end93.cleanup_crit_edge

do.end93.cleanup_crit_edge:                       ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end103:                                        ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %17, i32 noundef 0, ptr noundef nonnull @.str.45) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end103, %do.end93.cleanup_crit_edge, %if.end84.cleanup_crit_edge, %do.end81, %do.end
  %retval.0 = phi i1 [ true, %do.end ], [ true, %do.end81 ], [ false, %if.end84.cleanup_crit_edge ], [ true, %do.end103 ], [ true, %do.end93.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_remove_notification(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_wait_notification(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_remove_time_event(ptr noundef %mvm, ptr nocapture noundef readonly %mvmvif, ptr noundef %te_data) local_unnamed_addr #0 align 64 {
entry:
  %time_cmd = alloca %struct.iwl_time_event_cmd, align 4
  %uid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %time_cmd) #6
  %0 = getelementptr inbounds i8, ptr %time_cmd, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uid) #6
  %2 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %uid, align 4, !annotation !163
  %call = call fastcc zeroext i1 @__iwl_mvm_remove_time_event(ptr noundef %mvm, ptr noundef %te_data, ptr noundef nonnull %uid)
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %uid, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %id = getelementptr inbounds %struct.iwl_time_event_cmd, ptr %time_cmd, i32 0, i32 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %id, align 4
  %action = getelementptr inbounds %struct.iwl_time_event_cmd, ptr %time_cmd, i32 0, i32 1
  %7 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 50331648, ptr %action, align 4
  %id1 = getelementptr inbounds %struct.iwl_mvm_vif, ptr %mvmvif, i32 0, i32 1
  %8 = ptrtoint ptr %id1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %id1, align 4
  %conv = zext i16 %9 to i32
  %color = getelementptr inbounds %struct.iwl_mvm_vif, ptr %mvmvif, i32 0, i32 2
  %10 = ptrtoint ptr %color to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %color, align 2
  %conv2 = zext i16 %11 to i32
  %shl3 = shl nuw nsw i32 %conv2, 8
  %or = or i32 %shl3, %conv
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  %13 = ptrtoint ptr %time_cmd to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %time_cmd, align 4
  %14 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %15, i32 noundef 32, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_remove_time_event, ptr noundef nonnull @.str.6, i32 noundef %4) #6
  %call8 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 41, i32 noundef 0, i16 noundef zeroext 36, ptr noundef nonnull %time_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %17, i32 noundef 0, ptr noundef nonnull @.str.7) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uid) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %time_cmd) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__iwl_mvm_remove_time_event(ptr noundef %mvm, ptr noundef %te_data, ptr nocapture noundef %uid) unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.iwl_mvm_session_prot_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %te_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %te_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %time_event_lock = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 89
  tail call void @_raw_spin_lock_bh(ptr noundef %time_event_lock) #6
  %uid3 = getelementptr inbounds %struct.iwl_mvm_time_event_data, ptr %te_data, i32 0, i32 5
  %4 = ptrtoint ptr %uid3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uid3, align 4
  %6 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %uid, align 4
  %id4 = getelementptr inbounds %struct.iwl_mvm_time_event_data, ptr %te_data, i32 0, i32 6
  %7 = ptrtoint ptr %id4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.rhs.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end
  %dep_map.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 89, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !158

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %tobool24.not.i = icmp eq ptr %te_data, null
  br i1 %tobool24.not.i, label %if.end.i.iwl_mvm_te_clear_data.exit_crit_edge, label %lor.lhs.false.i

if.end.i.iwl_mvm_te_clear_data.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_te_clear_data.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %10 = ptrtoint ptr %te_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %te_data, align 4
  %tobool25.not.i = icmp eq ptr %11, null
  br i1 %tobool25.not.i, label %lor.lhs.false.i.iwl_mvm_te_clear_data.exit_crit_edge, label %if.end27.i

lor.lhs.false.i.iwl_mvm_te_clear_data.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_te_clear_data.exit

if.end27.i:                                       ; preds = %lor.lhs.false.i
  %list.i = getelementptr inbounds %struct.iwl_mvm_time_event_data, ptr %te_data, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end27.i.list_del.exit.i_crit_edge

if.end27.i.list_del.exit.i_crit_edge:             ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.iwl_mvm_time_event_data, ptr %te_data, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end27.i.list_del.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.iwl_mvm_time_event_data, ptr %te_data, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %list.i, ptr %list.i, align 4
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list.i, ptr %prev.i.i, align 4
  %running.i = getelementptr inbounds %struct.iwl_mvm_time_event_data, ptr %te_data, i32 0, i32 4
  %20 = ptrtoint ptr %running.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %running.i, align 4
  %21 = ptrtoint ptr %uid3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %uid3, align 4
  %22 = ptrtoint ptr %id4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16, ptr %id4, align 4
  %23 = ptrtoint ptr %te_data to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %te_data, align 4
  br label %iwl_mvm_te_clear_data.exit

iwl_mvm_te_clear_data.exit:                       ; preds = %list_del.exit.i, %lor.lhs.false.i.iwl_mvm_te_clear_data.exit_crit_edge, %if.end.i.iwl_mvm_te_clear_data.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %time_event_lock) #6
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %24 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fw, align 8
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %25, i32 0, i32 5, i32 8, i32 1
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %arrayidx.i.i, align 4
  %28 = and i32 %27, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not = icmp eq i32 %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 83, i32 %8)
  %cmp.not = icmp eq i32 %8, 83
  %or.cond = select i1 %tobool.i.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.else, label %if.then7

if.then7:                                         ; preds = %iwl_mvm_te_clear_data.exit
  %tobool8.not = icmp ne ptr %drv_priv.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp10 = icmp ult i32 %8, 4
  %or.cond42 = select i1 %tobool8.not, i1 %cmp10, i1 false
  br i1 %or.cond42, label %if.then11, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %if.then7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cmd.i) #6
  %29 = getelementptr inbounds %struct.iwl_mvm_session_prot_cmd, ptr %cmd.i, i32 0, i32 1
  %30 = getelementptr inbounds %struct.iwl_mvm_session_prot_cmd, ptr %cmd.i, i32 0, i32 2
  %31 = getelementptr inbounds %struct.iwl_mvm_session_prot_cmd, ptr %cmd.i, i32 0, i32 3
  %32 = getelementptr inbounds %struct.iwl_mvm_session_prot_cmd, ptr %cmd.i, i32 0, i32 4
  %33 = getelementptr inbounds %struct.iwl_mvm_session_prot_cmd, ptr %cmd.i, i32 0, i32 5
  %id1.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %34 = ptrtoint ptr %id1.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %id1.i, align 4
  %conv.i = zext i16 %35 to i32
  %color.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 2
  %36 = ptrtoint ptr %color.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %color.i, align 2
  %conv2.i = zext i16 %37 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %conv.i
  %38 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %39 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %cmd.i, align 4
  %40 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 50331648, ptr %29, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %42 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %30, align 4
  %43 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %31, align 4
  %44 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %32, align 4
  %45 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %33, align 4
  %call4.i = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 773, i32 noundef 0, i16 noundef zeroext 24, ptr noundef nonnull %cmd.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i43 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i43, label %if.then11.iwl_mvm_cancel_session_protection.exit_crit_edge, label %do.end.i44

if.then11.iwl_mvm_cancel_session_protection.exit_crit_edge: ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_cancel_session_protection.exit

do.end.i44:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %47, i32 noundef 0, ptr noundef nonnull @.str.53, i32 noundef %call4.i) #6
  br label %iwl_mvm_cancel_session_protection.exit

iwl_mvm_cancel_session_protection.exit:           ; preds = %do.end.i44, %if.then11.iwl_mvm_cancel_session_protection.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cmd.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp12 = icmp eq i32 %3, 10
  br i1 %cmp12, label %if.then13, label %iwl_mvm_cancel_session_protection.exit.cleanup_crit_edge

iwl_mvm_cancel_session_protection.exit.cleanup_crit_edge: ; preds = %iwl_mvm_cancel_session_protection.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13:                                        ; preds = %iwl_mvm_cancel_session_protection.exit
  %status.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %call.i = call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %status.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i46 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i46, label %if.then.i, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %roc_done_wk.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %48 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %48, ptr noundef %roc_done_wk.i.i) #6
  br label %cleanup

if.else:                                          ; preds = %iwl_mvm_te_clear_data.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp16 = icmp eq i32 %8, 16
  br i1 %cmp16, label %do.end, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mvm, align 8
  %51 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %uid, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %50, i32 noundef 32, i1 noundef zeroext false, ptr noundef nonnull @__func__.__iwl_mvm_remove_time_event, ptr noundef nonnull @.str.46, i32 noundef %52) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.else.cleanup_crit_edge, %if.then.i, %if.then13.cleanup_crit_edge, %iwl_mvm_cancel_session_protection.exit.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %do.end ], [ false, %entry.cleanup_crit_edge ], [ false, %iwl_mvm_cancel_session_protection.exit.cleanup_crit_edge ], [ false, %if.then7.cleanup_crit_edge ], [ true, %if.else.cleanup_crit_edge ], [ false, %if.then13.cleanup_crit_edge ], [ false, %if.then.i ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd_pdu(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rx_session_protect_notif(ptr noundef %mvm, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i101 = tail call ptr @page_address(ptr noundef %1) #6
  %2 = ptrtoint ptr %call.i101 to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  %6 = tail call i32 @llvm.read_register.i32(metadata !148) #6
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !160
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.47, i32 noundef 696, ptr noundef nonnull @.str.48) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %10 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %11)
  %cmp.i102.not = icmp ult i32 %11, 67108864
  br i1 %cmp.i102.not, label %if.then24.i, label %iwl_mvm_rcu_dereference_vif_id.exit.thread, !prof !162

iwl_mvm_rcu_dereference_vif_id.exit.thread:       ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 1216, i32 noundef 9, ptr noundef null) #6
  br label %out_unlock

if.then24.i:                                      ; preds = %rcu_read_lock.exit
  %12 = lshr i32 %11, 24
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 94, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %arrayidx.i, align 4
  %call.i103 = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool30.not.i = icmp eq i32 %call.i103, 0
  br i1 %tobool30.not.i, label %land.lhs.true.i104, label %if.then24.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge

if.then24.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge: ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_rcu_dereference_vif_id.exit

land.lhs.true.i104:                               ; preds = %if.then24.i
  %call31.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %land.lhs.true.i104.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge, label %land.lhs.true33.i

land.lhs.true.i104.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge: ; preds = %land.lhs.true.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_rcu_dereference_vif_id.exit

land.lhs.true33.i:                                ; preds = %land.lhs.true.i104
  %.b1.i = load i1, ptr @iwl_mvm_rcu_dereference_vif_id.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true33.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge, label %if.then35.i

land.lhs.true33.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge: ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_rcu_dereference_vif_id.exit

if.then35.i:                                      ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @iwl_mvm_rcu_dereference_vif_id.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 1220, ptr noundef nonnull @.str.35) #6
  br label %iwl_mvm_rcu_dereference_vif_id.exit

iwl_mvm_rcu_dereference_vif_id.exit:              ; preds = %if.then35.i, %land.lhs.true33.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge, %land.lhs.true.i104.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge, %if.then24.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %iwl_mvm_rcu_dereference_vif_id.exit.out_unlock_crit_edge, label %if.end

iwl_mvm_rcu_dereference_vif_id.exit.out_unlock_crit_edge: ; preds = %iwl_mvm_rcu_dereference_vif_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end:                                           ; preds = %iwl_mvm_rcu_dereference_vif_id.exit
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %16)
  %cmp.not = icmp eq i32 %16, 10
  br i1 %cmp.not, label %if.end22, label %if.then4

if.then4:                                         ; preds = %if.end
  %time_event_data = getelementptr inbounds %struct.ieee80211_vif, ptr %14, i32 1, i32 1, i32 32, i32 4, i32 1
  %status = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %17 = ptrtoint ptr %status to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool5.not = icmp eq i32 %18, 0
  br i1 %tobool5.not, label %if.then6, label %if.then4.if.end9_crit_edge

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then6:                                         ; preds = %if.then4
  %call7 = tail call fastcc zeroext i1 @iwl_mvm_te_check_disconnect(ptr noundef %mvm, ptr noundef nonnull %14, ptr noundef nonnull @.str.10)
  %time_event_lock = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 89
  tail call void @_raw_spin_lock_bh(ptr noundef %time_event_lock) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %19 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i106 = icmp eq i32 %19, 0
  br i1 %tobool.not.i106, label %if.then6.if.end.i108_crit_edge, label %land.rhs.i

if.then6.if.end.i108_crit_edge:                   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i108

land.rhs.i:                                       ; preds = %if.then6
  %dep_map.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 89, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i107, label %land.rhs.i.if.end.i108_crit_edge, !prof !158

land.rhs.i.if.end.i108_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i108

do.end.i107:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i108

if.end.i108:                                      ; preds = %do.end.i107, %land.rhs.i.if.end.i108_crit_edge, %if.then6.if.end.i108_crit_edge
  %tobool24.not.i = icmp eq ptr %time_event_data, null
  br i1 %tobool24.not.i, label %if.end.i108.iwl_mvm_te_clear_data.exit_crit_edge, label %lor.lhs.false.i

if.end.i108.iwl_mvm_te_clear_data.exit_crit_edge: ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_te_clear_data.exit

lor.lhs.false.i:                                  ; preds = %if.end.i108
  %20 = ptrtoint ptr %time_event_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %time_event_data, align 4
  %tobool25.not.i = icmp eq ptr %21, null
  br i1 %tobool25.not.i, label %lor.lhs.false.i.iwl_mvm_te_clear_data.exit_crit_edge, label %if.end27.i

lor.lhs.false.i.iwl_mvm_te_clear_data.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_te_clear_data.exit

if.end27.i:                                       ; preds = %lor.lhs.false.i
  %list.i = getelementptr inbounds %struct.ieee80211_vif, ptr %14, i32 1, i32 1, i32 32, i32 5
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end27.i.list_del.exit.i_crit_edge

if.end27.i.list_del.exit.i_crit_edge:             ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %14, i32 1, i32 1, i32 33
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end27.i.list_del.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %14, i32 1, i32 1, i32 33
  %28 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %list.i, ptr %list.i, align 4
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %list.i, ptr %prev.i.i, align 4
  %running.i = getelementptr inbounds %struct.ieee80211_vif, ptr %14, i32 1, i32 1, i32 33, i32 1, i32 4
  %30 = ptrtoint ptr %running.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %running.i, align 4
  %uid.i = getelementptr inbounds %struct.ieee80211_vif, ptr %14, i32 1, i32 1, i32 33, i32 1, i32 8
  %31 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %uid.i, align 4
  %id.i = getelementptr inbounds %struct.ieee80211_vif, ptr %14, i32 1, i32 1, i32 33, i32 1, i32 12
  %32 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 16, ptr %id.i, align 4
  %33 = ptrtoint ptr %time_event_data to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %time_event_data, align 4
  br label %iwl_mvm_te_clear_data.exit

iwl_mvm_te_clear_data.exit:                       ; preds = %list_del.exit.i, %lor.lhs.false.i.iwl_mvm_te_clear_data.exit_crit_edge, %if.end.i108.iwl_mvm_te_clear_data.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %time_event_lock) #6
  br label %if.end9

if.end9:                                          ; preds = %iwl_mvm_te_clear_data.exit, %if.then4.if.end9_crit_edge
  %start = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2
  %34 = ptrtoint ptr %start to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %start, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool10.not = icmp eq i32 %35, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %time_event_lock12 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 89
  tail call void @_raw_spin_lock_bh(ptr noundef %time_event_lock12) #6
  %36 = ptrtoint ptr %start to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %start, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool14 = icmp ne i32 %37, 0
  %running = getelementptr inbounds %struct.ieee80211_vif, ptr %14, i32 1, i32 1, i32 33, i32 1, i32 4
  %frombool = zext i1 %tobool14 to i8
  %38 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool, ptr %running, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %duration = getelementptr inbounds %struct.ieee80211_vif, ptr %14, i32 1, i32 1, i32 33, i32 1
  %40 = ptrtoint ptr %duration to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %duration, align 4
  %mul = shl i32 %41, 10
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %mul) #6
  %add = add i32 %call3.i, %39
  %end_jiffies = getelementptr inbounds %struct.ieee80211_vif, ptr %14, i32 1, i32 1, i32 33, i32 0, i32 4
  %42 = ptrtoint ptr %end_jiffies to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add, ptr %end_jiffies, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %time_event_lock12) #6
  br label %out_unlock

if.else:                                          ; preds = %if.end9
  %assoc = getelementptr inbounds %struct.ieee80211_vif, ptr %14, i32 0, i32 1, i32 10
  %43 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %assoc, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool17.not = icmp eq i8 %44, 0
  %cond = select i1 %tobool17.not, ptr @.str.11, ptr @.str.12
  %call18 = tail call fastcc zeroext i1 @iwl_mvm_te_check_disconnect(ptr noundef %mvm, ptr noundef nonnull %14, ptr noundef nonnull %cond)
  %time_event_lock19 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 89
  tail call void @_raw_spin_lock_bh(ptr noundef %time_event_lock19) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %45 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i109 = icmp eq i32 %45, 0
  br i1 %tobool.not.i109, label %if.else.if.end.i116_crit_edge, label %land.rhs.i113

if.else.if.end.i116_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i116

land.rhs.i113:                                    ; preds = %if.else
  %dep_map.i110 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 89, i32 0, i32 0, i32 4
  %call.i.i111 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i110, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i111)
  %cmp.not.i112 = icmp eq i32 %call.i.i111, 0
  br i1 %cmp.not.i112, label %do.end.i114, label %land.rhs.i113.if.end.i116_crit_edge, !prof !158

land.rhs.i113.if.end.i116_crit_edge:              ; preds = %land.rhs.i113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i116

do.end.i114:                                      ; preds = %land.rhs.i113
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i116

if.end.i116:                                      ; preds = %do.end.i114, %land.rhs.i113.if.end.i116_crit_edge, %if.else.if.end.i116_crit_edge
  %tobool24.not.i115 = icmp eq ptr %time_event_data, null
  br i1 %tobool24.not.i115, label %if.end.i116.iwl_mvm_te_clear_data.exit130_crit_edge, label %lor.lhs.false.i118

if.end.i116.iwl_mvm_te_clear_data.exit130_crit_edge: ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_te_clear_data.exit130

lor.lhs.false.i118:                               ; preds = %if.end.i116
  %46 = ptrtoint ptr %time_event_data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %time_event_data, align 4
  %tobool25.not.i117 = icmp eq ptr %47, null
  br i1 %tobool25.not.i117, label %lor.lhs.false.i118.iwl_mvm_te_clear_data.exit130_crit_edge, label %if.end27.i121

lor.lhs.false.i118.iwl_mvm_te_clear_data.exit130_crit_edge: ; preds = %lor.lhs.false.i118
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_te_clear_data.exit130

if.end27.i121:                                    ; preds = %lor.lhs.false.i118
  %list.i119 = getelementptr inbounds %struct.ieee80211_vif, ptr %14, i32 1, i32 1, i32 32, i32 5
  %call.i.i.i120 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i119) #6
  br i1 %call.i.i.i120, label %if.end.i.i.i124, label %if.end27.i121.list_del.exit.i129_crit_edge

if.end27.i121.list_del.exit.i129_crit_edge:       ; preds = %if.end27.i121
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i129

if.end.i.i.i124:                                  ; preds = %if.end27.i121
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i122 = getelementptr inbounds %struct.ieee80211_vif, ptr %14, i32 1, i32 1, i32 33
  %48 = ptrtoint ptr %prev.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i.i122, align 4
  %50 = ptrtoint ptr %list.i119 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %list.i119, align 4
  %prev1.i.i.i.i123 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i.i123 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i.i123, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del.exit.i129

list_del.exit.i129:                               ; preds = %if.end.i.i.i124, %if.end27.i121.list_del.exit.i129_crit_edge
  %prev.i.i125 = getelementptr inbounds %struct.ieee80211_vif, ptr %14, i32 1, i32 1, i32 33
  %54 = ptrtoint ptr %list.i119 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %list.i119, ptr %list.i119, align 4
  %55 = ptrtoint ptr %prev.i.i125 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %list.i119, ptr %prev.i.i125, align 4
  %running.i126 = getelementptr inbounds %struct.ieee80211_vif, ptr %14, i32 1, i32 1, i32 33, i32 1, i32 4
  %56 = ptrtoint ptr %running.i126 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %running.i126, align 4
  %uid.i127 = getelementptr inbounds %struct.ieee80211_vif, ptr %14, i32 1, i32 1, i32 33, i32 1, i32 8
  %57 = ptrtoint ptr %uid.i127 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %uid.i127, align 4
  %id.i128 = getelementptr inbounds %struct.ieee80211_vif, ptr %14, i32 1, i32 1, i32 33, i32 1, i32 12
  %58 = ptrtoint ptr %id.i128 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 16, ptr %id.i128, align 4
  %59 = ptrtoint ptr %time_event_data to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %time_event_data, align 4
  br label %iwl_mvm_te_clear_data.exit130

iwl_mvm_te_clear_data.exit130:                    ; preds = %list_del.exit.i129, %lor.lhs.false.i118.iwl_mvm_te_clear_data.exit130_crit_edge, %if.end.i116.iwl_mvm_te_clear_data.exit130_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %time_event_lock19) #6
  br label %out_unlock

if.end22:                                         ; preds = %if.end
  %status23 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %60 = ptrtoint ptr %status23 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %status23, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool24.not = icmp eq i32 %61, 0
  br i1 %tobool24.not, label %if.end22.if.then27_crit_edge, label %lor.lhs.false

if.end22.if.then27_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27

lor.lhs.false:                                    ; preds = %if.end22
  %start25 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2
  %62 = ptrtoint ptr %start25 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %start25, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool26.not = icmp eq i32 %63, 0
  br i1 %tobool26.not, label %lor.lhs.false.if.then27_crit_edge, label %if.then32

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27

if.then27:                                        ; preds = %lor.lhs.false.if.then27_crit_edge, %if.end22.if.then27_crit_edge
  %id = getelementptr inbounds %struct.ieee80211_vif, ptr %14, i32 1, i32 1, i32 33, i32 1, i32 12
  %64 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 4, ptr %id, align 4
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %65 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_remain_on_channel_expired(ptr noundef %66) #6
  %status.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %call.i131 = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %status.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %tobool.not.i132 = icmp eq i32 %call.i131, 0
  br i1 %tobool.not.i132, label %if.then.i133, label %if.then27.out_unlock_crit_edge

if.then27.out_unlock_crit_edge:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.then.i133:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  %roc_done_wk.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %67 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %67, ptr noundef %roc_done_wk.i.i) #6
  br label %out_unlock

if.then32:                                        ; preds = %lor.lhs.false
  %id34 = getelementptr inbounds %struct.ieee80211_vif, ptr %14, i32 1, i32 1, i32 33, i32 1, i32 12
  %68 = ptrtoint ptr %id34 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %id34, align 4
  %conf_id = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2, i32 1
  %70 = ptrtoint ptr %conf_id to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %conf_id, align 1
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %72)
  %cmp35.not = icmp eq i32 %69, %72
  br i1 %cmp35.not, label %if.end61.critedge, label %do.end, !prof !162

do.end:                                           ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 881, i32 noundef 9, ptr noundef null) #6
  br label %out_unlock

if.end61.critedge:                                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  %status62 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 2, ptr noundef %status62) #6
  %hw63 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %73 = ptrtoint ptr %hw63 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw63, align 4
  tail call void @ieee80211_ready_on_channel(ptr noundef %74) #6
  br label %out_unlock

out_unlock:                                       ; preds = %if.end61.critedge, %do.end, %if.then.i133, %if.then27.out_unlock_crit_edge, %iwl_mvm_te_clear_data.exit130, %if.then11, %iwl_mvm_rcu_dereference_vif_id.exit.out_unlock_crit_edge, %iwl_mvm_rcu_dereference_vif_id.exit.thread
  %call.i135 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i135, label %out_unlock.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i138

out_unlock.rcu_read_unlock.exit_crit_edge:        ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i138:                               ; preds = %out_unlock
  %call1.i136 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i136)
  %tobool.not.i137 = icmp eq i32 %call1.i136, 0
  br i1 %tobool.not.i137, label %land.lhs.true.i138.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i140

land.lhs.true.i138.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i140:                              ; preds = %land.lhs.true.i138
  %.b4.i139 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i139, label %land.lhs.true2.i140.rcu_read_unlock.exit_crit_edge, label %if.then.i141

land.lhs.true2.i140.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i140
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i141:                                     ; preds = %land.lhs.true2.i140
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.47, i32 noundef 724, ptr noundef nonnull @.str.52) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i141, %land.lhs.true2.i140.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i138.rcu_read_unlock.exit_crit_edge, %out_unlock.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !161
  %75 = tail call i32 @llvm.read_register.i32(metadata !148) #6
  %and.i.i.i.i.i142 = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i.i.i142 to ptr
  %preempt_count.i.i.i.i143 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %preempt_count.i.i.i.i143 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %preempt_count.i.i.i.i143, align 4
  %sub.i.i.i = add i32 %78, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i143, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @iwl_mvm_te_check_disconnect(ptr noundef %mvm, ptr noundef %vif, ptr noundef %errmsg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %csa_bcn_pending = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 2, i32 1, i32 18
  %2 = ptrtoint ptr %csa_bcn_pending to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %csa_bcn_pending, align 8, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %assoc = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 10
  %4 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %assoc, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end6_crit_edge, label %land.lhs.true2

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

land.lhs.true2:                                   ; preds = %land.lhs.true
  %dtim_period = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 18
  %6 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dtim_period, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %land.lhs.true2.if.end6_crit_edge, label %land.lhs.true2.cleanup_crit_edge

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true2.if.end6_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true2.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %tobool7.not = icmp eq ptr %errmsg, null
  br i1 %tobool7.not, label %if.end6.if.end12_crit_edge, label %do.end

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %9, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull %errmsg) #6
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.end6.if.end12_crit_edge
  %10 = ptrtoint ptr %csa_bcn_pending to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %csa_bcn_pending, align 8, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool14.not = icmp eq i8 %11, 0
  br i1 %tobool14.not, label %if.end12.if.end46_crit_edge, label %if.then15

if.end12.if.end46_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then15:                                        ; preds = %if.end12
  %12 = tail call i32 @llvm.read_register.i32(metadata !148) #6
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !160
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %if.then15.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then15.rcu_read_lock.exit_crit_edge:           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then15
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.47, i32 noundef 696, ptr noundef nonnull @.str.48) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then15.rcu_read_lock.exit_crit_edge
  %ap_sta_id = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %16 = ptrtoint ptr %ap_sta_id to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ap_sta_id, align 8
  %conv.i = zext i8 %17 to i32
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %18 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fw.i, align 8
  %num_stations.i = getelementptr inbounds %struct.iwl_fw, ptr %19, i32 0, i32 5, i32 6
  %20 = ptrtoint ptr %num_stations.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_stations.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv.i)
  %cmp.not.i = icmp ugt i32 %21, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %rcu_read_lock.exit.do.end30_crit_edge

rcu_read_lock.exit.do.end30_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30

if.end.i:                                         ; preds = %rcu_read_lock.exit
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %conv.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %arrayidx.i, align 4
  %call.i67 = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool.not.i68 = icmp eq i32 %call.i67, 0
  br i1 %tobool.not.i68, label %land.lhs.true.i69, label %if.end.i.do.end10.i_crit_edge

if.end.i.do.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10.i

land.lhs.true.i69:                                ; preds = %if.end.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i69.do.end10.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i69.do.end10.i_crit_edge:           ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i69
  %.b19.i = load i1, ptr @iwl_mvm_sta_from_staid_rcu.__warned, align 1
  br i1 %.b19.i, label %land.lhs.true5.i.do.end10.i_crit_edge, label %if.then7.i

land.lhs.true5.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10.i

if.then7.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @iwl_mvm_sta_from_staid_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 1186, ptr noundef nonnull @.str.35) #6
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then7.i, %land.lhs.true5.i.do.end10.i_crit_edge, %land.lhs.true.i69.do.end10.i_crit_edge, %if.end.i.do.end10.i_crit_edge
  %tobool.not.i.i = icmp eq ptr %23, null
  %cmp.i.i = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %23, i32 0, i32 29
  %tobool17.not = icmp eq ptr %drv_priv.i.i, null
  %or.cond = select i1 %spec.select.i.i, i1 true, i1 %tobool17.not
  br i1 %or.cond, label %do.end10.i.do.end30_crit_edge, label %if.then44.critedge, !prof !164

do.end10.i.do.end30_crit_edge:                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30

do.end30:                                         ; preds = %do.end10.i.do.end30_crit_edge, %rcu_read_lock.exit.do.end30_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 175, i32 noundef 9, ptr noundef null) #6
  br label %if.end45

if.then44.critedge:                               ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iwl_mvm_sta_modify_disable_tx(ptr noundef %mvm, ptr noundef nonnull %drv_priv.i.i, i1 noundef zeroext false) #6
  br label %if.end45

if.end45:                                         ; preds = %if.then44.critedge, %do.end30
  %call.i70 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i70, label %if.end45.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i73

if.end45.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i73:                                ; preds = %if.end45
  %call1.i71 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i71)
  %tobool.not.i72 = icmp eq i32 %call1.i71, 0
  br i1 %tobool.not.i72, label %land.lhs.true.i73.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i75

land.lhs.true.i73.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i75:                               ; preds = %land.lhs.true.i73
  %.b4.i74 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i74, label %land.lhs.true2.i75.rcu_read_unlock.exit_crit_edge, label %if.then.i76

land.lhs.true2.i75.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i75
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i76:                                      ; preds = %land.lhs.true2.i75
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.47, i32 noundef 724, ptr noundef nonnull @.str.52) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i76, %land.lhs.true2.i75.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i73.rcu_read_unlock.exit_crit_edge, %if.end45.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !161
  %24 = tail call i32 @llvm.read_register.i32(metadata !148) #6
  %and.i.i.i.i.i77 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i77 to ptr
  %preempt_count.i.i.i.i78 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i78, align 4
  %sub.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i78, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br label %if.end46

if.end46:                                         ; preds = %rcu_read_unlock.exit, %if.end12.if.end46_crit_edge
  %assoc48 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 10
  %28 = ptrtoint ptr %assoc48 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %assoc48, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool49.not = icmp eq i8 %29, 0
  br i1 %tobool49.not, label %if.end46.if.end51_crit_edge, label %if.then50

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %fwrt = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40
  tail call void @_iwl_dbg_tlv_time_point(ptr noundef %fwrt, i32 noundef 19, ptr noundef null, i1 noundef zeroext false) #6
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end46.if.end51_crit_edge
  tail call void @iwl_mvm_connection_loss(ptr noundef %mvm, ptr noundef %vif, ptr noundef %errmsg) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %land.lhs.true2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end51 ], [ false, %entry.cleanup_crit_edge ], [ false, %land.lhs.true2.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_remain_on_channel_expired(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_ready_on_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_start_p2p_roc(ptr noundef %mvm, ptr noundef %vif, i32 noundef %duration, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.iwl_mvm_session_prot_cmd, align 4
  %time_cmd = alloca %struct.iwl_time_event_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %time_event_data = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 32, i32 4, i32 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %time_cmd) #6
  %0 = getelementptr inbounds i8, ptr %time_cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !158

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 938, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %running = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 33, i32 1, i32 4
  %3 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %running, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool25.not = icmp eq i8 %4, 0
  br i1 %tobool25.not, label %if.end33, label %do.end30

do.end30:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mvm, align 8
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %6, ptr noundef nonnull @.str.13) #6
  br label %cleanup

if.end33:                                         ; preds = %if.end
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %7 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw, align 8
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %8, i32 0, i32 5, i32 8, i32 1
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.i.i, align 4
  %11 = and i32 %10, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not = icmp eq i32 %11, 0
  br i1 %tobool.i.not, label %if.end37, label %if.then35

if.then35:                                        ; preds = %if.end33
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cmd.i) #6
  %12 = getelementptr inbounds %struct.iwl_mvm_session_prot_cmd, ptr %cmd.i, i32 0, i32 1
  %13 = getelementptr inbounds %struct.iwl_mvm_session_prot_cmd, ptr %cmd.i, i32 0, i32 2
  %14 = getelementptr inbounds %struct.iwl_mvm_session_prot_cmd, ptr %cmd.i, i32 0, i32 3
  %15 = getelementptr inbounds %struct.iwl_mvm_session_prot_cmd, ptr %cmd.i, i32 0, i32 4
  %16 = getelementptr inbounds %struct.iwl_mvm_session_prot_cmd, ptr %cmd.i, i32 0, i32 5
  %id.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %17 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %id.i, align 4
  %conv.i = zext i16 %18 to i32
  %color.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 2
  %19 = ptrtoint ptr %color.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %color.i, align 2
  %conv1.i = zext i16 %20 to i32
  %shl2.i = shl nuw nsw i32 %conv1.i, 8
  %or.i = or i32 %shl2.i, %conv.i
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %22 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %cmd.i, align 4
  %23 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16777216, ptr %12, align 4
  %mul.i = mul i32 %duration, 1000
  %div.i = sdiv i32 %mul.i, 1024
  %24 = tail call i32 @llvm.bswap.i32(i32 %div.i) #6
  %25 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %14, align 4
  %26 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %15, align 4
  %27 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %16, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %28 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %if.then35.if.end.i_crit_edge, label %land.rhs.i

if.then35.if.end.i_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then35
  %dep_map.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !158

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 906, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then35.if.end.i_crit_edge
  %29 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %type, label %land.end38.i [
    i32 0, label %if.end.i.sw.epilog.i_crit_edge
    i32 1, label %sw.bb29.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb29.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

land.end38.i:                                     ; preds = %if.end.i
  %.b94.i = load i1, ptr @iwl_mvm_start_p2p_roc_session_protection.__already_done, align 1
  br i1 %.b94.i, label %land.end38.i.iwl_mvm_start_p2p_roc_session_protection.exit_crit_edge, label %if.then45.i, !prof !162

land.end38.i.iwl_mvm_start_p2p_roc_session_protection.exit_crit_edge: ; preds = %land.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_start_p2p_roc_session_protection.exit

if.then45.i:                                      ; preds = %land.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @iwl_mvm_start_p2p_roc_session_protection.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 921, i32 noundef 9, ptr noundef nonnull @.str.14) #6
  br label %iwl_mvm_start_p2p_roc_session_protection.exit

sw.epilog.i:                                      ; preds = %sw.bb29.i, %if.end.i.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ 3, %sw.bb29.i ], [ 2, %if.end.i.sw.epilog.i_crit_edge ]
  %id31.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 33, i32 1, i32 12
  %30 = ptrtoint ptr %id31.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink.i, ptr %id31.i, align 4
  %31 = shl nuw nsw i32 %.sink.i, 24
  %32 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %13, align 4
  %call84.i = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 773, i32 noundef 0, i16 noundef zeroext 24, ptr noundef nonnull %cmd.i) #6
  br label %iwl_mvm_start_p2p_roc_session_protection.exit

iwl_mvm_start_p2p_roc_session_protection.exit:    ; preds = %sw.epilog.i, %if.then45.i, %land.end38.i.iwl_mvm_start_p2p_roc_session_protection.exit_crit_edge
  %retval.0.i = phi i32 [ %call84.i, %sw.epilog.i ], [ -22, %if.then45.i ], [ -22, %land.end38.i.iwl_mvm_start_p2p_roc_session_protection.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cmd.i) #6
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  %action = getelementptr inbounds %struct.iwl_time_event_cmd, ptr %time_cmd, i32 0, i32 1
  %33 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 16777216, ptr %action, align 4
  %id = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %34 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %id, align 4
  %conv = zext i16 %35 to i32
  %color = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 2
  %36 = ptrtoint ptr %color to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %color, align 2
  %conv38 = zext i16 %37 to i32
  %shl39 = shl nuw nsw i32 %conv38, 8
  %or = or i32 %shl39, %conv
  %38 = tail call i32 @llvm.bswap.i32(i32 %or)
  %39 = ptrtoint ptr %time_cmd to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %time_cmd, align 4
  %40 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %type, label %land.end49 [
    i32 0, label %if.end37.sw.epilog_crit_edge
    i32 1, label %sw.bb41
  ]

if.end37.sw.epilog_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.end49:                                       ; preds = %if.end37
  %.b123 = load i1, ptr @iwl_mvm_start_p2p_roc.__already_done, align 1
  br i1 %.b123, label %land.end49.cleanup_crit_edge, label %if.then56, !prof !162

land.end49.cleanup_crit_edge:                     ; preds = %land.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then56:                                        ; preds = %land.end49
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @iwl_mvm_start_p2p_roc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 962, i32 noundef 9, ptr noundef nonnull @.str.14) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb41, %if.end37.sw.epilog_crit_edge
  %.sink = phi i32 [ 150994944, %sw.bb41 ], [ 67108864, %if.end37.sw.epilog_crit_edge ]
  %id42 = getelementptr inbounds %struct.iwl_time_event_cmd, ptr %time_cmd, i32 0, i32 2
  %41 = ptrtoint ptr %id42 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %.sink, ptr %id42, align 4
  %apply_time = getelementptr inbounds %struct.iwl_time_event_cmd, ptr %time_cmd, i32 0, i32 3
  %42 = ptrtoint ptr %apply_time to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %apply_time, align 4
  %interval = getelementptr inbounds %struct.iwl_time_event_cmd, ptr %time_cmd, i32 0, i32 6
  %43 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 16777216, ptr %interval, align 4
  %mul = mul i32 %duration, 1000
  %div = sdiv i32 %mul, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 13056000, i32 %mul)
  %cmp93 = icmp slt i32 %mul, 13056000
  %div91 = sdiv i32 %mul, 51200
  %phi.cast = trunc i32 %div91 to i8
  %cond = select i1 %cmp93, i8 %phi.cast, i8 -1
  %max_frags = getelementptr inbounds %struct.iwl_time_event_cmd, ptr %time_cmd, i32 0, i32 9
  %44 = ptrtoint ptr %max_frags to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %cond, ptr %max_frags, align 1
  %div96 = sdiv i32 %duration, 2
  %mul97 = mul i32 %div96, 1000
  %div98 = sdiv i32 %mul97, 1024
  %45 = tail call i32 @llvm.bswap.i32(i32 %div98)
  %max_delay = getelementptr inbounds %struct.iwl_time_event_cmd, ptr %time_cmd, i32 0, i32 4
  %46 = ptrtoint ptr %max_delay to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %max_delay, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %div)
  %duration101 = getelementptr inbounds %struct.iwl_time_event_cmd, ptr %time_cmd, i32 0, i32 7
  %48 = ptrtoint ptr %duration101 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %duration101, align 4
  %repeat = getelementptr inbounds %struct.iwl_time_event_cmd, ptr %time_cmd, i32 0, i32 8
  %49 = ptrtoint ptr %repeat to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %repeat, align 4
  %policy = getelementptr inbounds %struct.iwl_time_event_cmd, ptr %time_cmd, i32 0, i32 10
  %50 = ptrtoint ptr %policy to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 776, ptr %policy, align 2
  %call102 = call fastcc i32 @iwl_mvm_time_event_send_add(ptr noundef %mvm, ptr noundef %vif, ptr noundef %time_event_data, ptr noundef nonnull %time_cmd)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then56, %land.end49.cleanup_crit_edge, %iwl_mvm_start_p2p_roc_session_protection.exit, %do.end30
  %retval.0 = phi i32 [ -16, %do.end30 ], [ %retval.0.i, %iwl_mvm_start_p2p_roc_session_protection.exit ], [ %call102, %sw.epilog ], [ -22, %if.then56 ], [ -22, %land.end49.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %time_cmd) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_cleanup_roc_te(ptr noundef %mvm) local_unnamed_addr #0 align 64 {
entry:
  %uid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uid) #6
  %0 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %uid, align 4, !annotation !163
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !158

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 990, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %time_event_lock.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 89
  tail call void @_raw_spin_lock_bh(ptr noundef %time_event_lock.i) #6
  %time_event_list.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 88
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %.pn.in.i = phi ptr [ %time_event_list.i, %if.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp26.not.i = icmp eq ptr %.pn.i, %time_event_list.i
  br i1 %cmp26.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %te_data.0.i = getelementptr i8, ptr %.pn.i, i32 -4
  %3 = ptrtoint ptr %te_data.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %te_data.0.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %cmp29.i = icmp eq i32 %6, 10
  br i1 %cmp29.i, label %for.body.i.iwl_mvm_get_roc_te.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

for.body.i.iwl_mvm_get_roc_te.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_get_roc_te.exit

for.end.i:                                        ; preds = %for.cond.i
  %aux_roc_te_list.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 123
  %7 = ptrtoint ptr %aux_roc_te_list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %aux_roc_te_list.i, align 4
  %cmp43.not.i = icmp eq ptr %8, %aux_roc_te_list.i
  br i1 %cmp43.not.i, label %iwl_mvm_get_roc_te.exit.thread, label %for.end.i.iwl_mvm_get_roc_te.exit_crit_edge

for.end.i.iwl_mvm_get_roc_te.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_get_roc_te.exit

iwl_mvm_get_roc_te.exit.thread:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %time_event_lock.i) #6
  br label %if.end

iwl_mvm_get_roc_te.exit:                          ; preds = %for.end.i.iwl_mvm_get_roc_te.exit_crit_edge, %for.body.i.iwl_mvm_get_roc_te.exit_crit_edge
  %.pn = phi ptr [ %8, %for.end.i.iwl_mvm_get_roc_te.exit_crit_edge ], [ %.pn.i, %for.body.i.iwl_mvm_get_roc_te.exit_crit_edge ]
  %te_data.1.i = getelementptr i8, ptr %.pn, i32 -4
  tail call void @_raw_spin_unlock_bh(ptr noundef %time_event_lock.i) #6
  %tobool.not = icmp eq ptr %te_data.1.i, null
  br i1 %tobool.not, label %iwl_mvm_get_roc_te.exit.if.end_crit_edge, label %if.then

iwl_mvm_get_roc_te.exit.if.end_crit_edge:         ; preds = %iwl_mvm_get_roc_te.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %iwl_mvm_get_roc_te.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = call fastcc zeroext i1 @__iwl_mvm_remove_time_event(ptr noundef %mvm, ptr noundef nonnull %te_data.1.i, ptr noundef nonnull %uid)
  br label %if.end

if.end:                                           ; preds = %if.then, %iwl_mvm_get_roc_te.exit.if.end_crit_edge, %iwl_mvm_get_roc_te.exit.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uid) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_stop_roc(ptr noundef %mvm, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.iwl_mvm_session_prot_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw, align 8
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %1, i32 0, i32 5, i32 8, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i.i, align 4
  %4 = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %5 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %6)
  %cmp = icmp eq i32 %6, 10
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %id = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 33, i32 1, i32 12
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cmd.i) #6
  %9 = getelementptr inbounds %struct.iwl_mvm_session_prot_cmd, ptr %cmd.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.iwl_mvm_session_prot_cmd, ptr %cmd.i, i32 0, i32 2
  %11 = getelementptr inbounds %struct.iwl_mvm_session_prot_cmd, ptr %cmd.i, i32 0, i32 3
  %12 = getelementptr inbounds %struct.iwl_mvm_session_prot_cmd, ptr %cmd.i, i32 0, i32 4
  %13 = getelementptr inbounds %struct.iwl_mvm_session_prot_cmd, ptr %cmd.i, i32 0, i32 5
  %id1.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %14 = ptrtoint ptr %id1.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %id1.i, align 4
  %conv.i = zext i16 %15 to i32
  %color.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 2
  %16 = ptrtoint ptr %color.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %color.i, align 2
  %conv2.i = zext i16 %17 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %conv.i
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %19 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %cmd.i, align 4
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 50331648, ptr %9, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %10, align 4
  %23 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %11, align 4
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %12, align 4
  %25 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %13, align 4
  %call4.i = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 773, i32 noundef 0, i16 noundef zeroext 24, ptr noundef nonnull %cmd.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.then2.iwl_mvm_cancel_session_protection.exit_crit_edge, label %do.end.i

if.then2.iwl_mvm_cancel_session_protection.exit_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_cancel_session_protection.exit

do.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %27, i32 noundef 0, ptr noundef nonnull @.str.53, i32 noundef %call4.i) #6
  br label %iwl_mvm_cancel_session_protection.exit

iwl_mvm_cancel_session_protection.exit:           ; preds = %do.end.i, %if.then2.iwl_mvm_cancel_session_protection.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cmd.i) #6
  %status.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %call.i = call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %status.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i39 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i39, label %if.then.i, label %iwl_mvm_cancel_session_protection.exit.cleanup_crit_edge

iwl_mvm_cancel_session_protection.exit.cleanup_crit_edge: ; preds = %iwl_mvm_cancel_session_protection.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %iwl_mvm_cancel_session_protection.exit
  call void @__sanitizer_cov_trace_pc() #8
  %roc_done_wk.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %28 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %roc_done_wk.i.i) #6
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %hs_time_event_data = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 34
  tail call fastcc void @iwl_mvm_remove_aux_roc_te(ptr noundef %mvm, ptr noundef %drv_priv.i, ptr noundef %hs_time_event_data)
  %roc_done_wk.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %29 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %roc_done_wk.i) #6
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %30 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i40 = icmp eq i32 %30, 0
  br i1 %tobool.not.i40, label %if.end3.if.end.i_crit_edge, label %land.rhs.i

if.end3.if.end.i_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end3
  %dep_map.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i41, label %land.rhs.i.if.end.i_crit_edge, !prof !158

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i41:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 990, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i41, %land.rhs.i.if.end.i_crit_edge, %if.end3.if.end.i_crit_edge
  %time_event_lock.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 89
  tail call void @_raw_spin_lock_bh(ptr noundef %time_event_lock.i) #6
  %time_event_list.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 88
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %.pn.in.i = phi ptr [ %time_event_list.i, %if.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %31 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp26.not.i = icmp eq ptr %.pn.i, %time_event_list.i
  br i1 %cmp26.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %te_data.0.i = getelementptr i8, ptr %.pn.i, i32 -4
  %32 = ptrtoint ptr %te_data.0.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %te_data.0.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %cmp29.i = icmp eq i32 %35, 10
  br i1 %cmp29.i, label %for.body.i.iwl_mvm_get_roc_te.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

for.body.i.iwl_mvm_get_roc_te.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_get_roc_te.exit

for.end.i:                                        ; preds = %for.cond.i
  %aux_roc_te_list.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 123
  %36 = ptrtoint ptr %aux_roc_te_list.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %aux_roc_te_list.i, align 4
  %cmp43.not.i = icmp eq ptr %37, %aux_roc_te_list.i
  br i1 %cmp43.not.i, label %iwl_mvm_get_roc_te.exit.thread, label %for.end.i.iwl_mvm_get_roc_te.exit_crit_edge

for.end.i.iwl_mvm_get_roc_te.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_get_roc_te.exit

iwl_mvm_get_roc_te.exit.thread:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %time_event_lock.i) #6
  br label %do.end

iwl_mvm_get_roc_te.exit:                          ; preds = %for.end.i.iwl_mvm_get_roc_te.exit_crit_edge, %for.body.i.iwl_mvm_get_roc_te.exit_crit_edge
  %.pn = phi ptr [ %37, %for.end.i.iwl_mvm_get_roc_te.exit_crit_edge ], [ %.pn.i, %for.body.i.iwl_mvm_get_roc_te.exit_crit_edge ]
  %te_data.1.i = getelementptr i8, ptr %.pn, i32 -4
  tail call void @_raw_spin_unlock_bh(ptr noundef %time_event_lock.i) #6
  %tobool.not = icmp eq ptr %te_data.1.i, null
  br i1 %tobool.not, label %iwl_mvm_get_roc_te.exit.do.end_crit_edge, label %if.end9

iwl_mvm_get_roc_te.exit.do.end_crit_edge:         ; preds = %iwl_mvm_get_roc_te.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %iwl_mvm_get_roc_te.exit.do.end_crit_edge, %iwl_mvm_get_roc_te.exit.thread
  %38 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mvm, align 8
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %39, ptr noundef nonnull @.str.15) #6
  br label %cleanup

if.end9:                                          ; preds = %iwl_mvm_get_roc_te.exit
  %40 = ptrtoint ptr %te_data.1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %te_data.1.i, align 4
  %drv_priv.i42 = getelementptr inbounds %struct.ieee80211_vif, ptr %41, i32 0, i32 19
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %43)
  %cmp14 = icmp eq i32 %43, 10
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.end9
  tail call void @iwl_mvm_remove_time_event(ptr noundef %mvm, ptr noundef %drv_priv.i42, ptr noundef nonnull %te_data.1.i)
  %status.i43 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %call.i44 = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %status.i43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool.not.i45 = icmp eq i32 %call.i44, 0
  br i1 %tobool.not.i45, label %if.then.i48, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i48:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %roc_done_wk.i.i46 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %44 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i47 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %44, ptr noundef %roc_done_wk.i.i46) #6
  br label %cleanup

if.else16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @iwl_mvm_remove_aux_roc_te(ptr noundef %mvm, ptr noundef %drv_priv.i42, ptr noundef nonnull %te_data.1.i)
  %roc_done_wk.i51 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %45 = load ptr, ptr @system_wq, align 4
  %call.i.i.i52 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %45, ptr noundef %roc_done_wk.i51) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else16, %if.then.i48, %if.then15.cleanup_crit_edge, %do.end, %if.else, %if.then.i, %iwl_mvm_cancel_session_protection.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_remove_aux_roc_te(ptr noundef %mvm, ptr nocapture noundef readonly %mvmvif, ptr noundef %te_data) unnamed_addr #0 align 64 {
entry:
  %aux_cmd = alloca %struct.iwl_hs20_roc_req, align 4
  %uid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %aux_cmd) #6
  %0 = getelementptr inbounds i8, ptr %aux_cmd, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 32)
  %fw.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %2 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.iwl_fw, ptr %3, i32 0, i32 5, i32 8, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uid) #6
  %6 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %uid, align 4, !annotation !163
  %call1 = call fastcc zeroext i1 @__iwl_mvm_remove_time_event(ptr noundef %mvm, ptr noundef %te_data, ptr noundef nonnull %uid)
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = lshr i32 %5, 14
  %8 = trunc i32 %7 to i16
  %9 = or i16 %8, -5
  %conv = add nsw i16 %9, 45
  %10 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uid, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %event_unique_id = getelementptr inbounds %struct.iwl_hs20_roc_req, ptr %aux_cmd, i32 0, i32 2
  %13 = ptrtoint ptr %event_unique_id to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %event_unique_id, align 4
  %action = getelementptr inbounds %struct.iwl_hs20_roc_req, ptr %aux_cmd, i32 0, i32 1
  %14 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 50331648, ptr %action, align 4
  %id = getelementptr inbounds %struct.iwl_mvm_vif, ptr %mvmvif, i32 0, i32 1
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %id, align 4
  %conv2 = zext i16 %16 to i32
  %color = getelementptr inbounds %struct.iwl_mvm_vif, ptr %mvmvif, i32 0, i32 2
  %17 = ptrtoint ptr %color to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %color, align 2
  %conv3 = zext i16 %18 to i32
  %shl4 = shl nuw nsw i32 %conv3, 8
  %or = or i32 %shl4, %conv2
  %19 = tail call i32 @llvm.bswap.i32(i32 %or)
  %20 = ptrtoint ptr %aux_cmd to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %aux_cmd, align 4
  %21 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %22, i32 noundef 32, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_remove_aux_roc_te, ptr noundef nonnull @.str.54, i32 noundef %11) #6
  %call9 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 83, i32 noundef 0, i16 noundef zeroext %conv, ptr noundef nonnull %aux_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end21, !prof !162

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 757, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uid) #6
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %aux_cmd) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_remove_csa_period(ptr noundef %mvm, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %time_event_data = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 32, i32 4, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !158

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1073, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %time_event_lock = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 89
  tail call void @_raw_spin_lock_bh(ptr noundef %time_event_lock) #6
  %id25 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 33, i32 1, i32 12
  %1 = ptrtoint ptr %id25 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id25, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %time_event_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %2)
  %cmp27.not = icmp eq i32 %2, 15
  br i1 %cmp27.not, label %if.end29, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iwl_mvm_remove_time_event(ptr noundef %mvm, ptr noundef %drv_priv.i, ptr noundef %time_event_data)
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_schedule_csa_period(ptr noundef %mvm, ptr noundef %vif, i32 noundef %duration, i32 noundef %apply_time) local_unnamed_addr #0 align 64 {
entry:
  %time_cmd = alloca %struct.iwl_time_event_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %time_event_data = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 32, i32 4, i32 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %time_cmd) #6
  %0 = getelementptr inbounds i8, ptr %time_cmd, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !158

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1093, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %running = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 33, i32 1, i32 4
  %3 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %running, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool25.not = icmp eq i8 %4, 0
  br i1 %tobool25.not, label %if.end.if.end38_crit_edge, label %if.then26

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then26:                                        ; preds = %if.end
  %time_event_lock = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 89
  tail call void @_raw_spin_lock_bh(ptr noundef %time_event_lock) #6
  %id27 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 33, i32 1, i32 12
  %5 = ptrtoint ptr %id27 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id27, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %time_event_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %6)
  %cmp29 = icmp eq i32 %6, 15
  br i1 %cmp29, label %do.end34, label %if.end37

do.end34:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %8, i32 noundef 32, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_schedule_csa_period, ptr noundef nonnull @.str.16) #6
  br label %cleanup53

if.end37:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iwl_mvm_remove_time_event(ptr noundef %mvm, ptr noundef %drv_priv.i, ptr noundef %time_event_data)
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end.if.end38_crit_edge
  %action = getelementptr inbounds %struct.iwl_time_event_cmd, ptr %time_cmd, i32 0, i32 1
  %9 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16777216, ptr %action, align 4
  %id39 = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %10 = ptrtoint ptr %id39 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %id39, align 4
  %conv = zext i16 %11 to i32
  %color = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 2
  %12 = ptrtoint ptr %color to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %color, align 2
  %conv40 = zext i16 %13 to i32
  %shl41 = shl nuw nsw i32 %conv40, 8
  %or = or i32 %shl41, %conv
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  %15 = ptrtoint ptr %time_cmd to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %time_cmd, align 4
  %id42 = getelementptr inbounds %struct.iwl_time_event_cmd, ptr %time_cmd, i32 0, i32 2
  %16 = ptrtoint ptr %id42 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 251658240, ptr %id42, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %apply_time)
  %apply_time43 = getelementptr inbounds %struct.iwl_time_event_cmd, ptr %time_cmd, i32 0, i32 3
  %18 = ptrtoint ptr %apply_time43 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %apply_time43, align 4
  %max_frags = getelementptr inbounds %struct.iwl_time_event_cmd, ptr %time_cmd, i32 0, i32 9
  %19 = ptrtoint ptr %max_frags to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %max_frags, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %duration)
  %duration44 = getelementptr inbounds %struct.iwl_time_event_cmd, ptr %time_cmd, i32 0, i32 7
  %21 = ptrtoint ptr %duration44 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %duration44, align 4
  %repeat = getelementptr inbounds %struct.iwl_time_event_cmd, ptr %time_cmd, i32 0, i32 8
  %22 = ptrtoint ptr %repeat to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %repeat, align 4
  %interval = getelementptr inbounds %struct.iwl_time_event_cmd, ptr %time_cmd, i32 0, i32 6
  %23 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16777216, ptr %interval, align 4
  %policy = getelementptr inbounds %struct.iwl_time_event_cmd, ptr %time_cmd, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %apply_time)
  %tobool45.not = icmp eq i32 %apply_time, 0
  %spec.select = select i1 %tobool45.not, i16 392, i16 384
  %24 = ptrtoint ptr %policy to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %spec.select, ptr %policy, align 2
  %call52 = call fastcc i32 @iwl_mvm_time_event_send_add(ptr noundef %mvm, ptr noundef %vif, ptr noundef %time_event_data, ptr noundef nonnull %time_cmd)
  br label %cleanup53

cleanup53:                                        ; preds = %if.end38, %do.end34
  %retval.1 = phi i32 [ %call52, %if.end38 ], [ -16, %do.end34 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %time_cmd) #6
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_schedule_session_protection(ptr noundef %mvm, ptr noundef %vif, i32 noundef %duration, i32 noundef %min_duration, i1 noundef zeroext %wait_for_notif) local_unnamed_addr #0 align 64 {
entry:
  %notif = alloca [1 x i16], align 2
  %wait_notif = alloca %struct.iwl_notification_wait, align 4
  %cmd = alloca %struct.iwl_mvm_session_prot_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %time_event_data = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 32, i32 4, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %notif) #6
  %0 = ptrtoint ptr %notif to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 1019, ptr %notif, align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wait_notif) #6
  %1 = call ptr @memset(ptr %wait_notif, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cmd) #6
  %2 = getelementptr inbounds %struct.iwl_mvm_session_prot_cmd, ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds %struct.iwl_mvm_session_prot_cmd, ptr %cmd, i32 0, i32 2
  %4 = getelementptr inbounds %struct.iwl_mvm_session_prot_cmd, ptr %cmd, i32 0, i32 3
  %5 = getelementptr inbounds %struct.iwl_mvm_session_prot_cmd, ptr %cmd, i32 0, i32 4
  %6 = getelementptr inbounds %struct.iwl_mvm_session_prot_cmd, ptr %cmd, i32 0, i32 5
  %id = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %id, align 4
  %conv2 = zext i16 %8 to i32
  %color = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 2
  %9 = ptrtoint ptr %color to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %color, align 2
  %conv3 = zext i16 %10 to i32
  %shl4 = shl nuw nsw i32 %conv3, 8
  %or = or i32 %shl4, %conv2
  %11 = tail call i32 @llvm.bswap.i32(i32 %or)
  %12 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %cmd, align 4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 16777216, ptr %2, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %3, align 4
  %mul = mul i32 %duration, 1000
  %div137 = lshr i32 %mul, 10
  %15 = tail call i32 @llvm.bswap.i32(i32 %div137)
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %4, align 4
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %5, align 4
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %19 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i144 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %cmp.not = icmp eq i32 %call.i144, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !158

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1177, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %time_event_lock = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 89
  tail call void @_raw_spin_lock_bh(ptr noundef %time_event_lock) #6
  %running = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 33, i32 1, i32 4
  %20 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %running, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool30.not = icmp eq i8 %21, 0
  br i1 %tobool30.not, label %if.end.if.end47_crit_edge, label %land.lhs.true

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

land.lhs.true:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %mul32 = shl i32 %min_duration, 10
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %mul32) #6
  %add = add i32 %call3.i, %22
  %end_jiffies = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 33, i32 0, i32 4
  %23 = ptrtoint ptr %end_jiffies to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %end_jiffies, align 4
  %sub = sub i32 %add, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp34 = icmp slt i32 %sub, 0
  br i1 %cmp34, label %do.end40, label %land.lhs.true.if.end47_crit_edge

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

do.end40:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mvm, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %sub42 = sub i32 %24, %27
  %call43 = tail call i32 @jiffies_to_msecs(i32 noundef %sub42) #6
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %26, i32 noundef 32, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_schedule_session_protection, ptr noundef nonnull @.str.2, i32 noundef %call43) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %time_event_lock) #6
  br label %cleanup

if.end47:                                         ; preds = %land.lhs.true.if.end47_crit_edge, %if.end.if.end47_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %28 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %if.end47.if.end.i145_crit_edge, label %land.rhs.i

if.end47.if.end.i145_crit_edge:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i145

land.rhs.i:                                       ; preds = %if.end47
  %dep_map.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 89, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i145_crit_edge, !prof !158

land.rhs.i.if.end.i145_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i145

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i145

if.end.i145:                                      ; preds = %do.end.i, %land.rhs.i.if.end.i145_crit_edge, %if.end47.if.end.i145_crit_edge
  %tobool24.not.i = icmp eq ptr %time_event_data, null
  br i1 %tobool24.not.i, label %if.end.i145.iwl_mvm_te_clear_data.exit_crit_edge, label %lor.lhs.false.i

if.end.i145.iwl_mvm_te_clear_data.exit_crit_edge: ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_te_clear_data.exit

lor.lhs.false.i:                                  ; preds = %if.end.i145
  %29 = ptrtoint ptr %time_event_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %time_event_data, align 4
  %tobool25.not.i = icmp eq ptr %30, null
  br i1 %tobool25.not.i, label %lor.lhs.false.i.iwl_mvm_te_clear_data.exit_crit_edge, label %if.end27.i

lor.lhs.false.i.iwl_mvm_te_clear_data.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_te_clear_data.exit

if.end27.i:                                       ; preds = %lor.lhs.false.i
  %list.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 32, i32 5
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end27.i.list_del.exit.i_crit_edge

if.end27.i.list_del.exit.i_crit_edge:             ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 33
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i, align 4
  %33 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end27.i.list_del.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 33
  %37 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %list.i, ptr %list.i, align 4
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %list.i, ptr %prev.i.i, align 4
  %39 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %running, align 4
  %uid.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 33, i32 1, i32 8
  %40 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %uid.i, align 4
  br label %iwl_mvm_te_clear_data.exit

iwl_mvm_te_clear_data.exit:                       ; preds = %list_del.exit.i, %lor.lhs.false.i.iwl_mvm_te_clear_data.exit_crit_edge, %if.end.i145.iwl_mvm_te_clear_data.exit_crit_edge
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %3, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %id49 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 33, i32 1, i32 12
  %44 = ptrtoint ptr %id49 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %id49, align 4
  %45 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %4, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %duration51 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 33, i32 1
  %48 = ptrtoint ptr %duration51 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %duration51, align 4
  %49 = ptrtoint ptr %time_event_data to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %vif, ptr %time_event_data, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %time_event_lock) #6
  %50 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %51, i32 noundef 32, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_schedule_session_protection, ptr noundef nonnull @.str.17, i32 noundef %47) #6
  br i1 %wait_for_notif, label %if.end78, label %if.then63

if.then63:                                        ; preds = %iwl_mvm_te_clear_data.exit
  %call65 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 773, i32 noundef 0, i16 noundef zeroext 24, ptr noundef nonnull %cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then63.cleanup_crit_edge, label %do.end71

if.then63.cleanup_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end71:                                         ; preds = %if.then63
  %52 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %53, i32 noundef 0, ptr noundef nonnull @.str.18) #6
  call void @_raw_spin_lock_bh(ptr noundef %time_event_lock) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %54 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i146 = icmp eq i32 %54, 0
  br i1 %tobool.not.i146, label %do.end71.if.end.i153_crit_edge, label %land.rhs.i150

do.end71.if.end.i153_crit_edge:                   ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i153

land.rhs.i150:                                    ; preds = %do.end71
  %dep_map.i147 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 89, i32 0, i32 0, i32 4
  %call.i.i148 = call i32 @lock_is_held_type(ptr noundef %dep_map.i147, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i148)
  %cmp.not.i149 = icmp eq i32 %call.i.i148, 0
  br i1 %cmp.not.i149, label %do.end.i151, label %land.rhs.i150.if.end.i153_crit_edge, !prof !158

land.rhs.i150.if.end.i153_crit_edge:              ; preds = %land.rhs.i150
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i153

do.end.i151:                                      ; preds = %land.rhs.i150
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i153

if.end.i153:                                      ; preds = %do.end.i151, %land.rhs.i150.if.end.i153_crit_edge, %do.end71.if.end.i153_crit_edge
  br i1 %tobool24.not.i, label %if.end.i153.iwl_mvm_te_clear_data.exit167_crit_edge, label %lor.lhs.false.i155

if.end.i153.iwl_mvm_te_clear_data.exit167_crit_edge: ; preds = %if.end.i153
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_te_clear_data.exit167

lor.lhs.false.i155:                               ; preds = %if.end.i153
  %55 = ptrtoint ptr %time_event_data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %time_event_data, align 4
  %tobool25.not.i154 = icmp eq ptr %56, null
  br i1 %tobool25.not.i154, label %lor.lhs.false.i155.iwl_mvm_te_clear_data.exit167_crit_edge, label %if.end27.i158

lor.lhs.false.i155.iwl_mvm_te_clear_data.exit167_crit_edge: ; preds = %lor.lhs.false.i155
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_mvm_te_clear_data.exit167

if.end27.i158:                                    ; preds = %lor.lhs.false.i155
  %list.i156 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 32, i32 5
  %call.i.i.i157 = call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i156) #6
  br i1 %call.i.i.i157, label %if.end.i.i.i161, label %if.end27.i158.list_del.exit.i166_crit_edge

if.end27.i158.list_del.exit.i166_crit_edge:       ; preds = %if.end27.i158
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i166

if.end.i.i.i161:                                  ; preds = %if.end27.i158
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i159 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 33
  %57 = ptrtoint ptr %prev.i.i.i159 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i.i159, align 4
  %59 = ptrtoint ptr %list.i156 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %list.i156, align 4
  %prev1.i.i.i.i160 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i.i.i160 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev1.i.i.i.i160, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %58, align 4
  br label %list_del.exit.i166

list_del.exit.i166:                               ; preds = %if.end.i.i.i161, %if.end27.i158.list_del.exit.i166_crit_edge
  %prev.i.i162 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 33
  %63 = ptrtoint ptr %list.i156 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %list.i156, ptr %list.i156, align 4
  %64 = ptrtoint ptr %prev.i.i162 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %list.i156, ptr %prev.i.i162, align 4
  %65 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %running, align 4
  %uid.i164 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 33, i32 1, i32 8
  %66 = ptrtoint ptr %uid.i164 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %uid.i164, align 4
  %67 = ptrtoint ptr %id49 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 16, ptr %id49, align 4
  %68 = ptrtoint ptr %time_event_data to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %time_event_data, align 4
  br label %iwl_mvm_te_clear_data.exit167

iwl_mvm_te_clear_data.exit167:                    ; preds = %list_del.exit.i166, %lor.lhs.false.i155.iwl_mvm_te_clear_data.exit167_crit_edge, %if.end.i153.iwl_mvm_te_clear_data.exit167_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %time_event_lock) #6
  br label %cleanup

if.end78:                                         ; preds = %iwl_mvm_te_clear_data.exit
  %notif_wait = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 23
  call void @iwl_init_notification_wait(ptr noundef %notif_wait, ptr noundef nonnull %wait_notif, ptr noundef nonnull %notif, i32 noundef 1, ptr noundef nonnull @iwl_mvm_session_prot_notif, ptr noundef null) #6
  %call80 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 773, i32 noundef 0, i16 noundef zeroext 24, ptr noundef nonnull %cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.else, label %do.end86

do.end86:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %70, i32 noundef 0, ptr noundef nonnull @.str.18) #6
  call void @iwl_remove_notification(ptr noundef %notif_wait, ptr noundef nonnull %wait_notif) #6
  br label %cleanup

if.else:                                          ; preds = %if.end78
  %call.i138 = call i32 @jiffies_to_usecs(i32 noundef 1073741822) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 102400, i32 %call.i138)
  %cmp.i139 = icmp ult i32 %call.i138, 102400
  %spec.select = select i1 %cmp.i139, i32 1073741822, i32 11
  %call93 = call i32 @iwl_wait_notification(ptr noundef %notif_wait, ptr noundef nonnull %wait_notif, i32 noundef %spec.select) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.else.cleanup_crit_edge, label %do.end99

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end99:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %72, i32 noundef 0, ptr noundef nonnull @.str.19) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end99, %if.else.cleanup_crit_edge, %do.end86, %iwl_mvm_te_clear_data.exit167, %if.then63.cleanup_crit_edge, %do.end40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cmd) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wait_notif) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %notif) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @iwl_mvm_session_prot_notif(ptr nocapture noundef readonly %notif_wait, ptr nocapture noundef readonly %pkt, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %notif_wait, i32 -288
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %pkt, align 1
  %2 = and i32 %1, -12648448
  %hdr = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 0, i32 1
  %3 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hdr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %4)
  %cmp.not = icmp eq i8 %4, -5
  br i1 %cmp.not, label %lor.rhs, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %group_id = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %group_id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %group_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp4.not = icmp eq i8 %6, 3
  br i1 %cmp4.not, label %if.end27, label %lor.rhs.do.end_crit_edge, !prof !162

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1141, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end27:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_const_cmp4(i32 335544320, i32 %2)
  %cmp28.not = icmp eq i32 %2, 335544320
  br i1 %cmp28.not, label %if.end88, label %land.rhs

land.rhs:                                         ; preds = %if.end27
  %.b109 = load i1, ptr @iwl_mvm_session_prot_notif.__already_done, align 1
  br i1 %.b109, label %land.rhs.do.end85_crit_edge, label %if.then45, !prof !162

land.rhs.do.end85_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end85

if.then45:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @iwl_mvm_session_prot_notif.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1144, i32 noundef 9, ptr noundef null) #6
  br label %do.end85

do.end85:                                         ; preds = %if.then45, %land.rhs.do.end85_crit_edge
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %8, i32 noundef 0, ptr noundef nonnull @.str.55) #6
  br label %cleanup

if.end88:                                         ; preds = %if.end27
  %status = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 1, i32 1
  %9 = ptrtoint ptr %status to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool90.not = icmp eq i32 %10, 0
  br i1 %tobool90.not, label %do.end95, label %if.end88.cleanup_crit_edge

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end95:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %12, i32 noundef 0, ptr noundef nonnull @.str.45) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end95, %if.end88.cleanup_crit_edge, %do.end85, %do.end
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_te_check_trigger(ptr noundef %mvm, ptr nocapture noundef readonly %notif, ptr nocapture noundef readonly %te_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fwrt = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40
  %0 = ptrtoint ptr %te_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %te_data, align 4
  %call = tail call ptr @ieee80211_vif_to_wdev(ptr noundef %1) #6
  %2 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwrt, align 8
  %internal_ini_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %3, i32 0, i32 32, i32 10
  %4 = ptrtoint ptr %internal_ini_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %internal_ini_cfg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i.i, label %iwl_trans_dbg_ini_valid.exit.i, label %entry.cleanup24_crit_edge

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup24

iwl_trans_dbg_ini_valid.exit.i:                   ; preds = %entry
  %external_ini_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %3, i32 0, i32 32, i32 11
  %6 = ptrtoint ptr %external_ini_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %external_ini_cfg.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.i.not.i = icmp eq i32 %7, 0
  br i1 %cmp2.i.not.i, label %if.end.i, label %iwl_trans_dbg_ini_valid.exit.i.cleanup24_crit_edge

iwl_trans_dbg_ini_valid.exit.i.cleanup24_crit_edge: ; preds = %iwl_trans_dbg_ini_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup24

if.end.i:                                         ; preds = %iwl_trans_dbg_ini_valid.exit.i
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 1
  %8 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw.i, align 4
  %arrayidx.i = getelementptr %struct.iwl_fw, ptr %9, i32 0, i32 20, i32 3, i32 10
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i.cleanup24_crit_edge, label %if.end4.i

if.end.i.cleanup24_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup24

if.end4.i:                                        ; preds = %if.end.i
  %trig_dis_ms.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %trig_dis_ms.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %trig_dis_ms.i.i, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #6
  %conv.i.i = zext i16 %14 to i32
  %mul.i.i = mul nuw nsw i32 %conv.i.i, 1000
  %tobool.not.i.i = icmp eq ptr %call, null
  br i1 %tobool.not.i.i, label %if.end4.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end4.i.if.end.i.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end4.i
  %vif_type.i.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %vif_type.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %vif_type.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %iwl_fw_dbg_trigger_vif_match.exit.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

iwl_fw_dbg_trigger_vif_match.exit.i.i:            ; preds = %land.lhs.true.i.i
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  %iftype.i.i.i = getelementptr inbounds %struct.wireless_dev, ptr %call, i32 0, i32 1
  %18 = ptrtoint ptr %iftype.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iftype.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %17)
  %cmp1.i.i.i = icmp eq i32 %19, %17
  br i1 %cmp1.i.i.i, label %iwl_fw_dbg_trigger_vif_match.exit.i.i.if.end.i.i_crit_edge, label %iwl_fw_dbg_trigger_vif_match.exit.i.i.cleanup24_crit_edge

iwl_fw_dbg_trigger_vif_match.exit.i.i.cleanup24_crit_edge: ; preds = %iwl_fw_dbg_trigger_vif_match.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup24

iwl_fw_dbg_trigger_vif_match.exit.i.i.if.end.i.i_crit_edge: ; preds = %iwl_fw_dbg_trigger_vif_match.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %iwl_fw_dbg_trigger_vif_match.exit.i.i.if.end.i.i_crit_edge, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end4.i.if.end.i.i_crit_edge
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %11, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  %call3.i.i.i.i = tail call i32 @__usecs_to_jiffies(i32 noundef %mul.i.i) #6
  %arrayidx.i.i.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 12, i32 3, i32 %22
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %26 = add i32 %24, %call3.i.i.i.i
  %sub.i.i.i = sub i32 %25, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i16.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i16.i.i, label %do.end.i.i, label %land.lhs.true.i.i.i.if.end7.i.i_crit_edge

land.lhs.true.i.i.i.if.end7.i.i_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 2
  %27 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i.i, align 8
  %29 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %11, align 1
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %28, ptr noundef nonnull @.str.23, i32 noundef %30) #6
  br label %cleanup24

if.end7.i.i:                                      ; preds = %land.lhs.true.i.i.i.if.end7.i.i_crit_edge, %if.end.i.i.if.end7.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %32 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx.i.i.i, align 4
  %mode.i.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %11, i32 0, i32 4
  %33 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %mode.i.i.i, align 1
  %35 = and i8 %34, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i17.i.i = icmp eq i8 %35, 0
  br i1 %tobool.not.i17.i.i, label %if.end7.i.i.cleanup24_crit_edge, label %land.rhs.i.i.i

if.end7.i.i.cleanup24_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup24

land.rhs.i.i.i:                                   ; preds = %if.end7.i.i
  %conf.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 12, i32 2
  %36 = ptrtoint ptr %conf.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %conf.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %37)
  %cmp.i18.i.i = icmp eq i8 %37, -1
  br i1 %cmp.i18.i.i, label %land.rhs.i.i.i.if.end_crit_edge, label %iwl_fw_dbg_trigger_check_stop.exit.i

land.rhs.i.i.i.if.end_crit_edge:                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

iwl_fw_dbg_trigger_check_stop.exit.i:             ; preds = %land.rhs.i.i.i
  %conv1.i.i.i = zext i8 %37 to i32
  %shl.i.i.i = shl nuw i32 1, %conv1.i.i.i
  %stop_conf_ids.i.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %11, i32 0, i32 2
  %38 = ptrtoint ptr %stop_conf_ids.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %stop_conf_ids.i.i.i, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #6
  %and6.i.i.i = and i32 %40, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.i.i.not.i = icmp eq i32 %and6.i.i.i, 0
  br i1 %tobool7.i.i.not.i, label %iwl_fw_dbg_trigger_check_stop.exit.i.cleanup24_crit_edge, label %iwl_fw_dbg_trigger_check_stop.exit.i.if.end_crit_edge

iwl_fw_dbg_trigger_check_stop.exit.i.if.end_crit_edge: ; preds = %iwl_fw_dbg_trigger_check_stop.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

iwl_fw_dbg_trigger_check_stop.exit.i.cleanup24_crit_edge: ; preds = %iwl_fw_dbg_trigger_check_stop.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup24

if.end:                                           ; preds = %iwl_fw_dbg_trigger_check_stop.exit.i.if.end_crit_edge, %land.rhs.i.i.i.if.end_crit_edge
  %data = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %11, i32 0, i32 10
  %id9 = getelementptr inbounds %struct.iwl_mvm_time_event_data, ptr %te_data, i32 0, i32 6
  %41 = ptrtoint ptr %id9 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id9, align 4
  %action = getelementptr inbounds %struct.iwl_time_event_notif, ptr %notif, i32 0, i32 4
  %status = getelementptr inbounds %struct.iwl_time_event_notif, ptr %notif, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.051 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.anon.160], ptr %data, i32 0, i32 %i.051
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %arrayidx, align 1
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %status_bitmap = getelementptr [16 x %struct.anon.160], ptr %data, i32 0, i32 %i.051, i32 2
  %46 = ptrtoint ptr %status_bitmap to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %status_bitmap, align 1
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %42)
  %cmp10.not = icmp eq i32 %45, %42
  br i1 %cmp10.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %action_bitmap = getelementptr [16 x %struct.anon.160], ptr %data, i32 0, i32 %i.051, i32 1
  %49 = ptrtoint ptr %action_bitmap to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %action_bitmap, align 1
  %51 = ptrtoint ptr %action to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %action, align 1
  %53 = and i32 %52, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool11.not = icmp eq i32 %53, 0
  br i1 %tobool11.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false12

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %54 = ptrtoint ptr %status to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %status, align 1
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %shl = shl nuw i32 1, %56
  %and13 = and i32 %shl, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %lor.lhs.false12.for.inc_crit_edge, label %cleanup

lor.lhs.false12.for.inc_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

cleanup:                                          ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #8
  %57 = tail call i32 @llvm.bswap.i32(i32 %52)
  %call21 = tail call i32 (ptr, ptr, ptr, ...) @iwl_fw_dbg_collect_trig(ptr noundef %fwrt, ptr noundef nonnull %11, ptr noundef nonnull @.str.22, i32 noundef %42, i32 noundef %57, i32 noundef %56) #6
  br label %cleanup24

for.inc:                                          ; preds = %lor.lhs.false12.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.cleanup24_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup24_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup24

cleanup24:                                        ; preds = %for.inc.cleanup24_crit_edge, %cleanup, %iwl_fw_dbg_trigger_check_stop.exit.i.cleanup24_crit_edge, %if.end7.i.i.cleanup24_crit_edge, %do.end.i.i, %iwl_fw_dbg_trigger_vif_match.exit.i.i.cleanup24_crit_edge, %if.end.i.cleanup24_crit_edge, %iwl_trans_dbg_ini_valid.exit.i.cleanup24_crit_edge, %entry.cleanup24_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_vif_to_wdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_fw_dbg_collect_trig(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_connection_loss(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_csa_client_absent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_chswitch_done(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_beacon_cntdwn_is_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_csa_finish(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @iwl_mvm_time_event_response(ptr nocapture noundef readonly %notif_wait, ptr nocapture noundef readonly %pkt, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %notif_wait, i32 -288
  %hdr = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hdr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %1)
  %cmp.not = icmp eq i8 %1, 41
  br i1 %cmp.not, label %if.end23, label %do.end, !prof !162

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 491, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %2 = ptrtoint ptr %pkt to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %pkt, align 1
  %4 = and i32 %3, -12648448
  call void @__sanitizer_cov_trace_const_cmp4(i32 335544320, i32 %4)
  %cmp24.not = icmp eq i32 %4, 335544320
  br i1 %cmp24.not, label %if.end84, label %land.rhs

land.rhs:                                         ; preds = %if.end23
  %.b170 = load i1, ptr @iwl_mvm_time_event_response.__already_done, align 1
  br i1 %.b170, label %land.rhs.do.end81_crit_edge, label %if.then41, !prof !162

land.rhs.do.end81_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end81

if.then41:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @iwl_mvm_time_event_response.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 494, i32 noundef 9, ptr noundef null) #6
  br label %do.end81

do.end81:                                         ; preds = %if.then41, %land.rhs.do.end81_crit_edge
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %6, i32 noundef 0, ptr noundef nonnull @.str.40) #6
  br label %cleanup

if.end84:                                         ; preds = %if.end23
  %id = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 1, i32 1
  %7 = ptrtoint ptr %id to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %id, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %id87 = getelementptr inbounds %struct.iwl_mvm_time_event_data, ptr %data, i32 0, i32 6
  %10 = ptrtoint ptr %id87 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id87, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp88.not = icmp eq i32 %9, %11
  br i1 %cmp88.not, label %if.end145, label %land.rhs97

land.rhs97:                                       ; preds = %if.end84
  %.b168169 = load i1, ptr @iwl_mvm_time_event_response.__already_done.41, align 1
  br i1 %.b168169, label %land.rhs97.cleanup_crit_edge, label %if.then108, !prof !162

land.rhs97.cleanup_crit_edge:                     ; preds = %land.rhs97
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then108:                                       ; preds = %land.rhs97
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @iwl_mvm_time_event_response.__already_done.41, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 502, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end145:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  %unique_id = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 2
  %12 = ptrtoint ptr %unique_id to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %unique_id, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %uid = getelementptr inbounds %struct.iwl_mvm_time_event_data, ptr %data, i32 0, i32 5
  %15 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %uid, align 4
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %17, i32 noundef 32, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_time_event_response, ptr noundef nonnull @.str.42, i32 noundef %14) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end145, %if.then108, %land.rhs97.cleanup_crit_edge, %do.end81, %do.end
  %retval.0 = phi i1 [ true, %do.end ], [ true, %do.end81 ], [ true, %if.end145 ], [ false, %if.then108 ], [ false, %land.rhs97.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_sta_modify_disable_tx(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_iwl_dbg_tlv_time_point(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !14, !16, !17, !19, !21, !22, !24, !26, !28, !30, !32, !34, !35, !37, !39, !40, !42, !44, !46, !48, !50, !51, !53, !55, !57, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !79, !81, !83, !85, !86, !88, !89, !91, !93, !95, !96, !98, !100, !102, !104, !106, !108, !109, !111, !113, !115, !116, !118, !120, !121, !123, !124, !125, !127, !129, !131, !132, !134, !136, !137, !139, !141, !143, !144, !146}
!llvm.named.register.sp = !{!148}
!llvm.module.flags = !{!149, !150, !151, !152, !153, !154, !155, !156}
!llvm.ident = !{!157}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 28, i32 2}
!2 = !{ptr @__func__.iwl_mvm_rx_time_event_notif, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 433, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__func__.iwl_mvm_protect_session, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 587, i32 3}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 593, i32 3}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 640, i32 3}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 644, i32 3}
!14 = !{ptr @__func__.iwl_mvm_remove_time_event, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 783, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 787, i32 3}
!19 = !{ptr @__func__.iwl_mvm_stop_session_protection, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 806, i32 4}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 812, i32 3}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 845, i32 11}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 864, i32 11}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 865, i32 11}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 940, i32 3}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 962, i32 3}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 1051, i32 3}
!37 = !{ptr @__func__.iwl_mvm_schedule_csa_period, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 1103, i32 4}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @__func__.iwl_mvm_schedule_session_protection, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 1182, i32 3}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 1199, i32 2}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 1207, i32 4}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 1230, i32 3}
!48 = !{ptr @__func__.iwl_mvm_aux_roc_te_handle_notif, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 394, i32 2}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 414, i32 3}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 260, i32 6}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../fw/dbg.h", i32 121, i32 3}
!57 = !{ptr @__func__.iwl_mvm_te_handle_notif, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 293, i32 2}
!59 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 311, i32 10}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 313, i32 10}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 315, i32 3}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 324, i32 3}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 340, i32 5}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 351, i32 5}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 352, i32 5}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 370, i32 3}
!76 = !{ptr @__func__.iwl_mvm_te_handle_notify_csa, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 203, i32 3}
!78 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 214, i32 7}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 223, i32 3}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 126, i32 12}
!85 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @__func__.iwl_mvm_csa_noa_start, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 130, i32 2}
!88 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 139, i32 3}
!91 = !{ptr @iwl_mvm_time_event_send_add.time_event_response, !92, !"time_event_response", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 516, i32 19}
!93 = !{ptr @__func__.iwl_mvm_time_event_send_add, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 522, i32 2}
!95 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 553, i32 3}
!98 = distinct !{null, !99, !"__already_done", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 561, i32 2}
!100 = distinct !{null, !101, !"__already_done", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 494, i32 6}
!102 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 495, i32 3}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 502, i32 6}
!106 = !{ptr @__func__.iwl_mvm_time_event_response, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 506, i32 2}
!108 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!109 = distinct !{null, !110, !"__already_done", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 462, i32 6}
!111 = !{ptr @.str.43, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 463, i32 3}
!113 = !{ptr @__func__.iwl_mvm_te_notif, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 473, i32 2}
!115 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 476, i32 3}
!118 = !{ptr @__func__.__iwl_mvm_remove_time_event, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 721, i32 4}
!120 = !{ptr @.str.46, !119, !"<string literal>", i1 false, i1 false}
!121 = distinct !{null, !122, !"__warned", i1 false, i1 false}
!122 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!123 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.49, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h", i32 1216, i32 6}
!127 = distinct !{null, !128, !"__warned", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h", i32 1220, i32 10}
!129 = distinct !{null, !130, !"__warned", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h", i32 1222, i32 9}
!131 = distinct !{null, !130, !"<string literal>", i1 false, i1 false}
!132 = distinct !{null, !133, !"__warned", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h", i32 1186, i32 8}
!134 = distinct !{null, !135, !"__warned", i1 false, i1 false}
!135 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!136 = !{ptr @.str.52, !135, !"<string literal>", i1 false, i1 false}
!137 = distinct !{null, !138, !"__already_done", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 921, i32 3}
!139 = !{ptr @.str.53, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 665, i32 3}
!141 = !{ptr @__func__.iwl_mvm_remove_aux_roc_te, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 752, i32 2}
!143 = !{ptr @.str.54, !142, !"<string literal>", i1 false, i1 false}
!144 = distinct !{null, !145, !"__already_done", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 1144, i32 6}
!146 = !{ptr @.str.55, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/time-event.c", i32 1145, i32 3}
!148 = !{!"sp"}
!149 = !{i32 1, !"wchar_size", i32 2}
!150 = !{i32 1, !"min_enum_size", i32 4}
!151 = !{i32 8, !"branch-target-enforcement", i32 0}
!152 = !{i32 8, !"sign-return-address", i32 0}
!153 = !{i32 8, !"sign-return-address-all", i32 0}
!154 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!155 = !{i32 7, !"uwtable", i32 1}
!156 = !{i32 7, !"frame-pointer", i32 2}
!157 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!158 = !{!"branch_weights", i32 1, i32 2000}
!159 = !{i8 0, i8 2}
!160 = !{i64 2149978366}
!161 = !{i64 2149978632}
!162 = !{!"branch_weights", i32 2000, i32 1}
!163 = !{!"auto-init"}
!164 = !{!"branch_weights", i32 2002, i32 2000}
