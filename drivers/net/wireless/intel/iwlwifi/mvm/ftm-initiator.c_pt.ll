; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c"
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
%struct.iwl_mvm_ftm_pasn_entry = type { %struct.list_head, [6 x i8], [32 x i8], [32 x i8], i8, [6 x i8], [6 x i8] }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.cfg80211_pmsr_result = type { i64, i64, i32, [6 x i8], i8, i32, %union.anon.160 }
%union.anon.160 = type { %struct.cfg80211_pmsr_ftm_result }
%struct.cfg80211_pmsr_ftm_result = type { ptr, ptr, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i32, i32, %struct.rate_info, %struct.rate_info, i64, i64, i64, i64, i64, i64, i16 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.cfg80211_pmsr_request = type { i64, ptr, i32, i32, i32, [6 x i8], [6 x i8], %struct.list_head, [0 x %struct.cfg80211_pmsr_request_peer] }
%struct.cfg80211_pmsr_request_peer = type { [6 x i8], %struct.cfg80211_chan_def, i8, %struct.cfg80211_pmsr_ftm_request_peer }
%struct.cfg80211_pmsr_ftm_request_peer = type { i32, i16, i8, i8, i8, i8, i8, i8 }
%struct.iwl_tof_range_req_cmd_v5 = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i8], [6 x i8], [6 x i8], i8, i8, i16, i16, [5 x %struct.iwl_tof_range_req_ap_entry_v2] }
%struct.iwl_tof_range_req_ap_entry_v2 = type { i8, i8, i8, i8, [6 x i8], i8, i8, i16, i8, i8, i32, i8, i8, i8, i8, i8, i8, i16 }
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
%struct.iwl_tof_range_req_cmd_v7 = type { i32, i8, i8, [6 x i8], [6 x i8], [6 x i8], i32, i32, i16, i16, [5 x %struct.iwl_tof_range_req_ap_entry_v3] }
%struct.iwl_tof_range_req_ap_entry_v3 = type { i32, i8, i8, i8, i8, [6 x i8], i16, i8, i8, i16, i32 }
%struct.iwl_tof_range_req_cmd_v8 = type { i32, i8, i8, [6 x i8], [6 x i8], [6 x i8], i32, i32, i16, i16, [5 x %struct.iwl_tof_range_req_ap_entry_v4] }
%struct.iwl_tof_range_req_ap_entry_v4 = type { i32, i8, i8, i8, i8, [6 x i8], i16, i8, i8, i16, [32 x i8], [32 x i8] }
%struct.iwl_tof_range_req_cmd_v9 = type { i32, i8, i8, [6 x i8], [6 x i8], [6 x i8], i32, i32, [5 x %struct.iwl_tof_range_req_ap_entry_v6] }
%struct.iwl_tof_range_req_ap_entry_v6 = type { i32, i8, i8, i8, i8, [6 x i8], i16, i8, i8, i8, i8, [32 x i8], [32 x i8], [5 x i16], i16 }
%struct.iwl_tof_range_req_cmd_v11 = type { i32, i8, i8, [6 x i8], [6 x i8], [6 x i8], i32, i32, [5 x %struct.iwl_tof_range_req_ap_entry_v7] }
%struct.iwl_tof_range_req_ap_entry_v7 = type { i32, i8, i8, i8, i8, [6 x i8], i16, i8, i8, i8, i8, [32 x i8], [32 x i8], [5 x i16], i16, [6 x i8], [6 x i8] }
%struct.iwl_tof_range_req_cmd_v12 = type { i32, i8, i8, [6 x i8], [6 x i8], [6 x i8], i32, i32, [5 x %struct.iwl_tof_range_req_ap_entry_v8] }
%struct.iwl_tof_range_req_ap_entry_v8 = type { i32, i8, i8, i8, i8, [6 x i8], i16, i8, i8, i8, i8, [32 x i8], [32 x i8], [5 x i16], i16, [6 x i8], [6 x i8], i8, i8, i8, i8 }
%struct.iwl_tof_range_req_cmd_v13 = type { i32, i8, i8, [6 x i8], [6 x i8], [6 x i8], i32, i32, [5 x %struct.iwl_tof_range_req_ap_entry_v9] }
%struct.iwl_tof_range_req_ap_entry_v9 = type { i32, i8, i8, i8, i8, [6 x i8], i16, i8, i8, i8, i8, [32 x i8], [32 x i8], [5 x i16], i16, [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16 }
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
%struct.iwl_mvm_vif = type { ptr, i16, i16, i8, [6 x i8], i8, i8, i16, i8, i8, i8, i8, i8, i8, %struct.iwl_mvm_vif_bf_data, %struct.anon.130, i32, i32, [4 x %struct.ieee80211_tx_queue_params], %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta, ptr, %struct.anon.134, i32, i8, i16, [12 x %struct.in6_addr], [1 x i32], i32, ptr, ptr, %struct.iwl_dbgfs_pm, %struct.iwl_dbgfs_bf, %struct.iwl_mac_power_cmd, i32, [4 x i32], [6 x i8], %struct.delayed_work, i8, i8, i16, i16, i16, %struct.delayed_work, i8, i64, ptr, [4 x ptr], i8, %struct.anon.135 }
%struct.iwl_mvm_vif_bf_data = type { i8, i8, i32, i32, i32, i32, i32 }
%struct.anon.130 = type { i32, i32, i8 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.iwl_mvm_time_event_data = type { ptr, %struct.list_head, i32, i32, i8, i32, i32 }
%struct.anon.134 = type { [24 x i8], [32 x i8], i32, i32, i32, i64, i8 }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%struct.iwl_dbgfs_pm = type { i16, i32, i32, i8, i8, i8, i32, i8, i8, i8, i32 }
%struct.iwl_dbgfs_bf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iwl_mac_power_cmd = type { i32, i16, i16, i32, i32, i32, i32, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.135 = type { [2 x ptr] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.iwl_tof_range_abort_cmd = type { i8, [3 x i8] }
%struct.iwl_rx_cmd_buffer = type { ptr, i32, i8, i32, i32 }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }
%struct.iwl_tof_range_rsp_ntfy_v8 = type { i8, i8, i8, i8, [5 x %struct.iwl_tof_range_rsp_ap_entry_ntfy_v6] }
%struct.iwl_tof_range_rsp_ap_entry_ntfy_v6 = type { [6 x i8], i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i16, i16, i32, i8, [3 x i8], [6 x i8], [6 x i8] }
%struct.iwl_tof_range_rsp_ntfy_v5 = type { i8, i8, i8, i8, [5 x %struct.iwl_tof_range_rsp_ap_entry_ntfy_v3] }
%struct.iwl_tof_range_rsp_ap_entry_ntfy_v3 = type { [6 x i8], i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i16, i16, i32 }
%struct.iwl_tof_range_rsp_ap_entry_ntfy_v5 = type { [6 x i8], i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i16, i16, i32, i8, [3 x i8] }
%struct.iwl_tof_range_rsp_ap_entry_ntfy_v4 = type { [6 x i8], i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i16, i16, i32 }
%struct.iwl_mvm_loc_entry = type { %struct.list_head, [6 x i8], i8, i8, [0 x i8] }
%struct.anon.174 = type { i8, %union.anon.175 }
%union.anon.175 = type <{ %struct.anon.180, [17 x i8] }>
%struct.anon.180 = type { i8, i8, i16, i16, i16, [0 x i8] }
%struct.anon.192 = type <{ i8, i8, i8, [6 x i8], [6 x i8], i16, i16, [0 x i8] }>
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c\00", [41 x i8] zeroinitializer }, align 32
@iwl_mvm_ftm_add_pasn_sta.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Invalid key length: tk_len=%u hltk_len=%u\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_ftm_initiator_smooth_config = private unnamed_addr constant [36 x i8] c"iwl_mvm_ftm_initiator_smooth_config\00", align 1
@.str.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"enable=%u, alpha=%u, age_jiffies=%u, thresh=(%u:%u)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to abort FTM process\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_ftm_range_resp = private unnamed_addr constant [23 x i8] c"iwl_mvm_ftm_range_resp\00", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Range response received\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"request id: %lld, num of entries: %hhu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Unknown address (%pM, target #%d) in FTM response\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RTT confidence: %hhu\0A\00", [42 x i8] zeroinitializer }, align 32
@iwl_mvm_ftm_lc_notif.rprt_type_lci = internal constant { i8, [31 x i8] } { i8 8, [31 x i8] zeroinitializer }, align 32
@iwl_mvm_ftm_lc_notif.rprt_type_civic = internal constant { i8, [31 x i8] } { i8 11, [31 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@iwl_mvm_ftm_put_target.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unsupported BW in FTM request (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@iwl_mvm_phy_band_from_nl80211.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/mvm.h\00", [51 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unsupported band (%u)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"FTM range request command failure, status: %u\0A\00", [49 x i8] zeroinitializer }, align 32
@iwl_ftm_range_request_status_to_err.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_ftm_resp_size_validation.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"FTM: unsupported range response version %u\00", [53 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Request ID mismatch, got %u, active %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"FTM range response invalid\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_debug_range_resp = private unnamed_addr constant [25 x i8] c"iwl_mvm_debug_range_resp\00", align 1
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"entry %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\09status: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\09BSSID: %pM\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09host time: %llu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\09burst index: %hhu\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09success num: %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\09rssi: %d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\09rssi spread: %hhu\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\09rtt: %lld\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09rtt var: %llu\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\09rtt spread: %llu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09distance: %lld\0A\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1027076, i64 1027080, i64 1027081]
@__sancov_gen_cov_switch_values.32 = internal global [8 x i64] [i64 6, i64 8, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.41 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.43 = internal global [7 x i64] [i64 5, i64 8, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.45 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 1027076, i64 1027080, i64 1027081]
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 46, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 76, i32 9 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 83, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 167, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 933, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1211, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1212, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1247, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1304, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant [14 x i8] c"rprt_type_lci\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1328, i32 18 }
@___asan_gen_.77 = private unnamed_addr constant [16 x i8] c"rprt_type_civic\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1329, i32 18 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 695, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 723, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 360, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 2099, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 538, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1167, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 998, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1004, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1105, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1106, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1107, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1108, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1109, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1110, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1111, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1112, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1113, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1114, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1115, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private constant [58 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 1116, i32 2 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @iwl_mvm_ftm_lc_notif.rprt_type_lci, ptr @iwl_mvm_ftm_lc_notif.rprt_type_civic, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_ftm_lc_notif.rprt_type_lci to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_ftm_lc_notif.rprt_type_civic to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_ftm_add_pasn_sta(ptr noundef %mvm, ptr nocapture noundef readonly %vif, ptr nocapture noundef readonly %addr, i32 noundef %cipher, ptr noundef readonly %tk, i32 noundef %tk_len, ptr nocapture noundef readonly %hltk, i32 noundef %hltk_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 92) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i108 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %cmp.not = icmp eq i32 %call.i108, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !88

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool25.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool25.not, label %if.end.cleanup_crit_edge, label %if.end27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %2 = zext i32 %cipher to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cipher, label %iwl_mvm_cipher_to_location_cipher.exit.thread122 [
    i32 1027076, label %if.end27.sw.epilog_crit_edge
    i32 1027080, label %sw.bb1.i
    i32 1027081, label %sw.bb32
  ]

if.end27.sw.epilog_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb1.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

iwl_mvm_cipher_to_location_cipher.exit.thread122: ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %cipher29125 = getelementptr inbounds %struct.iwl_mvm_ftm_pasn_entry, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %cipher29125 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 3, ptr %cipher29125, align 2
  br label %out

sw.bb32:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb32, %sw.bb1.i, %if.end27.sw.epilog_crit_edge
  %retval.0.i.ph.sink = phi i8 [ 2, %sw.bb32 ], [ 0, %if.end27.sw.epilog_crit_edge ], [ 1, %sw.bb1.i ]
  %expected_tk_len.0 = phi i32 [ 32, %sw.bb32 ], [ 16, %if.end27.sw.epilog_crit_edge ], [ 16, %sw.bb1.i ]
  %cipher29121 = getelementptr inbounds %struct.iwl_mvm_ftm_pasn_entry, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %cipher29121 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %retval.0.i.ph.sink, ptr %cipher29121, align 2
  %assoc = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 10
  %5 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %assoc, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool33.not = icmp eq i8 %6, 0
  br i1 %tobool33.not, label %sw.epilog.if.end63_crit_edge, label %land.lhs.true

sw.epilog.if.end63_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

land.lhs.true:                                    ; preds = %sw.epilog
  %bss_conf = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %7 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bss_conf, align 8
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr, ptr noundef dereferenceable(6) %8, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool37.not = icmp eq i32 %bcmp, 0
  br i1 %tobool37.not, label %if.then38, label %land.lhs.true.if.end63_crit_edge

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then38:                                        ; preds = %land.lhs.true
  %9 = tail call i32 @llvm.read_register.i32(metadata !78) #9
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !90
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.then38.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then38.rcu_read_lock.exit_crit_edge:           ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then38
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then38.rcu_read_lock.exit_crit_edge
  %ap_sta_id = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %13 = ptrtoint ptr %ap_sta_id to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ap_sta_id, align 8
  %idxprom = zext i8 %14 to i32
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %idxprom
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %arrayidx, align 4
  %call45 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %land.lhs.true47, label %rcu_read_lock.exit.do.end55_crit_edge

rcu_read_lock.exit.do.end55_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end55

land.lhs.true47:                                  ; preds = %rcu_read_lock.exit
  %call48 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %land.lhs.true47.do.end55_crit_edge, label %land.lhs.true50

land.lhs.true47.do.end55_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end55

land.lhs.true50:                                  ; preds = %land.lhs.true47
  %.b106 = load i1, ptr @iwl_mvm_ftm_add_pasn_sta.__warned, align 1
  br i1 %.b106, label %land.lhs.true50.do.end55_crit_edge, label %if.then52

land.lhs.true50.do.end55_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end55

if.then52:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwl_mvm_ftm_add_pasn_sta.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 76, ptr noundef nonnull @.str.1) #9
  br label %do.end55

do.end55:                                         ; preds = %if.then52, %land.lhs.true50.do.end55_crit_edge, %land.lhs.true47.do.end55_crit_edge, %rcu_read_lock.exit.do.end55_crit_edge
  %tobool.not.i109 = icmp eq ptr %16, null
  %cmp.i = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i109, %cmp.i
  br i1 %spec.select.i, label %do.end55.if.end62_crit_edge, label %land.lhs.true58

do.end55.if.end62_crit_edge:                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

land.lhs.true58:                                  ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #11
  %mfp = getelementptr inbounds %struct.ieee80211_sta, ptr %16, i32 0, i32 19
  %17 = ptrtoint ptr %mfp to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mfp, align 2, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool59.not = icmp eq i8 %18, 0
  %spec.select = select i1 %tobool59.not, i32 %expected_tk_len.0, i32 0
  br label %if.end62

if.end62:                                         ; preds = %land.lhs.true58, %do.end55.if.end62_crit_edge
  %expected_tk_len.1 = phi i32 [ %expected_tk_len.0, %do.end55.if.end62_crit_edge ], [ %spec.select, %land.lhs.true58 ]
  %call.i110 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i110, label %if.end62.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i113

if.end62.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i113:                               ; preds = %if.end62
  %call1.i111 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i111)
  %tobool.not.i112 = icmp eq i32 %call1.i111, 0
  br i1 %tobool.not.i112, label %land.lhs.true.i113.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i115

land.lhs.true.i113.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i113
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i115:                              ; preds = %land.lhs.true.i113
  %.b4.i114 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i114, label %land.lhs.true2.i115.rcu_read_unlock.exit_crit_edge, label %if.then.i116

land.lhs.true2.i115.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i116:                                     ; preds = %land.lhs.true2.i115
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i116, %land.lhs.true2.i115.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i113.rcu_read_unlock.exit_crit_edge, %if.end62.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !91
  %19 = tail call i32 @llvm.read_register.i32(metadata !78) #9
  %and.i.i.i.i.i117 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i117 to ptr
  %preempt_count.i.i.i.i118 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i118, align 4
  %sub.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i118, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %if.end63

if.end63:                                         ; preds = %rcu_read_unlock.exit, %land.lhs.true.if.end63_crit_edge, %sw.epilog.if.end63_crit_edge
  %expected_tk_len.2 = phi i32 [ %expected_tk_len.0, %land.lhs.true.if.end63_crit_edge ], [ %expected_tk_len.1, %rcu_read_unlock.exit ], [ %expected_tk_len.0, %sw.epilog.if.end63_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %expected_tk_len.2, i32 %tk_len)
  %cmp64.not = icmp eq i32 %expected_tk_len.2, %tk_len
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %hltk_len)
  %cmp66.not = icmp eq i32 %hltk_len, 32
  %or.cond = and i1 %cmp66.not, %cmp64.not
  br i1 %or.cond, label %if.end75, label %do.end72

do.end72:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %24, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %tk_len, i32 noundef %hltk_len) #9
  br label %out

if.end75:                                         ; preds = %if.end63
  %addr76 = getelementptr inbounds %struct.iwl_mvm_ftm_pasn_entry, ptr %call7.i.i, i32 0, i32 1
  %25 = call ptr @memcpy(ptr %addr76, ptr %addr, i32 6)
  %hltk77 = getelementptr inbounds %struct.iwl_mvm_ftm_pasn_entry, ptr %call7.i.i, i32 0, i32 2
  %26 = call ptr @memcpy(ptr %hltk77, ptr %hltk, i32 32)
  %tobool79.not = icmp eq ptr %tk, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tk_len)
  %tobool81.not = icmp eq i32 %tk_len, 0
  %or.cond107 = or i1 %tobool79.not, %tobool81.not
  br i1 %or.cond107, label %if.end75.if.end85_crit_edge, label %if.then82

if.end75.if.end85_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then82:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %tk83 = getelementptr inbounds %struct.iwl_mvm_ftm_pasn_entry, ptr %call7.i.i, i32 0, i32 3
  %27 = call ptr @memcpy(ptr %tk83, ptr %tk, i32 32)
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.end75.if.end85_crit_edge
  %pasn_list = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 162, i32 5
  %prev.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 162, i32 5, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %29, ptr noundef %pasn_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end85.cleanup_crit_edge

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %pasn_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %call7.i.i, ptr %29, align 4
  br label %cleanup

out:                                              ; preds = %do.end72, %iwl_mvm_cipher_to_location_cipher.exit.thread122
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.i.i, %if.end85.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %out ], [ -105, %if.end.cleanup_crit_edge ], [ 0, %if.end85.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_ftm_remove_pasn_sta(ptr noundef %mvm, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !88

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 105, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %pasn_list = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 162, i32 5
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %entry1.0.in = phi ptr [ %pasn_list, %if.end ], [ %entry1.0, %for.body.for.cond_crit_edge ]
  %1 = ptrtoint ptr %entry1.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %entry1.0 = load ptr, ptr %entry1.0.in, align 4
  %cmp33.not = icmp eq ptr %entry1.0, %pasn_list
  br i1 %cmp33.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %addr36 = getelementptr inbounds %struct.iwl_mvm_ftm_pasn_entry, ptr %entry1.0, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr36, ptr noundef dereferenceable(6) %addr, i32 6) #13
  %tobool38.not = icmp eq i32 %bcmp, 0
  br i1 %tobool38.not, label %if.end40, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.end40:                                         ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.0) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end40.list_del.exit_crit_edge

if.end40.list_del.exit_crit_edge:                 ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.0, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entry1.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end40.list_del.exit_crit_edge
  %8 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry1.0, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %entry1.0) #9
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %for.cond.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_ftm_restart(ptr noundef %mvm) local_unnamed_addr #0 align 64 {
entry:
  %result = alloca %struct.cfg80211_pmsr_result, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %result) #9
  %0 = getelementptr inbounds i8, ptr %result, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 144)
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #9
  %2 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call.i.i, ptr %result, align 8
  %status = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %result, i32 0, i32 2
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %status, align 8
  %final = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %result, i32 0, i32 4
  %4 = ptrtoint ptr %final to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -128, ptr %final, align 2
  %type = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %result, i32 0, i32 5
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %type, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !88

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 143, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %ftm_initiator = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 162
  %7 = ptrtoint ptr %ftm_initiator to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ftm_initiator, align 8
  %tobool25.not = icmp eq ptr %8, null
  br i1 %tobool25.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %9 = ptrtoint ptr %ftm_initiator to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ftm_initiator, align 8
  %n_peers58 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %n_peers58 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_peers58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp3059.not = icmp eq i32 %12, 0
  br i1 %cmp3059.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %addr = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %result, i32 0, i32 3
  %burst_index = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %result, i32 0, i32 6, i32 0, i32 7
  %req_wdev = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 162, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %13 = phi ptr [ %10, %for.body.lr.ph ], [ %21, %for.body.for.body_crit_edge ]
  %i.060 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cfg80211_pmsr_request, ptr %13, i32 0, i32 8, i32 %i.060
  %14 = call ptr @memcpy(ptr %addr, ptr %arrayidx, i32 6)
  %arrayidx36 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 162, i32 3, i32 %i.060
  %15 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx36, align 4
  %conv = trunc i32 %16 to i16
  %17 = ptrtoint ptr %burst_index to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %burst_index, align 4
  %18 = ptrtoint ptr %req_wdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %req_wdev, align 4
  call void @cfg80211_pmsr_report(ptr noundef %19, ptr noundef %13, ptr noundef nonnull %result, i32 noundef 3264) #9
  %inc = add nuw i32 %i.060, 1
  %20 = ptrtoint ptr %ftm_initiator to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ftm_initiator, align 8
  %n_peers = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %n_peers to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_peers, align 4
  %cmp30 = icmp ult i32 %inc, %23
  br i1 %cmp30, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi ptr [ %10, %for.cond.preheader.for.end_crit_edge ], [ %21, %for.body.for.end_crit_edge ]
  %req_wdev41 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 162, i32 1
  %24 = ptrtoint ptr %req_wdev41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %req_wdev41, align 4
  call void @cfg80211_pmsr_complete(ptr noundef %25, ptr noundef %.lcssa, i32 noundef 3264) #9
  %26 = ptrtoint ptr %ftm_initiator to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %ftm_initiator, align 8
  %27 = ptrtoint ptr %req_wdev41 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %req_wdev41, align 4
  %responses.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 162, i32 3
  %28 = call ptr @memset(ptr %responses.i, i32 0, i32 20)
  %loc_list.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 162, i32 2
  %29 = ptrtoint ptr %loc_list.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %loc_list.i, align 8
  %cmp.not25.i = icmp eq ptr %30, %loc_list.i
  br i1 %cmp.not25.i, label %for.end.cleanup_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %e.026.i = phi ptr [ %t.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %30, %for.end.for.body.i_crit_edge ]
  %31 = ptrtoint ptr %e.026.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %t.0.i = load ptr, ptr %e.026.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %e.026.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %e.026.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i.i, align 4
  %34 = ptrtoint ptr %e.026.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %e.026.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %38 = ptrtoint ptr %e.026.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %e.026.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %e.026.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %e.026.i) #9
  %cmp.not.i = icmp eq ptr %t.0.i, %loc_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.cleanup_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

list_del.exit.i.cleanup_crit_edge:                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.i.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %result) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_pmsr_report(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_pmsr_complete(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_ftm_initiator_smooth_config(ptr noundef %mvm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %smooth = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 162, i32 4
  %0 = ptrtoint ptr %smooth to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %smooth, ptr %smooth, align 4
  %prev.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 162, i32 4, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %smooth, ptr %prev.i, align 4
  %2 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_ftm_initiator_smooth_config, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 40, i32 noundef 200, i32 noundef 20016, i32 noundef 20016) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_ftm_initiator_smooth_stop(ptr noundef readonly %mvm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %smooth = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 162, i32 4
  %0 = ptrtoint ptr %smooth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smooth, align 4
  %cmp.not20 = icmp eq ptr %1, %smooth
  br i1 %cmp.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %se.021 = phi ptr [ %st.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %se.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %st.0 = load ptr, ptr %se.021, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %se.021) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %se.021, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %se.021 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %se.021, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %se.021 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %se.021, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %se.021, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %se.021) #9
  %cmp.not = icmp eq ptr %st.0, %smooth
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_ftm_start(ptr noundef %mvm, ptr noundef %vif, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  %status.i.i470 = alloca i32, align 4
  %cmd_v5.i = alloca %struct.iwl_tof_range_req_cmd_v5, align 1
  %hcmd.i471 = alloca %struct.iwl_host_cmd, align 4
  %status.i.i362 = alloca i32, align 4
  %cmd_v7.i = alloca %struct.iwl_tof_range_req_cmd_v7, align 4
  %hcmd.i363 = alloca %struct.iwl_host_cmd, align 4
  %status.i.i332 = alloca i32, align 4
  %cmd.i333 = alloca %struct.iwl_tof_range_req_cmd_v8, align 4
  %hcmd.i334 = alloca %struct.iwl_host_cmd, align 4
  %status.i.i249 = alloca i32, align 4
  %cmd.i250 = alloca %struct.iwl_tof_range_req_cmd_v9, align 4
  %hcmd.i251 = alloca %struct.iwl_host_cmd, align 4
  %status.i.i170 = alloca i32, align 4
  %cmd.i171 = alloca %struct.iwl_tof_range_req_cmd_v11, align 4
  %hcmd.i172 = alloca %struct.iwl_host_cmd, align 4
  %status.i.i82 = alloca i32, align 4
  %cmd.i83 = alloca %struct.iwl_tof_range_req_cmd_v12, align 4
  %hcmd.i84 = alloca %struct.iwl_host_cmd, align 4
  %status.i.i = alloca i32, align 4
  %cmd.i = alloca %struct.iwl_tof_range_req_cmd_v13, align 4
  %hcmd.i = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw, align 8
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %1, i32 0, i32 5, i32 7, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i.i, align 4
  %4 = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %5 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !88

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 874, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %ftm_initiator = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 162
  %6 = ptrtoint ptr %ftm_initiator to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ftm_initiator, align 8
  %tobool26.not = icmp eq ptr %7, null
  br i1 %tobool26.not, label %if.end28, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end
  br i1 %tobool.i.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end28
  %8 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw, align 8
  %call32 = tail call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %9, i8 noundef zeroext 8, i8 noundef zeroext 0, i8 noundef zeroext 99) #9
  %10 = zext i8 %call32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %call32, label %sw.default [
    i8 13, label %sw.bb
    i8 12, label %sw.bb34
    i8 11, label %sw.bb36
    i8 9, label %if.then30.sw.bb38_crit_edge
    i8 10, label %if.then30.sw.bb38_crit_edge609
    i8 8, label %sw.bb40
  ]

if.then30.sw.bb38_crit_edge609:                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb38

if.then30.sw.bb38_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb38

sw.bb:                                            ; preds = %if.then30
  call void @llvm.lifetime.start.p0(i64 612, ptr nonnull %cmd.i) #9
  %11 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 255, i32 608)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hcmd.i) #9
  %13 = getelementptr inbounds i8, ptr %hcmd.i, i32 32
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 33619967, ptr %13, align 4, !annotation !92
  %15 = ptrtoint ptr %hcmd.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %cmd.i, ptr %hcmd.i, align 4
  %arrayinit.cur.ptr.i = getelementptr inbounds ptr, ptr %hcmd.i, i32 1
  %id.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i, i32 0, i32 5
  %16 = call ptr @memset(ptr %arrayinit.cur.ptr.i, i32 0, i32 20)
  %17 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2048, ptr %id.i, align 4
  %len.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i, i32 0, i32 6
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 612, ptr %len.i, align 4
  %arrayinit.start3.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %arrayinit.start3.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %arrayinit.start3.i, align 2
  %20 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -2147479552, ptr %cmd.i, align 4
  %21 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %req, align 8
  %conv.i.i = trunc i64 %22 to i8
  %23 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.i.i, ptr %11, align 4
  %n_peers.i.i = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 2
  %24 = ptrtoint ptr %n_peers.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n_peers.i.i, align 4
  %conv1.i.i = trunc i32 %25 to i8
  %num_of_ap.i.i = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i, i32 0, i32 2
  %26 = ptrtoint ptr %num_of_ap.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv1.i.i, ptr %num_of_ap.i.i, align 1
  %timeout.i.i = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 4
  %27 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %timeout.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i = icmp eq i32 %28, 0
  %29 = call i32 @llvm.bswap.i32(i32 %28) #9
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 -61696, i32 %29
  %30 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i, i32 0, i32 6
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %spec.select.i.i, ptr %30, align 4
  %macaddr_template.i.i = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i, i32 0, i32 5
  %mac_addr.i.i = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 5
  %32 = call ptr @memcpy(ptr %macaddr_template.i.i, ptr %mac_addr.i.i, i32 6)
  %arrayidx.i.i81 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 0
  %33 = ptrtoint ptr %arrayidx.i.i81 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i.i81, align 1
  %neg.i.i = xor i8 %34, -1
  %arrayidx8.i.i = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i, i32 0, i32 4, i32 0
  %35 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %neg.i.i, ptr %arrayidx8.i.i, align 4
  %arrayidx.1.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 1
  %36 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.1.i.i, align 1
  %neg.1.i.i = xor i8 %37, -1
  %arrayidx8.1.i.i = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %arrayidx8.1.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %neg.1.i.i, ptr %arrayidx8.1.i.i, align 1
  %arrayidx.2.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 2
  %39 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.2.i.i, align 1
  %neg.2.i.i = xor i8 %40, -1
  %arrayidx8.2.i.i = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i, i32 0, i32 4, i32 2
  %41 = ptrtoint ptr %arrayidx8.2.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %neg.2.i.i, ptr %arrayidx8.2.i.i, align 2
  %arrayidx.3.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 3
  %42 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.3.i.i, align 1
  %neg.3.i.i = xor i8 %43, -1
  %arrayidx8.3.i.i = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i, i32 0, i32 4, i32 3
  %44 = ptrtoint ptr %arrayidx8.3.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %neg.3.i.i, ptr %arrayidx8.3.i.i, align 1
  %arrayidx.4.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 4
  %45 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.4.i.i, align 1
  %neg.4.i.i = xor i8 %46, -1
  %arrayidx8.4.i.i = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i, i32 0, i32 4, i32 4
  %47 = ptrtoint ptr %arrayidx8.4.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %neg.4.i.i, ptr %arrayidx8.4.i.i, align 4
  %arrayidx.5.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 5
  %48 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.5.i.i, align 1
  %neg.5.i.i = xor i8 %49, -1
  %arrayidx8.5.i.i = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i, i32 0, i32 4, i32 5
  %50 = ptrtoint ptr %arrayidx8.5.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %neg.5.i.i, ptr %arrayidx8.5.i.i, align 1
  %assoc.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 10
  %51 = ptrtoint ptr %assoc.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %assoc.i.i, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool9.not.i.i = icmp eq i8 %52, 0
  br i1 %tobool9.not.i.i, label %if.else26.i.i, label %if.then10.i.i

if.then10.i.i:                                    ; preds = %sw.bb
  %bss_conf.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %range_req_bssid.i.i = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i, i32 0, i32 3
  %53 = ptrtoint ptr %bss_conf.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bss_conf.i.i, align 8
  %55 = call ptr @memcpy(ptr %range_req_bssid.i.i, ptr %54, i32 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp152.not.i.i = icmp eq i32 %25, 0
  br i1 %cmp152.not.i.i, label %iwl_mvm_ftm_cmd_common.exit.i.thread, label %if.then10.i.i.for.body17.i.i_crit_edge

if.then10.i.i.for.body17.i.i_crit_edge:           ; preds = %if.then10.i.i
  br label %for.body17.i.i

iwl_mvm_ftm_cmd_common.exit.i.thread:             ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %tsf_mac_id30.i.i542 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i, i32 0, i32 7
  %56 = ptrtoint ptr %tsf_mac_id30.i.i542 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -16777216, ptr %tsf_mac_id30.i.i542, align 4
  br label %for.end.i

for.cond13.i.i:                                   ; preds = %for.body17.i.i
  %inc24.i.i = add nuw i32 %i.13.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc24.i.i, %25
  br i1 %exitcond.not.i.i, label %for.cond13.i.i.iwl_mvm_ftm_cmd_common.exit.i_crit_edge, label %for.cond13.i.i.for.body17.i.i_crit_edge

for.cond13.i.i.for.body17.i.i_crit_edge:          ; preds = %for.cond13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body17.i.i

for.cond13.i.i.iwl_mvm_ftm_cmd_common.exit.i_crit_edge: ; preds = %for.cond13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_cmd_common.exit.i

for.body17.i.i:                                   ; preds = %for.cond13.i.i.for.body17.i.i_crit_edge, %if.then10.i.i.for.body17.i.i_crit_edge
  %i.13.i.i = phi i32 [ %inc24.i.i, %for.cond13.i.i.for.body17.i.i_crit_edge ], [ 0, %if.then10.i.i.for.body17.i.i_crit_edge ]
  %report_ap_tsf.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %i.13.i.i, i32 2
  %57 = ptrtoint ptr %report_ap_tsf.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load.i.i = load i8, ptr %report_ap_tsf.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool19.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool19.not.i.i, label %for.cond13.i.i, label %if.then20.i.i

if.then20.i.i:                                    ; preds = %for.body17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %drv_priv.i.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %id.i.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %id.i.i, align 4
  %conv21.i.i = zext i16 %59 to i32
  %60 = call i32 @llvm.bswap.i32(i32 %conv21.i.i) #9
  br label %iwl_mvm_ftm_cmd_common.exit.i

if.else26.i.i:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %range_req_bssid27.i.i = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i, i32 0, i32 3
  %61 = call ptr @memset(ptr %range_req_bssid27.i.i, i32 255, i32 6)
  br label %iwl_mvm_ftm_cmd_common.exit.i

iwl_mvm_ftm_cmd_common.exit.i:                    ; preds = %if.else26.i.i, %if.then20.i.i, %for.cond13.i.i.iwl_mvm_ftm_cmd_common.exit.i_crit_edge
  %.sink.i.i = phi i32 [ %60, %if.then20.i.i ], [ -16777216, %if.else26.i.i ], [ -16777216, %for.cond13.i.i.iwl_mvm_ftm_cmd_common.exit.i_crit_edge ]
  %tsf_mac_id30.i.i = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i, i32 0, i32 7
  %62 = ptrtoint ptr %tsf_mac_id30.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %.sink.i.i, ptr %tsf_mac_id30.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1.i.i)
  %cmp77.not.i = icmp eq i8 %conv1.i.i, 0
  br i1 %cmp77.not.i, label %iwl_mvm_ftm_cmd_common.exit.i.for.end.i_crit_edge, label %iwl_mvm_ftm_cmd_common.exit.i.for.body.i_crit_edge

iwl_mvm_ftm_cmd_common.exit.i.for.body.i_crit_edge: ; preds = %iwl_mvm_ftm_cmd_common.exit.i
  br label %for.body.i

iwl_mvm_ftm_cmd_common.exit.i.for.end.i_crit_edge: ; preds = %iwl_mvm_ftm_cmd_common.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %iwl_mvm_ftm_cmd_common.exit.i.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %iwl_mvm_ftm_cmd_common.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %indvars.iv.i
  %arrayidx21.i = getelementptr %struct.iwl_tof_range_req_cmd_v13, ptr %cmd.i, i32 0, i32 8, i32 %indvars.iv.i
  %call.i.i = call fastcc i32 @iwl_mvm_ftm_put_target_v7(ptr noundef %mvm, ptr noundef %vif, ptr noundef %arrayidx.i, ptr noundef %arrayidx21.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i70.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i70.i, label %if.end.i.i, label %for.body.i.iwl_mvm_ftm_start_v13.exit_crit_edge

for.body.i.iwl_mvm_ftm_start_v13.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_start_v13.exit

if.end.i.i:                                       ; preds = %for.body.i
  %r2i_ndp_params.i.i.i = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v8, ptr %arrayidx21.i, i32 0, i32 17
  %63 = ptrtoint ptr %r2i_ndp_params.i.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 15, ptr %r2i_ndp_params.i.i.i, align 4
  %i2r_ndp_params.i.i.i = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v8, ptr %arrayidx21.i, i32 0, i32 18
  %64 = ptrtoint ptr %i2r_ndp_params.i.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 15, ptr %i2r_ndp_params.i.i.i, align 1
  %r2i_max_total_ltf.i.i.i = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v8, ptr %arrayidx21.i, i32 0, i32 19
  %65 = ptrtoint ptr %r2i_max_total_ltf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 3, ptr %r2i_max_total_ltf.i.i.i, align 2
  %i2r_max_total_ltf.i.i.i = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v8, ptr %arrayidx21.i, i32 0, i32 20
  %66 = ptrtoint ptr %i2r_max_total_ltf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 3, ptr %i2r_max_total_ltf.i.i.i, align 1
  %67 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx21.i, align 4
  %69 = call i32 @llvm.bswap.i32(i32 %68) #9
  %and.i.i = and i32 %69, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.then2.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and3.i.i = and i32 %69, -18433
  %or.i.i = or i32 %and3.i.i, 16384
  %70 = call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  %71 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %arrayidx21.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i.i, %if.end.i.i.if.end.i_crit_edge
  %trigger_based.i = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %indvars.iv.i, i32 3, i32 2
  %72 = ptrtoint ptr %trigger_based.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load.i = load i8, ptr %trigger_based.i, align 2
  %73 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool30.not.i = icmp eq i8 %73, 0
  %74 = and i8 %bf.load.i, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %if.end.i.if.end34.i_crit_edge, label %if.then31.i

if.end.i.if.end34.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.then31.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %bss_color.i = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %indvars.iv.i, i32 3, i32 7
  %76 = ptrtoint ptr %bss_color.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %bss_color.i, align 1
  %bss_color33.i = getelementptr %struct.iwl_tof_range_req_cmd_v13, ptr %cmd.i, i32 0, i32 8, i32 %indvars.iv.i, i32 21
  %78 = ptrtoint ptr %bss_color33.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %bss_color33.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then31.i, %if.end.i.if.end34.i_crit_edge
  br i1 %tobool30.not.i, label %if.end34.i.if.end43.i_crit_edge, label %if.then41.i

if.end34.i.if.end43.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

if.then41.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  %burst_period.i = getelementptr %struct.iwl_tof_range_req_cmd_v13, ptr %cmd.i, i32 0, i32 8, i32 %indvars.iv.i, i32 6
  %79 = ptrtoint ptr %burst_period.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 -6141, ptr %burst_period.i, align 2
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then41.i, %if.end34.i.if.end43.i_crit_edge
  %.sink.i = phi i16 [ 1280, %if.then41.i ], [ 0, %if.end34.i.if.end43.i_crit_edge ]
  %80 = getelementptr %struct.iwl_tof_range_req_cmd_v13, ptr %cmd.i, i32 0, i32 8, i32 %indvars.iv.i, i32 23
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %.sink.i, ptr %80, align 2
  %chandef.i = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %indvars.iv.i, i32 1
  %82 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %chandef.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  %86 = zext i32 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %85, label %land.end.i.i [
    i32 0, label %if.end43.i.for.inc.i_crit_edge
    i32 1, label %sw.bb1.i.i
    i32 3, label %sw.bb2.i.i
  ]

if.end43.i.for.inc.i_crit_edge:                   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

sw.bb1.i.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

sw.bb2.i.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.end.i.i:                                     ; preds = %if.end43.i
  %.b38.i.i = load i1, ptr @iwl_mvm_phy_band_from_nl80211.__already_done, align 1
  br i1 %.b38.i.i, label %land.end.i.i.for.inc.i_crit_edge, label %if.then.i.i, !prof !93

land.end.i.i.for.inc.i_crit_edge:                 ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i.i:                                      ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwl_mvm_phy_band_from_nl80211.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 2099, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %85) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i, %land.end.i.i.for.inc.i_crit_edge, %sw.bb2.i.i, %sw.bb1.i.i, %if.end43.i.for.inc.i_crit_edge
  %retval.0.i.i = phi i8 [ 2, %sw.bb2.i.i ], [ 0, %sw.bb1.i.i ], [ 1, %if.end43.i.for.inc.i_crit_edge ], [ 0, %if.then.i.i ], [ 0, %land.end.i.i.for.inc.i_crit_edge ]
  %band45.i = getelementptr %struct.iwl_tof_range_req_cmd_v13, ptr %cmd.i, i32 0, i32 8, i32 %indvars.iv.i, i32 22
  %87 = ptrtoint ptr %band45.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %retval.0.i.i, ptr %band45.i, align 1
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %88 = ptrtoint ptr %num_of_ap.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %num_of_ap.i.i, align 1
  %90 = zext i8 %89 to i32
  %cmp.i = icmp ult i32 %indvars.iv.next.i, %90
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %iwl_mvm_ftm_cmd_common.exit.i.for.end.i_crit_edge, %iwl_mvm_ftm_cmd_common.exit.i.thread
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i.i) #9
  %91 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %status.i.i, align 4, !annotation !92
  %call.i71.i = call i32 @iwl_mvm_send_cmd_status(ptr noundef %mvm, ptr noundef nonnull %hcmd.i, ptr noundef nonnull %status.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71.i)
  %tobool.not.i72.i = icmp eq i32 %call.i71.i, 0
  br i1 %tobool.not.i72.i, label %land.lhs.true.i.i, label %for.end.i.iwl_mvm_ftm_send_cmd.exit.i_crit_edge

for.end.i.iwl_mvm_ftm_send_cmd.exit.i_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i

land.lhs.true.i.i:                                ; preds = %for.end.i
  %92 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %status.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool1.not.i73.i = icmp eq i32 %93, 0
  br i1 %tobool1.not.i73.i, label %land.lhs.true.i.i.iwl_mvm_ftm_send_cmd.exit.i_crit_edge, label %do.end.i.i

land.lhs.true.i.i.iwl_mvm_ftm_send_cmd.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %94 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %95, i32 noundef 0, ptr noundef nonnull @.str.15, i32 noundef %93) #9
  %96 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %status.i.i, align 4
  %98 = zext i32 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %97, label %land.end.i.i.i [
    i32 0, label %do.end.i.i.iwl_mvm_ftm_send_cmd.exit.i_crit_edge
    i32 1, label %sw.bb1.i.i.i
  ]

do.end.i.i.iwl_mvm_ftm_send_cmd.exit.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i

sw.bb1.i.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i

land.end.i.i.i:                                   ; preds = %do.end.i.i
  %.b36.i.i.i = load i1, ptr @iwl_ftm_range_request_status_to_err.__already_done, align 1
  br i1 %.b36.i.i.i, label %land.end.i.i.i.iwl_mvm_ftm_send_cmd.exit.i_crit_edge, label %if.then.i.i.i, !prof !93

land.end.i.i.i.iwl_mvm_ftm_send_cmd.exit.i_crit_edge: ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i

if.then.i.i.i:                                    ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwl_ftm_range_request_status_to_err.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 196, i32 noundef 9, ptr noundef null) #9
  br label %iwl_mvm_ftm_send_cmd.exit.i

iwl_mvm_ftm_send_cmd.exit.i:                      ; preds = %if.then.i.i.i, %land.end.i.i.i.iwl_mvm_ftm_send_cmd.exit.i_crit_edge, %sw.bb1.i.i.i, %do.end.i.i.iwl_mvm_ftm_send_cmd.exit.i_crit_edge, %land.lhs.true.i.i.iwl_mvm_ftm_send_cmd.exit.i_crit_edge, %for.end.i.iwl_mvm_ftm_send_cmd.exit.i_crit_edge
  %err.0.i.i = phi i32 [ %call.i71.i, %for.end.i.iwl_mvm_ftm_send_cmd.exit.i_crit_edge ], [ 0, %land.lhs.true.i.i.iwl_mvm_ftm_send_cmd.exit.i_crit_edge ], [ -16, %sw.bb1.i.i.i ], [ %97, %do.end.i.i.iwl_mvm_ftm_send_cmd.exit.i_crit_edge ], [ -5, %if.then.i.i.i ], [ -5, %land.end.i.i.i.iwl_mvm_ftm_send_cmd.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i) #9
  br label %iwl_mvm_ftm_start_v13.exit

iwl_mvm_ftm_start_v13.exit:                       ; preds = %iwl_mvm_ftm_send_cmd.exit.i, %for.body.i.iwl_mvm_ftm_start_v13.exit_crit_edge
  %retval.2.i = phi i32 [ %err.0.i.i, %iwl_mvm_ftm_send_cmd.exit.i ], [ %call.i.i, %for.body.i.iwl_mvm_ftm_start_v13.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hcmd.i) #9
  call void @llvm.lifetime.end.p0(i64 612, ptr nonnull %cmd.i) #9
  br label %if.end44

sw.bb34:                                          ; preds = %if.then30
  call void @llvm.lifetime.start.p0(i64 592, ptr nonnull %cmd.i83) #9
  %99 = getelementptr inbounds i8, ptr %cmd.i83, i32 4
  %100 = call ptr @memset(ptr %99, i32 255, i32 588)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hcmd.i84) #9
  %101 = getelementptr inbounds i8, ptr %hcmd.i84, i32 32
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 33619967, ptr %101, align 4, !annotation !92
  %103 = ptrtoint ptr %hcmd.i84 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %cmd.i83, ptr %hcmd.i84, align 4
  %arrayinit.cur.ptr.i85 = getelementptr inbounds ptr, ptr %hcmd.i84, i32 1
  %id.i86 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i84, i32 0, i32 5
  %104 = call ptr @memset(ptr %arrayinit.cur.ptr.i85, i32 0, i32 20)
  %105 = ptrtoint ptr %id.i86 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 2048, ptr %id.i86, align 4
  %len.i87 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i84, i32 0, i32 6
  %106 = ptrtoint ptr %len.i87 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 592, ptr %len.i87, align 4
  %arrayinit.start3.i88 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i84, i32 0, i32 6, i32 1
  %107 = ptrtoint ptr %arrayinit.start3.i88 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 0, ptr %arrayinit.start3.i88, align 2
  %108 = ptrtoint ptr %cmd.i83 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 -2147479552, ptr %cmd.i83, align 4
  %109 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %req, align 8
  %conv.i.i91 = trunc i64 %110 to i8
  %111 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv.i.i91, ptr %99, align 4
  %n_peers.i.i93 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 2
  %112 = ptrtoint ptr %n_peers.i.i93 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %n_peers.i.i93, align 4
  %conv1.i.i94 = trunc i32 %113 to i8
  %num_of_ap.i.i95 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i83, i32 0, i32 2
  %114 = ptrtoint ptr %num_of_ap.i.i95 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv1.i.i94, ptr %num_of_ap.i.i95, align 1
  %timeout.i.i96 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 4
  %115 = ptrtoint ptr %timeout.i.i96 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %timeout.i.i96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.not.i.i97 = icmp eq i32 %116, 0
  %117 = call i32 @llvm.bswap.i32(i32 %116) #9
  %spec.select.i.i98 = select i1 %tobool.not.i.i97, i32 -61696, i32 %117
  %118 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i83, i32 0, i32 6
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %spec.select.i.i98, ptr %118, align 4
  %macaddr_template.i.i99 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i83, i32 0, i32 5
  %mac_addr.i.i100 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 5
  %120 = call ptr @memcpy(ptr %macaddr_template.i.i99, ptr %mac_addr.i.i100, i32 6)
  %arrayidx.i.i101 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 0
  %121 = ptrtoint ptr %arrayidx.i.i101 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx.i.i101, align 1
  %neg.i.i102 = xor i8 %122, -1
  %arrayidx8.i.i103 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i83, i32 0, i32 4, i32 0
  %123 = ptrtoint ptr %arrayidx8.i.i103 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %neg.i.i102, ptr %arrayidx8.i.i103, align 4
  %arrayidx.1.i.i104 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 1
  %124 = ptrtoint ptr %arrayidx.1.i.i104 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx.1.i.i104, align 1
  %neg.1.i.i105 = xor i8 %125, -1
  %arrayidx8.1.i.i106 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i83, i32 0, i32 4, i32 1
  %126 = ptrtoint ptr %arrayidx8.1.i.i106 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %neg.1.i.i105, ptr %arrayidx8.1.i.i106, align 1
  %arrayidx.2.i.i107 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 2
  %127 = ptrtoint ptr %arrayidx.2.i.i107 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx.2.i.i107, align 1
  %neg.2.i.i108 = xor i8 %128, -1
  %arrayidx8.2.i.i109 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i83, i32 0, i32 4, i32 2
  %129 = ptrtoint ptr %arrayidx8.2.i.i109 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %neg.2.i.i108, ptr %arrayidx8.2.i.i109, align 2
  %arrayidx.3.i.i110 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 3
  %130 = ptrtoint ptr %arrayidx.3.i.i110 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx.3.i.i110, align 1
  %neg.3.i.i111 = xor i8 %131, -1
  %arrayidx8.3.i.i112 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i83, i32 0, i32 4, i32 3
  %132 = ptrtoint ptr %arrayidx8.3.i.i112 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %neg.3.i.i111, ptr %arrayidx8.3.i.i112, align 1
  %arrayidx.4.i.i113 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 4
  %133 = ptrtoint ptr %arrayidx.4.i.i113 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx.4.i.i113, align 1
  %neg.4.i.i114 = xor i8 %134, -1
  %arrayidx8.4.i.i115 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i83, i32 0, i32 4, i32 4
  %135 = ptrtoint ptr %arrayidx8.4.i.i115 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %neg.4.i.i114, ptr %arrayidx8.4.i.i115, align 4
  %arrayidx.5.i.i116 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 5
  %136 = ptrtoint ptr %arrayidx.5.i.i116 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx.5.i.i116, align 1
  %neg.5.i.i117 = xor i8 %137, -1
  %arrayidx8.5.i.i118 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i83, i32 0, i32 4, i32 5
  %138 = ptrtoint ptr %arrayidx8.5.i.i118 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %neg.5.i.i117, ptr %arrayidx8.5.i.i118, align 1
  %assoc.i.i119 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 10
  %139 = ptrtoint ptr %assoc.i.i119 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %assoc.i.i119, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool9.not.i.i120 = icmp eq i8 %140, 0
  br i1 %tobool9.not.i.i120, label %if.else26.i.i138, label %if.then10.i.i124

if.then10.i.i124:                                 ; preds = %sw.bb34
  %bss_conf.i.i121 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %range_req_bssid.i.i122 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i83, i32 0, i32 3
  %141 = ptrtoint ptr %bss_conf.i.i121 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %bss_conf.i.i121, align 8
  %143 = call ptr @memcpy(ptr %range_req_bssid.i.i122, ptr %142, i32 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp152.not.i.i123 = icmp eq i32 %113, 0
  br i1 %cmp152.not.i.i123, label %iwl_mvm_ftm_cmd_common.exit.i141.thread, label %if.then10.i.i124.for.body17.i.i132_crit_edge

if.then10.i.i124.for.body17.i.i132_crit_edge:     ; preds = %if.then10.i.i124
  br label %for.body17.i.i132

iwl_mvm_ftm_cmd_common.exit.i141.thread:          ; preds = %if.then10.i.i124
  call void @__sanitizer_cov_trace_pc() #11
  %tsf_mac_id30.i.i140545 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i83, i32 0, i32 7
  %144 = ptrtoint ptr %tsf_mac_id30.i.i140545 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 -16777216, ptr %tsf_mac_id30.i.i140545, align 4
  br label %for.end.i160

for.cond13.i.i127:                                ; preds = %for.body17.i.i132
  %inc24.i.i125 = add nuw i32 %i.13.i.i128, 1
  %exitcond.not.i.i126 = icmp eq i32 %inc24.i.i125, %113
  br i1 %exitcond.not.i.i126, label %for.cond13.i.i127.iwl_mvm_ftm_cmd_common.exit.i141_crit_edge, label %for.cond13.i.i127.for.body17.i.i132_crit_edge

for.cond13.i.i127.for.body17.i.i132_crit_edge:    ; preds = %for.cond13.i.i127
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body17.i.i132

for.cond13.i.i127.iwl_mvm_ftm_cmd_common.exit.i141_crit_edge: ; preds = %for.cond13.i.i127
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_cmd_common.exit.i141

for.body17.i.i132:                                ; preds = %for.cond13.i.i127.for.body17.i.i132_crit_edge, %if.then10.i.i124.for.body17.i.i132_crit_edge
  %i.13.i.i128 = phi i32 [ %inc24.i.i125, %for.cond13.i.i127.for.body17.i.i132_crit_edge ], [ 0, %if.then10.i.i124.for.body17.i.i132_crit_edge ]
  %report_ap_tsf.i.i129 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %i.13.i.i128, i32 2
  %145 = ptrtoint ptr %report_ap_tsf.i.i129 to i32
  call void @__asan_load1_noabort(i32 %145)
  %bf.load.i.i130 = load i8, ptr %report_ap_tsf.i.i129, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i130)
  %tobool19.not.i.i131 = icmp sgt i8 %bf.load.i.i130, -1
  br i1 %tobool19.not.i.i131, label %for.cond13.i.i127, label %if.then20.i.i136

if.then20.i.i136:                                 ; preds = %for.body17.i.i132
  call void @__sanitizer_cov_trace_pc() #11
  %drv_priv.i.i.i133 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %id.i.i134 = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i.i.i133, i32 0, i32 1
  %146 = ptrtoint ptr %id.i.i134 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %id.i.i134, align 4
  %conv21.i.i135 = zext i16 %147 to i32
  %148 = call i32 @llvm.bswap.i32(i32 %conv21.i.i135) #9
  br label %iwl_mvm_ftm_cmd_common.exit.i141

if.else26.i.i138:                                 ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #11
  %range_req_bssid27.i.i137 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i83, i32 0, i32 3
  %149 = call ptr @memset(ptr %range_req_bssid27.i.i137, i32 255, i32 6)
  br label %iwl_mvm_ftm_cmd_common.exit.i141

iwl_mvm_ftm_cmd_common.exit.i141:                 ; preds = %if.else26.i.i138, %if.then20.i.i136, %for.cond13.i.i127.iwl_mvm_ftm_cmd_common.exit.i141_crit_edge
  %.sink.i.i139 = phi i32 [ %148, %if.then20.i.i136 ], [ -16777216, %if.else26.i.i138 ], [ -16777216, %for.cond13.i.i127.iwl_mvm_ftm_cmd_common.exit.i141_crit_edge ]
  %tsf_mac_id30.i.i140 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i83, i32 0, i32 7
  %150 = ptrtoint ptr %tsf_mac_id30.i.i140 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %.sink.i.i139, ptr %tsf_mac_id30.i.i140, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1.i.i94)
  %cmp44.not.i = icmp eq i8 %conv1.i.i94, 0
  br i1 %cmp44.not.i, label %iwl_mvm_ftm_cmd_common.exit.i141.for.end.i160_crit_edge, label %iwl_mvm_ftm_cmd_common.exit.i141.for.body.i146_crit_edge

iwl_mvm_ftm_cmd_common.exit.i141.for.body.i146_crit_edge: ; preds = %iwl_mvm_ftm_cmd_common.exit.i141
  br label %for.body.i146

iwl_mvm_ftm_cmd_common.exit.i141.for.end.i160_crit_edge: ; preds = %iwl_mvm_ftm_cmd_common.exit.i141
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i160

for.body.i146:                                    ; preds = %for.inc.i159.for.body.i146_crit_edge, %iwl_mvm_ftm_cmd_common.exit.i141.for.body.i146_crit_edge
  %indvars.iv.i142 = phi i32 [ %indvars.iv.next.i157, %for.inc.i159.for.body.i146_crit_edge ], [ 0, %iwl_mvm_ftm_cmd_common.exit.i141.for.body.i146_crit_edge ]
  %arrayidx.i143 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %indvars.iv.i142
  %arrayidx21.i144 = getelementptr %struct.iwl_tof_range_req_cmd_v12, ptr %cmd.i83, i32 0, i32 8, i32 %indvars.iv.i142
  %call.i.i145 = call fastcc i32 @iwl_mvm_ftm_put_target_v7(ptr noundef %mvm, ptr noundef %vif, ptr noundef %arrayidx.i143, ptr noundef %arrayidx21.i144) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i145)
  %tobool.not.i37.i = icmp eq i32 %call.i.i145, 0
  br i1 %tobool.not.i37.i, label %if.end.i.i153, label %for.body.i146.iwl_mvm_ftm_start_v12.exit_crit_edge

for.body.i146.iwl_mvm_ftm_start_v12.exit_crit_edge: ; preds = %for.body.i146
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_start_v12.exit

if.end.i.i153:                                    ; preds = %for.body.i146
  %r2i_ndp_params.i.i.i147 = getelementptr %struct.iwl_tof_range_req_cmd_v12, ptr %cmd.i83, i32 0, i32 8, i32 %indvars.iv.i142, i32 17
  %151 = ptrtoint ptr %r2i_ndp_params.i.i.i147 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 15, ptr %r2i_ndp_params.i.i.i147, align 4
  %i2r_ndp_params.i.i.i148 = getelementptr %struct.iwl_tof_range_req_cmd_v12, ptr %cmd.i83, i32 0, i32 8, i32 %indvars.iv.i142, i32 18
  %152 = ptrtoint ptr %i2r_ndp_params.i.i.i148 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 15, ptr %i2r_ndp_params.i.i.i148, align 1
  %r2i_max_total_ltf.i.i.i149 = getelementptr %struct.iwl_tof_range_req_cmd_v12, ptr %cmd.i83, i32 0, i32 8, i32 %indvars.iv.i142, i32 19
  %153 = ptrtoint ptr %r2i_max_total_ltf.i.i.i149 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 3, ptr %r2i_max_total_ltf.i.i.i149, align 2
  %i2r_max_total_ltf.i.i.i150 = getelementptr %struct.iwl_tof_range_req_cmd_v12, ptr %cmd.i83, i32 0, i32 8, i32 %indvars.iv.i142, i32 20
  %154 = ptrtoint ptr %i2r_max_total_ltf.i.i.i150 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 3, ptr %i2r_max_total_ltf.i.i.i150, align 1
  %155 = ptrtoint ptr %arrayidx21.i144 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx21.i144, align 4
  %157 = call i32 @llvm.bswap.i32(i32 %156) #9
  %and.i.i151 = and i32 %157, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i151)
  %tobool1.not.i.i152 = icmp eq i32 %and.i.i151, 0
  br i1 %tobool1.not.i.i152, label %if.end.i.i153.for.inc.i159_crit_edge, label %if.then2.i.i156

if.end.i.i153.for.inc.i159_crit_edge:             ; preds = %if.end.i.i153
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i159

if.then2.i.i156:                                  ; preds = %if.end.i.i153
  call void @__sanitizer_cov_trace_pc() #11
  %and3.i.i154 = and i32 %157, -18433
  %or.i.i155 = or i32 %and3.i.i154, 16384
  %158 = call i32 @llvm.bswap.i32(i32 %or.i.i155) #9
  %159 = ptrtoint ptr %arrayidx21.i144 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %arrayidx21.i144, align 4
  br label %for.inc.i159

for.inc.i159:                                     ; preds = %if.then2.i.i156, %if.end.i.i153.for.inc.i159_crit_edge
  %indvars.iv.next.i157 = add nuw nsw i32 %indvars.iv.i142, 1
  %160 = ptrtoint ptr %num_of_ap.i.i95 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %num_of_ap.i.i95, align 1
  %162 = zext i8 %161 to i32
  %cmp.i158 = icmp ult i32 %indvars.iv.next.i157, %162
  br i1 %cmp.i158, label %for.inc.i159.for.body.i146_crit_edge, label %for.inc.i159.for.end.i160_crit_edge

for.inc.i159.for.end.i160_crit_edge:              ; preds = %for.inc.i159
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i160

for.inc.i159.for.body.i146_crit_edge:             ; preds = %for.inc.i159
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i146

for.end.i160:                                     ; preds = %for.inc.i159.for.end.i160_crit_edge, %iwl_mvm_ftm_cmd_common.exit.i141.for.end.i160_crit_edge, %iwl_mvm_ftm_cmd_common.exit.i141.thread
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i.i82) #9
  %163 = ptrtoint ptr %status.i.i82 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 -1, ptr %status.i.i82, align 4, !annotation !92
  %call.i38.i = call i32 @iwl_mvm_send_cmd_status(ptr noundef %mvm, ptr noundef nonnull %hcmd.i84, ptr noundef nonnull %status.i.i82) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38.i)
  %tobool.not.i39.i = icmp eq i32 %call.i38.i, 0
  br i1 %tobool.not.i39.i, label %land.lhs.true.i.i161, label %for.end.i160.iwl_mvm_ftm_send_cmd.exit.i168_crit_edge

for.end.i160.iwl_mvm_ftm_send_cmd.exit.i168_crit_edge: ; preds = %for.end.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i168

land.lhs.true.i.i161:                             ; preds = %for.end.i160
  %164 = ptrtoint ptr %status.i.i82 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %status.i.i82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool1.not.i40.i = icmp eq i32 %165, 0
  br i1 %tobool1.not.i40.i, label %land.lhs.true.i.i161.iwl_mvm_ftm_send_cmd.exit.i168_crit_edge, label %do.end.i.i162

land.lhs.true.i.i161.iwl_mvm_ftm_send_cmd.exit.i168_crit_edge: ; preds = %land.lhs.true.i.i161
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i168

do.end.i.i162:                                    ; preds = %land.lhs.true.i.i161
  %166 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %167, i32 noundef 0, ptr noundef nonnull @.str.15, i32 noundef %165) #9
  %168 = ptrtoint ptr %status.i.i82 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %status.i.i82, align 4
  %170 = zext i32 %169 to i64
  call void @__sanitizer_cov_trace_switch(i64 %170, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %169, label %land.end.i.i.i165 [
    i32 0, label %do.end.i.i162.iwl_mvm_ftm_send_cmd.exit.i168_crit_edge
    i32 1, label %sw.bb1.i.i.i163
  ]

do.end.i.i162.iwl_mvm_ftm_send_cmd.exit.i168_crit_edge: ; preds = %do.end.i.i162
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i168

sw.bb1.i.i.i163:                                  ; preds = %do.end.i.i162
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i168

land.end.i.i.i165:                                ; preds = %do.end.i.i162
  %.b36.i.i.i164 = load i1, ptr @iwl_ftm_range_request_status_to_err.__already_done, align 1
  br i1 %.b36.i.i.i164, label %land.end.i.i.i165.iwl_mvm_ftm_send_cmd.exit.i168_crit_edge, label %if.then.i.i.i166, !prof !93

land.end.i.i.i165.iwl_mvm_ftm_send_cmd.exit.i168_crit_edge: ; preds = %land.end.i.i.i165
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i168

if.then.i.i.i166:                                 ; preds = %land.end.i.i.i165
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwl_ftm_range_request_status_to_err.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 196, i32 noundef 9, ptr noundef null) #9
  br label %iwl_mvm_ftm_send_cmd.exit.i168

iwl_mvm_ftm_send_cmd.exit.i168:                   ; preds = %if.then.i.i.i166, %land.end.i.i.i165.iwl_mvm_ftm_send_cmd.exit.i168_crit_edge, %sw.bb1.i.i.i163, %do.end.i.i162.iwl_mvm_ftm_send_cmd.exit.i168_crit_edge, %land.lhs.true.i.i161.iwl_mvm_ftm_send_cmd.exit.i168_crit_edge, %for.end.i160.iwl_mvm_ftm_send_cmd.exit.i168_crit_edge
  %err.0.i.i167 = phi i32 [ %call.i38.i, %for.end.i160.iwl_mvm_ftm_send_cmd.exit.i168_crit_edge ], [ 0, %land.lhs.true.i.i161.iwl_mvm_ftm_send_cmd.exit.i168_crit_edge ], [ -16, %sw.bb1.i.i.i163 ], [ %169, %do.end.i.i162.iwl_mvm_ftm_send_cmd.exit.i168_crit_edge ], [ -5, %if.then.i.i.i166 ], [ -5, %land.end.i.i.i165.iwl_mvm_ftm_send_cmd.exit.i168_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i82) #9
  br label %iwl_mvm_ftm_start_v12.exit

iwl_mvm_ftm_start_v12.exit:                       ; preds = %iwl_mvm_ftm_send_cmd.exit.i168, %for.body.i146.iwl_mvm_ftm_start_v12.exit_crit_edge
  %retval.2.i169 = phi i32 [ %err.0.i.i167, %iwl_mvm_ftm_send_cmd.exit.i168 ], [ %call.i.i145, %for.body.i146.iwl_mvm_ftm_start_v12.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hcmd.i84) #9
  call void @llvm.lifetime.end.p0(i64 592, ptr nonnull %cmd.i83) #9
  br label %if.end44

sw.bb36:                                          ; preds = %if.then30
  call void @llvm.lifetime.start.p0(i64 572, ptr nonnull %cmd.i171) #9
  %171 = getelementptr inbounds i8, ptr %cmd.i171, i32 4
  %172 = call ptr @memset(ptr %171, i32 255, i32 568)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hcmd.i172) #9
  %173 = getelementptr inbounds i8, ptr %hcmd.i172, i32 32
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 33619967, ptr %173, align 4, !annotation !92
  %175 = ptrtoint ptr %hcmd.i172 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %cmd.i171, ptr %hcmd.i172, align 4
  %arrayinit.cur.ptr.i173 = getelementptr inbounds ptr, ptr %hcmd.i172, i32 1
  %id.i174 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i172, i32 0, i32 5
  %176 = call ptr @memset(ptr %arrayinit.cur.ptr.i173, i32 0, i32 20)
  %177 = ptrtoint ptr %id.i174 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 2048, ptr %id.i174, align 4
  %len.i175 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i172, i32 0, i32 6
  %178 = ptrtoint ptr %len.i175 to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 572, ptr %len.i175, align 4
  %arrayinit.start3.i176 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i172, i32 0, i32 6, i32 1
  %179 = ptrtoint ptr %arrayinit.start3.i176 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 0, ptr %arrayinit.start3.i176, align 2
  %180 = ptrtoint ptr %cmd.i171 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 -2147479552, ptr %cmd.i171, align 4
  %181 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %req, align 8
  %conv.i.i179 = trunc i64 %182 to i8
  %183 = ptrtoint ptr %171 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %conv.i.i179, ptr %171, align 4
  %n_peers.i.i181 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 2
  %184 = ptrtoint ptr %n_peers.i.i181 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %n_peers.i.i181, align 4
  %conv1.i.i182 = trunc i32 %185 to i8
  %num_of_ap.i.i183 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i171, i32 0, i32 2
  %186 = ptrtoint ptr %num_of_ap.i.i183 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %conv1.i.i182, ptr %num_of_ap.i.i183, align 1
  %timeout.i.i184 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 4
  %187 = ptrtoint ptr %timeout.i.i184 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %timeout.i.i184, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool.not.i.i185 = icmp eq i32 %188, 0
  %189 = call i32 @llvm.bswap.i32(i32 %188) #9
  %spec.select.i.i186 = select i1 %tobool.not.i.i185, i32 -61696, i32 %189
  %190 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i171, i32 0, i32 6
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %spec.select.i.i186, ptr %190, align 4
  %macaddr_template.i.i187 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i171, i32 0, i32 5
  %mac_addr.i.i188 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 5
  %192 = call ptr @memcpy(ptr %macaddr_template.i.i187, ptr %mac_addr.i.i188, i32 6)
  %arrayidx.i.i189 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 0
  %193 = ptrtoint ptr %arrayidx.i.i189 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %arrayidx.i.i189, align 1
  %neg.i.i190 = xor i8 %194, -1
  %arrayidx8.i.i191 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i171, i32 0, i32 4, i32 0
  %195 = ptrtoint ptr %arrayidx8.i.i191 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %neg.i.i190, ptr %arrayidx8.i.i191, align 4
  %arrayidx.1.i.i192 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 1
  %196 = ptrtoint ptr %arrayidx.1.i.i192 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx.1.i.i192, align 1
  %neg.1.i.i193 = xor i8 %197, -1
  %arrayidx8.1.i.i194 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i171, i32 0, i32 4, i32 1
  %198 = ptrtoint ptr %arrayidx8.1.i.i194 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %neg.1.i.i193, ptr %arrayidx8.1.i.i194, align 1
  %arrayidx.2.i.i195 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 2
  %199 = ptrtoint ptr %arrayidx.2.i.i195 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %arrayidx.2.i.i195, align 1
  %neg.2.i.i196 = xor i8 %200, -1
  %arrayidx8.2.i.i197 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i171, i32 0, i32 4, i32 2
  %201 = ptrtoint ptr %arrayidx8.2.i.i197 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %neg.2.i.i196, ptr %arrayidx8.2.i.i197, align 2
  %arrayidx.3.i.i198 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 3
  %202 = ptrtoint ptr %arrayidx.3.i.i198 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx.3.i.i198, align 1
  %neg.3.i.i199 = xor i8 %203, -1
  %arrayidx8.3.i.i200 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i171, i32 0, i32 4, i32 3
  %204 = ptrtoint ptr %arrayidx8.3.i.i200 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %neg.3.i.i199, ptr %arrayidx8.3.i.i200, align 1
  %arrayidx.4.i.i201 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 4
  %205 = ptrtoint ptr %arrayidx.4.i.i201 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %arrayidx.4.i.i201, align 1
  %neg.4.i.i202 = xor i8 %206, -1
  %arrayidx8.4.i.i203 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i171, i32 0, i32 4, i32 4
  %207 = ptrtoint ptr %arrayidx8.4.i.i203 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %neg.4.i.i202, ptr %arrayidx8.4.i.i203, align 4
  %arrayidx.5.i.i204 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 5
  %208 = ptrtoint ptr %arrayidx.5.i.i204 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx.5.i.i204, align 1
  %neg.5.i.i205 = xor i8 %209, -1
  %arrayidx8.5.i.i206 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i171, i32 0, i32 4, i32 5
  %210 = ptrtoint ptr %arrayidx8.5.i.i206 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %neg.5.i.i205, ptr %arrayidx8.5.i.i206, align 1
  %assoc.i.i207 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 10
  %211 = ptrtoint ptr %assoc.i.i207 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %assoc.i.i207, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %212)
  %tobool9.not.i.i208 = icmp eq i8 %212, 0
  br i1 %tobool9.not.i.i208, label %if.else26.i.i226, label %if.then10.i.i212

if.then10.i.i212:                                 ; preds = %sw.bb36
  %bss_conf.i.i209 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %range_req_bssid.i.i210 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i171, i32 0, i32 3
  %213 = ptrtoint ptr %bss_conf.i.i209 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %bss_conf.i.i209, align 8
  %215 = call ptr @memcpy(ptr %range_req_bssid.i.i210, ptr %214, i32 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %cmp152.not.i.i211 = icmp eq i32 %185, 0
  br i1 %cmp152.not.i.i211, label %iwl_mvm_ftm_cmd_common.exit.i229.thread, label %if.then10.i.i212.for.body17.i.i220_crit_edge

if.then10.i.i212.for.body17.i.i220_crit_edge:     ; preds = %if.then10.i.i212
  br label %for.body17.i.i220

iwl_mvm_ftm_cmd_common.exit.i229.thread:          ; preds = %if.then10.i.i212
  call void @__sanitizer_cov_trace_pc() #11
  %tsf_mac_id30.i.i228548 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i171, i32 0, i32 7
  %216 = ptrtoint ptr %tsf_mac_id30.i.i228548 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 -16777216, ptr %tsf_mac_id30.i.i228548, align 4
  br label %for.end.i238

for.cond13.i.i215:                                ; preds = %for.body17.i.i220
  %inc24.i.i213 = add nuw i32 %i.13.i.i216, 1
  %exitcond.not.i.i214 = icmp eq i32 %inc24.i.i213, %185
  br i1 %exitcond.not.i.i214, label %for.cond13.i.i215.iwl_mvm_ftm_cmd_common.exit.i229_crit_edge, label %for.cond13.i.i215.for.body17.i.i220_crit_edge

for.cond13.i.i215.for.body17.i.i220_crit_edge:    ; preds = %for.cond13.i.i215
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body17.i.i220

for.cond13.i.i215.iwl_mvm_ftm_cmd_common.exit.i229_crit_edge: ; preds = %for.cond13.i.i215
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_cmd_common.exit.i229

for.body17.i.i220:                                ; preds = %for.cond13.i.i215.for.body17.i.i220_crit_edge, %if.then10.i.i212.for.body17.i.i220_crit_edge
  %i.13.i.i216 = phi i32 [ %inc24.i.i213, %for.cond13.i.i215.for.body17.i.i220_crit_edge ], [ 0, %if.then10.i.i212.for.body17.i.i220_crit_edge ]
  %report_ap_tsf.i.i217 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %i.13.i.i216, i32 2
  %217 = ptrtoint ptr %report_ap_tsf.i.i217 to i32
  call void @__asan_load1_noabort(i32 %217)
  %bf.load.i.i218 = load i8, ptr %report_ap_tsf.i.i217, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i218)
  %tobool19.not.i.i219 = icmp sgt i8 %bf.load.i.i218, -1
  br i1 %tobool19.not.i.i219, label %for.cond13.i.i215, label %if.then20.i.i224

if.then20.i.i224:                                 ; preds = %for.body17.i.i220
  call void @__sanitizer_cov_trace_pc() #11
  %drv_priv.i.i.i221 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %id.i.i222 = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i.i.i221, i32 0, i32 1
  %218 = ptrtoint ptr %id.i.i222 to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %id.i.i222, align 4
  %conv21.i.i223 = zext i16 %219 to i32
  %220 = call i32 @llvm.bswap.i32(i32 %conv21.i.i223) #9
  br label %iwl_mvm_ftm_cmd_common.exit.i229

if.else26.i.i226:                                 ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #11
  %range_req_bssid27.i.i225 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i171, i32 0, i32 3
  %221 = call ptr @memset(ptr %range_req_bssid27.i.i225, i32 255, i32 6)
  br label %iwl_mvm_ftm_cmd_common.exit.i229

iwl_mvm_ftm_cmd_common.exit.i229:                 ; preds = %if.else26.i.i226, %if.then20.i.i224, %for.cond13.i.i215.iwl_mvm_ftm_cmd_common.exit.i229_crit_edge
  %.sink.i.i227 = phi i32 [ %220, %if.then20.i.i224 ], [ -16777216, %if.else26.i.i226 ], [ -16777216, %for.cond13.i.i215.iwl_mvm_ftm_cmd_common.exit.i229_crit_edge ]
  %tsf_mac_id30.i.i228 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i171, i32 0, i32 7
  %222 = ptrtoint ptr %tsf_mac_id30.i.i228 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %.sink.i.i227, ptr %tsf_mac_id30.i.i228, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1.i.i182)
  %cmp38.not.i = icmp eq i8 %conv1.i.i182, 0
  br i1 %cmp38.not.i, label %iwl_mvm_ftm_cmd_common.exit.i229.for.end.i238_crit_edge, label %iwl_mvm_ftm_cmd_common.exit.i229.for.body.i235_crit_edge

iwl_mvm_ftm_cmd_common.exit.i229.for.body.i235_crit_edge: ; preds = %iwl_mvm_ftm_cmd_common.exit.i229
  br label %for.body.i235

iwl_mvm_ftm_cmd_common.exit.i229.for.end.i238_crit_edge: ; preds = %iwl_mvm_ftm_cmd_common.exit.i229
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i238

for.cond.i:                                       ; preds = %for.body.i235
  %indvars.iv.next.i230 = add nuw nsw i32 %indvars.iv.i232, 1
  %223 = ptrtoint ptr %num_of_ap.i.i183 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %num_of_ap.i.i183, align 1
  %225 = zext i8 %224 to i32
  %cmp.i231 = icmp ult i32 %indvars.iv.next.i230, %225
  br i1 %cmp.i231, label %for.cond.i.for.body.i235_crit_edge, label %for.cond.i.for.end.i238_crit_edge

for.cond.i.for.end.i238_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i238

for.cond.i.for.body.i235_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i235

for.body.i235:                                    ; preds = %for.cond.i.for.body.i235_crit_edge, %iwl_mvm_ftm_cmd_common.exit.i229.for.body.i235_crit_edge
  %indvars.iv.i232 = phi i32 [ %indvars.iv.next.i230, %for.cond.i.for.body.i235_crit_edge ], [ 0, %iwl_mvm_ftm_cmd_common.exit.i229.for.body.i235_crit_edge ]
  %arrayidx.i233 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %indvars.iv.i232
  %arrayidx21.i234 = getelementptr %struct.iwl_tof_range_req_cmd_v11, ptr %cmd.i171, i32 0, i32 8, i32 %indvars.iv.i232
  %call22.i = call fastcc i32 @iwl_mvm_ftm_put_target_v7(ptr noundef %mvm, ptr noundef %vif, ptr noundef %arrayidx.i233, ptr noundef %arrayidx21.i234) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %for.body.i235.iwl_mvm_ftm_start_v11.exit_crit_edge

for.body.i235.iwl_mvm_ftm_start_v11.exit_crit_edge: ; preds = %for.body.i235
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_start_v11.exit

for.end.i238:                                     ; preds = %for.cond.i.for.end.i238_crit_edge, %iwl_mvm_ftm_cmd_common.exit.i229.for.end.i238_crit_edge, %iwl_mvm_ftm_cmd_common.exit.i229.thread
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i.i170) #9
  %226 = ptrtoint ptr %status.i.i170 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 -1, ptr %status.i.i170, align 4, !annotation !92
  %call.i.i236 = call i32 @iwl_mvm_send_cmd_status(ptr noundef %mvm, ptr noundef nonnull %hcmd.i172, ptr noundef nonnull %status.i.i170) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i236)
  %tobool.not.i37.i237 = icmp eq i32 %call.i.i236, 0
  br i1 %tobool.not.i37.i237, label %land.lhs.true.i.i240, label %for.end.i238.iwl_mvm_ftm_send_cmd.exit.i247_crit_edge

for.end.i238.iwl_mvm_ftm_send_cmd.exit.i247_crit_edge: ; preds = %for.end.i238
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i247

land.lhs.true.i.i240:                             ; preds = %for.end.i238
  %227 = ptrtoint ptr %status.i.i170 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %status.i.i170, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %tobool1.not.i.i239 = icmp eq i32 %228, 0
  br i1 %tobool1.not.i.i239, label %land.lhs.true.i.i240.iwl_mvm_ftm_send_cmd.exit.i247_crit_edge, label %do.end.i.i241

land.lhs.true.i.i240.iwl_mvm_ftm_send_cmd.exit.i247_crit_edge: ; preds = %land.lhs.true.i.i240
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i247

do.end.i.i241:                                    ; preds = %land.lhs.true.i.i240
  %229 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %230, i32 noundef 0, ptr noundef nonnull @.str.15, i32 noundef %228) #9
  %231 = ptrtoint ptr %status.i.i170 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %status.i.i170, align 4
  %233 = zext i32 %232 to i64
  call void @__sanitizer_cov_trace_switch(i64 %233, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %232, label %land.end.i.i.i244 [
    i32 0, label %do.end.i.i241.iwl_mvm_ftm_send_cmd.exit.i247_crit_edge
    i32 1, label %sw.bb1.i.i.i242
  ]

do.end.i.i241.iwl_mvm_ftm_send_cmd.exit.i247_crit_edge: ; preds = %do.end.i.i241
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i247

sw.bb1.i.i.i242:                                  ; preds = %do.end.i.i241
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i247

land.end.i.i.i244:                                ; preds = %do.end.i.i241
  %.b36.i.i.i243 = load i1, ptr @iwl_ftm_range_request_status_to_err.__already_done, align 1
  br i1 %.b36.i.i.i243, label %land.end.i.i.i244.iwl_mvm_ftm_send_cmd.exit.i247_crit_edge, label %if.then.i.i.i245, !prof !93

land.end.i.i.i244.iwl_mvm_ftm_send_cmd.exit.i247_crit_edge: ; preds = %land.end.i.i.i244
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i247

if.then.i.i.i245:                                 ; preds = %land.end.i.i.i244
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwl_ftm_range_request_status_to_err.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 196, i32 noundef 9, ptr noundef null) #9
  br label %iwl_mvm_ftm_send_cmd.exit.i247

iwl_mvm_ftm_send_cmd.exit.i247:                   ; preds = %if.then.i.i.i245, %land.end.i.i.i244.iwl_mvm_ftm_send_cmd.exit.i247_crit_edge, %sw.bb1.i.i.i242, %do.end.i.i241.iwl_mvm_ftm_send_cmd.exit.i247_crit_edge, %land.lhs.true.i.i240.iwl_mvm_ftm_send_cmd.exit.i247_crit_edge, %for.end.i238.iwl_mvm_ftm_send_cmd.exit.i247_crit_edge
  %err.0.i.i246 = phi i32 [ %call.i.i236, %for.end.i238.iwl_mvm_ftm_send_cmd.exit.i247_crit_edge ], [ 0, %land.lhs.true.i.i240.iwl_mvm_ftm_send_cmd.exit.i247_crit_edge ], [ -16, %sw.bb1.i.i.i242 ], [ %232, %do.end.i.i241.iwl_mvm_ftm_send_cmd.exit.i247_crit_edge ], [ -5, %if.then.i.i.i245 ], [ -5, %land.end.i.i.i244.iwl_mvm_ftm_send_cmd.exit.i247_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i170) #9
  br label %iwl_mvm_ftm_start_v11.exit

iwl_mvm_ftm_start_v11.exit:                       ; preds = %iwl_mvm_ftm_send_cmd.exit.i247, %for.body.i235.iwl_mvm_ftm_start_v11.exit_crit_edge
  %retval.2.i248 = phi i32 [ %err.0.i.i246, %iwl_mvm_ftm_send_cmd.exit.i247 ], [ %call22.i, %for.body.i235.iwl_mvm_ftm_start_v11.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hcmd.i172) #9
  call void @llvm.lifetime.end.p0(i64 572, ptr nonnull %cmd.i171) #9
  br label %if.end44

sw.bb38:                                          ; preds = %if.then30.sw.bb38_crit_edge, %if.then30.sw.bb38_crit_edge609
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %cmd.i250) #9
  %234 = getelementptr inbounds i8, ptr %cmd.i250, i32 4
  %235 = call ptr @memset(ptr %234, i32 255, i32 508)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hcmd.i251) #9
  %236 = getelementptr inbounds i8, ptr %hcmd.i251, i32 32
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 33619967, ptr %236, align 4, !annotation !92
  %238 = ptrtoint ptr %hcmd.i251 to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %cmd.i250, ptr %hcmd.i251, align 4
  %arrayinit.cur.ptr.i252 = getelementptr inbounds ptr, ptr %hcmd.i251, i32 1
  %id.i253 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i251, i32 0, i32 5
  %239 = call ptr @memset(ptr %arrayinit.cur.ptr.i252, i32 0, i32 20)
  %240 = ptrtoint ptr %id.i253 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 2048, ptr %id.i253, align 4
  %len.i254 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i251, i32 0, i32 6
  %241 = ptrtoint ptr %len.i254 to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 512, ptr %len.i254, align 4
  %arrayinit.start3.i255 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i251, i32 0, i32 6, i32 1
  %242 = ptrtoint ptr %arrayinit.start3.i255 to i32
  call void @__asan_store2_noabort(i32 %242)
  store i16 0, ptr %arrayinit.start3.i255, align 2
  %243 = ptrtoint ptr %cmd.i250 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 -2147479552, ptr %cmd.i250, align 4
  %244 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %244)
  %245 = load i64, ptr %req, align 8
  %conv.i.i258 = trunc i64 %245 to i8
  %246 = ptrtoint ptr %234 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %conv.i.i258, ptr %234, align 4
  %n_peers.i.i260 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 2
  %247 = ptrtoint ptr %n_peers.i.i260 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %n_peers.i.i260, align 4
  %conv1.i.i261 = trunc i32 %248 to i8
  %num_of_ap.i.i262 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i250, i32 0, i32 2
  %249 = ptrtoint ptr %num_of_ap.i.i262 to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %conv1.i.i261, ptr %num_of_ap.i.i262, align 1
  %timeout.i.i263 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 4
  %250 = ptrtoint ptr %timeout.i.i263 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %timeout.i.i263, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %tobool.not.i.i264 = icmp eq i32 %251, 0
  %252 = call i32 @llvm.bswap.i32(i32 %251) #9
  %spec.select.i.i265 = select i1 %tobool.not.i.i264, i32 -61696, i32 %252
  %253 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i250, i32 0, i32 6
  %254 = ptrtoint ptr %253 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %spec.select.i.i265, ptr %253, align 4
  %macaddr_template.i.i266 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i250, i32 0, i32 5
  %mac_addr.i.i267 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 5
  %255 = call ptr @memcpy(ptr %macaddr_template.i.i266, ptr %mac_addr.i.i267, i32 6)
  %arrayidx.i.i268 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 0
  %256 = ptrtoint ptr %arrayidx.i.i268 to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %arrayidx.i.i268, align 1
  %neg.i.i269 = xor i8 %257, -1
  %arrayidx8.i.i270 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i250, i32 0, i32 4, i32 0
  %258 = ptrtoint ptr %arrayidx8.i.i270 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %neg.i.i269, ptr %arrayidx8.i.i270, align 4
  %arrayidx.1.i.i271 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 1
  %259 = ptrtoint ptr %arrayidx.1.i.i271 to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %arrayidx.1.i.i271, align 1
  %neg.1.i.i272 = xor i8 %260, -1
  %arrayidx8.1.i.i273 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i250, i32 0, i32 4, i32 1
  %261 = ptrtoint ptr %arrayidx8.1.i.i273 to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %neg.1.i.i272, ptr %arrayidx8.1.i.i273, align 1
  %arrayidx.2.i.i274 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 2
  %262 = ptrtoint ptr %arrayidx.2.i.i274 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %arrayidx.2.i.i274, align 1
  %neg.2.i.i275 = xor i8 %263, -1
  %arrayidx8.2.i.i276 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i250, i32 0, i32 4, i32 2
  %264 = ptrtoint ptr %arrayidx8.2.i.i276 to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 %neg.2.i.i275, ptr %arrayidx8.2.i.i276, align 2
  %arrayidx.3.i.i277 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 3
  %265 = ptrtoint ptr %arrayidx.3.i.i277 to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %arrayidx.3.i.i277, align 1
  %neg.3.i.i278 = xor i8 %266, -1
  %arrayidx8.3.i.i279 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i250, i32 0, i32 4, i32 3
  %267 = ptrtoint ptr %arrayidx8.3.i.i279 to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 %neg.3.i.i278, ptr %arrayidx8.3.i.i279, align 1
  %arrayidx.4.i.i280 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 4
  %268 = ptrtoint ptr %arrayidx.4.i.i280 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %arrayidx.4.i.i280, align 1
  %neg.4.i.i281 = xor i8 %269, -1
  %arrayidx8.4.i.i282 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i250, i32 0, i32 4, i32 4
  %270 = ptrtoint ptr %arrayidx8.4.i.i282 to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %neg.4.i.i281, ptr %arrayidx8.4.i.i282, align 4
  %arrayidx.5.i.i283 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 5
  %271 = ptrtoint ptr %arrayidx.5.i.i283 to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %arrayidx.5.i.i283, align 1
  %neg.5.i.i284 = xor i8 %272, -1
  %arrayidx8.5.i.i285 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i250, i32 0, i32 4, i32 5
  %273 = ptrtoint ptr %arrayidx8.5.i.i285 to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 %neg.5.i.i284, ptr %arrayidx8.5.i.i285, align 1
  %assoc.i.i286 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 10
  %274 = ptrtoint ptr %assoc.i.i286 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %assoc.i.i286, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %275)
  %tobool9.not.i.i287 = icmp eq i8 %275, 0
  br i1 %tobool9.not.i.i287, label %if.else26.i.i305, label %if.then10.i.i291

if.then10.i.i291:                                 ; preds = %sw.bb38
  %bss_conf.i.i288 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %range_req_bssid.i.i289 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i250, i32 0, i32 3
  %276 = ptrtoint ptr %bss_conf.i.i288 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %bss_conf.i.i288, align 8
  %278 = call ptr @memcpy(ptr %range_req_bssid.i.i289, ptr %277, i32 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %248)
  %cmp152.not.i.i290 = icmp eq i32 %248, 0
  br i1 %cmp152.not.i.i290, label %iwl_mvm_ftm_cmd_common.exit.i309.thread, label %if.then10.i.i291.for.body17.i.i299_crit_edge

if.then10.i.i291.for.body17.i.i299_crit_edge:     ; preds = %if.then10.i.i291
  br label %for.body17.i.i299

iwl_mvm_ftm_cmd_common.exit.i309.thread:          ; preds = %if.then10.i.i291
  call void @__sanitizer_cov_trace_pc() #11
  %tsf_mac_id30.i.i307551 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i250, i32 0, i32 7
  %279 = ptrtoint ptr %tsf_mac_id30.i.i307551 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 -16777216, ptr %tsf_mac_id30.i.i307551, align 4
  br label %for.end.i321

for.cond13.i.i294:                                ; preds = %for.body17.i.i299
  %inc24.i.i292 = add nuw i32 %i.13.i.i295, 1
  %exitcond.not.i.i293 = icmp eq i32 %inc24.i.i292, %248
  br i1 %exitcond.not.i.i293, label %for.cond13.i.i294.iwl_mvm_ftm_cmd_common.exit.i309_crit_edge, label %for.cond13.i.i294.for.body17.i.i299_crit_edge

for.cond13.i.i294.for.body17.i.i299_crit_edge:    ; preds = %for.cond13.i.i294
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body17.i.i299

for.cond13.i.i294.iwl_mvm_ftm_cmd_common.exit.i309_crit_edge: ; preds = %for.cond13.i.i294
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_cmd_common.exit.i309

for.body17.i.i299:                                ; preds = %for.cond13.i.i294.for.body17.i.i299_crit_edge, %if.then10.i.i291.for.body17.i.i299_crit_edge
  %i.13.i.i295 = phi i32 [ %inc24.i.i292, %for.cond13.i.i294.for.body17.i.i299_crit_edge ], [ 0, %if.then10.i.i291.for.body17.i.i299_crit_edge ]
  %report_ap_tsf.i.i296 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %i.13.i.i295, i32 2
  %280 = ptrtoint ptr %report_ap_tsf.i.i296 to i32
  call void @__asan_load1_noabort(i32 %280)
  %bf.load.i.i297 = load i8, ptr %report_ap_tsf.i.i296, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i297)
  %tobool19.not.i.i298 = icmp sgt i8 %bf.load.i.i297, -1
  br i1 %tobool19.not.i.i298, label %for.cond13.i.i294, label %if.then20.i.i303

if.then20.i.i303:                                 ; preds = %for.body17.i.i299
  call void @__sanitizer_cov_trace_pc() #11
  %drv_priv.i.i.i300 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %id.i.i301 = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i.i.i300, i32 0, i32 1
  %281 = ptrtoint ptr %id.i.i301 to i32
  call void @__asan_load2_noabort(i32 %281)
  %282 = load i16, ptr %id.i.i301, align 4
  %conv21.i.i302 = zext i16 %282 to i32
  %283 = call i32 @llvm.bswap.i32(i32 %conv21.i.i302) #9
  br label %iwl_mvm_ftm_cmd_common.exit.i309

if.else26.i.i305:                                 ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #11
  %range_req_bssid27.i.i304 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i250, i32 0, i32 3
  %284 = call ptr @memset(ptr %range_req_bssid27.i.i304, i32 255, i32 6)
  br label %iwl_mvm_ftm_cmd_common.exit.i309

iwl_mvm_ftm_cmd_common.exit.i309:                 ; preds = %if.else26.i.i305, %if.then20.i.i303, %for.cond13.i.i294.iwl_mvm_ftm_cmd_common.exit.i309_crit_edge
  %.sink.i.i306 = phi i32 [ %283, %if.then20.i.i303 ], [ -16777216, %if.else26.i.i305 ], [ -16777216, %for.cond13.i.i294.iwl_mvm_ftm_cmd_common.exit.i309_crit_edge ]
  %tsf_mac_id30.i.i307 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i250, i32 0, i32 7
  %285 = ptrtoint ptr %tsf_mac_id30.i.i307 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %.sink.i.i306, ptr %tsf_mac_id30.i.i307, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1.i.i261)
  %cmp38.not.i308 = icmp eq i8 %conv1.i.i261, 0
  br i1 %cmp38.not.i308, label %iwl_mvm_ftm_cmd_common.exit.i309.for.end.i321_crit_edge, label %iwl_mvm_ftm_cmd_common.exit.i309.for.body.i318_crit_edge

iwl_mvm_ftm_cmd_common.exit.i309.for.body.i318_crit_edge: ; preds = %iwl_mvm_ftm_cmd_common.exit.i309
  br label %for.body.i318

iwl_mvm_ftm_cmd_common.exit.i309.for.end.i321_crit_edge: ; preds = %iwl_mvm_ftm_cmd_common.exit.i309
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i321

for.cond.i312:                                    ; preds = %for.body.i318
  %indvars.iv.next.i310 = add nuw nsw i32 %indvars.iv.i313, 1
  %286 = ptrtoint ptr %num_of_ap.i.i262 to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %num_of_ap.i.i262, align 1
  %288 = zext i8 %287 to i32
  %cmp.i311 = icmp ult i32 %indvars.iv.next.i310, %288
  br i1 %cmp.i311, label %for.cond.i312.for.body.i318_crit_edge, label %for.cond.i312.for.end.i321_crit_edge

for.cond.i312.for.end.i321_crit_edge:             ; preds = %for.cond.i312
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i321

for.cond.i312.for.body.i318_crit_edge:            ; preds = %for.cond.i312
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i318

for.body.i318:                                    ; preds = %for.cond.i312.for.body.i318_crit_edge, %iwl_mvm_ftm_cmd_common.exit.i309.for.body.i318_crit_edge
  %indvars.iv.i313 = phi i32 [ %indvars.iv.next.i310, %for.cond.i312.for.body.i318_crit_edge ], [ 0, %iwl_mvm_ftm_cmd_common.exit.i309.for.body.i318_crit_edge ]
  %arrayidx.i314 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %indvars.iv.i313
  %arrayidx21.i315 = getelementptr %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i250, i32 0, i32 8, i32 %indvars.iv.i313
  %call22.i316 = call fastcc i32 @iwl_mvm_ftm_put_target(ptr noundef %mvm, ptr noundef %vif, ptr noundef %arrayidx.i314, ptr noundef %arrayidx21.i315) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i316)
  %tobool.not.i317 = icmp eq i32 %call22.i316, 0
  br i1 %tobool.not.i317, label %for.cond.i312, label %for.body.i318.iwl_mvm_ftm_start_v9.exit_crit_edge

for.body.i318.iwl_mvm_ftm_start_v9.exit_crit_edge: ; preds = %for.body.i318
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_start_v9.exit

for.end.i321:                                     ; preds = %for.cond.i312.for.end.i321_crit_edge, %iwl_mvm_ftm_cmd_common.exit.i309.for.end.i321_crit_edge, %iwl_mvm_ftm_cmd_common.exit.i309.thread
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i.i249) #9
  %289 = ptrtoint ptr %status.i.i249 to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 -1, ptr %status.i.i249, align 4, !annotation !92
  %call.i.i319 = call i32 @iwl_mvm_send_cmd_status(ptr noundef %mvm, ptr noundef nonnull %hcmd.i251, ptr noundef nonnull %status.i.i249) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i319)
  %tobool.not.i37.i320 = icmp eq i32 %call.i.i319, 0
  br i1 %tobool.not.i37.i320, label %land.lhs.true.i.i323, label %for.end.i321.iwl_mvm_ftm_send_cmd.exit.i330_crit_edge

for.end.i321.iwl_mvm_ftm_send_cmd.exit.i330_crit_edge: ; preds = %for.end.i321
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i330

land.lhs.true.i.i323:                             ; preds = %for.end.i321
  %290 = ptrtoint ptr %status.i.i249 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %status.i.i249, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %291)
  %tobool1.not.i.i322 = icmp eq i32 %291, 0
  br i1 %tobool1.not.i.i322, label %land.lhs.true.i.i323.iwl_mvm_ftm_send_cmd.exit.i330_crit_edge, label %do.end.i.i324

land.lhs.true.i.i323.iwl_mvm_ftm_send_cmd.exit.i330_crit_edge: ; preds = %land.lhs.true.i.i323
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i330

do.end.i.i324:                                    ; preds = %land.lhs.true.i.i323
  %292 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %293, i32 noundef 0, ptr noundef nonnull @.str.15, i32 noundef %291) #9
  %294 = ptrtoint ptr %status.i.i249 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %status.i.i249, align 4
  %296 = zext i32 %295 to i64
  call void @__sanitizer_cov_trace_switch(i64 %296, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %295, label %land.end.i.i.i327 [
    i32 0, label %do.end.i.i324.iwl_mvm_ftm_send_cmd.exit.i330_crit_edge
    i32 1, label %sw.bb1.i.i.i325
  ]

do.end.i.i324.iwl_mvm_ftm_send_cmd.exit.i330_crit_edge: ; preds = %do.end.i.i324
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i330

sw.bb1.i.i.i325:                                  ; preds = %do.end.i.i324
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i330

land.end.i.i.i327:                                ; preds = %do.end.i.i324
  %.b36.i.i.i326 = load i1, ptr @iwl_ftm_range_request_status_to_err.__already_done, align 1
  br i1 %.b36.i.i.i326, label %land.end.i.i.i327.iwl_mvm_ftm_send_cmd.exit.i330_crit_edge, label %if.then.i.i.i328, !prof !93

land.end.i.i.i327.iwl_mvm_ftm_send_cmd.exit.i330_crit_edge: ; preds = %land.end.i.i.i327
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i330

if.then.i.i.i328:                                 ; preds = %land.end.i.i.i327
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwl_ftm_range_request_status_to_err.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 196, i32 noundef 9, ptr noundef null) #9
  br label %iwl_mvm_ftm_send_cmd.exit.i330

iwl_mvm_ftm_send_cmd.exit.i330:                   ; preds = %if.then.i.i.i328, %land.end.i.i.i327.iwl_mvm_ftm_send_cmd.exit.i330_crit_edge, %sw.bb1.i.i.i325, %do.end.i.i324.iwl_mvm_ftm_send_cmd.exit.i330_crit_edge, %land.lhs.true.i.i323.iwl_mvm_ftm_send_cmd.exit.i330_crit_edge, %for.end.i321.iwl_mvm_ftm_send_cmd.exit.i330_crit_edge
  %err.0.i.i329 = phi i32 [ %call.i.i319, %for.end.i321.iwl_mvm_ftm_send_cmd.exit.i330_crit_edge ], [ 0, %land.lhs.true.i.i323.iwl_mvm_ftm_send_cmd.exit.i330_crit_edge ], [ -16, %sw.bb1.i.i.i325 ], [ %295, %do.end.i.i324.iwl_mvm_ftm_send_cmd.exit.i330_crit_edge ], [ -5, %if.then.i.i.i328 ], [ -5, %land.end.i.i.i327.iwl_mvm_ftm_send_cmd.exit.i330_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i249) #9
  br label %iwl_mvm_ftm_start_v9.exit

iwl_mvm_ftm_start_v9.exit:                        ; preds = %iwl_mvm_ftm_send_cmd.exit.i330, %for.body.i318.iwl_mvm_ftm_start_v9.exit_crit_edge
  %retval.2.i331 = phi i32 [ %err.0.i.i329, %iwl_mvm_ftm_send_cmd.exit.i330 ], [ %call22.i316, %for.body.i318.iwl_mvm_ftm_start_v9.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hcmd.i251) #9
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %cmd.i250) #9
  br label %if.end44

sw.bb40:                                          ; preds = %if.then30
  call void @llvm.lifetime.start.p0(i64 456, ptr nonnull %cmd.i333) #9
  %297 = getelementptr inbounds i8, ptr %cmd.i333, i32 4
  %298 = call ptr @memset(ptr %297, i32 255, i32 452)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hcmd.i334) #9
  %299 = getelementptr inbounds i8, ptr %hcmd.i334, i32 32
  %300 = ptrtoint ptr %299 to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 33619967, ptr %299, align 4, !annotation !92
  %301 = ptrtoint ptr %hcmd.i334 to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr %cmd.i333, ptr %hcmd.i334, align 4
  %arrayinit.cur.ptr.i335 = getelementptr inbounds ptr, ptr %hcmd.i334, i32 1
  %id.i336 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i334, i32 0, i32 5
  %302 = call ptr @memset(ptr %arrayinit.cur.ptr.i335, i32 0, i32 20)
  %303 = ptrtoint ptr %id.i336 to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 2048, ptr %id.i336, align 4
  %len.i337 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i334, i32 0, i32 6
  %304 = ptrtoint ptr %len.i337 to i32
  call void @__asan_store2_noabort(i32 %304)
  store i16 456, ptr %len.i337, align 4
  %arrayinit.start3.i338 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i334, i32 0, i32 6, i32 1
  %305 = ptrtoint ptr %arrayinit.start3.i338 to i32
  call void @__asan_store2_noabort(i32 %305)
  store i16 0, ptr %arrayinit.start3.i338, align 2
  %306 = ptrtoint ptr %cmd.i333 to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 -2147479552, ptr %cmd.i333, align 4
  %307 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %307)
  %308 = load i64, ptr %req, align 8
  %conv.i.i.i = trunc i64 %308 to i8
  %309 = ptrtoint ptr %297 to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 %conv.i.i.i, ptr %297, align 4
  %n_peers.i.i.i = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 2
  %310 = ptrtoint ptr %n_peers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %n_peers.i.i.i, align 4
  %conv1.i.i.i = trunc i32 %311 to i8
  %num_of_ap.i.i.i = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i333, i32 0, i32 2
  %312 = ptrtoint ptr %num_of_ap.i.i.i to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 %conv1.i.i.i, ptr %num_of_ap.i.i.i, align 1
  %timeout.i.i.i = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 4
  %313 = ptrtoint ptr %timeout.i.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %timeout.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %314)
  %tobool.not.i.i.i = icmp eq i32 %314, 0
  %315 = call i32 @llvm.bswap.i32(i32 %314) #9
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, i32 -61696, i32 %315
  %316 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i333, i32 0, i32 6
  %317 = ptrtoint ptr %316 to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %spec.select.i.i.i, ptr %316, align 4
  %macaddr_template.i.i.i = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i333, i32 0, i32 5
  %mac_addr.i.i.i = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 5
  %318 = call ptr @memcpy(ptr %macaddr_template.i.i.i, ptr %mac_addr.i.i.i, i32 6)
  %arrayidx.i.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 0
  %319 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %arrayidx.i.i.i, align 1
  %neg.i.i.i = xor i8 %320, -1
  %arrayidx8.i.i.i = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i333, i32 0, i32 4, i32 0
  %321 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 %neg.i.i.i, ptr %arrayidx8.i.i.i, align 4
  %arrayidx.1.i.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 1
  %322 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %arrayidx.1.i.i.i, align 1
  %neg.1.i.i.i = xor i8 %323, -1
  %arrayidx8.1.i.i.i = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i333, i32 0, i32 4, i32 1
  %324 = ptrtoint ptr %arrayidx8.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 %neg.1.i.i.i, ptr %arrayidx8.1.i.i.i, align 1
  %arrayidx.2.i.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 2
  %325 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %arrayidx.2.i.i.i, align 1
  %neg.2.i.i.i = xor i8 %326, -1
  %arrayidx8.2.i.i.i = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i333, i32 0, i32 4, i32 2
  %327 = ptrtoint ptr %arrayidx8.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 %neg.2.i.i.i, ptr %arrayidx8.2.i.i.i, align 2
  %arrayidx.3.i.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 3
  %328 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %arrayidx.3.i.i.i, align 1
  %neg.3.i.i.i = xor i8 %329, -1
  %arrayidx8.3.i.i.i = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i333, i32 0, i32 4, i32 3
  %330 = ptrtoint ptr %arrayidx8.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 %neg.3.i.i.i, ptr %arrayidx8.3.i.i.i, align 1
  %arrayidx.4.i.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 4
  %331 = ptrtoint ptr %arrayidx.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %arrayidx.4.i.i.i, align 1
  %neg.4.i.i.i = xor i8 %332, -1
  %arrayidx8.4.i.i.i = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i333, i32 0, i32 4, i32 4
  %333 = ptrtoint ptr %arrayidx8.4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 %neg.4.i.i.i, ptr %arrayidx8.4.i.i.i, align 4
  %arrayidx.5.i.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 5
  %334 = ptrtoint ptr %arrayidx.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %arrayidx.5.i.i.i, align 1
  %neg.5.i.i.i = xor i8 %335, -1
  %arrayidx8.5.i.i.i = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i333, i32 0, i32 4, i32 5
  %336 = ptrtoint ptr %arrayidx8.5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 %neg.5.i.i.i, ptr %arrayidx8.5.i.i.i, align 1
  %assoc.i.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 10
  %337 = ptrtoint ptr %assoc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %assoc.i.i.i, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %338)
  %tobool9.not.i.i.i = icmp eq i8 %338, 0
  br i1 %tobool9.not.i.i.i, label %if.else26.i.i.i, label %if.then10.i.i.i

if.then10.i.i.i:                                  ; preds = %sw.bb40
  %bss_conf.i.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %range_req_bssid.i.i.i = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i333, i32 0, i32 3
  %339 = ptrtoint ptr %bss_conf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %bss_conf.i.i.i, align 8
  %341 = call ptr @memcpy(ptr %range_req_bssid.i.i.i, ptr %340, i32 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %311)
  %cmp152.not.i.i.i = icmp eq i32 %311, 0
  br i1 %cmp152.not.i.i.i, label %iwl_mvm_ftm_cmd_v8.exit.i.thread, label %if.then10.i.i.i.for.body17.i.i.i_crit_edge

if.then10.i.i.i.for.body17.i.i.i_crit_edge:       ; preds = %if.then10.i.i.i
  br label %for.body17.i.i.i

iwl_mvm_ftm_cmd_v8.exit.i.thread:                 ; preds = %if.then10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %tsf_mac_id30.i.i.i554 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i333, i32 0, i32 7
  %342 = ptrtoint ptr %tsf_mac_id30.i.i.i554 to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 -16777216, ptr %tsf_mac_id30.i.i.i554, align 4
  br label %for.end.i351

for.cond13.i.i.i:                                 ; preds = %for.body17.i.i.i
  %inc24.i.i.i = add nuw i32 %i.13.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc24.i.i.i, %311
  br i1 %exitcond.not.i.i.i, label %for.cond13.i.i.i.iwl_mvm_ftm_cmd_v8.exit.i_crit_edge, label %for.cond13.i.i.i.for.body17.i.i.i_crit_edge

for.cond13.i.i.i.for.body17.i.i.i_crit_edge:      ; preds = %for.cond13.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body17.i.i.i

for.cond13.i.i.i.iwl_mvm_ftm_cmd_v8.exit.i_crit_edge: ; preds = %for.cond13.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_cmd_v8.exit.i

for.body17.i.i.i:                                 ; preds = %for.cond13.i.i.i.for.body17.i.i.i_crit_edge, %if.then10.i.i.i.for.body17.i.i.i_crit_edge
  %i.13.i.i.i = phi i32 [ %inc24.i.i.i, %for.cond13.i.i.i.for.body17.i.i.i_crit_edge ], [ 0, %if.then10.i.i.i.for.body17.i.i.i_crit_edge ]
  %report_ap_tsf.i.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %i.13.i.i.i, i32 2
  %343 = ptrtoint ptr %report_ap_tsf.i.i.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %bf.load.i.i.i = load i8, ptr %report_ap_tsf.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool19.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool19.not.i.i.i, label %for.cond13.i.i.i, label %if.then20.i.i.i

if.then20.i.i.i:                                  ; preds = %for.body17.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %drv_priv.i.i.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %id.i.i.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i.i.i.i, i32 0, i32 1
  %344 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load2_noabort(i32 %344)
  %345 = load i16, ptr %id.i.i.i, align 4
  %conv21.i.i.i = zext i16 %345 to i32
  %346 = call i32 @llvm.bswap.i32(i32 %conv21.i.i.i) #9
  br label %iwl_mvm_ftm_cmd_v8.exit.i

if.else26.i.i.i:                                  ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #11
  %range_req_bssid27.i.i.i = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i333, i32 0, i32 3
  %347 = call ptr @memset(ptr %range_req_bssid27.i.i.i, i32 255, i32 6)
  br label %iwl_mvm_ftm_cmd_v8.exit.i

iwl_mvm_ftm_cmd_v8.exit.i:                        ; preds = %if.else26.i.i.i, %if.then20.i.i.i, %for.cond13.i.i.i.iwl_mvm_ftm_cmd_v8.exit.i_crit_edge
  %.sink.i.i.i = phi i32 [ %346, %if.then20.i.i.i ], [ -16777216, %if.else26.i.i.i ], [ -16777216, %for.cond13.i.i.i.iwl_mvm_ftm_cmd_v8.exit.i_crit_edge ]
  %tsf_mac_id30.i.i.i = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd.i333, i32 0, i32 7
  %348 = ptrtoint ptr %tsf_mac_id30.i.i.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 %.sink.i.i.i, ptr %tsf_mac_id30.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1.i.i.i)
  %cmp42.not.i = icmp eq i8 %conv1.i.i.i, 0
  br i1 %cmp42.not.i, label %iwl_mvm_ftm_cmd_v8.exit.i.for.end.i351_crit_edge, label %iwl_mvm_ftm_cmd_v8.exit.i.for.body.i346_crit_edge

iwl_mvm_ftm_cmd_v8.exit.i.for.body.i346_crit_edge: ; preds = %iwl_mvm_ftm_cmd_v8.exit.i
  br label %for.body.i346

iwl_mvm_ftm_cmd_v8.exit.i.for.end.i351_crit_edge: ; preds = %iwl_mvm_ftm_cmd_v8.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i351

for.body.i346:                                    ; preds = %for.inc.i350.for.body.i346_crit_edge, %iwl_mvm_ftm_cmd_v8.exit.i.for.body.i346_crit_edge
  %indvars.iv.i341 = phi i32 [ %indvars.iv.next.i348, %for.inc.i350.for.body.i346_crit_edge ], [ 0, %iwl_mvm_ftm_cmd_v8.exit.i.for.body.i346_crit_edge ]
  %arrayidx.i342 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %indvars.iv.i341
  %arrayidx21.i343 = getelementptr %struct.iwl_tof_range_req_cmd_v8, ptr %cmd.i333, i32 0, i32 10, i32 %indvars.iv.i341
  %channel_num.i.i = getelementptr %struct.iwl_tof_range_req_cmd_v8, ptr %cmd.i333, i32 0, i32 10, i32 %indvars.iv.i341, i32 1
  %format_bw.i.i = getelementptr %struct.iwl_tof_range_req_cmd_v8, ptr %cmd.i333, i32 0, i32 10, i32 %indvars.iv.i341, i32 2
  %ctrl_ch_position.i.i = getelementptr %struct.iwl_tof_range_req_cmd_v8, ptr %cmd.i333, i32 0, i32 10, i32 %indvars.iv.i341, i32 3
  %call.i.i344 = call fastcc i32 @iwl_mvm_ftm_target_chandef_v2(ptr noundef %mvm, ptr noundef %arrayidx.i342, ptr noundef %channel_num.i.i, ptr noundef %format_bw.i.i, ptr noundef %ctrl_ch_position.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i344)
  %tobool.not.i.i345 = icmp eq i32 %call.i.i344, 0
  br i1 %tobool.not.i.i345, label %if.end.i.i347, label %for.body.i346.iwl_mvm_ftm_start_v8.exit_crit_edge

for.body.i346.iwl_mvm_ftm_start_v8.exit_crit_edge: ; preds = %for.body.i346
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_start_v8.exit

if.end.i.i347:                                    ; preds = %for.body.i346
  %bssid.i.i.i = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v6, ptr %arrayidx21.i343, i32 0, i32 5
  %349 = call ptr @memcpy(ptr %bssid.i.i.i, ptr %arrayidx.i342, i32 6)
  %burst_period.i.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %indvars.iv.i341, i32 3, i32 1
  %350 = ptrtoint ptr %burst_period.i.i.i to i32
  call void @__asan_load2_noabort(i32 %350)
  %351 = load i16, ptr %burst_period.i.i.i, align 4
  %352 = call i16 @llvm.bswap.i16(i16 %351) #9
  %burst_period2.i.i.i = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v6, ptr %arrayidx21.i343, i32 0, i32 6
  %353 = ptrtoint ptr %burst_period2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %353)
  store i16 %352, ptr %burst_period2.i.i.i, align 2
  %ftms_per_burst.i.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %indvars.iv.i341, i32 3, i32 5
  %354 = ptrtoint ptr %ftms_per_burst.i.i.i to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %ftms_per_burst.i.i.i, align 1
  %samples_per_burst.i.i.i = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v6, ptr %arrayidx21.i343, i32 0, i32 7
  %356 = ptrtoint ptr %samples_per_burst.i.i.i to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 %355, ptr %samples_per_burst.i.i.i, align 4
  %num_bursts_exp.i.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %indvars.iv.i341, i32 3, i32 3
  %357 = ptrtoint ptr %num_bursts_exp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %num_bursts_exp.i.i.i, align 1
  %num_of_bursts.i.i.i = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v6, ptr %arrayidx21.i343, i32 0, i32 8
  %359 = ptrtoint ptr %num_of_bursts.i.i.i to i32
  call void @__asan_store1_noabort(i32 %359)
  store i8 %358, ptr %num_of_bursts.i.i.i, align 1
  %ftmr_retries.i.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %indvars.iv.i341, i32 3, i32 6
  %360 = ptrtoint ptr %ftmr_retries.i.i.i to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %ftmr_retries.i.i.i, align 2
  %ftmr_max_retries.i.i.i = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v6, ptr %arrayidx21.i343, i32 0, i32 4
  %362 = ptrtoint ptr %ftmr_max_retries.i.i.i to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 %361, ptr %ftmr_max_retries.i.i.i, align 1
  %asap.i.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %indvars.iv.i341, i32 3, i32 2
  %363 = ptrtoint ptr %asap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %363)
  %bf.load.i.i35.i = load i8, ptr %asap.i.i.i, align 2
  %364 = and i8 %bf.load.i.i35.i, 64
  %365 = zext i8 %364 to i32
  %366 = shl nuw nsw i32 %365, 19
  %367 = and i8 %bf.load.i.i35.i, 32
  %368 = zext i8 %367 to i32
  %369 = shl nuw nsw i32 %368, 21
  %370 = or i32 %369, %366
  %371 = and i8 %bf.load.i.i35.i, 16
  %372 = zext i8 %371 to i32
  %373 = shl nuw nsw i32 %372, 23
  %374 = or i32 %373, %370
  %or27.i.i.i = or i32 %374, 268435456
  %375 = ptrtoint ptr %arrayidx21.i343 to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 %or27.i.i.i, ptr %arrayidx21.i343, align 4
  %376 = and i8 %bf.load.i.i35.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %376)
  %tobool32.not.i.i.i = icmp eq i8 %376, 0
  br i1 %tobool32.not.i.i.i, label %if.else.i.i.i, label %if.end.i.i347.if.end45.sink.split.i.i.i_crit_edge

if.end.i.i347.if.end45.sink.split.i.i.i_crit_edge: ; preds = %if.end.i.i347
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i347
  %377 = and i8 %bf.load.i.i35.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %377)
  %tobool40.not.i.i.i = icmp eq i8 %377, 0
  br i1 %tobool40.not.i.i.i, label %if.else.i.i.i.if.end45.i.i.i_crit_edge, label %if.else.i.i.i.if.end45.sink.split.i.i.i_crit_edge

if.else.i.i.i.if.end45.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.sink.split.i.i.i

if.else.i.i.i.if.end45.i.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i.i.i

if.end45.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end45.sink.split.i.i.i_crit_edge, %if.end.i.i347.if.end45.sink.split.i.i.i_crit_edge
  %.sink.i.i36.i = phi i32 [ 268697600, %if.end.i.i347.if.end45.sink.split.i.i.i_crit_edge ], [ 268566528, %if.else.i.i.i.if.end45.sink.split.i.i.i_crit_edge ]
  %or43.i.i.i = or i32 %.sink.i.i36.i, %374
  %378 = ptrtoint ptr %arrayidx21.i343 to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 %or43.i.i.i, ptr %arrayidx21.i343, align 4
  br label %if.end45.i.i.i

if.end45.i.i.i:                                   ; preds = %if.end45.sink.split.i.i.i, %if.else.i.i.i.if.end45.i.i.i_crit_edge
  %379 = and i8 %bf.load.i.i35.i, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %379)
  %380 = icmp eq i8 %379, 0
  %381 = and i8 %bf.load.i.i35.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %381)
  %tobool64.not.i.i.i = icmp eq i8 %381, 0
  %or.cond1.i.i.i = or i1 %380, %tobool64.not.i.i.i
  br i1 %or.cond1.i.i.i, label %if.end45.i.i.i.for.inc.i350_crit_edge, label %if.then65.i.i.i

if.end45.i.i.i.for.inc.i350_crit_edge:            ; preds = %if.end45.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i350

if.then65.i.i.i:                                  ; preds = %if.end45.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %382 = ptrtoint ptr %arrayidx21.i343 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %arrayidx21.i343, align 4
  %or67.i.i.i = or i32 %383, 1048576
  store i32 %or67.i.i.i, ptr %arrayidx21.i343, align 4
  br label %for.inc.i350

for.inc.i350:                                     ; preds = %if.then65.i.i.i, %if.end45.i.i.i.for.inc.i350_crit_edge
  %indvars.iv.next.i348 = add nuw nsw i32 %indvars.iv.i341, 1
  %384 = ptrtoint ptr %num_of_ap.i.i.i to i32
  call void @__asan_load1_noabort(i32 %384)
  %385 = load i8, ptr %num_of_ap.i.i.i, align 1
  %386 = zext i8 %385 to i32
  %cmp.i349 = icmp ult i32 %indvars.iv.next.i348, %386
  br i1 %cmp.i349, label %for.inc.i350.for.body.i346_crit_edge, label %for.inc.i350.for.end.i351_crit_edge

for.inc.i350.for.end.i351_crit_edge:              ; preds = %for.inc.i350
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i351

for.inc.i350.for.body.i346_crit_edge:             ; preds = %for.inc.i350
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i346

for.end.i351:                                     ; preds = %for.inc.i350.for.end.i351_crit_edge, %iwl_mvm_ftm_cmd_v8.exit.i.for.end.i351_crit_edge, %iwl_mvm_ftm_cmd_v8.exit.i.thread
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i.i332) #9
  %387 = ptrtoint ptr %status.i.i332 to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 -1, ptr %status.i.i332, align 4, !annotation !92
  %call.i37.i = call i32 @iwl_mvm_send_cmd_status(ptr noundef %mvm, ptr noundef nonnull %hcmd.i334, ptr noundef nonnull %status.i.i332) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.i)
  %tobool.not.i38.i = icmp eq i32 %call.i37.i, 0
  br i1 %tobool.not.i38.i, label %land.lhs.true.i.i353, label %for.end.i351.iwl_mvm_ftm_send_cmd.exit.i360_crit_edge

for.end.i351.iwl_mvm_ftm_send_cmd.exit.i360_crit_edge: ; preds = %for.end.i351
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i360

land.lhs.true.i.i353:                             ; preds = %for.end.i351
  %388 = ptrtoint ptr %status.i.i332 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %status.i.i332, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %389)
  %tobool1.not.i.i352 = icmp eq i32 %389, 0
  br i1 %tobool1.not.i.i352, label %land.lhs.true.i.i353.iwl_mvm_ftm_send_cmd.exit.i360_crit_edge, label %do.end.i.i354

land.lhs.true.i.i353.iwl_mvm_ftm_send_cmd.exit.i360_crit_edge: ; preds = %land.lhs.true.i.i353
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i360

do.end.i.i354:                                    ; preds = %land.lhs.true.i.i353
  %390 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %391, i32 noundef 0, ptr noundef nonnull @.str.15, i32 noundef %389) #9
  %392 = ptrtoint ptr %status.i.i332 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %status.i.i332, align 4
  %394 = zext i32 %393 to i64
  call void @__sanitizer_cov_trace_switch(i64 %394, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %393, label %land.end.i.i.i357 [
    i32 0, label %do.end.i.i354.iwl_mvm_ftm_send_cmd.exit.i360_crit_edge
    i32 1, label %sw.bb1.i.i.i355
  ]

do.end.i.i354.iwl_mvm_ftm_send_cmd.exit.i360_crit_edge: ; preds = %do.end.i.i354
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i360

sw.bb1.i.i.i355:                                  ; preds = %do.end.i.i354
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i360

land.end.i.i.i357:                                ; preds = %do.end.i.i354
  %.b36.i.i.i356 = load i1, ptr @iwl_ftm_range_request_status_to_err.__already_done, align 1
  br i1 %.b36.i.i.i356, label %land.end.i.i.i357.iwl_mvm_ftm_send_cmd.exit.i360_crit_edge, label %if.then.i.i.i358, !prof !93

land.end.i.i.i357.iwl_mvm_ftm_send_cmd.exit.i360_crit_edge: ; preds = %land.end.i.i.i357
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i360

if.then.i.i.i358:                                 ; preds = %land.end.i.i.i357
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwl_ftm_range_request_status_to_err.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 196, i32 noundef 9, ptr noundef null) #9
  br label %iwl_mvm_ftm_send_cmd.exit.i360

iwl_mvm_ftm_send_cmd.exit.i360:                   ; preds = %if.then.i.i.i358, %land.end.i.i.i357.iwl_mvm_ftm_send_cmd.exit.i360_crit_edge, %sw.bb1.i.i.i355, %do.end.i.i354.iwl_mvm_ftm_send_cmd.exit.i360_crit_edge, %land.lhs.true.i.i353.iwl_mvm_ftm_send_cmd.exit.i360_crit_edge, %for.end.i351.iwl_mvm_ftm_send_cmd.exit.i360_crit_edge
  %err.0.i.i359 = phi i32 [ %call.i37.i, %for.end.i351.iwl_mvm_ftm_send_cmd.exit.i360_crit_edge ], [ 0, %land.lhs.true.i.i353.iwl_mvm_ftm_send_cmd.exit.i360_crit_edge ], [ -16, %sw.bb1.i.i.i355 ], [ %393, %do.end.i.i354.iwl_mvm_ftm_send_cmd.exit.i360_crit_edge ], [ -5, %if.then.i.i.i358 ], [ -5, %land.end.i.i.i357.iwl_mvm_ftm_send_cmd.exit.i360_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i332) #9
  br label %iwl_mvm_ftm_start_v8.exit

iwl_mvm_ftm_start_v8.exit:                        ; preds = %iwl_mvm_ftm_send_cmd.exit.i360, %for.body.i346.iwl_mvm_ftm_start_v8.exit_crit_edge
  %retval.2.i361 = phi i32 [ %err.0.i.i359, %iwl_mvm_ftm_send_cmd.exit.i360 ], [ %call.i.i344, %for.body.i346.iwl_mvm_ftm_start_v8.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hcmd.i334) #9
  call void @llvm.lifetime.end.p0(i64 456, ptr nonnull %cmd.i333) #9
  br label %if.end44

sw.default:                                       ; preds = %if.then30
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %cmd_v7.i) #9
  %395 = getelementptr inbounds i8, ptr %cmd_v7.i, i32 4
  %396 = call ptr @memset(ptr %395, i32 255, i32 152)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hcmd.i363) #9
  %397 = getelementptr inbounds i8, ptr %hcmd.i363, i32 32
  %398 = ptrtoint ptr %397 to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 33619967, ptr %397, align 4, !annotation !92
  %399 = ptrtoint ptr %hcmd.i363 to i32
  call void @__asan_store4_noabort(i32 %399)
  store ptr %cmd_v7.i, ptr %hcmd.i363, align 4
  %arrayinit.cur.ptr.i364 = getelementptr inbounds ptr, ptr %hcmd.i363, i32 1
  %id.i365 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i363, i32 0, i32 5
  %400 = call ptr @memset(ptr %arrayinit.cur.ptr.i364, i32 0, i32 20)
  %401 = ptrtoint ptr %id.i365 to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 2048, ptr %id.i365, align 4
  %len.i366 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i363, i32 0, i32 6
  %402 = ptrtoint ptr %len.i366 to i32
  call void @__asan_store2_noabort(i32 %402)
  store i16 156, ptr %len.i366, align 4
  %arrayinit.start3.i367 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i363, i32 0, i32 6, i32 1
  %403 = ptrtoint ptr %arrayinit.start3.i367 to i32
  call void @__asan_store2_noabort(i32 %403)
  store i16 0, ptr %arrayinit.start3.i367, align 2
  %404 = ptrtoint ptr %cmd_v7.i to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 -2147479552, ptr %cmd_v7.i, align 4
  %405 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %405)
  %406 = load i64, ptr %req, align 8
  %conv.i.i.i370 = trunc i64 %406 to i8
  %407 = ptrtoint ptr %395 to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 %conv.i.i.i370, ptr %395, align 4
  %n_peers.i.i.i372 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 2
  %408 = ptrtoint ptr %n_peers.i.i.i372 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %n_peers.i.i.i372, align 4
  %conv1.i.i.i373 = trunc i32 %409 to i8
  %num_of_ap.i.i.i374 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd_v7.i, i32 0, i32 2
  %410 = ptrtoint ptr %num_of_ap.i.i.i374 to i32
  call void @__asan_store1_noabort(i32 %410)
  store i8 %conv1.i.i.i373, ptr %num_of_ap.i.i.i374, align 1
  %timeout.i.i.i375 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 4
  %411 = ptrtoint ptr %timeout.i.i.i375 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %timeout.i.i.i375, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %412)
  %tobool.not.i.i.i376 = icmp eq i32 %412, 0
  %413 = call i32 @llvm.bswap.i32(i32 %412) #9
  %spec.select.i.i.i377 = select i1 %tobool.not.i.i.i376, i32 -61696, i32 %413
  %414 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd_v7.i, i32 0, i32 6
  %415 = ptrtoint ptr %414 to i32
  call void @__asan_store4_noabort(i32 %415)
  store i32 %spec.select.i.i.i377, ptr %414, align 4
  %macaddr_template.i.i.i378 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd_v7.i, i32 0, i32 5
  %mac_addr.i.i.i379 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 5
  %416 = call ptr @memcpy(ptr %macaddr_template.i.i.i378, ptr %mac_addr.i.i.i379, i32 6)
  %arrayidx.i.i.i380 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 0
  %417 = ptrtoint ptr %arrayidx.i.i.i380 to i32
  call void @__asan_load1_noabort(i32 %417)
  %418 = load i8, ptr %arrayidx.i.i.i380, align 1
  %neg.i.i.i381 = xor i8 %418, -1
  %arrayidx8.i.i.i382 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd_v7.i, i32 0, i32 4, i32 0
  %419 = ptrtoint ptr %arrayidx8.i.i.i382 to i32
  call void @__asan_store1_noabort(i32 %419)
  store i8 %neg.i.i.i381, ptr %arrayidx8.i.i.i382, align 4
  %arrayidx.1.i.i.i383 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 1
  %420 = ptrtoint ptr %arrayidx.1.i.i.i383 to i32
  call void @__asan_load1_noabort(i32 %420)
  %421 = load i8, ptr %arrayidx.1.i.i.i383, align 1
  %neg.1.i.i.i384 = xor i8 %421, -1
  %arrayidx8.1.i.i.i385 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd_v7.i, i32 0, i32 4, i32 1
  %422 = ptrtoint ptr %arrayidx8.1.i.i.i385 to i32
  call void @__asan_store1_noabort(i32 %422)
  store i8 %neg.1.i.i.i384, ptr %arrayidx8.1.i.i.i385, align 1
  %arrayidx.2.i.i.i386 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 2
  %423 = ptrtoint ptr %arrayidx.2.i.i.i386 to i32
  call void @__asan_load1_noabort(i32 %423)
  %424 = load i8, ptr %arrayidx.2.i.i.i386, align 1
  %neg.2.i.i.i387 = xor i8 %424, -1
  %arrayidx8.2.i.i.i388 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd_v7.i, i32 0, i32 4, i32 2
  %425 = ptrtoint ptr %arrayidx8.2.i.i.i388 to i32
  call void @__asan_store1_noabort(i32 %425)
  store i8 %neg.2.i.i.i387, ptr %arrayidx8.2.i.i.i388, align 2
  %arrayidx.3.i.i.i389 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 3
  %426 = ptrtoint ptr %arrayidx.3.i.i.i389 to i32
  call void @__asan_load1_noabort(i32 %426)
  %427 = load i8, ptr %arrayidx.3.i.i.i389, align 1
  %neg.3.i.i.i390 = xor i8 %427, -1
  %arrayidx8.3.i.i.i391 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd_v7.i, i32 0, i32 4, i32 3
  %428 = ptrtoint ptr %arrayidx8.3.i.i.i391 to i32
  call void @__asan_store1_noabort(i32 %428)
  store i8 %neg.3.i.i.i390, ptr %arrayidx8.3.i.i.i391, align 1
  %arrayidx.4.i.i.i392 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 4
  %429 = ptrtoint ptr %arrayidx.4.i.i.i392 to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %arrayidx.4.i.i.i392, align 1
  %neg.4.i.i.i393 = xor i8 %430, -1
  %arrayidx8.4.i.i.i394 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd_v7.i, i32 0, i32 4, i32 4
  %431 = ptrtoint ptr %arrayidx8.4.i.i.i394 to i32
  call void @__asan_store1_noabort(i32 %431)
  store i8 %neg.4.i.i.i393, ptr %arrayidx8.4.i.i.i394, align 4
  %arrayidx.5.i.i.i395 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 5
  %432 = ptrtoint ptr %arrayidx.5.i.i.i395 to i32
  call void @__asan_load1_noabort(i32 %432)
  %433 = load i8, ptr %arrayidx.5.i.i.i395, align 1
  %neg.5.i.i.i396 = xor i8 %433, -1
  %arrayidx8.5.i.i.i397 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd_v7.i, i32 0, i32 4, i32 5
  %434 = ptrtoint ptr %arrayidx8.5.i.i.i397 to i32
  call void @__asan_store1_noabort(i32 %434)
  store i8 %neg.5.i.i.i396, ptr %arrayidx8.5.i.i.i397, align 1
  %assoc.i.i.i398 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 10
  %435 = ptrtoint ptr %assoc.i.i.i398 to i32
  call void @__asan_load1_noabort(i32 %435)
  %436 = load i8, ptr %assoc.i.i.i398, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %436)
  %tobool9.not.i.i.i399 = icmp eq i8 %436, 0
  br i1 %tobool9.not.i.i.i399, label %if.else26.i.i.i417, label %if.then10.i.i.i403

if.then10.i.i.i403:                               ; preds = %sw.default
  %bss_conf.i.i.i400 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %range_req_bssid.i.i.i401 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd_v7.i, i32 0, i32 3
  %437 = ptrtoint ptr %bss_conf.i.i.i400 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %bss_conf.i.i.i400, align 8
  %439 = call ptr @memcpy(ptr %range_req_bssid.i.i.i401, ptr %438, i32 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %409)
  %cmp152.not.i.i.i402 = icmp eq i32 %409, 0
  br i1 %cmp152.not.i.i.i402, label %iwl_mvm_ftm_cmd_v8.exit.i420.thread, label %if.then10.i.i.i403.for.body17.i.i.i411_crit_edge

if.then10.i.i.i403.for.body17.i.i.i411_crit_edge: ; preds = %if.then10.i.i.i403
  br label %for.body17.i.i.i411

iwl_mvm_ftm_cmd_v8.exit.i420.thread:              ; preds = %if.then10.i.i.i403
  call void @__sanitizer_cov_trace_pc() #11
  %tsf_mac_id30.i.i.i419557 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd_v7.i, i32 0, i32 7
  %440 = ptrtoint ptr %tsf_mac_id30.i.i.i419557 to i32
  call void @__asan_store4_noabort(i32 %440)
  store i32 -16777216, ptr %tsf_mac_id30.i.i.i419557, align 4
  br label %for.end.i459

for.cond13.i.i.i406:                              ; preds = %for.body17.i.i.i411
  %inc24.i.i.i404 = add nuw i32 %i.13.i.i.i407, 1
  %exitcond.not.i.i.i405 = icmp eq i32 %inc24.i.i.i404, %409
  br i1 %exitcond.not.i.i.i405, label %for.cond13.i.i.i406.iwl_mvm_ftm_cmd_v8.exit.i420_crit_edge, label %for.cond13.i.i.i406.for.body17.i.i.i411_crit_edge

for.cond13.i.i.i406.for.body17.i.i.i411_crit_edge: ; preds = %for.cond13.i.i.i406
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body17.i.i.i411

for.cond13.i.i.i406.iwl_mvm_ftm_cmd_v8.exit.i420_crit_edge: ; preds = %for.cond13.i.i.i406
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_cmd_v8.exit.i420

for.body17.i.i.i411:                              ; preds = %for.cond13.i.i.i406.for.body17.i.i.i411_crit_edge, %if.then10.i.i.i403.for.body17.i.i.i411_crit_edge
  %i.13.i.i.i407 = phi i32 [ %inc24.i.i.i404, %for.cond13.i.i.i406.for.body17.i.i.i411_crit_edge ], [ 0, %if.then10.i.i.i403.for.body17.i.i.i411_crit_edge ]
  %report_ap_tsf.i.i.i408 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %i.13.i.i.i407, i32 2
  %441 = ptrtoint ptr %report_ap_tsf.i.i.i408 to i32
  call void @__asan_load1_noabort(i32 %441)
  %bf.load.i.i.i409 = load i8, ptr %report_ap_tsf.i.i.i408, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i409)
  %tobool19.not.i.i.i410 = icmp sgt i8 %bf.load.i.i.i409, -1
  br i1 %tobool19.not.i.i.i410, label %for.cond13.i.i.i406, label %if.then20.i.i.i415

if.then20.i.i.i415:                               ; preds = %for.body17.i.i.i411
  call void @__sanitizer_cov_trace_pc() #11
  %drv_priv.i.i.i.i412 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %id.i.i.i413 = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i.i.i.i412, i32 0, i32 1
  %442 = ptrtoint ptr %id.i.i.i413 to i32
  call void @__asan_load2_noabort(i32 %442)
  %443 = load i16, ptr %id.i.i.i413, align 4
  %conv21.i.i.i414 = zext i16 %443 to i32
  %444 = call i32 @llvm.bswap.i32(i32 %conv21.i.i.i414) #9
  br label %iwl_mvm_ftm_cmd_v8.exit.i420

if.else26.i.i.i417:                               ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  %range_req_bssid27.i.i.i416 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd_v7.i, i32 0, i32 3
  %445 = call ptr @memset(ptr %range_req_bssid27.i.i.i416, i32 255, i32 6)
  br label %iwl_mvm_ftm_cmd_v8.exit.i420

iwl_mvm_ftm_cmd_v8.exit.i420:                     ; preds = %if.else26.i.i.i417, %if.then20.i.i.i415, %for.cond13.i.i.i406.iwl_mvm_ftm_cmd_v8.exit.i420_crit_edge
  %.sink.i.i.i418 = phi i32 [ %444, %if.then20.i.i.i415 ], [ -16777216, %if.else26.i.i.i417 ], [ -16777216, %for.cond13.i.i.i406.iwl_mvm_ftm_cmd_v8.exit.i420_crit_edge ]
  %tsf_mac_id30.i.i.i419 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v9, ptr %cmd_v7.i, i32 0, i32 7
  %446 = ptrtoint ptr %tsf_mac_id30.i.i.i419 to i32
  call void @__asan_store4_noabort(i32 %446)
  store i32 %.sink.i.i.i418, ptr %tsf_mac_id30.i.i.i419, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1.i.i.i373)
  %cmp45.not.i = icmp eq i8 %conv1.i.i.i373, 0
  br i1 %cmp45.not.i, label %iwl_mvm_ftm_cmd_v8.exit.i420.for.end.i459_crit_edge, label %iwl_mvm_ftm_cmd_v8.exit.i420.for.body.i426_crit_edge

iwl_mvm_ftm_cmd_v8.exit.i420.for.body.i426_crit_edge: ; preds = %iwl_mvm_ftm_cmd_v8.exit.i420
  br label %for.body.i426

iwl_mvm_ftm_cmd_v8.exit.i420.for.end.i459_crit_edge: ; preds = %iwl_mvm_ftm_cmd_v8.exit.i420
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i459

for.body.i426:                                    ; preds = %for.inc.i456.for.body.i426_crit_edge, %iwl_mvm_ftm_cmd_v8.exit.i420.for.body.i426_crit_edge
  %indvars.iv.i421 = phi i32 [ %indvars.iv.next.i454, %for.inc.i456.for.body.i426_crit_edge ], [ 0, %iwl_mvm_ftm_cmd_v8.exit.i420.for.body.i426_crit_edge ]
  %arrayidx.i422 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %indvars.iv.i421
  %arrayidx21.i423 = getelementptr %struct.iwl_tof_range_req_cmd_v7, ptr %cmd_v7.i, i32 0, i32 10, i32 %indvars.iv.i421
  %channel_num.i.i424 = getelementptr %struct.iwl_tof_range_req_cmd_v7, ptr %cmd_v7.i, i32 0, i32 10, i32 %indvars.iv.i421, i32 1
  %bandwidth.i.i = getelementptr %struct.iwl_tof_range_req_cmd_v7, ptr %cmd_v7.i, i32 0, i32 10, i32 %indvars.iv.i421, i32 2
  %ctrl_ch_position.i.i425 = getelementptr %struct.iwl_tof_range_req_cmd_v7, ptr %cmd_v7.i, i32 0, i32 10, i32 %indvars.iv.i421, i32 3
  %chandef.i.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %indvars.iv.i421, i32 1
  %447 = ptrtoint ptr %chandef.i.i.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %chandef.i.i.i, align 4
  %center_freq.i.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %448, i32 0, i32 1
  %449 = ptrtoint ptr %center_freq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %center_freq.i.i.i, align 4
  %mul.i.i.i.i = mul i32 %450, 1000
  %call.i.i.i.i = call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i.i.i.i) #9
  %conv.i.i35.i = trunc i32 %call.i.i.i.i to i8
  %451 = ptrtoint ptr %channel_num.i.i424 to i32
  call void @__asan_store1_noabort(i32 %451)
  store i8 %conv.i.i35.i, ptr %channel_num.i.i424, align 4
  %width.i.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %indvars.iv.i421, i32 1, i32 1
  %452 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %width.i.i.i, align 4
  %454 = zext i32 %453 to i64
  call void @__sanitizer_cov_trace_switch(i64 %454, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %453, label %iwl_mvm_ftm_put_target_v3.exit.i [
    i32 0, label %for.body.i426.sw.epilog.i.i.i_crit_edge
    i32 1, label %sw.bb2.i.i.i
    i32 2, label %for.body.i426.cond.true.i.i.i_crit_edge
    i32 3, label %sw.bb4.i.i.i
  ]

for.body.i426.cond.true.i.i.i_crit_edge:          ; preds = %for.body.i426
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.true.i.i.i

for.body.i426.sw.epilog.i.i.i_crit_edge:          ; preds = %for.body.i426
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i.i

sw.bb2.i.i.i:                                     ; preds = %for.body.i426
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i.i

sw.bb4.i.i.i:                                     ; preds = %for.body.i426
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.true.i.i.i

sw.epilog.i.i.i:                                  ; preds = %sw.bb2.i.i.i, %for.body.i426.sw.epilog.i.i.i_crit_edge
  %.sink.i.i36.i427 = phi i8 [ 1, %sw.bb2.i.i.i ], [ 0, %for.body.i426.sw.epilog.i.i.i_crit_edge ]
  %455 = ptrtoint ptr %bandwidth.i.i to i32
  call void @__asan_store1_noabort(i32 %455)
  store i8 %.sink.i.i36.i427, ptr %bandwidth.i.i, align 1
  br label %if.end.i.i439

cond.true.i.i.i:                                  ; preds = %sw.bb4.i.i.i, %for.body.i426.cond.true.i.i.i_crit_edge
  %.sink.i.i36.ph.i = phi i8 [ 3, %sw.bb4.i.i.i ], [ 2, %for.body.i426.cond.true.i.i.i_crit_edge ]
  %456 = ptrtoint ptr %bandwidth.i.i to i32
  call void @__asan_store1_noabort(i32 %456)
  store i8 %.sink.i.i36.ph.i, ptr %bandwidth.i.i, align 1
  %call14.i.i.i = call zeroext i8 @iwl_mvm_get_ctrl_pos(ptr noundef %chandef.i.i.i) #9
  br label %if.end.i.i439

if.end.i.i439:                                    ; preds = %cond.true.i.i.i, %sw.epilog.i.i.i
  %cond.i.i.i = phi i8 [ %call14.i.i.i, %cond.true.i.i.i ], [ 0, %sw.epilog.i.i.i ]
  %457 = ptrtoint ptr %ctrl_ch_position.i.i425 to i32
  call void @__asan_store1_noabort(i32 %457)
  store i8 %cond.i.i.i, ptr %ctrl_ch_position.i.i425, align 2
  %bssid.i.i.i428 = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v6, ptr %arrayidx21.i423, i32 0, i32 5
  %458 = call ptr @memcpy(ptr %bssid.i.i.i428, ptr %arrayidx.i422, i32 6)
  %burst_period.i.i.i429 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %indvars.iv.i421, i32 3, i32 1
  %459 = ptrtoint ptr %burst_period.i.i.i429 to i32
  call void @__asan_load2_noabort(i32 %459)
  %460 = load i16, ptr %burst_period.i.i.i429, align 4
  %461 = call i16 @llvm.bswap.i16(i16 %460) #9
  %burst_period2.i.i.i430 = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v6, ptr %arrayidx21.i423, i32 0, i32 6
  %462 = ptrtoint ptr %burst_period2.i.i.i430 to i32
  call void @__asan_store2_noabort(i32 %462)
  store i16 %461, ptr %burst_period2.i.i.i430, align 2
  %ftms_per_burst.i.i.i431 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %indvars.iv.i421, i32 3, i32 5
  %463 = ptrtoint ptr %ftms_per_burst.i.i.i431 to i32
  call void @__asan_load1_noabort(i32 %463)
  %464 = load i8, ptr %ftms_per_burst.i.i.i431, align 1
  %samples_per_burst.i.i.i432 = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v6, ptr %arrayidx21.i423, i32 0, i32 7
  %465 = ptrtoint ptr %samples_per_burst.i.i.i432 to i32
  call void @__asan_store1_noabort(i32 %465)
  store i8 %464, ptr %samples_per_burst.i.i.i432, align 4
  %num_bursts_exp.i.i.i433 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %indvars.iv.i421, i32 3, i32 3
  %466 = ptrtoint ptr %num_bursts_exp.i.i.i433 to i32
  call void @__asan_load1_noabort(i32 %466)
  %467 = load i8, ptr %num_bursts_exp.i.i.i433, align 1
  %num_of_bursts.i.i.i434 = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v6, ptr %arrayidx21.i423, i32 0, i32 8
  %468 = ptrtoint ptr %num_of_bursts.i.i.i434 to i32
  call void @__asan_store1_noabort(i32 %468)
  store i8 %467, ptr %num_of_bursts.i.i.i434, align 1
  %ftmr_retries.i.i.i435 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %indvars.iv.i421, i32 3, i32 6
  %469 = ptrtoint ptr %ftmr_retries.i.i.i435 to i32
  call void @__asan_load1_noabort(i32 %469)
  %470 = load i8, ptr %ftmr_retries.i.i.i435, align 2
  %ftmr_max_retries.i.i.i436 = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v6, ptr %arrayidx21.i423, i32 0, i32 4
  %471 = ptrtoint ptr %ftmr_max_retries.i.i.i436 to i32
  call void @__asan_store1_noabort(i32 %471)
  store i8 %470, ptr %ftmr_max_retries.i.i.i436, align 1
  %asap.i.i.i437 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %indvars.iv.i421, i32 3, i32 2
  %472 = ptrtoint ptr %asap.i.i.i437 to i32
  call void @__asan_load1_noabort(i32 %472)
  %bf.load.i.i37.i = load i8, ptr %asap.i.i.i437, align 2
  %473 = and i8 %bf.load.i.i37.i, 64
  %474 = zext i8 %473 to i32
  %475 = shl nuw nsw i32 %474, 19
  %476 = and i8 %bf.load.i.i37.i, 32
  %477 = zext i8 %476 to i32
  %478 = shl nuw nsw i32 %477, 21
  %479 = or i32 %478, %475
  %480 = and i8 %bf.load.i.i37.i, 16
  %481 = zext i8 %480 to i32
  %482 = shl nuw nsw i32 %481, 23
  %483 = or i32 %482, %479
  %or27.i.i.i442 = or i32 %483, 268435456
  %484 = ptrtoint ptr %arrayidx21.i423 to i32
  call void @__asan_store4_noabort(i32 %484)
  store i32 %or27.i.i.i442, ptr %arrayidx21.i423, align 4
  %485 = and i8 %bf.load.i.i37.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %485)
  %tobool32.not.i.i.i443 = icmp eq i8 %485, 0
  br i1 %tobool32.not.i.i.i443, label %if.else.i.i.i446, label %if.end.i.i439.if.end45.sink.split.i.i.i448_crit_edge

if.end.i.i439.if.end45.sink.split.i.i.i448_crit_edge: ; preds = %if.end.i.i439
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.sink.split.i.i.i448

if.else.i.i.i446:                                 ; preds = %if.end.i.i439
  %486 = and i8 %bf.load.i.i37.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %486)
  %tobool40.not.i.i.i445 = icmp eq i8 %486, 0
  br i1 %tobool40.not.i.i.i445, label %if.else.i.i.i446.if.end45.i.i.i451_crit_edge, label %if.else.i.i.i446.if.end45.sink.split.i.i.i448_crit_edge

if.else.i.i.i446.if.end45.sink.split.i.i.i448_crit_edge: ; preds = %if.else.i.i.i446
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.sink.split.i.i.i448

if.else.i.i.i446.if.end45.i.i.i451_crit_edge:     ; preds = %if.else.i.i.i446
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i.i.i451

if.end45.sink.split.i.i.i448:                     ; preds = %if.else.i.i.i446.if.end45.sink.split.i.i.i448_crit_edge, %if.end.i.i439.if.end45.sink.split.i.i.i448_crit_edge
  %.sink.i7.i.i = phi i32 [ 268697600, %if.end.i.i439.if.end45.sink.split.i.i.i448_crit_edge ], [ 268566528, %if.else.i.i.i446.if.end45.sink.split.i.i.i448_crit_edge ]
  %or43.i.i.i447 = or i32 %.sink.i7.i.i, %483
  %487 = ptrtoint ptr %arrayidx21.i423 to i32
  call void @__asan_store4_noabort(i32 %487)
  store i32 %or43.i.i.i447, ptr %arrayidx21.i423, align 4
  br label %if.end45.i.i.i451

if.end45.i.i.i451:                                ; preds = %if.end45.sink.split.i.i.i448, %if.else.i.i.i446.if.end45.i.i.i451_crit_edge
  %488 = and i8 %bf.load.i.i37.i, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %488)
  %489 = icmp eq i8 %488, 0
  %490 = and i8 %bf.load.i.i37.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %490)
  %tobool64.not.i.i.i449 = icmp eq i8 %490, 0
  %or.cond1.i.i.i450 = or i1 %489, %tobool64.not.i.i.i449
  br i1 %or.cond1.i.i.i450, label %if.end45.i.i.i451.for.inc.i456_crit_edge, label %if.then65.i.i.i453

if.end45.i.i.i451.for.inc.i456_crit_edge:         ; preds = %if.end45.i.i.i451
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i456

if.then65.i.i.i453:                               ; preds = %if.end45.i.i.i451
  call void @__sanitizer_cov_trace_pc() #11
  %491 = ptrtoint ptr %arrayidx21.i423 to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load i32, ptr %arrayidx21.i423, align 4
  %or67.i.i.i452 = or i32 %492, 1048576
  store i32 %or67.i.i.i452, ptr %arrayidx21.i423, align 4
  br label %for.inc.i456

iwl_mvm_ftm_put_target_v3.exit.i:                 ; preds = %for.body.i426
  call void @__sanitizer_cov_trace_pc() #11
  %493 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %494, i32 noundef 0, ptr noundef nonnull @.str.12, i32 noundef %453) #9
  br label %iwl_mvm_ftm_start_v7.exit

for.inc.i456:                                     ; preds = %if.then65.i.i.i453, %if.end45.i.i.i451.for.inc.i456_crit_edge
  %indvars.iv.next.i454 = add nuw nsw i32 %indvars.iv.i421, 1
  %495 = ptrtoint ptr %num_of_ap.i.i.i374 to i32
  call void @__asan_load1_noabort(i32 %495)
  %496 = load i8, ptr %num_of_ap.i.i.i374, align 1
  %497 = zext i8 %496 to i32
  %cmp.i455 = icmp ult i32 %indvars.iv.next.i454, %497
  br i1 %cmp.i455, label %for.inc.i456.for.body.i426_crit_edge, label %for.inc.i456.for.end.i459_crit_edge

for.inc.i456.for.end.i459_crit_edge:              ; preds = %for.inc.i456
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i459

for.inc.i456.for.body.i426_crit_edge:             ; preds = %for.inc.i456
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i426

for.end.i459:                                     ; preds = %for.inc.i456.for.end.i459_crit_edge, %iwl_mvm_ftm_cmd_v8.exit.i420.for.end.i459_crit_edge, %iwl_mvm_ftm_cmd_v8.exit.i420.thread
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i.i362) #9
  %498 = ptrtoint ptr %status.i.i362 to i32
  call void @__asan_store4_noabort(i32 %498)
  store i32 -1, ptr %status.i.i362, align 4, !annotation !92
  %call.i.i457 = call i32 @iwl_mvm_send_cmd_status(ptr noundef %mvm, ptr noundef nonnull %hcmd.i363, ptr noundef nonnull %status.i.i362) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i457)
  %tobool.not.i.i458 = icmp eq i32 %call.i.i457, 0
  br i1 %tobool.not.i.i458, label %land.lhs.true.i.i461, label %for.end.i459.iwl_mvm_ftm_send_cmd.exit.i468_crit_edge

for.end.i459.iwl_mvm_ftm_send_cmd.exit.i468_crit_edge: ; preds = %for.end.i459
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i468

land.lhs.true.i.i461:                             ; preds = %for.end.i459
  %499 = ptrtoint ptr %status.i.i362 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %status.i.i362, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %500)
  %tobool1.not.i.i460 = icmp eq i32 %500, 0
  br i1 %tobool1.not.i.i460, label %land.lhs.true.i.i461.iwl_mvm_ftm_send_cmd.exit.i468_crit_edge, label %do.end.i.i462

land.lhs.true.i.i461.iwl_mvm_ftm_send_cmd.exit.i468_crit_edge: ; preds = %land.lhs.true.i.i461
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i468

do.end.i.i462:                                    ; preds = %land.lhs.true.i.i461
  %501 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %502, i32 noundef 0, ptr noundef nonnull @.str.15, i32 noundef %500) #9
  %503 = ptrtoint ptr %status.i.i362 to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load i32, ptr %status.i.i362, align 4
  %505 = zext i32 %504 to i64
  call void @__sanitizer_cov_trace_switch(i64 %505, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %504, label %land.end.i.i.i465 [
    i32 0, label %do.end.i.i462.iwl_mvm_ftm_send_cmd.exit.i468_crit_edge
    i32 1, label %sw.bb1.i.i.i463
  ]

do.end.i.i462.iwl_mvm_ftm_send_cmd.exit.i468_crit_edge: ; preds = %do.end.i.i462
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i468

sw.bb1.i.i.i463:                                  ; preds = %do.end.i.i462
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i468

land.end.i.i.i465:                                ; preds = %do.end.i.i462
  %.b36.i.i.i464 = load i1, ptr @iwl_ftm_range_request_status_to_err.__already_done, align 1
  br i1 %.b36.i.i.i464, label %land.end.i.i.i465.iwl_mvm_ftm_send_cmd.exit.i468_crit_edge, label %if.then.i.i.i466, !prof !93

land.end.i.i.i465.iwl_mvm_ftm_send_cmd.exit.i468_crit_edge: ; preds = %land.end.i.i.i465
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i468

if.then.i.i.i466:                                 ; preds = %land.end.i.i.i465
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwl_ftm_range_request_status_to_err.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 196, i32 noundef 9, ptr noundef null) #9
  br label %iwl_mvm_ftm_send_cmd.exit.i468

iwl_mvm_ftm_send_cmd.exit.i468:                   ; preds = %if.then.i.i.i466, %land.end.i.i.i465.iwl_mvm_ftm_send_cmd.exit.i468_crit_edge, %sw.bb1.i.i.i463, %do.end.i.i462.iwl_mvm_ftm_send_cmd.exit.i468_crit_edge, %land.lhs.true.i.i461.iwl_mvm_ftm_send_cmd.exit.i468_crit_edge, %for.end.i459.iwl_mvm_ftm_send_cmd.exit.i468_crit_edge
  %err.0.i.i467 = phi i32 [ %call.i.i457, %for.end.i459.iwl_mvm_ftm_send_cmd.exit.i468_crit_edge ], [ 0, %land.lhs.true.i.i461.iwl_mvm_ftm_send_cmd.exit.i468_crit_edge ], [ -16, %sw.bb1.i.i.i463 ], [ %504, %do.end.i.i462.iwl_mvm_ftm_send_cmd.exit.i468_crit_edge ], [ -5, %if.then.i.i.i466 ], [ -5, %land.end.i.i.i465.iwl_mvm_ftm_send_cmd.exit.i468_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i362) #9
  br label %iwl_mvm_ftm_start_v7.exit

iwl_mvm_ftm_start_v7.exit:                        ; preds = %iwl_mvm_ftm_send_cmd.exit.i468, %iwl_mvm_ftm_put_target_v3.exit.i
  %retval.2.i469 = phi i32 [ -22, %iwl_mvm_ftm_put_target_v3.exit.i ], [ %err.0.i.i467, %iwl_mvm_ftm_send_cmd.exit.i468 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hcmd.i363) #9
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %cmd_v7.i) #9
  br label %if.end44

if.else:                                          ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %cmd_v5.i) #9
  %506 = call ptr @memset(ptr %cmd_v5.i, i32 255, i32 176)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hcmd.i471) #9
  %507 = getelementptr inbounds i8, ptr %hcmd.i471, i32 32
  %508 = ptrtoint ptr %507 to i32
  call void @__asan_store4_noabort(i32 %508)
  store i32 33619967, ptr %507, align 4, !annotation !92
  %509 = ptrtoint ptr %hcmd.i471 to i32
  call void @__asan_store4_noabort(i32 %509)
  store ptr %cmd_v5.i, ptr %hcmd.i471, align 4
  %arrayinit.cur.ptr.i472 = getelementptr inbounds ptr, ptr %hcmd.i471, i32 1
  %id.i473 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i471, i32 0, i32 5
  %510 = call ptr @memset(ptr %arrayinit.cur.ptr.i472, i32 0, i32 20)
  %511 = ptrtoint ptr %id.i473 to i32
  call void @__asan_store4_noabort(i32 %511)
  store i32 2048, ptr %id.i473, align 4
  %len.i474 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i471, i32 0, i32 6
  %512 = ptrtoint ptr %len.i474 to i32
  call void @__asan_store2_noabort(i32 %512)
  store i16 176, ptr %len.i474, align 4
  %arrayinit.start3.i475 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i471, i32 0, i32 6, i32 1
  %513 = ptrtoint ptr %arrayinit.start3.i475 to i32
  call void @__asan_store2_noabort(i32 %513)
  store i16 0, ptr %arrayinit.start3.i475, align 2
  %514 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %514)
  %515 = load i64, ptr %req, align 8
  %conv.i.i478 = trunc i64 %515 to i8
  %request_id.i.i479 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v5, ptr %cmd_v5.i, i32 0, i32 1
  %516 = ptrtoint ptr %request_id.i.i479 to i32
  call void @__asan_store1_noabort(i32 %516)
  store i8 %conv.i.i478, ptr %request_id.i.i479, align 1
  %n_peers.i.i480 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 2
  %517 = ptrtoint ptr %n_peers.i.i480 to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %n_peers.i.i480, align 4
  %conv1.i.i481 = trunc i32 %518 to i8
  %num_of_ap.i.i482 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v5, ptr %cmd_v5.i, i32 0, i32 7
  %519 = ptrtoint ptr %num_of_ap.i.i482 to i32
  call void @__asan_store1_noabort(i32 %519)
  store i8 %conv1.i.i481, ptr %num_of_ap.i.i482, align 1
  %timeout.i.i483 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 4
  %520 = ptrtoint ptr %timeout.i.i483 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %timeout.i.i483, align 4
  %522 = add i32 %521, -25501
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25500, i32 %522)
  %523 = icmp ult i32 %522, -25500
  %524 = trunc i32 %521 to i16
  %div.lhs.trunc.i.i = add nuw nsw i16 %524, 99
  %div1.i.i = udiv i16 %div.lhs.trunc.i.i, 100
  %conv5.i.i = trunc i16 %div1.i.i to i8
  %conv5.sink.i.i = select i1 %523, i8 -1, i8 %conv5.i.i
  %525 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v5, ptr %cmd_v5.i, i32 0, i32 4
  %526 = ptrtoint ptr %525 to i32
  call void @__asan_store1_noabort(i32 %526)
  store i8 %conv5.sink.i.i, ptr %525, align 1
  %macaddr_random.i.i = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v5, ptr %cmd_v5.i, i32 0, i32 8
  %527 = ptrtoint ptr %macaddr_random.i.i to i32
  call void @__asan_store1_noabort(i32 %527)
  store i8 1, ptr %macaddr_random.i.i, align 1
  %macaddr_template.i.i484 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v5, ptr %cmd_v5.i, i32 0, i32 10
  %mac_addr.i.i485 = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 5
  %528 = call ptr @memcpy(ptr %macaddr_template.i.i484, ptr %mac_addr.i.i485, i32 6)
  %arrayidx.i.i486 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 0
  %529 = ptrtoint ptr %arrayidx.i.i486 to i32
  call void @__asan_load1_noabort(i32 %529)
  %530 = load i8, ptr %arrayidx.i.i486, align 1
  %neg.i.i487 = xor i8 %530, -1
  %arrayidx12.i.i = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v5, ptr %cmd_v5.i, i32 0, i32 11, i32 0
  %531 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store1_noabort(i32 %531)
  store i8 %neg.i.i487, ptr %arrayidx12.i.i, align 1
  %arrayidx.1.i.i488 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 1
  %532 = ptrtoint ptr %arrayidx.1.i.i488 to i32
  call void @__asan_load1_noabort(i32 %532)
  %533 = load i8, ptr %arrayidx.1.i.i488, align 1
  %neg.1.i.i489 = xor i8 %533, -1
  %arrayidx12.1.i.i = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v5, ptr %cmd_v5.i, i32 0, i32 11, i32 1
  %534 = ptrtoint ptr %arrayidx12.1.i.i to i32
  call void @__asan_store1_noabort(i32 %534)
  store i8 %neg.1.i.i489, ptr %arrayidx12.1.i.i, align 1
  %arrayidx.2.i.i490 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 2
  %535 = ptrtoint ptr %arrayidx.2.i.i490 to i32
  call void @__asan_load1_noabort(i32 %535)
  %536 = load i8, ptr %arrayidx.2.i.i490, align 1
  %neg.2.i.i491 = xor i8 %536, -1
  %arrayidx12.2.i.i = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v5, ptr %cmd_v5.i, i32 0, i32 11, i32 2
  %537 = ptrtoint ptr %arrayidx12.2.i.i to i32
  call void @__asan_store1_noabort(i32 %537)
  store i8 %neg.2.i.i491, ptr %arrayidx12.2.i.i, align 1
  %arrayidx.3.i.i492 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 3
  %538 = ptrtoint ptr %arrayidx.3.i.i492 to i32
  call void @__asan_load1_noabort(i32 %538)
  %539 = load i8, ptr %arrayidx.3.i.i492, align 1
  %neg.3.i.i493 = xor i8 %539, -1
  %arrayidx12.3.i.i = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v5, ptr %cmd_v5.i, i32 0, i32 11, i32 3
  %540 = ptrtoint ptr %arrayidx12.3.i.i to i32
  call void @__asan_store1_noabort(i32 %540)
  store i8 %neg.3.i.i493, ptr %arrayidx12.3.i.i, align 1
  %arrayidx.4.i.i494 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 4
  %541 = ptrtoint ptr %arrayidx.4.i.i494 to i32
  call void @__asan_load1_noabort(i32 %541)
  %542 = load i8, ptr %arrayidx.4.i.i494, align 1
  %neg.4.i.i495 = xor i8 %542, -1
  %arrayidx12.4.i.i = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v5, ptr %cmd_v5.i, i32 0, i32 11, i32 4
  %543 = ptrtoint ptr %arrayidx12.4.i.i to i32
  call void @__asan_store1_noabort(i32 %543)
  store i8 %neg.4.i.i495, ptr %arrayidx12.4.i.i, align 1
  %arrayidx.5.i.i496 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 6, i32 5
  %544 = ptrtoint ptr %arrayidx.5.i.i496 to i32
  call void @__asan_load1_noabort(i32 %544)
  %545 = load i8, ptr %arrayidx.5.i.i496, align 1
  %neg.5.i.i497 = xor i8 %545, -1
  %arrayidx12.5.i.i = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v5, ptr %cmd_v5.i, i32 0, i32 11, i32 5
  %546 = ptrtoint ptr %arrayidx12.5.i.i to i32
  call void @__asan_store1_noabort(i32 %546)
  store i8 %neg.5.i.i497, ptr %arrayidx12.5.i.i, align 1
  %assoc.i.i498 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 10
  %547 = ptrtoint ptr %assoc.i.i498 to i32
  call void @__asan_load1_noabort(i32 %547)
  %548 = load i8, ptr %assoc.i.i498, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %548)
  %tobool13.not.i.i = icmp eq i8 %548, 0
  br i1 %tobool13.not.i.i, label %if.else17.i.i, label %if.then14.i.i

if.then14.i.i:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %bss_conf.i.i499 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %range_req_bssid.i.i500 = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v5, ptr %cmd_v5.i, i32 0, i32 9
  %549 = ptrtoint ptr %bss_conf.i.i499 to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %bss_conf.i.i499, align 8
  %551 = call ptr @memcpy(ptr %range_req_bssid.i.i500, ptr %550, i32 6)
  br label %iwl_mvm_ftm_cmd_v5.exit.i

if.else17.i.i:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %range_req_bssid18.i.i = getelementptr inbounds %struct.iwl_tof_range_req_cmd_v5, ptr %cmd_v5.i, i32 0, i32 9
  %552 = call ptr @memset(ptr %range_req_bssid18.i.i, i32 255, i32 6)
  br label %iwl_mvm_ftm_cmd_v5.exit.i

iwl_mvm_ftm_cmd_v5.exit.i:                        ; preds = %if.else17.i.i, %if.then14.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1.i.i481)
  %cmp42.not.i501 = icmp eq i8 %conv1.i.i481, 0
  br i1 %cmp42.not.i501, label %iwl_mvm_ftm_cmd_v5.exit.i.for.end.i530_crit_edge, label %iwl_mvm_ftm_cmd_v5.exit.i.for.body.i513_crit_edge

iwl_mvm_ftm_cmd_v5.exit.i.for.body.i513_crit_edge: ; preds = %iwl_mvm_ftm_cmd_v5.exit.i
  br label %for.body.i513

iwl_mvm_ftm_cmd_v5.exit.i.for.end.i530_crit_edge: ; preds = %iwl_mvm_ftm_cmd_v5.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i530

for.body.i513:                                    ; preds = %for.inc.i527.for.body.i513_crit_edge, %iwl_mvm_ftm_cmd_v5.exit.i.for.body.i513_crit_edge
  %indvars.iv.i502 = phi i32 [ %indvars.iv.next.i525, %for.inc.i527.for.body.i513_crit_edge ], [ 0, %iwl_mvm_ftm_cmd_v5.exit.i.for.body.i513_crit_edge ]
  %arrayidx.i503 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %indvars.iv.i502
  %arrayidx21.i504 = getelementptr %struct.iwl_tof_range_req_cmd_v5, ptr %cmd_v5.i, i32 0, i32 16, i32 %indvars.iv.i502
  %bandwidth.i.i505 = getelementptr %struct.iwl_tof_range_req_cmd_v5, ptr %cmd_v5.i, i32 0, i32 16, i32 %indvars.iv.i502, i32 1
  %ctrl_ch_position.i.i506 = getelementptr %struct.iwl_tof_range_req_cmd_v5, ptr %cmd_v5.i, i32 0, i32 16, i32 %indvars.iv.i502, i32 3
  %chandef.i.i.i507 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %indvars.iv.i502, i32 1
  %553 = ptrtoint ptr %chandef.i.i.i507 to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %chandef.i.i.i507, align 4
  %center_freq.i.i.i508 = getelementptr inbounds %struct.ieee80211_channel, ptr %554, i32 0, i32 1
  %555 = ptrtoint ptr %center_freq.i.i.i508 to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load i32, ptr %center_freq.i.i.i508, align 4
  %mul.i.i.i.i509 = mul i32 %556, 1000
  %call.i.i.i.i510 = call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i.i.i.i509) #9
  %conv.i.i.i511 = trunc i32 %call.i.i.i.i510 to i8
  %557 = ptrtoint ptr %arrayidx21.i504 to i32
  call void @__asan_store1_noabort(i32 %557)
  store i8 %conv.i.i.i511, ptr %arrayidx21.i504, align 1
  %width.i.i.i512 = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %indvars.iv.i502, i32 1, i32 1
  %558 = ptrtoint ptr %width.i.i.i512 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load i32, ptr %width.i.i.i512, align 4
  %560 = zext i32 %559 to i64
  call void @__sanitizer_cov_trace_switch(i64 %560, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %559, label %iwl_mvm_ftm_put_target_v2.exit.i [
    i32 0, label %for.body.i513.sw.epilog.i.i.i517_crit_edge
    i32 1, label %sw.bb2.i.i.i514
    i32 2, label %for.body.i513.cond.true.i.i.i519_crit_edge
    i32 3, label %sw.bb4.i.i.i515
  ]

for.body.i513.cond.true.i.i.i519_crit_edge:       ; preds = %for.body.i513
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.true.i.i.i519

for.body.i513.sw.epilog.i.i.i517_crit_edge:       ; preds = %for.body.i513
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i.i517

sw.bb2.i.i.i514:                                  ; preds = %for.body.i513
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i.i517

sw.bb4.i.i.i515:                                  ; preds = %for.body.i513
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.true.i.i.i519

sw.epilog.i.i.i517:                               ; preds = %sw.bb2.i.i.i514, %for.body.i513.sw.epilog.i.i.i517_crit_edge
  %.sink.i.i.i516 = phi i8 [ 1, %sw.bb2.i.i.i514 ], [ 0, %for.body.i513.sw.epilog.i.i.i517_crit_edge ]
  %561 = ptrtoint ptr %bandwidth.i.i505 to i32
  call void @__asan_store1_noabort(i32 %561)
  store i8 %.sink.i.i.i516, ptr %bandwidth.i.i505, align 1
  br label %if.end.i.i522

cond.true.i.i.i519:                               ; preds = %sw.bb4.i.i.i515, %for.body.i513.cond.true.i.i.i519_crit_edge
  %.sink.i.i.ph.i = phi i8 [ 3, %sw.bb4.i.i.i515 ], [ 2, %for.body.i513.cond.true.i.i.i519_crit_edge ]
  %562 = ptrtoint ptr %bandwidth.i.i505 to i32
  call void @__asan_store1_noabort(i32 %562)
  store i8 %.sink.i.i.ph.i, ptr %bandwidth.i.i505, align 1
  %call14.i.i.i518 = call zeroext i8 @iwl_mvm_get_ctrl_pos(ptr noundef %chandef.i.i.i507) #9
  br label %if.end.i.i522

if.end.i.i522:                                    ; preds = %cond.true.i.i.i519, %sw.epilog.i.i.i517
  %cond.i.i.i520 = phi i8 [ %call14.i.i.i518, %cond.true.i.i.i519 ], [ 0, %sw.epilog.i.i.i517 ]
  %563 = ptrtoint ptr %ctrl_ch_position.i.i506 to i32
  call void @__asan_store1_noabort(i32 %563)
  store i8 %cond.i.i.i520, ptr %ctrl_ch_position.i.i506, align 1
  %bssid.i.i = getelementptr %struct.iwl_tof_range_req_cmd_v5, ptr %cmd_v5.i, i32 0, i32 16, i32 %indvars.iv.i502, i32 4
  %564 = call ptr @memcpy(ptr %bssid.i.i, ptr %arrayidx.i503, i32 6)
  %burst_period.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %indvars.iv.i502, i32 3, i32 1
  %565 = ptrtoint ptr %burst_period.i.i to i32
  call void @__asan_load2_noabort(i32 %565)
  %566 = load i16, ptr %burst_period.i.i, align 4
  %567 = call i16 @llvm.bswap.i16(i16 %566) #9
  %burst_period2.i.i = getelementptr %struct.iwl_tof_range_req_cmd_v5, ptr %cmd_v5.i, i32 0, i32 16, i32 %indvars.iv.i502, i32 7
  %568 = ptrtoint ptr %burst_period2.i.i to i32
  call void @__asan_storeN_noabort(i32 %568, i32 2)
  store i16 %567, ptr %burst_period2.i.i, align 1
  %ftms_per_burst.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %indvars.iv.i502, i32 3, i32 5
  %569 = ptrtoint ptr %ftms_per_burst.i.i to i32
  call void @__asan_load1_noabort(i32 %569)
  %570 = load i8, ptr %ftms_per_burst.i.i, align 1
  %samples_per_burst.i.i = getelementptr %struct.iwl_tof_range_req_cmd_v5, ptr %cmd_v5.i, i32 0, i32 16, i32 %indvars.iv.i502, i32 8
  %571 = ptrtoint ptr %samples_per_burst.i.i to i32
  call void @__asan_store1_noabort(i32 %571)
  store i8 %570, ptr %samples_per_burst.i.i, align 1
  %num_bursts_exp.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %indvars.iv.i502, i32 3, i32 3
  %572 = ptrtoint ptr %num_bursts_exp.i.i to i32
  call void @__asan_load1_noabort(i32 %572)
  %573 = load i8, ptr %num_bursts_exp.i.i, align 1
  %num_of_bursts.i.i = getelementptr %struct.iwl_tof_range_req_cmd_v5, ptr %cmd_v5.i, i32 0, i32 16, i32 %indvars.iv.i502, i32 6
  %574 = ptrtoint ptr %num_of_bursts.i.i to i32
  call void @__asan_store1_noabort(i32 %574)
  store i8 %573, ptr %num_of_bursts.i.i, align 1
  %measure_type.i.i = getelementptr %struct.iwl_tof_range_req_cmd_v5, ptr %cmd_v5.i, i32 0, i32 16, i32 %indvars.iv.i502, i32 5
  %575 = ptrtoint ptr %measure_type.i.i to i32
  call void @__asan_store1_noabort(i32 %575)
  store i8 0, ptr %measure_type.i.i, align 1
  %ftmr_retries.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %indvars.iv.i502, i32 3, i32 6
  %576 = ptrtoint ptr %ftmr_retries.i.i to i32
  call void @__asan_load1_noabort(i32 %576)
  %577 = load i8, ptr %ftmr_retries.i.i, align 2
  %retries_per_sample.i.i = getelementptr %struct.iwl_tof_range_req_cmd_v5, ptr %cmd_v5.i, i32 0, i32 16, i32 %indvars.iv.i502, i32 9
  %578 = ptrtoint ptr %retries_per_sample.i.i to i32
  call void @__asan_store1_noabort(i32 %578)
  store i8 %577, ptr %retries_per_sample.i.i, align 1
  %asap.i.i = getelementptr %struct.cfg80211_pmsr_request, ptr %req, i32 0, i32 8, i32 %indvars.iv.i502, i32 3, i32 2
  %579 = ptrtoint ptr %asap.i.i to i32
  call void @__asan_load1_noabort(i32 %579)
  %bf.load.i.i521 = load i8, ptr %asap.i.i, align 2
  %bf.lshr.i.i = lshr i8 %bf.load.i.i521, 6
  %bf.clear.i.i = and i8 %bf.lshr.i.i, 1
  %asap_mode.i.i = getelementptr %struct.iwl_tof_range_req_cmd_v5, ptr %cmd_v5.i, i32 0, i32 16, i32 %indvars.iv.i502, i32 12
  %580 = ptrtoint ptr %asap_mode.i.i to i32
  call void @__asan_store1_noabort(i32 %580)
  store i8 %bf.clear.i.i, ptr %asap_mode.i.i, align 1
  %enable_dyn_ack.i.i = getelementptr %struct.iwl_tof_range_req_cmd_v5, ptr %cmd_v5.i, i32 0, i32 16, i32 %indvars.iv.i502, i32 13
  %581 = ptrtoint ptr %enable_dyn_ack.i.i to i32
  call void @__asan_store1_noabort(i32 %581)
  store i8 1, ptr %enable_dyn_ack.i.i, align 1
  %582 = and i8 %bf.load.i.i521, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %582)
  %tobool11.not.i.i = icmp eq i8 %582, 0
  br i1 %tobool11.not.i.i, label %if.end.i.i522.if.end14.i.i_crit_edge, label %if.then12.i.i

if.end.i.i522.if.end14.i.i_crit_edge:             ; preds = %if.end.i.i522
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i.i

if.then12.i.i:                                    ; preds = %if.end.i.i522
  call void @__sanitizer_cov_trace_pc() #11
  %location_req.i.i = getelementptr %struct.iwl_tof_range_req_cmd_v5, ptr %cmd_v5.i, i32 0, i32 16, i32 %indvars.iv.i502, i32 11
  %583 = ptrtoint ptr %location_req.i.i to i32
  call void @__asan_load1_noabort(i32 %583)
  %584 = load i8, ptr %location_req.i.i, align 1
  %585 = or i8 %584, 1
  store i8 %585, ptr %location_req.i.i, align 1
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then12.i.i, %if.end.i.i522.if.end14.i.i_crit_edge
  %586 = and i8 %bf.load.i.i521, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %586)
  %tobool19.not.i.i523 = icmp eq i8 %586, 0
  br i1 %tobool19.not.i.i523, label %if.end14.i.i.for.inc.i527_crit_edge, label %if.then20.i.i524

if.end14.i.i.for.inc.i527_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i527

if.then20.i.i524:                                 ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %location_req21.i.i = getelementptr %struct.iwl_tof_range_req_cmd_v5, ptr %cmd_v5.i, i32 0, i32 16, i32 %indvars.iv.i502, i32 11
  %587 = ptrtoint ptr %location_req21.i.i to i32
  call void @__asan_load1_noabort(i32 %587)
  %588 = load i8, ptr %location_req21.i.i, align 1
  %589 = or i8 %588, 2
  store i8 %589, ptr %location_req21.i.i, align 1
  br label %for.inc.i527

iwl_mvm_ftm_put_target_v2.exit.i:                 ; preds = %for.body.i513
  call void @__sanitizer_cov_trace_pc() #11
  %590 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %591, i32 noundef 0, ptr noundef nonnull @.str.12, i32 noundef %559) #9
  br label %iwl_mvm_ftm_start_v5.exit

for.inc.i527:                                     ; preds = %if.then20.i.i524, %if.end14.i.i.for.inc.i527_crit_edge
  %algo_type.i.i = getelementptr %struct.iwl_tof_range_req_cmd_v5, ptr %cmd_v5.i, i32 0, i32 16, i32 %indvars.iv.i502, i32 15
  %592 = ptrtoint ptr %algo_type.i.i to i32
  call void @__asan_store1_noabort(i32 %592)
  store i8 0, ptr %algo_type.i.i, align 1
  %indvars.iv.next.i525 = add nuw nsw i32 %indvars.iv.i502, 1
  %593 = ptrtoint ptr %num_of_ap.i.i482 to i32
  call void @__asan_load1_noabort(i32 %593)
  %594 = load i8, ptr %num_of_ap.i.i482, align 1
  %595 = zext i8 %594 to i32
  %cmp.i526 = icmp ult i32 %indvars.iv.next.i525, %595
  br i1 %cmp.i526, label %for.inc.i527.for.body.i513_crit_edge, label %for.inc.i527.for.end.i530_crit_edge

for.inc.i527.for.end.i530_crit_edge:              ; preds = %for.inc.i527
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i530

for.inc.i527.for.body.i513_crit_edge:             ; preds = %for.inc.i527
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i513

for.end.i530:                                     ; preds = %for.inc.i527.for.end.i530_crit_edge, %iwl_mvm_ftm_cmd_v5.exit.i.for.end.i530_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i.i470) #9
  %596 = ptrtoint ptr %status.i.i470 to i32
  call void @__asan_store4_noabort(i32 %596)
  store i32 -1, ptr %status.i.i470, align 4, !annotation !92
  %call.i.i528 = call i32 @iwl_mvm_send_cmd_status(ptr noundef %mvm, ptr noundef nonnull %hcmd.i471, ptr noundef nonnull %status.i.i470) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i528)
  %tobool.not.i.i529 = icmp eq i32 %call.i.i528, 0
  br i1 %tobool.not.i.i529, label %land.lhs.true.i.i532, label %for.end.i530.iwl_mvm_ftm_send_cmd.exit.i539_crit_edge

for.end.i530.iwl_mvm_ftm_send_cmd.exit.i539_crit_edge: ; preds = %for.end.i530
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i539

land.lhs.true.i.i532:                             ; preds = %for.end.i530
  %597 = ptrtoint ptr %status.i.i470 to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load i32, ptr %status.i.i470, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %598)
  %tobool1.not.i.i531 = icmp eq i32 %598, 0
  br i1 %tobool1.not.i.i531, label %land.lhs.true.i.i532.iwl_mvm_ftm_send_cmd.exit.i539_crit_edge, label %do.end.i.i533

land.lhs.true.i.i532.iwl_mvm_ftm_send_cmd.exit.i539_crit_edge: ; preds = %land.lhs.true.i.i532
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i539

do.end.i.i533:                                    ; preds = %land.lhs.true.i.i532
  %599 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %600, i32 noundef 0, ptr noundef nonnull @.str.15, i32 noundef %598) #9
  %601 = ptrtoint ptr %status.i.i470 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load i32, ptr %status.i.i470, align 4
  %603 = zext i32 %602 to i64
  call void @__sanitizer_cov_trace_switch(i64 %603, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %602, label %land.end.i.i.i536 [
    i32 0, label %do.end.i.i533.iwl_mvm_ftm_send_cmd.exit.i539_crit_edge
    i32 1, label %sw.bb1.i.i.i534
  ]

do.end.i.i533.iwl_mvm_ftm_send_cmd.exit.i539_crit_edge: ; preds = %do.end.i.i533
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i539

sw.bb1.i.i.i534:                                  ; preds = %do.end.i.i533
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i539

land.end.i.i.i536:                                ; preds = %do.end.i.i533
  %.b36.i.i.i535 = load i1, ptr @iwl_ftm_range_request_status_to_err.__already_done, align 1
  br i1 %.b36.i.i.i535, label %land.end.i.i.i536.iwl_mvm_ftm_send_cmd.exit.i539_crit_edge, label %if.then.i.i.i537, !prof !93

land.end.i.i.i536.iwl_mvm_ftm_send_cmd.exit.i539_crit_edge: ; preds = %land.end.i.i.i536
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_send_cmd.exit.i539

if.then.i.i.i537:                                 ; preds = %land.end.i.i.i536
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwl_ftm_range_request_status_to_err.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 196, i32 noundef 9, ptr noundef null) #9
  br label %iwl_mvm_ftm_send_cmd.exit.i539

iwl_mvm_ftm_send_cmd.exit.i539:                   ; preds = %if.then.i.i.i537, %land.end.i.i.i536.iwl_mvm_ftm_send_cmd.exit.i539_crit_edge, %sw.bb1.i.i.i534, %do.end.i.i533.iwl_mvm_ftm_send_cmd.exit.i539_crit_edge, %land.lhs.true.i.i532.iwl_mvm_ftm_send_cmd.exit.i539_crit_edge, %for.end.i530.iwl_mvm_ftm_send_cmd.exit.i539_crit_edge
  %err.0.i.i538 = phi i32 [ %call.i.i528, %for.end.i530.iwl_mvm_ftm_send_cmd.exit.i539_crit_edge ], [ 0, %land.lhs.true.i.i532.iwl_mvm_ftm_send_cmd.exit.i539_crit_edge ], [ -16, %sw.bb1.i.i.i534 ], [ %602, %do.end.i.i533.iwl_mvm_ftm_send_cmd.exit.i539_crit_edge ], [ -5, %if.then.i.i.i537 ], [ -5, %land.end.i.i.i536.iwl_mvm_ftm_send_cmd.exit.i539_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i470) #9
  br label %iwl_mvm_ftm_start_v5.exit

iwl_mvm_ftm_start_v5.exit:                        ; preds = %iwl_mvm_ftm_send_cmd.exit.i539, %iwl_mvm_ftm_put_target_v2.exit.i
  %retval.2.i540 = phi i32 [ -22, %iwl_mvm_ftm_put_target_v2.exit.i ], [ %err.0.i.i538, %iwl_mvm_ftm_send_cmd.exit.i539 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hcmd.i471) #9
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %cmd_v5.i) #9
  br label %if.end44

if.end44:                                         ; preds = %iwl_mvm_ftm_start_v5.exit, %iwl_mvm_ftm_start_v7.exit, %iwl_mvm_ftm_start_v8.exit, %iwl_mvm_ftm_start_v9.exit, %iwl_mvm_ftm_start_v11.exit, %iwl_mvm_ftm_start_v12.exit, %iwl_mvm_ftm_start_v13.exit
  %err.1 = phi i32 [ %retval.2.i540, %iwl_mvm_ftm_start_v5.exit ], [ %retval.2.i469, %iwl_mvm_ftm_start_v7.exit ], [ %retval.2.i361, %iwl_mvm_ftm_start_v8.exit ], [ %retval.2.i331, %iwl_mvm_ftm_start_v9.exit ], [ %retval.2.i248, %iwl_mvm_ftm_start_v11.exit ], [ %retval.2.i169, %iwl_mvm_ftm_start_v12.exit ], [ %retval.2.i, %iwl_mvm_ftm_start_v13.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool45.not = icmp eq i32 %err.1, 0
  br i1 %tobool45.not, label %if.then46, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %604 = ptrtoint ptr %ftm_initiator to i32
  call void @__asan_store4_noabort(i32 %604)
  store ptr %req, ptr %ftm_initiator, align 8
  %call49 = call ptr @ieee80211_vif_to_wdev(ptr noundef %vif) #9
  %req_wdev = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 162, i32 1
  %605 = ptrtoint ptr %req_wdev to i32
  call void @__asan_store4_noabort(i32 %605)
  store ptr %call49, ptr %req_wdev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %if.end44.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.end.cleanup_crit_edge ], [ 0, %if.then46 ], [ %err.1, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_vif_to_wdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_ftm_abort(ptr noundef %mvm, ptr noundef readonly %req) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_tof_range_abort_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #9
  %0 = getelementptr inbounds %struct.iwl_tof_range_abort_cmd, ptr %cmd, i32 0, i32 1
  %1 = ptrtoint ptr %req to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %req, align 8
  %conv = trunc i64 %2 to i8
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %cmd, align 1
  %4 = call ptr @memset(ptr %0, i32 0, i32 3)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %5 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !88

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 923, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %ftm_initiator = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 162
  %6 = ptrtoint ptr %ftm_initiator to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ftm_initiator, align 8
  %cmp26.not = icmp eq ptr %7, %req
  br i1 %cmp26.not, label %if.end29, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %8 = ptrtoint ptr %ftm_initiator to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %ftm_initiator, align 8
  %req_wdev.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 162, i32 1
  %9 = ptrtoint ptr %req_wdev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %req_wdev.i, align 4
  %responses.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 162, i32 3
  %10 = call ptr @memset(ptr %responses.i, i32 0, i32 20)
  %loc_list.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 162, i32 2
  %11 = ptrtoint ptr %loc_list.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %loc_list.i, align 8
  %cmp.not25.i = icmp eq ptr %12, %loc_list.i
  br i1 %cmp.not25.i, label %if.end29.iwl_mvm_ftm_reset.exit_crit_edge, label %if.end29.for.body.i_crit_edge

if.end29.for.body.i_crit_edge:                    ; preds = %if.end29
  br label %for.body.i

if.end29.iwl_mvm_ftm_reset.exit_crit_edge:        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_reset.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end29.for.body.i_crit_edge
  %e.026.i = phi ptr [ %t.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %12, %if.end29.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %e.026.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %t.0.i = load ptr, ptr %e.026.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %e.026.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %e.026.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %e.026.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %e.026.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %20 = ptrtoint ptr %e.026.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %e.026.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %e.026.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %e.026.i) #9
  %cmp.not.i = icmp eq ptr %t.0.i, %loc_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.iwl_mvm_ftm_reset.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

list_del.exit.i.iwl_mvm_ftm_reset.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_reset.exit

iwl_mvm_ftm_reset.exit:                           ; preds = %list_del.exit.i.iwl_mvm_ftm_reset.exit_crit_edge, %if.end29.iwl_mvm_ftm_reset.exit_crit_edge
  %call31 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 2050, i32 noundef 0, i16 noundef zeroext 4, ptr noundef nonnull %cmd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %iwl_mvm_ftm_reset.exit.cleanup_crit_edge, label %do.end37

iwl_mvm_ftm_reset.exit.cleanup_crit_edge:         ; preds = %iwl_mvm_ftm_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end37:                                         ; preds = %iwl_mvm_ftm_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %23, i32 noundef 0, ptr noundef nonnull @.str.4) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %iwl_mvm_ftm_reset.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd_pdu(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_ftm_range_resp(ptr noundef %mvm, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
entry:
  %remainder.i.i = alloca i32, align 4
  %curr_gp2.i = alloca i32, align 4
  %now_from_boot_ns.i = alloca i64, align 8
  %result = alloca %struct.cfg80211_pmsr_result, align 8
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %5, align 1
  %8 = and i32 %7, -12648448
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  %sub.i = add nsw i32 %9, -4
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %10 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw, align 8
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %11, i32 0, i32 5, i32 7, i32 1
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i.i, align 4
  %14 = and i32 %13, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not = icmp eq i32 %14, 0
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i.i, align 4
  %17 = and i32 %16, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not.i = icmp eq i32 %17, 0
  br i1 %tobool.i.not.i, label %entry.iwl_mvm_ftm_get_range_resp_ver.exit_crit_edge, label %if.end.i

entry.iwl_mvm_ftm_get_range_resp_ver.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_get_range_resp_ver.exit

if.end.i:                                         ; preds = %entry
  %range_resp.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 164, i32 1
  %18 = ptrtoint ptr %range_resp.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %range_resp.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %19)
  %cmp.i = icmp ugt i8 %19, 7
  br i1 %cmp.i, label %if.end.i.iwl_mvm_ftm_get_range_resp_ver.exit_crit_edge, label %if.else.i

if.end.i.iwl_mvm_ftm_get_range_resp_ver.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_get_range_resp_ver.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %arrayidx.i.i, align 4
  %22 = and i32 %21, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i15.not.i = icmp eq i32 %22, 0
  %..i = select i1 %tobool.i15.not.i, i8 6, i8 7
  br label %iwl_mvm_ftm_get_range_resp_ver.exit

iwl_mvm_ftm_get_range_resp_ver.exit:              ; preds = %if.else.i, %if.end.i.iwl_mvm_ftm_get_range_resp_ver.exit_crit_edge, %entry.iwl_mvm_ftm_get_range_resp_ver.exit_crit_edge
  %retval.0.i = phi i8 [ 5, %entry.iwl_mvm_ftm_get_range_resp_ver.exit_crit_edge ], [ %19, %if.end.i.iwl_mvm_ftm_get_range_resp_ver.exit_crit_edge ], [ %..i, %if.else.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %23 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  br i1 %tobool.not, label %iwl_mvm_ftm_get_range_resp_ver.exit.if.end_crit_edge, label %land.rhs

iwl_mvm_ftm_get_range_resp_ver.exit.if.end_crit_edge: ; preds = %iwl_mvm_ftm_get_range_resp_ver.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %iwl_mvm_ftm_get_range_resp_ver.exit
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i282 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i282)
  %cmp.not = icmp eq i32 %call.i282, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !88

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1186, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %iwl_mvm_ftm_get_range_resp_ver.exit.if.end_crit_edge
  %ftm_initiator = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 162
  %24 = ptrtoint ptr %ftm_initiator to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ftm_initiator, align 8
  %tobool34.not = icmp eq ptr %25, null
  br i1 %tobool34.not, label %if.end.cleanup204_crit_edge, label %if.end36

if.end.cleanup204_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup204

if.end36:                                         ; preds = %if.end
  %conv.i = zext i8 %retval.0.i to i32
  %26 = zext i8 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %retval.0.i, label %land.end.i [
    i8 9, label %if.end36.iwl_mvm_ftm_resp_size_validation.exit_crit_edge
    i8 8, label %if.end36.iwl_mvm_ftm_resp_size_validation.exit_crit_edge339
    i8 7, label %sw.bb2.i
    i8 6, label %sw.bb5.i
    i8 5, label %sw.bb8.i
  ]

if.end36.iwl_mvm_ftm_resp_size_validation.exit_crit_edge339: ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_resp_size_validation.exit

if.end36.iwl_mvm_ftm_resp_size_validation.exit_crit_edge: ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_resp_size_validation.exit

sw.bb2.i:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 304, i32 %sub.i)
  %cmp3.i = icmp eq i32 %sub.i, 304
  br i1 %cmp3.i, label %sw.bb2.i.if.end47_crit_edge, label %sw.bb2.i.cleanup204_crit_edge, !prof !93

sw.bb2.i.cleanup204_crit_edge:                    ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup204

sw.bb2.i.if.end47_crit_edge:                      ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

sw.bb5.i:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 284, i32 %sub.i)
  %cmp6.i = icmp eq i32 %sub.i, 284
  br i1 %cmp6.i, label %sw.bb5.i.if.end47_crit_edge, label %sw.bb5.i.cleanup204_crit_edge, !prof !93

sw.bb5.i.cleanup204_crit_edge:                    ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup204

sw.bb5.i.if.end47_crit_edge:                      ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

sw.bb8.i:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 264, i32 %sub.i)
  %cmp9.i = icmp eq i32 %sub.i, 264
  br i1 %cmp9.i, label %sw.bb8.i.if.end47_crit_edge, label %sw.bb8.i.cleanup204_crit_edge, !prof !93

sw.bb8.i.cleanup204_crit_edge:                    ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup204

sw.bb8.i.if.end47_crit_edge:                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

land.end.i:                                       ; preds = %if.end36
  %.b51.i = load i1, ptr @iwl_mvm_ftm_resp_size_validation.__already_done, align 1
  br i1 %.b51.i, label %land.end.i.cleanup204_crit_edge, label %if.then.i, !prof !93

land.end.i.cleanup204_crit_edge:                  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup204

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwl_mvm_ftm_resp_size_validation.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1167, i32 noundef 9, ptr noundef nonnull @.str.16, i32 noundef %conv.i) #9
  br label %cleanup204

iwl_mvm_ftm_resp_size_validation.exit:            ; preds = %if.end36.iwl_mvm_ftm_resp_size_validation.exit_crit_edge, %if.end36.iwl_mvm_ftm_resp_size_validation.exit_crit_edge339
  call void @__sanitizer_cov_trace_const_cmp4(i32 364, i32 %sub.i)
  %cmp.i283 = icmp eq i32 %sub.i, 364
  br i1 %cmp.i283, label %iwl_mvm_ftm_resp_size_validation.exit.if.end47_crit_edge, label %iwl_mvm_ftm_resp_size_validation.exit.cleanup204_crit_edge, !prof !93

iwl_mvm_ftm_resp_size_validation.exit.cleanup204_crit_edge: ; preds = %iwl_mvm_ftm_resp_size_validation.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup204

iwl_mvm_ftm_resp_size_validation.exit.if.end47_crit_edge: ; preds = %iwl_mvm_ftm_resp_size_validation.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.end47:                                         ; preds = %iwl_mvm_ftm_resp_size_validation.exit.if.end47_crit_edge, %sw.bb8.i.if.end47_crit_edge, %sw.bb5.i.if.end47_crit_edge, %sw.bb2.i.if.end47_crit_edge
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %data, align 1
  br i1 %tobool.i.not, label %if.else, label %if.then49

if.then49:                                        ; preds = %if.end47
  %num_of_aps50 = getelementptr inbounds %struct.iwl_tof_range_rsp_ntfy_v8, ptr %data, i32 0, i32 1
  %29 = ptrtoint ptr %num_of_aps50 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %num_of_aps50, align 1
  %call51 = tail call fastcc i32 @iwl_mvm_ftm_range_resp_valid(ptr noundef %mvm, i8 noundef zeroext %28, i8 noundef zeroext %30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.then49.cleanup204_crit_edge

if.then49.cleanup204_crit_edge:                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup204

if.end54:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  %last_report = getelementptr inbounds %struct.iwl_tof_range_rsp_ntfy_v8, ptr %data, i32 0, i32 2
  br label %do.end68

if.else:                                          ; preds = %if.end47
  %num_of_aps57 = getelementptr inbounds %struct.iwl_tof_range_rsp_ntfy_v5, ptr %data, i32 0, i32 3
  %31 = ptrtoint ptr %num_of_aps57 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %num_of_aps57, align 1
  %call58 = tail call fastcc i32 @iwl_mvm_ftm_range_resp_valid(ptr noundef %mvm, i8 noundef zeroext %28, i8 noundef zeroext %32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.else.cleanup204_crit_edge

if.else.cleanup204_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup204

if.end61:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %last_in_batch63 = getelementptr inbounds %struct.iwl_tof_range_rsp_ntfy_v5, ptr %data, i32 0, i32 2
  br label %do.end68

do.end68:                                         ; preds = %if.end61, %if.end54
  %num_of_aps.0.in = phi ptr [ %num_of_aps50, %if.end54 ], [ %num_of_aps57, %if.end61 ]
  %last_in_batch.0.in = phi ptr [ %last_report, %if.end54 ], [ %last_in_batch63, %if.end61 ]
  %33 = ptrtoint ptr %last_in_batch.0.in to i32
  call void @__asan_load1_noabort(i32 %33)
  %last_in_batch.0 = load i8, ptr %last_in_batch.0.in, align 1
  %34 = ptrtoint ptr %num_of_aps.0.in to i32
  call void @__asan_load1_noabort(i32 %34)
  %num_of_aps.0 = load i8, ptr %num_of_aps.0.in, align 1
  %35 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %36, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_ftm_range_resp, ptr noundef nonnull @.str.5) #9
  %37 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mvm, align 8
  %39 = ptrtoint ptr %ftm_initiator to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ftm_initiator, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %40, align 8
  %conv = zext i8 %num_of_aps.0 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %38, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_ftm_range_resp, ptr noundef nonnull @.str.6, i64 noundef %42, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num_of_aps.0)
  %cmp81318.not = icmp eq i8 %num_of_aps.0, 0
  br i1 %cmp81318.not, label %do.end68.for.end_crit_edge, label %for.body.lr.ph

do.end68.for.end_crit_edge:                       ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end68
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %retval.0.i)
  %cmp90 = icmp ugt i8 %retval.0.i, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %retval.0.i)
  %cmp95 = icmp eq i8 %retval.0.i, 7
  %ap101 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %dep_map.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %pasn_list.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 162, i32 5
  %final = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %result, i32 0, i32 4
  %ap_tsf = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %result, i32 0, i32 1
  %status140 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %result, i32 0, i32 2
  %failure_reason141 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %result, i32 0, i32 6, i32 0, i32 4
  %busy_retry_time = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %result, i32 0, i32 6, i32 0, i32 8
  %addr = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %result, i32 0, i32 3
  %type = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %result, i32 0, i32 5
  %burst_index = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %result, i32 0, i32 6, i32 0, i32 7
  %rssi_avg = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %result, i32 0, i32 6, i32 0, i32 12
  %rssi_avg_valid = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %result, i32 0, i32 6, i32 0, i32 22
  %rssi_spread159 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %result, i32 0, i32 6, i32 0, i32 13
  %rtt_avg = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %result, i32 0, i32 6, i32 0, i32 16
  %rtt_variance168 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %result, i32 0, i32 6, i32 0, i32 17
  %rtt_spread173 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %result, i32 0, i32 6, i32 0, i32 18
  %loc_list.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 162, i32 2
  %add.ptr.i.i.i289 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %result, i32 0, i32 3, i32 4
  %43 = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %result, i32 0, i32 6
  %lci_len8.i = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %result, i32 0, i32 6, i32 0, i32 2
  %civicloc_len.i = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %result, i32 0, i32 6, i32 0, i32 3
  %civicloc.i = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %result, i32 0, i32 6, i32 0, i32 1
  %req_wdev = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 162, i32 1
  %num_ftmr_successes.i = getelementptr inbounds %struct.cfg80211_pmsr_result, ptr %result, i32 0, i32 6, i32 0, i32 6
  %44 = add nsw i32 %conv, -1
  %umin = call i32 @llvm.umin.i32(i32 %44, i32 4)
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0319 = phi i32 [ 0, %for.body.lr.ph ], [ %inc196, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %result) #9
  %45 = call ptr @memset(ptr %result, i32 0, i32 152)
  br i1 %tobool.i.not, label %if.else109, label %if.then88

if.then88:                                        ; preds = %for.body
  br i1 %cmp90, label %if.then92, label %if.else93

if.then92:                                        ; preds = %if.then88
  %arrayidx = getelementptr [5 x %struct.iwl_tof_range_rsp_ap_entry_ntfy_v6], ptr %ap101, i32 0, i32 %i.0319
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %46 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i, label %if.then92.for.cond.i.preheader_crit_edge, label %land.rhs.i

if.then92.for.cond.i.preheader_crit_edge:         ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.preheader

land.rhs.i:                                       ; preds = %if.then92
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.for.cond.i.preheader_crit_edge, !prof !88

land.rhs.i.for.cond.i.preheader_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.preheader

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1125, i32 noundef 9, ptr noundef null) #9
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %do.end.i, %land.rhs.i.for.cond.i.preheader_crit_edge, %if.then92.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %entry1.0.in.i = phi ptr [ %entry1.0.i, %for.body.i.for.cond.i_crit_edge ], [ %pasn_list.i, %for.cond.i.preheader ]
  %47 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %cmp28.not.i = icmp eq ptr %entry1.0.i, %pasn_list.i
  br i1 %cmp28.not.i, label %for.cond.i.if.end104_crit_edge, label %for.body.i

for.cond.i.if.end104_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

for.body.i:                                       ; preds = %for.cond.i
  %addr.i = getelementptr inbounds %struct.iwl_mvm_ftm_pasn_entry, ptr %entry1.0.i, i32 0, i32 1
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(6) %arrayidx, ptr noundef dereferenceable(6) %addr.i, i32 6) #14
  %tobool33.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

if.end35.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_pn.i = getelementptr inbounds %struct.iwl_mvm_ftm_pasn_entry, ptr %entry1.0.i, i32 0, i32 6
  %rx_pn37.i = getelementptr [5 x %struct.iwl_tof_range_rsp_ap_entry_ntfy_v6], ptr %ap101, i32 0, i32 %i.0319, i32 21
  %48 = call ptr @memcpy(ptr %rx_pn.i, ptr %rx_pn37.i, i32 6)
  %tx_pn.i = getelementptr inbounds %struct.iwl_mvm_ftm_pasn_entry, ptr %entry1.0.i, i32 0, i32 5
  %tx_pn40.i = getelementptr [5 x %struct.iwl_tof_range_rsp_ap_entry_ntfy_v6], ptr %ap101, i32 0, i32 %i.0319, i32 22
  %49 = call ptr @memcpy(ptr %tx_pn.i, ptr %tx_pn40.i, i32 6)
  br label %if.end104

if.else93:                                        ; preds = %if.then88
  br i1 %cmp95, label %if.then97, label %if.else100

if.then97:                                        ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx99 = getelementptr [5 x %struct.iwl_tof_range_rsp_ap_entry_ntfy_v5], ptr %ap101, i32 0, i32 %i.0319
  br label %if.end104

if.else100:                                       ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx102 = getelementptr [5 x %struct.iwl_tof_range_rsp_ap_entry_ntfy_v4], ptr %ap101, i32 0, i32 %i.0319
  br label %if.end104

if.end104:                                        ; preds = %if.else100, %if.then97, %if.end35.i, %for.cond.i.if.end104_crit_edge
  %fw_ap.0 = phi ptr [ %arrayidx99, %if.then97 ], [ %arrayidx102, %if.else100 ], [ %arrayidx, %if.end35.i ], [ %arrayidx, %for.cond.i.if.end104_crit_edge ]
  %last_burst = getelementptr inbounds %struct.iwl_tof_range_rsp_ap_entry_ntfy_v6, ptr %fw_ap.0, i32 0, i32 8
  %50 = ptrtoint ptr %last_burst to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %last_burst, align 1
  %52 = ptrtoint ptr %final to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load = load i8, ptr %final, align 2
  %bf.shl = shl i8 %51, 7
  %bf.clear = and i8 %bf.load, 63
  %bf.set = or i8 %bf.clear, %bf.shl
  %start_tsf = getelementptr inbounds %struct.iwl_tof_range_rsp_ap_entry_ntfy_v6, ptr %fw_ap.0, i32 0, i32 11
  %53 = ptrtoint ptr %start_tsf to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %start_tsf, align 1
  %55 = call i32 @llvm.bswap.i32(i32 %54)
  %conv105 = zext i32 %55 to i64
  %56 = ptrtoint ptr %ap_tsf to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %conv105, ptr %ap_tsf, align 8
  %bf.set108 = or i8 %bf.set, 64
  br label %if.end116

if.else109:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx111 = getelementptr [5 x %struct.iwl_tof_range_rsp_ap_entry_ntfy_v3], ptr %ap101, i32 0, i32 %i.0319
  %57 = ptrtoint ptr %final to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load113 = load i8, ptr %final, align 2
  %bf.clear114 = and i8 %bf.load113, 127
  br label %if.end116

if.end116:                                        ; preds = %if.else109, %if.end104
  %storemerge = phi i8 [ %bf.set108, %if.end104 ], [ %bf.clear114, %if.else109 ]
  %fw_ap.1 = phi ptr [ %fw_ap.0, %if.end104 ], [ %arrayidx111, %if.else109 ]
  %58 = ptrtoint ptr %final to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %storemerge, ptr %final, align 2
  %59 = ptrtoint ptr %ftm_initiator to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ftm_initiator, align 8
  %n_peers.i = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %n_peers.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %n_peers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp7.not.i = icmp eq i32 %62, 0
  br i1 %cmp7.not.i, label %if.end116.do.end127_crit_edge, label %for.body.lr.ph.i

if.end116.do.end127_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end127

for.body.lr.ph.i:                                 ; preds = %if.end116
  %63 = ptrtoint ptr %fw_ap.1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fw_ap.1, align 4
  %add.ptr1.i.i.i = getelementptr i8, ptr %fw_ap.1, i32 4
  %65 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %add.ptr1.i.i.i, align 2
  br label %for.body.i286

for.body.i286:                                    ; preds = %for.inc.i.for.body.i286_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i286_crit_edge ]
  %arrayidx.i = getelementptr %struct.cfg80211_pmsr_request, ptr %60, i32 0, i32 8, i32 %i.08.i
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i, align 4
  %xor.i.i.i = xor i32 %68, %64
  %add.ptr.i.i.i = getelementptr i8, ptr %arrayidx.i, i32 4
  %69 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %add.ptr.i.i.i, align 2
  %xor37.i.i.i = xor i16 %70, %66
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %iwl_mvm_ftm_find_peer.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i286
  %inc.i = add nuw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %62
  br i1 %exitcond.not.i, label %for.inc.i.do.end127_crit_edge, label %for.inc.i.for.body.i286_crit_edge

for.inc.i.for.body.i286_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i286

for.inc.i.do.end127_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end127

iwl_mvm_ftm_find_peer.exit:                       ; preds = %for.body.i286
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.08.i)
  %cmp121 = icmp slt i32 %i.08.i, 0
  br i1 %cmp121, label %iwl_mvm_ftm_find_peer.exit.do.end127_crit_edge, label %if.end133

iwl_mvm_ftm_find_peer.exit.do.end127_crit_edge:   ; preds = %iwl_mvm_ftm_find_peer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end127

do.end127:                                        ; preds = %iwl_mvm_ftm_find_peer.exit.do.end127_crit_edge, %for.inc.i.do.end127_crit_edge, %if.end116.do.end127_crit_edge
  %71 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mvm, align 8
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %72, ptr noundef nonnull @.str.7, ptr noundef %fw_ap.1, i32 noundef %i.0319) #9
  br label %cleanup

if.end133:                                        ; preds = %iwl_mvm_ftm_find_peer.exit
  %measure_status = getelementptr inbounds %struct.iwl_tof_range_rsp_ap_entry_ntfy_v6, ptr %fw_ap.1, i32 0, i32 1
  %73 = ptrtoint ptr %measure_status to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %measure_status, align 1
  %75 = zext i8 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %74, label %sw.default [
    i8 0, label %sw.bb
    i8 5, label %sw.bb135
    i8 2, label %sw.bb137
    i8 3, label %sw.bb139
  ]

sw.bb:                                            ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %status140 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %status140, align 8
  br label %sw.epilog

sw.bb135:                                         ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %status140 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 2, ptr %status140, align 8
  br label %sw.epilog

sw.bb137:                                         ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %status140 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 3, ptr %status140, align 8
  %79 = ptrtoint ptr %failure_reason141 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %failure_reason141, align 8
  br label %sw.epilog

sw.bb139:                                         ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %status140 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 3, ptr %status140, align 8
  %81 = ptrtoint ptr %failure_reason141 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 6, ptr %failure_reason141, align 8
  %refusal_period = getelementptr inbounds %struct.iwl_tof_range_rsp_ap_entry_ntfy_v6, ptr %fw_ap.1, i32 0, i32 9
  %82 = ptrtoint ptr %refusal_period to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %refusal_period, align 1
  %84 = ptrtoint ptr %busy_retry_time to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %busy_retry_time, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %status140 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 3, ptr %status140, align 8
  %86 = ptrtoint ptr %failure_reason141 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %failure_reason141, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb139, %sw.bb137, %sw.bb135, %sw.bb
  %87 = call ptr @memcpy(ptr %addr, ptr %fw_ap.1, i32 6)
  %timestamp = getelementptr inbounds %struct.iwl_tof_range_rsp_ap_entry_ntfy_v6, ptr %fw_ap.1, i32 0, i32 10
  %88 = ptrtoint ptr %timestamp to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %timestamp, align 1
  %90 = call i32 @llvm.bswap.i32(i32 %89) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curr_gp2.i) #9
  %91 = ptrtoint ptr %curr_gp2.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %curr_gp2.i, align 4, !annotation !92
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %now_from_boot_ns.i) #9
  %92 = ptrtoint ptr %now_from_boot_ns.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 -1, ptr %now_from_boot_ns.i, align 8, !annotation !92
  call void @iwl_mvm_get_sync_time(ptr noundef %mvm, i32 noundef 7, ptr noundef nonnull %curr_gp2.i, ptr noundef nonnull %now_from_boot_ns.i, ptr noundef null) #9
  %93 = ptrtoint ptr %curr_gp2.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %curr_gp2.i, align 4
  %diff.0.i = sub i32 %94, %90
  %95 = ptrtoint ptr %now_from_boot_ns.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %now_from_boot_ns.i, align 8
  %conv.i287 = zext i32 %diff.0.i to i64
  %mul.neg.i = mul nsw i64 %conv.i287, -1000
  %sub3.i = add i64 %mul.neg.i, %96
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %now_from_boot_ns.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_gp2.i) #9
  %97 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %sub3.i, ptr %result, align 8
  %98 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %type, align 4
  %arrayidx149 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 162, i32 3, i32 %i.08.i
  %99 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx149, align 4
  %conv150 = trunc i32 %100 to i16
  %101 = ptrtoint ptr %burst_index to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv150, ptr %burst_index, align 4
  %inc = add i32 %100, 1
  store i32 %inc, ptr %arrayidx149, align 4
  %rssi = getelementptr inbounds %struct.iwl_tof_range_rsp_ap_entry_ntfy_v6, ptr %fw_ap.1, i32 0, i32 6
  %102 = ptrtoint ptr %rssi to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %rssi, align 1
  %conv154 = sext i8 %103 to i32
  %104 = ptrtoint ptr %rssi_avg to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %conv154, ptr %rssi_avg, align 4
  %105 = ptrtoint ptr %rssi_avg_valid to i32
  call void @__asan_load2_noabort(i32 %105)
  %bf.load155 = load i16, ptr %rssi_avg_valid, align 8
  %bf.set157 = or i16 %bf.load155, 8192
  store i16 %bf.set157, ptr %rssi_avg_valid, align 8
  %rssi_spread = getelementptr inbounds %struct.iwl_tof_range_rsp_ap_entry_ntfy_v6, ptr %fw_ap.1, i32 0, i32 7
  %106 = ptrtoint ptr %rssi_spread to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %rssi_spread, align 1
  %conv158 = zext i8 %107 to i32
  %108 = ptrtoint ptr %rssi_spread159 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %conv158, ptr %rssi_spread159, align 8
  %bf.set162 = or i16 %bf.load155, 12288
  store i16 %bf.set162, ptr %rssi_avg_valid, align 8
  %rtt = getelementptr inbounds %struct.iwl_tof_range_rsp_ap_entry_ntfy_v6, ptr %fw_ap.1, i32 0, i32 3
  %109 = ptrtoint ptr %rtt to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %rtt, align 1
  %111 = call i32 @llvm.bswap.i32(i32 %110)
  %conv163 = sext i32 %111 to i64
  %112 = ptrtoint ptr %rtt_avg to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %conv163, ptr %rtt_avg, align 8
  %bf.set166 = or i16 %bf.load155, 12800
  %113 = ptrtoint ptr %rssi_avg_valid to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %bf.set166, ptr %rssi_avg_valid, align 8
  %rtt_variance = getelementptr inbounds %struct.iwl_tof_range_rsp_ap_entry_ntfy_v6, ptr %fw_ap.1, i32 0, i32 4
  %114 = ptrtoint ptr %rtt_variance to i32
  call void @__asan_loadN_noabort(i32 %114, i32 4)
  %115 = load i32, ptr %rtt_variance, align 1
  %116 = call i32 @llvm.bswap.i32(i32 %115)
  %conv167 = zext i32 %116 to i64
  %117 = ptrtoint ptr %rtt_variance168 to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %conv167, ptr %rtt_variance168, align 8
  %bf.set171 = or i16 %bf.load155, 13056
  %118 = ptrtoint ptr %rssi_avg_valid to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %bf.set171, ptr %rssi_avg_valid, align 8
  %rtt_spread = getelementptr inbounds %struct.iwl_tof_range_rsp_ap_entry_ntfy_v6, ptr %fw_ap.1, i32 0, i32 5
  %119 = ptrtoint ptr %rtt_spread to i32
  call void @__asan_loadN_noabort(i32 %119, i32 4)
  %120 = load i32, ptr %rtt_spread, align 1
  %121 = call i32 @llvm.bswap.i32(i32 %120)
  %conv172 = zext i32 %121 to i64
  %122 = ptrtoint ptr %rtt_spread173 to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %conv172, ptr %rtt_spread173, align 8
  %bf.set176 = or i16 %bf.load155, 13184
  %123 = ptrtoint ptr %rssi_avg_valid to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %bf.set176, ptr %rssi_avg_valid, align 8
  br label %for.cond.i293

for.cond.i293:                                    ; preds = %for.body.i300.for.cond.i293_crit_edge, %sw.epilog
  %entry1.0.in.i290 = phi ptr [ %loc_list.i, %sw.epilog ], [ %entry1.0.i291, %for.body.i300.for.cond.i293_crit_edge ]
  %124 = ptrtoint ptr %entry1.0.in.i290 to i32
  call void @__asan_load4_noabort(i32 %124)
  %entry1.0.i291 = load ptr, ptr %entry1.0.in.i290, align 4
  %cmp.not.i292 = icmp eq ptr %entry1.0.i291, %loc_list.i
  br i1 %cmp.not.i292, label %for.cond.i293.iwl_mvm_ftm_get_lci_civic.exit_crit_edge, label %for.body.i300

for.cond.i293.iwl_mvm_ftm_get_lci_civic.exit_crit_edge: ; preds = %for.cond.i293
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_get_lci_civic.exit

for.body.i300:                                    ; preds = %for.cond.i293
  %addr4.i = getelementptr inbounds %struct.iwl_mvm_loc_entry, ptr %entry1.0.i291, i32 0, i32 1
  %125 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %addr, align 4
  %127 = ptrtoint ptr %addr4.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %addr4.i, align 4
  %xor.i.i.i294 = xor i32 %128, %126
  %129 = ptrtoint ptr %add.ptr.i.i.i289 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %add.ptr.i.i.i289, align 8
  %add.ptr1.i.i.i295 = getelementptr %struct.iwl_mvm_loc_entry, ptr %entry1.0.i291, i32 0, i32 1, i32 4
  %131 = ptrtoint ptr %add.ptr1.i.i.i295 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %add.ptr1.i.i.i295, align 2
  %xor37.i.i.i296 = xor i16 %132, %130
  %xor3.i.i.i297 = zext i16 %xor37.i.i.i296 to i32
  %or.i.i.i298 = or i32 %xor.i.i.i294, %xor3.i.i.i297
  %cmp.i.i.i299 = icmp eq i32 %or.i.i.i298, 0
  br i1 %cmp.i.i.i299, label %if.end.i302, label %for.body.i300.for.cond.i293_crit_edge

for.body.i300.for.cond.i293_crit_edge:            ; preds = %for.body.i300
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i293

if.end.i302:                                      ; preds = %for.body.i300
  %lci_len.i = getelementptr inbounds %struct.iwl_mvm_loc_entry, ptr %entry1.0.i291, i32 0, i32 2
  %133 = ptrtoint ptr %lci_len.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %lci_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool.not.i301 = icmp eq i8 %134, 0
  br i1 %tobool.not.i301, label %if.end.i302.if.end10.i_crit_edge, label %if.then6.i

if.end.i302.if.end10.i_crit_edge:                 ; preds = %if.end.i302
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end.i302
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i303 = zext i8 %134 to i32
  %135 = ptrtoint ptr %lci_len8.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %conv.i303, ptr %lci_len8.i, align 8
  %buf.i = getelementptr inbounds %struct.iwl_mvm_loc_entry, ptr %entry1.0.i291, i32 0, i32 4
  %136 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %buf.i, ptr %43, align 8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %if.end.i302.if.end10.i_crit_edge
  %civic_len.i = getelementptr inbounds %struct.iwl_mvm_loc_entry, ptr %entry1.0.i291, i32 0, i32 3
  %137 = ptrtoint ptr %civic_len.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %civic_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool11.not.i = icmp eq i8 %138, 0
  br i1 %tobool11.not.i, label %if.end10.i.iwl_mvm_ftm_get_lci_civic.exit_crit_edge, label %if.then12.i

if.end10.i.iwl_mvm_ftm_get_lci_civic.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_get_lci_civic.exit

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv14.i = zext i8 %138 to i32
  %139 = ptrtoint ptr %civicloc_len.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %conv14.i, ptr %civicloc_len.i, align 4
  %buf15.i = getelementptr inbounds %struct.iwl_mvm_loc_entry, ptr %entry1.0.i291, i32 0, i32 4
  %140 = ptrtoint ptr %lci_len.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %lci_len.i, align 2
  %conv18.i = zext i8 %141 to i32
  %add.ptr19.i = getelementptr i8, ptr %buf15.i, i32 %conv18.i
  %142 = ptrtoint ptr %civicloc.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %add.ptr19.i, ptr %civicloc.i, align 4
  br label %iwl_mvm_ftm_get_lci_civic.exit

iwl_mvm_ftm_get_lci_civic.exit:                   ; preds = %if.then12.i, %if.end10.i.iwl_mvm_ftm_get_lci_civic.exit_crit_edge, %for.cond.i293.iwl_mvm_ftm_get_lci_civic.exit_crit_edge
  %143 = ptrtoint ptr %req_wdev to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %req_wdev, align 4
  %145 = ptrtoint ptr %ftm_initiator to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ftm_initiator, align 8
  call void @cfg80211_pmsr_report(ptr noundef %144, ptr noundef %146, ptr noundef nonnull %result, i32 noundef 3264) #9
  %147 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %fw, align 8
  %arrayidx.i.i304 = getelementptr %struct.iwl_fw, ptr %148, i32 0, i32 5, i32 7, i32 1
  %149 = ptrtoint ptr %arrayidx.i.i304 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile i32, ptr %arrayidx.i.i304, align 4
  %151 = and i32 %150, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool.i305.not = icmp eq i32 %151, 0
  br i1 %tobool.i305.not, label %iwl_mvm_ftm_get_lci_civic.exit.if.end192_crit_edge, label %do.end187

iwl_mvm_ftm_get_lci_civic.exit.if.end192_crit_edge: ; preds = %iwl_mvm_ftm_get_lci_civic.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end192

do.end187:                                        ; preds = %iwl_mvm_ftm_get_lci_civic.exit
  call void @__sanitizer_cov_trace_pc() #11
  %152 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %mvm, align 8
  %rttConfidence = getelementptr inbounds %struct.iwl_tof_range_rsp_ap_entry_ntfy_v6, ptr %fw_ap.1, i32 0, i32 19
  %154 = ptrtoint ptr %rttConfidence to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %rttConfidence, align 1
  %conv189 = zext i8 %155 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %153, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_ftm_range_resp, ptr noundef nonnull @.str.8, i32 noundef %conv189) #9
  br label %if.end192

if.end192:                                        ; preds = %do.end187, %iwl_mvm_ftm_get_lci_civic.exit.if.end192_crit_edge
  %156 = ptrtoint ptr %rtt_avg to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %rtt_avg, align 8
  %mul.i = mul i64 %157, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #9
  %158 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !92
  %call.i.i306 = call i64 @div_s64_rem(i64 noundef %mul.i, i32 noundef 6666, ptr noundef nonnull %remainder.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #9
  %159 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %160, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_debug_range_resp, ptr noundef nonnull @.str.19, i32 noundef %i.0319) #9
  %161 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %mvm, align 8
  %163 = ptrtoint ptr %status140 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %status140, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %162, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_debug_range_resp, ptr noundef nonnull @.str.20, i32 noundef %164) #9
  %165 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %166, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_debug_range_resp, ptr noundef nonnull @.str.21, ptr noundef %addr) #9
  %167 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %mvm, align 8
  %169 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %result, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %168, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_debug_range_resp, ptr noundef nonnull @.str.22, i64 noundef %170) #9
  %171 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %mvm, align 8
  %173 = ptrtoint ptr %burst_index to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %burst_index, align 4
  %conv31.i = sext i16 %174 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %172, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_debug_range_resp, ptr noundef nonnull @.str.23, i32 noundef %conv31.i) #9
  %175 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %mvm, align 8
  %177 = ptrtoint ptr %num_ftmr_successes.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %num_ftmr_successes.i, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %176, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_debug_range_resp, ptr noundef nonnull @.str.24, i32 noundef %178) #9
  %179 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %mvm, align 8
  %181 = ptrtoint ptr %rssi_avg to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %rssi_avg, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %180, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_debug_range_resp, ptr noundef nonnull @.str.25, i32 noundef %182) #9
  %183 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %mvm, align 8
  %185 = ptrtoint ptr %rssi_spread159 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %rssi_spread159, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %184, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_debug_range_resp, ptr noundef nonnull @.str.26, i32 noundef %186) #9
  %187 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %mvm, align 8
  %189 = ptrtoint ptr %rtt_avg to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %rtt_avg, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %188, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_debug_range_resp, ptr noundef nonnull @.str.27, i64 noundef %190) #9
  %191 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %mvm, align 8
  %193 = ptrtoint ptr %rtt_variance168 to i32
  call void @__asan_load8_noabort(i32 %193)
  %194 = load i64, ptr %rtt_variance168, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %192, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_debug_range_resp, ptr noundef nonnull @.str.28, i64 noundef %194) #9
  %195 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %mvm, align 8
  %197 = ptrtoint ptr %rtt_spread173 to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %rtt_spread173, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %196, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_debug_range_resp, ptr noundef nonnull @.str.29, i64 noundef %198) #9
  %199 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %200, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_debug_range_resp, ptr noundef nonnull @.str.30, i64 noundef %call.i.i306) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end192, %do.end127
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %result) #9
  %inc196 = add nuw nsw i32 %i.0319, 1
  %exitcond.not = icmp eq i32 %i.0319, %umin
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %do.end68.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %last_in_batch.0)
  %tobool197.not = icmp eq i8 %last_in_batch.0, 0
  br i1 %tobool197.not, label %for.end.cleanup204_crit_edge, label %if.then198

for.end.cleanup204_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup204

if.then198:                                       ; preds = %for.end
  %req_wdev200 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 162, i32 1
  %201 = ptrtoint ptr %req_wdev200 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %req_wdev200, align 4
  %203 = ptrtoint ptr %ftm_initiator to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %ftm_initiator, align 8
  call void @cfg80211_pmsr_complete(ptr noundef %202, ptr noundef %204, i32 noundef 3264) #9
  %205 = ptrtoint ptr %ftm_initiator to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr null, ptr %ftm_initiator, align 8
  %206 = ptrtoint ptr %req_wdev200 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr null, ptr %req_wdev200, align 4
  %responses.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 162, i32 3
  %207 = call ptr @memset(ptr %responses.i, i32 0, i32 20)
  %loc_list.i309 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 162, i32 2
  %208 = ptrtoint ptr %loc_list.i309 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %loc_list.i309, align 8
  %cmp.not25.i = icmp eq ptr %209, %loc_list.i309
  br i1 %cmp.not25.i, label %if.then198.cleanup204_crit_edge, label %if.then198.for.body.i310_crit_edge

if.then198.for.body.i310_crit_edge:               ; preds = %if.then198
  br label %for.body.i310

if.then198.cleanup204_crit_edge:                  ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup204

for.body.i310:                                    ; preds = %list_del.exit.i.for.body.i310_crit_edge, %if.then198.for.body.i310_crit_edge
  %e.026.i = phi ptr [ %t.0.i, %list_del.exit.i.for.body.i310_crit_edge ], [ %209, %if.then198.for.body.i310_crit_edge ]
  %210 = ptrtoint ptr %e.026.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %t.0.i = load ptr, ptr %e.026.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %e.026.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i310.list_del.exit.i_crit_edge

for.body.i310.list_del.exit.i_crit_edge:          ; preds = %for.body.i310
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i310
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %e.026.i, i32 0, i32 1
  %211 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %prev.i.i.i, align 4
  %213 = ptrtoint ptr %e.026.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %e.026.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %214, i32 0, i32 1
  %215 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %212, ptr %prev1.i.i.i.i, align 4
  %216 = ptrtoint ptr %212 to i32
  call void @__asan_store4_noabort(i32 %216)
  store volatile ptr %214, ptr %212, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i310.list_del.exit.i_crit_edge
  %217 = ptrtoint ptr %e.026.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr inttoptr (i32 256 to ptr), ptr %e.026.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %e.026.i, i32 0, i32 1
  %218 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %e.026.i) #9
  %cmp.not.i311 = icmp eq ptr %t.0.i, %loc_list.i309
  br i1 %cmp.not.i311, label %list_del.exit.i.cleanup204_crit_edge, label %list_del.exit.i.for.body.i310_crit_edge

list_del.exit.i.for.body.i310_crit_edge:          ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i310

list_del.exit.i.cleanup204_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup204

cleanup204:                                       ; preds = %list_del.exit.i.cleanup204_crit_edge, %if.then198.cleanup204_crit_edge, %for.end.cleanup204_crit_edge, %if.else.cleanup204_crit_edge, %if.then49.cleanup204_crit_edge, %iwl_mvm_ftm_resp_size_validation.exit.cleanup204_crit_edge, %if.then.i, %land.end.i.cleanup204_crit_edge, %sw.bb8.i.cleanup204_crit_edge, %sw.bb5.i.cleanup204_crit_edge, %sw.bb2.i.cleanup204_crit_edge, %if.end.cleanup204_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_ftm_range_resp_valid(ptr noundef %mvm, i8 noundef zeroext %request_id, i8 noundef zeroext %num_of_aps) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !88

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 995, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %conv = zext i8 %request_id to i32
  %ftm_initiator = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 162
  %1 = ptrtoint ptr %ftm_initiator to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ftm_initiator, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  %conv24 = trunc i64 %4 to i32
  %conv25 = and i32 %conv24, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv25, i32 %conv)
  %cmp26.not = icmp eq i32 %conv25, %conv
  br i1 %cmp26.not, label %if.end41, label %do.end32

do.end32:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %6, i32 noundef 0, ptr noundef nonnull @.str.17, i32 noundef %conv, i32 noundef %conv25) #9
  br label %return

if.end41:                                         ; preds = %if.end
  %conv42 = zext i8 %num_of_aps to i32
  %n_peers = getelementptr inbounds %struct.cfg80211_pmsr_request, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %n_peers to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_peers, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv42)
  %cmp45 = icmp ult i32 %8, %conv42
  br i1 %cmp45, label %do.end51, label %if.end41.return_crit_edge

if.end41.return_crit_edge:                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end51:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %10, i32 noundef 0, ptr noundef nonnull @.str.18) #9
  br label %return

return:                                           ; preds = %do.end51, %if.end41.return_crit_edge, %do.end32
  %retval.0 = phi i32 [ -22, %do.end32 ], [ -22, %do.end51 ], [ 0, %if.end41.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_ftm_lc_notif(ptr noundef %mvm, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
entry:
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %5, align 1
  %8 = and i32 %7, -12648448
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  %sub.i = add nsw i32 %9, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 45, i32 %sub.i)
  %cmp = icmp ult i32 %sub.i, 45
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %10 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %do.body.if.end21_crit_edge, label %land.rhs

do.body.if.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

land.rhs:                                         ; preds = %do.body
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i101 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %cmp4.not = icmp eq i32 %call.i101, 0
  br i1 %cmp4.not, label %do.end, label %land.rhs.if.end21_crit_edge, !prof !88

land.rhs.if.end21_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1334, i32 noundef 9, ptr noundef null) #9
  br label %if.end21

if.end21:                                         ; preds = %do.end, %land.rhs.if.end21_crit_edge, %do.body.if.end21_crit_edge
  %u = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 4
  %u30 = getelementptr inbounds %struct.anon.174, ptr %u, i32 0, i32 1
  %variable = getelementptr inbounds %struct.anon.192, ptr %u30, i32 0, i32 7
  %sub = add nsw i32 %9, -48
  %call.i102 = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 39, ptr noundef %variable, i32 noundef %sub, ptr noundef nonnull @iwl_mvm_ftm_lc_notif.rprt_type_lci, i32 noundef 1, i32 noundef 2) #9
  %tobool33.not = icmp eq ptr %call.i102, null
  br i1 %tobool33.not, label %if.end21.if.end35_crit_edge, label %if.then34

if.end21.if.end35_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then34:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %call.i102, i32 2
  %arrayidx = getelementptr i8, ptr %call.i102, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %12 to i32
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end21.if.end35_crit_edge
  %lci.0 = phi ptr [ %add.ptr, %if.then34 ], [ inttoptr (i32 -1 to ptr), %if.end21.if.end35_crit_edge ]
  %lci_len.0 = phi i32 [ %conv, %if.then34 ], [ 0, %if.end21.if.end35_crit_edge ]
  %call.i103 = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 39, ptr noundef %variable, i32 noundef %sub, ptr noundef nonnull @iwl_mvm_ftm_lc_notif.rprt_type_civic, i32 noundef 1, i32 noundef 2) #9
  %tobool37.not = icmp eq ptr %call.i103, null
  br i1 %tobool37.not, label %if.end35.if.end8.i_crit_edge, label %if.then38

if.end35.if.end8.i_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr39 = getelementptr i8, ptr %call.i103, i32 2
  %arrayidx40 = getelementptr i8, ptr %call.i103, i32 1
  %13 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %14 to i32
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then38, %if.end35.if.end8.i_crit_edge
  %civic.0 = phi ptr [ %add.ptr39, %if.then38 ], [ inttoptr (i32 -1 to ptr), %if.end35.if.end8.i_crit_edge ]
  %civic_len.0 = phi i32 [ %conv41, %if.then38 ], [ 0, %if.end35.if.end8.i_crit_edge ]
  %add = add nuw nsw i32 %lci_len.0, 16
  %add43 = add nuw nsw i32 %add, %civic_len.0
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add43, i32 noundef 3264) #15
  %tobool45.not = icmp eq ptr %call9.i, null
  br i1 %tobool45.not, label %if.end8.i.cleanup_crit_edge, label %if.end47

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end47:                                         ; preds = %if.end8.i
  %addr = getelementptr inbounds %struct.iwl_mvm_loc_entry, ptr %call9.i, i32 0, i32 1
  %bssid = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 3
  %15 = call ptr @memcpy(ptr %addr, ptr %bssid, i32 6)
  %conv50 = trunc i32 %lci_len.0 to i8
  %lci_len51 = getelementptr inbounds %struct.iwl_mvm_loc_entry, ptr %call9.i, i32 0, i32 2
  %16 = ptrtoint ptr %lci_len51 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv50, ptr %lci_len51, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lci_len.0)
  %tobool52.not = icmp eq i32 %lci_len.0, 0
  br i1 %tobool52.not, label %if.end47.if.end55_crit_edge, label %if.then53

if.end47.if.end55_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then53:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %buf = getelementptr inbounds %struct.iwl_mvm_loc_entry, ptr %call9.i, i32 0, i32 4
  %17 = call ptr @memcpy(ptr %buf, ptr %lci.0, i32 %lci_len.0)
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end47.if.end55_crit_edge
  %conv56 = trunc i32 %civic_len.0 to i8
  %civic_len57 = getelementptr inbounds %struct.iwl_mvm_loc_entry, ptr %call9.i, i32 0, i32 3
  %18 = ptrtoint ptr %civic_len57 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv56, ptr %civic_len57, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %civic_len.0)
  %tobool58.not = icmp eq i32 %civic_len.0, 0
  br i1 %tobool58.not, label %if.end55.if.end63_crit_edge, label %if.then59

if.end55.if.end63_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  %buf60 = getelementptr inbounds %struct.iwl_mvm_loc_entry, ptr %call9.i, i32 0, i32 4
  %add.ptr62 = getelementptr i8, ptr %buf60, i32 %lci_len.0
  %19 = call ptr @memcpy(ptr %add.ptr62, ptr %civic.0, i32 %civic_len.0)
  br label %if.end63

if.end63:                                         ; preds = %if.then59, %if.end55.if.end63_crit_edge
  %loc_list = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 162, i32 2
  %prev.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 162, i32 2, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i, ptr noundef %21, ptr noundef %loc_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call9.i, ptr %prev.i, align 4
  %23 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %loc_list, ptr %call9.i, align 128
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %call9.i, ptr %21, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end63.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
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
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
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
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_ftm_put_target_v7(ptr noundef %mvm, ptr noundef %vif, ptr noundef %peer, ptr noundef %target) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @iwl_mvm_ftm_put_target(ptr noundef %mvm, ptr noundef %vif, ptr noundef %peer, ptr noundef %target)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %target to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %target, align 1
  %2 = and i32 %1, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %do.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not.i = icmp eq i32 %3, 0
  br i1 %tobool2.not.i, label %do.body.i.if.end19.i_crit_edge, label %land.rhs.i

do.body.i.if.end19.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

land.rhs.i:                                       ; preds = %do.body.i
  %dep_map.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end19.i_crit_edge, !prof !88

land.rhs.i.if.end19.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 687, i32 noundef 9, ptr noundef null) #9
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end.i, %land.rhs.i.if.end19.i_crit_edge, %do.body.i.if.end19.i_crit_edge
  %pasn_list.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 162, i32 5
  %bssid.i = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v7, ptr %target, i32 0, i32 5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end19.i
  %entry1.0.in.i = phi ptr [ %pasn_list.i, %if.end19.i ], [ %entry1.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %cmp31.not.i = icmp eq ptr %entry1.0.i, %pasn_list.i
  br i1 %cmp31.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %addr.i = getelementptr inbounds %struct.iwl_mvm_ftm_pasn_entry, ptr %entry1.0.i, i32 0, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr.i, ptr noundef dereferenceable(6) %bssid.i, i32 6) #14
  %tobool36.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

if.end38.i:                                       ; preds = %for.body.i
  %cipher.i = getelementptr inbounds %struct.iwl_mvm_ftm_pasn_entry, ptr %entry1.0.i, i32 0, i32 4
  %5 = ptrtoint ptr %cipher.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cipher.i, align 2
  %cipher39.i = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v7, ptr %target, i32 0, i32 10
  %7 = ptrtoint ptr %cipher39.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %cipher39.i, align 1
  %hltk.i = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v7, ptr %target, i32 0, i32 11
  %hltk41.i = getelementptr inbounds %struct.iwl_mvm_ftm_pasn_entry, ptr %entry1.0.i, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %hltk.i, ptr %hltk41.i, i32 32)
  %assoc.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 10
  %9 = ptrtoint ptr %assoc.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %assoc.i, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool43.not.i = icmp eq i8 %10, 0
  br i1 %tobool43.not.i, label %if.end38.i.if.else.i_crit_edge, label %land.lhs.true.i

if.end38.i.if.else.i_crit_edge:                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end38.i
  %bss_conf.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %11 = ptrtoint ptr %bss_conf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bss_conf.i, align 8
  %bcmp90.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %12, ptr noundef dereferenceable(6) %bssid.i, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp90.i)
  %tobool49.not.i = icmp eq i32 %bcmp90.i, 0
  br i1 %tobool49.not.i, label %if.then50.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then50.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %13 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw.i, align 4
  tail call void @ieee80211_iter_keys(ptr noundef %14, ptr noundef %vif, ptr noundef nonnull @iter, ptr noundef %target) #9
  br label %if.end54.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end38.i.if.else.i_crit_edge
  %tk.i = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v7, ptr %target, i32 0, i32 12
  %tk52.i = getelementptr inbounds %struct.iwl_mvm_ftm_pasn_entry, ptr %entry1.0.i, i32 0, i32 3
  %15 = call ptr @memcpy(ptr %tk.i, ptr %tk52.i, i32 32)
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.else.i, %if.then50.i
  %rx_pn.i = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v7, ptr %target, i32 0, i32 15
  %rx_pn56.i = getelementptr inbounds %struct.iwl_mvm_ftm_pasn_entry, ptr %entry1.0.i, i32 0, i32 6
  %16 = call ptr @memcpy(ptr %rx_pn.i, ptr %rx_pn56.i, i32 6)
  %tx_pn.i = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v7, ptr %target, i32 0, i32 16
  %tx_pn59.i = getelementptr inbounds %struct.iwl_mvm_ftm_pasn_entry, ptr %entry1.0.i, i32 0, i32 5
  %17 = call ptr @memcpy(ptr %tx_pn.i, ptr %tx_pn59.i, i32 6)
  %18 = ptrtoint ptr %target to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %target, align 1
  %or.i = or i32 %19, 524288
  store i32 %or.i, ptr %target, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end54.i, %for.cond.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_ftm_put_target(ptr noundef %mvm, ptr nocapture noundef readonly %vif, ptr noundef %peer, ptr noundef %target) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_num = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v6, ptr %target, i32 0, i32 1
  %format_bw = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v6, ptr %target, i32 0, i32 2
  %ctrl_ch_position = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v6, ptr %target, i32 0, i32 3
  %call = tail call fastcc i32 @iwl_mvm_ftm_target_chandef_v2(ptr noundef %mvm, ptr noundef %peer, ptr noundef %channel_num, ptr noundef %format_bw, ptr noundef %ctrl_ch_position)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %bssid.i = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v6, ptr %target, i32 0, i32 5
  %0 = call ptr @memcpy(ptr %bssid.i, ptr %peer, i32 6)
  %burst_period.i = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, ptr %peer, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %burst_period.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %burst_period.i, align 4
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #9
  %burst_period2.i = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v6, ptr %target, i32 0, i32 6
  %4 = ptrtoint ptr %burst_period2.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %3, ptr %burst_period2.i, align 1
  %ftms_per_burst.i = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, ptr %peer, i32 0, i32 3, i32 5
  %5 = ptrtoint ptr %ftms_per_burst.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ftms_per_burst.i, align 1
  %samples_per_burst.i = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v6, ptr %target, i32 0, i32 7
  %7 = ptrtoint ptr %samples_per_burst.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %samples_per_burst.i, align 1
  %num_bursts_exp.i = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, ptr %peer, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %num_bursts_exp.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_bursts_exp.i, align 1
  %num_of_bursts.i = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v6, ptr %target, i32 0, i32 8
  %10 = ptrtoint ptr %num_of_bursts.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %num_of_bursts.i, align 1
  %ftmr_retries.i = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, ptr %peer, i32 0, i32 3, i32 6
  %11 = ptrtoint ptr %ftmr_retries.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ftmr_retries.i, align 2
  %ftmr_max_retries.i = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v6, ptr %target, i32 0, i32 4
  %13 = ptrtoint ptr %ftmr_max_retries.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %ftmr_max_retries.i, align 1
  %14 = ptrtoint ptr %target to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 0, ptr %target, align 1
  %asap.i = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, ptr %peer, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %asap.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %asap.i, align 2
  %16 = and i8 %bf.load.i, 64
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 19
  store i32 %18, ptr %target, align 1
  %bf.load9.i = load i8, ptr %asap.i, align 2
  %19 = and i8 %bf.load9.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool12.not.i = icmp eq i8 %19, 0
  br i1 %tobool12.not.i, label %if.end.if.end16.i_crit_edge, label %if.then13.i

if.end.if.end16.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.then13.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %or15.i = or i32 %18, 67108864
  %20 = ptrtoint ptr %target to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %or15.i, ptr %target, align 1
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then13.i, %if.end.if.end16.i_crit_edge
  %21 = ptrtoint ptr %asap.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load18.i = load i8, ptr %asap.i, align 2
  %22 = and i8 %bf.load18.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool21.not.i = icmp eq i8 %22, 0
  br i1 %tobool21.not.i, label %if.end16.i.if.end25.i_crit_edge, label %if.then22.i

if.end16.i.if.end25.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

if.then22.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %target to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %target, align 1
  %or24.i = or i32 %24, 134217728
  store i32 %or24.i, ptr %target, align 1
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then22.i, %if.end16.i.if.end25.i_crit_edge
  %25 = ptrtoint ptr %target to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %target, align 1
  %or27.i = or i32 %26, 268435456
  store i32 %or27.i, ptr %target, align 1
  %27 = ptrtoint ptr %asap.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load29.i = load i8, ptr %asap.i, align 2
  %28 = and i8 %bf.load29.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool32.not.i = icmp eq i8 %28, 0
  br i1 %tobool32.not.i, label %if.else.i, label %if.end25.i.if.end45.sink.split.i_crit_edge

if.end25.i.if.end45.sink.split.i_crit_edge:       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.sink.split.i

if.else.i:                                        ; preds = %if.end25.i
  %29 = and i8 %bf.load29.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool40.not.i = icmp eq i8 %29, 0
  br i1 %tobool40.not.i, label %if.else.i.if.end45.i_crit_edge, label %if.else.i.if.end45.sink.split.i_crit_edge

if.else.i.if.end45.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.sink.split.i

if.else.i.if.end45.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i

if.end45.sink.split.i:                            ; preds = %if.else.i.if.end45.sink.split.i_crit_edge, %if.end25.i.if.end45.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 268697600, %if.end25.i.if.end45.sink.split.i_crit_edge ], [ 268566528, %if.else.i.if.end45.sink.split.i_crit_edge ]
  %or43.i = or i32 %.sink.i, %26
  %30 = ptrtoint ptr %target to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %or43.i, ptr %target, align 1
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.end45.sink.split.i, %if.else.i.if.end45.i_crit_edge
  %31 = ptrtoint ptr %asap.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load48.i = load i8, ptr %asap.i, align 2
  %32 = and i8 %bf.load48.i, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %33 = icmp eq i8 %32, 0
  %34 = and i8 %bf.load48.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool64.not.i = icmp eq i8 %34, 0
  %or.cond1.i = or i1 %33, %tobool64.not.i
  br i1 %or.cond1.i, label %if.end45.i.iwl_mvm_ftm_put_target_common.exit_crit_edge, label %if.then65.i

if.end45.i.iwl_mvm_ftm_put_target_common.exit_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_ftm_put_target_common.exit

if.then65.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %target to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %target, align 1
  %or67.i = or i32 %36, 1048576
  store i32 %or67.i, ptr %target, align 1
  br label %iwl_mvm_ftm_put_target_common.exit

iwl_mvm_ftm_put_target_common.exit:               ; preds = %if.then65.i, %if.end45.i.iwl_mvm_ftm_put_target_common.exit_crit_edge
  %assoc = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 10
  %37 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %assoc, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool1.not = icmp eq i8 %38, 0
  br i1 %tobool1.not, label %iwl_mvm_ftm_put_target_common.exit.if.end33_crit_edge, label %land.lhs.true

iwl_mvm_ftm_put_target_common.exit.if.end33_crit_edge: ; preds = %iwl_mvm_ftm_put_target_common.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

land.lhs.true:                                    ; preds = %iwl_mvm_ftm_put_target_common.exit
  %bss_conf = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %39 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bss_conf, align 8
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %peer, ptr noundef dereferenceable(6) %40, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool4.not = icmp eq i32 %bcmp, 0
  br i1 %tobool4.not, label %if.then5, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then5:                                         ; preds = %land.lhs.true
  %41 = tail call i32 @llvm.read_register.i32(metadata !78) #9
  %and.i.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %44, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !90
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.then5.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then5.rcu_read_lock.exit_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then5
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then5.rcu_read_lock.exit_crit_edge
  %ap_sta_id = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %45 = ptrtoint ptr %ap_sta_id to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ap_sta_id, align 8
  %idxprom = zext i8 %46 to i32
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %idxprom
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %arrayidx, align 4
  %call8 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true10, label %rcu_read_lock.exit.do.end18_crit_edge

rcu_read_lock.exit.do.end18_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

land.lhs.true10:                                  ; preds = %rcu_read_lock.exit
  %call11 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true10.do.end18_crit_edge, label %land.lhs.true13

land.lhs.true10.do.end18_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %.b51 = load i1, ptr @iwl_mvm_ftm_put_target.__warned, align 1
  br i1 %.b51, label %land.lhs.true13.do.end18_crit_edge, label %if.then15

land.lhs.true13.do.end18_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

if.then15:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwl_mvm_ftm_put_target.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 513, ptr noundef nonnull @.str.1) #9
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %land.lhs.true13.do.end18_crit_edge, %land.lhs.true10.do.end18_crit_edge, %rcu_read_lock.exit.do.end18_crit_edge
  %mfp = getelementptr inbounds %struct.ieee80211_sta, ptr %48, i32 0, i32 19
  %49 = ptrtoint ptr %mfp to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %mfp, align 2, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool20.not = icmp eq i8 %50, 0
  br i1 %tobool20.not, label %do.end18.if.end30_crit_edge, label %land.lhs.true21

do.end18.if.end30_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

land.lhs.true21:                                  ; preds = %do.end18
  %51 = ptrtoint ptr %asap.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load = load i8, ptr %asap.i, align 2
  %52 = and i8 %bf.load, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %land.lhs.true21.if.end30_crit_edge, label %if.then29

land.lhs.true21.if.end30_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then29:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %target to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %target, align 1
  %or = or i32 %55, 4194304
  store i32 %or, ptr %target, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %land.lhs.true21.if.end30_crit_edge, %do.end18.if.end30_crit_edge
  %call.i52 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i52, label %if.end30.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i55

if.end30.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i55:                                ; preds = %if.end30
  %call1.i53 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53)
  %tobool.not.i54 = icmp eq i32 %call1.i53, 0
  br i1 %tobool.not.i54, label %land.lhs.true.i55.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i57

land.lhs.true.i55.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i57:                               ; preds = %land.lhs.true.i55
  %.b4.i56 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56, label %land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge, label %if.then.i58

land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i57
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i58:                                      ; preds = %land.lhs.true2.i57
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i58, %land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i55.rcu_read_unlock.exit_crit_edge, %if.end30.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !91
  %56 = tail call i32 @llvm.read_register.i32(metadata !78) #9
  %and.i.i.i.i.i59 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i.i59 to ptr
  %preempt_count.i.i.i.i60 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i.i.i60, align 4
  %sub.i.i.i = add i32 %59, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i60, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %60 = ptrtoint ptr %ap_sta_id to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ap_sta_id, align 8
  br label %if.end33

if.end33:                                         ; preds = %rcu_read_unlock.exit, %land.lhs.true.if.end33_crit_edge, %iwl_mvm_ftm_put_target_common.exit.if.end33_crit_edge
  %.sink = phi i8 [ %61, %rcu_read_unlock.exit ], [ -1, %land.lhs.true.if.end33_crit_edge ], [ -1, %iwl_mvm_ftm_put_target_common.exit.if.end33_crit_edge ]
  %sta_id32 = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v6, ptr %target, i32 0, i32 9
  %62 = ptrtoint ptr %sta_id32 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %.sink, ptr %sta_id32, align 1
  %beacon_interval = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v6, ptr %target, i32 0, i32 14
  %63 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_storeN_noabort(i32 %63, i32 2)
  store i16 25600, ptr %beacon_interval, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_ftm_target_chandef_v2(ptr nocapture noundef readonly %mvm, ptr noundef %peer, ptr nocapture noundef writeonly %channel, ptr nocapture noundef %format_bw, ptr nocapture noundef writeonly %ctrl_ch_position) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chandef = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, ptr %peer, i32 0, i32 1
  %0 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %center_freq, align 4
  %mul.i = mul i32 %3, 1000
  %call.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i) #9
  %conv = trunc i32 %call.i to i8
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %channel, align 1
  %width = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, ptr %peer, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %width, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %6, label %entry.do.end_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb4
    i32 2, label %sw.bb8
    i32 3, label %sw.bb12
    i32 5, label %sw.bb16
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %8 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw, align 8
  %call17 = tail call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %9, i8 noundef zeroext 8, i8 noundef zeroext 0, i8 noundef zeroext 99) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %call17)
  %cmp = icmp ugt i8 %call17, 12
  br i1 %cmp, label %sw.bb16.sw.epilog_crit_edge, label %sw.bb16.do.end_crit_edge

sw.bb16.do.end_crit_edge:                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb16.do.end_crit_edge, %entry.do.end_crit_edge
  %10 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mvm, align 8
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %11, i32 noundef 0, ptr noundef nonnull @.str.12, i32 noundef %13) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb16.sw.epilog_crit_edge, %sw.bb12, %sw.bb8, %sw.bb4, %entry.sw.epilog_crit_edge
  %.sink = phi i8 [ 34, %sw.bb12 ], [ 17, %sw.bb8 ], [ 1, %sw.bb4 ], [ 0, %entry.sw.epilog_crit_edge ], [ 51, %sw.bb16.sw.epilog_crit_edge ]
  %14 = ptrtoint ptr %format_bw to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink, ptr %format_bw, align 1
  %trigger_based = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, ptr %peer, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %trigger_based to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %trigger_based, align 2
  %16 = and i8 %bf.load, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %sw.epilog.if.end39_crit_edge, label %if.then35

sw.epilog.if.end39_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then35:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %format_bw to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %format_bw, align 1
  %20 = or i8 %19, 3
  store i8 %20, ptr %format_bw, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %sw.epilog.if.end39_crit_edge
  %21 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp42 = icmp ugt i32 %22, 1
  br i1 %cmp42, label %cond.true, label %if.end39.cond.end_crit_edge

if.end39.cond.end_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %call45 = tail call zeroext i8 @iwl_mvm_get_ctrl_pos(ptr noundef %chandef) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end39.cond.end_crit_edge
  %cond = phi i8 [ %call45, %cond.true ], [ 0, %if.end39.cond.end_crit_edge ]
  %23 = ptrtoint ptr %ctrl_ch_position to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %cond, ptr %ctrl_ch_position, align 1
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %cond.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_mvm_get_ctrl_pos(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iter_keys(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iter(ptr nocapture noundef readnone %hw, ptr nocapture noundef readnone %vif, ptr noundef readonly %sta, ptr nocapture noundef readonly %key, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sta, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %bssid = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v6, ptr %data, i32 0, i32 5
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr, ptr noundef dereferenceable(6) %bssid, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool2.not = icmp eq i32 %bcmp, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mfp = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 19
  %0 = ptrtoint ptr %mfp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mfp, align 2, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool3.not = icmp eq i8 %1, 0
  br i1 %tobool3.not, label %do.end, label %if.end.if.end19_crit_edge, !prof !88

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 666, i32 noundef 9, ptr noundef null) #9
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.end.if.end19_crit_edge
  %keylen = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %2 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %keylen, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %3)
  %cmp = icmp ugt i8 %3, 32
  br i1 %cmp, label %do.end43, label %if.end59, !prof !88

do.end43:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 668, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end59:                                         ; preds = %if.end19
  %tk = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v6, ptr %data, i32 0, i32 12
  %key61 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %conv64 = zext i8 %3 to i32
  %4 = call ptr @memcpy(ptr %tk, ptr %key61, i32 %conv64)
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %5 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cipher, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %6, label %do.end88 [
    i32 1027076, label %if.end59.iwl_mvm_cipher_to_location_cipher.exit.thread_crit_edge
    i32 1027080, label %sw.bb1.i
    i32 1027081, label %sw.bb2.i
  ]

if.end59.iwl_mvm_cipher_to_location_cipher.exit.thread_crit_edge: ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_cipher_to_location_cipher.exit.thread

sw.bb1.i:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_cipher_to_location_cipher.exit.thread

sw.bb2.i:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_cipher_to_location_cipher.exit.thread

iwl_mvm_cipher_to_location_cipher.exit.thread:    ; preds = %sw.bb2.i, %sw.bb1.i, %if.end59.iwl_mvm_cipher_to_location_cipher.exit.thread_crit_edge
  %retval.0.i.ph = phi i8 [ 0, %if.end59.iwl_mvm_cipher_to_location_cipher.exit.thread_crit_edge ], [ 1, %sw.bb1.i ], [ 2, %sw.bb2.i ]
  %cipher67115 = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v6, ptr %data, i32 0, i32 10
  %8 = ptrtoint ptr %cipher67115 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %retval.0.i.ph, ptr %cipher67115, align 1
  br label %cleanup

do.end88:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %cipher67 = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v6, ptr %data, i32 0, i32 10
  %9 = ptrtoint ptr %cipher67 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 3, ptr %cipher67, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 673, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end88, %iwl_mvm_cipher_to_location_cipher.exit.thread, %do.end43, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_get_sync_time(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !28, !29, !31, !32, !34, !36, !38, !39, !40, !42, !44, !46, !47, !49, !51, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76}
!llvm.named.register.sp = !{!78}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c", i32 46, i32 2}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c", i32 76, i32 9}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c", i32 83, i32 3}
!7 = !{ptr @__func__.iwl_mvm_ftm_initiator_smooth_config, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c", i32 167, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c", i32 933, i32 3}
!12 = !{ptr @__func__.iwl_mvm_ftm_range_resp, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c", i32 1211, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c", i32 1212, i32 2}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c", i32 1247, i32 4}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c", i32 1304, i32 4}
!21 = !{ptr @iwl_mvm_ftm_lc_notif.rprt_type_lci, !22, !"rprt_type_lci", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c", i32 1328, i32 18}
!23 = !{ptr @iwl_mvm_ftm_lc_notif.rprt_type_civic, !24, !"rprt_type_civic", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c", i32 1329, i32 18}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c", i32 513, i32 9}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c", i32 360, i32 3}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h", i32 2099, i32 3}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c", i32 538, i32 3}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c", i32 196, i32 3}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c", i32 1167, i32 3}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c", i32 998, i32 3}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c", i32 1004, i32 3}
!51 = !{ptr @__func__.iwl_mvm_debug_range_resp, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c", i32 1105, i32 2}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c", i32 1106, i32 2}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c", i32 1107, i32 2}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c", i32 1108, i32 2}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c", i32 1109, i32 2}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c", i32 1110, i32 2}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c", i32 1111, i32 2}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c", i32 1112, i32 2}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c", i32 1113, i32 2}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c", i32 1114, i32 2}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c", i32 1115, i32 2}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-initiator.c", i32 1116, i32 2}
!76 = distinct !{null, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/net/cfg80211.h", i32 5969, i32 6}
!78 = !{!"sp"}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = !{i8 0, i8 2}
!90 = !{i64 2149698630}
!91 = !{i64 2149698896}
!92 = !{!"auto-init"}
!93 = !{!"branch_weights", i32 2000, i32 1}
