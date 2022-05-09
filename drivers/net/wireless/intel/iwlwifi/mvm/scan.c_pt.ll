; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/mvm/scan.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/mvm/scan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_mvm_scan_timing_params = type { i32, i32 }
%struct.iwl_scan_umac_handler = type { i8, ptr }
%struct.iwl_mvm_scan_channel_segment = type { i8, i8, i8, i8, i8, i8 }
%struct.iwl_mvm = type <{ ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i32, i8, [3 x i8], %struct.iwl_notif_wait_data, %union.anon.136, %struct.anon.137, %struct.anon.137, %struct.list_head, %union.anon.138, %struct.work_struct, ptr, ptr, ptr, ptr, i8, i8, [2 x i8], %struct.work_struct, ptr, [13 x %struct.iwl_nvm_section], %struct.iwl_fw_runtime, [5 x %struct.mac_address], %struct.iwl_rx_phy_info, [2 x i8], [16 x ptr], i8, [3 x i8], i32, i32, ptr, ptr, i32, i32, i32, %struct.delayed_work, i32, [4 x i32], [4 x i8], i64, ptr, i8, [3 x i8], %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i8, i8, i8, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.iwl_mvm_frame_stats, %struct.spinlock, i16, [2 x i8], [3 x %struct.iwl_mvm_phy_ctxt], %struct.list_head, %struct.spinlock, [1 x i32], [16 x i8], i8, [3 x i8], [4 x ptr], i8, [3 x i8], ptr, %struct.led_classdev, ptr, %struct.wiphy_wowlan_support, i32, i32, i32, i32, %struct.ieee80211_scan_ies, ptr, i32, ptr, i32, i8, i8, i8, i8, i32, ptr, i32, %struct.wait_queue_head, %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_ci_cmd, i8, [3 x i8], i32, %struct.list_head, %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_thermal_device, %struct.iwl_mvm_cooling_device, i32, i8, i8, [2 x i8], i32, [4 x i8], %struct.iwl_mvm_tcm, i8, i8, [20 x %struct.mac_address], %struct.iwl_time_quota_cmd, [2 x i8], i32, ptr, i16, i16, i16, i16, i8, [3 x i8], i32, ptr, ptr, ptr, i8, [3 x i8], i32, i8, i8, [2 x i8], i32, %struct.anon.151, [10 x i32], [1 x %struct.ieee80211_cipher_scheme], %struct.cfg80211_ftm_responder_stats, %struct.anon.153, %struct.list_head, %struct.anon.155, [2 x i8], ptr, [32 x ptr], i8, [3 x i8], %struct.delayed_work, i8, i8, i16, [6 x i8], [2 x i8], i32, i32 }>
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
%struct.iwl_rx_cmd_buffer = type { ptr, i32, i8, i32, i32 }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }
%struct.iwl_lmac_scan_complete_notif = type { i8, i8, i8, i8, i32, i32, [0 x %struct.iwl_scan_results_notif] }
%struct.iwl_scan_results_notif = type { i8, i8, i8, i8, i32 }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.iwl_periodic_scan_complete = type { i8, i8, i8, i8, i32, i32 }
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
%struct.iwl_scan_config = type { i8, i8, i8, i8, i32, i32 }
%struct.iwl_nvm_data = type { i32, [6 x i8], i8, i16, i16, i16, i16, [2 x i16], i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, [6 x %struct.ieee80211_supported_band], %struct.anon.139, [0 x %struct.ieee80211_channel] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.anon.139 = type { [2 x %struct.ieee80211_sband_iftype_data], [2 x %struct.ieee80211_sband_iftype_data] }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.118 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.118 = type { ptr, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
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
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.iwl_scan_config_v2 = type { i32, i32, i32, i32, [2 x i32], [2 x i32], %struct.iwl_scan_dwell, [6 x i8], i8, i8, [0 x i8] }
%struct.iwl_scan_dwell = type { i8, i8, i8, i8 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.iwl_scan_config_v1 = type { i32, i32, i32, i32, i32, i32, %struct.iwl_scan_dwell, [6 x i8], i8, i8, [0 x i8] }
%struct.iwl_mvm_scan_params = type { i32, i32, i32, i16, i32, ptr, ptr, i32, ptr, ptr, i8, i8, i32, %struct.iwl_scan_probe_req, ptr, i32, ptr, i8, ptr, i32, i8, i8 }
%struct.iwl_scan_probe_req = type { %struct.iwl_scan_probe_segment, [3 x %struct.iwl_scan_probe_segment], %struct.iwl_scan_probe_segment, [512 x i8] }
%struct.iwl_scan_probe_segment = type { i16, i16 }
%struct.cfg80211_sched_scan_plan = type { i32, i32 }
%struct.iwl_cfg = type { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
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
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.iwl_scan_req_lmac = type { i32, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, [2 x %struct.iwl_scan_req_tx_cmd], [20 x %struct.iwl_ssid_ie], i32, i32, i32, [2 x %struct.iwl_scan_schedule_lmac], [2 x %struct.iwl_scan_channel_opt], [0 x i8] }
%struct.iwl_scan_req_tx_cmd = type { i32, i32, i8, [3 x i8] }
%struct.iwl_ssid_ie = type { i8, i8, [32 x i8] }
%struct.iwl_scan_schedule_lmac = type { i16, i8, i8 }
%struct.iwl_scan_channel_opt = type { i16, i16 }
%struct.iwl_scan_channel_cfg_lmac = type { i32, i16, i16, i32 }
%struct.iwl_scan_probe_req_v1 = type { %struct.iwl_scan_probe_segment, [2 x %struct.iwl_scan_probe_segment], %struct.iwl_scan_probe_segment, [512 x i8] }
%struct.iwl_scan_req_umac = type { i32, i32, i32, i16, i8, i8, %union.anon.196 }
%union.anon.196 = type { %struct.anon.200 }
%struct.anon.200 = type { [2 x i8], i8, i8, i8, i8, i16, [2 x i32], [2 x i32], i32, [2 x i8], [2 x i8], %struct.iwl_scan_umac_chan_param, [0 x i8] }
%struct.iwl_scan_umac_chan_param = type { i8, i8, i16 }
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
%struct.iwl_scan_req_umac_tail_v2 = type { [2 x %struct.iwl_scan_umac_schedule], i16, i16, %struct.iwl_scan_probe_req, [20 x %struct.iwl_ssid_ie] }
%struct.iwl_scan_umac_schedule = type { i16, i8, i8 }
%struct.iwl_scan_req_umac_tail_v1 = type { [2 x %struct.iwl_scan_umac_schedule], i16, i16, %struct.iwl_scan_probe_req_v1, [20 x %struct.iwl_ssid_ie] }
%struct.iwl_scan_channel_cfg_umac = type { i32, %union.anon.193 }
%union.anon.193 = type { %struct.anon.194 }
%struct.anon.194 = type { i8, i8, i16 }
%struct.anon.195 = type { i8, i8, i8, i8 }
%struct.cfg80211_sched_scan_request = type { i64, ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, [6 x i8], [6 x i8], i8, i8, %struct.cfg80211_bss_select_adjust, ptr, ptr, i32, i8, %struct.callback_head, i32, i8, %struct.list_head, [0 x ptr] }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.iwl_scan_offload_profile_cfg = type { [8 x %struct.iwl_scan_offload_profile], %struct.iwl_scan_offload_profile_cfg_data }
%struct.iwl_scan_offload_profile = type { i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.iwl_scan_offload_profile_cfg_data = type { i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.iwl_scan_offload_profile_cfg_v1 = type { [11 x %struct.iwl_scan_offload_profile], %struct.iwl_scan_offload_profile_cfg_data }
%struct.iwl_umac_scan_complete = type { i32, i8, i8, i8, i8, i32, i32 }
%struct.iwl_umac_scan_abort = type { i32, i32 }
%struct.iwl_notification_wait = type { %struct.list_head, ptr, ptr, [5 x i16], i8, i8, i8 }
%struct.iwl_is_dcm_with_go_iterator_data = type { ptr, i8 }
%struct.cfg80211_match_set = type { %struct.cfg80211_ssid, [6 x i8], i32, [6 x i32] }
%struct.iwl_scan_req_umac_v12 = type { i32, i32, %struct.iwl_scan_req_params_v12 }
%struct.iwl_scan_req_params_v12 = type { %struct.iwl_scan_general_params_v11, %struct.iwl_scan_channel_params_v4, %struct.iwl_scan_periodic_parms_v1, %struct.iwl_scan_probe_params_v3 }
%struct.iwl_scan_general_params_v11 = type { i16, i8, i8, [2 x i8], i8, i8, i8, i8, i16, [2 x i32], [2 x i32], i32, [2 x i8], [2 x i8] }
%struct.iwl_scan_channel_params_v4 = type { i8, i8, i8, i8, [67 x %struct.iwl_scan_channel_cfg_umac], [16 x i8] }
%struct.iwl_scan_periodic_parms_v1 = type { [2 x %struct.iwl_scan_umac_schedule], i16, i16 }
%struct.iwl_scan_probe_params_v3 = type { %struct.iwl_scan_probe_req, i8, i8, i8, i8, [20 x %struct.iwl_ssid_ie], [8 x i32], [16 x [6 x i8]] }
%struct.iwl_scan_req_umac_v15 = type { i32, i32, %struct.iwl_scan_req_params_v15 }
%struct.iwl_scan_req_params_v15 = type { %struct.iwl_scan_general_params_v11, %struct.iwl_scan_channel_params_v6, %struct.iwl_scan_periodic_parms_v1, %struct.iwl_scan_probe_params_v4 }
%struct.iwl_scan_channel_params_v6 = type { i8, i8, [2 x i8], [67 x %struct.iwl_scan_channel_cfg_umac] }
%struct.iwl_scan_probe_params_v4 = type { %struct.iwl_scan_probe_req, i8, i8, i16, [20 x %struct.iwl_ssid_ie], [8 x i32], [16 x [6 x i8]] }
%struct.cfg80211_scan_6ghz_params = type { i32, i32, [6 x i8], i8, i8, i8 }

@__func__.iwl_mvm_rx_lmac_scan_iter_complete_notif = private unnamed_addr constant [41 x i8] c"iwl_mvm_rx_lmac_scan_iter_complete_notif\00", align 1
@.str = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Scan offload iteration complete: status=0x%x scanned channels=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Pass all scheduled scan results found\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_rx_scan_match_found = private unnamed_addr constant [28 x i8] c"iwl_mvm_rx_scan_match_found\00", align 1
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Scheduled scan results\0A\00", [40 x i8] zeroinitializer }, align 32
@iwl_mvm_rx_lmac_scan_complete_notif.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/scan.c\00", [50 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@iwl_mvm_rx_lmac_scan_complete_notif.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_mvm_rx_lmac_scan_complete_notif = private unnamed_addr constant [36 x i8] c"iwl_mvm_rx_lmac_scan_complete_notif\00", align 1
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Scheduled scan %s, EBS status %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aborted\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"completed\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Last line %d, Last iteration %d, Time after last iteration %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Regular scan %s, EBS status %s\0A\00", [32 x i8] zeroinitializer }, align 32
@iwl_mvm_rx_lmac_scan_complete_notif.__already_done.10 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Last line %d, Last iteration %d, Time after last iteration %d (FW)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Regular scan %s, EBS status %s (FW)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"got scan complete notification but no scan is running\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_config_scan = private unnamed_addr constant [20 x i8] c"iwl_mvm_config_scan\00", align 1
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Sending UMAC scan config\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"regular scan timed out\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"scan while LAR regdomain is not set\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Scan failed! ret %d\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_reg_scan_start = private unnamed_addr constant [23 x i8] c"iwl_mvm_reg_scan_start\00", align 1
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Scan request was sent successfully\0A\00", [60 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sched-scan while LAR regdomain is not set\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_sched_scan_start = private unnamed_addr constant [25 x i8] c"iwl_mvm_sched_scan_start\00", align 1
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"delay value is > 16-bits, set to max possible\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Sched scan request was sent successfully\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Sched scan failed! ret %d\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_rx_umac_scan_complete_notif = private unnamed_addr constant [36 x i8] c"iwl_mvm_rx_umac_scan_complete_notif\00", align 1
@.str.23 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Scan completed, uid %u type %u, status %s, EBS status %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Last line %d, Last iteration %d, Time from last iteration %d\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_rx_umac_scan_iter_complete_notif = private unnamed_addr constant [41 x i8] c"iwl_mvm_rx_umac_scan_iter_complete_notif\00", align 1
@.str.25 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"UMAC Scan iteration complete: status=0x%x scanned_channels=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"UMAC Scan iteration complete: scan started at %llu (TSF)\0A\00", [38 x i8] zeroinitializer }, align 32
@iwl_mvm_report_scan_aborted.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"UMAC scan UID %d status was not cleaned\0A\00", [55 x i8] zeroinitializer }, align 32
@__const.iwl_mvm_scan_stop.info = private unnamed_addr constant { i64, [6 x i8], i8, [1 x i8] } { i64 0, [6 x i8] zeroinitializer, i8 1, [1 x i8] zeroinitializer }, align 8
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"successful\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"inactive\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_legacy_config_scan = private unnamed_addr constant [27 x i8] c"iwl_mvm_legacy_config_scan\00", align 1
@scan_timing = internal constant { [6 x %struct.iwl_mvm_scan_timing_params], [48 x i8] } { [6 x %struct.iwl_mvm_scan_timing_params] [%struct.iwl_mvm_scan_timing_params zeroinitializer, %struct.iwl_mvm_scan_timing_params zeroinitializer, %struct.iwl_mvm_scan_timing_params { i32 30, i32 120 }, %struct.iwl_mvm_scan_timing_params { i32 120, i32 120 }, %struct.iwl_mvm_scan_timing_params { i32 95, i32 44 }, %struct.iwl_mvm_scan_timing_params { i32 30, i32 37 }], [48 x i8] zeroinitializer }, align 32
@iwl_mvm_fill_scan_config_v2.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rate_to_scan_rate_flag.rate_to_scan_rate = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 256, i32 512, i32 1024, i32 2048, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 0, i32 0, i32 0, i32 0, i32 0], [60 x i8] zeroinitializer }, align 32
@iwl_mvm_fill_scan_config_v1.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_copy_and_insert_ds_elem.before_ds_params = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\01\0A2", [28 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_scan_6ghz_passive_scan = private unnamed_addr constant [31 x i8] c"iwl_mvm_scan_6ghz_passive_scan\00", align 1
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"6GHz passive scan: Not supported by FW\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"6GHz passive scan: not station interface\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"6GHz passive scan: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"associated\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"timeout did not expire\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"6GHz passive scan: not enough channels\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"6GHz passive scan: no wildcard SSID\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"6GHz passive scan: no 6GHz channels\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"6GHz passive scan: 6GHz channels enabled\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"6GHz passive scan: can be enabled\0A\00", [61 x i8] zeroinitializer }, align 32
@iwl_scan_umac_handlers = internal constant { [3 x %struct.iwl_scan_umac_handler], [40 x i8] } { [3 x %struct.iwl_scan_umac_handler] [%struct.iwl_scan_umac_handler { i8 15, ptr @iwl_mvm_scan_umac_v15 }, %struct.iwl_scan_umac_handler { i8 14, ptr @iwl_mvm_scan_umac_v14 }, %struct.iwl_scan_umac_handler { i8 12, ptr @iwl_mvm_scan_umac_v12 }], [40 x i8] zeroinitializer }, align 32
@iwl_mvm_phy_band_from_nl80211.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.42 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/mvm.h\00", [51 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unsupported band (%u)\0A\00", [41 x i8] zeroinitializer }, align 32
@scan_channel_segments = internal constant { [4 x %struct.iwl_mvm_scan_channel_segment], [40 x i8] } { [4 x %struct.iwl_mvm_scan_channel_segment] [%struct.iwl_mvm_scan_channel_segment { i8 0, i8 13, i8 1, i8 14, i8 0, i8 1 }, %struct.iwl_mvm_scan_channel_segment { i8 14, i8 41, i8 36, i8 -112, i8 2, i8 0 }, %struct.iwl_mvm_scan_channel_segment { i8 42, i8 50, i8 -107, i8 -75, i8 2, i8 0 }, %struct.iwl_mvm_scan_channel_segment { i8 51, i8 111, i8 1, i8 -15, i8 2, i8 2 }], [40 x i8] zeroinitializer }, align 32
@iwl_mvm_scan_umac_flags.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__func__.iwl_mvm_scan_pass_all = private unnamed_addr constant [22 x i8] c"iwl_mvm_scan_pass_all\00", align 1
@.str.44 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Sending scheduled scan with filtering, n_match_sets %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Sending Scheduled scan without filtering\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_config_sched_scan_profiles = private unnamed_addr constant [35 x i8] c"iwl_mvm_config_sched_scan_profiles\00", align 1
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Sending scheduled scan profile config\0A\00", [57 x i8] zeroinitializer }, align 32
@iwl_mvm_scan_stop_wait.scan_done_notif = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 15, i16 109], [28 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_scan_stop_wait = private unnamed_addr constant [23 x i8] c"iwl_mvm_scan_stop_wait\00", align 1
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Preparing to stop scan, type %x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"couldn't stop scan type %d\0A\00", [36 x i8] zeroinitializer }, align 32
@iwl_mvm_umac_scan_abort.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_mvm_umac_scan_abort = private unnamed_addr constant [24 x i8] c"iwl_mvm_umac_scan_abort\00", align 1
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Sending scan abort, uid %u\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_lmac_scan_abort = private unnamed_addr constant [24 x i8] c"iwl_mvm_lmac_scan_abort\00", align 1
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SCAN OFFLOAD ABORT ret %d.\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 12, i64 14, i64 15]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 8, i64 12, i64 14, i64 15]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 8, i64 12, i64 14, i64 15]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 8, i64 12, i64 14, i64 15]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.62 = internal global [11 x i64] [i64 9, i64 8, i64 36, i64 40, i64 44, i64 48, i64 149, i64 153, i64 157, i64 161, i64 165]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 2]
@__sancov_gen_cov_switch_values.64 = internal global [14 x i64] [i64 12, i64 8, i64 1, i64 6, i64 11, i64 36, i64 40, i64 44, i64 48, i64 149, i64 153, i64 157, i64 161, i64 165]
@__sancov_gen_cov_switch_values.65 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 336, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 341, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 350, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 378, i32 6 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 398, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 401, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 409, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 420, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 434, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 443, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1276, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 2530, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 2630, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 2687, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 2693, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 2725, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 2763, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 2819, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 2827, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 2864, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 2870, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 2890, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 2900, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 3062, i32 8 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 358, i32 10 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 360, i32 10 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 364, i32 10 }
@___asan_gen_.156 = private unnamed_addr constant [12 x i8] c"scan_timing\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 54, i32 42 }
@___asan_gen_.159 = private unnamed_addr constant [18 x i8] c"rate_to_scan_rate\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1014, i32 19 }
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"before_ds_params\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 700, i32 18 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1917, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1924, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1940, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1948, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1960, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1966, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1981, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1987, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant [23 x i8] c"iwl_scan_umac_handlers\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 2562, i32 43 }
@___asan_gen_.202 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 2099, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant [22 x i8] c"scan_channel_segments\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1454, i32 50 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 604, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 611, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 590, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant [16 x i8] c"scan_done_notif\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 2937, i32 19 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 2948, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 2956, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 2922, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.229 = private constant [49 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 637, i32 3 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @scan_timing, ptr @rate_to_scan_rate_flag.rate_to_scan_rate, ptr @iwl_mvm_copy_and_insert_ds_elem.before_ds_params, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @iwl_scan_umac_handlers, ptr @.str.42, ptr @.str.43, ptr @scan_channel_segments, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @iwl_mvm_scan_stop_wait.scan_done_notif, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scan_timing to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rate_to_scan_rate_flag.rate_to_scan_rate to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_copy_and_insert_ds_elem.before_ds_params to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_scan_umac_handlers to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scan_channel_segments to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_scan_stop_wait.scan_done_notif to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @iwl_mvm_max_scan_ie_len(ptr nocapture noundef readonly %mvm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fw.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %0 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw.i.i, align 8
  %_capa.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %1, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %_capa.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %_capa.i.i.i, align 4
  %4 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.i.not.i = icmp eq i32 %4, 0
  %spec.select.i = select i1 %tobool.i.i.not.i, i32 486, i32 483
  ret i32 %spec.select.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rx_lmac_scan_iter_complete_notif(ptr nocapture noundef %mvm, ptr nocapture noundef readonly %rxb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #10
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
  %status = getelementptr inbounds %struct.iwl_lmac_scan_complete_notif, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %status, align 1
  %conv = zext i8 %9 to i32
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 1
  %conv2 = zext i8 %11 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %7, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_lmac_scan_iter_complete_notif, ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %conv2) #10
  %sched_scan_pass_all = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 53
  %12 = ptrtoint ptr %sched_scan_pass_all to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sched_scan_pass_all, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp = icmp eq i32 %13, 2
  br i1 %cmp, label %do.end9, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %15, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_lmac_scan_iter_complete_notif, ptr noundef nonnull @.str.1) #10
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_sched_scan_results(ptr noundef %17) #10
  %18 = ptrtoint ptr %sched_scan_pass_all to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %sched_scan_pass_all, align 8
  br label %if.end

if.end:                                           ; preds = %do.end9, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sched_scan_results(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rx_scan_match_found(ptr nocapture noundef readonly %mvm, ptr nocapture noundef readnone %rxb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_scan_match_found, ptr noundef nonnull @.str.2) #10
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_sched_scan_results(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rx_lmac_scan_complete_notif(ptr noundef %mvm, ptr nocapture noundef readonly %rxb) local_unnamed_addr #2 align 64 {
entry:
  %info = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #10
  %2 = ptrtoint ptr %call.i to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  %status = getelementptr inbounds %struct.iwl_periodic_scan_complete, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp = icmp eq i8 %7, 2
  %frombool = zext i1 %cmp to i8
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %8 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw, align 8
  %_capa.i = getelementptr inbounds %struct.iwl_fw, ptr %9, i32 0, i32 5, i32 8
  %10 = ptrtoint ptr %_capa.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %_capa.i, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not = icmp eq i32 %12, 0
  br i1 %tobool.i.not, label %do.body42, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b370 = load i1, ptr @iwl_mvm_rx_lmac_scan_complete_notif.__already_done, align 1
  br i1 %.b370, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !147

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_rx_lmac_scan_complete_notif.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 379, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

do.body42:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %13 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool44.not = icmp eq i32 %13, 0
  br i1 %tobool44.not, label %do.body42.if.end73_crit_edge, label %land.rhs45

do.body42.if.end73_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

land.rhs45:                                       ; preds = %do.body42
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i372 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i372)
  %cmp47.not = icmp eq i32 %call.i372, 0
  br i1 %cmp47.not, label %do.end67, label %land.rhs45.if.end73_crit_edge, !prof !148

land.rhs45.if.end73_crit_edge:                    ; preds = %land.rhs45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

do.end67:                                         ; preds = %land.rhs45
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 383, i32 noundef 9, ptr noundef null) #10
  br label %if.end73

if.end73:                                         ; preds = %do.end67, %land.rhs45.if.end73_crit_edge, %do.body42.if.end73_crit_edge
  %scan_status = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 48
  %14 = ptrtoint ptr %scan_status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %scan_status, align 4
  %and = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool83.not = icmp eq i32 %and, 0
  %and164 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool83.not, label %if.else, label %if.then84

if.then84:                                        ; preds = %if.end73
  br i1 %tobool165.not, label %if.then84.if.end134_crit_edge, label %land.rhs96

if.then84.if.end134_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134

land.rhs96:                                       ; preds = %if.then84
  %.b366369 = load i1, ptr @iwl_mvm_rx_lmac_scan_complete_notif.__already_done.4, align 1
  br i1 %.b366369, label %land.rhs96.if.end134_crit_edge, label %if.then107, !prof !147

land.rhs96.if.end134_crit_edge:                   ; preds = %land.rhs96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134

if.then107:                                       ; preds = %land.rhs96
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_rx_lmac_scan_complete_notif.__already_done.4, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 396, i32 noundef 9, ptr noundef null) #10
  br label %if.end134

if.end134:                                        ; preds = %if.then107, %land.rhs96.if.end134_crit_edge, %if.then84.if.end134_crit_edge
  %16 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mvm, align 8
  %cond = select i1 %cmp, ptr @.str.6, ptr @.str.7
  %ebs_status = getelementptr inbounds %struct.iwl_periodic_scan_complete, ptr %data, i32 0, i32 3
  %18 = ptrtoint ptr %ebs_status to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ebs_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %switch.selectcmp.i = icmp eq i8 %19, 3
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.30, ptr @.str.31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %switch.selectcmp3.i = icmp eq i8 %19, 0
  %switch.select4.i = select i1 %switch.selectcmp3.i, ptr @.str.29, ptr %switch.select.i
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %17, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_lmac_scan_complete_notif, ptr noundef nonnull @.str.5, ptr noundef nonnull %cond, ptr noundef nonnull %switch.select4.i) #10
  %20 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mvm, align 8
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data, align 1
  %conv157 = zext i8 %23 to i32
  %last_schedule_iteration = getelementptr inbounds %struct.iwl_periodic_scan_complete, ptr %data, i32 0, i32 1
  %24 = ptrtoint ptr %last_schedule_iteration to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %last_schedule_iteration, align 1
  %conv158 = zext i8 %25 to i32
  %time_after_last_iter = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %26 = ptrtoint ptr %time_after_last_iter to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %time_after_last_iter, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %21, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_lmac_scan_complete_notif, ptr noundef nonnull @.str.8, i32 noundef %conv157, i32 noundef %conv158, i32 noundef %28) #10
  %29 = ptrtoint ptr %scan_status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %scan_status, align 4
  %and162 = and i32 %30, -513
  store i32 %and162, ptr %scan_status, align 4
  br label %if.end307

if.else:                                          ; preds = %if.end73
  br i1 %tobool165.not, label %if.else182, label %do.end170

do.end170:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mvm, align 8
  %cond174 = select i1 %cmp, ptr @.str.6, ptr @.str.7
  %ebs_status175 = getelementptr inbounds %struct.iwl_periodic_scan_complete, ptr %data, i32 0, i32 3
  %33 = ptrtoint ptr %ebs_status175 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ebs_status175, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %34)
  %switch.selectcmp.i373 = icmp eq i8 %34, 3
  %switch.select.i374 = select i1 %switch.selectcmp.i373, ptr @.str.30, ptr @.str.31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %switch.selectcmp3.i375 = icmp eq i8 %34, 0
  %switch.select4.i376 = select i1 %switch.selectcmp3.i375, ptr @.str.29, ptr %switch.select.i374
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %32, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_lmac_scan_complete_notif, ptr noundef nonnull @.str.9, ptr noundef nonnull %cond174, ptr noundef nonnull %switch.select4.i376) #10
  %35 = ptrtoint ptr %scan_status to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %scan_status, align 4
  %and181 = and i32 %36, -257
  store i32 %and181, ptr %scan_status, align 4
  br label %if.end307

if.else182:                                       ; preds = %if.else
  %and184 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %tobool185.not = icmp eq i32 %and184, 0
  %and273 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and273)
  %tobool274.not = icmp eq i32 %and273, 0
  br i1 %tobool185.not, label %if.else271, label %if.then186

if.then186:                                       ; preds = %if.else182
  br i1 %tobool274.not, label %if.then186.if.end236_crit_edge, label %land.rhs198

if.then186.if.end236_crit_edge:                   ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end236

land.rhs198:                                      ; preds = %if.then186
  %.b367368 = load i1, ptr @iwl_mvm_rx_lmac_scan_complete_notif.__already_done.10, align 1
  br i1 %.b367368, label %land.rhs198.if.end236_crit_edge, label %if.then209, !prof !147

land.rhs198.if.end236_crit_edge:                  ; preds = %land.rhs198
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end236

if.then209:                                       ; preds = %land.rhs198
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_rx_lmac_scan_complete_notif.__already_done.10, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 415, i32 noundef 9, ptr noundef null) #10
  br label %if.end236

if.end236:                                        ; preds = %if.then209, %land.rhs198.if.end236_crit_edge, %if.then186.if.end236_crit_edge
  %37 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mvm, align 8
  %cond251 = select i1 %cmp, ptr @.str.6, ptr @.str.7
  %ebs_status252 = getelementptr inbounds %struct.iwl_periodic_scan_complete, ptr %data, i32 0, i32 3
  %39 = ptrtoint ptr %ebs_status252 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ebs_status252, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %40)
  %switch.selectcmp.i377 = icmp eq i8 %40, 3
  %switch.select.i378 = select i1 %switch.selectcmp.i377, ptr @.str.30, ptr @.str.31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %switch.selectcmp3.i379 = icmp eq i8 %40, 0
  %switch.select4.i380 = select i1 %switch.selectcmp3.i379, ptr @.str.29, ptr %switch.select.i378
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %38, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_lmac_scan_complete_notif, ptr noundef nonnull @.str.5, ptr noundef nonnull %cond251, ptr noundef nonnull %switch.select4.i380) #10
  %41 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mvm, align 8
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %data, align 1
  %conv263 = zext i8 %44 to i32
  %last_schedule_iteration264 = getelementptr inbounds %struct.iwl_periodic_scan_complete, ptr %data, i32 0, i32 1
  %45 = ptrtoint ptr %last_schedule_iteration264 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %last_schedule_iteration264, align 1
  %conv265 = zext i8 %46 to i32
  %time_after_last_iter266 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %47 = ptrtoint ptr %time_after_last_iter266 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %time_after_last_iter266, align 1
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %42, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_lmac_scan_complete_notif, ptr noundef nonnull @.str.11, i32 noundef %conv263, i32 noundef %conv265, i32 noundef %49) #10
  %50 = ptrtoint ptr %scan_status to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %scan_status, align 4
  %and270 = and i32 %51, -3
  store i32 %and270, ptr %scan_status, align 4
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %52 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_sched_scan_stopped(ptr noundef %53) #10
  %sched_scan_pass_all = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 53
  %54 = ptrtoint ptr %sched_scan_pass_all to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %sched_scan_pass_all, align 8
  br label %if.end307

if.else271:                                       ; preds = %if.else182
  br i1 %tobool274.not, label %do.end300, label %if.then275

if.then275:                                       ; preds = %if.else271
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #10
  %55 = getelementptr inbounds i8, ptr %info, i32 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 -1, ptr %55, align 8
  %aborted276 = getelementptr inbounds %struct.cfg80211_scan_info, ptr %info, i32 0, i32 2
  %57 = call ptr @memset(ptr %info, i32 0, i32 14)
  %58 = ptrtoint ptr %aborted276 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %frombool, ptr %aborted276, align 2
  %59 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mvm, align 8
  %cond286 = select i1 %cmp, ptr @.str.6, ptr @.str.7
  %ebs_status287 = getelementptr inbounds %struct.iwl_periodic_scan_complete, ptr %data, i32 0, i32 3
  %61 = ptrtoint ptr %ebs_status287 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %ebs_status287, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %62)
  %switch.selectcmp.i381 = icmp eq i8 %62, 3
  %switch.select.i382 = select i1 %switch.selectcmp.i381, ptr @.str.30, ptr @.str.31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %switch.selectcmp3.i383 = icmp eq i8 %62, 0
  %switch.select4.i384 = select i1 %switch.selectcmp3.i383, ptr @.str.29, ptr %switch.select.i382
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %60, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_lmac_scan_complete_notif, ptr noundef nonnull @.str.12, ptr noundef nonnull %cond286, ptr noundef nonnull %switch.select4.i384) #10
  %63 = ptrtoint ptr %scan_status to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %scan_status, align 4
  %and293 = and i32 %64, -2
  store i32 %and293, ptr %scan_status, align 4
  %hw294 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %65 = ptrtoint ptr %hw294 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw294, align 4
  call void @ieee80211_scan_completed(ptr noundef %66, ptr noundef nonnull %info) #10
  %scan_timeout_dwork = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 54
  %call295 = call zeroext i1 @cancel_delayed_work(ptr noundef %scan_timeout_dwork) #10
  call void @iwl_mvm_resume_tcm(ptr noundef %mvm) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #10
  br label %if.end307

do.end300:                                        ; preds = %if.else271
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %68, i32 noundef 0, ptr noundef nonnull @.str.13) #10
  br label %if.end307

if.end307:                                        ; preds = %do.end300, %if.then275, %if.end236, %do.end170, %if.end134
  %ebs_status308 = getelementptr inbounds %struct.iwl_periodic_scan_complete, ptr %data, i32 0, i32 3
  %69 = ptrtoint ptr %ebs_status308 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %ebs_status308, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp310 = icmp eq i8 %70, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %70)
  %cmp314 = icmp eq i8 %70, 3
  %spec.select = or i1 %cmp310, %cmp314
  %last_ebs_successful = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 64
  %frombool316 = zext i1 %spec.select to i8
  %71 = ptrtoint ptr %last_ebs_successful to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %frombool316, ptr %last_ebs_successful, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end307, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sched_scan_stopped(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_scan_completed(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_resume_tcm(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_config_scan(ptr noundef %mvm) local_unnamed_addr #2 align 64 {
entry:
  %global_cnt.i294.i = alloca i32, align 4
  %global_cnt.i276.i = alloca i32, align 4
  %global_cnt.i.i = alloca i32, align 4
  %global_cnt.i.i147.i = alloca i32, align 4
  %global_cnt.i37.i.i = alloca i32, align 4
  %global_cnt.i19.i.i = alloca i32, align 4
  %global_cnt.i.i.i = alloca i32, align 4
  %cmd.i = alloca %struct.iwl_host_cmd, align 4
  %cfg = alloca %struct.iwl_scan_config, align 1
  %cmd = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg) #10
  %0 = getelementptr inbounds %struct.iwl_scan_config, ptr %cfg, i32 0, i32 2
  %1 = getelementptr inbounds %struct.iwl_scan_config, ptr %cfg, i32 0, i32 4
  %2 = getelementptr inbounds %struct.iwl_scan_config, ptr %cfg, i32 0, i32 5
  %3 = call ptr @memset(ptr %cfg, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd) #10
  %4 = getelementptr inbounds i8, ptr %cmd, i32 32
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !149
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cfg, ptr %cmd, align 4
  %arrayinit.cur.ptr = getelementptr inbounds ptr, ptr %cmd, i32 1
  %id = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 5
  %7 = call ptr @memset(ptr %arrayinit.cur.ptr, i32 0, i32 20)
  %8 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 268, ptr %id, align 4
  %len = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 12, ptr %len, align 4
  %arrayinit.start3 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %arrayinit.start3 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %arrayinit.start3, align 2
  %arrayinit.end4 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 7
  %11 = ptrtoint ptr %arrayinit.end4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %arrayinit.end4, align 4
  %arrayinit.start11 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %arrayinit.start11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayinit.start11, align 1
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %13 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %14, i32 0, i32 5, i32 7, i32 1
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.i.not = icmp eq i32 %17, 0
  br i1 %tobool.i.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i) #10
  %18 = call ptr @memset(ptr %cmd.i, i32 0, i32 36)
  %id.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 5
  %19 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 268, ptr %id.i, align 4
  %nvm_data.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %20 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nvm_data.i, align 8
  %n_channels.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %21, i32 0, i32 26, i32 0, i32 3
  %22 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_channels.i, align 4
  %n_channels4.i = getelementptr %struct.iwl_nvm_data, ptr %21, i32 0, i32 26, i32 1, i32 3
  %24 = ptrtoint ptr %n_channels4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n_channels4.i, align 4
  %add.i = add i32 %25, %23
  %n_scan_channels.i = getelementptr inbounds %struct.iwl_fw, ptr %14, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %n_scan_channels.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n_scan_channels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %27)
  %cmp.i = icmp ugt i32 %add.i, %27
  br i1 %cmp.i, label %do.end.i, label %if.then.if.end28.i_crit_edge, !prof !148

if.then.if.end28.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1169, i32 noundef 9, ptr noundef null) #10
  %28 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fw.i, align 8
  %n_scan_channels27.i = getelementptr inbounds %struct.iwl_fw, ptr %29, i32 0, i32 5, i32 1
  %30 = ptrtoint ptr %n_scan_channels27.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n_scan_channels27.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %do.end.i, %if.then.if.end28.i_crit_edge
  %num_channels.0.i = phi i32 [ %31, %do.end.i ], [ %add.i, %if.then.if.end28.i_crit_edge ]
  %32 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.iwl_fw, ptr %33, i32 0, i32 5, i32 8, i32 1
  %34 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %36 = and i32 %35, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.i.i.not.i = icmp eq i32 %36, 0
  br i1 %tobool.i.i.not.i, label %if.else.i, label %if.then30.i

if.then30.i:                                      ; preds = %if.end28.i
  %arrayidx.i.i.i51 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 7, i32 3, i32 0
  %37 = ptrtoint ptr %arrayidx.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i.i51, align 4
  %call1.i.i = call zeroext i1 @iwl_mvm_low_latency_band(ptr noundef %mvm, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %global_cnt.i.i) #10
  %39 = ptrtoint ptr %global_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %global_cnt.i.i, align 4
  %hw.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %40 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw.i.i, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %41, i32 noundef 0, ptr noundef nonnull @iwl_mvm_scan_condition_iterator, ptr noundef nonnull %global_cnt.i.i) #10
  %42 = ptrtoint ptr %global_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %global_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i.i, label %if.then30.i._iwl_mvm_get_scan_type.exit.i_crit_edge, label %if.end.i274.i

if.then30.i._iwl_mvm_get_scan_type.exit.i_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_iwl_mvm_get_scan_type.exit.i

if.end.i274.i:                                    ; preds = %if.then30.i
  %44 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fw.i, align 8
  %_api.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %45, i32 0, i32 5, i32 7
  %46 = ptrtoint ptr %_api.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %_api.i.i.i, align 4
  %48 = and i32 %47, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.i.not.i.i = icmp ne i32 %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp.i275.i = icmp eq i32 %38, 2
  %brmerge.i.i = or i1 %cmp.i275.i, %call1.i.i
  %or.cond.i = select i1 %tobool.i.not.i.i, i1 %brmerge.i.i, i1 false
  br i1 %or.cond.i, label %if.end.i274.i._iwl_mvm_get_scan_type.exit.i_crit_edge, label %if.end22.i.i

if.end.i274.i._iwl_mvm_get_scan_type.exit.i_crit_edge: ; preds = %if.end.i274.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_iwl_mvm_get_scan_type.exit.i

if.end22.i.i:                                     ; preds = %if.end.i274.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp23.not.i.i = icmp ne i32 %38, 0
  %brmerge40.i.i = or i1 %cmp23.not.i.i, %call1.i.i
  %spec.select.i.i = select i1 %brmerge40.i.i, i32 3, i32 2
  br label %_iwl_mvm_get_scan_type.exit.i

_iwl_mvm_get_scan_type.exit.i:                    ; preds = %if.end22.i.i, %if.end.i274.i._iwl_mvm_get_scan_type.exit.i_crit_edge, %if.then30.i._iwl_mvm_get_scan_type.exit.i_crit_edge
  %retval.1.i.i = phi i32 [ 1, %if.then30.i._iwl_mvm_get_scan_type.exit.i_crit_edge ], [ %spec.select.i.i, %if.end22.i.i ], [ 4, %if.end.i274.i._iwl_mvm_get_scan_type.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %global_cnt.i.i) #10
  %arrayidx.i.i129.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 7, i32 3, i32 1
  %49 = ptrtoint ptr %arrayidx.i.i129.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.i129.i, align 4
  %call1.i130.i = call zeroext i1 @iwl_mvm_low_latency_band(ptr noundef %mvm, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %global_cnt.i276.i) #10
  %51 = ptrtoint ptr %global_cnt.i276.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %global_cnt.i276.i, align 4
  %52 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw.i.i, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %53, i32 noundef 0, ptr noundef nonnull @iwl_mvm_scan_condition_iterator, ptr noundef nonnull %global_cnt.i276.i) #10
  %54 = ptrtoint ptr %global_cnt.i276.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %global_cnt.i276.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i278.i = icmp eq i32 %55, 0
  br i1 %tobool.not.i278.i, label %_iwl_mvm_get_scan_type.exit.i._iwl_mvm_get_scan_type.exit293.i_crit_edge, label %if.end.i282.i

_iwl_mvm_get_scan_type.exit.i._iwl_mvm_get_scan_type.exit293.i_crit_edge: ; preds = %_iwl_mvm_get_scan_type.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_iwl_mvm_get_scan_type.exit293.i

if.end.i282.i:                                    ; preds = %_iwl_mvm_get_scan_type.exit.i
  %56 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fw.i, align 8
  %_api.i.i280.i = getelementptr inbounds %struct.iwl_fw, ptr %57, i32 0, i32 5, i32 7
  %58 = ptrtoint ptr %_api.i.i280.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %_api.i.i280.i, align 4
  %60 = and i32 %59, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.i.not.i281.i = icmp ne i32 %60, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp.i283.i = icmp eq i32 %50, 2
  %brmerge.i284.i = or i1 %cmp.i283.i, %call1.i130.i
  %or.cond315.i = select i1 %tobool.i.not.i281.i, i1 %brmerge.i284.i, i1 false
  br i1 %or.cond315.i, label %if.end.i282.i._iwl_mvm_get_scan_type.exit293.i_crit_edge, label %if.end22.i291.i

if.end.i282.i._iwl_mvm_get_scan_type.exit293.i_crit_edge: ; preds = %if.end.i282.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_iwl_mvm_get_scan_type.exit293.i

if.end22.i291.i:                                  ; preds = %if.end.i282.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp23.not.i288.i = icmp ne i32 %50, 0
  %brmerge40.i289.i = or i1 %cmp23.not.i288.i, %call1.i130.i
  %spec.select.i290.i = select i1 %brmerge40.i289.i, i32 3, i32 2
  br label %_iwl_mvm_get_scan_type.exit293.i

_iwl_mvm_get_scan_type.exit293.i:                 ; preds = %if.end22.i291.i, %if.end.i282.i._iwl_mvm_get_scan_type.exit293.i_crit_edge, %_iwl_mvm_get_scan_type.exit.i._iwl_mvm_get_scan_type.exit293.i_crit_edge
  %retval.1.i292.i = phi i32 [ 1, %_iwl_mvm_get_scan_type.exit.i._iwl_mvm_get_scan_type.exit293.i_crit_edge ], [ %spec.select.i290.i, %if.end22.i291.i ], [ 4, %if.end.i282.i._iwl_mvm_get_scan_type.exit293.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %global_cnt.i276.i) #10
  %scan_type.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 51
  %61 = ptrtoint ptr %scan_type.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %scan_type.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.1.i.i, i32 %62)
  %cmp33.i = icmp eq i32 %retval.1.i.i, %62
  br i1 %cmp33.i, label %land.lhs.true.i, label %_iwl_mvm_get_scan_type.exit293.i.if.end42.i_crit_edge

_iwl_mvm_get_scan_type.exit293.i.if.end42.i_crit_edge: ; preds = %_iwl_mvm_get_scan_type.exit293.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

land.lhs.true.i:                                  ; preds = %_iwl_mvm_get_scan_type.exit293.i
  %hb_scan_type.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 52
  %63 = ptrtoint ptr %hb_scan_type.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %hb_scan_type.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.1.i292.i, i32 %64)
  %cmp34.i = icmp eq i32 %retval.1.i292.i, %64
  br i1 %cmp34.i, label %land.lhs.true.i.iwl_mvm_legacy_config_scan.exit_crit_edge, label %land.lhs.true.i.if.end42.i_crit_edge

land.lhs.true.i.if.end42.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

land.lhs.true.i.iwl_mvm_legacy_config_scan.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_legacy_config_scan.exit

if.else.i:                                        ; preds = %if.end28.i
  %global_load.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 7, i32 4
  %65 = ptrtoint ptr %global_load.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %global_load.i.i.i, align 4
  %call1.i132.i = call zeroext i1 @iwl_mvm_low_latency(ptr noundef %mvm) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %global_cnt.i294.i) #10
  %67 = ptrtoint ptr %global_cnt.i294.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %global_cnt.i294.i, align 4
  %hw.i295.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %68 = ptrtoint ptr %hw.i295.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hw.i295.i, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %69, i32 noundef 0, ptr noundef nonnull @iwl_mvm_scan_condition_iterator, ptr noundef nonnull %global_cnt.i294.i) #10
  %70 = ptrtoint ptr %global_cnt.i294.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %global_cnt.i294.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i296.i = icmp eq i32 %71, 0
  br i1 %tobool.not.i296.i, label %if.else.i._iwl_mvm_get_scan_type.exit311.i_crit_edge, label %if.end.i300.i

if.else.i._iwl_mvm_get_scan_type.exit311.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_iwl_mvm_get_scan_type.exit311.i

if.end.i300.i:                                    ; preds = %if.else.i
  %72 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fw.i, align 8
  %_api.i.i298.i = getelementptr inbounds %struct.iwl_fw, ptr %73, i32 0, i32 5, i32 7
  %74 = ptrtoint ptr %_api.i.i298.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %_api.i.i298.i, align 4
  %76 = and i32 %75, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.i.not.i299.i = icmp ne i32 %76, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %66)
  %cmp.i301.i = icmp eq i32 %66, 2
  %brmerge.i302.i = or i1 %cmp.i301.i, %call1.i132.i
  %or.cond316.i = select i1 %tobool.i.not.i299.i, i1 %brmerge.i302.i, i1 false
  br i1 %or.cond316.i, label %if.end.i300.i._iwl_mvm_get_scan_type.exit311.i_crit_edge, label %if.end22.i309.i

if.end.i300.i._iwl_mvm_get_scan_type.exit311.i_crit_edge: ; preds = %if.end.i300.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_iwl_mvm_get_scan_type.exit311.i

if.end22.i309.i:                                  ; preds = %if.end.i300.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp23.not.i306.i = icmp ne i32 %66, 0
  %brmerge40.i307.i = or i1 %cmp23.not.i306.i, %call1.i132.i
  %spec.select.i308.i = select i1 %brmerge40.i307.i, i32 3, i32 2
  br label %_iwl_mvm_get_scan_type.exit311.i

_iwl_mvm_get_scan_type.exit311.i:                 ; preds = %if.end22.i309.i, %if.end.i300.i._iwl_mvm_get_scan_type.exit311.i_crit_edge, %if.else.i._iwl_mvm_get_scan_type.exit311.i_crit_edge
  %retval.1.i310.i = phi i32 [ 1, %if.else.i._iwl_mvm_get_scan_type.exit311.i_crit_edge ], [ %spec.select.i308.i, %if.end22.i309.i ], [ 4, %if.end.i300.i._iwl_mvm_get_scan_type.exit311.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %global_cnt.i294.i) #10
  %scan_type38.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 51
  %77 = ptrtoint ptr %scan_type38.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %scan_type38.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.1.i310.i, i32 %78)
  %cmp39.i = icmp eq i32 %retval.1.i310.i, %78
  br i1 %cmp39.i, label %_iwl_mvm_get_scan_type.exit311.i.iwl_mvm_legacy_config_scan.exit_crit_edge, label %_iwl_mvm_get_scan_type.exit311.i.if.end42.i_crit_edge

_iwl_mvm_get_scan_type.exit311.i.if.end42.i_crit_edge: ; preds = %_iwl_mvm_get_scan_type.exit311.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

_iwl_mvm_get_scan_type.exit311.i.iwl_mvm_legacy_config_scan.exit_crit_edge: ; preds = %_iwl_mvm_get_scan_type.exit311.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_legacy_config_scan.exit

if.end42.i:                                       ; preds = %_iwl_mvm_get_scan_type.exit311.i.if.end42.i_crit_edge, %land.lhs.true.i.if.end42.i_crit_edge, %_iwl_mvm_get_scan_type.exit293.i.if.end42.i_crit_edge
  %type.0.i = phi i32 [ %retval.1.i.i, %land.lhs.true.i.if.end42.i_crit_edge ], [ %retval.1.i.i, %_iwl_mvm_get_scan_type.exit293.i.if.end42.i_crit_edge ], [ %retval.1.i310.i, %_iwl_mvm_get_scan_type.exit311.i.if.end42.i_crit_edge ]
  %hb_type.0.i = phi i32 [ %retval.1.i292.i, %land.lhs.true.i.if.end42.i_crit_edge ], [ %retval.1.i292.i, %_iwl_mvm_get_scan_type.exit293.i.if.end42.i_crit_edge ], [ 0, %_iwl_mvm_get_scan_type.exit311.i.if.end42.i_crit_edge ]
  %trans.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %79 = ptrtoint ptr %trans.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %trans.i.i, align 4
  %trans_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %trans_cfg.i.i, align 4
  %device_family.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %device_family.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %device_family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %84)
  %cmp.i.i = icmp ugt i32 %84, 17
  %..i = select i1 %cmp.i.i, i32 44, i32 36
  %85 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fw.i, align 8
  %n_scan_channels49.i = getelementptr inbounds %struct.iwl_fw, ptr %86, i32 0, i32 5, i32 1
  %87 = ptrtoint ptr %n_scan_channels49.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %n_scan_channels49.i, align 4
  %add50.i = add i32 %..i, %88
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add50.i, i32 noundef 3520) #13
  %tobool52.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool52.not.i, label %if.end42.i.iwl_mvm_legacy_config_scan.exit_crit_edge, label %if.end54.i

if.end42.i.iwl_mvm_legacy_config_scan.exit_crit_edge: ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_legacy_config_scan.exit

if.end54.i:                                       ; preds = %if.end42.i
  %shl.i = shl i32 %num_channels.0.i, 26
  %89 = and i32 %type.0.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %89)
  %90 = icmp eq i32 %89, 4
  %cond.i = select i1 %90, i32 65536, i32 131072
  %or.i = or i32 %cond.i, %shl.i
  %or56.i = or i32 %or.i, 61193
  %91 = ptrtoint ptr %trans.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %trans.i.i, align 4
  %trans_cfg.i135.i = getelementptr inbounds %struct.iwl_trans, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %trans_cfg.i135.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %trans_cfg.i135.i, align 4
  %device_family.i136.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %device_family.i136.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %device_family.i136.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %96)
  %cmp.i137.i = icmp ugt i32 %96, 17
  br i1 %cmp.i137.i, label %if.then58.i, label %if.else65.i

if.then58.i:                                      ; preds = %if.end54.i
  %97 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i139.i = getelementptr %struct.iwl_fw, ptr %98, i32 0, i32 5, i32 8, i32 1
  %99 = ptrtoint ptr %arrayidx.i.i.i139.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %arrayidx.i.i.i139.i, align 4
  %101 = and i32 %100, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.i.i140.not.i = icmp eq i32 %101, 0
  %102 = and i32 %hb_type.0.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %102)
  %103 = icmp eq i32 %102, 4
  %cond62.i = select i1 %103, i32 4194304, i32 8388608
  %or63.i = select i1 %tobool.i.i140.not.i, i32 0, i32 %cond62.i
  %flags.0.i = or i32 %or63.i, %or56.i
  %104 = call i32 @llvm.bswap.i32(i32 %flags.0.i) #10
  %105 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %call9.i.i.i, align 128
  %106 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %nvm_data.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %107, null
  br i1 %tobool.not.i.i.i, label %if.then58.i.cond.false.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then58.i.cond.false.i.i.i_crit_edge:           ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then58.i
  %valid_tx_ant.i.i.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %107, i32 0, i32 20
  %108 = ptrtoint ptr %valid_tx_ant.i.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %valid_tx_ant.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool2.not.i.i.i = icmp eq i8 %109, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.cond.false.i.i.i_crit_edge, label %cond.true.i.i.i

land.lhs.true.i.i.i.cond.false.i.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false.i.i.i

cond.true.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %110 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %fw.i, align 8
  %valid_tx_ant3.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %111, i32 0, i32 15
  %112 = ptrtoint ptr %valid_tx_ant3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %valid_tx_ant3.i.i.i, align 4
  %and.i.i.i = and i8 %113, %109
  br label %iwl_mvm_get_valid_tx_ant.exit.i.i

cond.false.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.cond.false.i.i.i_crit_edge, %if.then58.i.cond.false.i.i.i_crit_edge
  %114 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %fw.i, align 8
  %valid_tx_ant9.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %115, i32 0, i32 15
  %116 = ptrtoint ptr %valid_tx_ant9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %valid_tx_ant9.i.i.i, align 4
  br label %iwl_mvm_get_valid_tx_ant.exit.i.i

iwl_mvm_get_valid_tx_ant.exit.i.i:                ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi i8 [ %and.i.i.i, %cond.true.i.i.i ], [ %117, %cond.false.i.i.i ]
  %conv.i.i = zext i8 %cond.i.i.i to i32
  %118 = shl nuw i32 %conv.i.i, 24
  %tx_chains.i.i = getelementptr inbounds %struct.iwl_scan_config_v2, ptr %call9.i.i.i, i32 0, i32 1
  %119 = ptrtoint ptr %tx_chains.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %tx_chains.i.i, align 4
  %scan_rx_ant.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 60
  %120 = ptrtoint ptr %scan_rx_ant.i.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %scan_rx_ant.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %cmp.not.i.i.i = icmp eq i8 %121, 0
  br i1 %cmp.not.i.i.i, label %if.end.i.i142.i, label %iwl_mvm_get_valid_tx_ant.exit.i.i.iwl_mvm_scan_rx_ant.exit.i.i_crit_edge

iwl_mvm_get_valid_tx_ant.exit.i.i.iwl_mvm_scan_rx_ant.exit.i.i_crit_edge: ; preds = %iwl_mvm_get_valid_tx_ant.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_rx_ant.exit.i.i

if.end.i.i142.i:                                  ; preds = %iwl_mvm_get_valid_tx_ant.exit.i.i
  %122 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %nvm_data.i, align 8
  %tobool.not.i.i.i141.i = icmp eq ptr %123, null
  br i1 %tobool.not.i.i.i141.i, label %if.end.i.i142.i.cond.false.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end.i.i142.i.cond.false.i.i.i.i_crit_edge:     ; preds = %if.end.i.i142.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i142.i
  %valid_rx_ant.i.i.i.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %123, i32 0, i32 21
  %124 = ptrtoint ptr %valid_rx_ant.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %valid_rx_ant.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool2.not.i.i.i.i = icmp eq i8 %125, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.cond.false.i.i.i.i_crit_edge, label %cond.true.i.i.i.i

land.lhs.true.i.i.i.i.cond.false.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false.i.i.i.i

cond.true.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %126 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %fw.i, align 8
  %valid_rx_ant3.i.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %127, i32 0, i32 16
  %128 = ptrtoint ptr %valid_rx_ant3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %valid_rx_ant3.i.i.i.i, align 1
  %and.i.i.i.i = and i8 %129, %125
  br label %iwl_mvm_scan_rx_ant.exit.i.i

cond.false.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.cond.false.i.i.i.i_crit_edge, %if.end.i.i142.i.cond.false.i.i.i.i_crit_edge
  %130 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %fw.i, align 8
  %valid_rx_ant9.i.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %131, i32 0, i32 16
  %132 = ptrtoint ptr %valid_rx_ant9.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %valid_rx_ant9.i.i.i.i, align 1
  br label %iwl_mvm_scan_rx_ant.exit.i.i

iwl_mvm_scan_rx_ant.exit.i.i:                     ; preds = %cond.false.i.i.i.i, %cond.true.i.i.i.i, %iwl_mvm_get_valid_tx_ant.exit.i.i.iwl_mvm_scan_rx_ant.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i8 [ %121, %iwl_mvm_get_valid_tx_ant.exit.i.i.iwl_mvm_scan_rx_ant.exit.i.i_crit_edge ], [ %and.i.i.i.i, %cond.true.i.i.i.i ], [ %133, %cond.false.i.i.i.i ]
  %conv3.i.i = zext i8 %retval.0.i.i.i to i32
  %134 = shl nuw i32 %conv3.i.i, 24
  %rx_chains.i.i = getelementptr inbounds %struct.iwl_scan_config_v2, ptr %call9.i.i.i, i32 0, i32 2
  %135 = ptrtoint ptr %rx_chains.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %rx_chains.i.i, align 8
  %136 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %nvm_data.i, align 8
  %n_bitrates.i.i.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %137, i32 0, i32 26, i32 0, i32 4
  %138 = ptrtoint ptr %n_bitrates.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %n_bitrates.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp34.i.i.i = icmp sgt i32 %139, 0
  br i1 %cmp34.i.i.i, label %for.body.lr.ph.i.i.i, label %iwl_mvm_scan_rx_ant.exit.i.i.for.cond5.preheader.i.i.i_crit_edge

iwl_mvm_scan_rx_ant.exit.i.i.for.cond5.preheader.i.i.i_crit_edge: ; preds = %iwl_mvm_scan_rx_ant.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond5.preheader.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %iwl_mvm_scan_rx_ant.exit.i.i
  %bitrates.i.i.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %137, i32 0, i32 26, i32 0, i32 1
  %140 = ptrtoint ptr %bitrates.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %bitrates.i.i.i, align 4
  br label %for.body.i.i.i

for.cond5.preheader.i.i.i:                        ; preds = %for.body.i.i.i.for.cond5.preheader.i.i.i_crit_edge, %iwl_mvm_scan_rx_ant.exit.i.i.for.cond5.preheader.i.i.i_crit_edge
  %rates.0.lcssa.i.i.i = phi i32 [ 0, %iwl_mvm_scan_rx_ant.exit.i.i.for.cond5.preheader.i.i.i_crit_edge ], [ %or.i.i.i, %for.body.i.i.i.for.cond5.preheader.i.i.i_crit_edge ]
  %n_bitrates6.i.i.i = getelementptr %struct.iwl_nvm_data, ptr %137, i32 0, i32 26, i32 1, i32 4
  %142 = ptrtoint ptr %n_bitrates6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %n_bitrates6.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp737.i.i.i = icmp sgt i32 %143, 0
  br i1 %cmp737.i.i.i, label %for.body9.lr.ph.i.i.i, label %for.cond5.preheader.i.i.i.iwl_mvm_scan_config_rates.exit.i.i_crit_edge

for.cond5.preheader.i.i.i.iwl_mvm_scan_config_rates.exit.i.i_crit_edge: ; preds = %for.cond5.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_config_rates.exit.i.i

for.body9.lr.ph.i.i.i:                            ; preds = %for.cond5.preheader.i.i.i
  %bitrates10.i.i.i = getelementptr %struct.iwl_nvm_data, ptr %137, i32 0, i32 26, i32 1, i32 1
  %144 = ptrtoint ptr %bitrates10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %bitrates10.i.i.i, align 4
  br label %for.body9.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.036.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %rates.035.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %or.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %hw_value.i.i.i = getelementptr %struct.ieee80211_rate, ptr %141, i32 %i.036.i.i.i, i32 2
  %146 = ptrtoint ptr %hw_value.i.i.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %hw_value.i.i.i, align 2
  %conv.i.i.i = zext i16 %147 to i32
  %arrayidx.i.i.i143.i = getelementptr [17 x i32], ptr @rate_to_scan_rate_flag.rate_to_scan_rate, i32 0, i32 %conv.i.i.i
  %148 = ptrtoint ptr %arrayidx.i.i.i143.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx.i.i.i143.i, align 4
  %or.i.i.i = or i32 %149, %rates.035.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.036.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %139
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.for.cond5.preheader.i.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.body.i.i.i.for.cond5.preheader.i.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond5.preheader.i.i.i

for.body9.i.i.i:                                  ; preds = %for.body9.i.i.i.for.body9.i.i.i_crit_edge, %for.body9.lr.ph.i.i.i
  %i.139.i.i.i = phi i32 [ 0, %for.body9.lr.ph.i.i.i ], [ %inc17.i.i.i, %for.body9.i.i.i.for.body9.i.i.i_crit_edge ]
  %rates.138.i.i.i = phi i32 [ %rates.0.lcssa.i.i.i, %for.body9.lr.ph.i.i.i ], [ %or15.i.i.i, %for.body9.i.i.i.for.body9.i.i.i_crit_edge ]
  %hw_value12.i.i.i = getelementptr %struct.ieee80211_rate, ptr %145, i32 %i.139.i.i.i, i32 2
  %150 = ptrtoint ptr %hw_value12.i.i.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %hw_value12.i.i.i, align 2
  %conv13.i.i.i = zext i16 %151 to i32
  %arrayidx.i33.i.i.i = getelementptr [17 x i32], ptr @rate_to_scan_rate_flag.rate_to_scan_rate, i32 0, i32 %conv13.i.i.i
  %152 = ptrtoint ptr %arrayidx.i33.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx.i33.i.i.i, align 4
  %or15.i.i.i = or i32 %153, %rates.138.i.i.i
  %inc17.i.i.i = add nuw nsw i32 %i.139.i.i.i, 1
  %exitcond41.not.i.i.i = icmp eq i32 %inc17.i.i.i, %143
  br i1 %exitcond41.not.i.i.i, label %for.body9.i.i.i.iwl_mvm_scan_config_rates.exit.i.i_crit_edge, label %for.body9.i.i.i.for.body9.i.i.i_crit_edge

for.body9.i.i.i.for.body9.i.i.i_crit_edge:        ; preds = %for.body9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body9.i.i.i

for.body9.i.i.i.iwl_mvm_scan_config_rates.exit.i.i_crit_edge: ; preds = %for.body9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_config_rates.exit.i.i

iwl_mvm_scan_config_rates.exit.i.i:               ; preds = %for.body9.i.i.i.iwl_mvm_scan_config_rates.exit.i.i_crit_edge, %for.cond5.preheader.i.i.i.iwl_mvm_scan_config_rates.exit.i.i_crit_edge
  %rates.1.lcssa.i.i.i = phi i32 [ %rates.0.lcssa.i.i.i, %for.cond5.preheader.i.i.i.iwl_mvm_scan_config_rates.exit.i.i_crit_edge ], [ %or15.i.i.i, %for.body9.i.i.i.iwl_mvm_scan_config_rates.exit.i.i_crit_edge ]
  %shl.i.i.i = shl i32 %rates.1.lcssa.i.i.i, 16
  %or19.i.i.i = or i32 %shl.i.i.i, %rates.1.lcssa.i.i.i
  %154 = call i32 @llvm.bswap.i32(i32 %or19.i.i.i) #10
  %legacy_rates.i.i = getelementptr inbounds %struct.iwl_scan_config_v2, ptr %call9.i.i.i, i32 0, i32 3
  %155 = ptrtoint ptr %legacy_rates.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %legacy_rates.i.i, align 4
  %156 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i.i.i = getelementptr %struct.iwl_fw, ptr %157, i32 0, i32 5, i32 8, i32 1
  %158 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %arrayidx.i.i.i.i.i, align 4
  %160 = and i32 %159, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool.i.i.not.i.i = icmp eq i32 %160, 0
  br i1 %tobool.i.i.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %iwl_mvm_scan_config_rates.exit.i.i
  %arrayidx.i.i4.i.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 7, i32 3, i32 0
  %161 = ptrtoint ptr %arrayidx.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx.i.i4.i.i, align 4
  %call1.i.i.i = call zeroext i1 @iwl_mvm_low_latency_band(ptr noundef %mvm, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %global_cnt.i.i.i) #10
  %163 = ptrtoint ptr %global_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %global_cnt.i.i.i, align 4
  %hw.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %164 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %hw.i.i.i, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %165, i32 noundef 0, ptr noundef nonnull @iwl_mvm_scan_condition_iterator, ptr noundef nonnull %global_cnt.i.i.i) #10
  %166 = ptrtoint ptr %global_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %global_cnt.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool.not.i14.i.i = icmp eq i32 %167, 0
  br i1 %tobool.not.i14.i.i, label %if.then.i.i._iwl_mvm_get_scan_type.exit.i.i_crit_edge, label %if.end.i16.i.i

if.then.i.i._iwl_mvm_get_scan_type.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_iwl_mvm_get_scan_type.exit.i.i

if.end.i16.i.i:                                   ; preds = %if.then.i.i
  %168 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %fw.i, align 8
  %_api.i.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %169, i32 0, i32 5, i32 7
  %170 = ptrtoint ptr %_api.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile i32, ptr %_api.i.i.i.i, align 4
  %172 = and i32 %171, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool.i.not.i.i.i = icmp ne i32 %172, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %162)
  %cmp.i17.i.i = icmp eq i32 %162, 2
  %brmerge.i.i.i = or i1 %cmp.i17.i.i, %call1.i.i.i
  %or.cond.i.i = select i1 %tobool.i.not.i.i.i, i1 %brmerge.i.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i16.i.i._iwl_mvm_get_scan_type.exit.i.i_crit_edge, label %if.end22.i.i.i

if.end.i16.i.i._iwl_mvm_get_scan_type.exit.i.i_crit_edge: ; preds = %if.end.i16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_iwl_mvm_get_scan_type.exit.i.i

if.end22.i.i.i:                                   ; preds = %if.end.i16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %cmp23.not.i.i.i = icmp ne i32 %162, 0
  %brmerge40.i.i.i = or i1 %cmp23.not.i.i.i, %call1.i.i.i
  %spec.select.i.i.i = select i1 %brmerge40.i.i.i, i32 3, i32 2
  br label %_iwl_mvm_get_scan_type.exit.i.i

_iwl_mvm_get_scan_type.exit.i.i:                  ; preds = %if.end22.i.i.i, %if.end.i16.i.i._iwl_mvm_get_scan_type.exit.i.i_crit_edge, %if.then.i.i._iwl_mvm_get_scan_type.exit.i.i_crit_edge
  %retval.1.i.i144.i = phi i32 [ 1, %if.then.i.i._iwl_mvm_get_scan_type.exit.i.i_crit_edge ], [ %spec.select.i.i.i, %if.end22.i.i.i ], [ 4, %if.end.i16.i.i._iwl_mvm_get_scan_type.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %global_cnt.i.i.i) #10
  %arrayidx.i.i5.i.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 7, i32 3, i32 1
  %173 = ptrtoint ptr %arrayidx.i.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx.i.i5.i.i, align 4
  %call1.i6.i.i = call zeroext i1 @iwl_mvm_low_latency_band(ptr noundef %mvm, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %global_cnt.i19.i.i) #10
  %175 = ptrtoint ptr %global_cnt.i19.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %global_cnt.i19.i.i, align 4
  %176 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %hw.i.i.i, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %177, i32 noundef 0, ptr noundef nonnull @iwl_mvm_scan_condition_iterator, ptr noundef nonnull %global_cnt.i19.i.i) #10
  %178 = ptrtoint ptr %global_cnt.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %global_cnt.i19.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool.not.i21.i.i = icmp eq i32 %179, 0
  br i1 %tobool.not.i21.i.i, label %_iwl_mvm_get_scan_type.exit.i.i._iwl_mvm_get_scan_type.exit36.i.i_crit_edge, label %if.end.i25.i.i

_iwl_mvm_get_scan_type.exit.i.i._iwl_mvm_get_scan_type.exit36.i.i_crit_edge: ; preds = %_iwl_mvm_get_scan_type.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_iwl_mvm_get_scan_type.exit36.i.i

if.end.i25.i.i:                                   ; preds = %_iwl_mvm_get_scan_type.exit.i.i
  %180 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %fw.i, align 8
  %_api.i.i23.i.i = getelementptr inbounds %struct.iwl_fw, ptr %181, i32 0, i32 5, i32 7
  %182 = ptrtoint ptr %_api.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load volatile i32, ptr %_api.i.i23.i.i, align 4
  %184 = and i32 %183, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool.i.not.i24.i.i = icmp ne i32 %184, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %174)
  %cmp.i26.i.i = icmp eq i32 %174, 2
  %brmerge.i27.i.i = or i1 %cmp.i26.i.i, %call1.i6.i.i
  %or.cond55.i.i = select i1 %tobool.i.not.i24.i.i, i1 %brmerge.i27.i.i, i1 false
  br i1 %or.cond55.i.i, label %if.end.i25.i.i._iwl_mvm_get_scan_type.exit36.i.i_crit_edge, label %if.end22.i34.i.i

if.end.i25.i.i._iwl_mvm_get_scan_type.exit36.i.i_crit_edge: ; preds = %if.end.i25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_iwl_mvm_get_scan_type.exit36.i.i

if.end22.i34.i.i:                                 ; preds = %if.end.i25.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %cmp23.not.i31.i.i = icmp ne i32 %174, 0
  %brmerge40.i32.i.i = or i1 %cmp23.not.i31.i.i, %call1.i6.i.i
  %spec.select.i33.i.i = select i1 %brmerge40.i32.i.i, i32 3, i32 2
  br label %_iwl_mvm_get_scan_type.exit36.i.i

_iwl_mvm_get_scan_type.exit36.i.i:                ; preds = %if.end22.i34.i.i, %if.end.i25.i.i._iwl_mvm_get_scan_type.exit36.i.i_crit_edge, %_iwl_mvm_get_scan_type.exit.i.i._iwl_mvm_get_scan_type.exit36.i.i_crit_edge
  %retval.1.i35.i.i = phi i32 [ 1, %_iwl_mvm_get_scan_type.exit.i.i._iwl_mvm_get_scan_type.exit36.i.i_crit_edge ], [ %spec.select.i33.i.i, %if.end22.i34.i.i ], [ 4, %if.end.i25.i.i._iwl_mvm_get_scan_type.exit36.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %global_cnt.i19.i.i) #10
  %arrayidx.i.i = getelementptr [6 x %struct.iwl_mvm_scan_timing_params], ptr @scan_timing, i32 0, i32 %retval.1.i.i144.i
  %max_out_time.i.i = getelementptr [6 x %struct.iwl_mvm_scan_timing_params], ptr @scan_timing, i32 0, i32 %retval.1.i.i144.i, i32 1
  %185 = ptrtoint ptr %max_out_time.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %max_out_time.i.i, align 4
  %187 = call i32 @llvm.bswap.i32(i32 %186) #10
  %out_of_channel_time.i.i = getelementptr inbounds %struct.iwl_scan_config_v2, ptr %call9.i.i.i, i32 0, i32 4
  %188 = ptrtoint ptr %out_of_channel_time.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %out_of_channel_time.i.i, align 16
  %189 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx.i.i, align 4
  %191 = call i32 @llvm.bswap.i32(i32 %190) #10
  %suspend_time10.i.i = getelementptr inbounds %struct.iwl_scan_config_v2, ptr %call9.i.i.i, i32 0, i32 5
  %192 = ptrtoint ptr %suspend_time10.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %suspend_time10.i.i, align 8
  %arrayidx12.i.i = getelementptr [6 x %struct.iwl_mvm_scan_timing_params], ptr @scan_timing, i32 0, i32 %retval.1.i35.i.i
  %max_out_time13.i.i = getelementptr [6 x %struct.iwl_mvm_scan_timing_params], ptr @scan_timing, i32 0, i32 %retval.1.i35.i.i, i32 1
  %193 = ptrtoint ptr %max_out_time13.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %max_out_time13.i.i, align 4
  %195 = call i32 @llvm.bswap.i32(i32 %194) #10
  %arrayidx15.i.i = getelementptr %struct.iwl_scan_config_v2, ptr %call9.i.i.i, i32 0, i32 4, i32 1
  %196 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %arrayidx15.i.i, align 4
  %197 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx12.i.i, align 4
  %199 = call i32 @llvm.bswap.i32(i32 %198) #10
  %arrayidx19.i.i = getelementptr %struct.iwl_scan_config_v2, ptr %call9.i.i.i, i32 0, i32 5, i32 1
  %200 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %arrayidx19.i.i, align 4
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %iwl_mvm_scan_config_rates.exit.i.i
  %global_load.i.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 7, i32 4
  %201 = ptrtoint ptr %global_load.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %global_load.i.i.i.i, align 4
  %call1.i8.i.i = call zeroext i1 @iwl_mvm_low_latency(ptr noundef %mvm) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %global_cnt.i37.i.i) #10
  %203 = ptrtoint ptr %global_cnt.i37.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 0, ptr %global_cnt.i37.i.i, align 4
  %hw.i38.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %204 = ptrtoint ptr %hw.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %hw.i38.i.i, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %205, i32 noundef 0, ptr noundef nonnull @iwl_mvm_scan_condition_iterator, ptr noundef nonnull %global_cnt.i37.i.i) #10
  %206 = ptrtoint ptr %global_cnt.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %global_cnt.i37.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool.not.i39.i.i = icmp eq i32 %207, 0
  br i1 %tobool.not.i39.i.i, label %if.else.i.i._iwl_mvm_get_scan_type.exit54.i.i_crit_edge, label %if.end.i43.i.i

if.else.i.i._iwl_mvm_get_scan_type.exit54.i.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_iwl_mvm_get_scan_type.exit54.i.i

if.end.i43.i.i:                                   ; preds = %if.else.i.i
  %208 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %fw.i, align 8
  %_api.i.i41.i.i = getelementptr inbounds %struct.iwl_fw, ptr %209, i32 0, i32 5, i32 7
  %210 = ptrtoint ptr %_api.i.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load volatile i32, ptr %_api.i.i41.i.i, align 4
  %212 = and i32 %211, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %tobool.i.not.i42.i.i = icmp ne i32 %212, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %202)
  %cmp.i44.i.i = icmp eq i32 %202, 2
  %brmerge.i45.i.i = or i1 %cmp.i44.i.i, %call1.i8.i.i
  %or.cond56.i.i = select i1 %tobool.i.not.i42.i.i, i1 %brmerge.i45.i.i, i1 false
  br i1 %or.cond56.i.i, label %if.end.i43.i.i._iwl_mvm_get_scan_type.exit54.i.i_crit_edge, label %if.end22.i52.i.i

if.end.i43.i.i._iwl_mvm_get_scan_type.exit54.i.i_crit_edge: ; preds = %if.end.i43.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_iwl_mvm_get_scan_type.exit54.i.i

if.end22.i52.i.i:                                 ; preds = %if.end.i43.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %cmp23.not.i49.i.i = icmp ne i32 %202, 0
  %brmerge40.i50.i.i = or i1 %cmp23.not.i49.i.i, %call1.i8.i.i
  %spec.select.i51.i.i = select i1 %brmerge40.i50.i.i, i32 3, i32 2
  br label %_iwl_mvm_get_scan_type.exit54.i.i

_iwl_mvm_get_scan_type.exit54.i.i:                ; preds = %if.end22.i52.i.i, %if.end.i43.i.i._iwl_mvm_get_scan_type.exit54.i.i_crit_edge, %if.else.i.i._iwl_mvm_get_scan_type.exit54.i.i_crit_edge
  %retval.1.i53.i.i = phi i32 [ 1, %if.else.i.i._iwl_mvm_get_scan_type.exit54.i.i_crit_edge ], [ %spec.select.i51.i.i, %if.end22.i52.i.i ], [ 4, %if.end.i43.i.i._iwl_mvm_get_scan_type.exit54.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %global_cnt.i37.i.i) #10
  %arrayidx21.i.i = getelementptr [6 x %struct.iwl_mvm_scan_timing_params], ptr @scan_timing, i32 0, i32 %retval.1.i53.i.i
  %max_out_time22.i.i = getelementptr [6 x %struct.iwl_mvm_scan_timing_params], ptr @scan_timing, i32 0, i32 %retval.1.i53.i.i, i32 1
  %213 = ptrtoint ptr %max_out_time22.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %max_out_time22.i.i, align 4
  %215 = call i32 @llvm.bswap.i32(i32 %214) #10
  %out_of_channel_time23.i.i = getelementptr inbounds %struct.iwl_scan_config_v2, ptr %call9.i.i.i, i32 0, i32 4
  %216 = ptrtoint ptr %out_of_channel_time23.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %215, ptr %out_of_channel_time23.i.i, align 16
  %217 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %arrayidx21.i.i, align 4
  %219 = call i32 @llvm.bswap.i32(i32 %218) #10
  %suspend_time27.i.i = getelementptr inbounds %struct.iwl_scan_config_v2, ptr %call9.i.i.i, i32 0, i32 5
  %220 = ptrtoint ptr %suspend_time27.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %219, ptr %suspend_time27.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %_iwl_mvm_get_scan_type.exit54.i.i, %_iwl_mvm_get_scan_type.exit36.i.i
  %dwell.i.i = getelementptr inbounds %struct.iwl_scan_config_v2, ptr %call9.i.i.i, i32 0, i32 6
  %221 = ptrtoint ptr %dwell.i.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 10, ptr %dwell.i.i, align 32
  %passive.i.i.i = getelementptr inbounds %struct.iwl_scan_config_v2, ptr %call9.i.i.i, i32 0, i32 6, i32 1
  %222 = ptrtoint ptr %passive.i.i.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 110, ptr %passive.i.i.i, align 1
  %fragmented.i.i.i = getelementptr inbounds %struct.iwl_scan_config_v2, ptr %call9.i.i.i, i32 0, i32 6, i32 2
  %223 = ptrtoint ptr %fragmented.i.i.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 44, ptr %fragmented.i.i.i, align 2
  %extended.i.i.i = getelementptr inbounds %struct.iwl_scan_config_v2, ptr %call9.i.i.i, i32 0, i32 6, i32 3
  %224 = ptrtoint ptr %extended.i.i.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 90, ptr %extended.i.i.i, align 1
  %mac_addr.i.i = getelementptr inbounds %struct.iwl_scan_config_v2, ptr %call9.i.i.i, i32 0, i32 7
  %addresses.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 41
  %225 = call ptr @memcpy(ptr %mac_addr.i.i, ptr %addresses.i.i, i32 6)
  %226 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %fw.i, align 8
  %call30.i.i = call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %227, i8 noundef zeroext 1, i8 noundef zeroext 24, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %call30.i.i)
  %cmp.i145.i = icmp ugt i8 %call30.i.i, 11
  br i1 %cmp.i145.i, label %land.rhs.i.i, label %if.end.i.i.if.end62.i.i_crit_edge

if.end.i.i.if.end62.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62.i.i

land.rhs.i.i:                                     ; preds = %if.end.i.i
  %.b1.i.i = load i1, ptr @iwl_mvm_fill_scan_config_v2.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.if.end62.i.i_crit_edge, label %if.then40.i.i, !prof !147

land.rhs.i.i.if.end62.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62.i.i

if.then40.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_fill_scan_config_v2.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1146, i32 noundef 9, ptr noundef null) #10
  br label %if.end62.i.i

if.end62.i.i:                                     ; preds = %if.then40.i.i, %land.rhs.i.i.if.end62.i.i_crit_edge, %if.end.i.i.if.end62.i.i_crit_edge
  %aux_sta.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 62
  %228 = ptrtoint ptr %aux_sta.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %aux_sta.i.i, align 8
  %conv70.i.i = trunc i32 %229 to i8
  %bcast_sta_id.i.i = getelementptr inbounds %struct.iwl_scan_config_v2, ptr %call9.i.i.i, i32 0, i32 8
  %230 = ptrtoint ptr %bcast_sta_id.i.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %conv70.i.i, ptr %bcast_sta_id.i.i, align 2
  %channel_flags71.i.i = getelementptr inbounds %struct.iwl_scan_config_v2, ptr %call9.i.i.i, i32 0, i32 9
  %231 = ptrtoint ptr %channel_flags71.i.i to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 15, ptr %channel_flags71.i.i, align 1
  %channel_array.i.i = getelementptr inbounds %struct.iwl_scan_config_v2, ptr %call9.i.i.i, i32 0, i32 10
  %232 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %nvm_data.i, align 8
  %bands.i.i.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %233, i32 0, i32 26
  %n_channels.i.i.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %233, i32 0, i32 26, i32 0, i32 3
  %234 = ptrtoint ptr %n_channels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %n_channels.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %cmp44.i.i.i = icmp sgt i32 %235, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_channels.0.i)
  %cmp145.i.i.i = icmp ne i32 %num_channels.0.i, 0
  %or.cond46.i.i.i = and i1 %cmp145.i.i.i, %cmp44.i.i.i
  br i1 %or.cond46.i.i.i, label %if.end62.i.i.for.body.i13.i.i_crit_edge, label %if.end62.i.i.for.end.i.i.i_crit_edge

if.end62.i.i.for.end.i.i.i_crit_edge:             ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i.i

if.end62.i.i.for.body.i13.i.i_crit_edge:          ; preds = %if.end62.i.i
  br label %for.body.i13.i.i

for.body.i13.i.i:                                 ; preds = %for.body.i13.i.i.for.body.i13.i.i_crit_edge, %if.end62.i.i.for.body.i13.i.i_crit_edge
  %j.048.i.i.i = phi i32 [ %inc5.i.i.i, %for.body.i13.i.i.for.body.i13.i.i_crit_edge ], [ 0, %if.end62.i.i.for.body.i13.i.i_crit_edge ]
  %236 = ptrtoint ptr %bands.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %bands.i.i.i, align 4
  %hw_value.i11.i.i = getelementptr %struct.ieee80211_channel, ptr %237, i32 %j.048.i.i.i, i32 3
  %238 = ptrtoint ptr %hw_value.i11.i.i to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %hw_value.i11.i.i, align 2
  %conv.i12.i.i = trunc i16 %239 to i8
  %arrayidx4.i.i.i = getelementptr i8, ptr %channel_array.i.i, i32 %j.048.i.i.i
  %240 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %conv.i12.i.i, ptr %arrayidx4.i.i.i, align 1
  %inc5.i.i.i = add nuw nsw i32 %j.048.i.i.i, 1
  %241 = ptrtoint ptr %n_channels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %n_channels.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc5.i.i.i, i32 %242)
  %cmp.i.i146.i = icmp slt i32 %inc5.i.i.i, %242
  call void @__sanitizer_cov_trace_cmp4(i32 %inc5.i.i.i, i32 %num_channels.0.i)
  %cmp1.i.i.i = icmp ult i32 %inc5.i.i.i, %num_channels.0.i
  %or.cond.i.i.i = and i1 %cmp1.i.i.i, %cmp.i.i146.i
  br i1 %or.cond.i.i.i, label %for.body.i13.i.i.for.body.i13.i.i_crit_edge, label %for.body.i13.i.i.for.end.i.i.i_crit_edge

for.body.i13.i.i.for.end.i.i.i_crit_edge:         ; preds = %for.body.i13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i.i

for.body.i13.i.i.for.body.i13.i.i_crit_edge:      ; preds = %for.body.i13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i13.i.i

for.end.i.i.i:                                    ; preds = %for.body.i13.i.i.for.end.i.i.i_crit_edge, %if.end62.i.i.for.end.i.i.i_crit_edge
  %j.0.lcssa.i.i.i = phi i32 [ 0, %if.end62.i.i.for.end.i.i.i_crit_edge ], [ %inc5.i.i.i, %for.body.i13.i.i.for.end.i.i.i_crit_edge ]
  %243 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %nvm_data.i, align 8
  %arrayidx8.i.i.i = getelementptr %struct.iwl_nvm_data, ptr %244, i32 0, i32 26, i32 1
  %n_channels10.i.i.i = getelementptr %struct.iwl_nvm_data, ptr %244, i32 0, i32 26, i32 1, i32 3
  %245 = ptrtoint ptr %n_channels10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %n_channels10.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %246)
  %cmp1149.i.i.i = icmp sgt i32 %246, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa.i.i.i, i32 %num_channels.0.i)
  %cmp1450.i.i.i = icmp ult i32 %j.0.lcssa.i.i.i, %num_channels.0.i
  %or.cond4351.i.i.i = select i1 %cmp1149.i.i.i, i1 %cmp1450.i.i.i, i1 false
  br i1 %or.cond4351.i.i.i, label %for.end.i.i.i.for.body17.i.i.i_crit_edge, label %for.end.i.i.i.if.end66.i_crit_edge

for.end.i.i.i.if.end66.i_crit_edge:               ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.i

for.end.i.i.i.for.body17.i.i.i_crit_edge:         ; preds = %for.end.i.i.i
  br label %for.body17.i.i.i

for.body17.i.i.i:                                 ; preds = %for.body17.i.i.i.for.body17.i.i.i_crit_edge, %for.end.i.i.i.for.body17.i.i.i_crit_edge
  %j.153.i.i.i = phi i32 [ %inc25.i.i.i, %for.body17.i.i.i.for.body17.i.i.i_crit_edge ], [ %j.0.lcssa.i.i.i, %for.end.i.i.i.for.body17.i.i.i_crit_edge ]
  %i.152.i.i.i = phi i32 [ %inc24.i.i.i, %for.body17.i.i.i.for.body17.i.i.i_crit_edge ], [ 0, %for.end.i.i.i.for.body17.i.i.i_crit_edge ]
  %247 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %arrayidx8.i.i.i, align 4
  %hw_value20.i.i.i = getelementptr %struct.ieee80211_channel, ptr %248, i32 %i.152.i.i.i, i32 3
  %249 = ptrtoint ptr %hw_value20.i.i.i to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %hw_value20.i.i.i, align 2
  %conv21.i.i.i = trunc i16 %250 to i8
  %arrayidx22.i.i.i = getelementptr i8, ptr %channel_array.i.i, i32 %j.153.i.i.i
  %251 = ptrtoint ptr %arrayidx22.i.i.i to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 %conv21.i.i.i, ptr %arrayidx22.i.i.i, align 1
  %inc24.i.i.i = add nuw nsw i32 %i.152.i.i.i, 1
  %inc25.i.i.i = add nuw i32 %j.153.i.i.i, 1
  %252 = ptrtoint ptr %n_channels10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %n_channels10.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc24.i.i.i, i32 %253)
  %cmp11.i.i.i = icmp slt i32 %inc24.i.i.i, %253
  call void @__sanitizer_cov_trace_cmp4(i32 %inc25.i.i.i, i32 %num_channels.0.i)
  %cmp14.i.i.i = icmp ult i32 %inc25.i.i.i, %num_channels.0.i
  %or.cond43.i.i.i = select i1 %cmp11.i.i.i, i1 %cmp14.i.i.i, i1 false
  br i1 %or.cond43.i.i.i, label %for.body17.i.i.i.for.body17.i.i.i_crit_edge, label %for.body17.i.i.i.if.end66.i_crit_edge

for.body17.i.i.i.if.end66.i_crit_edge:            ; preds = %for.body17.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.i

for.body17.i.i.i.for.body17.i.i.i_crit_edge:      ; preds = %for.body17.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body17.i.i.i

if.else65.i:                                      ; preds = %if.end54.i
  %global_load.i.i.i148.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 7, i32 4
  %254 = ptrtoint ptr %global_load.i.i.i148.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %global_load.i.i.i148.i, align 4
  %call1.i.i149.i = call zeroext i1 @iwl_mvm_low_latency(ptr noundef %mvm) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %global_cnt.i.i147.i) #10
  %256 = ptrtoint ptr %global_cnt.i.i147.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 0, ptr %global_cnt.i.i147.i, align 4
  %hw.i.i150.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %257 = ptrtoint ptr %hw.i.i150.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %hw.i.i150.i, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %258, i32 noundef 0, ptr noundef nonnull @iwl_mvm_scan_condition_iterator, ptr noundef nonnull %global_cnt.i.i147.i) #10
  %259 = ptrtoint ptr %global_cnt.i.i147.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %global_cnt.i.i147.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %260)
  %tobool.not.i7.i.i = icmp eq i32 %260, 0
  br i1 %tobool.not.i7.i.i, label %if.else65.i._iwl_mvm_get_scan_type.exit.i162.i_crit_edge, label %if.end.i9.i.i

if.else65.i._iwl_mvm_get_scan_type.exit.i162.i_crit_edge: ; preds = %if.else65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_iwl_mvm_get_scan_type.exit.i162.i

if.end.i9.i.i:                                    ; preds = %if.else65.i
  %261 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %fw.i, align 8
  %_api.i.i.i151.i = getelementptr inbounds %struct.iwl_fw, ptr %262, i32 0, i32 5, i32 7
  %263 = ptrtoint ptr %_api.i.i.i151.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load volatile i32, ptr %_api.i.i.i151.i, align 4
  %265 = and i32 %264, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %tobool.i.not.i.i152.i = icmp ne i32 %265, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %255)
  %cmp.i10.i.i = icmp eq i32 %255, 2
  %brmerge.i.i153.i = or i1 %cmp.i10.i.i, %call1.i.i149.i
  %or.cond.i154.i = select i1 %tobool.i.not.i.i152.i, i1 %brmerge.i.i153.i, i1 false
  br i1 %or.cond.i154.i, label %if.end.i9.i.i._iwl_mvm_get_scan_type.exit.i162.i_crit_edge, label %if.end22.i.i158.i

if.end.i9.i.i._iwl_mvm_get_scan_type.exit.i162.i_crit_edge: ; preds = %if.end.i9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_iwl_mvm_get_scan_type.exit.i162.i

if.end22.i.i158.i:                                ; preds = %if.end.i9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %255)
  %cmp23.not.i.i155.i = icmp ne i32 %255, 0
  %brmerge40.i.i156.i = or i1 %cmp23.not.i.i155.i, %call1.i.i149.i
  %spec.select.i.i157.i = select i1 %brmerge40.i.i156.i, i32 3, i32 2
  br label %_iwl_mvm_get_scan_type.exit.i162.i

_iwl_mvm_get_scan_type.exit.i162.i:               ; preds = %if.end22.i.i158.i, %if.end.i9.i.i._iwl_mvm_get_scan_type.exit.i162.i_crit_edge, %if.else65.i._iwl_mvm_get_scan_type.exit.i162.i_crit_edge
  %retval.1.i.i159.i = phi i32 [ 1, %if.else65.i._iwl_mvm_get_scan_type.exit.i162.i_crit_edge ], [ %spec.select.i.i157.i, %if.end22.i.i158.i ], [ 4, %if.end.i9.i.i._iwl_mvm_get_scan_type.exit.i162.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %global_cnt.i.i147.i) #10
  %266 = call i32 @llvm.bswap.i32(i32 %or56.i) #10
  %267 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %266, ptr %call9.i.i.i, align 128
  %268 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %nvm_data.i, align 8
  %tobool.not.i.i161.i = icmp eq ptr %269, null
  br i1 %tobool.not.i.i161.i, label %_iwl_mvm_get_scan_type.exit.i162.i.cond.false.i.i172.i_crit_edge, label %land.lhs.true.i.i165.i

_iwl_mvm_get_scan_type.exit.i162.i.cond.false.i.i172.i_crit_edge: ; preds = %_iwl_mvm_get_scan_type.exit.i162.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false.i.i172.i

land.lhs.true.i.i165.i:                           ; preds = %_iwl_mvm_get_scan_type.exit.i162.i
  %valid_tx_ant.i.i163.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %269, i32 0, i32 20
  %270 = ptrtoint ptr %valid_tx_ant.i.i163.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %valid_tx_ant.i.i163.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %271)
  %tobool2.not.i.i164.i = icmp eq i8 %271, 0
  br i1 %tobool2.not.i.i164.i, label %land.lhs.true.i.i165.i.cond.false.i.i172.i_crit_edge, label %cond.true.i.i169.i

land.lhs.true.i.i165.i.cond.false.i.i172.i_crit_edge: ; preds = %land.lhs.true.i.i165.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false.i.i172.i

cond.true.i.i169.i:                               ; preds = %land.lhs.true.i.i165.i
  call void @__sanitizer_cov_trace_pc() #12
  %272 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %fw.i, align 8
  %valid_tx_ant3.i.i167.i = getelementptr inbounds %struct.iwl_fw, ptr %273, i32 0, i32 15
  %274 = ptrtoint ptr %valid_tx_ant3.i.i167.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %valid_tx_ant3.i.i167.i, align 4
  %and.i.i168.i = and i8 %275, %271
  br label %iwl_mvm_get_valid_tx_ant.exit.i178.i

cond.false.i.i172.i:                              ; preds = %land.lhs.true.i.i165.i.cond.false.i.i172.i_crit_edge, %_iwl_mvm_get_scan_type.exit.i162.i.cond.false.i.i172.i_crit_edge
  %276 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %fw.i, align 8
  %valid_tx_ant9.i.i171.i = getelementptr inbounds %struct.iwl_fw, ptr %277, i32 0, i32 15
  %278 = ptrtoint ptr %valid_tx_ant9.i.i171.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %valid_tx_ant9.i.i171.i, align 4
  br label %iwl_mvm_get_valid_tx_ant.exit.i178.i

iwl_mvm_get_valid_tx_ant.exit.i178.i:             ; preds = %cond.false.i.i172.i, %cond.true.i.i169.i
  %cond.i.i173.i = phi i8 [ %and.i.i168.i, %cond.true.i.i169.i ], [ %279, %cond.false.i.i172.i ]
  %conv.i174.i = zext i8 %cond.i.i173.i to i32
  %280 = shl nuw i32 %conv.i174.i, 24
  %tx_chains.i175.i = getelementptr inbounds %struct.iwl_scan_config_v1, ptr %call9.i.i.i, i32 0, i32 1
  %281 = ptrtoint ptr %tx_chains.i175.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %280, ptr %tx_chains.i175.i, align 4
  %scan_rx_ant.i.i176.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 60
  %282 = ptrtoint ptr %scan_rx_ant.i.i176.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %scan_rx_ant.i.i176.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %283)
  %cmp.not.i.i177.i = icmp eq i8 %283, 0
  br i1 %cmp.not.i.i177.i, label %if.end.i.i180.i, label %iwl_mvm_get_valid_tx_ant.exit.i178.i.iwl_mvm_scan_rx_ant.exit.i195.i_crit_edge

iwl_mvm_get_valid_tx_ant.exit.i178.i.iwl_mvm_scan_rx_ant.exit.i195.i_crit_edge: ; preds = %iwl_mvm_get_valid_tx_ant.exit.i178.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_rx_ant.exit.i195.i

if.end.i.i180.i:                                  ; preds = %iwl_mvm_get_valid_tx_ant.exit.i178.i
  %284 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %nvm_data.i, align 8
  %tobool.not.i.i.i179.i = icmp eq ptr %285, null
  br i1 %tobool.not.i.i.i179.i, label %if.end.i.i180.i.cond.false.i.i.i190.i_crit_edge, label %land.lhs.true.i.i.i183.i

if.end.i.i180.i.cond.false.i.i.i190.i_crit_edge:  ; preds = %if.end.i.i180.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false.i.i.i190.i

land.lhs.true.i.i.i183.i:                         ; preds = %if.end.i.i180.i
  %valid_rx_ant.i.i.i181.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %285, i32 0, i32 21
  %286 = ptrtoint ptr %valid_rx_ant.i.i.i181.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %valid_rx_ant.i.i.i181.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %287)
  %tobool2.not.i.i.i182.i = icmp eq i8 %287, 0
  br i1 %tobool2.not.i.i.i182.i, label %land.lhs.true.i.i.i183.i.cond.false.i.i.i190.i_crit_edge, label %cond.true.i.i.i187.i

land.lhs.true.i.i.i183.i.cond.false.i.i.i190.i_crit_edge: ; preds = %land.lhs.true.i.i.i183.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false.i.i.i190.i

cond.true.i.i.i187.i:                             ; preds = %land.lhs.true.i.i.i183.i
  call void @__sanitizer_cov_trace_pc() #12
  %288 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %fw.i, align 8
  %valid_rx_ant3.i.i.i185.i = getelementptr inbounds %struct.iwl_fw, ptr %289, i32 0, i32 16
  %290 = ptrtoint ptr %valid_rx_ant3.i.i.i185.i to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %valid_rx_ant3.i.i.i185.i, align 1
  %and.i.i.i186.i = and i8 %291, %287
  br label %iwl_mvm_scan_rx_ant.exit.i195.i

cond.false.i.i.i190.i:                            ; preds = %land.lhs.true.i.i.i183.i.cond.false.i.i.i190.i_crit_edge, %if.end.i.i180.i.cond.false.i.i.i190.i_crit_edge
  %292 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %fw.i, align 8
  %valid_rx_ant9.i.i.i189.i = getelementptr inbounds %struct.iwl_fw, ptr %293, i32 0, i32 16
  %294 = ptrtoint ptr %valid_rx_ant9.i.i.i189.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %valid_rx_ant9.i.i.i189.i, align 1
  br label %iwl_mvm_scan_rx_ant.exit.i195.i

iwl_mvm_scan_rx_ant.exit.i195.i:                  ; preds = %cond.false.i.i.i190.i, %cond.true.i.i.i187.i, %iwl_mvm_get_valid_tx_ant.exit.i178.i.iwl_mvm_scan_rx_ant.exit.i195.i_crit_edge
  %retval.0.i.i191.i = phi i8 [ %283, %iwl_mvm_get_valid_tx_ant.exit.i178.i.iwl_mvm_scan_rx_ant.exit.i195.i_crit_edge ], [ %and.i.i.i186.i, %cond.true.i.i.i187.i ], [ %295, %cond.false.i.i.i190.i ]
  %conv4.i.i = zext i8 %retval.0.i.i191.i to i32
  %296 = shl nuw i32 %conv4.i.i, 24
  %rx_chains.i192.i = getelementptr inbounds %struct.iwl_scan_config_v1, ptr %call9.i.i.i, i32 0, i32 2
  %297 = ptrtoint ptr %rx_chains.i192.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %296, ptr %rx_chains.i192.i, align 8
  %298 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %nvm_data.i, align 8
  %n_bitrates.i.i193.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %299, i32 0, i32 26, i32 0, i32 4
  %300 = ptrtoint ptr %n_bitrates.i.i193.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %n_bitrates.i.i193.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %301)
  %cmp34.i.i194.i = icmp sgt i32 %301, 0
  br i1 %cmp34.i.i194.i, label %for.body.lr.ph.i.i197.i, label %iwl_mvm_scan_rx_ant.exit.i195.i.for.cond5.preheader.i.i201.i_crit_edge

iwl_mvm_scan_rx_ant.exit.i195.i.for.cond5.preheader.i.i201.i_crit_edge: ; preds = %iwl_mvm_scan_rx_ant.exit.i195.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond5.preheader.i.i201.i

for.body.lr.ph.i.i197.i:                          ; preds = %iwl_mvm_scan_rx_ant.exit.i195.i
  %bitrates.i.i196.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %299, i32 0, i32 26, i32 0, i32 1
  %302 = ptrtoint ptr %bitrates.i.i196.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %bitrates.i.i196.i, align 4
  br label %for.body.i.i212.i

for.cond5.preheader.i.i201.i:                     ; preds = %for.body.i.i212.i.for.cond5.preheader.i.i201.i_crit_edge, %iwl_mvm_scan_rx_ant.exit.i195.i.for.cond5.preheader.i.i201.i_crit_edge
  %rates.0.lcssa.i.i198.i = phi i32 [ 0, %iwl_mvm_scan_rx_ant.exit.i195.i.for.cond5.preheader.i.i201.i_crit_edge ], [ %or.i.i209.i, %for.body.i.i212.i.for.cond5.preheader.i.i201.i_crit_edge ]
  %n_bitrates6.i.i199.i = getelementptr %struct.iwl_nvm_data, ptr %299, i32 0, i32 26, i32 1, i32 4
  %304 = ptrtoint ptr %n_bitrates6.i.i199.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %n_bitrates6.i.i199.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %305)
  %cmp737.i.i200.i = icmp sgt i32 %305, 0
  br i1 %cmp737.i.i200.i, label %for.body9.lr.ph.i.i203.i, label %for.cond5.preheader.i.i201.i.iwl_mvm_scan_config_rates.exit.i237.i_crit_edge

for.cond5.preheader.i.i201.i.iwl_mvm_scan_config_rates.exit.i237.i_crit_edge: ; preds = %for.cond5.preheader.i.i201.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_config_rates.exit.i237.i

for.body9.lr.ph.i.i203.i:                         ; preds = %for.cond5.preheader.i.i201.i
  %bitrates10.i.i202.i = getelementptr %struct.iwl_nvm_data, ptr %299, i32 0, i32 26, i32 1, i32 1
  %306 = ptrtoint ptr %bitrates10.i.i202.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %bitrates10.i.i202.i, align 4
  br label %for.body9.i.i221.i

for.body.i.i212.i:                                ; preds = %for.body.i.i212.i.for.body.i.i212.i_crit_edge, %for.body.lr.ph.i.i197.i
  %i.036.i.i204.i = phi i32 [ 0, %for.body.lr.ph.i.i197.i ], [ %inc.i.i210.i, %for.body.i.i212.i.for.body.i.i212.i_crit_edge ]
  %rates.035.i.i205.i = phi i32 [ 0, %for.body.lr.ph.i.i197.i ], [ %or.i.i209.i, %for.body.i.i212.i.for.body.i.i212.i_crit_edge ]
  %hw_value.i.i206.i = getelementptr %struct.ieee80211_rate, ptr %303, i32 %i.036.i.i204.i, i32 2
  %308 = ptrtoint ptr %hw_value.i.i206.i to i32
  call void @__asan_load2_noabort(i32 %308)
  %309 = load i16, ptr %hw_value.i.i206.i, align 2
  %conv.i.i207.i = zext i16 %309 to i32
  %arrayidx.i.i.i208.i = getelementptr [17 x i32], ptr @rate_to_scan_rate_flag.rate_to_scan_rate, i32 0, i32 %conv.i.i207.i
  %310 = ptrtoint ptr %arrayidx.i.i.i208.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %arrayidx.i.i.i208.i, align 4
  %or.i.i209.i = or i32 %311, %rates.035.i.i205.i
  %inc.i.i210.i = add nuw nsw i32 %i.036.i.i204.i, 1
  %exitcond.not.i.i211.i = icmp eq i32 %inc.i.i210.i, %301
  br i1 %exitcond.not.i.i211.i, label %for.body.i.i212.i.for.cond5.preheader.i.i201.i_crit_edge, label %for.body.i.i212.i.for.body.i.i212.i_crit_edge

for.body.i.i212.i.for.body.i.i212.i_crit_edge:    ; preds = %for.body.i.i212.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i212.i

for.body.i.i212.i.for.cond5.preheader.i.i201.i_crit_edge: ; preds = %for.body.i.i212.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond5.preheader.i.i201.i

for.body9.i.i221.i:                               ; preds = %for.body9.i.i221.i.for.body9.i.i221.i_crit_edge, %for.body9.lr.ph.i.i203.i
  %i.139.i.i213.i = phi i32 [ 0, %for.body9.lr.ph.i.i203.i ], [ %inc17.i.i219.i, %for.body9.i.i221.i.for.body9.i.i221.i_crit_edge ]
  %rates.138.i.i214.i = phi i32 [ %rates.0.lcssa.i.i198.i, %for.body9.lr.ph.i.i203.i ], [ %or15.i.i218.i, %for.body9.i.i221.i.for.body9.i.i221.i_crit_edge ]
  %hw_value12.i.i215.i = getelementptr %struct.ieee80211_rate, ptr %307, i32 %i.139.i.i213.i, i32 2
  %312 = ptrtoint ptr %hw_value12.i.i215.i to i32
  call void @__asan_load2_noabort(i32 %312)
  %313 = load i16, ptr %hw_value12.i.i215.i, align 2
  %conv13.i.i216.i = zext i16 %313 to i32
  %arrayidx.i33.i.i217.i = getelementptr [17 x i32], ptr @rate_to_scan_rate_flag.rate_to_scan_rate, i32 0, i32 %conv13.i.i216.i
  %314 = ptrtoint ptr %arrayidx.i33.i.i217.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %arrayidx.i33.i.i217.i, align 4
  %or15.i.i218.i = or i32 %315, %rates.138.i.i214.i
  %inc17.i.i219.i = add nuw nsw i32 %i.139.i.i213.i, 1
  %exitcond41.not.i.i220.i = icmp eq i32 %inc17.i.i219.i, %305
  br i1 %exitcond41.not.i.i220.i, label %for.body9.i.i221.i.iwl_mvm_scan_config_rates.exit.i237.i_crit_edge, label %for.body9.i.i221.i.for.body9.i.i221.i_crit_edge

for.body9.i.i221.i.for.body9.i.i221.i_crit_edge:  ; preds = %for.body9.i.i221.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body9.i.i221.i

for.body9.i.i221.i.iwl_mvm_scan_config_rates.exit.i237.i_crit_edge: ; preds = %for.body9.i.i221.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_config_rates.exit.i237.i

iwl_mvm_scan_config_rates.exit.i237.i:            ; preds = %for.body9.i.i221.i.iwl_mvm_scan_config_rates.exit.i237.i_crit_edge, %for.cond5.preheader.i.i201.i.iwl_mvm_scan_config_rates.exit.i237.i_crit_edge
  %rates.1.lcssa.i.i222.i = phi i32 [ %rates.0.lcssa.i.i198.i, %for.cond5.preheader.i.i201.i.iwl_mvm_scan_config_rates.exit.i237.i_crit_edge ], [ %or15.i.i218.i, %for.body9.i.i221.i.iwl_mvm_scan_config_rates.exit.i237.i_crit_edge ]
  %shl.i.i223.i = shl i32 %rates.1.lcssa.i.i222.i, 16
  %or19.i.i224.i = or i32 %shl.i.i223.i, %rates.1.lcssa.i.i222.i
  %316 = call i32 @llvm.bswap.i32(i32 %or19.i.i224.i) #10
  %legacy_rates.i225.i = getelementptr inbounds %struct.iwl_scan_config_v1, ptr %call9.i.i.i, i32 0, i32 3
  %317 = ptrtoint ptr %legacy_rates.i225.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %316, ptr %legacy_rates.i225.i, align 4
  %arrayidx.i226.i = getelementptr [6 x %struct.iwl_mvm_scan_timing_params], ptr @scan_timing, i32 0, i32 %retval.1.i.i159.i
  %max_out_time.i227.i = getelementptr [6 x %struct.iwl_mvm_scan_timing_params], ptr @scan_timing, i32 0, i32 %retval.1.i.i159.i, i32 1
  %318 = ptrtoint ptr %max_out_time.i227.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %max_out_time.i227.i, align 4
  %320 = call i32 @llvm.bswap.i32(i32 %319) #10
  %out_of_channel_time.i228.i = getelementptr inbounds %struct.iwl_scan_config_v1, ptr %call9.i.i.i, i32 0, i32 4
  %321 = ptrtoint ptr %out_of_channel_time.i228.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 %320, ptr %out_of_channel_time.i228.i, align 16
  %322 = ptrtoint ptr %arrayidx.i226.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %arrayidx.i226.i, align 4
  %324 = call i32 @llvm.bswap.i32(i32 %323) #10
  %suspend_time7.i.i = getelementptr inbounds %struct.iwl_scan_config_v1, ptr %call9.i.i.i, i32 0, i32 5
  %325 = ptrtoint ptr %suspend_time7.i.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %324, ptr %suspend_time7.i.i, align 4
  %dwell.i229.i = getelementptr inbounds %struct.iwl_scan_config_v1, ptr %call9.i.i.i, i32 0, i32 6
  %326 = ptrtoint ptr %dwell.i229.i to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 10, ptr %dwell.i229.i, align 8
  %passive.i.i230.i = getelementptr inbounds %struct.iwl_scan_config_v1, ptr %call9.i.i.i, i32 0, i32 6, i32 1
  %327 = ptrtoint ptr %passive.i.i230.i to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 110, ptr %passive.i.i230.i, align 1
  %fragmented.i.i231.i = getelementptr inbounds %struct.iwl_scan_config_v1, ptr %call9.i.i.i, i32 0, i32 6, i32 2
  %328 = ptrtoint ptr %fragmented.i.i231.i to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 44, ptr %fragmented.i.i231.i, align 2
  %extended.i.i232.i = getelementptr inbounds %struct.iwl_scan_config_v1, ptr %call9.i.i.i, i32 0, i32 6, i32 3
  %329 = ptrtoint ptr %extended.i.i232.i to i32
  call void @__asan_store1_noabort(i32 %329)
  store i8 90, ptr %extended.i.i232.i, align 1
  %mac_addr.i233.i = getelementptr inbounds %struct.iwl_scan_config_v1, ptr %call9.i.i.i, i32 0, i32 7
  %addresses.i234.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 41
  %330 = call ptr @memcpy(ptr %mac_addr.i233.i, ptr %addresses.i234.i, i32 6)
  %331 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %fw.i, align 8
  %call9.i.i = call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %332, i8 noundef zeroext 1, i8 noundef zeroext 24, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %call9.i.i)
  %cmp.i236.i = icmp ugt i8 %call9.i.i, 11
  br i1 %cmp.i236.i, label %land.rhs.i239.i, label %iwl_mvm_scan_config_rates.exit.i237.i.if.end39.i.i_crit_edge

iwl_mvm_scan_config_rates.exit.i237.i.if.end39.i.i_crit_edge: ; preds = %iwl_mvm_scan_config_rates.exit.i237.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i.i

land.rhs.i239.i:                                  ; preds = %iwl_mvm_scan_config_rates.exit.i237.i
  %.b1.i238.i = load i1, ptr @iwl_mvm_fill_scan_config_v1.__already_done, align 1
  br i1 %.b1.i238.i, label %land.rhs.i239.i.if.end39.i.i_crit_edge, label %if.then.i240.i, !prof !147

land.rhs.i239.i.if.end39.i.i_crit_edge:           ; preds = %land.rhs.i239.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i.i

if.then.i240.i:                                   ; preds = %land.rhs.i239.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_fill_scan_config_v1.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1094, i32 noundef 9, ptr noundef null) #10
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.then.i240.i, %land.rhs.i239.i.if.end39.i.i_crit_edge, %iwl_mvm_scan_config_rates.exit.i237.i.if.end39.i.i_crit_edge
  %aux_sta.i241.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 62
  %333 = ptrtoint ptr %aux_sta.i241.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %aux_sta.i241.i, align 8
  %conv47.i.i = trunc i32 %334 to i8
  %bcast_sta_id.i242.i = getelementptr inbounds %struct.iwl_scan_config_v1, ptr %call9.i.i.i, i32 0, i32 8
  %335 = ptrtoint ptr %bcast_sta_id.i242.i to i32
  call void @__asan_store1_noabort(i32 %335)
  store i8 %conv47.i.i, ptr %bcast_sta_id.i242.i, align 2
  %channel_flags48.i.i = getelementptr inbounds %struct.iwl_scan_config_v1, ptr %call9.i.i.i, i32 0, i32 9
  %336 = ptrtoint ptr %channel_flags48.i.i to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 15, ptr %channel_flags48.i.i, align 1
  %channel_array.i243.i = getelementptr inbounds %struct.iwl_scan_config_v1, ptr %call9.i.i.i, i32 0, i32 10
  %337 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %nvm_data.i, align 8
  %bands.i.i244.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %338, i32 0, i32 26
  %n_channels.i.i245.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %338, i32 0, i32 26, i32 0, i32 3
  %339 = ptrtoint ptr %n_channels.i.i245.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %n_channels.i.i245.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %340)
  %cmp44.i.i246.i = icmp sgt i32 %340, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_channels.0.i)
  %cmp145.i.i247.i = icmp ne i32 %num_channels.0.i, 0
  %or.cond46.i.i248.i = and i1 %cmp145.i.i247.i, %cmp44.i.i246.i
  br i1 %or.cond46.i.i248.i, label %if.end39.i.i.for.body.i6.i.i_crit_edge, label %if.end39.i.i.for.end.i.i261.i_crit_edge

if.end39.i.i.for.end.i.i261.i_crit_edge:          ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i261.i

if.end39.i.i.for.body.i6.i.i_crit_edge:           ; preds = %if.end39.i.i
  br label %for.body.i6.i.i

for.body.i6.i.i:                                  ; preds = %for.body.i6.i.i.for.body.i6.i.i_crit_edge, %if.end39.i.i.for.body.i6.i.i_crit_edge
  %j.048.i.i249.i = phi i32 [ %inc5.i.i251.i, %for.body.i6.i.i.for.body.i6.i.i_crit_edge ], [ 0, %if.end39.i.i.for.body.i6.i.i_crit_edge ]
  %341 = ptrtoint ptr %bands.i.i244.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %bands.i.i244.i, align 4
  %hw_value.i4.i.i = getelementptr %struct.ieee80211_channel, ptr %342, i32 %j.048.i.i249.i, i32 3
  %343 = ptrtoint ptr %hw_value.i4.i.i to i32
  call void @__asan_load2_noabort(i32 %343)
  %344 = load i16, ptr %hw_value.i4.i.i, align 2
  %conv.i5.i.i = trunc i16 %344 to i8
  %arrayidx4.i.i250.i = getelementptr i8, ptr %channel_array.i243.i, i32 %j.048.i.i249.i
  %345 = ptrtoint ptr %arrayidx4.i.i250.i to i32
  call void @__asan_store1_noabort(i32 %345)
  store i8 %conv.i5.i.i, ptr %arrayidx4.i.i250.i, align 1
  %inc5.i.i251.i = add nuw nsw i32 %j.048.i.i249.i, 1
  %346 = ptrtoint ptr %n_channels.i.i245.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %n_channels.i.i245.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc5.i.i251.i, i32 %347)
  %cmp.i.i252.i = icmp slt i32 %inc5.i.i251.i, %347
  call void @__sanitizer_cov_trace_cmp4(i32 %inc5.i.i251.i, i32 %num_channels.0.i)
  %cmp1.i.i253.i = icmp ult i32 %inc5.i.i251.i, %num_channels.0.i
  %or.cond.i.i254.i = and i1 %cmp1.i.i253.i, %cmp.i.i252.i
  br i1 %or.cond.i.i254.i, label %for.body.i6.i.i.for.body.i6.i.i_crit_edge, label %for.body.i6.i.i.for.end.i.i261.i_crit_edge

for.body.i6.i.i.for.end.i.i261.i_crit_edge:       ; preds = %for.body.i6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i261.i

for.body.i6.i.i.for.body.i6.i.i_crit_edge:        ; preds = %for.body.i6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i6.i.i

for.end.i.i261.i:                                 ; preds = %for.body.i6.i.i.for.end.i.i261.i_crit_edge, %if.end39.i.i.for.end.i.i261.i_crit_edge
  %j.0.lcssa.i.i255.i = phi i32 [ 0, %if.end39.i.i.for.end.i.i261.i_crit_edge ], [ %inc5.i.i251.i, %for.body.i6.i.i.for.end.i.i261.i_crit_edge ]
  %348 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %nvm_data.i, align 8
  %arrayidx8.i.i256.i = getelementptr %struct.iwl_nvm_data, ptr %349, i32 0, i32 26, i32 1
  %n_channels10.i.i257.i = getelementptr %struct.iwl_nvm_data, ptr %349, i32 0, i32 26, i32 1, i32 3
  %350 = ptrtoint ptr %n_channels10.i.i257.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %n_channels10.i.i257.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %351)
  %cmp1149.i.i258.i = icmp sgt i32 %351, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa.i.i255.i, i32 %num_channels.0.i)
  %cmp1450.i.i259.i = icmp ult i32 %j.0.lcssa.i.i255.i, %num_channels.0.i
  %or.cond4351.i.i260.i = select i1 %cmp1149.i.i258.i, i1 %cmp1450.i.i259.i, i1 false
  br i1 %or.cond4351.i.i260.i, label %for.end.i.i261.i.for.body17.i.i272.i_crit_edge, label %for.end.i.i261.i.if.end66.i_crit_edge

for.end.i.i261.i.if.end66.i_crit_edge:            ; preds = %for.end.i.i261.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.i

for.end.i.i261.i.for.body17.i.i272.i_crit_edge:   ; preds = %for.end.i.i261.i
  br label %for.body17.i.i272.i

for.body17.i.i272.i:                              ; preds = %for.body17.i.i272.i.for.body17.i.i272.i_crit_edge, %for.end.i.i261.i.for.body17.i.i272.i_crit_edge
  %j.153.i.i262.i = phi i32 [ %inc25.i.i268.i, %for.body17.i.i272.i.for.body17.i.i272.i_crit_edge ], [ %j.0.lcssa.i.i255.i, %for.end.i.i261.i.for.body17.i.i272.i_crit_edge ]
  %i.152.i.i263.i = phi i32 [ %inc24.i.i267.i, %for.body17.i.i272.i.for.body17.i.i272.i_crit_edge ], [ 0, %for.end.i.i261.i.for.body17.i.i272.i_crit_edge ]
  %352 = ptrtoint ptr %arrayidx8.i.i256.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %arrayidx8.i.i256.i, align 4
  %hw_value20.i.i264.i = getelementptr %struct.ieee80211_channel, ptr %353, i32 %i.152.i.i263.i, i32 3
  %354 = ptrtoint ptr %hw_value20.i.i264.i to i32
  call void @__asan_load2_noabort(i32 %354)
  %355 = load i16, ptr %hw_value20.i.i264.i, align 2
  %conv21.i.i265.i = trunc i16 %355 to i8
  %arrayidx22.i.i266.i = getelementptr i8, ptr %channel_array.i243.i, i32 %j.153.i.i262.i
  %356 = ptrtoint ptr %arrayidx22.i.i266.i to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 %conv21.i.i265.i, ptr %arrayidx22.i.i266.i, align 1
  %inc24.i.i267.i = add nuw nsw i32 %i.152.i.i263.i, 1
  %inc25.i.i268.i = add nuw i32 %j.153.i.i262.i, 1
  %357 = ptrtoint ptr %n_channels10.i.i257.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %n_channels10.i.i257.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc24.i.i267.i, i32 %358)
  %cmp11.i.i269.i = icmp slt i32 %inc24.i.i267.i, %358
  call void @__sanitizer_cov_trace_cmp4(i32 %inc25.i.i268.i, i32 %num_channels.0.i)
  %cmp14.i.i270.i = icmp ult i32 %inc25.i.i268.i, %num_channels.0.i
  %or.cond43.i.i271.i = select i1 %cmp11.i.i269.i, i1 %cmp14.i.i270.i, i1 false
  br i1 %or.cond43.i.i271.i, label %for.body17.i.i272.i.for.body17.i.i272.i_crit_edge, label %for.body17.i.i272.i.if.end66.i_crit_edge

for.body17.i.i272.i.if.end66.i_crit_edge:         ; preds = %for.body17.i.i272.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.i

for.body17.i.i272.i.for.body17.i.i272.i_crit_edge: ; preds = %for.body17.i.i272.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body17.i.i272.i

if.end66.i:                                       ; preds = %for.body17.i.i272.i.if.end66.i_crit_edge, %for.end.i.i261.i.if.end66.i_crit_edge, %for.body17.i.i.i.if.end66.i_crit_edge, %for.end.i.i.i.if.end66.i_crit_edge
  %359 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store ptr %call9.i.i.i, ptr %cmd.i, align 4
  %conv.i = trunc i32 %add50.i to i16
  %len.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6
  %360 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %360)
  store i16 %conv.i, ptr %len.i, align 4
  %dataflags.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 7
  %361 = ptrtoint ptr %dataflags.i to i32
  call void @__asan_store1_noabort(i32 %361)
  store i8 1, ptr %dataflags.i, align 4
  %362 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %363, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_legacy_config_scan, ptr noundef nonnull @.str.14) #10
  %call76.i = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %cmd.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %tobool77.not.i = icmp eq i32 %call76.i, 0
  br i1 %tobool77.not.i, label %if.then78.i, label %if.end66.i.if.end81.i_crit_edge

if.end66.i.if.end81.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81.i

if.then78.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  %scan_type79.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 51
  %364 = ptrtoint ptr %scan_type79.i to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 %type.0.i, ptr %scan_type79.i, align 8
  %hb_scan_type80.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 52
  %365 = ptrtoint ptr %hb_scan_type80.i to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 %hb_type.0.i, ptr %hb_scan_type80.i, align 4
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.then78.i, %if.end66.i.if.end81.i_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #10
  br label %iwl_mvm_legacy_config_scan.exit

iwl_mvm_legacy_config_scan.exit:                  ; preds = %if.end81.i, %if.end42.i.iwl_mvm_legacy_config_scan.exit_crit_edge, %_iwl_mvm_get_scan_type.exit311.i.iwl_mvm_legacy_config_scan.exit_crit_edge, %land.lhs.true.i.iwl_mvm_legacy_config_scan.exit_crit_edge
  %retval.0.i = phi i32 [ %call76.i, %if.end81.i ], [ 0, %land.lhs.true.i.iwl_mvm_legacy_config_scan.exit_crit_edge ], [ 0, %_iwl_mvm_get_scan_type.exit311.i.iwl_mvm_legacy_config_scan.exit_crit_edge ], [ -12, %if.end42.i.iwl_mvm_legacy_config_scan.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %366 = call ptr @memset(ptr %cfg, i32 0, i32 12)
  %call20 = call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %14, i8 noundef zeroext 1, i8 noundef zeroext 24, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %call20)
  %cmp = icmp ult i8 %call20, 12
  br i1 %cmp, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %aux_sta = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 62
  %367 = ptrtoint ptr %aux_sta to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %aux_sta, align 8
  %conv23 = trunc i32 %368 to i8
  br label %if.end32.sink.split

if.else:                                          ; preds = %if.end
  %369 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %fw.i, align 8
  %call25 = call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %370, i8 noundef zeroext 1, i8 noundef zeroext 12, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %call25)
  %cmp27 = icmp ult i8 %call25, 5
  br i1 %cmp27, label %if.else.if.end32.sink.split_crit_edge, label %if.else.if.end32_crit_edge

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.else.if.end32.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.sink.split

if.end32.sink.split:                              ; preds = %if.else.if.end32.sink.split_crit_edge, %if.then22
  %.sink = phi i8 [ %conv23, %if.then22 ], [ -1, %if.else.if.end32.sink.split_crit_edge ]
  %371 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 %.sink, ptr %0, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.end32.sink.split, %if.else.if.end32_crit_edge
  %nvm_data.i52 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %372 = ptrtoint ptr %nvm_data.i52 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %nvm_data.i52, align 8
  %tobool.not.i = icmp eq ptr %373, null
  br i1 %tobool.not.i, label %if.end32.iwl_mvm_get_valid_tx_ant.exit_crit_edge, label %land.lhs.true.i53

if.end32.iwl_mvm_get_valid_tx_ant.exit_crit_edge: ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_get_valid_tx_ant.exit

land.lhs.true.i53:                                ; preds = %if.end32
  %valid_tx_ant.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %373, i32 0, i32 20
  %374 = ptrtoint ptr %valid_tx_ant.i to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %valid_tx_ant.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %375)
  %tobool2.not.i = icmp eq i8 %375, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i53.iwl_mvm_get_valid_tx_ant.exit_crit_edge, label %iwl_mvm_get_valid_tx_ant.exit.thread

land.lhs.true.i53.iwl_mvm_get_valid_tx_ant.exit_crit_edge: ; preds = %land.lhs.true.i53
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_get_valid_tx_ant.exit

iwl_mvm_get_valid_tx_ant.exit:                    ; preds = %land.lhs.true.i53.iwl_mvm_get_valid_tx_ant.exit_crit_edge, %if.end32.iwl_mvm_get_valid_tx_ant.exit_crit_edge
  %376 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %fw.i, align 8
  %valid_tx_ant9.i = getelementptr inbounds %struct.iwl_fw, ptr %377, i32 0, i32 15
  %378 = ptrtoint ptr %valid_tx_ant9.i to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %valid_tx_ant9.i, align 4
  %conv34 = zext i8 %379 to i32
  %380 = shl nuw i32 %conv34, 24
  %381 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %381, i32 4)
  store i32 %380, ptr %1, align 1
  %scan_rx_ant.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 60
  %382 = ptrtoint ptr %scan_rx_ant.i to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %scan_rx_ant.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %383)
  %cmp.not.i = icmp eq i8 %383, 0
  br i1 %cmp.not.i, label %if.end.i, label %iwl_mvm_get_valid_tx_ant.exit.iwl_mvm_scan_rx_ant.exit_crit_edge

iwl_mvm_get_valid_tx_ant.exit.iwl_mvm_scan_rx_ant.exit_crit_edge: ; preds = %iwl_mvm_get_valid_tx_ant.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_rx_ant.exit

iwl_mvm_get_valid_tx_ant.exit.thread:             ; preds = %land.lhs.true.i53
  %384 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %fw.i, align 8
  %valid_tx_ant3.i = getelementptr inbounds %struct.iwl_fw, ptr %385, i32 0, i32 15
  %386 = ptrtoint ptr %valid_tx_ant3.i to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %valid_tx_ant3.i, align 4
  %and.i = and i8 %387, %375
  %conv3459 = zext i8 %and.i to i32
  %388 = shl nuw i32 %conv3459, 24
  %389 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %389, i32 4)
  store i32 %388, ptr %1, align 1
  %scan_rx_ant.i60 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 60
  %390 = ptrtoint ptr %scan_rx_ant.i60 to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %scan_rx_ant.i60, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %391)
  %cmp.not.i61 = icmp eq i8 %391, 0
  br i1 %cmp.not.i61, label %iwl_mvm_get_valid_tx_ant.exit.thread.land.lhs.true.i.i_crit_edge, label %iwl_mvm_get_valid_tx_ant.exit.thread.iwl_mvm_scan_rx_ant.exit_crit_edge

iwl_mvm_get_valid_tx_ant.exit.thread.iwl_mvm_scan_rx_ant.exit_crit_edge: ; preds = %iwl_mvm_get_valid_tx_ant.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_rx_ant.exit

iwl_mvm_get_valid_tx_ant.exit.thread.land.lhs.true.i.i_crit_edge: ; preds = %iwl_mvm_get_valid_tx_ant.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i

if.end.i:                                         ; preds = %iwl_mvm_get_valid_tx_ant.exit
  br i1 %tobool.not.i, label %if.end.i.cond.false.i.i_crit_edge, label %if.end.i.land.lhs.true.i.i_crit_edge

if.end.i.land.lhs.true.i.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i

if.end.i.cond.false.i.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.land.lhs.true.i.i_crit_edge, %iwl_mvm_get_valid_tx_ant.exit.thread.land.lhs.true.i.i_crit_edge
  %valid_rx_ant.i.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %373, i32 0, i32 21
  %392 = ptrtoint ptr %valid_rx_ant.i.i to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %valid_rx_ant.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %393)
  %tobool2.not.i.i = icmp eq i8 %393, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.cond.false.i.i_crit_edge, label %cond.true.i.i

land.lhs.true.i.i.cond.false.i.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false.i.i

cond.true.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %394 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %fw.i, align 8
  %valid_rx_ant3.i.i = getelementptr inbounds %struct.iwl_fw, ptr %395, i32 0, i32 16
  %396 = ptrtoint ptr %valid_rx_ant3.i.i to i32
  call void @__asan_load1_noabort(i32 %396)
  %397 = load i8, ptr %valid_rx_ant3.i.i, align 1
  %and.i.i = and i8 %397, %393
  br label %iwl_mvm_scan_rx_ant.exit

cond.false.i.i:                                   ; preds = %land.lhs.true.i.i.cond.false.i.i_crit_edge, %if.end.i.cond.false.i.i_crit_edge
  %398 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %fw.i, align 8
  %valid_rx_ant9.i.i = getelementptr inbounds %struct.iwl_fw, ptr %399, i32 0, i32 16
  %400 = ptrtoint ptr %valid_rx_ant9.i.i to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %valid_rx_ant9.i.i, align 1
  br label %iwl_mvm_scan_rx_ant.exit

iwl_mvm_scan_rx_ant.exit:                         ; preds = %cond.false.i.i, %cond.true.i.i, %iwl_mvm_get_valid_tx_ant.exit.thread.iwl_mvm_scan_rx_ant.exit_crit_edge, %iwl_mvm_get_valid_tx_ant.exit.iwl_mvm_scan_rx_ant.exit_crit_edge
  %retval.0.i57 = phi i8 [ %383, %iwl_mvm_get_valid_tx_ant.exit.iwl_mvm_scan_rx_ant.exit_crit_edge ], [ %and.i.i, %cond.true.i.i ], [ %401, %cond.false.i.i ], [ %391, %iwl_mvm_get_valid_tx_ant.exit.thread.iwl_mvm_scan_rx_ant.exit_crit_edge ]
  %conv36 = zext i8 %retval.0.i57 to i32
  %402 = shl nuw i32 %conv36, 24
  %403 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %403, i32 4)
  store i32 %402, ptr %2, align 1
  %404 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %405, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_config_scan, ptr noundef nonnull @.str.14) #10
  %call40 = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %cmd) #10
  br label %cleanup

cleanup:                                          ; preds = %iwl_mvm_scan_rx_ant.exit, %iwl_mvm_legacy_config_scan.exit
  %retval.0 = phi i32 [ %call40, %iwl_mvm_scan_rx_ant.exit ], [ %retval.0.i, %iwl_mvm_legacy_config_scan.exit ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_scan_timeout_wk(ptr nocapture noundef readonly %work) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4292
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.15) #10
  %trans = getelementptr i8, ptr %work, i32 -4288
  %2 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans, align 4
  tail call void @iwl_force_nmi(ptr noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_force_nmi(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_reg_scan_start(ptr noundef %mvm, ptr noundef %vif, ptr noundef %req, ptr nocapture noundef readonly %ies) local_unnamed_addr #2 align 64 {
entry:
  %hcmd = alloca %struct.iwl_host_cmd, align 4
  %params = alloca %struct.iwl_mvm_scan_params, align 4
  %scan_plan = alloca %struct.cfg80211_sched_scan_plan, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hcmd) #10
  %0 = getelementptr inbounds i8, ptr %hcmd, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 32)
  %scan_cmd = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 49
  %2 = ptrtoint ptr %scan_cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scan_cmd, align 8
  %4 = ptrtoint ptr %hcmd to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %hcmd, align 4
  %len = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 6
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %5 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw.i, align 8
  %call.i = tail call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext 13, i8 noundef zeroext 99) #10
  %7 = zext i8 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %call.i, label %if.end.i [
    i8 12, label %entry.iwl_mvm_scan_size.exit_crit_edge
    i8 14, label %entry.sw.bb1.i.i_crit_edge
    i8 15, label %entry.sw.bb1.i.i_crit_edge217
  ]

entry.sw.bb1.i.i_crit_edge217:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i.i

entry.sw.bb1.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i.i

entry.iwl_mvm_scan_size.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_size.exit

sw.bb1.i.i:                                       ; preds = %entry.sw.bb1.i.i_crit_edge, %entry.sw.bb1.i.i_crit_edge217
  br label %iwl_mvm_scan_size.exit

if.end.i:                                         ; preds = %entry
  %8 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.iwl_fw, ptr %9, i32 0, i32 5, i32 7, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %12 = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.i.not.i = icmp eq i32 %12, 0
  br i1 %tobool.i.i.not.i, label %if.else.i, label %if.end.i.if.end12.i_crit_edge

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.else.i:                                        ; preds = %if.end.i
  %13 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %15 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.i44.not.i = icmp eq i32 %15, 0
  br i1 %tobool.i.i44.not.i, label %if.else6.i, label %if.else.i.if.end12.i_crit_edge

if.else.i.if.end12.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %trans.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %16 = ptrtoint ptr %trans.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trans.i.i, align 4
  %trans_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %trans_cfg.i.i, align 4
  %device_family.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %device_family.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %device_family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %21)
  %cmp.i.i = icmp ugt i32 %21, 17
  %..i = select i1 %cmp.i.i, i32 44, i32 36
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else6.i, %if.else.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %base_size.0.i = phi i32 [ 52, %if.end.i.if.end12.i_crit_edge ], [ 48, %if.else.i.if.end12.i_crit_edge ], [ %..i, %if.else6.i ]
  %_capa.i.i = getelementptr inbounds %struct.iwl_fw, ptr %9, i32 0, i32 5, i32 8
  %22 = ptrtoint ptr %_capa.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %_capa.i.i, align 4
  %24 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not.i = icmp eq i32 %24, 0
  br i1 %tobool.i.not.i, label %if.end23.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %27 = and i32 %26, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i.i47.not.i = icmp eq i32 %27, 0
  %.41.i = select i1 %tobool.i.i47.not.i, i32 1220, i32 1224
  %n_scan_channels.i = getelementptr inbounds %struct.iwl_fw, ptr %9, i32 0, i32 5, i32 1
  %28 = ptrtoint ptr %n_scan_channels.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n_scan_channels.i, align 4
  %mul.i = shl i32 %29, 3
  %add.i = add i32 %mul.i, %base_size.0.i
  %add22.i = add i32 %add.i, %.41.i
  br label %iwl_mvm_scan_size.exit

if.end23.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %n_scan_channels26.i = getelementptr inbounds %struct.iwl_fw, ptr %9, i32 0, i32 5, i32 1
  %30 = ptrtoint ptr %n_scan_channels26.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n_scan_channels26.i, align 4
  %mul27.i = mul i32 %31, 12
  %add29.i = add i32 %mul27.i, 1292
  br label %iwl_mvm_scan_size.exit

iwl_mvm_scan_size.exit:                           ; preds = %if.end23.i, %if.then15.i, %sw.bb1.i.i, %entry.iwl_mvm_scan_size.exit_crit_edge
  %retval.0.i = phi i32 [ %add22.i, %if.then15.i ], [ %add29.i, %if.end23.i ], [ 1956, %entry.iwl_mvm_scan_size.exit_crit_edge ], [ 1940, %sw.bb1.i.i ]
  %conv = trunc i32 %retval.0.i to i16
  %32 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv, ptr %len, align 4
  %dataflags = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 7
  %33 = ptrtoint ptr %dataflags to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %dataflags, align 4
  call void @llvm.lifetime.start.p0(i64 608, ptr nonnull %params) #10
  %34 = call ptr @memset(ptr %params, i32 0, i32 608)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %scan_plan) #10
  %35 = ptrtoint ptr %scan_plan to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 1, ptr %scan_plan, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %36 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not = icmp eq i32 %36, 0
  br i1 %tobool.not, label %iwl_mvm_scan_size.exit.if.end_crit_edge, label %land.rhs

iwl_mvm_scan_size.exit.if.end_crit_edge:          ; preds = %iwl_mvm_scan_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %iwl_mvm_scan_size.exit
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i185 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %cmp.not = icmp eq i32 %call.i185, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !148

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2627, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %iwl_mvm_scan_size.exit.if.end_crit_edge
  %nvm_data.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %37 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %nvm_data.i, align 8
  %lar_enabled.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %38, i32 0, i32 24
  %39 = ptrtoint ptr %lar_enabled.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %lar_enabled.i, align 1, !range !150
  %41 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fw.i, align 8
  %_capa.i.i187 = getelementptr inbounds %struct.iwl_fw, ptr %42, i32 0, i32 5, i32 8
  %43 = ptrtoint ptr %_capa.i.i187 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %_capa.i.i187, align 4
  %45 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.i.i = icmp ne i32 %45, 0
  %cfg.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 3
  %46 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cfg.i, align 4
  %nvm_type.i = getelementptr inbounds %struct.iwl_cfg, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %nvm_type.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nvm_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp.i = icmp eq i32 %49, 1
  br i1 %cmp.i, label %if.then.i, label %iwl_mvm_is_lar_supported.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i = icmp ne i8 %40, 0
  %spec.select.i = select i1 %tobool.not.i, i1 %tobool.i.i, i1 false
  br i1 %spec.select.i, label %if.then.i.land.lhs.true_crit_edge, label %if.then.i.if.end38_crit_edge

if.then.i.if.end38_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then.i.land.lhs.true_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

iwl_mvm_is_lar_supported.exit:                    ; preds = %if.end
  br i1 %tobool.i.i, label %iwl_mvm_is_lar_supported.exit.land.lhs.true_crit_edge, label %iwl_mvm_is_lar_supported.exit.if.end38_crit_edge

iwl_mvm_is_lar_supported.exit.if.end38_crit_edge: ; preds = %iwl_mvm_is_lar_supported.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

iwl_mvm_is_lar_supported.exit.land.lhs.true_crit_edge: ; preds = %iwl_mvm_is_lar_supported.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %iwl_mvm_is_lar_supported.exit.land.lhs.true_crit_edge, %if.then.i.land.lhs.true_crit_edge
  %lar_regdom_set = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 155
  %50 = ptrtoint ptr %lar_regdom_set to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %lar_regdom_set, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool30.not = icmp eq i8 %51, 0
  br i1 %tobool30.not, label %do.end35, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

do.end35:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %53, i32 noundef 0, ptr noundef nonnull @.str.16) #10
  br label %cleanup

if.end38:                                         ; preds = %land.lhs.true.if.end38_crit_edge, %iwl_mvm_is_lar_supported.exit.if.end38_crit_edge, %if.then.i.if.end38_crit_edge
  %54 = ptrtoint ptr %_capa.i.i187 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %_capa.i.i187, align 4
  %scan_status.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 48
  %56 = ptrtoint ptr %scan_status.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %scan_status.i.i, align 4
  %and.i.i = and i32 %57, 255
  %call.i.i.i = tail call i32 @__sw_hweight32(i32 noundef %and.i.i) #10
  %max_scans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 55
  %58 = ptrtoint ptr %max_scans.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %max_scans.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i, i32 %59)
  %cmp3.i = icmp ult i32 %call.i.i.i, %59
  br i1 %cmp3.i, label %if.end38.if.end42_crit_edge, label %if.end5.i

if.end38.if.end42_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.end5.i:                                        ; preds = %if.end38
  %60 = ptrtoint ptr %scan_status.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %scan_status.i.i, align 4
  %and7.i = and i32 %61, 257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %iwl_mvm_check_running_scans.exit, label %if.end5.i.cleanup_crit_edge

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

iwl_mvm_check_running_scans.exit:                 ; preds = %if.end5.i
  %call11.i = tail call i32 @iwl_mvm_scan_stop(ptr noundef %mvm, i32 noundef 2, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool40.not = icmp eq i32 %call11.i, 0
  br i1 %tobool40.not, label %iwl_mvm_check_running_scans.exit.if.end42_crit_edge, label %iwl_mvm_check_running_scans.exit.cleanup_crit_edge

iwl_mvm_check_running_scans.exit.cleanup_crit_edge: ; preds = %iwl_mvm_check_running_scans.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

iwl_mvm_check_running_scans.exit.if.end42_crit_edge: ; preds = %iwl_mvm_check_running_scans.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.end42:                                         ; preds = %iwl_mvm_check_running_scans.exit.if.end42_crit_edge, %if.end38.if.end42_crit_edge
  %62 = ptrtoint ptr %scan_cmd to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %scan_cmd, align 8
  %tobool45.not = icmp eq ptr %63, null
  br i1 %tobool45.not, label %do.end63, label %if.end79, !prof !148

do.end63:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2639, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end79:                                         ; preds = %if.end42
  %n_ssids = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 1
  %64 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %n_ssids, align 4
  %n_channels = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 2
  %66 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %65)
  %cmp.i194 = icmp slt i32 %65, 21
  br i1 %cmp.i194, label %iwl_mvm_scan_fits.exit, label %if.end79.cleanup_crit_edge

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

iwl_mvm_scan_fits.exit:                           ; preds = %if.end79
  %68 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %fw.i, align 8
  %n_scan_channels.i196 = getelementptr inbounds %struct.iwl_fw, ptr %69, i32 0, i32 5, i32 1
  %70 = ptrtoint ptr %n_scan_channels.i196 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %n_scan_channels.i196, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %67)
  %cmp1.i = icmp uge i32 %71, %67
  %common_ie_len.i = getelementptr inbounds %struct.ieee80211_scan_ies, ptr %ies, i32 0, i32 3
  %72 = ptrtoint ptr %common_ie_len.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %common_ie_len.i, align 4
  %len.i = getelementptr inbounds %struct.ieee80211_scan_ies, ptr %ies, i32 0, i32 1
  %74 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len.i, align 4
  %add.i197 = add i32 %75, %73
  %arrayidx3.i = getelementptr %struct.ieee80211_scan_ies, ptr %ies, i32 0, i32 1, i32 1
  %76 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx3.i, align 4
  %add4.i = add i32 %add.i197, %77
  %_capa.i.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %69, i32 0, i32 5, i32 8
  %78 = ptrtoint ptr %_capa.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %_capa.i.i.i.i, align 4
  %80 = and i32 %79, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.i.i.not.i.i = icmp eq i32 %80, 0
  %spec.select.i.i = select i1 %tobool.i.i.not.i.i, i32 486, i32 483
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.i, i32 %spec.select.i.i)
  %cmp5.i = icmp ule i32 %add4.i, %spec.select.i.i
  %and10.i = and i1 %cmp1.i, %cmp5.i
  br i1 %and10.i, label %if.end82, label %iwl_mvm_scan_fits.exit.cleanup_crit_edge

iwl_mvm_scan_fits.exit.cleanup_crit_edge:         ; preds = %iwl_mvm_scan_fits.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end82:                                         ; preds = %iwl_mvm_scan_fits.exit
  %n_ssids84 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 4
  %81 = ptrtoint ptr %n_ssids84 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %65, ptr %n_ssids84, align 4
  %flags = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 8
  %82 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags, align 4
  %flags85 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 7
  %84 = ptrtoint ptr %flags85 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %flags85, align 4
  %n_channels87 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 2
  %85 = ptrtoint ptr %n_channels87 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %67, ptr %n_channels87, align 4
  %delay = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 3
  %86 = ptrtoint ptr %delay to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 0, ptr %delay, align 4
  %87 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %req, align 8
  %ssids88 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 5
  %89 = ptrtoint ptr %ssids88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %88, ptr %ssids88, align 4
  %channels = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 22
  %channels89 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 6
  %90 = ptrtoint ptr %channels89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %channels, ptr %channels89, align 4
  %mac_addr = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 11
  %mac_addr91 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 8
  %91 = ptrtoint ptr %mac_addr91 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %mac_addr, ptr %mac_addr91, align 4
  %mac_addr_mask = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 12
  %mac_addr_mask93 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 9
  %92 = ptrtoint ptr %mac_addr_mask93 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %mac_addr_mask, ptr %mac_addr_mask93, align 4
  %no_cck = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 18
  %93 = ptrtoint ptr %no_cck to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %no_cck, align 1, !range !150
  %no_cck95 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 10
  %95 = ptrtoint ptr %no_cck95 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %no_cck95, align 4
  %pass_all = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 11
  %96 = ptrtoint ptr %pass_all to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %pass_all, align 1
  %n_match_sets = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 12
  %97 = ptrtoint ptr %n_match_sets to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %n_match_sets, align 4
  %match_sets = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 14
  %98 = ptrtoint ptr %match_sets to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %match_sets, align 4
  %scan_plans = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 16
  %99 = ptrtoint ptr %scan_plans to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %scan_plan, ptr %scan_plans, align 4
  %n_scan_plans = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 15
  %100 = ptrtoint ptr %n_scan_plans to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1, ptr %n_scan_plans, align 4
  %n_6ghz_params = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 20
  %101 = ptrtoint ptr %n_6ghz_params to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %n_6ghz_params, align 4
  %n_6ghz_params96 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 19
  %103 = ptrtoint ptr %n_6ghz_params96 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %n_6ghz_params96, align 4
  %scan_6ghz_params = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 21
  %104 = ptrtoint ptr %scan_6ghz_params to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %scan_6ghz_params, align 8
  %scan_6ghz_params97 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 18
  %106 = ptrtoint ptr %scan_6ghz_params97 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %105, ptr %scan_6ghz_params97, align 4
  %scan_6ghz = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 19
  %107 = ptrtoint ptr %scan_6ghz to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %scan_6ghz, align 2, !range !150
  %scan_6ghz99 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 20
  %109 = ptrtoint ptr %scan_6ghz99 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %scan_6ghz99, align 4
  call fastcc void @iwl_mvm_fill_scan_type(ptr noundef %mvm, ptr noundef nonnull %params, ptr noundef %vif)
  %duration = getelementptr inbounds %struct.cfg80211_scan_request, ptr %req, i32 0, i32 6
  %110 = ptrtoint ptr %duration to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %duration, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %tobool101.not = icmp eq i16 %111, 0
  br i1 %tobool101.not, label %if.end82.if.end103_crit_edge, label %if.then102

if.end82.if.end103_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

if.then102:                                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  %iter_notif = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 17
  %112 = ptrtoint ptr %iter_notif to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 1, ptr %iter_notif, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %if.end82.if.end103_crit_edge
  call fastcc void @iwl_mvm_build_scan_probe(ptr noundef %mvm, ptr noundef %vif, ptr noundef %ies, ptr noundef nonnull %params)
  %113 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %nvm_data.i, align 8
  %arrayidx.i = getelementptr %struct.iwl_nvm_data, ptr %114, i32 0, i32 26, i32 3
  %enable_6ghz_passive.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 21
  %115 = ptrtoint ptr %enable_6ghz_passive.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %enable_6ghz_passive.i, align 1
  %116 = ptrtoint ptr %scan_6ghz99 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %scan_6ghz99, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i199 = icmp eq i8 %117, 0
  br i1 %tobool.not.i199, label %if.end.i202, label %if.end103.iwl_mvm_scan_6ghz_passive_scan.exit_crit_edge

if.end103.iwl_mvm_scan_6ghz_passive_scan.exit_crit_edge: ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_6ghz_passive_scan.exit

if.end.i202:                                      ; preds = %if.end103
  %118 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %119, i32 0, i32 5, i32 8, i32 1
  %120 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %122 = and i32 %121, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool.i.not.i201 = icmp eq i32 %122, 0
  br i1 %tobool.i.not.i201, label %do.end.i, label %if.end5.i203

do.end.i:                                         ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #12
  %123 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %124, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_scan_6ghz_passive_scan, ptr noundef nonnull @.str.32) #10
  br label %iwl_mvm_scan_6ghz_passive_scan.exit

if.end5.i203:                                     ; preds = %if.end.i202
  %125 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %126)
  %cmp.not.i = icmp eq i32 %126, 2
  br i1 %cmp.not.i, label %if.end14.i, label %do.end10.i

do.end10.i:                                       ; preds = %if.end5.i203
  call void @__sanitizer_cov_trace_pc() #12
  %127 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %128, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_scan_6ghz_passive_scan, ptr noundef nonnull @.str.33) #10
  br label %iwl_mvm_scan_6ghz_passive_scan.exit

if.end14.i:                                       ; preds = %if.end5.i203
  %assoc.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 10
  %129 = ptrtoint ptr %assoc.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %assoc.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool15.not.i = icmp eq i8 %130, 0
  br i1 %tobool15.not.i, label %lor.lhs.false.i, label %if.end14.i.land.lhs.true.i_crit_edge

if.end14.i.land.lhs.true.i_crit_edge:             ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %if.end14.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %131 = load volatile i32, ptr @jiffies, align 128
  %last_6ghz_passive_scan_jiffies.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 176
  %132 = ptrtoint ptr %last_6ghz_passive_scan_jiffies.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %last_6ghz_passive_scan_jiffies.i, align 8
  %add.neg.i = add i32 %131, -300000
  %sub.i = sub i32 %add.neg.i, %133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp16.i = icmp slt i32 %sub.i, 0
  br i1 %cmp16.i, label %lor.lhs.false.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i.if.end31.i_crit_edge

lor.lhs.false.i.if.end31.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %if.end14.i.land.lhs.true.i_crit_edge
  %last_reset_or_resume_time_jiffies.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 177
  %134 = ptrtoint ptr %last_reset_or_resume_time_jiffies.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %last_reset_or_resume_time_jiffies.i, align 4
  %add17.i = add i32 %135, 6000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %136 = load volatile i32, ptr @jiffies, align 128
  %sub18.i = sub i32 %add17.i, %136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub18.i)
  %cmp19.i = icmp slt i32 %sub18.i, 0
  br i1 %cmp19.i, label %do.end24.i, label %land.lhs.true.i.if.end31.i_crit_edge

land.lhs.true.i.if.end31.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

do.end24.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %137 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %mvm, align 8
  %cond.i = select i1 %tobool15.not.i, ptr @.str.36, ptr @.str.35
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %138, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_scan_6ghz_passive_scan, ptr noundef nonnull @.str.34, ptr noundef nonnull %cond.i) #10
  br label %iwl_mvm_scan_6ghz_passive_scan.exit

if.end31.i:                                       ; preds = %land.lhs.true.i.if.end31.i_crit_edge, %lor.lhs.false.i.if.end31.i_crit_edge
  %139 = ptrtoint ptr %n_channels87 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %n_channels87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %140)
  %cmp32.i = icmp ult i32 %140, 4
  br i1 %cmp32.i, label %do.end37.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end31.i
  %141 = ptrtoint ptr %n_ssids84 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %n_ssids84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp42135.not.i = icmp eq i32 %142, 0
  br i1 %cmp42135.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %143 = ptrtoint ptr %ssids88 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ssids88, align 4
  br label %for.body.i

do.end37.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  %145 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %146, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_scan_6ghz_passive_scan, ptr noundef nonnull @.str.37) #10
  br label %iwl_mvm_scan_6ghz_passive_scan.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0136.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %ssid_len.i = getelementptr %struct.cfg80211_ssid, ptr %144, i32 %i.0136.i, i32 1
  %147 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %ssid_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool44.not.i = icmp eq i8 %148, 0
  br i1 %tobool44.not.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.0136.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %142
  br i1 %exitcond.not.i, label %for.inc.i.do.end53.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.do.end53.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end53.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %i.0136.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %142)
  %cmp48.i = icmp eq i32 %i.0.lcssa.i, %142
  br i1 %cmp48.i, label %for.end.i.do.end53.i_crit_edge, label %if.end57.i

for.end.i.do.end53.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end53.i

do.end53.i:                                       ; preds = %for.end.i.do.end53.i_crit_edge, %for.inc.i.do.end53.i_crit_edge
  %149 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %150, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_scan_6ghz_passive_scan, ptr noundef nonnull @.str.38) #10
  br label %iwl_mvm_scan_6ghz_passive_scan.exit

if.end57.i:                                       ; preds = %for.end.i
  %tobool58.not.i = icmp eq ptr %arrayidx.i, null
  br i1 %tobool58.not.i, label %if.end57.i.do.end66.i_crit_edge, label %lor.lhs.false59.i

if.end57.i.do.end66.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end66.i

lor.lhs.false59.i:                                ; preds = %if.end57.i
  %n_channels60.i = getelementptr %struct.iwl_nvm_data, ptr %114, i32 0, i32 26, i32 3, i32 3
  %151 = ptrtoint ptr %n_channels60.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %n_channels60.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool61.not.i = icmp eq i32 %152, 0
  br i1 %tobool61.not.i, label %lor.lhs.false59.i.do.end66.i_crit_edge, label %for.body74.preheader.i

lor.lhs.false59.i.do.end66.i_crit_edge:           ; preds = %lor.lhs.false59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end66.i

for.body74.preheader.i:                           ; preds = %lor.lhs.false59.i
  %153 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %arrayidx.i, align 4
  br label %for.body74.i

do.end66.i:                                       ; preds = %lor.lhs.false59.i.do.end66.i_crit_edge, %if.end57.i.do.end66.i_crit_edge
  %155 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %156, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_scan_6ghz_passive_scan, ptr noundef nonnull @.str.39) #10
  br label %iwl_mvm_scan_6ghz_passive_scan.exit

for.body74.i:                                     ; preds = %for.body74.i.for.body74.i_crit_edge, %for.body74.preheader.i
  %i.1142.i = phi i32 [ %inc81.i, %for.body74.i.for.body74.i_crit_edge ], [ 0, %for.body74.preheader.i ]
  %n_disabled.0141.i = phi i32 [ %spec.select.i204, %for.body74.i.for.body74.i_crit_edge ], [ 0, %for.body74.preheader.i ]
  %flags.i = getelementptr %struct.ieee80211_channel, ptr %154, i32 %i.1142.i, i32 4
  %157 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %158, 1
  %spec.select.i204 = add i32 %and.i, %n_disabled.0141.i
  %inc81.i = add nuw i32 %i.1142.i, 1
  %exitcond144.not.i = icmp eq i32 %inc81.i, %152
  br i1 %exitcond144.not.i, label %for.end82.i, label %for.body74.i.for.body74.i_crit_edge

for.body74.i.for.body74.i_crit_edge:              ; preds = %for.body74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body74.i

for.end82.i:                                      ; preds = %for.body74.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i204, i32 %152)
  %cmp84.not.i = icmp eq i32 %spec.select.i204, %152
  %159 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %mvm, align 8
  br i1 %cmp84.not.i, label %do.end97.i, label %do.end89.i

do.end89.i:                                       ; preds = %for.end82.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %160, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_scan_6ghz_passive_scan, ptr noundef nonnull @.str.40) #10
  br label %iwl_mvm_scan_6ghz_passive_scan.exit

do.end97.i:                                       ; preds = %for.end82.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %160, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_scan_6ghz_passive_scan, ptr noundef nonnull @.str.41) #10
  %161 = ptrtoint ptr %enable_6ghz_passive.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 1, ptr %enable_6ghz_passive.i, align 1
  br label %iwl_mvm_scan_6ghz_passive_scan.exit

iwl_mvm_scan_6ghz_passive_scan.exit:              ; preds = %do.end97.i, %do.end89.i, %do.end66.i, %do.end53.i, %do.end37.i, %do.end24.i, %do.end10.i, %do.end.i, %if.end103.iwl_mvm_scan_6ghz_passive_scan.exit_crit_edge
  %call104 = call fastcc i32 @iwl_mvm_build_scan_cmd(ptr noundef %mvm, ptr noundef %vif, ptr noundef nonnull %hcmd, ptr noundef nonnull %params, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %iwl_mvm_scan_6ghz_passive_scan.exit.cleanup_crit_edge, label %if.end108

iwl_mvm_scan_6ghz_passive_scan.exit.cleanup_crit_edge: ; preds = %iwl_mvm_scan_6ghz_passive_scan.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end108:                                        ; preds = %iwl_mvm_scan_6ghz_passive_scan.exit
  call void @iwl_mvm_pause_tcm(ptr noundef %mvm, i1 noundef zeroext false) #10
  %call109 = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %hcmd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  %162 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %mvm, align 8
  br i1 %tobool110.not, label %do.end123, label %do.end115

do.end115:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %163, i32 noundef 0, ptr noundef nonnull @.str.17, i32 noundef %call109) #10
  call void @iwl_mvm_resume_tcm(ptr noundef %mvm) #10
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 56, i32 %call104
  %164 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 0, ptr %arrayidx, align 4
  br label %cleanup

do.end123:                                        ; preds = %if.end108
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %163, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_reg_scan_start, ptr noundef nonnull @.str.18) #10
  %165 = ptrtoint ptr %scan_status.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %scan_status.i.i, align 4
  %or = or i32 %166, 1
  store i32 %or, ptr %scan_status.i.i, align 4
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %scan_vif = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 59
  %167 = ptrtoint ptr %scan_vif to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %drv_priv.i, ptr %scan_vif, align 8
  %168 = ptrtoint ptr %enable_6ghz_passive.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %enable_6ghz_passive.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool128.not = icmp eq i8 %169, 0
  br i1 %tobool128.not, label %do.end123.if.end130_crit_edge, label %if.then129

do.end123.if.end130_crit_edge:                    ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end130

if.then129:                                       ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %170 = load volatile i32, ptr @jiffies, align 128
  %last_6ghz_passive_scan_jiffies = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 176
  %171 = ptrtoint ptr %last_6ghz_passive_scan_jiffies to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %last_6ghz_passive_scan_jiffies, align 8
  br label %if.end130

if.end130:                                        ; preds = %if.then129, %do.end123.if.end130_crit_edge
  %scan_timeout_dwork = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %172 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %172, ptr noundef %scan_timeout_dwork, i32 noundef 3000) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end130, %do.end115, %iwl_mvm_scan_6ghz_passive_scan.exit.cleanup_crit_edge, %iwl_mvm_scan_fits.exit.cleanup_crit_edge, %if.end79.cleanup_crit_edge, %do.end63, %iwl_mvm_check_running_scans.exit.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %do.end35
  %retval.0 = phi i32 [ -12, %do.end63 ], [ %call109, %do.end115 ], [ 0, %if.end130 ], [ -16, %do.end35 ], [ %call11.i, %iwl_mvm_check_running_scans.exit.cleanup_crit_edge ], [ -105, %iwl_mvm_scan_fits.exit.cleanup_crit_edge ], [ %call104, %iwl_mvm_scan_6ghz_passive_scan.exit.cleanup_crit_edge ], [ -16, %if.end5.i.cleanup_crit_edge ], [ -105, %if.end79.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %scan_plan) #10
  call void @llvm.lifetime.end.p0(i64 608, ptr nonnull %params) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hcmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_scan_size(ptr nocapture noundef readonly %mvm) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw, align 8
  %call = tail call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 13, i8 noundef zeroext 99) #10
  %2 = zext i8 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %call, label %if.end [
    i8 12, label %entry.cleanup_crit_edge
    i8 14, label %entry.sw.bb1.i_crit_edge
    i8 15, label %entry.sw.bb1.i_crit_edge50
  ]

entry.sw.bb1.i_crit_edge50:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb1.i:                                         ; preds = %entry.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge50
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %4, i32 0, i32 5, i32 7, i32 1
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %7 = and i32 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.i.not, label %if.else, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.else:                                          ; preds = %if.end
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %10 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.i44.not = icmp eq i32 %10, 0
  br i1 %tobool.i.i44.not, label %if.else6, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %11 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trans_cfg.i, align 4
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %device_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %16)
  %cmp.i = icmp ugt i32 %16, 17
  %. = select i1 %cmp.i, i32 44, i32 36
  br label %if.end12

if.end12:                                         ; preds = %if.else6, %if.else.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %base_size.0 = phi i32 [ 52, %if.end.if.end12_crit_edge ], [ 48, %if.else.if.end12_crit_edge ], [ %., %if.else6 ]
  %_capa.i = getelementptr inbounds %struct.iwl_fw, ptr %4, i32 0, i32 5, i32 8
  %17 = ptrtoint ptr %_capa.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %_capa.i, align 4
  %19 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not = icmp eq i32 %19, 0
  br i1 %tobool.i.not, label %if.end23, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %22 = and i32 %21, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.i47.not = icmp eq i32 %22, 0
  %.41 = select i1 %tobool.i.i47.not, i32 1220, i32 1224
  %n_scan_channels = getelementptr inbounds %struct.iwl_fw, ptr %4, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %n_scan_channels to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_scan_channels, align 4
  %mul = shl i32 %24, 3
  %add = add i32 %mul, %base_size.0
  %add22 = add i32 %add, %.41
  br label %cleanup

if.end23:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %n_scan_channels26 = getelementptr inbounds %struct.iwl_fw, ptr %4, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %n_scan_channels26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_scan_channels26, align 4
  %mul27 = mul i32 %26, 12
  %add29 = add i32 %mul27, 1292
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then15, %sw.bb1.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add22, %if.then15 ], [ %add29, %if.end23 ], [ 1956, %entry.cleanup_crit_edge ], [ 1940, %sw.bb1.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_fill_scan_type(ptr noundef %mvm, ptr nocapture noundef writeonly %params, ptr noundef %vif) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %0 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %1, i32 0, i32 5, i32 8, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %4 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 7, i32 3, i32 0
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i, align 4
  %call1.i = tail call zeroext i1 @iwl_mvm_low_latency_band(ptr noundef %mvm, i32 noundef 0) #10
  %call2.i = tail call fastcc i32 @_iwl_mvm_get_scan_type(ptr noundef %mvm, ptr noundef %vif, i32 noundef %6, i1 noundef zeroext %call1.i) #10
  %7 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call2.i, ptr %params, align 4
  %arrayidx.i.i12 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 7, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i12, align 4
  %call1.i13 = tail call zeroext i1 @iwl_mvm_low_latency_band(ptr noundef %mvm, i32 noundef 1) #10
  %call2.i14 = tail call fastcc i32 @_iwl_mvm_get_scan_type(ptr noundef %mvm, ptr noundef %vif, i32 noundef %9, i1 noundef zeroext %call1.i13) #10
  %hb_type = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 1
  %10 = ptrtoint ptr %hb_type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call2.i14, ptr %hb_type, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %global_load.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 7, i32 4
  %11 = ptrtoint ptr %global_load.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %global_load.i.i, align 4
  %call1.i15 = tail call zeroext i1 @iwl_mvm_low_latency(ptr noundef %mvm) #10
  %call2.i16 = tail call fastcc i32 @_iwl_mvm_get_scan_type(ptr noundef %mvm, ptr noundef %vif, i32 noundef %12, i1 noundef zeroext %call1.i15) #10
  %13 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call2.i16, ptr %params, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_build_scan_probe(ptr nocapture noundef readonly %mvm, ptr nocapture noundef readonly %vif, ptr nocapture noundef readonly %ies, ptr noundef %params) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %preq = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13
  %buf = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13, i32 3
  %flags = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %cond.end

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

cond.end:                                         ; preds = %entry
  %mac_addr1 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 8
  %2 = ptrtoint ptr %mac_addr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_addr1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %cond.end.if.else_crit_edge, label %if.then

cond.end.if.else_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %sa = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13, i32 3, i32 10
  %mac_addr_mask = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 9
  %4 = ptrtoint ptr %mac_addr_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_addr_mask, align 4
  tail call void @get_random_bytes(ptr noundef %sa, i32 noundef 6) #10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %neg.i = xor i8 %7, -1
  %8 = ptrtoint ptr %sa to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sa, align 1
  %and.i = and i8 %9, %neg.i
  store i8 %and.i, ptr %sa, align 1
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %3, align 1
  %12 = load i8, ptr %5, align 1
  %and821.i = and i8 %12, %11
  %or22.i = or i8 %and821.i, %and.i
  store i8 %or22.i, ptr %sa, align 1
  %arrayidx.1.i = getelementptr i8, ptr %5, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.1.i, align 1
  %neg.1.i = xor i8 %14, -1
  %arrayidx1.1.i = getelementptr %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13, i32 3, i32 11
  %15 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx1.1.i, align 1
  %and.1.i = and i8 %16, %neg.1.i
  store i8 %and.1.i, ptr %arrayidx1.1.i, align 1
  %arrayidx4.1.i = getelementptr i8, ptr %3, i32 1
  %17 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx4.1.i, align 1
  %19 = load i8, ptr %arrayidx.1.i, align 1
  %and821.1.i = and i8 %19, %18
  %or22.1.i = or i8 %and821.1.i, %and.1.i
  store i8 %or22.1.i, ptr %arrayidx1.1.i, align 1
  %arrayidx.2.i = getelementptr i8, ptr %5, i32 2
  %20 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.2.i, align 1
  %neg.2.i = xor i8 %21, -1
  %arrayidx1.2.i = getelementptr %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13, i32 3, i32 12
  %22 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx1.2.i, align 1
  %and.2.i = and i8 %23, %neg.2.i
  store i8 %and.2.i, ptr %arrayidx1.2.i, align 1
  %arrayidx4.2.i = getelementptr i8, ptr %3, i32 2
  %24 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx4.2.i, align 1
  %26 = load i8, ptr %arrayidx.2.i, align 1
  %and821.2.i = and i8 %26, %25
  %or22.2.i = or i8 %and821.2.i, %and.2.i
  store i8 %or22.2.i, ptr %arrayidx1.2.i, align 1
  %arrayidx.3.i = getelementptr i8, ptr %5, i32 3
  %27 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.3.i, align 1
  %neg.3.i = xor i8 %28, -1
  %arrayidx1.3.i = getelementptr %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13, i32 3, i32 13
  %29 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx1.3.i, align 1
  %and.3.i = and i8 %30, %neg.3.i
  store i8 %and.3.i, ptr %arrayidx1.3.i, align 1
  %arrayidx4.3.i = getelementptr i8, ptr %3, i32 3
  %31 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx4.3.i, align 1
  %33 = load i8, ptr %arrayidx.3.i, align 1
  %and821.3.i = and i8 %33, %32
  %or22.3.i = or i8 %and821.3.i, %and.3.i
  store i8 %or22.3.i, ptr %arrayidx1.3.i, align 1
  %arrayidx.4.i = getelementptr i8, ptr %5, i32 4
  %34 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.4.i, align 1
  %neg.4.i = xor i8 %35, -1
  %arrayidx1.4.i = getelementptr %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13, i32 3, i32 14
  %36 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx1.4.i, align 1
  %and.4.i = and i8 %37, %neg.4.i
  store i8 %and.4.i, ptr %arrayidx1.4.i, align 1
  %arrayidx4.4.i = getelementptr i8, ptr %3, i32 4
  %38 = ptrtoint ptr %arrayidx4.4.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx4.4.i, align 1
  %40 = load i8, ptr %arrayidx.4.i, align 1
  %and821.4.i = and i8 %40, %39
  %or22.4.i = or i8 %and821.4.i, %and.4.i
  store i8 %or22.4.i, ptr %arrayidx1.4.i, align 1
  %arrayidx.5.i = getelementptr i8, ptr %5, i32 5
  %41 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.5.i, align 1
  %neg.5.i = xor i8 %42, -1
  %arrayidx1.5.i = getelementptr %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13, i32 3, i32 15
  %43 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx1.5.i, align 1
  %and.5.i = and i8 %44, %neg.5.i
  store i8 %and.5.i, ptr %arrayidx1.5.i, align 1
  %arrayidx4.5.i = getelementptr i8, ptr %3, i32 5
  %45 = ptrtoint ptr %arrayidx4.5.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx4.5.i, align 1
  %47 = load i8, ptr %arrayidx.5.i, align 1
  %and821.5.i = and i8 %47, %46
  %or22.5.i = or i8 %and821.5.i, %and.5.i
  store i8 %or22.5.i, ptr %arrayidx1.5.i, align 1
  br label %if.end

if.else:                                          ; preds = %cond.end.if.else_crit_edge, %entry.if.else_crit_edge
  %sa4 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13, i32 3, i32 10
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %48 = call ptr @memcpy(ptr %sa4, ptr %addr, i32 6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %49 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 16384, ptr %buf, align 2
  %da = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13, i32 3, i32 4
  %50 = call ptr @memset(ptr %da, i32 255, i32 6)
  %bssid = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13, i32 3, i32 16
  %51 = call ptr @memset(ptr %bssid, i32 255, i32 6)
  %seq_ctrl = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13, i32 3, i32 22
  %incdec.ptr10 = getelementptr %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13, i32 3, i32 26
  %52 = ptrtoint ptr %preq to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %preq, align 4
  %len = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13, i32 0, i32 1
  %53 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 0, ptr %seq_ctrl, align 2
  %54 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 6656, ptr %len, align 2
  %55 = ptrtoint ptr %ies to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ies, align 4
  %len15 = getelementptr inbounds %struct.ieee80211_scan_ies, ptr %ies, i32 0, i32 1
  %57 = ptrtoint ptr %len15 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len15, align 4
  %fw.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %59 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fw.i.i, align 8
  %_capa.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %60, i32 0, i32 5, i32 8
  %61 = ptrtoint ptr %_capa.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %_capa.i.i.i, align 4
  %63 = and i32 %62, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.i.i.not.i = icmp eq i32 %63, 0
  br i1 %tobool.i.i.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %64 = call ptr @memcpy(ptr %incdec.ptr10, ptr %56, i32 %58)
  %add.ptr.i = getelementptr i8, ptr %incdec.ptr10, i32 %58
  br label %iwl_mvm_copy_and_insert_ds_elem.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 @ieee80211_ie_split_ric(ptr noundef %56, i32 noundef %58, ptr noundef nonnull @iwl_mvm_copy_and_insert_ds_elem.before_ds_params, i32 noundef 4, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %65 = call ptr @memcpy(ptr %incdec.ptr10, ptr %56, i32 %call.i.i)
  %add.ptr2.i = getelementptr i8, ptr %incdec.ptr10, i32 %call.i.i
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr2.i, i32 1
  %66 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 3, ptr %add.ptr2.i, align 1
  %incdec.ptr3.i = getelementptr i8, ptr %incdec.ptr.i, i32 1
  %67 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %incdec.ptr.i, align 1
  %incdec.ptr4.i = getelementptr i8, ptr %incdec.ptr3.i, i32 1
  %68 = ptrtoint ptr %incdec.ptr3.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %incdec.ptr3.i, align 1
  %add.ptr5.i = getelementptr i8, ptr %56, i32 %call.i.i
  %sub.i = sub i32 %58, %call.i.i
  %69 = call ptr @memcpy(ptr %incdec.ptr4.i, ptr %add.ptr5.i, i32 %sub.i)
  %add.ptr7.i = getelementptr i8, ptr %incdec.ptr4.i, i32 %sub.i
  br label %iwl_mvm_copy_and_insert_ds_elem.exit

iwl_mvm_copy_and_insert_ds_elem.exit:             ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr7.i, %if.end.i ], [ %add.ptr.i, %if.then.i ]
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr10 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %band_data = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13, i32 1
  %70 = ptrtoint ptr %band_data to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 6656, ptr %band_data, align 4
  %sub.ptr.lhs.cast23 = ptrtoint ptr %retval.0.i to i32
  %sub.ptr.sub25 = sub i32 %sub.ptr.lhs.cast23, %sub.ptr.lhs.cast
  %conv26 = trunc i32 %sub.ptr.sub25 to i16
  %71 = tail call i16 @llvm.bswap.i16(i16 %conv26)
  %len30 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13, i32 1, i32 0, i32 1
  %72 = ptrtoint ptr %len30 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %len30, align 2
  %arrayidx32 = getelementptr [6 x ptr], ptr %ies, i32 0, i32 1
  %73 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx32, align 4
  %arrayidx34 = getelementptr %struct.ieee80211_scan_ies, ptr %ies, i32 0, i32 1, i32 1
  %75 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx34, align 4
  %77 = call ptr @memcpy(ptr %retval.0.i, ptr %74, i32 %76)
  %sub.ptr.sub40 = sub i32 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast
  %conv41 = trunc i32 %sub.ptr.sub40 to i16
  %78 = tail call i16 @llvm.bswap.i16(i16 %conv41)
  %arrayidx44 = getelementptr %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13, i32 1, i32 1
  %79 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %arrayidx44, align 4
  %80 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx34, align 4
  %conv48 = trunc i32 %81 to i16
  %82 = tail call i16 @llvm.bswap.i16(i16 %conv48)
  %len52 = getelementptr %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13, i32 1, i32 1, i32 1
  %83 = ptrtoint ptr %len52 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %len52, align 2
  %84 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx34, align 4
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 %85
  %arrayidx56 = getelementptr [6 x ptr], ptr %ies, i32 0, i32 3
  %86 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx56, align 4
  %arrayidx58 = getelementptr %struct.ieee80211_scan_ies, ptr %ies, i32 0, i32 1, i32 3
  %88 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx58, align 4
  %90 = call ptr @memcpy(ptr %add.ptr, ptr %87, i32 %89)
  %sub.ptr.lhs.cast62 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub64 = sub i32 %sub.ptr.lhs.cast62, %sub.ptr.rhs.cast
  %conv65 = trunc i32 %sub.ptr.sub64 to i16
  %91 = tail call i16 @llvm.bswap.i16(i16 %conv65)
  %arrayidx68 = getelementptr %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13, i32 1, i32 2
  %92 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %arrayidx68, align 4
  %93 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx58, align 4
  %conv72 = trunc i32 %94 to i16
  %95 = tail call i16 @llvm.bswap.i16(i16 %conv72)
  %len76 = getelementptr %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13, i32 1, i32 2, i32 1
  %96 = ptrtoint ptr %len76 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %len76, align 2
  %97 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx58, align 4
  %add.ptr79 = getelementptr i8, ptr %add.ptr, i32 %98
  %common_ies = getelementptr inbounds %struct.ieee80211_scan_ies, ptr %ies, i32 0, i32 2
  %99 = ptrtoint ptr %common_ies to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %common_ies, align 4
  %common_ie_len = getelementptr inbounds %struct.ieee80211_scan_ies, ptr %ies, i32 0, i32 3
  %101 = ptrtoint ptr %common_ie_len to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %common_ie_len, align 4
  %103 = call ptr @memcpy(ptr %add.ptr79, ptr %100, i32 %102)
  %sub.ptr.lhs.cast83 = ptrtoint ptr %add.ptr79 to i32
  %sub.ptr.sub85 = sub i32 %sub.ptr.lhs.cast83, %sub.ptr.rhs.cast
  %conv86 = trunc i32 %sub.ptr.sub85 to i16
  %104 = tail call i16 @llvm.bswap.i16(i16 %conv86)
  %common_data = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13, i32 2
  %105 = ptrtoint ptr %common_data to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %104, ptr %common_data, align 4
  %106 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %fw.i.i, align 8
  %_capa.i.i = getelementptr inbounds %struct.iwl_fw, ptr %107, i32 0, i32 5, i32 8
  %108 = ptrtoint ptr %_capa.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %_capa.i.i, align 4
  %110 = and i32 %109, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.i.i.not = icmp eq i32 %110, 0
  br i1 %tobool.i.i.not, label %iwl_mvm_copy_and_insert_ds_elem.exit.if.else100_crit_edge, label %land.lhs.true

iwl_mvm_copy_and_insert_ds_elem.exit.if.else100_crit_edge: ; preds = %iwl_mvm_copy_and_insert_ds_elem.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else100

land.lhs.true:                                    ; preds = %iwl_mvm_copy_and_insert_ds_elem.exit
  %111 = ptrtoint ptr %_capa.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %_capa.i.i, align 4
  %113 = and i32 %112, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool.i.not = icmp eq i32 %113, 0
  br i1 %tobool.i.not, label %if.then92, label %land.lhs.true.if.else100_crit_edge

land.lhs.true.if.else100_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else100

if.then92:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %114 = ptrtoint ptr %common_ie_len to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %common_ie_len, align 4
  %add.ptr94 = getelementptr i8, ptr %add.ptr79, i32 %115
  %116 = ptrtoint ptr %add.ptr94 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 -35, ptr %add.ptr94, align 1
  %arrayidx1.i = getelementptr i8, ptr %add.ptr94, i32 1
  %117 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 7, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %add.ptr94, i32 2
  %118 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %arrayidx2.i, align 1
  %arrayidx3.i = getelementptr i8, ptr %add.ptr94, i32 3
  %119 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 80, ptr %arrayidx3.i, align 1
  %arrayidx4.i = getelementptr i8, ptr %add.ptr94, i32 4
  %120 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 -14, ptr %arrayidx4.i, align 1
  %arrayidx5.i = getelementptr i8, ptr %add.ptr94, i32 5
  %121 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 8, ptr %arrayidx5.i, align 1
  %arrayidx6.i = getelementptr i8, ptr %add.ptr94, i32 6
  %122 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %arrayidx6.i, align 1
  %arrayidx7.i = getelementptr i8, ptr %add.ptr94, i32 7
  %123 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %arrayidx7.i, align 1
  %arrayidx8.i = getelementptr i8, ptr %add.ptr94, i32 8
  %124 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %arrayidx8.i, align 1
  %125 = load i32, ptr %common_ie_len, align 4
  %126 = trunc i32 %125 to i16
  %conv96 = add i16 %126, 9
  br label %if.end106

if.else100:                                       ; preds = %land.lhs.true.if.else100_crit_edge, %iwl_mvm_copy_and_insert_ds_elem.exit.if.else100_crit_edge
  %127 = ptrtoint ptr %common_ie_len to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %common_ie_len, align 4
  %conv102 = trunc i32 %128 to i16
  br label %if.end106

if.end106:                                        ; preds = %if.else100, %if.then92
  %conv102.sink = phi i16 [ %conv102, %if.else100 ], [ %conv96, %if.then92 ]
  %129 = tail call i16 @llvm.bswap.i16(i16 %conv102.sink)
  %len105 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13, i32 2, i32 1
  %130 = ptrtoint ptr %len105 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %129, ptr %len105, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_build_scan_cmd(ptr noundef %mvm, ptr noundef %vif, ptr nocapture noundef writeonly %hcmd, ptr noundef %params, i32 noundef %type) unnamed_addr #2 align 64 {
entry:
  %ssid_bitmap.i79 = alloca i32, align 4
  %ssid_bitmap.i = alloca i32, align 4
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
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !148

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2578, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %scan_cmd = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 49
  %1 = ptrtoint ptr %scan_cmd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %scan_cmd, align 8
  %call25 = tail call i32 @ksize(ptr noundef %2) #10
  %3 = call ptr @memset(ptr %2, i32 0, i32 %call25)
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw, align 8
  %_capa.i = getelementptr inbounds %struct.iwl_fw, ptr %5, i32 0, i32 5, i32 8
  %6 = ptrtoint ptr %_capa.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %_capa.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end
  %id = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 5
  %9 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 81, ptr %id, align 4
  %10 = ptrtoint ptr %scan_cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scan_cmd, align 8
  %data.i = getelementptr inbounds %struct.iwl_scan_req_lmac, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw, align 8
  %n_scan_channels.i = getelementptr inbounds %struct.iwl_fw, ptr %13, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %n_scan_channels.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_scan_channels.i, align 4
  %mul.i = mul i32 %15, 12
  %add.ptr.i = getelementptr i8, ptr %data.i, i32 %mul.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ssid_bitmap.i) #10
  %16 = ptrtoint ptr %ssid_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %ssid_bitmap.i, align 4
  %n_scan_plans.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 15
  %17 = ptrtoint ptr %n_scan_plans.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_scan_plans.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.i = icmp sgt i32 %18, 2
  br i1 %cmp.i, label %do.end.i, label %if.end21.i, !prof !148

do.end.i:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 946, i32 noundef 9, ptr noundef null) #10
  br label %iwl_mvm_scan_lmac.exit

if.end21.i:                                       ; preds = %if.then27
  %active_dwell.i.i = getelementptr inbounds %struct.iwl_scan_req_lmac, ptr %11, i32 0, i32 2
  %19 = ptrtoint ptr %active_dwell.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 10, ptr %active_dwell.i.i, align 1
  %passive_dwell.i.i = getelementptr inbounds %struct.iwl_scan_req_lmac, ptr %11, i32 0, i32 3
  %20 = ptrtoint ptr %passive_dwell.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 110, ptr %passive_dwell.i.i, align 1
  %fragmented_dwell.i.i = getelementptr inbounds %struct.iwl_scan_req_lmac, ptr %11, i32 0, i32 4
  %21 = ptrtoint ptr %fragmented_dwell.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 44, ptr %fragmented_dwell.i.i, align 1
  %extended_dwell.i.i = getelementptr inbounds %struct.iwl_scan_req_lmac, ptr %11, i32 0, i32 5
  %22 = ptrtoint ptr %extended_dwell.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 90, ptr %extended_dwell.i.i, align 1
  %23 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %params, align 4
  %max_out_time.i.i = getelementptr [6 x %struct.iwl_mvm_scan_timing_params], ptr @scan_timing, i32 0, i32 %24, i32 1
  %25 = ptrtoint ptr %max_out_time.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_out_time.i.i, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #10
  %max_out_time1.i.i = getelementptr inbounds %struct.iwl_scan_req_lmac, ptr %11, i32 0, i32 9
  %28 = ptrtoint ptr %max_out_time1.i.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %max_out_time1.i.i, align 1
  %29 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %params, align 4
  %arrayidx3.i.i = getelementptr [6 x %struct.iwl_mvm_scan_timing_params], ptr @scan_timing, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx3.i.i, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #10
  %suspend_time4.i.i = getelementptr inbounds %struct.iwl_scan_req_lmac, ptr %11, i32 0, i32 10
  %34 = ptrtoint ptr %suspend_time4.i.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %suspend_time4.i.i, align 1
  %scan_prio.i.i = getelementptr inbounds %struct.iwl_scan_req_lmac, ptr %11, i32 0, i32 15
  %35 = ptrtoint ptr %scan_prio.i.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 100663296, ptr %scan_prio.i.i, align 1
  %scan_rx_ant.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 60
  %36 = ptrtoint ptr %scan_rx_ant.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %scan_rx_ant.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp.not.i.i.i = icmp eq i8 %37, 0
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.end21.i.iwl_mvm_scan_rx_chain.exit.i_crit_edge

if.end21.i.iwl_mvm_scan_rx_chain.exit.i_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_rx_chain.exit.i

if.end.i.i.i:                                     ; preds = %if.end21.i
  %nvm_data.i.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %38 = ptrtoint ptr %nvm_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %nvm_data.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.cond.false.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end.i.i.i.cond.false.i.i.i.i_crit_edge:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i.i
  %valid_rx_ant.i.i.i.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %39, i32 0, i32 21
  %40 = ptrtoint ptr %valid_rx_ant.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %valid_rx_ant.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool2.not.i.i.i.i = icmp eq i8 %41, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.cond.false.i.i.i.i_crit_edge, label %cond.true.i.i.i.i

land.lhs.true.i.i.i.i.cond.false.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false.i.i.i.i

cond.true.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fw, align 8
  %valid_rx_ant3.i.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %43, i32 0, i32 16
  %44 = ptrtoint ptr %valid_rx_ant3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %valid_rx_ant3.i.i.i.i, align 1
  %and.i.i.i.i = and i8 %45, %41
  br label %iwl_mvm_scan_rx_chain.exit.i

cond.false.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.cond.false.i.i.i.i_crit_edge, %if.end.i.i.i.cond.false.i.i.i.i_crit_edge
  %46 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fw, align 8
  %valid_rx_ant9.i.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %valid_rx_ant9.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %valid_rx_ant9.i.i.i.i, align 1
  br label %iwl_mvm_scan_rx_chain.exit.i

iwl_mvm_scan_rx_chain.exit.i:                     ; preds = %cond.false.i.i.i.i, %cond.true.i.i.i.i, %if.end21.i.iwl_mvm_scan_rx_chain.exit.i_crit_edge
  %retval.0.i.i.i = phi i8 [ %37, %if.end21.i.iwl_mvm_scan_rx_chain.exit.i_crit_edge ], [ %and.i.i.i.i, %cond.true.i.i.i.i ], [ %49, %cond.false.i.i.i.i ]
  %conv.i.i = zext i8 %retval.0.i.i.i to i32
  %conv1.i.i = shl nuw nsw i32 %conv.i.i, 1
  %shl3.i.i = shl nuw nsw i32 %conv.i.i, 7
  %or.i.i = or i32 %conv1.i.i, %shl3.i.i
  %shl7.i.i = shl nuw nsw i32 %conv.i.i, 4
  %or9.i.i = or i32 %or.i.i, %shl7.i.i
  %50 = trunc i32 %or9.i.i to i16
  %conv13.i.i = or i16 %50, 1
  %51 = tail call i16 @llvm.bswap.i16(i16 %conv13.i.i) #10
  %rx_chain_select.i = getelementptr inbounds %struct.iwl_scan_req_lmac, ptr %11, i32 0, i32 7
  %52 = ptrtoint ptr %rx_chain_select.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 %51, ptr %rx_chain_select.i, align 1
  %iter_num.i = getelementptr inbounds %struct.iwl_scan_req_lmac, ptr %11, i32 0, i32 16
  %53 = ptrtoint ptr %iter_num.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 16777216, ptr %iter_num.i, align 1
  %n_channels.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 2
  %54 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %n_channels.i, align 4
  %conv.i = trunc i32 %55 to i8
  %n_channels22.i = getelementptr inbounds %struct.iwl_scan_req_lmac, ptr %11, i32 0, i32 1
  %56 = ptrtoint ptr %n_channels22.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv.i, ptr %n_channels22.i, align 1
  %delay.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 3
  %57 = ptrtoint ptr %delay.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %delay.i, align 4
  %conv23.i = zext i16 %58 to i32
  %59 = tail call i32 @llvm.bswap.i32(i32 %conv23.i) #10
  %delay24.i = getelementptr inbounds %struct.iwl_scan_req_lmac, ptr %11, i32 0, i32 17
  %60 = ptrtoint ptr %delay24.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %59, ptr %delay24.i, align 1
  %n_ssids.i.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 4
  %61 = ptrtoint ptr %n_ssids.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %n_ssids.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp.i.i = icmp eq i32 %62, 0
  %spec.select.i.i = select i1 %cmp.i.i, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp2.i.i = icmp eq i32 %62, 1
  br i1 %cmp2.i.i, label %land.lhs.true.i.i, label %iwl_mvm_scan_rx_chain.exit.i.if.end7.i.i_crit_edge

iwl_mvm_scan_rx_chain.exit.i.if.end7.i.i_crit_edge: ; preds = %iwl_mvm_scan_rx_chain.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i

land.lhs.true.i.i:                                ; preds = %iwl_mvm_scan_rx_chain.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %ssids.i.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 5
  %63 = ptrtoint ptr %ssids.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ssids.i.i, align 4
  %ssid_len.i.i = getelementptr inbounds %struct.cfg80211_ssid, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %ssid_len.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %ssid_len.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp3.not.i.i = icmp eq i8 %66, 0
  %or6.i.i = or i32 %spec.select.i.i, 4
  %spec.select62.i.i = select i1 %cmp3.not.i.i, i32 %spec.select.i.i, i32 %or6.i.i
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %land.lhs.true.i.i, %iwl_mvm_scan_rx_chain.exit.i.if.end7.i.i_crit_edge
  %flags.1.i.i = phi i32 [ %spec.select.i.i, %iwl_mvm_scan_rx_chain.exit.i.if.end7.i.i_crit_edge ], [ %spec.select62.i.i, %land.lhs.true.i.i ]
  %67 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %params, align 4
  %69 = and i32 %68, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %69)
  %70 = icmp eq i32 %69, 4
  %or9.i124.i = or i32 %flags.1.i.i, 32
  %spec.select63.i.i = select i1 %70, i32 %or9.i124.i, i32 %flags.1.i.i
  %71 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %fw, align 8
  %_capa.i.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %72, i32 0, i32 5, i32 8
  %73 = ptrtoint ptr %_capa.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %_capa.i.i.i.i, align 4
  %75 = and i32 %74, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.i.i.not.i.i = icmp eq i32 %75, 0
  br i1 %tobool.i.i.not.i.i, label %if.end7.i.i.if.end18.i.i_crit_edge, label %land.lhs.true13.i.i

if.end7.i.i.if.end18.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i.i

land.lhs.true13.i.i:                              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %_capa.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %_capa.i.i.i.i, align 4
  %78 = lshr i32 %77, 4
  %79 = and i32 %78, 64
  %80 = or i32 %79, %spec.select63.i.i
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %land.lhs.true13.i.i, %if.end7.i.i.if.end18.i.i_crit_edge
  %flags.3.i.i = phi i32 [ %spec.select63.i.i, %if.end7.i.i.if.end18.i.i_crit_edge ], [ %80, %land.lhs.true13.i.i ]
  %pass_all.i.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 11
  %81 = ptrtoint ptr %pass_all.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %pass_all.i.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i.i = icmp eq i8 %82, 0
  %flags.4.v.i.i = select i1 %tobool.not.i.i, i32 512, i32 1
  %flags.4.i.i = or i32 %flags.4.v.i.i, %flags.3.i.i
  %scan_iter_notif_enabled.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 76
  %83 = ptrtoint ptr %scan_iter_notif_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %scan_iter_notif_enabled.i.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool23.not.i.i = icmp eq i8 %84, 0
  %or25.i.i = or i32 %flags.4.i.i, 8
  %flags.5.i.i = select i1 %tobool23.not.i.i, i32 %flags.4.i.i, i32 %or25.i.i
  %sched_scan_pass_all.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 53
  %85 = ptrtoint ptr %sched_scan_pass_all.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sched_scan_pass_all.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %86)
  %cmp27.i.i = icmp eq i32 %86, 1
  %flags.6.i.i = select i1 %cmp27.i.i, i32 %or25.i.i, i32 %flags.5.i.i
  %87 = ptrtoint ptr %n_scan_plans.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %n_scan_plans.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %88)
  %cmp.i.i.i = icmp eq i32 %88, 1
  br i1 %cmp.i.i.i, label %iwl_mvm_is_regular_scan.exit.i.i, label %if.end18.i.i.iwl_mvm_scan_lmac_flags.exit.i_crit_edge

if.end18.i.i.iwl_mvm_scan_lmac_flags.exit.i_crit_edge: ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_lmac_flags.exit.i

iwl_mvm_is_regular_scan.exit.i.i:                 ; preds = %if.end18.i.i
  %scan_plans.i.i.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 16
  %89 = ptrtoint ptr %scan_plans.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %scan_plans.i.i.i, align 4
  %iterations.i.i.i = getelementptr inbounds %struct.cfg80211_sched_scan_plan, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %iterations.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %iterations.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %92)
  %cmp1.i.i.i = icmp eq i32 %92, 1
  br i1 %cmp1.i.i.i, label %land.lhs.true34.i.i, label %iwl_mvm_is_regular_scan.exit.i.i.iwl_mvm_scan_lmac_flags.exit.i_crit_edge

iwl_mvm_is_regular_scan.exit.i.i.iwl_mvm_scan_lmac_flags.exit.i_crit_edge: ; preds = %iwl_mvm_is_regular_scan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_lmac_flags.exit.i

land.lhs.true34.i.i:                              ; preds = %iwl_mvm_is_regular_scan.exit.i.i
  %93 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %94)
  %cmp36.not.i.i = icmp eq i32 %94, 10
  br i1 %cmp36.not.i.i, label %land.lhs.true34.i.i.iwl_mvm_scan_lmac_flags.exit.i_crit_edge, label %land.lhs.true38.i.i

land.lhs.true34.i.i.iwl_mvm_scan_lmac_flags.exit.i_crit_edge: ; preds = %land.lhs.true34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_lmac_flags.exit.i

land.lhs.true38.i.i:                              ; preds = %land.lhs.true34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or42.i.i = or i32 %flags.6.i.i, 128
  %spec.select65.i.i = select i1 %70, i32 %flags.6.i.i, i32 %or42.i.i
  br label %iwl_mvm_scan_lmac_flags.exit.i

iwl_mvm_scan_lmac_flags.exit.i:                   ; preds = %land.lhs.true38.i.i, %land.lhs.true34.i.i.iwl_mvm_scan_lmac_flags.exit.i_crit_edge, %iwl_mvm_is_regular_scan.exit.i.i.iwl_mvm_scan_lmac_flags.exit.i_crit_edge, %if.end18.i.i.iwl_mvm_scan_lmac_flags.exit.i_crit_edge
  %flags.7.i.i = phi i32 [ %flags.6.i.i, %land.lhs.true34.i.i.iwl_mvm_scan_lmac_flags.exit.i_crit_edge ], [ %flags.6.i.i, %iwl_mvm_is_regular_scan.exit.i.i.iwl_mvm_scan_lmac_flags.exit.i_crit_edge ], [ %spec.select65.i.i, %land.lhs.true38.i.i ], [ %flags.6.i.i, %if.end18.i.i.iwl_mvm_scan_lmac_flags.exit.i_crit_edge ]
  %95 = tail call i32 @llvm.bswap.i32(i32 %flags.7.i.i) #10
  %scan_flags.i = getelementptr inbounds %struct.iwl_scan_req_lmac, ptr %11, i32 0, i32 8
  %96 = ptrtoint ptr %scan_flags.i to i32
  call void @__asan_storeN_noabort(i32 %96, i32 4)
  store i32 %95, ptr %scan_flags.i, align 1
  %channels.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 6
  %97 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %channels.i, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %100, align 4
  %103 = zext i32 %102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %102, label %land.end.i.i [
    i32 0, label %iwl_mvm_scan_lmac_flags.exit.i.iwl_mvm_phy_band_from_nl80211.exit.i_crit_edge
    i32 1, label %sw.bb1.i.i
    i32 3, label %sw.bb2.i.i
  ]

iwl_mvm_scan_lmac_flags.exit.i.iwl_mvm_phy_band_from_nl80211.exit.i_crit_edge: ; preds = %iwl_mvm_scan_lmac_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_phy_band_from_nl80211.exit.i

sw.bb1.i.i:                                       ; preds = %iwl_mvm_scan_lmac_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_phy_band_from_nl80211.exit.i

sw.bb2.i.i:                                       ; preds = %iwl_mvm_scan_lmac_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_phy_band_from_nl80211.exit.i

land.end.i.i:                                     ; preds = %iwl_mvm_scan_lmac_flags.exit.i
  %.b38.i.i = load i1, ptr @iwl_mvm_phy_band_from_nl80211.__already_done, align 1
  br i1 %.b38.i.i, label %land.end.i.i.iwl_mvm_phy_band_from_nl80211.exit.i_crit_edge, label %if.then.i.i, !prof !147

land.end.i.i.iwl_mvm_phy_band_from_nl80211.exit.i_crit_edge: ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_phy_band_from_nl80211.exit.i

if.then.i.i:                                      ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_phy_band_from_nl80211.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 2099, i32 noundef 9, ptr noundef nonnull @.str.43, i32 noundef %102) #10
  br label %iwl_mvm_phy_band_from_nl80211.exit.i

iwl_mvm_phy_band_from_nl80211.exit.i:             ; preds = %if.then.i.i, %land.end.i.i.iwl_mvm_phy_band_from_nl80211.exit.i_crit_edge, %sw.bb2.i.i, %sw.bb1.i.i, %iwl_mvm_scan_lmac_flags.exit.i.iwl_mvm_phy_band_from_nl80211.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 33554432, %sw.bb2.i.i ], [ 0, %sw.bb1.i.i ], [ 16777216, %iwl_mvm_scan_lmac_flags.exit.i.iwl_mvm_phy_band_from_nl80211.exit.i_crit_edge ], [ 0, %if.then.i.i ], [ 0, %land.end.i.i.iwl_mvm_phy_band_from_nl80211.exit.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.iwl_scan_req_lmac, ptr %11, i32 0, i32 11
  %104 = ptrtoint ptr %flags.i to i32
  call void @__asan_storeN_noabort(i32 %104, i32 4)
  store i32 %retval.0.i.i, ptr %flags.i, align 1
  %filter_flags.i = getelementptr inbounds %struct.iwl_scan_req_lmac, ptr %11, i32 0, i32 12
  %105 = ptrtoint ptr %filter_flags.i to i32
  call void @__asan_storeN_noabort(i32 %105, i32 4)
  store i32 1140850688, ptr %filter_flags.i, align 1
  %tx_cmd.i = getelementptr inbounds %struct.iwl_scan_req_lmac, ptr %11, i32 0, i32 13
  %no_cck.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 10
  %106 = ptrtoint ptr %no_cck.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %no_cck.i, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool30.not.i = icmp eq i8 %107, 0
  %108 = ptrtoint ptr %tx_cmd.i to i32
  call void @__asan_storeN_noabort(i32 %108, i32 4)
  store i32 3145728, ptr %tx_cmd.i, align 1
  %nvm_data.i.i.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %109 = ptrtoint ptr %nvm_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %nvm_data.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i = icmp eq ptr %110, null
  br i1 %tobool.not.i.i.i.i.i, label %iwl_mvm_phy_band_from_nl80211.exit.i.cond.false.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

iwl_mvm_phy_band_from_nl80211.exit.i.cond.false.i.i.i.i.i_crit_edge: ; preds = %iwl_mvm_phy_band_from_nl80211.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %iwl_mvm_phy_band_from_nl80211.exit.i
  %valid_tx_ant.i.i.i.i.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %110, i32 0, i32 20
  %111 = ptrtoint ptr %valid_tx_ant.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %valid_tx_ant.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool2.not.i.i.i.i.i = icmp eq i8 %112, 0
  br i1 %tobool2.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.cond.false.i.i.i.i.i_crit_edge, label %cond.true.i.i.i.i.i

land.lhs.true.i.i.i.i.i.cond.false.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false.i.i.i.i.i

cond.true.i.i.i.i.i:                              ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %113 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %fw, align 8
  %valid_tx_ant3.i.i.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %114, i32 0, i32 15
  %115 = ptrtoint ptr %valid_tx_ant3.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %valid_tx_ant3.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i8 %116, %112
  br label %iwl_mvm_scan_rate_n_flags.exit.i.i

cond.false.i.i.i.i.i:                             ; preds = %land.lhs.true.i.i.i.i.i.cond.false.i.i.i.i.i_crit_edge, %iwl_mvm_phy_band_from_nl80211.exit.i.cond.false.i.i.i.i.i_crit_edge
  %117 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %fw, align 8
  %valid_tx_ant9.i.i.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %118, i32 0, i32 15
  %119 = ptrtoint ptr %valid_tx_ant9.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %valid_tx_ant9.i.i.i.i.i, align 4
  br label %iwl_mvm_scan_rate_n_flags.exit.i.i

iwl_mvm_scan_rate_n_flags.exit.i.i:               ; preds = %cond.false.i.i.i.i.i, %cond.true.i.i.i.i.i
  %cond.i.i.i.i.i = phi i8 [ %and.i.i.i.i.i, %cond.true.i.i.i.i.i ], [ %120, %cond.false.i.i.i.i.i ]
  %scan_last_antenna_idx.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 65
  %121 = ptrtoint ptr %scan_last_antenna_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %scan_last_antenna_idx.i.i.i, align 1
  %call1.i.i.i.i = tail call zeroext i8 @iwl_mvm_next_antenna(ptr noundef %mvm, i8 noundef zeroext %cond.i.i.i.i.i, i8 noundef zeroext %122) #10
  %123 = ptrtoint ptr %scan_last_antenna_idx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %call1.i.i.i.i, ptr %scan_last_antenna_idx.i.i.i, align 1
  %conv.i.i.i = zext i8 %call1.i.i.i.i to i32
  %shl2.i.i.i = shl i32 16384, %conv.i.i.i
  %or4.i.i.i = or i32 %shl2.i.i.i, 13
  %124 = tail call i32 @llvm.bswap.i32(i32 %or4.i.i.i) #10
  %or.i.i.i = or i32 %shl2.i.i.i, 522
  %125 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #10
  %retval.0.i.i125.i = select i1 %tobool30.not.i, i32 %125, i32 %124
  %rate_n_flags.i.i = getelementptr inbounds %struct.iwl_scan_req_lmac, ptr %11, i32 0, i32 13, i32 0, i32 1
  %126 = ptrtoint ptr %rate_n_flags.i.i to i32
  call void @__asan_storeN_noabort(i32 %126, i32 4)
  store i32 %retval.0.i.i125.i, ptr %rate_n_flags.i.i, align 1
  %127 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %fw, align 8
  %call2.i.i = tail call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %128, i8 noundef zeroext 1, i8 noundef zeroext 24, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %call2.i.i)
  %cmp.i126.i = icmp ult i8 %call2.i.i, 12
  br i1 %cmp.i126.i, label %if.then.i127.i, label %if.else.i.i

if.then.i127.i:                                   ; preds = %iwl_mvm_scan_rate_n_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %aux_sta.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 62
  %129 = ptrtoint ptr %aux_sta.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %aux_sta.i.i, align 8
  %conv4.i.i = trunc i32 %130 to i8
  %sta_id6.i.i = getelementptr inbounds %struct.iwl_scan_req_lmac, ptr %11, i32 0, i32 13, i32 0, i32 2
  %131 = ptrtoint ptr %sta_id6.i.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv4.i.i, ptr %sta_id6.i.i, align 1
  %132 = load i32, ptr %aux_sta.i.i, align 8
  %conv9.i.i = trunc i32 %132 to i8
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %iwl_mvm_scan_rate_n_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sta_id13.i.i = getelementptr inbounds %struct.iwl_scan_req_lmac, ptr %11, i32 0, i32 13, i32 0, i32 2
  %133 = ptrtoint ptr %sta_id13.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 -1, ptr %sta_id13.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i127.i
  %.sink.i.i = phi i8 [ %conv9.i.i, %if.then.i127.i ], [ -1, %if.else.i.i ]
  %134 = getelementptr %struct.iwl_scan_req_lmac, ptr %11, i32 0, i32 13, i32 1, i32 2
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %.sink.i.i, ptr %134, align 1
  %arrayidx16.i.i = getelementptr %struct.iwl_scan_req_lmac, ptr %11, i32 0, i32 13, i32 1
  %136 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_storeN_noabort(i32 %136, i32 4)
  store i32 3145728, ptr %arrayidx16.i.i, align 1
  %137 = ptrtoint ptr %nvm_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %nvm_data.i.i.i.i.i, align 8
  %tobool.not.i.i.i35.i.i = icmp eq ptr %138, null
  br i1 %tobool.not.i.i.i35.i.i, label %if.end.i.i.cond.false.i.i.i45.i.i_crit_edge, label %land.lhs.true.i.i.i38.i.i

if.end.i.i.cond.false.i.i.i45.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false.i.i.i45.i.i

land.lhs.true.i.i.i38.i.i:                        ; preds = %if.end.i.i
  %valid_tx_ant.i.i.i36.i.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %138, i32 0, i32 20
  %139 = ptrtoint ptr %valid_tx_ant.i.i.i36.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %valid_tx_ant.i.i.i36.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool2.not.i.i.i37.i.i = icmp eq i8 %140, 0
  br i1 %tobool2.not.i.i.i37.i.i, label %land.lhs.true.i.i.i38.i.i.cond.false.i.i.i45.i.i_crit_edge, label %cond.true.i.i.i42.i.i

land.lhs.true.i.i.i38.i.i.cond.false.i.i.i45.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false.i.i.i45.i.i

cond.true.i.i.i42.i.i:                            ; preds = %land.lhs.true.i.i.i38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %141 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %fw, align 8
  %valid_tx_ant3.i.i.i40.i.i = getelementptr inbounds %struct.iwl_fw, ptr %142, i32 0, i32 15
  %143 = ptrtoint ptr %valid_tx_ant3.i.i.i40.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %valid_tx_ant3.i.i.i40.i.i, align 4
  %and.i.i.i41.i.i = and i8 %144, %140
  br label %iwl_mvm_scan_fill_tx_cmd.exit.i

cond.false.i.i.i45.i.i:                           ; preds = %land.lhs.true.i.i.i38.i.i.cond.false.i.i.i45.i.i_crit_edge, %if.end.i.i.cond.false.i.i.i45.i.i_crit_edge
  %145 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %fw, align 8
  %valid_tx_ant9.i.i.i44.i.i = getelementptr inbounds %struct.iwl_fw, ptr %146, i32 0, i32 15
  %147 = ptrtoint ptr %valid_tx_ant9.i.i.i44.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %valid_tx_ant9.i.i.i44.i.i, align 4
  br label %iwl_mvm_scan_fill_tx_cmd.exit.i

iwl_mvm_scan_fill_tx_cmd.exit.i:                  ; preds = %cond.false.i.i.i45.i.i, %cond.true.i.i.i42.i.i
  %cond.i.i.i46.i.i = phi i8 [ %and.i.i.i41.i.i, %cond.true.i.i.i42.i.i ], [ %148, %cond.false.i.i.i45.i.i ]
  %149 = ptrtoint ptr %scan_last_antenna_idx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %scan_last_antenna_idx.i.i.i, align 1
  %call1.i.i48.i.i = tail call zeroext i8 @iwl_mvm_next_antenna(ptr noundef %mvm, i8 noundef zeroext %cond.i.i.i46.i.i, i8 noundef zeroext %150) #10
  %151 = ptrtoint ptr %scan_last_antenna_idx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %call1.i.i48.i.i, ptr %scan_last_antenna_idx.i.i.i, align 1
  %conv.i49.i.i = zext i8 %call1.i.i48.i.i to i32
  %shl2.i50.i.i = shl i32 16384, %conv.i49.i.i
  %or4.i51.i.i = or i32 %shl2.i50.i.i, 13
  %152 = tail call i32 @llvm.bswap.i32(i32 %or4.i51.i.i) #10
  %rate_n_flags21.i.i = getelementptr %struct.iwl_scan_req_lmac, ptr %11, i32 0, i32 13, i32 1, i32 1
  %153 = ptrtoint ptr %rate_n_flags21.i.i to i32
  call void @__asan_storeN_noabort(i32 %153, i32 4)
  store i32 %152, ptr %rate_n_flags21.i.i, align 1
  %direct_scan.i = getelementptr inbounds %struct.iwl_scan_req_lmac, ptr %11, i32 0, i32 14
  call fastcc void @iwl_scan_build_ssids(ptr noundef %params, ptr noundef %direct_scan.i, ptr noundef nonnull %ssid_bitmap.i) #10
  %154 = ptrtoint ptr %ssid_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %ssid_bitmap.i, align 4
  %shl.i = shl i32 %155, 1
  store i32 %shl.i, ptr %ssid_bitmap.i, align 4
  %156 = ptrtoint ptr %n_scan_plans.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %n_scan_plans.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp33140.i = icmp sgt i32 %157, 0
  br i1 %cmp33140.i, label %for.body.lr.ph.i, label %iwl_mvm_scan_fill_tx_cmd.exit.i.for.end.i_crit_edge

iwl_mvm_scan_fill_tx_cmd.exit.i.for.end.i_crit_edge: ; preds = %iwl_mvm_scan_fill_tx_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %iwl_mvm_scan_fill_tx_cmd.exit.i
  %scan_plans.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0141.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %158 = ptrtoint ptr %scan_plans.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %scan_plans.i, align 4
  %arrayidx35.i = getelementptr %struct.cfg80211_sched_scan_plan, ptr %159, i32 %i.0141.i
  %160 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx35.i, align 4
  %conv36.i = trunc i32 %161 to i16
  %162 = call i16 @llvm.bswap.i16(i16 %conv36.i) #10
  %arrayidx37.i = getelementptr %struct.iwl_scan_req_lmac, ptr %11, i32 0, i32 18, i32 %i.0141.i
  %163 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_storeN_noabort(i32 %163, i32 2)
  store i16 %162, ptr %arrayidx37.i, align 1
  %iterations.i = getelementptr %struct.cfg80211_sched_scan_plan, ptr %159, i32 %i.0141.i, i32 1
  %164 = ptrtoint ptr %iterations.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %iterations.i, align 4
  %conv39.i = trunc i32 %165 to i8
  %iterations42.i = getelementptr %struct.iwl_scan_req_lmac, ptr %11, i32 0, i32 18, i32 %i.0141.i, i32 1
  %166 = ptrtoint ptr %iterations42.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %conv39.i, ptr %iterations42.i, align 1
  %full_scan_mul.i = getelementptr %struct.iwl_scan_req_lmac, ptr %11, i32 0, i32 18, i32 %i.0141.i, i32 2
  %167 = ptrtoint ptr %full_scan_mul.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 1, ptr %full_scan_mul.i, align 1
  %inc.i = add nuw nsw i32 %i.0141.i, 1
  %168 = ptrtoint ptr %n_scan_plans.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %n_scan_plans.i, align 4
  %cmp33.i = icmp slt i32 %inc.i, %169
  br i1 %cmp33.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %iwl_mvm_scan_fill_tx_cmd.exit.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ -1, %iwl_mvm_scan_fill_tx_cmd.exit.i.for.end.i_crit_edge ], [ %i.0141.i, %for.body.i.for.end.i_crit_edge ]
  %iterations47.i = getelementptr %struct.iwl_scan_req_lmac, ptr %11, i32 0, i32 18, i32 %i.0.lcssa.i, i32 1
  %170 = ptrtoint ptr %iterations47.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %iterations47.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool48.not.i = icmp eq i8 %171, 0
  br i1 %tobool48.not.i, label %if.then49.i, label %for.end.i.if.end54.i_crit_edge

for.end.i.if.end54.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54.i

if.then49.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %172 = ptrtoint ptr %iterations47.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 -1, ptr %iterations47.i, align 1
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then49.i, %for.end.i.if.end54.i_crit_edge
  %173 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i.i.i = getelementptr %struct.iwl_fw, ptr %174, i32 0, i32 5, i32 8, i32 1
  %175 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile i32, ptr %arrayidx.i.i.i.i.i, align 4
  %177 = and i32 %176, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool.i.i.not.i129.i = icmp eq i32 %177, 0
  br i1 %tobool.i.i.not.i129.i, label %if.else.i132.i, label %if.then.i130.i

if.then.i130.i:                                   ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i = call zeroext i1 @iwl_mvm_low_latency_band(ptr noundef %mvm, i32 noundef 1) #10
  br label %if.end.i134.i

if.else.i132.i:                                   ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i131.i = call zeroext i1 @iwl_mvm_low_latency(ptr noundef %mvm) #10
  br label %if.end.i134.i

if.end.i134.i:                                    ; preds = %if.else.i132.i, %if.then.i130.i
  %low_latency.0.in.i.i = phi i1 [ %call1.i.i, %if.then.i130.i ], [ %call2.i131.i, %if.else.i132.i ]
  %flags.i.i = getelementptr inbounds %struct.iwl_fw, ptr %174, i32 0, i32 5, i32 3
  %178 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %179, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i133.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i133.i, label %if.end.i134.i.if.end67.i_crit_edge, label %land.lhs.true.i135.i

if.end.i134.i.if.end67.i_crit_edge:               ; preds = %if.end.i134.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67.i

land.lhs.true.i135.i:                             ; preds = %if.end.i134.i
  %last_ebs_successful.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 64
  %180 = ptrtoint ptr %last_ebs_successful.i.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %last_ebs_successful.i.i, align 8, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool4.not.i.i = icmp eq i8 %181, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i135.i.if.end67.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i135.i.if.end67.i_crit_edge:        ; preds = %land.lhs.true.i135.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i135.i
  %182 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %183)
  %cmp.not.i.i = icmp eq i32 %183, 10
  %low_latency.0.in.not.i.i = xor i1 %low_latency.0.in.i.i, true
  %brmerge.i.i = select i1 %cmp.not.i.i, i1 true, i1 %low_latency.0.in.not.i.i
  br i1 %brmerge.i.i, label %iwl_mvm_scan_use_ebs.exit.i, label %lor.rhs.i.i

lor.rhs.i.i:                                      ; preds = %land.lhs.true5.i.i
  %184 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i14.i.i = getelementptr %struct.iwl_fw, ptr %185, i32 0, i32 5, i32 7, i32 1
  %186 = ptrtoint ptr %arrayidx.i.i.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load volatile i32, ptr %arrayidx.i.i.i14.i.i, align 4
  %188 = and i32 %187, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool.i.i15.i.not.i = icmp eq i32 %188, 0
  br i1 %tobool.i.i15.i.not.i, label %lor.rhs.i.i.if.end67.i_crit_edge, label %lor.rhs.i.i.if.then56.i_crit_edge

lor.rhs.i.i.if.then56.i_crit_edge:                ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then56.i

lor.rhs.i.i.if.end67.i_crit_edge:                 ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67.i

iwl_mvm_scan_use_ebs.exit.i:                      ; preds = %land.lhs.true5.i.i
  br i1 %cmp.not.i.i, label %iwl_mvm_scan_use_ebs.exit.i.if.end67.i_crit_edge, label %iwl_mvm_scan_use_ebs.exit.i.if.then56.i_crit_edge

iwl_mvm_scan_use_ebs.exit.i.if.then56.i_crit_edge: ; preds = %iwl_mvm_scan_use_ebs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then56.i

iwl_mvm_scan_use_ebs.exit.i.if.end67.i_crit_edge: ; preds = %iwl_mvm_scan_use_ebs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67.i

if.then56.i:                                      ; preds = %iwl_mvm_scan_use_ebs.exit.i.if.then56.i_crit_edge, %lor.rhs.i.i.if.then56.i_crit_edge
  %channel_opt.i = getelementptr inbounds %struct.iwl_scan_req_lmac, ptr %11, i32 0, i32 19
  %189 = ptrtoint ptr %channel_opt.i to i32
  call void @__asan_storeN_noabort(i32 %189, i32 2)
  store i16 1792, ptr %channel_opt.i, align 1
  %non_ebs_ratio.i = getelementptr inbounds %struct.iwl_scan_req_lmac, ptr %11, i32 0, i32 19, i32 0, i32 1
  %190 = ptrtoint ptr %non_ebs_ratio.i to i32
  call void @__asan_storeN_noabort(i32 %190, i32 2)
  store i16 1280, ptr %non_ebs_ratio.i, align 1
  %arrayidx62.i = getelementptr %struct.iwl_scan_req_lmac, ptr %11, i32 0, i32 19, i32 1
  %191 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_storeN_noabort(i32 %191, i32 2)
  store i16 1792, ptr %arrayidx62.i, align 1
  %non_ebs_ratio66.i = getelementptr %struct.iwl_scan_req_lmac, ptr %11, i32 0, i32 19, i32 1, i32 1
  %192 = ptrtoint ptr %non_ebs_ratio66.i to i32
  call void @__asan_storeN_noabort(i32 %192, i32 2)
  store i16 256, ptr %non_ebs_ratio66.i, align 1
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then56.i, %iwl_mvm_scan_use_ebs.exit.i.if.end67.i_crit_edge, %lor.rhs.i.i.if.end67.i_crit_edge, %land.lhs.true.i135.i.if.end67.i_crit_edge, %if.end.i134.i.if.end67.i_crit_edge
  %193 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %channels.i, align 4
  %195 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %n_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %cmp1.i.i = icmp sgt i32 %196, 0
  br i1 %cmp1.i.i, label %for.body.lr.ph.i.i, label %if.end67.i.iwl_mvm_lmac_scan_cfg_channels.exit.i_crit_edge

if.end67.i.iwl_mvm_lmac_scan_cfg_channels.exit.i_crit_edge: ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_lmac_scan_cfg_channels.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end67.i
  %197 = ptrtoint ptr %ssid_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %ssid_bitmap.i, align 4
  %or.i137.i = or i32 %198, 268435456
  %199 = call i32 @llvm.bswap.i32(i32 %or.i137.i) #10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.02.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %194, i32 %i.02.i.i
  %200 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %arrayidx.i.i, align 4
  %hw_value.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %201, i32 0, i32 3
  %202 = ptrtoint ptr %hw_value.i.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %hw_value.i.i, align 2
  %204 = call i16 @llvm.bswap.i16(i16 %203) #10
  %arrayidx1.i.i = getelementptr %struct.iwl_scan_channel_cfg_lmac, ptr %data.i, i32 %i.02.i.i
  %channel_num.i.i = getelementptr %struct.iwl_scan_channel_cfg_lmac, ptr %data.i, i32 %i.02.i.i, i32 1
  %205 = ptrtoint ptr %channel_num.i.i to i32
  call void @__asan_storeN_noabort(i32 %205, i32 2)
  store i16 %204, ptr %channel_num.i.i, align 1
  %iter_count.i.i = getelementptr %struct.iwl_scan_channel_cfg_lmac, ptr %data.i, i32 %i.02.i.i, i32 2
  %206 = ptrtoint ptr %iter_count.i.i to i32
  call void @__asan_storeN_noabort(i32 %206, i32 2)
  store i16 256, ptr %iter_count.i.i, align 1
  %iter_interval.i.i = getelementptr %struct.iwl_scan_channel_cfg_lmac, ptr %data.i, i32 %i.02.i.i, i32 3
  %207 = ptrtoint ptr %iter_interval.i.i to i32
  call void @__asan_storeN_noabort(i32 %207, i32 4)
  store i32 0, ptr %iter_interval.i.i, align 1
  %208 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_storeN_noabort(i32 %208, i32 4)
  store i32 %199, ptr %arrayidx1.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %196
  br i1 %exitcond.not.i.i, label %for.body.i.i.iwl_mvm_lmac_scan_cfg_channels.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.iwl_mvm_lmac_scan_cfg_channels.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_lmac_scan_cfg_channels.exit.i

iwl_mvm_lmac_scan_cfg_channels.exit.i:            ; preds = %for.body.i.i.iwl_mvm_lmac_scan_cfg_channels.exit.i_crit_edge, %if.end67.i.iwl_mvm_lmac_scan_cfg_channels.exit.i_crit_edge
  %preq70.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13
  %209 = ptrtoint ptr %preq70.i to i32
  call void @__asan_loadN_noabort(i32 %209, i32 4)
  %210 = load i32, ptr %preq70.i, align 1
  %211 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %211, i32 4)
  store i32 %210, ptr %add.ptr.i, align 1
  %arrayidx.i138.i = getelementptr %struct.iwl_scan_probe_req_v1, ptr %add.ptr.i, i32 0, i32 1, i32 0
  %arrayidx3.i139.i = getelementptr %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13, i32 1
  %212 = ptrtoint ptr %arrayidx3.i139.i to i32
  call void @__asan_loadN_noabort(i32 %212, i32 4)
  %213 = load i32, ptr %arrayidx3.i139.i, align 1
  %214 = ptrtoint ptr %arrayidx.i138.i to i32
  call void @__asan_storeN_noabort(i32 %214, i32 4)
  store i32 %213, ptr %arrayidx.i138.i, align 1
  %arrayidx.1.i.i = getelementptr %struct.iwl_scan_probe_req_v1, ptr %add.ptr.i, i32 0, i32 1, i32 1
  %arrayidx3.1.i.i = getelementptr %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13, i32 1, i32 1
  %215 = ptrtoint ptr %arrayidx3.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %215, i32 4)
  %216 = load i32, ptr %arrayidx3.1.i.i, align 1
  %217 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %217, i32 4)
  store i32 %216, ptr %arrayidx.1.i.i, align 1
  %common_data.i.i = getelementptr inbounds %struct.iwl_scan_probe_req_v1, ptr %add.ptr.i, i32 0, i32 2
  %common_data4.i.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13, i32 2
  %218 = ptrtoint ptr %common_data4.i.i to i32
  call void @__asan_loadN_noabort(i32 %218, i32 4)
  %219 = load i32, ptr %common_data4.i.i, align 1
  %220 = ptrtoint ptr %common_data.i.i to i32
  call void @__asan_storeN_noabort(i32 %220, i32 4)
  store i32 %219, ptr %common_data.i.i, align 1
  %buf.i.i = getelementptr inbounds %struct.iwl_scan_probe_req_v1, ptr %add.ptr.i, i32 0, i32 3
  %buf5.i.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13, i32 3
  %221 = call ptr @memcpy(ptr %buf.i.i, ptr %buf5.i.i, i32 512)
  br label %iwl_mvm_scan_lmac.exit

iwl_mvm_scan_lmac.exit:                           ; preds = %iwl_mvm_lmac_scan_cfg_channels.exit.i, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ 0, %iwl_mvm_lmac_scan_cfg_channels.exit.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ssid_bitmap.i) #10
  br label %cleanup49

if.end29:                                         ; preds = %if.end
  %max_scans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 55
  %222 = ptrtoint ptr %max_scans.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %max_scans.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %cmp6.not.i = icmp eq i32 %223, 0
  br i1 %cmp6.not.i, label %if.end29.cleanup49_crit_edge, label %if.end29.for.body.i76_crit_edge

if.end29.for.body.i76_crit_edge:                  ; preds = %if.end29
  br label %for.body.i76

if.end29.cleanup49_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup49

for.body.i76:                                     ; preds = %for.inc.i.for.body.i76_crit_edge, %if.end29.for.body.i76_crit_edge
  %i.07.i = phi i32 [ %inc.i77, %for.inc.i.for.body.i76_crit_edge ], [ 0, %if.end29.for.body.i76_crit_edge ]
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 56, i32 %i.07.i
  %224 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %cmp1.i = icmp eq i32 %225, 0
  br i1 %cmp1.i, label %iwl_mvm_scan_uid_by_status.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i76
  %inc.i77 = add nuw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i77, %223
  br i1 %exitcond.not.i, label %for.inc.i.cleanup49_crit_edge, label %for.inc.i.for.body.i76_crit_edge

for.inc.i.for.body.i76_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i76

for.inc.i.cleanup49_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup49

iwl_mvm_scan_uid_by_status.exit:                  ; preds = %for.body.i76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.07.i)
  %cmp31 = icmp slt i32 %i.07.i, 0
  br i1 %cmp31, label %iwl_mvm_scan_uid_by_status.exit.cleanup49_crit_edge, label %if.end33

iwl_mvm_scan_uid_by_status.exit.cleanup49_crit_edge: ; preds = %iwl_mvm_scan_uid_by_status.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup49

if.end33:                                         ; preds = %iwl_mvm_scan_uid_by_status.exit
  %id35 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 5
  %226 = ptrtoint ptr %id35 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 269, ptr %id35, align 4
  %227 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %fw, align 8
  %call37 = tail call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %228, i8 noundef zeroext 1, i8 noundef zeroext 13, i8 noundef zeroext 99) #10
  %229 = zext i8 %call37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %229, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %call37, label %for.inc.2 [
    i8 15, label %if.end33.cleanup.thread_crit_edge
    i8 14, label %cleanup.thread.fold.split
    i8 12, label %cleanup.thread.fold.split167
  ]

if.end33.cleanup.thread_crit_edge:                ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

cleanup.thread.fold.split:                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

cleanup.thread.fold.split167:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.thread.fold.split167, %cleanup.thread.fold.split, %if.end33.cleanup.thread_crit_edge
  %i.0162.lcssa = phi i32 [ 0, %if.end33.cleanup.thread_crit_edge ], [ 1, %cleanup.thread.fold.split ], [ 2, %cleanup.thread.fold.split167 ]
  %handler = getelementptr [3 x %struct.iwl_scan_umac_handler], ptr @iwl_scan_umac_handlers, i32 0, i32 %i.0162.lcssa, i32 1
  %230 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %handler, align 4
  %call44 = tail call i32 %231(ptr noundef %mvm, ptr noundef %vif, ptr noundef %params, i32 noundef %type, i32 noundef %i.07.i) #10
  br label %cleanup49

for.inc.2:                                        ; preds = %if.end33
  %232 = ptrtoint ptr %scan_cmd to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %scan_cmd, align 8
  %234 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i.i.i81 = getelementptr %struct.iwl_fw, ptr %235, i32 0, i32 5, i32 7, i32 1
  %236 = ptrtoint ptr %arrayidx.i.i.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load volatile i32, ptr %arrayidx.i.i.i.i.i81, align 4
  %238 = and i32 %237, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %tobool.i.i.not.i.i82 = icmp eq i32 %238, 0
  br i1 %tobool.i.i.not.i.i82, label %if.end.i.i84, label %if.then.i.i83

if.then.i.i83:                                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 1
  br label %iwl_mvm_get_scan_req_umac_data.exit.i

if.end.i.i84:                                     ; preds = %for.inc.2
  %239 = ptrtoint ptr %arrayidx.i.i.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load volatile i32, ptr %arrayidx.i.i.i.i.i81, align 4
  %241 = and i32 %240, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %tobool.i.i18.not.i.i = icmp eq i32 %241, 0
  br i1 %tobool.i.i18.not.i.i, label %if.end4.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i84
  call void @__sanitizer_cov_trace_pc() #12
  %data3.i.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 11
  br label %iwl_mvm_get_scan_req_umac_data.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i84
  %trans.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %242 = ptrtoint ptr %trans.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %trans.i.i.i, align 4
  %trans_cfg.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %243, i32 0, i32 3
  %244 = ptrtoint ptr %trans_cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %trans_cfg.i.i.i, align 4
  %device_family.i.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %245, i32 0, i32 1
  %246 = ptrtoint ptr %device_family.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %device_family.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %247)
  %cmp.i.i.i85 = icmp ugt i32 %247, 17
  br i1 %cmp.i.i.i85, label %if.then6.i.i, label %if.end8.i.i

if.then6.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %data7.i.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 9
  br label %iwl_mvm_get_scan_req_umac_data.exit.i

if.end8.i.i:                                      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %data9.i.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 7, i32 1
  br label %iwl_mvm_get_scan_req_umac_data.exit.i

iwl_mvm_get_scan_req_umac_data.exit.i:            ; preds = %if.end8.i.i, %if.then6.i.i, %if.then2.i.i, %if.then.i.i83
  %retval.0.i.i86 = phi ptr [ %data.i.i, %if.then.i.i83 ], [ %data3.i.i, %if.then2.i.i ], [ %data7.i.i, %if.then6.i.i ], [ %data9.i.i, %if.end8.i.i ]
  %n_scan_channels.i87 = getelementptr inbounds %struct.iwl_fw, ptr %235, i32 0, i32 5, i32 1
  %248 = ptrtoint ptr %n_scan_channels.i87 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %n_scan_channels.i87, align 4
  %mul.i88 = shl i32 %249, 3
  %add.ptr.i89 = getelementptr i8, ptr %retval.0.i.i86, i32 %mul.i88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ssid_bitmap.i79) #10
  %250 = ptrtoint ptr %ssid_bitmap.i79 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 0, ptr %ssid_bitmap.i79, align 4
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %251 = ptrtoint ptr %arrayidx.i.i.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load volatile i32, ptr %arrayidx.i.i.i.i.i81, align 4
  %253 = and i32 %252, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %253)
  %tobool.i.i.not.i120.i = icmp eq i32 %253, 0
  br i1 %tobool.i.i.not.i120.i, label %if.end.i123.i, label %if.then.i121.i

if.then.i121.i:                                   ; preds = %iwl_mvm_get_scan_req_umac_data.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %channel.i.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 11
  br label %iwl_mvm_get_scan_req_umac_channel.exit.i

if.end.i123.i:                                    ; preds = %iwl_mvm_get_scan_req_umac_data.exit.i
  %254 = ptrtoint ptr %arrayidx.i.i.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load volatile i32, ptr %arrayidx.i.i.i.i.i81, align 4
  %256 = and i32 %255, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %tobool.i.i18.not.i122.i = icmp eq i32 %256, 0
  br i1 %tobool.i.i18.not.i122.i, label %if.end4.i129.i, label %if.then2.i124.i

if.then2.i124.i:                                  ; preds = %if.end.i123.i
  call void @__sanitizer_cov_trace_pc() #12
  %channel3.i.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 9
  br label %iwl_mvm_get_scan_req_umac_channel.exit.i

if.end4.i129.i:                                   ; preds = %if.end.i123.i
  %trans.i.i125.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %257 = ptrtoint ptr %trans.i.i125.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %trans.i.i125.i, align 4
  %trans_cfg.i.i126.i = getelementptr inbounds %struct.iwl_trans, ptr %258, i32 0, i32 3
  %259 = ptrtoint ptr %trans_cfg.i.i126.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %trans_cfg.i.i126.i, align 4
  %device_family.i.i127.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %260, i32 0, i32 1
  %261 = ptrtoint ptr %device_family.i.i127.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %device_family.i.i127.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %262)
  %cmp.i.i128.i = icmp ugt i32 %262, 17
  br i1 %cmp.i.i128.i, label %if.then6.i130.i, label %if.end8.i131.i

if.then6.i130.i:                                  ; preds = %if.end4.i129.i
  call void @__sanitizer_cov_trace_pc() #12
  %channel7.i.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 8
  br label %iwl_mvm_get_scan_req_umac_channel.exit.i

if.end8.i131.i:                                   ; preds = %if.end4.i129.i
  call void @__sanitizer_cov_trace_pc() #12
  %channel9.i.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 7
  br label %iwl_mvm_get_scan_req_umac_channel.exit.i

iwl_mvm_get_scan_req_umac_channel.exit.i:         ; preds = %if.end8.i131.i, %if.then6.i130.i, %if.then2.i124.i, %if.then.i121.i
  %retval.0.i132.i = phi ptr [ %channel.i.i, %if.then.i121.i ], [ %channel3.i.i, %if.then2.i124.i ], [ %channel7.i.i, %if.then6.i130.i ], [ %channel9.i.i, %if.end8.i131.i ]
  %263 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %params, align 4
  %arrayidx.i.i90 = getelementptr [6 x %struct.iwl_mvm_scan_timing_params], ptr @scan_timing, i32 0, i32 %264
  %265 = ptrtoint ptr %arrayidx.i.i.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load volatile i32, ptr %arrayidx.i.i.i.i.i81, align 4
  %267 = and i32 %266, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %267)
  %tobool.i.i.not.i135.i = icmp eq i32 %267, 0
  %268 = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6
  br i1 %tobool.i.i.not.i135.i, label %if.else40.i.i, label %if.then.i136.i

if.then.i136.i:                                   ; preds = %iwl_mvm_get_scan_req_umac_channel.exit.i
  %adwell_default_n_aps_social.i.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 3
  %269 = ptrtoint ptr %adwell_default_n_aps_social.i.i to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 10, ptr %adwell_default_n_aps_social.i.i, align 1
  %adwell_default_n_aps.i.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 2
  %270 = ptrtoint ptr %adwell_default_n_aps.i.i to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 2, ptr %adwell_default_n_aps.i.i, align 1
  %271 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i133.i.i = getelementptr %struct.iwl_fw, ptr %272, i32 0, i32 5, i32 7, i32 1
  %273 = ptrtoint ptr %arrayidx.i.i.i133.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load volatile i32, ptr %arrayidx.i.i.i133.i.i, align 4
  %275 = and i32 %274, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %275)
  %tobool.i.i134.not.i.i = icmp eq i32 %275, 0
  br i1 %tobool.i.i134.not.i.i, label %if.then.i136.i.if.end.i138.i_crit_edge, label %if.then2.i137.i

if.then.i136.i.if.end.i138.i_crit_edge:           ; preds = %if.then.i136.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i138.i

if.then2.i137.i:                                  ; preds = %if.then.i136.i
  call void @__sanitizer_cov_trace_pc() #12
  %adwell_default_hb_n_aps.i.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 1
  %276 = ptrtoint ptr %adwell_default_hb_n_aps.i.i to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 8, ptr %adwell_default_hb_n_aps.i.i, align 1
  br label %if.end.i138.i

if.end.i138.i:                                    ; preds = %if.then2.i137.i, %if.then.i136.i.if.end.i138.i_crit_edge
  %ssids.i.i91 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 5
  %277 = ptrtoint ptr %ssids.i.i91 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %ssids.i.i91, align 4
  %tobool.not.i.i92 = icmp eq ptr %278, null
  br i1 %tobool.not.i.i92, label %if.end.i138.i.if.else.i.i95_crit_edge, label %land.lhs.true.i.i94

if.end.i138.i.if.else.i.i95_crit_edge:            ; preds = %if.end.i138.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i95

land.lhs.true.i.i94:                              ; preds = %if.end.i138.i
  %ssid_len.i.i93 = getelementptr inbounds %struct.cfg80211_ssid, ptr %278, i32 0, i32 1
  %279 = ptrtoint ptr %ssid_len.i.i93 to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %ssid_len.i.i93, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %280)
  %tobool5.not.i.i = icmp eq i8 %280, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i94.if.else.i.i95_crit_edge, label %land.lhs.true.i.i94.if.end8.i139.i_crit_edge

land.lhs.true.i.i94.if.end8.i139.i_crit_edge:     ; preds = %land.lhs.true.i.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i139.i

land.lhs.true.i.i94.if.else.i.i95_crit_edge:      ; preds = %land.lhs.true.i.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i95

if.else.i.i95:                                    ; preds = %land.lhs.true.i.i94.if.else.i.i95_crit_edge, %if.end.i138.i.if.else.i.i95_crit_edge
  br label %if.end8.i139.i

if.end8.i139.i:                                   ; preds = %if.else.i.i95, %land.lhs.true.i.i94.if.end8.i139.i_crit_edge
  %.sink.i.i96 = phi i16 [ 11265, %if.else.i.i95 ], [ 25600, %land.lhs.true.i.i94.if.end8.i139.i_crit_edge ]
  %adwell_max_budget7.i.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 5
  %281 = ptrtoint ptr %adwell_max_budget7.i.i to i32
  call void @__asan_storeN_noabort(i32 %281, i32 2)
  store i16 %.sink.i.i96, ptr %adwell_max_budget7.i.i, align 1
  %scan_priority.i.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 8
  %282 = ptrtoint ptr %scan_priority.i.i to i32
  call void @__asan_storeN_noabort(i32 %282, i32 4)
  store i32 100663296, ptr %scan_priority.i.i, align 1
  %max_out_time.i.i97 = getelementptr [6 x %struct.iwl_mvm_scan_timing_params], ptr @scan_timing, i32 0, i32 %264, i32 1
  %283 = ptrtoint ptr %max_out_time.i.i97 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %max_out_time.i.i97, align 4
  %285 = tail call i32 @llvm.bswap.i32(i32 %284) #10
  %max_out_time9.i.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 6
  %286 = ptrtoint ptr %max_out_time9.i.i to i32
  call void @__asan_storeN_noabort(i32 %286, i32 4)
  store i32 %285, ptr %max_out_time9.i.i, align 1
  %287 = ptrtoint ptr %arrayidx.i.i90 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %arrayidx.i.i90, align 4
  %289 = tail call i32 @llvm.bswap.i32(i32 %288) #10
  %suspend_time11.i.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 7
  %290 = ptrtoint ptr %suspend_time11.i.i to i32
  call void @__asan_storeN_noabort(i32 %290, i32 4)
  store i32 %289, ptr %suspend_time11.i.i, align 1
  %291 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i136.i.i = getelementptr %struct.iwl_fw, ptr %292, i32 0, i32 5, i32 8, i32 1
  %293 = ptrtoint ptr %arrayidx.i.i.i136.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load volatile i32, ptr %arrayidx.i.i.i136.i.i, align 4
  %295 = and i32 %294, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %295)
  %tobool.i.i137.not.i.i = icmp eq i32 %295, 0
  br i1 %tobool.i.i137.not.i.i, label %if.end8.i139.i.if.end22.i.i_crit_edge, label %if.then14.i.i

if.end8.i139.i.if.end22.i.i_crit_edge:            ; preds = %if.end8.i139.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i.i

if.then14.i.i:                                    ; preds = %if.end8.i139.i
  call void @__sanitizer_cov_trace_pc() #12
  %hb_type.i.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 1
  %296 = ptrtoint ptr %hb_type.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %hb_type.i.i, align 4
  %arrayidx15.i.i = getelementptr [6 x %struct.iwl_mvm_scan_timing_params], ptr @scan_timing, i32 0, i32 %297
  %max_out_time16.i.i = getelementptr [6 x %struct.iwl_mvm_scan_timing_params], ptr @scan_timing, i32 0, i32 %297, i32 1
  %298 = ptrtoint ptr %max_out_time16.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %max_out_time16.i.i, align 4
  %300 = tail call i32 @llvm.bswap.i32(i32 %299) #10
  %arrayidx18.i.i = getelementptr %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 6, i32 1
  %301 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_storeN_noabort(i32 %301, i32 4)
  store i32 %300, ptr %arrayidx18.i.i, align 1
  %302 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %arrayidx15.i.i, align 4
  %304 = tail call i32 @llvm.bswap.i32(i32 %303) #10
  %arrayidx21.i.i = getelementptr %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 7, i32 1
  %305 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_storeN_noabort(i32 %305, i32 4)
  store i32 %304, ptr %arrayidx21.i.i, align 1
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then14.i.i, %if.end8.i139.i.if.end22.i.i_crit_edge
  %306 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i139.i.i = getelementptr %struct.iwl_fw, ptr %307, i32 0, i32 5, i32 7, i32 1
  %308 = ptrtoint ptr %arrayidx.i.i.i139.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load volatile i32, ptr %arrayidx.i.i.i139.i.i, align 4
  %310 = and i32 %309, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %310)
  %tobool.i.i140.not.i.i = icmp eq i32 %310, 0
  %311 = ptrtoint ptr %268 to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 10, ptr %268, align 1
  br i1 %tobool.i.i140.not.i.i, label %if.then24.i.i, label %if.else27.i.i

if.then24.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %passive_dwell26.i.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 0, i32 1
  %312 = ptrtoint ptr %passive_dwell26.i.i to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 110, ptr %passive_dwell26.i.i, align 1
  %fragmented_dwell.i.i98 = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 1
  %313 = ptrtoint ptr %fragmented_dwell.i.i98 to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 44, ptr %fragmented_dwell.i.i98, align 1
  br label %if.end71.i.i

if.else27.i.i:                                    ; preds = %if.end22.i.i
  %passive_dwell30.i.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 9
  %314 = ptrtoint ptr %passive_dwell30.i.i to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 110, ptr %passive_dwell30.i.i, align 1
  %315 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i142.i.i = getelementptr %struct.iwl_fw, ptr %316, i32 0, i32 5, i32 8, i32 1
  %317 = ptrtoint ptr %arrayidx.i.i.i142.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load volatile i32, ptr %arrayidx.i.i.i142.i.i, align 4
  %319 = and i32 %318, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %319)
  %tobool.i.i143.not.i.i = icmp eq i32 %319, 0
  br i1 %tobool.i.i143.not.i.i, label %if.else27.i.i.if.end71.i.i_crit_edge, label %if.then33.i.i

if.else27.i.i.if.end71.i.i_crit_edge:             ; preds = %if.else27.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71.i.i

if.then33.i.i:                                    ; preds = %if.else27.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx35.i.i = getelementptr %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 0, i32 1
  %320 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 10, ptr %arrayidx35.i.i, align 1
  %arrayidx37.i.i = getelementptr %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 9, i32 1
  %321 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 110, ptr %arrayidx37.i.i, align 1
  br label %if.end71.i.i

if.else40.i.i:                                    ; preds = %iwl_mvm_get_scan_req_umac_channel.exit.i
  %322 = ptrtoint ptr %268 to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 90, ptr %268, align 1
  %active_dwell41.i.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 0, i32 1
  %323 = ptrtoint ptr %active_dwell41.i.i to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 10, ptr %active_dwell41.i.i, align 1
  %passive_dwell42.i.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 1
  %324 = ptrtoint ptr %passive_dwell42.i.i to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 110, ptr %passive_dwell42.i.i, align 1
  %fragmented_dwell43.i.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 2
  %325 = ptrtoint ptr %fragmented_dwell43.i.i to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 44, ptr %fragmented_dwell43.i.i, align 1
  %326 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i145.i.i = getelementptr %struct.iwl_fw, ptr %327, i32 0, i32 5, i32 8, i32 1
  %328 = ptrtoint ptr %arrayidx.i.i.i145.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load volatile i32, ptr %arrayidx.i.i.i145.i.i, align 4
  %330 = and i32 %329, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %330)
  %tobool.i.i146.not.i.i = icmp eq i32 %330, 0
  br i1 %tobool.i.i146.not.i.i, label %if.else40.i.i.if.end54.i.i_crit_edge, label %if.then45.i.i

if.else40.i.i.if.end54.i.i_crit_edge:             ; preds = %if.else40.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54.i.i

if.then45.i.i:                                    ; preds = %if.else40.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %hb_type46.i.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 1
  %331 = ptrtoint ptr %hb_type46.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %hb_type46.i.i, align 4
  %arrayidx47.i.i = getelementptr [6 x %struct.iwl_mvm_scan_timing_params], ptr @scan_timing, i32 0, i32 %332
  %max_out_time48.i.i = getelementptr [6 x %struct.iwl_mvm_scan_timing_params], ptr @scan_timing, i32 0, i32 %332, i32 1
  %333 = ptrtoint ptr %max_out_time48.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %max_out_time48.i.i, align 4
  %335 = tail call i32 @llvm.bswap.i32(i32 %334) #10
  %arrayidx50.i.i = getelementptr %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 6
  %336 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_storeN_noabort(i32 %336, i32 4)
  store i32 %335, ptr %arrayidx50.i.i, align 1
  %337 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %arrayidx47.i.i, align 4
  %339 = tail call i32 @llvm.bswap.i32(i32 %338) #10
  %arrayidx53.i.i = getelementptr %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 7
  %340 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_storeN_noabort(i32 %340, i32 4)
  store i32 %339, ptr %arrayidx53.i.i, align 1
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.then45.i.i, %if.else40.i.i.if.end54.i.i_crit_edge
  %trans.i.i140.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %341 = ptrtoint ptr %trans.i.i140.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %trans.i.i140.i, align 4
  %trans_cfg.i.i141.i = getelementptr inbounds %struct.iwl_trans, ptr %342, i32 0, i32 3
  %343 = ptrtoint ptr %trans_cfg.i.i141.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %trans_cfg.i.i141.i, align 4
  %device_family.i.i142.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %344, i32 0, i32 1
  %345 = ptrtoint ptr %device_family.i.i142.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %device_family.i.i142.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %346)
  %cmp.i.i143.i = icmp ugt i32 %346, 17
  br i1 %cmp.i.i143.i, label %if.then56.i.i, label %if.else64.i.i

if.then56.i.i:                                    ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %scan_priority57.i.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 7, i32 1
  %347 = ptrtoint ptr %scan_priority57.i.i to i32
  call void @__asan_storeN_noabort(i32 %347, i32 4)
  store i32 100663296, ptr %scan_priority57.i.i, align 1
  %max_out_time58.i.i = getelementptr [6 x %struct.iwl_mvm_scan_timing_params], ptr @scan_timing, i32 0, i32 %264, i32 1
  %348 = ptrtoint ptr %max_out_time58.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %max_out_time58.i.i, align 4
  %350 = tail call i32 @llvm.bswap.i32(i32 %349) #10
  %max_out_time59.i.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 3
  %351 = ptrtoint ptr %max_out_time59.i.i to i32
  call void @__asan_storeN_noabort(i32 %351, i32 4)
  store i32 %350, ptr %max_out_time59.i.i, align 1
  %352 = ptrtoint ptr %arrayidx.i.i90 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %arrayidx.i.i90, align 4
  %354 = tail call i32 @llvm.bswap.i32(i32 %353) #10
  %suspend_time62.i.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 6, i32 1
  %355 = ptrtoint ptr %suspend_time62.i.i to i32
  call void @__asan_storeN_noabort(i32 %355, i32 4)
  store i32 %354, ptr %suspend_time62.i.i, align 1
  br label %if.end71.i.i

if.else64.i.i:                                    ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %scan_priority65.i.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 6, i32 1
  %356 = ptrtoint ptr %scan_priority65.i.i to i32
  call void @__asan_storeN_noabort(i32 %356, i32 4)
  store i32 100663296, ptr %scan_priority65.i.i, align 1
  %max_out_time66.i.i = getelementptr [6 x %struct.iwl_mvm_scan_timing_params], ptr @scan_timing, i32 0, i32 %264, i32 1
  %357 = ptrtoint ptr %max_out_time66.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %max_out_time66.i.i, align 4
  %359 = tail call i32 @llvm.bswap.i32(i32 %358) #10
  %max_out_time67.i.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 3
  %360 = ptrtoint ptr %max_out_time67.i.i to i32
  call void @__asan_storeN_noabort(i32 %360, i32 4)
  store i32 %359, ptr %max_out_time67.i.i, align 1
  %361 = ptrtoint ptr %arrayidx.i.i90 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %arrayidx.i.i90, align 4
  %363 = tail call i32 @llvm.bswap.i32(i32 %362) #10
  %suspend_time69.i.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 6
  %364 = ptrtoint ptr %suspend_time69.i.i to i32
  call void @__asan_storeN_noabort(i32 %364, i32 4)
  store i32 %363, ptr %suspend_time69.i.i, align 1
  br label %if.end71.i.i

if.end71.i.i:                                     ; preds = %if.else64.i.i, %if.then56.i.i, %if.then33.i.i, %if.else27.i.i.if.end71.i.i_crit_edge, %if.then24.i.i
  %n_scan_plans.i.i.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 15
  %365 = ptrtoint ptr %n_scan_plans.i.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %n_scan_plans.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %366)
  %cmp.i147.i.i = icmp eq i32 %366, 1
  br i1 %cmp.i147.i.i, label %iwl_mvm_is_regular_scan.exit.i.i102, label %if.end71.i.i.if.else74.i.i_crit_edge

if.end71.i.i.if.else74.i.i_crit_edge:             ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else74.i.i

iwl_mvm_is_regular_scan.exit.i.i102:              ; preds = %if.end71.i.i
  %scan_plans.i.i.i99 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 16
  %367 = ptrtoint ptr %scan_plans.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %scan_plans.i.i.i99, align 4
  %iterations.i.i.i100 = getelementptr inbounds %struct.cfg80211_sched_scan_plan, ptr %368, i32 0, i32 1
  %369 = ptrtoint ptr %iterations.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %iterations.i.i.i100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %370)
  %cmp1.i.i.i101 = icmp eq i32 %370, 1
  br i1 %cmp1.i.i.i101, label %iwl_mvm_is_regular_scan.exit.i.i102.iwl_mvm_scan_umac_dwell.exit.i_crit_edge, label %iwl_mvm_is_regular_scan.exit.i.i102.if.else74.i.i_crit_edge

iwl_mvm_is_regular_scan.exit.i.i102.if.else74.i.i_crit_edge: ; preds = %iwl_mvm_is_regular_scan.exit.i.i102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else74.i.i

iwl_mvm_is_regular_scan.exit.i.i102.iwl_mvm_scan_umac_dwell.exit.i_crit_edge: ; preds = %iwl_mvm_is_regular_scan.exit.i.i102
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_umac_dwell.exit.i

if.else74.i.i:                                    ; preds = %iwl_mvm_is_regular_scan.exit.i.i102.if.else74.i.i_crit_edge, %if.end71.i.i.if.else74.i.i_crit_edge
  br label %iwl_mvm_scan_umac_dwell.exit.i

iwl_mvm_scan_umac_dwell.exit.i:                   ; preds = %if.else74.i.i, %iwl_mvm_is_regular_scan.exit.i.i102.iwl_mvm_scan_umac_dwell.exit.i_crit_edge
  %.sink148.i.i = phi i32 [ 33554432, %if.else74.i.i ], [ 100663296, %iwl_mvm_is_regular_scan.exit.i.i102.iwl_mvm_scan_umac_dwell.exit.i_crit_edge ]
  %ooc_priority75.i.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 2
  %371 = ptrtoint ptr %ooc_priority75.i.i to i32
  call void @__asan_storeN_noabort(i32 %371, i32 4)
  store i32 %.sink148.i.i, ptr %ooc_priority75.i.i, align 1
  %372 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 %type, ptr %arrayidx.i, align 4
  %373 = tail call i32 @llvm.bswap.i32(i32 %i.07.i) #10
  %uid3.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 1
  %374 = ptrtoint ptr %uid3.i to i32
  call void @__asan_storeN_noabort(i32 %374, i32 4)
  store i32 %373, ptr %uid3.i, align 1
  %n_ssids.i.i104 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 4
  %375 = ptrtoint ptr %n_ssids.i.i104 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %n_ssids.i.i104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %376)
  %cmp.i.i105 = icmp eq i32 %376, 0
  %spec.store.select.i.i = select i1 %cmp.i.i105, i16 8, i16 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %376)
  %cmp2.i.i106 = icmp eq i32 %376, 1
  br i1 %cmp2.i.i106, label %land.lhs.true.i146.i, label %iwl_mvm_scan_umac_dwell.exit.i.if.end8.i150.i_crit_edge

iwl_mvm_scan_umac_dwell.exit.i.if.end8.i150.i_crit_edge: ; preds = %iwl_mvm_scan_umac_dwell.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i150.i

land.lhs.true.i146.i:                             ; preds = %iwl_mvm_scan_umac_dwell.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %ssids.i144.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 5
  %377 = ptrtoint ptr %ssids.i144.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %ssids.i144.i, align 4
  %ssid_len.i145.i = getelementptr inbounds %struct.cfg80211_ssid, ptr %378, i32 0, i32 1
  %379 = ptrtoint ptr %ssid_len.i145.i to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %ssid_len.i145.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %380)
  %cmp3.not.i.i107 = icmp eq i8 %380, 0
  %381 = or i16 %spec.store.select.i.i, 16
  %spec.select.i.i108 = select i1 %cmp3.not.i.i107, i16 %spec.store.select.i.i, i16 %381
  br label %if.end8.i150.i

if.end8.i150.i:                                   ; preds = %land.lhs.true.i146.i, %iwl_mvm_scan_umac_dwell.exit.i.if.end8.i150.i_crit_edge
  %flags.0.i.i = phi i16 [ %spec.store.select.i.i, %iwl_mvm_scan_umac_dwell.exit.i.if.end8.i150.i_crit_edge ], [ %spec.select.i.i108, %land.lhs.true.i146.i ]
  %382 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %params, align 4
  %384 = and i32 %383, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %384)
  %385 = icmp eq i32 %384, 4
  %386 = or i16 %flags.0.i.i, 128
  %spec.select199.i.i = select i1 %385, i16 %386, i16 %flags.0.i.i
  %387 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i.i148.i = getelementptr %struct.iwl_fw, ptr %388, i32 0, i32 5, i32 8, i32 1
  %389 = ptrtoint ptr %arrayidx.i.i.i.i148.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load volatile i32, ptr %arrayidx.i.i.i.i148.i, align 4
  %391 = and i32 %390, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %391)
  %tobool.i.i.not.i149.i = icmp eq i32 %391, 0
  br i1 %tobool.i.i.not.i149.i, label %if.end8.i150.i.if.end23.i.i_crit_edge, label %land.lhs.true16.i.i

if.end8.i150.i.if.end23.i.i_crit_edge:            ; preds = %if.end8.i150.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i.i

land.lhs.true16.i.i:                              ; preds = %if.end8.i150.i
  call void @__sanitizer_cov_trace_pc() #12
  %hb_type.i151.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 1
  %392 = ptrtoint ptr %hb_type.i151.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %hb_type.i151.i, align 4
  %394 = and i32 %393, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %394)
  %395 = icmp eq i32 %394, 4
  %396 = or i16 %spec.select199.i.i, 2048
  %spec.select200.i.i = select i1 %395, i16 %396, i16 %spec.select199.i.i
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %land.lhs.true16.i.i, %if.end8.i150.i.if.end23.i.i_crit_edge
  %flags.2.i.i = phi i16 [ %spec.select199.i.i, %if.end8.i150.i.if.end23.i.i_crit_edge ], [ %spec.select200.i.i, %land.lhs.true16.i.i ]
  %_capa.i.i.i.i109 = getelementptr inbounds %struct.iwl_fw, ptr %388, i32 0, i32 5, i32 8
  %397 = ptrtoint ptr %_capa.i.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load volatile i32, ptr %_capa.i.i.i.i109, align 4
  %399 = and i32 %398, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %399)
  %tobool.i.i207.not.i.i = icmp eq i32 %399, 0
  br i1 %tobool.i.i207.not.i.i, label %if.end23.i.i.if.end33.i.i_crit_edge, label %land.lhs.true26.i.i

if.end23.i.i.if.end33.i.i_crit_edge:              ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i.i

land.lhs.true26.i.i:                              ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %400 = ptrtoint ptr %_capa.i.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load volatile i32, ptr %_capa.i.i.i.i109, align 4
  %402 = trunc i32 %401 to i16
  %403 = lshr i16 %402, 2
  %404 = and i16 %403, 256
  %405 = or i16 %404, %flags.2.i.i
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %land.lhs.true26.i.i, %if.end23.i.i.if.end33.i.i_crit_edge
  %flags.3.i.i110 = phi i16 [ %flags.2.i.i, %if.end23.i.i.if.end33.i.i_crit_edge ], [ %405, %land.lhs.true26.i.i ]
  %pass_all.i.i111 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 11
  %406 = ptrtoint ptr %pass_all.i.i111 to i32
  call void @__asan_load1_noabort(i32 %406)
  %407 = load i8, ptr %pass_all.i.i111, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %407)
  %tobool.not.i152.i = icmp eq i8 %407, 0
  %flags.4.v.i.i112 = select i1 %tobool.not.i152.i, i16 512, i16 4
  %flags.4.i.i113 = or i16 %flags.4.v.i.i112, %flags.3.i.i110
  %408 = ptrtoint ptr %n_scan_plans.i.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %n_scan_plans.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %409)
  %cmp.i.i154.i = icmp eq i32 %409, 1
  br i1 %cmp.i.i154.i, label %iwl_mvm_is_regular_scan.exit.i158.i, label %if.end33.i.i.iwl_mvm_is_regular_scan.exit.thread.i.i_crit_edge

if.end33.i.i.iwl_mvm_is_regular_scan.exit.thread.i.i_crit_edge: ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_is_regular_scan.exit.thread.i.i

iwl_mvm_is_regular_scan.exit.i158.i:              ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %scan_plans.i.i155.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 16
  %410 = ptrtoint ptr %scan_plans.i.i155.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %scan_plans.i.i155.i, align 4
  %iterations.i.i156.i = getelementptr inbounds %struct.cfg80211_sched_scan_plan, ptr %411, i32 0, i32 1
  %412 = ptrtoint ptr %iterations.i.i156.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %iterations.i.i156.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %413)
  %cmp1.i.i157.i = icmp ne i32 %413, 1
  %414 = zext i1 %cmp1.i.i157.i to i16
  br label %iwl_mvm_is_regular_scan.exit.thread.i.i

iwl_mvm_is_regular_scan.exit.thread.i.i:          ; preds = %iwl_mvm_is_regular_scan.exit.i158.i, %if.end33.i.i.iwl_mvm_is_regular_scan.exit.thread.i.i_crit_edge
  %.sink.i159.i = phi i16 [ %414, %iwl_mvm_is_regular_scan.exit.i158.i ], [ 1, %if.end33.i.i.iwl_mvm_is_regular_scan.exit.thread.i.i_crit_edge ]
  %spec.select230.i.i = or i16 %flags.4.i.i113, %.sink.i159.i
  %iter_notif.i.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 17
  %415 = ptrtoint ptr %iter_notif.i.i to i32
  call void @__asan_load1_noabort(i32 %415)
  %416 = load i8, ptr %iter_notif.i.i, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %416)
  %tobool48.not.i.i = icmp eq i8 %416, 0
  %417 = or i16 %spec.select230.i.i, 32
  %scan_iter_notif_enabled.i.i114 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 76
  %418 = ptrtoint ptr %scan_iter_notif_enabled.i.i114 to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %scan_iter_notif_enabled.i.i114, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %419)
  %tobool54.not.i.i = icmp eq i8 %419, 0
  %420 = select i1 %tobool54.not.i.i, i1 %tobool48.not.i.i, i1 false
  %flags.7.i.i115 = select i1 %420, i16 %spec.select230.i.i, i16 %417
  %sched_scan_pass_all.i.i116 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 53
  %421 = ptrtoint ptr %sched_scan_pass_all.i.i116 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %sched_scan_pass_all.i.i116, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %422)
  %cmp60.i.i = icmp eq i32 %422, 1
  %flags.8.i.i = select i1 %cmp60.i.i, i16 %417, i16 %flags.7.i.i115
  %arrayidx.i.i.i209.i.i = getelementptr %struct.iwl_fw, ptr %388, i32 0, i32 5, i32 7, i32 1
  %423 = ptrtoint ptr %arrayidx.i.i.i209.i.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load volatile i32, ptr %arrayidx.i.i.i209.i.i, align 4
  %425 = trunc i32 %424 to i16
  %426 = shl i16 %425, 13
  %427 = and i16 %426, 8192
  %428 = or i16 %427, %flags.8.i.i
  br i1 %cmp.i.i154.i, label %iwl_mvm_is_regular_scan.exit217.i.i, label %iwl_mvm_is_regular_scan.exit.thread.i.i.if.end91.i.i_crit_edge

iwl_mvm_is_regular_scan.exit.thread.i.i.if.end91.i.i_crit_edge: ; preds = %iwl_mvm_is_regular_scan.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91.i.i

iwl_mvm_is_regular_scan.exit217.i.i:              ; preds = %iwl_mvm_is_regular_scan.exit.thread.i.i
  %scan_plans.i213.i.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 16
  %429 = ptrtoint ptr %scan_plans.i213.i.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %scan_plans.i213.i.i, align 4
  %iterations.i214.i.i = getelementptr inbounds %struct.cfg80211_sched_scan_plan, ptr %430, i32 0, i32 1
  %431 = ptrtoint ptr %iterations.i214.i.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %iterations.i214.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %432)
  %cmp1.i215.i.i = icmp eq i32 %432, 1
  br i1 %cmp1.i215.i.i, label %land.lhs.true76.i.i, label %iwl_mvm_is_regular_scan.exit217.i.i.if.end91.i.i_crit_edge

iwl_mvm_is_regular_scan.exit217.i.i.if.end91.i.i_crit_edge: ; preds = %iwl_mvm_is_regular_scan.exit217.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91.i.i

land.lhs.true76.i.i:                              ; preds = %iwl_mvm_is_regular_scan.exit217.i.i
  %433 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %434)
  %cmp78.not.i.i = icmp eq i32 %434, 10
  %brmerge.i.i117 = select i1 %cmp78.not.i.i, i1 true, i1 %385
  br i1 %brmerge.i.i117, label %land.lhs.true76.i.i.if.end91.i.i_crit_edge, label %land.lhs.true83.i.i

land.lhs.true76.i.i.if.end91.i.i_crit_edge:       ; preds = %land.lhs.true76.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91.i.i

land.lhs.true83.i.i:                              ; preds = %land.lhs.true76.i.i
  %435 = ptrtoint ptr %arrayidx.i.i.i209.i.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load volatile i32, ptr %arrayidx.i.i.i209.i.i, align 4
  %437 = and i32 %436, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %437)
  %tobool.i.i220.not.i.i = icmp eq i32 %437, 0
  br i1 %tobool.i.i220.not.i.i, label %land.lhs.true85.i.i, label %land.lhs.true83.i.i.if.end91.i.i_crit_edge

land.lhs.true83.i.i.if.end91.i.i_crit_edge:       ; preds = %land.lhs.true83.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91.i.i

land.lhs.true85.i.i:                              ; preds = %land.lhs.true83.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %438 = ptrtoint ptr %arrayidx.i.i.i209.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load volatile i32, ptr %arrayidx.i.i.i209.i.i, align 4
  %440 = and i32 %439, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %440)
  %tobool.i.i223.not.i.i = icmp eq i32 %440, 0
  %441 = or i16 %428, 1024
  %spec.select202.i.i = select i1 %tobool.i.i223.not.i.i, i16 %441, i16 %428
  br label %if.end91.i.i

if.end91.i.i:                                     ; preds = %land.lhs.true85.i.i, %land.lhs.true83.i.i.if.end91.i.i_crit_edge, %land.lhs.true76.i.i.if.end91.i.i_crit_edge, %iwl_mvm_is_regular_scan.exit217.i.i.if.end91.i.i_crit_edge, %iwl_mvm_is_regular_scan.exit.thread.i.i.if.end91.i.i_crit_edge
  %flags.10.i.i = phi i16 [ %428, %land.lhs.true83.i.i.if.end91.i.i_crit_edge ], [ %428, %land.lhs.true76.i.i.if.end91.i.i_crit_edge ], [ %428, %iwl_mvm_is_regular_scan.exit217.i.i.if.end91.i.i_crit_edge ], [ %spec.select202.i.i, %land.lhs.true85.i.i ], [ %428, %iwl_mvm_is_regular_scan.exit.thread.i.i.if.end91.i.i_crit_edge ]
  %442 = ptrtoint ptr %arrayidx.i.i.i209.i.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load volatile i32, ptr %arrayidx.i.i.i209.i.i, align 4
  %444 = and i32 %443, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %444)
  %tobool.i.i226.not.i.i = icmp eq i32 %444, 0
  br i1 %tobool.i.i226.not.i.i, label %if.end91.i.i.iwl_mvm_scan_umac_flags.exit.i_crit_edge, label %if.then93.i.i

if.end91.i.i.iwl_mvm_scan_umac_flags.exit.i_crit_edge: ; preds = %if.end91.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_umac_flags.exit.i

if.then93.i.i:                                    ; preds = %if.end91.i.i
  %flags94.i.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 7
  %445 = ptrtoint ptr %flags94.i.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %flags94.i.i, align 4
  %447 = trunc i32 %446 to i16
  %448 = shl i16 %447, 9
  %449 = and i16 %448, -32768
  %450 = or i16 %449, %flags.10.i.i
  %and102.i.i = and i32 %446, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102.i.i)
  %tobool103.not.i.i = icmp eq i32 %and102.i.i, 0
  br i1 %tobool103.not.i.i, label %if.then93.i.i.if.end150.i.i_crit_edge, label %land.lhs.true104.i.i

if.then93.i.i.if.end150.i.i_crit_edge:            ; preds = %if.then93.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150.i.i

land.lhs.true104.i.i:                             ; preds = %if.then93.i.i
  %451 = ptrtoint ptr %arrayidx.i.i.i209.i.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load volatile i32, ptr %arrayidx.i.i.i209.i.i, align 4
  %453 = and i32 %452, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %453)
  %tobool.i.i229.not.i.i = icmp eq i32 %453, 0
  br i1 %tobool.i.i229.not.i.i, label %land.rhs.i.i, label %land.lhs.true104.i.i.if.end137.i.i_crit_edge

land.lhs.true104.i.i.if.end137.i.i_crit_edge:     ; preds = %land.lhs.true104.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137.i.i

land.rhs.i.i:                                     ; preds = %land.lhs.true104.i.i
  %.b198.i.i = load i1, ptr @iwl_mvm_scan_umac_flags.__already_done, align 1
  br i1 %.b198.i.i, label %land.rhs.i.i.if.end137.i.i_crit_edge, label %if.then115.i.i, !prof !147

land.rhs.i.i.if.end137.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137.i.i

if.then115.i.i:                                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_scan_umac_flags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2118, i32 noundef 9, ptr noundef null) #10
  br label %if.end137.i.i

if.end137.i.i:                                    ; preds = %if.then115.i.i, %land.rhs.i.i.if.end137.i.i_crit_edge, %land.lhs.true104.i.i.if.end137.i.i_crit_edge
  %454 = or i16 %450, 1024
  %spec.select204.i.i = select i1 %tobool.i.i229.not.i.i, i16 %450, i16 %454
  br label %if.end150.i.i

if.end150.i.i:                                    ; preds = %if.end137.i.i, %if.then93.i.i.if.end150.i.i_crit_edge
  %flags.12.i.i = phi i16 [ %450, %if.then93.i.i.if.end150.i.i_crit_edge ], [ %spec.select204.i.i, %if.end137.i.i ]
  %455 = ptrtoint ptr %flags94.i.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %flags94.i.i, align 4
  %457 = trunc i32 %456 to i16
  %458 = shl i16 %457, 10
  %459 = and i16 %458, 16384
  %460 = or i16 %459, %flags.12.i.i
  br label %iwl_mvm_scan_umac_flags.exit.i

iwl_mvm_scan_umac_flags.exit.i:                   ; preds = %if.end150.i.i, %if.end91.i.i.iwl_mvm_scan_umac_flags.exit.i_crit_edge
  %flags.13.i.i = phi i16 [ %flags.10.i.i, %if.end91.i.i.iwl_mvm_scan_umac_flags.exit.i_crit_edge ], [ %460, %if.end150.i.i ]
  %461 = tail call i16 @llvm.bswap.i16(i16 %flags.13.i.i) #10
  %general_flags.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 3
  %462 = ptrtoint ptr %general_flags.i to i32
  call void @__asan_storeN_noabort(i32 %462, i32 2)
  store i16 %461, ptr %general_flags.i, align 1
  %463 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.iwl_fw, ptr %464, i32 0, i32 5, i32 7, i32 1
  %465 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %467 = and i32 %466, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %467)
  %tobool.i.i.not.i = icmp eq i32 %467, 0
  br i1 %tobool.i.i.not.i, label %iwl_mvm_scan_umac_flags.exit.i.if.end15.i_crit_edge, label %if.then.i

iwl_mvm_scan_umac_flags.exit.i.if.end15.i_crit_edge: ; preds = %iwl_mvm_scan_umac_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then.i:                                        ; preds = %iwl_mvm_scan_umac_flags.exit.i
  %conv.i118 = zext i16 %flags.13.i.i to i32
  %and.i = and i32 %conv.i118, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then6.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %num_of_fragments.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 10
  %468 = ptrtoint ptr %num_of_fragments.i to i32
  call void @__asan_store1_noabort(i32 %468)
  store i8 3, ptr %num_of_fragments.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then6.i, %if.then.i.if.end.i_crit_edge
  %and9.i = and i32 %conv.i118, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end.i.if.end14.i_crit_edge, label %if.then11.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx13.i = getelementptr %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 10, i32 1
  %469 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %469)
  store i8 3, ptr %arrayidx13.i, align 1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %if.end.i.if.end14.i_crit_edge
  %general_flags2.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 6, i32 0, i32 4
  %470 = ptrtoint ptr %general_flags2.i to i32
  call void @__asan_store1_noabort(i32 %470)
  store i8 2, ptr %general_flags2.i, align 1
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end14.i, %iwl_mvm_scan_umac_flags.exit.i.if.end15.i_crit_edge
  %id.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i.i, i32 0, i32 1
  %471 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %471)
  %472 = load i16, ptr %id.i, align 4
  %conv16.i = trunc i16 %472 to i8
  %scan_start_mac_id.i = getelementptr inbounds %struct.iwl_scan_req_umac, ptr %233, i32 0, i32 5
  %473 = ptrtoint ptr %scan_start_mac_id.i to i32
  call void @__asan_store1_noabort(i32 %473)
  store i8 %conv16.i, ptr %scan_start_mac_id.i, align 1
  %474 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %474, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %type, label %if.end15.i.if.end21.i119_crit_edge [
    i32 2, label %if.end15.i.if.then20.i_crit_edge
    i32 4, label %if.end15.i.if.then20.i_crit_edge174
  ]

if.end15.i.if.then20.i_crit_edge174:              ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.i

if.end15.i.if.then20.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20.i

if.end15.i.if.end21.i119_crit_edge:               ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i119

if.then20.i:                                      ; preds = %if.end15.i.if.then20.i_crit_edge, %if.end15.i.if.then20.i_crit_edge174
  %475 = ptrtoint ptr %233 to i32
  call void @__asan_storeN_noabort(i32 %475, i32 4)
  store i32 16777216, ptr %233, align 1
  br label %if.end21.i119

if.end21.i119:                                    ; preds = %if.then20.i, %if.end15.i.if.end21.i119_crit_edge
  %476 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i.i161.i = getelementptr %struct.iwl_fw, ptr %477, i32 0, i32 5, i32 8, i32 1
  %478 = ptrtoint ptr %arrayidx.i.i.i.i161.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load volatile i32, ptr %arrayidx.i.i.i.i161.i, align 4
  %480 = and i32 %479, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %480)
  %tobool.i.i.not.i162.i = icmp eq i32 %480, 0
  br i1 %tobool.i.i.not.i162.i, label %if.else.i164.i, label %if.then.i163.i

if.then.i163.i:                                   ; preds = %if.end21.i119
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i120 = tail call zeroext i1 @iwl_mvm_low_latency_band(ptr noundef %mvm, i32 noundef 1) #10
  br label %if.end.i166.i

if.else.i164.i:                                   ; preds = %if.end21.i119
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i.i121 = tail call zeroext i1 @iwl_mvm_low_latency(ptr noundef %mvm) #10
  br label %if.end.i166.i

if.end.i166.i:                                    ; preds = %if.else.i164.i, %if.then.i163.i
  %low_latency.0.in.i.i122 = phi i1 [ %call1.i.i120, %if.then.i163.i ], [ %call2.i.i121, %if.else.i164.i ]
  %flags.i.i123 = getelementptr inbounds %struct.iwl_fw, ptr %477, i32 0, i32 5, i32 3
  %481 = ptrtoint ptr %flags.i.i123 to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %flags.i.i123, align 4
  %and.i.i124 = and i32 %482, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i124)
  %tobool.not.i165.i = icmp eq i32 %and.i.i124, 0
  br i1 %tobool.not.i165.i, label %if.end.i166.i.if.end39.i_crit_edge, label %land.lhs.true.i167.i

if.end.i166.i.if.end39.i_crit_edge:               ; preds = %if.end.i166.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

land.lhs.true.i167.i:                             ; preds = %if.end.i166.i
  %last_ebs_successful.i.i125 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 64
  %483 = ptrtoint ptr %last_ebs_successful.i.i125 to i32
  call void @__asan_load1_noabort(i32 %483)
  %484 = load i8, ptr %last_ebs_successful.i.i125, align 8, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %484)
  %tobool4.not.i.i126 = icmp eq i8 %484, 0
  br i1 %tobool4.not.i.i126, label %land.lhs.true.i167.i.if.end39.i_crit_edge, label %land.lhs.true5.i.i129

land.lhs.true.i167.i.if.end39.i_crit_edge:        ; preds = %land.lhs.true.i167.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

land.lhs.true5.i.i129:                            ; preds = %land.lhs.true.i167.i
  %485 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %486)
  %cmp.not.i.i127 = icmp eq i32 %486, 10
  %low_latency.0.in.not.i.i128 = xor i1 %low_latency.0.in.i.i122, true
  %brmerge.i168.i = select i1 %cmp.not.i.i127, i1 true, i1 %low_latency.0.in.not.i.i128
  br i1 %brmerge.i168.i, label %iwl_mvm_scan_use_ebs.exit.i133, label %lor.rhs.i.i132

lor.rhs.i.i132:                                   ; preds = %land.lhs.true5.i.i129
  %487 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i14.i.i130 = getelementptr %struct.iwl_fw, ptr %488, i32 0, i32 5, i32 7, i32 1
  %489 = ptrtoint ptr %arrayidx.i.i.i14.i.i130 to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load volatile i32, ptr %arrayidx.i.i.i14.i.i130, align 4
  %491 = and i32 %490, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %491)
  %tobool.i.i15.i.not.i131 = icmp eq i32 %491, 0
  br i1 %tobool.i.i15.i.not.i131, label %lor.rhs.i.i132.if.end39.i_crit_edge, label %lor.rhs.i.i132.if.then23.i_crit_edge

lor.rhs.i.i132.if.then23.i_crit_edge:             ; preds = %lor.rhs.i.i132
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23.i

lor.rhs.i.i132.if.end39.i_crit_edge:              ; preds = %lor.rhs.i.i132
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

iwl_mvm_scan_use_ebs.exit.i133:                   ; preds = %land.lhs.true5.i.i129
  br i1 %cmp.not.i.i127, label %iwl_mvm_scan_use_ebs.exit.i133.if.end39.i_crit_edge, label %iwl_mvm_scan_use_ebs.exit.i133.if.then23.i_crit_edge

iwl_mvm_scan_use_ebs.exit.i133.if.then23.i_crit_edge: ; preds = %iwl_mvm_scan_use_ebs.exit.i133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23.i

iwl_mvm_scan_use_ebs.exit.i133.if.end39.i_crit_edge: ; preds = %iwl_mvm_scan_use_ebs.exit.i133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

if.then23.i:                                      ; preds = %iwl_mvm_scan_use_ebs.exit.i133.if.then23.i_crit_edge, %lor.rhs.i.i132.if.then23.i_crit_edge
  %492 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i170.i = getelementptr %struct.iwl_fw, ptr %493, i32 0, i32 5, i32 7, i32 1
  %494 = ptrtoint ptr %arrayidx.i.i.i170.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load volatile i32, ptr %arrayidx.i.i.i170.i, align 4
  %496 = and i32 %495, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %496)
  %tobool.i.i171.not.i = icmp eq i32 %496, 0
  br i1 %tobool.i.i171.not.i, label %if.then23.i.if.end39.i_crit_edge, label %if.then25.i

if.then23.i.if.end39.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

if.then25.i:                                      ; preds = %if.then23.i
  %conv26.i = zext i16 %flags.13.i.i to i32
  %and27.i = and i32 %conv26.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %lor.lhs.false29.i, label %if.then25.i.if.then34.i_crit_edge

if.then25.i.if.then34.i_crit_edge:                ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34.i

lor.lhs.false29.i:                                ; preds = %if.then25.i
  %arrayidx.i.i.i173.i = getelementptr %struct.iwl_fw, ptr %493, i32 0, i32 5, i32 8, i32 1
  %497 = ptrtoint ptr %arrayidx.i.i.i173.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load volatile i32, ptr %arrayidx.i.i.i173.i, align 4
  %499 = and i32 %498, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %499)
  %tobool.i.i174.i = icmp ne i32 %499, 0
  %and32.i = and i32 %conv26.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  %or.cond.i = select i1 %tobool.i.i174.i, i1 true, i1 %tobool33.not.i
  br i1 %or.cond.i, label %lor.lhs.false29.i.if.end39.i_crit_edge, label %lor.lhs.false29.i.if.then34.i_crit_edge

lor.lhs.false29.i.if.then34.i_crit_edge:          ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34.i

lor.lhs.false29.i.if.end39.i_crit_edge:           ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

if.then34.i:                                      ; preds = %lor.lhs.false29.i.if.then34.i_crit_edge, %if.then25.i.if.then34.i_crit_edge
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then34.i, %lor.lhs.false29.i.if.end39.i_crit_edge, %if.then23.i.if.end39.i_crit_edge, %iwl_mvm_scan_use_ebs.exit.i133.if.end39.i_crit_edge, %lor.rhs.i.i132.if.end39.i_crit_edge, %land.lhs.true.i167.i.if.end39.i_crit_edge, %if.end.i166.i.if.end39.i_crit_edge
  %channel_flags.0.i = phi i8 [ 15, %if.then34.i ], [ 7, %lor.lhs.false29.i.if.end39.i_crit_edge ], [ 7, %if.then23.i.if.end39.i_crit_edge ], [ 0, %iwl_mvm_scan_use_ebs.exit.i133.if.end39.i_crit_edge ], [ 0, %lor.rhs.i.i132.if.end39.i_crit_edge ], [ 0, %land.lhs.true.i167.i.if.end39.i_crit_edge ], [ 0, %if.end.i166.i.if.end39.i_crit_edge ]
  %500 = ptrtoint ptr %retval.0.i132.i to i32
  call void @__asan_store1_noabort(i32 %500)
  store i8 %channel_flags.0.i, ptr %retval.0.i132.i, align 1
  %n_channels.i134 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 2
  %501 = ptrtoint ptr %n_channels.i134 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load i32, ptr %n_channels.i134, align 4
  %conv41.i = trunc i32 %502 to i8
  %count.i = getelementptr inbounds %struct.iwl_scan_umac_chan_param, ptr %retval.0.i132.i, i32 0, i32 1
  %503 = ptrtoint ptr %count.i to i32
  call void @__asan_store1_noabort(i32 %503)
  store i8 %conv41.i, ptr %count.i, align 1
  %delay.i135 = getelementptr inbounds %struct.iwl_scan_req_umac_tail_v2, ptr %add.ptr.i89, i32 0, i32 1
  %504 = ptrtoint ptr %n_scan_plans.i.i.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %n_scan_plans.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %505)
  %tobool.not.i175.i = icmp eq i32 %505, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %505)
  %cmp.i176.i = icmp sgt i32 %505, 2
  %spec.select.i177.i = or i1 %tobool.not.i175.i, %cmp.i176.i
  br i1 %spec.select.i177.i, label %iwl_mvm_scan_umac.exit, label %for.cond.preheader.i.i, !prof !148

for.cond.preheader.i.i:                           ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %505)
  %cmp2557.i.i = icmp sgt i32 %505, 0
  br i1 %cmp2557.i.i, label %for.body.lr.ph.i.i136, label %for.cond.preheader.i.i.for.end.i.i_crit_edge

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.lr.ph.i.i136:                            ; preds = %for.cond.preheader.i.i
  %scan_plans.i.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 16
  br label %for.body.i.i140

for.body.i.i140:                                  ; preds = %for.body.i.i140.for.body.i.i140_crit_edge, %for.body.lr.ph.i.i136
  %i.058.i.i = phi i32 [ 0, %for.body.lr.ph.i.i136 ], [ %inc.i.i139, %for.body.i.i140.for.body.i.i140_crit_edge ]
  %506 = ptrtoint ptr %scan_plans.i.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %scan_plans.i.i, align 4
  %arrayidx.i178.i = getelementptr %struct.cfg80211_sched_scan_plan, ptr %507, i32 %i.058.i.i
  %iterations.i.i = getelementptr %struct.cfg80211_sched_scan_plan, ptr %507, i32 %i.058.i.i, i32 1
  %508 = ptrtoint ptr %iterations.i.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %iterations.i.i, align 4
  %conv.i.i137 = trunc i32 %509 to i8
  %arrayidx26.i.i = getelementptr %struct.iwl_scan_umac_schedule, ptr %add.ptr.i89, i32 %i.058.i.i
  %iter_count.i.i138 = getelementptr %struct.iwl_scan_umac_schedule, ptr %add.ptr.i89, i32 %i.058.i.i, i32 1
  %510 = ptrtoint ptr %iter_count.i.i138 to i32
  call void @__asan_store1_noabort(i32 %510)
  store i8 %conv.i.i137, ptr %iter_count.i.i138, align 1
  %511 = ptrtoint ptr %arrayidx.i178.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load i32, ptr %arrayidx.i178.i, align 4
  %conv27.i.i = trunc i32 %512 to i16
  %513 = tail call i16 @llvm.bswap.i16(i16 %conv27.i.i) #10
  %514 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_storeN_noabort(i32 %514, i32 2)
  store i16 %513, ptr %arrayidx26.i.i, align 1
  %inc.i.i139 = add nuw nsw i32 %i.058.i.i, 1
  %515 = ptrtoint ptr %n_scan_plans.i.i.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load i32, ptr %n_scan_plans.i.i.i, align 4
  %cmp25.i.i = icmp slt i32 %inc.i.i139, %516
  br i1 %cmp25.i.i, label %for.body.i.i140.for.body.i.i140_crit_edge, label %for.body.i.i140.for.end.i.i_crit_edge

for.body.i.i140.for.end.i.i_crit_edge:            ; preds = %for.body.i.i140
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.i.i140.for.body.i.i140_crit_edge:        ; preds = %for.body.i.i140
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i140

for.end.i.i:                                      ; preds = %for.body.i.i140.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %505, %for.cond.preheader.i.i.for.end.i.i_crit_edge ], [ %516, %for.body.i.i140.for.end.i.i_crit_edge ]
  %sub.i.i = add i32 %.lcssa.i.i, -1
  %iter_count32.i.i = getelementptr %struct.iwl_scan_umac_schedule, ptr %add.ptr.i89, i32 %sub.i.i, i32 1
  %517 = ptrtoint ptr %iter_count32.i.i to i32
  call void @__asan_load1_noabort(i32 %517)
  %518 = load i8, ptr %iter_count32.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %518)
  %tobool33.not.i.i = icmp eq i8 %518, 0
  br i1 %tobool33.not.i.i, label %if.then34.i.i, label %for.end.i.i.if.end47.i_crit_edge

for.end.i.i.if.end47.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47.i

if.then34.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %519 = ptrtoint ptr %iter_count32.i.i to i32
  call void @__asan_store1_noabort(i32 %519)
  store i8 -1, ptr %iter_count32.i.i, align 1
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then34.i.i, %for.end.i.i.if.end47.i_crit_edge
  %delay40.i.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 3
  %520 = ptrtoint ptr %delay40.i.i to i32
  call void @__asan_load2_noabort(i32 %520)
  %521 = load i16, ptr %delay40.i.i, align 4
  %522 = tail call i16 @llvm.bswap.i16(i16 %521) #10
  %523 = ptrtoint ptr %delay.i135 to i32
  call void @__asan_store2_noabort(i32 %523)
  store i16 %522, ptr %delay.i135, align 2
  %524 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i181.i = getelementptr %struct.iwl_fw, ptr %525, i32 0, i32 5, i32 7, i32 1
  %526 = ptrtoint ptr %arrayidx.i.i.i181.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load volatile i32, ptr %arrayidx.i.i.i181.i, align 4
  %528 = and i32 %527, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %528)
  %tobool.i.i182.not.i = icmp eq i32 %528, 0
  br i1 %tobool.i.i182.not.i, label %if.else.i, label %if.then49.i141

if.then49.i141:                                   ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  %preq.i = getelementptr inbounds %struct.iwl_scan_req_umac_tail_v2, ptr %add.ptr.i89, i32 0, i32 3
  %preq50.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13
  %529 = call ptr @memcpy(ptr %preq.i, ptr %preq50.i, i32 532)
  %direct_scan51.i = getelementptr inbounds %struct.iwl_scan_req_umac_tail_v2, ptr %add.ptr.i89, i32 0, i32 4
  br label %if.end57.i

if.else.i:                                        ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  %preq53.i = getelementptr inbounds %struct.iwl_scan_req_umac_tail_v1, ptr %add.ptr.i89, i32 0, i32 3
  %preq54.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13
  %530 = ptrtoint ptr %preq54.i to i32
  call void @__asan_loadN_noabort(i32 %530, i32 4)
  %531 = load i32, ptr %preq54.i, align 1
  %532 = ptrtoint ptr %preq53.i to i32
  call void @__asan_storeN_noabort(i32 %532, i32 4)
  store i32 %531, ptr %preq53.i, align 1
  %arrayidx.i183.i = getelementptr %struct.iwl_scan_probe_req_v1, ptr %preq53.i, i32 0, i32 1, i32 0
  %arrayidx3.i.i142 = getelementptr %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13, i32 1
  %533 = ptrtoint ptr %arrayidx3.i.i142 to i32
  call void @__asan_loadN_noabort(i32 %533, i32 4)
  %534 = load i32, ptr %arrayidx3.i.i142, align 1
  %535 = ptrtoint ptr %arrayidx.i183.i to i32
  call void @__asan_storeN_noabort(i32 %535, i32 4)
  store i32 %534, ptr %arrayidx.i183.i, align 1
  %arrayidx.1.i.i143 = getelementptr %struct.iwl_scan_probe_req_v1, ptr %preq53.i, i32 0, i32 1, i32 1
  %arrayidx3.1.i.i144 = getelementptr %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13, i32 1, i32 1
  %536 = ptrtoint ptr %arrayidx3.1.i.i144 to i32
  call void @__asan_loadN_noabort(i32 %536, i32 4)
  %537 = load i32, ptr %arrayidx3.1.i.i144, align 1
  %538 = ptrtoint ptr %arrayidx.1.i.i143 to i32
  call void @__asan_storeN_noabort(i32 %538, i32 4)
  store i32 %537, ptr %arrayidx.1.i.i143, align 1
  %common_data.i.i145 = getelementptr inbounds %struct.iwl_scan_probe_req_v1, ptr %preq53.i, i32 0, i32 2
  %common_data4.i.i146 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13, i32 2
  %539 = ptrtoint ptr %common_data4.i.i146 to i32
  call void @__asan_loadN_noabort(i32 %539, i32 4)
  %540 = load i32, ptr %common_data4.i.i146, align 1
  %541 = ptrtoint ptr %common_data.i.i145 to i32
  call void @__asan_storeN_noabort(i32 %541, i32 4)
  store i32 %540, ptr %common_data.i.i145, align 1
  %buf.i.i147 = getelementptr inbounds %struct.iwl_scan_probe_req_v1, ptr %preq53.i, i32 0, i32 3
  %buf5.i.i148 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13, i32 3
  %542 = call ptr @memcpy(ptr %buf.i.i147, ptr %buf5.i.i148, i32 512)
  %direct_scan55.i = getelementptr inbounds %struct.iwl_scan_req_umac_tail_v1, ptr %add.ptr.i89, i32 0, i32 4
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.else.i, %if.then49.i141
  %direct_scan.0.i = phi ptr [ %direct_scan51.i, %if.then49.i141 ], [ %direct_scan55.i, %if.else.i ]
  call fastcc void @iwl_scan_build_ssids(ptr noundef %params, ptr noundef %direct_scan.0.i, ptr noundef nonnull %ssid_bitmap.i79) #10
  %channels.i149 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 6
  %543 = ptrtoint ptr %channels.i149 to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %channels.i149, align 4
  %545 = ptrtoint ptr %n_channels.i134 to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load i32, ptr %n_channels.i134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %546)
  %cmp32.i.i = icmp sgt i32 %546, 0
  br i1 %cmp32.i.i, label %for.body.lr.ph.i185.i, label %if.end57.i..loopexit_crit_edge

if.end57.i..loopexit_crit_edge:                   ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %.loopexit

for.body.lr.ph.i185.i:                            ; preds = %if.end57.i
  %547 = ptrtoint ptr %ssid_bitmap.i79 to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load i32, ptr %ssid_bitmap.i79, align 4
  %549 = call i32 @llvm.bswap.i32(i32 %548) #10
  br label %for.body.i190.i

for.body.i190.i:                                  ; preds = %for.inc.i.i.for.body.i190.i_crit_edge, %for.body.lr.ph.i185.i
  %i.033.i.i = phi i32 [ 0, %for.body.lr.ph.i185.i ], [ %inc.i194.i, %for.inc.i.i.for.body.i190.i_crit_edge ]
  %arrayidx.i186.i = getelementptr %struct.iwl_scan_channel_cfg_umac, ptr %retval.0.i.i86, i32 %i.033.i.i
  %550 = ptrtoint ptr %arrayidx.i186.i to i32
  call void @__asan_storeN_noabort(i32 %550, i32 4)
  store i32 %549, ptr %arrayidx.i186.i, align 1
  %arrayidx2.i.i = getelementptr ptr, ptr %544, i32 %i.033.i.i
  %551 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %arrayidx2.i.i, align 4
  %hw_value.i.i150 = getelementptr inbounds %struct.ieee80211_channel, ptr %552, i32 0, i32 3
  %553 = ptrtoint ptr %hw_value.i.i150 to i32
  call void @__asan_load2_noabort(i32 %553)
  %554 = load i16, ptr %hw_value.i.i150, align 2
  %conv.i187.i = trunc i16 %554 to i8
  %555 = getelementptr %struct.iwl_scan_channel_cfg_umac, ptr %retval.0.i.i86, i32 %i.033.i.i, i32 1
  %556 = ptrtoint ptr %555 to i32
  call void @__asan_store1_noabort(i32 %556)
  store i8 %conv.i187.i, ptr %555, align 1
  %557 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i.i188.i = getelementptr %struct.iwl_fw, ptr %558, i32 0, i32 5, i32 7, i32 1
  %559 = ptrtoint ptr %arrayidx.i.i.i.i188.i to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load volatile i32, ptr %arrayidx.i.i.i.i188.i, align 4
  %561 = and i32 %560, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %561)
  %tobool.i.i.not.i189.i = icmp eq i32 %561, 0
  br i1 %tobool.i.i.not.i189.i, label %if.else.i193.i, label %if.then.i191.i

if.then.i191.i:                                   ; preds = %for.body.i190.i
  %562 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %arrayidx2.i.i, align 4
  %564 = ptrtoint ptr %563 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load i32, ptr %563, align 4
  %566 = zext i32 %565 to i64
  call void @__sanitizer_cov_trace_switch(i64 %566, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %565, label %land.end.i.i.i [
    i32 0, label %if.then.i191.i.iwl_mvm_phy_band_from_nl80211.exit.i.i_crit_edge
    i32 1, label %sw.bb1.i.i.i
    i32 3, label %sw.bb2.i.i.i
  ]

if.then.i191.i.iwl_mvm_phy_band_from_nl80211.exit.i.i_crit_edge: ; preds = %if.then.i191.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_phy_band_from_nl80211.exit.i.i

sw.bb1.i.i.i:                                     ; preds = %if.then.i191.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_phy_band_from_nl80211.exit.i.i

sw.bb2.i.i.i:                                     ; preds = %if.then.i191.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_phy_band_from_nl80211.exit.i.i

land.end.i.i.i:                                   ; preds = %if.then.i191.i
  %.b38.i.i.i = load i1, ptr @iwl_mvm_phy_band_from_nl80211.__already_done, align 1
  br i1 %.b38.i.i.i, label %land.end.i.i.i.iwl_mvm_phy_band_from_nl80211.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !147

land.end.i.i.i.iwl_mvm_phy_band_from_nl80211.exit.i.i_crit_edge: ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_phy_band_from_nl80211.exit.i.i

if.then.i.i.i:                                    ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_phy_band_from_nl80211.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 2099, i32 noundef 9, ptr noundef nonnull @.str.43, i32 noundef %565) #10
  br label %iwl_mvm_phy_band_from_nl80211.exit.i.i

iwl_mvm_phy_band_from_nl80211.exit.i.i:           ; preds = %if.then.i.i.i, %land.end.i.i.i.iwl_mvm_phy_band_from_nl80211.exit.i.i_crit_edge, %sw.bb2.i.i.i, %sw.bb1.i.i.i, %if.then.i191.i.iwl_mvm_phy_band_from_nl80211.exit.i.i_crit_edge
  %retval.0.i.i.i151 = phi i8 [ 2, %sw.bb2.i.i.i ], [ 0, %sw.bb1.i.i.i ], [ 1, %if.then.i191.i.iwl_mvm_phy_band_from_nl80211.exit.i.i_crit_edge ], [ 0, %if.then.i.i.i ], [ 0, %land.end.i.i.i.iwl_mvm_phy_band_from_nl80211.exit.i.i_crit_edge ]
  %band8.i.i = getelementptr inbounds %struct.anon.195, ptr %555, i32 0, i32 1
  %567 = ptrtoint ptr %band8.i.i to i32
  call void @__asan_store1_noabort(i32 %567)
  store i8 %retval.0.i.i.i151, ptr %band8.i.i, align 1
  %iter_count.i192.i = getelementptr inbounds %struct.anon.195, ptr %555, i32 0, i32 2
  %568 = ptrtoint ptr %iter_count.i192.i to i32
  call void @__asan_store1_noabort(i32 %568)
  store i8 1, ptr %iter_count.i192.i, align 1
  %iter_interval.i.i152 = getelementptr inbounds %struct.anon.195, ptr %555, i32 0, i32 3
  %569 = ptrtoint ptr %iter_interval.i.i152 to i32
  call void @__asan_store1_noabort(i32 %569)
  store i8 0, ptr %iter_interval.i.i152, align 1
  br label %for.inc.i.i

if.else.i193.i:                                   ; preds = %for.body.i190.i
  call void @__sanitizer_cov_trace_pc() #12
  %iter_count12.i.i = getelementptr inbounds %struct.anon.194, ptr %555, i32 0, i32 1
  %570 = ptrtoint ptr %iter_count12.i.i to i32
  call void @__asan_store1_noabort(i32 %570)
  store i8 1, ptr %iter_count12.i.i, align 1
  %iter_interval14.i.i = getelementptr inbounds %struct.anon.194, ptr %555, i32 0, i32 2
  %571 = ptrtoint ptr %iter_interval14.i.i to i32
  call void @__asan_storeN_noabort(i32 %571, i32 2)
  store i16 0, ptr %iter_interval14.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i193.i, %iwl_mvm_phy_band_from_nl80211.exit.i.i
  %inc.i194.i = add nuw nsw i32 %i.033.i.i, 1
  %exitcond.not.i.i153 = icmp eq i32 %inc.i194.i, %546
  br i1 %exitcond.not.i.i153, label %for.inc.i.i..loopexit_crit_edge, label %for.inc.i.i.for.body.i190.i_crit_edge

for.inc.i.i.for.body.i190.i_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i190.i

for.inc.i.i..loopexit_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %.loopexit

iwl_mvm_scan_umac.exit:                           ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2134, i32 noundef 9, ptr noundef null) #10
  %572 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %572)
  store i32 0, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ssid_bitmap.i79) #10
  br label %cleanup49

.loopexit:                                        ; preds = %for.inc.i.i..loopexit_crit_edge, %if.end57.i..loopexit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ssid_bitmap.i79) #10
  br label %cleanup49

cleanup49:                                        ; preds = %.loopexit, %iwl_mvm_scan_umac.exit, %cleanup.thread, %iwl_mvm_scan_uid_by_status.exit.cleanup49_crit_edge, %for.inc.i.cleanup49_crit_edge, %if.end29.cleanup49_crit_edge, %iwl_mvm_scan_lmac.exit
  %retval.2 = phi i32 [ %retval.0.i, %iwl_mvm_scan_lmac.exit ], [ %i.07.i, %iwl_mvm_scan_uid_by_status.exit.cleanup49_crit_edge ], [ %call44, %cleanup.thread ], [ %i.07.i, %.loopexit ], [ -22, %iwl_mvm_scan_umac.exit ], [ -2, %if.end29.cleanup49_crit_edge ], [ -2, %for.inc.i.cleanup49_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_pause_tcm(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_sched_scan_start(ptr noundef %mvm, ptr noundef %vif, ptr noundef %req, ptr nocapture noundef readonly %ies, i32 noundef %type) local_unnamed_addr #2 align 64 {
entry:
  %cmd.i = alloca %struct.iwl_host_cmd, align 4
  %hcmd = alloca %struct.iwl_host_cmd, align 4
  %params = alloca %struct.iwl_mvm_scan_params, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hcmd) #10
  %0 = getelementptr inbounds i8, ptr %hcmd, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 32)
  %scan_cmd = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 49
  %2 = ptrtoint ptr %scan_cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scan_cmd, align 8
  %4 = ptrtoint ptr %hcmd to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %hcmd, align 4
  %len = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 6
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %5 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw.i, align 8
  %call.i = tail call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext 13, i8 noundef zeroext 99) #10
  %7 = zext i8 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %call.i, label %if.end.i [
    i8 12, label %entry.iwl_mvm_scan_size.exit_crit_edge
    i8 14, label %entry.sw.bb1.i.i_crit_edge
    i8 15, label %entry.sw.bb1.i.i_crit_edge346
  ]

entry.sw.bb1.i.i_crit_edge346:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i.i

entry.sw.bb1.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i.i

entry.iwl_mvm_scan_size.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_size.exit

sw.bb1.i.i:                                       ; preds = %entry.sw.bb1.i.i_crit_edge, %entry.sw.bb1.i.i_crit_edge346
  br label %iwl_mvm_scan_size.exit

if.end.i:                                         ; preds = %entry
  %8 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.iwl_fw, ptr %9, i32 0, i32 5, i32 7, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %12 = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.i.not.i = icmp eq i32 %12, 0
  br i1 %tobool.i.i.not.i, label %if.else.i, label %if.end.i.if.end12.i_crit_edge

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.else.i:                                        ; preds = %if.end.i
  %13 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %15 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.i44.not.i = icmp eq i32 %15, 0
  br i1 %tobool.i.i44.not.i, label %if.else6.i, label %if.else.i.if.end12.i_crit_edge

if.else.i.if.end12.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %trans.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %16 = ptrtoint ptr %trans.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trans.i.i, align 4
  %trans_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %trans_cfg.i.i, align 4
  %device_family.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %device_family.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %device_family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %21)
  %cmp.i.i = icmp ugt i32 %21, 17
  %..i = select i1 %cmp.i.i, i32 44, i32 36
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else6.i, %if.else.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %base_size.0.i = phi i32 [ 52, %if.end.i.if.end12.i_crit_edge ], [ 48, %if.else.i.if.end12.i_crit_edge ], [ %..i, %if.else6.i ]
  %_capa.i.i = getelementptr inbounds %struct.iwl_fw, ptr %9, i32 0, i32 5, i32 8
  %22 = ptrtoint ptr %_capa.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %_capa.i.i, align 4
  %24 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not.i = icmp eq i32 %24, 0
  br i1 %tobool.i.not.i, label %if.end23.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %27 = and i32 %26, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i.i47.not.i = icmp eq i32 %27, 0
  %.41.i = select i1 %tobool.i.i47.not.i, i32 1220, i32 1224
  %n_scan_channels.i = getelementptr inbounds %struct.iwl_fw, ptr %9, i32 0, i32 5, i32 1
  %28 = ptrtoint ptr %n_scan_channels.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n_scan_channels.i, align 4
  %mul.i = shl i32 %29, 3
  %add.i = add i32 %mul.i, %base_size.0.i
  %add22.i = add i32 %add.i, %.41.i
  br label %iwl_mvm_scan_size.exit

if.end23.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %n_scan_channels26.i = getelementptr inbounds %struct.iwl_fw, ptr %9, i32 0, i32 5, i32 1
  %30 = ptrtoint ptr %n_scan_channels26.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n_scan_channels26.i, align 4
  %mul27.i = mul i32 %31, 12
  %add29.i = add i32 %mul27.i, 1292
  br label %iwl_mvm_scan_size.exit

iwl_mvm_scan_size.exit:                           ; preds = %if.end23.i, %if.then15.i, %sw.bb1.i.i, %entry.iwl_mvm_scan_size.exit_crit_edge
  %retval.0.i = phi i32 [ %add22.i, %if.then15.i ], [ %add29.i, %if.end23.i ], [ 1956, %entry.iwl_mvm_scan_size.exit_crit_edge ], [ 1940, %sw.bb1.i.i ]
  %conv = trunc i32 %retval.0.i to i16
  %32 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv, ptr %len, align 4
  %dataflags = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 7
  %33 = ptrtoint ptr %dataflags to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %dataflags, align 4
  call void @llvm.lifetime.start.p0(i64 608, ptr nonnull %params) #10
  %34 = call ptr @memset(ptr %params, i32 0, i32 608)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %35 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not = icmp eq i32 %35, 0
  br i1 %tobool.not, label %iwl_mvm_scan_size.exit.if.end_crit_edge, label %land.rhs

iwl_mvm_scan_size.exit.if.end_crit_edge:          ; preds = %iwl_mvm_scan_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %iwl_mvm_scan_size.exit
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i274 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i274)
  %cmp.not = icmp eq i32 %call.i274, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !148

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2722, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %iwl_mvm_scan_size.exit.if.end_crit_edge
  %nvm_data.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %36 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %nvm_data.i, align 8
  %lar_enabled.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %37, i32 0, i32 24
  %38 = ptrtoint ptr %lar_enabled.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %lar_enabled.i, align 1, !range !150
  %40 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fw.i, align 8
  %_capa.i.i276 = getelementptr inbounds %struct.iwl_fw, ptr %41, i32 0, i32 5, i32 8
  %42 = ptrtoint ptr %_capa.i.i276 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %_capa.i.i276, align 4
  %44 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.i.i = icmp ne i32 %44, 0
  %cfg.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 3
  %45 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cfg.i, align 4
  %nvm_type.i = getelementptr inbounds %struct.iwl_cfg, ptr %46, i32 0, i32 9
  %47 = ptrtoint ptr %nvm_type.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nvm_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp.i = icmp eq i32 %48, 1
  br i1 %cmp.i, label %if.then.i, label %iwl_mvm_is_lar_supported.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i = icmp ne i8 %39, 0
  %spec.select.i = select i1 %tobool.not.i, i1 %tobool.i.i, i1 false
  br i1 %spec.select.i, label %if.then.i.land.lhs.true_crit_edge, label %if.then.i.if.end38_crit_edge

if.then.i.if.end38_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then.i.land.lhs.true_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

iwl_mvm_is_lar_supported.exit:                    ; preds = %if.end
  br i1 %tobool.i.i, label %iwl_mvm_is_lar_supported.exit.land.lhs.true_crit_edge, label %iwl_mvm_is_lar_supported.exit.if.end38_crit_edge

iwl_mvm_is_lar_supported.exit.if.end38_crit_edge: ; preds = %iwl_mvm_is_lar_supported.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

iwl_mvm_is_lar_supported.exit.land.lhs.true_crit_edge: ; preds = %iwl_mvm_is_lar_supported.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %iwl_mvm_is_lar_supported.exit.land.lhs.true_crit_edge, %if.then.i.land.lhs.true_crit_edge
  %lar_regdom_set = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 155
  %49 = ptrtoint ptr %lar_regdom_set to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %lar_regdom_set, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool30.not = icmp eq i8 %50, 0
  br i1 %tobool30.not, label %do.end35, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

do.end35:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %52, i32 noundef 0, ptr noundef nonnull @.str.19) #10
  br label %cleanup201

if.end38:                                         ; preds = %land.lhs.true.if.end38_crit_edge, %iwl_mvm_is_lar_supported.exit.if.end38_crit_edge, %if.then.i.if.end38_crit_edge
  %53 = ptrtoint ptr %_capa.i.i276 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %_capa.i.i276, align 4
  %55 = and i32 %54, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.i.not.i280 = icmp eq i32 %55, 0
  %56 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %type, label %if.end38.if.end.i282_crit_edge [
    i32 2, label %if.end38.land.lhs.true.i_crit_edge
    i32 4, label %if.end38.land.lhs.true.i_crit_edge347
  ]

if.end38.land.lhs.true.i_crit_edge347:            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

if.end38.land.lhs.true.i_crit_edge:               ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

if.end38.if.end.i282_crit_edge:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i282

land.lhs.true.i:                                  ; preds = %if.end38.land.lhs.true.i_crit_edge, %if.end38.land.lhs.true.i_crit_edge347
  %scan_status.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 48
  %57 = ptrtoint ptr %scan_status.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %scan_status.i, align 4
  %and.i = and i32 %58, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i281 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i281, label %land.lhs.true.i.if.end.i282_crit_edge, label %land.lhs.true.i.cleanup201_crit_edge

land.lhs.true.i.cleanup201_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup201

land.lhs.true.i.if.end.i282_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i282

if.end.i282:                                      ; preds = %land.lhs.true.i.if.end.i282_crit_edge, %if.end38.if.end.i282_crit_edge
  %scan_status.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 48
  %59 = ptrtoint ptr %scan_status.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %scan_status.i.i, align 4
  %and.i.i = and i32 %60, 255
  %call.i.i.i = tail call i32 @__sw_hweight32(i32 noundef %and.i.i) #10
  %max_scans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 55
  %61 = ptrtoint ptr %max_scans.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_scans.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i, i32 %62)
  %cmp3.i = icmp ult i32 %call.i.i.i, %62
  br i1 %cmp3.i, label %if.end.i282.if.end42_crit_edge, label %if.end5.i

if.end.i282.if.end42_crit_edge:                   ; preds = %if.end.i282
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.end5.i:                                        ; preds = %if.end.i282
  %63 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %type, label %if.end5.i.do.end.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb12.i
    i32 4, label %sw.bb19.i
  ]

if.end5.i.do.end.i_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

sw.bb.i:                                          ; preds = %if.end5.i
  %64 = ptrtoint ptr %scan_status.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %scan_status.i.i, align 4
  %and7.i = and i32 %65, 257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %sw.bb.i.iwl_mvm_check_running_scans.exit_crit_edge, label %sw.bb.i.cleanup201_crit_edge

sw.bb.i.cleanup201_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup201

sw.bb.i.iwl_mvm_check_running_scans.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_check_running_scans.exit

sw.bb12.i:                                        ; preds = %if.end5.i
  %66 = ptrtoint ptr %scan_status.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %scan_status.i.i, align 4
  %and14.i = and i32 %67, 514
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %sw.bb12.i.iwl_mvm_check_running_scans.exit_crit_edge, label %sw.bb12.i.cleanup201_crit_edge

sw.bb12.i.cleanup201_crit_edge:                   ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup201

sw.bb12.i.iwl_mvm_check_running_scans.exit_crit_edge: ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_check_running_scans.exit

sw.bb19.i:                                        ; preds = %if.end5.i
  br i1 %tobool.i.not.i280, label %sw.bb19.i.if.end42_crit_edge, label %if.end22.i

sw.bb19.i.if.end42_crit_edge:                     ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.end22.i:                                       ; preds = %sw.bb19.i
  %68 = ptrtoint ptr %scan_status.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %scan_status.i.i, align 4
  %and24.i = and i32 %69, 257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end28.i, label %if.end22.i.iwl_mvm_check_running_scans.exit_crit_edge

if.end22.i.iwl_mvm_check_running_scans.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_check_running_scans.exit

if.end28.i:                                       ; preds = %if.end22.i
  %and30.i = and i32 %69, 514
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.end28.i.do.end.i_crit_edge, label %if.end28.i.iwl_mvm_check_running_scans.exit_crit_edge

if.end28.i.iwl_mvm_check_running_scans.exit_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_check_running_scans.exit

if.end28.i.do.end.i_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.end28.i.do.end.i_crit_edge, %if.end5.i.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2515, i32 noundef 9, ptr noundef null) #10
  br label %cleanup201

iwl_mvm_check_running_scans.exit:                 ; preds = %if.end28.i.iwl_mvm_check_running_scans.exit_crit_edge, %if.end22.i.iwl_mvm_check_running_scans.exit_crit_edge, %sw.bb12.i.iwl_mvm_check_running_scans.exit_crit_edge, %sw.bb.i.iwl_mvm_check_running_scans.exit_crit_edge
  %.sink = phi i32 [ 2, %sw.bb.i.iwl_mvm_check_running_scans.exit_crit_edge ], [ 1, %sw.bb12.i.iwl_mvm_check_running_scans.exit_crit_edge ], [ 1, %if.end22.i.iwl_mvm_check_running_scans.exit_crit_edge ], [ 2, %if.end28.i.iwl_mvm_check_running_scans.exit_crit_edge ]
  %call11.i = tail call i32 @iwl_mvm_scan_stop(ptr noundef %mvm, i32 noundef %.sink, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool40.not = icmp eq i32 %call11.i, 0
  br i1 %tobool40.not, label %iwl_mvm_check_running_scans.exit.if.end42_crit_edge, label %iwl_mvm_check_running_scans.exit.cleanup201_crit_edge

iwl_mvm_check_running_scans.exit.cleanup201_crit_edge: ; preds = %iwl_mvm_check_running_scans.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup201

iwl_mvm_check_running_scans.exit.if.end42_crit_edge: ; preds = %iwl_mvm_check_running_scans.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.end42:                                         ; preds = %iwl_mvm_check_running_scans.exit.if.end42_crit_edge, %sw.bb19.i.if.end42_crit_edge, %if.end.i282.if.end42_crit_edge
  %70 = ptrtoint ptr %scan_cmd to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %scan_cmd, align 8
  %tobool45.not = icmp eq ptr %71, null
  br i1 %tobool45.not, label %do.end63, label %if.end79, !prof !148

do.end63:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2734, i32 noundef 9, ptr noundef null) #10
  br label %cleanup201

if.end79:                                         ; preds = %if.end42
  %n_ssids = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 2
  %72 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %n_ssids, align 4
  %n_ssids80 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 4
  %74 = ptrtoint ptr %n_ssids80 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %n_ssids80, align 4
  %flags = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 7
  %75 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags, align 8
  %flags81 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 7
  %77 = ptrtoint ptr %flags81 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %flags81, align 4
  %n_channels = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 3
  %78 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %n_channels, align 8
  %n_channels82 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 2
  %80 = ptrtoint ptr %n_channels82 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %n_channels82, align 4
  %ssids = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 1
  %81 = ptrtoint ptr %ssids to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ssids, align 8
  %ssids83 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 5
  %83 = ptrtoint ptr %ssids83 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %82, ptr %ssids83, align 4
  %channels = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 27
  %channels84 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 6
  %84 = ptrtoint ptr %channels84 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %channels, ptr %channels84, align 4
  %mac_addr = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 14
  %mac_addr86 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 8
  %85 = ptrtoint ptr %mac_addr86 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %mac_addr, ptr %mac_addr86, align 4
  %mac_addr_mask = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 15
  %mac_addr_mask88 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 9
  %86 = ptrtoint ptr %mac_addr_mask88 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %mac_addr_mask, ptr %mac_addr_mask88, align 4
  %no_cck = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 10
  %87 = ptrtoint ptr %no_cck to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %no_cck, align 4
  %n_match_sets.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 9
  %88 = ptrtoint ptr %n_match_sets.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %n_match_sets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.i284 = icmp eq i32 %89, 0
  br i1 %tobool.not.i284, label %if.end79.do.end7.i_crit_edge, label %land.lhs.true.i285

if.end79.do.end7.i_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true.i285:                               ; preds = %if.end79
  %match_sets.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 8
  %90 = ptrtoint ptr %match_sets.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %match_sets.i, align 4
  %ssid_len.i = getelementptr inbounds %struct.cfg80211_ssid, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %ssid_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool1.not.i = icmp eq i8 %93, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i285.do.end7.i_crit_edge, label %do.end.i286

land.lhs.true.i285.do.end7.i_crit_edge:           ; preds = %land.lhs.true.i285
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

do.end.i286:                                      ; preds = %land.lhs.true.i285
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %95, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_scan_pass_all, ptr noundef nonnull @.str.44, i32 noundef %89) #10
  br label %iwl_mvm_scan_pass_all.exit

do.end7.i:                                        ; preds = %land.lhs.true.i285.do.end7.i_crit_edge, %if.end79.do.end7.i_crit_edge
  %96 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %97, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_scan_pass_all, ptr noundef nonnull @.str.45) #10
  br label %iwl_mvm_scan_pass_all.exit

iwl_mvm_scan_pass_all.exit:                       ; preds = %do.end7.i, %do.end.i286
  %.sink.i = phi i32 [ 1, %do.end7.i ], [ 0, %do.end.i286 ]
  %retval.0.i287 = phi i1 [ true, %do.end7.i ], [ false, %do.end.i286 ]
  %sched_scan_pass_all10.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 53
  %98 = ptrtoint ptr %sched_scan_pass_all10.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %.sink.i, ptr %sched_scan_pass_all10.i, align 8
  %pass_all = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 11
  %frombool = zext i1 %retval.0.i287 to i8
  %99 = ptrtoint ptr %pass_all to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %frombool, ptr %pass_all, align 1
  %100 = ptrtoint ptr %n_match_sets.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %n_match_sets.i, align 8
  %n_match_sets90 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 12
  %102 = ptrtoint ptr %n_match_sets90 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %n_match_sets90, align 4
  %match_sets = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 8
  %103 = ptrtoint ptr %match_sets to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %match_sets, align 4
  %match_sets91 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 14
  %105 = ptrtoint ptr %match_sets91 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %104, ptr %match_sets91, align 4
  %n_scan_plans = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 13
  %106 = ptrtoint ptr %n_scan_plans to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %n_scan_plans, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool92.not = icmp eq i32 %107, 0
  br i1 %tobool92.not, label %iwl_mvm_scan_pass_all.exit.cleanup201_crit_edge, label %if.end94

iwl_mvm_scan_pass_all.exit.cleanup201_crit_edge:  ; preds = %iwl_mvm_scan_pass_all.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup201

if.end94:                                         ; preds = %iwl_mvm_scan_pass_all.exit
  %n_scan_plans96 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 15
  %108 = ptrtoint ptr %n_scan_plans96 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %n_scan_plans96, align 4
  %scan_plans = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 12
  %109 = ptrtoint ptr %scan_plans to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %scan_plans, align 4
  %scan_plans97 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 16
  %111 = ptrtoint ptr %scan_plans97 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %110, ptr %scan_plans97, align 4
  call fastcc void @iwl_mvm_fill_scan_type(ptr noundef %mvm, ptr noundef nonnull %params, ptr noundef %vif)
  %delay = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %req, i32 0, i32 11
  %112 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %delay, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %113)
  %cmp98 = icmp ugt i32 %113, 65535
  br i1 %cmp98, label %do.end104, label %if.else

do.end104:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  %114 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %115, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_sched_scan_start, ptr noundef nonnull @.str.20) #10
  br label %if.end112

if.else:                                          ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  %conv110 = trunc i32 %113 to i16
  br label %if.end112

if.end112:                                        ; preds = %if.else, %do.end104
  %conv110.sink = phi i16 [ -1, %do.end104 ], [ %conv110, %if.else ]
  %116 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 3
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv110.sink, ptr %116, align 4
  %118 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %fw.i, align 8
  %call.i.i = tail call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %119, i8 noundef zeroext 1, i8 noundef zeroext 110, i8 noundef zeroext 99) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %call.i.i)
  %cmp.i.i289 = icmp eq i8 %call.i.i, 99
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %call.i.i)
  %cmp3.i.i = icmp ult i8 %call.i.i, 3
  %120 = or i1 %cmp.i.i289, %cmp3.i.i
  %121 = select i1 %120, i32 11, i32 8
  %mul.i290 = shl nuw nsw i32 %121, 3
  %add.i291 = add nuw nsw i32 %mul.i290, 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i) #10
  %122 = getelementptr inbounds i8, ptr %cmd.i, i32 8
  %123 = call ptr @memset(ptr %122, i32 0, i32 28)
  %id.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 5
  %124 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 110, ptr %id.i, align 4
  %len.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6
  %arrayinit.element.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6, i32 1
  %conv.i = trunc i32 %add.i291 to i16
  %125 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %conv.i, ptr %arrayinit.element.i, align 2
  %dataflags.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 7
  %126 = ptrtoint ptr %dataflags.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %dataflags.i, align 4
  %arrayinit.element3.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 7, i32 1
  %127 = ptrtoint ptr %arrayinit.element3.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 1, ptr %arrayinit.element3.i, align 1
  %128 = ptrtoint ptr %n_match_sets.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %n_match_sets.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %121)
  %cmp.i293 = icmp sgt i32 %129, %121
  br i1 %cmp.i293, label %do.end.i294, label %if.end25.i, !prof !148

do.end.i294:                                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 536, i32 noundef 9, ptr noundef null) #10
  br label %iwl_mvm_config_sched_scan_profiles.exit.thread

if.end25.i:                                       ; preds = %if.end112
  %130 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %fw.i, align 8
  %flags.i = getelementptr inbounds %struct.iwl_fw, ptr %131, i32 0, i32 5, i32 3
  %132 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %flags.i, align 4
  %and.i295 = and i32 %133, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i295)
  %tobool27.not.i = icmp eq i32 %and.i295, 0
  %..i296 = select i1 %tobool27.not.i, i32 64, i32 16
  %134 = shl nuw nsw i32 %..i296, 3
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %134, i32 noundef 3520) #13
  %tobool31.not.i297 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool31.not.i297, label %if.end25.i.iwl_mvm_config_sched_scan_profiles.exit.thread_crit_edge, label %if.end8.i.i.i

if.end25.i.iwl_mvm_config_sched_scan_profiles.exit.thread_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_config_sched_scan_profiles.exit.thread

if.end8.i.i.i:                                    ; preds = %if.end25.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i291, i32 noundef 3520) #13
  %tobool35.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool35.not.i, label %iwl_mvm_config_sched_scan_profiles.exit.thread326, label %if.end37.i

iwl_mvm_config_sched_scan_profiles.exit.thread326: ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i) #10
  br label %cleanup201

if.end37.i:                                       ; preds = %if.end8.i.i.i
  %135 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call8.i.i.i, ptr %cmd.i, align 4
  %blocklist_len.0.tr.i = trunc i32 %..i296 to i16
  %conv40.i = shl nuw nsw i16 %blocklist_len.0.tr.i, 3
  %136 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %conv40.i, ptr %len.i, align 4
  %arrayidx44.i = getelementptr inbounds [2 x ptr], ptr %cmd.i, i32 0, i32 1
  %137 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call9.i.i.i, ptr %arrayidx44.i, align 4
  %138 = xor i1 %cmp3.i.i, %cmp.i.i289
  %data48.i = getelementptr inbounds %struct.iwl_scan_offload_profile_cfg, ptr %call9.i.i.i, i32 0, i32 1
  %data50.i = getelementptr inbounds %struct.iwl_scan_offload_profile_cfg_v1, ptr %call9.i.i.i, i32 0, i32 1
  %data.0.i = select i1 %138, ptr %data50.i, ptr %data48.i
  %139 = ptrtoint ptr %n_match_sets.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %n_match_sets.i, align 8
  %conv53.i = trunc i32 %140 to i8
  %num_profiles.i = getelementptr inbounds %struct.iwl_scan_offload_profile_cfg_data, ptr %data.0.i, i32 0, i32 1
  %141 = ptrtoint ptr %num_profiles.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv53.i, ptr %num_profiles.i, align 1
  %active_clients.i = getelementptr inbounds %struct.iwl_scan_offload_profile_cfg_data, ptr %data.0.i, i32 0, i32 4
  %142 = ptrtoint ptr %active_clients.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 1, ptr %active_clients.i, align 4
  %pass_match.i = getelementptr inbounds %struct.iwl_scan_offload_profile_cfg_data, ptr %data.0.i, i32 0, i32 3
  %143 = ptrtoint ptr %pass_match.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 1, ptr %pass_match.i, align 1
  %match_notify.i = getelementptr inbounds %struct.iwl_scan_offload_profile_cfg_data, ptr %data.0.i, i32 0, i32 2
  %144 = ptrtoint ptr %match_notify.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 1, ptr %match_notify.i, align 2
  %145 = load i32, ptr %n_match_sets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool55.not.i = icmp eq i32 %145, 0
  br i1 %tobool55.not.i, label %if.end37.i.if.then58.i_crit_edge, label %lor.lhs.false.i

if.end37.i.if.then58.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then58.i

lor.lhs.false.i:                                  ; preds = %if.end37.i
  %146 = ptrtoint ptr %match_sets to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %match_sets, align 4
  %ssid_len.i299 = getelementptr inbounds %struct.cfg80211_ssid, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %ssid_len.i299 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %ssid_len.i299, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool57.not.i = icmp eq i8 %149, 0
  br i1 %tobool57.not.i, label %lor.lhs.false.i.if.then58.i_crit_edge, label %lor.lhs.false.i.if.end59.i_crit_edge

lor.lhs.false.i.if.end59.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.i

lor.lhs.false.i.if.then58.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then58.i

if.then58.i:                                      ; preds = %lor.lhs.false.i.if.then58.i_crit_edge, %if.end37.i.if.then58.i_crit_edge
  %any_beacon_notify.i = getelementptr inbounds %struct.iwl_scan_offload_profile_cfg_data, ptr %data.0.i, i32 0, i32 5
  %150 = ptrtoint ptr %any_beacon_notify.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 1, ptr %any_beacon_notify.i, align 1
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then58.i, %lor.lhs.false.i.if.end59.i_crit_edge
  %151 = ptrtoint ptr %n_match_sets.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %n_match_sets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp61119.i = icmp sgt i32 %152, 0
  br i1 %cmp61119.i, label %if.end59.i.for.body.i_crit_edge, label %if.end59.i.iwl_mvm_config_sched_scan_profiles.exit_crit_edge

if.end59.i.iwl_mvm_config_sched_scan_profiles.exit_crit_edge: ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_config_sched_scan_profiles.exit

if.end59.i.for.body.i_crit_edge:                  ; preds = %if.end59.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end59.i.for.body.i_crit_edge
  %i.0120.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end59.i.for.body.i_crit_edge ]
  %arrayidx63.i = getelementptr [11 x %struct.iwl_scan_offload_profile], ptr %call9.i.i.i, i32 0, i32 %i.0120.i
  %conv64.i = trunc i32 %i.0120.i to i8
  %153 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %conv64.i, ptr %arrayidx63.i, align 8
  %unicast_cipher.i = getelementptr [11 x %struct.iwl_scan_offload_profile], ptr %call9.i.i.i, i32 0, i32 %i.0120.i, i32 1
  %154 = ptrtoint ptr %unicast_cipher.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 -1, ptr %unicast_cipher.i, align 1
  %auth_alg.i = getelementptr [11 x %struct.iwl_scan_offload_profile], ptr %call9.i.i.i, i32 0, i32 %i.0120.i, i32 2
  %155 = ptrtoint ptr %auth_alg.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 63, ptr %auth_alg.i, align 2
  %network_type.i = getelementptr [11 x %struct.iwl_scan_offload_profile], ptr %call9.i.i.i, i32 0, i32 %i.0120.i, i32 3
  %156 = ptrtoint ptr %network_type.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 3, ptr %network_type.i, align 1
  %band_selection.i = getelementptr [11 x %struct.iwl_scan_offload_profile], ptr %call9.i.i.i, i32 0, i32 %i.0120.i, i32 4
  %157 = ptrtoint ptr %band_selection.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 12, ptr %band_selection.i, align 4
  %client_bitmap.i = getelementptr [11 x %struct.iwl_scan_offload_profile], ptr %call9.i.i.i, i32 0, i32 %i.0120.i, i32 5
  %158 = ptrtoint ptr %client_bitmap.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 1, ptr %client_bitmap.i, align 1
  %inc.i = add nuw nsw i32 %i.0120.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %152
  br i1 %exitcond.not.i, label %for.body.i.iwl_mvm_config_sched_scan_profiles.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.iwl_mvm_config_sched_scan_profiles.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_config_sched_scan_profiles.exit

iwl_mvm_config_sched_scan_profiles.exit.thread:   ; preds = %if.end25.i.iwl_mvm_config_sched_scan_profiles.exit.thread_crit_edge, %do.end.i294
  %retval.0.i300.ph = phi i32 [ -12, %if.end25.i.iwl_mvm_config_sched_scan_profiles.exit.thread_crit_edge ], [ -5, %do.end.i294 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i) #10
  br label %cleanup201

iwl_mvm_config_sched_scan_profiles.exit:          ; preds = %for.body.i.iwl_mvm_config_sched_scan_profiles.exit_crit_edge, %if.end59.i.iwl_mvm_config_sched_scan_profiles.exit_crit_edge
  %159 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %160, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_config_sched_scan_profiles, ptr noundef nonnull @.str.46) #10
  %call71.i = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %cmd.i) #10
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #10
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool114.not = icmp eq i32 %call71.i, 0
  br i1 %tobool114.not, label %if.end116, label %iwl_mvm_config_sched_scan_profiles.exit.cleanup201_crit_edge

iwl_mvm_config_sched_scan_profiles.exit.cleanup201_crit_edge: ; preds = %iwl_mvm_config_sched_scan_profiles.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup201

if.end116:                                        ; preds = %iwl_mvm_config_sched_scan_profiles.exit
  call fastcc void @iwl_mvm_build_scan_probe(ptr noundef %mvm, ptr noundef %vif, ptr noundef %ies, ptr noundef nonnull %params)
  %161 = ptrtoint ptr %n_channels82 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %n_channels82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %cmp118339.not = icmp eq i32 %162, 0
  br i1 %cmp118339.not, label %if.end116.if.end171.thread_crit_edge, label %if.end116.for.body_crit_edge

if.end116.for.body_crit_edge:                     ; preds = %if.end116
  br label %for.body

if.end116.if.end171.thread_crit_edge:             ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171.thread

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end116.for.body_crit_edge
  %i.0340 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end116.for.body_crit_edge ]
  %163 = ptrtoint ptr %channels84 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %channels84, align 4
  %arrayidx = getelementptr ptr, ptr %164, i32 %i.0340
  %165 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %arrayidx, align 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %168)
  %cmp121 = icmp eq i32 %168, 3
  br i1 %cmp121, label %cfg80211_channel_is_psc.exit, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

cfg80211_channel_is_psc.exit:                     ; preds = %for.body
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %166, i32 0, i32 1
  %169 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %center_freq.i, align 4
  %mul.i.i = mul i32 %170, 1000
  %call.i.i301 = call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i.i) #10
  %171 = and i32 %call.i.i301, -2147483633
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %171)
  %cmp1.i = icmp eq i32 %171, 5
  br i1 %cmp1.i, label %cfg80211_channel_is_psc.exit.for.inc_crit_edge, label %if.then128

cfg80211_channel_is_psc.exit.for.inc_crit_edge:   ; preds = %cfg80211_channel_is_psc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %cfg80211_channel_is_psc.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0340, 1
  %172 = ptrtoint ptr %n_channels82 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %n_channels82, align 4
  %cmp118 = icmp ult i32 %inc, %173
  br i1 %cmp118, label %for.inc.for.body_crit_edge, label %for.inc.if.end171.thread_crit_edge

for.inc.if.end171.thread_crit_edge:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171.thread

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.then128:                                       ; preds = %cfg80211_channel_is_psc.exit
  %174 = ptrtoint ptr %channels84 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %channels84, align 4
  %176 = ptrtoint ptr %n_channels82 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %n_channels82, align 4
  %mul = shl i32 %177, 2
  %call131 = call ptr @kmemdup(ptr noundef %175, i32 noundef %mul, i32 noundef 3264) #10
  %178 = ptrtoint ptr %channels84 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %call131, ptr %channels84, align 4
  %tobool134.not = icmp eq ptr %call131, null
  br i1 %tobool134.not, label %if.then128.cleanup201_crit_edge, label %for.cond137.preheader

if.then128.cleanup201_crit_edge:                  ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup201

for.cond137.preheader:                            ; preds = %if.then128
  %179 = ptrtoint ptr %n_channels82 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %n_channels82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %cmp139341.not = icmp eq i32 %180, 0
  br i1 %cmp139341.not, label %for.cond137.preheader.for.end160_crit_edge, label %for.cond137.preheader.for.body141_crit_edge

for.cond137.preheader.for.body141_crit_edge:      ; preds = %for.cond137.preheader
  br label %for.body141

for.cond137.preheader.for.end160_crit_edge:       ; preds = %for.cond137.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end160

for.body141:                                      ; preds = %for.inc158.for.body141_crit_edge, %for.cond137.preheader.for.body141_crit_edge
  %j.0344 = phi i32 [ %j.1, %for.inc158.for.body141_crit_edge ], [ 0, %for.cond137.preheader.for.body141_crit_edge ]
  %i.1342 = phi i32 [ %inc159, %for.inc158.for.body141_crit_edge ], [ 0, %for.cond137.preheader.for.body141_crit_edge ]
  %181 = ptrtoint ptr %channels84 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %channels84, align 4
  %arrayidx143 = getelementptr ptr, ptr %182, i32 %i.1342
  %183 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %arrayidx143, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %184, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %186)
  %cmp145 = icmp eq i32 %186, 3
  br i1 %cmp145, label %cfg80211_channel_is_psc.exit311, label %for.body141.if.end152_crit_edge

for.body141.if.end152_crit_edge:                  ; preds = %for.body141
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152

cfg80211_channel_is_psc.exit311:                  ; preds = %for.body141
  %center_freq.i305 = getelementptr inbounds %struct.ieee80211_channel, ptr %184, i32 0, i32 1
  %187 = ptrtoint ptr %center_freq.i305 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %center_freq.i305, align 4
  %mul.i.i306 = mul i32 %188, 1000
  %call.i.i307 = call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i.i306) #10
  %189 = and i32 %call.i.i307, -2147483633
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %189)
  %cmp1.i308 = icmp eq i32 %189, 5
  br i1 %cmp1.i308, label %cfg80211_channel_is_psc.exit311.if.end152_crit_edge, label %cfg80211_channel_is_psc.exit311.for.inc158_crit_edge

cfg80211_channel_is_psc.exit311.for.inc158_crit_edge: ; preds = %cfg80211_channel_is_psc.exit311
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc158

cfg80211_channel_is_psc.exit311.if.end152_crit_edge: ; preds = %cfg80211_channel_is_psc.exit311
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152

if.end152:                                        ; preds = %cfg80211_channel_is_psc.exit311.if.end152_crit_edge, %for.body141.if.end152_crit_edge
  %190 = ptrtoint ptr %channels84 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %channels84, align 4
  %arrayidx154 = getelementptr ptr, ptr %191, i32 %i.1342
  %192 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %arrayidx154, align 4
  %inc156 = add i32 %j.0344, 1
  %arrayidx157 = getelementptr ptr, ptr %191, i32 %j.0344
  %194 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %193, ptr %arrayidx157, align 4
  br label %for.inc158

for.inc158:                                       ; preds = %if.end152, %cfg80211_channel_is_psc.exit311.for.inc158_crit_edge
  %j.1 = phi i32 [ %inc156, %if.end152 ], [ %j.0344, %cfg80211_channel_is_psc.exit311.for.inc158_crit_edge ]
  %inc159 = add nuw i32 %i.1342, 1
  %195 = ptrtoint ptr %n_channels82 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %n_channels82, align 4
  %cmp139 = icmp ult i32 %inc159, %196
  br i1 %cmp139, label %for.inc158.for.body141_crit_edge, label %for.inc158.for.end160_crit_edge

for.inc158.for.end160_crit_edge:                  ; preds = %for.inc158
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end160

for.inc158.for.body141_crit_edge:                 ; preds = %for.inc158
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body141

for.end160:                                       ; preds = %for.inc158.for.end160_crit_edge, %for.cond137.preheader.for.end160_crit_edge
  %j.0.lcssa = phi i32 [ 0, %for.cond137.preheader.for.end160_crit_edge ], [ %j.1, %for.inc158.for.end160_crit_edge ]
  %197 = ptrtoint ptr %n_channels82 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %j.0.lcssa, ptr %n_channels82, align 4
  %198 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %n_ssids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %199)
  %cmp.i312 = icmp slt i32 %199, 21
  br i1 %cmp.i312, label %iwl_mvm_scan_fits.exit, label %for.end160.if.then169_crit_edge

for.end160.if.then169_crit_edge:                  ; preds = %for.end160
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then169

iwl_mvm_scan_fits.exit:                           ; preds = %for.end160
  %200 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %fw.i, align 8
  %n_scan_channels.i314 = getelementptr inbounds %struct.iwl_fw, ptr %201, i32 0, i32 5, i32 1
  %202 = ptrtoint ptr %n_scan_channels.i314 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %n_scan_channels.i314, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %203, i32 %j.0.lcssa)
  %cmp1.i315 = icmp uge i32 %203, %j.0.lcssa
  %common_ie_len.i = getelementptr inbounds %struct.ieee80211_scan_ies, ptr %ies, i32 0, i32 3
  %204 = ptrtoint ptr %common_ie_len.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %common_ie_len.i, align 4
  %len.i316 = getelementptr inbounds %struct.ieee80211_scan_ies, ptr %ies, i32 0, i32 1
  %206 = ptrtoint ptr %len.i316 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %len.i316, align 4
  %add.i317 = add i32 %207, %205
  %arrayidx3.i = getelementptr %struct.ieee80211_scan_ies, ptr %ies, i32 0, i32 1, i32 1
  %208 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx3.i, align 4
  %add4.i = add i32 %add.i317, %209
  %_capa.i.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %201, i32 0, i32 5, i32 8
  %210 = ptrtoint ptr %_capa.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load volatile i32, ptr %_capa.i.i.i.i, align 4
  %212 = and i32 %211, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %tobool.i.i.not.i.i = icmp eq i32 %212, 0
  %spec.select.i.i = select i1 %tobool.i.i.not.i.i, i32 486, i32 483
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.i, i32 %spec.select.i.i)
  %cmp5.i = icmp ule i32 %add4.i, %spec.select.i.i
  %and10.i = and i1 %cmp1.i315, %cmp5.i
  br i1 %and10.i, label %if.then174, label %iwl_mvm_scan_fits.exit.if.then169_crit_edge

iwl_mvm_scan_fits.exit.if.then169_crit_edge:      ; preds = %iwl_mvm_scan_fits.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then169

if.then169:                                       ; preds = %iwl_mvm_scan_fits.exit.if.then169_crit_edge, %for.end160.if.then169_crit_edge
  %213 = ptrtoint ptr %channels84 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %channels84, align 4
  call void @kfree(ptr noundef %214) #10
  br label %cleanup201

if.end171.thread:                                 ; preds = %for.inc.if.end171.thread_crit_edge, %if.end116.if.end171.thread_crit_edge
  %call172337 = call fastcc i32 @iwl_mvm_build_scan_cmd(ptr noundef %mvm, ptr noundef %vif, ptr noundef nonnull %hcmd, ptr noundef nonnull %params, i32 noundef %type)
  br label %if.end176

if.then174:                                       ; preds = %iwl_mvm_scan_fits.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call172 = call fastcc i32 @iwl_mvm_build_scan_cmd(ptr noundef %mvm, ptr noundef %vif, ptr noundef nonnull %hcmd, ptr noundef nonnull %params, i32 noundef %type)
  %215 = ptrtoint ptr %channels84 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %channels84, align 4
  call void @kfree(ptr noundef %216) #10
  br label %if.end176

if.end176:                                        ; preds = %if.then174, %if.end171.thread
  %call172338 = phi i32 [ %call172337, %if.end171.thread ], [ %call172, %if.then174 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172338)
  %cmp177 = icmp slt i32 %call172338, 0
  br i1 %cmp177, label %if.end176.cleanup201_crit_edge, label %if.end180

if.end176.cleanup201_crit_edge:                   ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup201

if.end180:                                        ; preds = %if.end176
  %call181 = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %hcmd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool182.not = icmp eq i32 %call181, 0
  %217 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %mvm, align 8
  br i1 %tobool182.not, label %do.end187, label %do.end195

do.end187:                                        ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %218, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_sched_scan_start, ptr noundef nonnull @.str.21) #10
  %219 = ptrtoint ptr %scan_status.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %scan_status.i.i, align 4
  %or = or i32 %220, %type
  store i32 %or, ptr %scan_status.i.i, align 4
  br label %cleanup201

do.end195:                                        ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %218, i32 noundef 0, ptr noundef nonnull @.str.22, i32 noundef %call181) #10
  %arrayidx199 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 56, i32 %call172338
  %221 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 0, ptr %arrayidx199, align 4
  %222 = ptrtoint ptr %sched_scan_pass_all10.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 0, ptr %sched_scan_pass_all10.i, align 8
  br label %cleanup201

cleanup201:                                       ; preds = %do.end195, %do.end187, %if.end176.cleanup201_crit_edge, %if.then169, %if.then128.cleanup201_crit_edge, %iwl_mvm_config_sched_scan_profiles.exit.cleanup201_crit_edge, %iwl_mvm_config_sched_scan_profiles.exit.thread, %iwl_mvm_config_sched_scan_profiles.exit.thread326, %iwl_mvm_scan_pass_all.exit.cleanup201_crit_edge, %do.end63, %iwl_mvm_check_running_scans.exit.cleanup201_crit_edge, %do.end.i, %sw.bb12.i.cleanup201_crit_edge, %sw.bb.i.cleanup201_crit_edge, %land.lhs.true.i.cleanup201_crit_edge, %do.end35
  %retval.0 = phi i32 [ -12, %do.end63 ], [ -105, %if.then169 ], [ -16, %do.end35 ], [ %call11.i, %iwl_mvm_check_running_scans.exit.cleanup201_crit_edge ], [ -22, %iwl_mvm_scan_pass_all.exit.cleanup201_crit_edge ], [ %call71.i, %iwl_mvm_config_sched_scan_profiles.exit.cleanup201_crit_edge ], [ -12, %if.then128.cleanup201_crit_edge ], [ %call172338, %if.end176.cleanup201_crit_edge ], [ %call181, %do.end195 ], [ 0, %do.end187 ], [ %retval.0.i300.ph, %iwl_mvm_config_sched_scan_profiles.exit.thread ], [ -12, %iwl_mvm_config_sched_scan_profiles.exit.thread326 ], [ -16, %sw.bb12.i.cleanup201_crit_edge ], [ -16, %sw.bb.i.cleanup201_crit_edge ], [ -16, %land.lhs.true.i.cleanup201_crit_edge ], [ -5, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 608, ptr nonnull %params) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hcmd) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rx_umac_scan_complete_notif(ptr noundef %mvm, ptr nocapture noundef readonly %rxb) local_unnamed_addr #2 align 64 {
entry:
  %info = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #10
  %2 = ptrtoint ptr %call.i to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %data, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %status = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1, i32 2
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp = icmp eq i8 %10, 2
  %frombool = zext i1 %cmp to i8
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 56, i32 %8
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %scan_status = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 48
  %13 = ptrtoint ptr %scan_status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %scan_status, align 4
  %and = and i32 %14, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.end25, !prof !148

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2843, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end25:                                         ; preds = %entry
  %15 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %12, label %if.end25.if.end46_crit_edge [
    i32 1, label %if.then30
    i32 2, label %if.then43
  ]

if.end25.if.end46_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #10
  %16 = getelementptr inbounds i8, ptr %info, i32 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 -1, ptr %16, align 8
  %scan_start = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 58
  %18 = ptrtoint ptr %scan_start to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %scan_start, align 8
  %20 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %info, align 8
  %tsf_bssid = getelementptr inbounds %struct.cfg80211_scan_info, ptr %info, i32 0, i32 1
  %aborted31 = getelementptr inbounds %struct.cfg80211_scan_info, ptr %info, i32 0, i32 2
  %21 = ptrtoint ptr %aborted31 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool, ptr %aborted31, align 2
  %scan_vif = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 59
  %22 = ptrtoint ptr %scan_vif to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %scan_vif, align 8
  %bssid = getelementptr inbounds %struct.iwl_mvm_vif, ptr %23, i32 0, i32 4
  %24 = call ptr @memcpy(ptr %tsf_bssid, ptr %bssid, i32 6)
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  call void @ieee80211_scan_completed(ptr noundef %26, ptr noundef nonnull %info) #10
  %27 = ptrtoint ptr %scan_vif to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %scan_vif, align 8
  %scan_timeout_dwork = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 54
  %call38 = call zeroext i1 @cancel_delayed_work(ptr noundef %scan_timeout_dwork) #10
  call void @iwl_mvm_resume_tcm(ptr noundef %mvm) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #10
  br label %if.end46

if.then43:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %hw44 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %28 = ptrtoint ptr %hw44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw44, align 4
  tail call void @ieee80211_sched_scan_stopped(ptr noundef %29) #10
  %sched_scan_pass_all = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 53
  %30 = ptrtoint ptr %sched_scan_pass_all to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %sched_scan_pass_all, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.then30, %if.end25.if.end46_crit_edge
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  %neg = xor i32 %32, -1
  %33 = ptrtoint ptr %scan_status to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %scan_status, align 4
  %and50 = and i32 %34, %neg
  store i32 %and50, ptr %scan_status, align 4
  %35 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mvm, align 8
  %37 = load i32, ptr %arrayidx, align 4
  %38 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %39)
  %cmp59 = icmp eq i8 %39, 1
  %cond = select i1 %cmp59, ptr @.str.7, ptr @.str.6
  %ebs_status = getelementptr inbounds %struct.iwl_umac_scan_complete, ptr %data, i32 0, i32 4
  %40 = ptrtoint ptr %ebs_status to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ebs_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %41)
  %switch.selectcmp.i = icmp eq i8 %41, 3
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.30, ptr @.str.31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %switch.selectcmp3.i = icmp eq i8 %41, 0
  %switch.select4.i = select i1 %switch.selectcmp3.i, ptr @.str.29, ptr %switch.select.i
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %36, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_umac_scan_complete_notif, ptr noundef nonnull @.str.23, i32 noundef %8, i32 noundef %37, ptr noundef nonnull %cond, ptr noundef nonnull %switch.select4.i) #10
  %42 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mvm, align 8
  %last_schedule = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %44 = ptrtoint ptr %last_schedule to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %last_schedule, align 1
  %conv70 = zext i8 %45 to i32
  %last_iter = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1, i32 1
  %46 = ptrtoint ptr %last_iter to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %last_iter, align 1
  %conv71 = zext i8 %47 to i32
  %time_from_last_iter = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2
  %48 = ptrtoint ptr %time_from_last_iter to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %time_from_last_iter, align 1
  %50 = call i32 @llvm.bswap.i32(i32 %49)
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %43, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_umac_scan_complete_notif, ptr noundef nonnull @.str.24, i32 noundef %conv70, i32 noundef %conv71, i32 noundef %50) #10
  %51 = ptrtoint ptr %ebs_status to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ebs_status, align 1
  %53 = zext i8 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %52, label %if.then82 [
    i8 0, label %if.end46.if.end83_crit_edge
    i8 3, label %if.end46.if.end83_crit_edge122
  ]

if.end46.if.end83_crit_edge122:                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.end46.if.end83_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then82:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %last_ebs_successful = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 64
  %54 = ptrtoint ptr %last_ebs_successful to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %last_ebs_successful, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.end46.if.end83_crit_edge, %if.end46.if.end83_crit_edge122
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rx_umac_scan_iter_complete_notif(ptr nocapture noundef %mvm, ptr nocapture noundef readonly %rxb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #10
  %2 = ptrtoint ptr %call.i to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %start_tsf = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2
  %6 = ptrtoint ptr %start_tsf to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %start_tsf, align 1
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  %scan_start = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 58
  %9 = ptrtoint ptr %scan_start to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %scan_start, align 8
  %10 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mvm, align 8
  %status = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1, i32 1
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %status, align 1
  %conv = zext i8 %13 to i32
  %scanned_channels = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %14 = ptrtoint ptr %scanned_channels to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %scanned_channels, align 1
  %conv2 = zext i8 %15 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %11, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_umac_scan_iter_complete_notif, ptr noundef nonnull @.str.25, i32 noundef %conv, i32 noundef %conv2) #10
  %sched_scan_pass_all = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 53
  %16 = ptrtoint ptr %sched_scan_pass_all to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sched_scan_pass_all, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp = icmp eq i32 %17, 2
  br i1 %cmp, label %do.end9, label %entry.do.end17_crit_edge

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %19, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_umac_scan_iter_complete_notif, ptr noundef nonnull @.str.1) #10
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_sched_scan_results(ptr noundef %21) #10
  %22 = ptrtoint ptr %sched_scan_pass_all to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %sched_scan_pass_all, align 8
  br label %do.end17

do.end17:                                         ; preds = %do.end9, %entry.do.end17_crit_edge
  %23 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mvm, align 8
  %25 = ptrtoint ptr %scan_start to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %scan_start, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %24, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_umac_scan_iter_complete_notif, ptr noundef nonnull @.str.26, i64 noundef %26) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_report_scan_aborted(ptr noundef %mvm) local_unnamed_addr #2 align 64 {
entry:
  %info = alloca %struct.cfg80211_scan_info, align 8
  %info73 = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw, align 8
  %_capa.i = getelementptr inbounds %struct.iwl_fw, ptr %1, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %_capa.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %_capa.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %max_scans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 55
  %5 = ptrtoint ptr %max_scans.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_scans.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6.not.i = icmp eq i32 %6, 0
  br i1 %cmp6.not.i, label %if.then.if.end87_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.if.end87_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 56, i32 %i.07.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp1.i = icmp eq i32 %8, 1
  br i1 %cmp1.i, label %iwl_mvm_scan_uid_by_status.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

iwl_mvm_scan_uid_by_status.exit:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.07.i)
  %cmp = icmp sgt i32 %i.07.i, -1
  br i1 %cmp, label %if.then2, label %iwl_mvm_scan_uid_by_status.exit.if.end_crit_edge

iwl_mvm_scan_uid_by_status.exit.if.end_crit_edge: ; preds = %iwl_mvm_scan_uid_by_status.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then2:                                         ; preds = %iwl_mvm_scan_uid_by_status.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #10
  %9 = call ptr @memcpy(ptr %info, ptr @__const.iwl_mvm_scan_stop.info, i32 16)
  %scan_timeout_dwork = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 54
  %call3 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %scan_timeout_dwork) #10
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  call void @ieee80211_scan_completed(ptr noundef %11, ptr noundef nonnull %info) #10
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #10
  br label %if.end

if.end:                                           ; preds = %if.then2, %iwl_mvm_scan_uid_by_status.exit.if.end_crit_edge, %for.inc.i.if.end_crit_edge
  %13 = ptrtoint ptr %max_scans.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %max_scans.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp6.not.i127 = icmp eq i32 %.pr, 0
  br i1 %cmp6.not.i127, label %if.end.if.end87_crit_edge, label %if.end.for.body.i131_crit_edge

if.end.for.body.i131_crit_edge:                   ; preds = %if.end
  br label %for.body.i131

if.end.if.end87_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

for.body.i131:                                    ; preds = %for.inc.i134.for.body.i131_crit_edge, %if.end.for.body.i131_crit_edge
  %i.07.i128 = phi i32 [ %inc.i132, %for.inc.i134.for.body.i131_crit_edge ], [ 0, %if.end.for.body.i131_crit_edge ]
  %arrayidx.i129 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 56, i32 %i.07.i128
  %14 = ptrtoint ptr %arrayidx.i129 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp1.i130 = icmp eq i32 %15, 2
  br i1 %cmp1.i130, label %iwl_mvm_scan_uid_by_status.exit136, label %for.inc.i134

for.inc.i134:                                     ; preds = %for.body.i131
  %inc.i132 = add nuw i32 %i.07.i128, 1
  %exitcond.not.i133 = icmp eq i32 %inc.i132, %.pr
  br i1 %exitcond.not.i133, label %for.inc.i134.if.end12_crit_edge, label %for.inc.i134.for.body.i131_crit_edge

for.inc.i134.for.body.i131_crit_edge:             ; preds = %for.inc.i134
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i131

for.inc.i134.if.end12_crit_edge:                  ; preds = %for.inc.i134
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

iwl_mvm_scan_uid_by_status.exit136:               ; preds = %for.body.i131
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.07.i128)
  %cmp5 = icmp sgt i32 %i.07.i128, -1
  br i1 %cmp5, label %if.then6, label %iwl_mvm_scan_uid_by_status.exit136.if.end12_crit_edge

iwl_mvm_scan_uid_by_status.exit136.if.end12_crit_edge: ; preds = %iwl_mvm_scan_uid_by_status.exit136
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then6:                                         ; preds = %iwl_mvm_scan_uid_by_status.exit136
  %fw_restart = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 95
  %16 = ptrtoint ptr %fw_restart to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fw_restart, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %if.then7, label %if.then6.if.end9_crit_edge

if.then6.if.end9_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then7:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %hw8 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %18 = ptrtoint ptr %hw8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw8, align 4
  call void @ieee80211_sched_scan_stopped(ptr noundef %19) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then6.if.end9_crit_edge
  %sched_scan_pass_all = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 53
  %20 = ptrtoint ptr %sched_scan_pass_all to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %sched_scan_pass_all, align 8
  %21 = ptrtoint ptr %arrayidx.i129 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx.i129, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end9, %iwl_mvm_scan_uid_by_status.exit136.if.end12_crit_edge, %for.inc.i134.if.end12_crit_edge
  %22 = ptrtoint ptr %max_scans.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr168 = load i32, ptr %max_scans.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr168)
  %cmp6.not.i138 = icmp eq i32 %.pr168, 0
  br i1 %cmp6.not.i138, label %if.end12.if.end87_crit_edge, label %if.end12.for.body.i142_crit_edge

if.end12.for.body.i142_crit_edge:                 ; preds = %if.end12
  br label %for.body.i142

if.end12.if.end87_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

for.body.i142:                                    ; preds = %for.inc.i145.for.body.i142_crit_edge, %if.end12.for.body.i142_crit_edge
  %i.07.i139 = phi i32 [ %inc.i143, %for.inc.i145.for.body.i142_crit_edge ], [ 0, %if.end12.for.body.i142_crit_edge ]
  %arrayidx.i140 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 56, i32 %i.07.i139
  %23 = ptrtoint ptr %arrayidx.i140 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %24)
  %cmp1.i141 = icmp eq i32 %24, 256
  br i1 %cmp1.i141, label %iwl_mvm_scan_uid_by_status.exit147, label %for.inc.i145

for.inc.i145:                                     ; preds = %for.body.i142
  %inc.i143 = add nuw i32 %i.07.i139, 1
  %exitcond.not.i144 = icmp eq i32 %inc.i143, %.pr168
  br i1 %exitcond.not.i144, label %for.inc.i145.if.end18_crit_edge, label %for.inc.i145.for.body.i142_crit_edge

for.inc.i145.for.body.i142_crit_edge:             ; preds = %for.inc.i145
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i142

for.inc.i145.if.end18_crit_edge:                  ; preds = %for.inc.i145
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

iwl_mvm_scan_uid_by_status.exit147:               ; preds = %for.body.i142
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.07.i139)
  %cmp14 = icmp sgt i32 %i.07.i139, -1
  br i1 %cmp14, label %if.then15, label %iwl_mvm_scan_uid_by_status.exit147.if.end18_crit_edge

iwl_mvm_scan_uid_by_status.exit147.if.end18_crit_edge: ; preds = %iwl_mvm_scan_uid_by_status.exit147
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then15:                                        ; preds = %iwl_mvm_scan_uid_by_status.exit147
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %arrayidx.i140 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %arrayidx.i140, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %iwl_mvm_scan_uid_by_status.exit147.if.end18_crit_edge, %for.inc.i145.if.end18_crit_edge
  %26 = ptrtoint ptr %max_scans.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr170.pr = load i32, ptr %max_scans.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr170.pr)
  %cmp6.not.i149 = icmp eq i32 %.pr170.pr, 0
  br i1 %cmp6.not.i149, label %if.end18.if.end87_crit_edge, label %if.end18.for.body.i153_crit_edge

if.end18.for.body.i153_crit_edge:                 ; preds = %if.end18
  br label %for.body.i153

if.end18.if.end87_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

for.body.i153:                                    ; preds = %for.inc.i156.for.body.i153_crit_edge, %if.end18.for.body.i153_crit_edge
  %i.07.i150 = phi i32 [ %inc.i154, %for.inc.i156.for.body.i153_crit_edge ], [ 0, %if.end18.for.body.i153_crit_edge ]
  %arrayidx.i151 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 56, i32 %i.07.i150
  %27 = ptrtoint ptr %arrayidx.i151 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %28)
  %cmp1.i152 = icmp eq i32 %28, 512
  br i1 %cmp1.i152, label %iwl_mvm_scan_uid_by_status.exit158, label %for.inc.i156

for.inc.i156:                                     ; preds = %for.body.i153
  %inc.i154 = add nuw i32 %i.07.i150, 1
  %exitcond.not.i155 = icmp eq i32 %inc.i154, %.pr170.pr
  br i1 %exitcond.not.i155, label %for.inc.i156.if.end24_crit_edge, label %for.inc.i156.for.body.i153_crit_edge

for.inc.i156.for.body.i153_crit_edge:             ; preds = %for.inc.i156
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i153

for.inc.i156.if.end24_crit_edge:                  ; preds = %for.inc.i156
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

iwl_mvm_scan_uid_by_status.exit158:               ; preds = %for.body.i153
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.07.i150)
  %cmp20 = icmp sgt i32 %i.07.i150, -1
  br i1 %cmp20, label %if.then21, label %iwl_mvm_scan_uid_by_status.exit158.if.end24_crit_edge

iwl_mvm_scan_uid_by_status.exit158.if.end24_crit_edge: ; preds = %iwl_mvm_scan_uid_by_status.exit158
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then21:                                        ; preds = %iwl_mvm_scan_uid_by_status.exit158
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %arrayidx.i151 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %arrayidx.i151, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %iwl_mvm_scan_uid_by_status.exit158.if.end24_crit_edge, %for.inc.i156.if.end24_crit_edge
  %30 = ptrtoint ptr %max_scans.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr188 = load i32, ptr %max_scans.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr188)
  %cmp25180.not = icmp eq i32 %.pr188, 0
  br i1 %cmp25180.not, label %if.end24.if.end87_crit_edge, label %if.end24.for.body_crit_edge

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  br label %for.body

if.end24.if.end87_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end24.for.body_crit_edge
  %i.0181 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end24.for.body_crit_edge ]
  %arrayidx27 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 56, i32 %i.0181
  %31 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool28.not = icmp eq i32 %32, 0
  br i1 %tobool28.not, label %for.body.for.inc_crit_edge, label %land.rhs

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.rhs:                                         ; preds = %for.body
  %.b124 = load i1, ptr @iwl_mvm_report_scan_aborted.__already_done, align 1
  br i1 %.b124, label %land.rhs.if.then67_crit_edge, label %if.then36, !prof !147

land.rhs.if.then67_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then67

if.then36:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_report_scan_aborted.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3064, i32 noundef 9, ptr noundef nonnull @.str.27, i32 noundef %i.0181) #10
  br label %if.then67

if.then67:                                        ; preds = %if.then36, %land.rhs.if.then67_crit_edge
  %33 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx27, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then67, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0181, 1
  %34 = ptrtoint ptr %max_scans.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_scans.i, align 8
  %cmp25 = icmp ult i32 %inc, %35
  br i1 %cmp25, label %for.inc.for.body_crit_edge, label %for.inc.if.end87_crit_edge

for.inc.if.end87_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.else:                                          ; preds = %entry
  %scan_status = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 48
  %36 = ptrtoint ptr %scan_status to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %scan_status, align 4
  %and = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool71.not = icmp eq i32 %and, 0
  br i1 %tobool71.not, label %if.else.if.end77_crit_edge, label %if.then72

if.else.if.end77_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.then72:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info73) #10
  %38 = call ptr @memcpy(ptr %info73, ptr @__const.iwl_mvm_scan_stop.info, i32 16)
  %scan_timeout_dwork74 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 54
  %call75 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %scan_timeout_dwork74) #10
  %hw76 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %39 = ptrtoint ptr %hw76 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw76, align 4
  call void @ieee80211_scan_completed(ptr noundef %40, ptr noundef nonnull %info73) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info73) #10
  br label %if.end77

if.end77:                                         ; preds = %if.then72, %if.else.if.end77_crit_edge
  %41 = ptrtoint ptr %scan_status to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %scan_status, align 4
  %and79 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end77.if.end87_crit_edge, label %land.lhs.true

if.end77.if.end87_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

land.lhs.true:                                    ; preds = %if.end77
  %fw_restart81 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 95
  %43 = ptrtoint ptr %fw_restart81 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %fw_restart81, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool82.not = icmp eq i8 %44, 0
  br i1 %tobool82.not, label %if.then83, label %land.lhs.true.if.end87_crit_edge

land.lhs.true.if.end87_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.then83:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %hw84 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %45 = ptrtoint ptr %hw84 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw84, align 4
  call void @ieee80211_sched_scan_stopped(ptr noundef %46) #10
  %sched_scan_pass_all85 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 53
  %47 = ptrtoint ptr %sched_scan_pass_all85 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %sched_scan_pass_all85, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.then83, %land.lhs.true.if.end87_crit_edge, %if.end77.if.end87_crit_edge, %for.inc.if.end87_crit_edge, %if.end24.if.end87_crit_edge, %if.end18.if.end87_crit_edge, %if.end12.if.end87_crit_edge, %if.end.if.end87_crit_edge, %if.then.if.end87_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_scan_stop(ptr noundef %mvm, i32 noundef %type, i1 noundef zeroext %notify) local_unnamed_addr #2 align 64 {
entry:
  %cmd.i61.i = alloca %struct.iwl_host_cmd, align 4
  %status.i.i = alloca i32, align 4
  %cmd.i.i = alloca %struct.iwl_umac_scan_abort, align 8
  %wait_scan_done.i = alloca %struct.iwl_notification_wait, align 4
  %info = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %scan_status = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 48
  %0 = ptrtoint ptr %scan_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %scan_status, align 4
  %and = and i32 %1, %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %status.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %iwl_mvm_is_radio_killed.exit, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

iwl_mvm_is_radio_killed.exit:                     ; preds = %if.end
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %status.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.i.not = icmp eq i32 %6, 0
  br i1 %tobool3.i.not, label %if.end2, label %iwl_mvm_is_radio_killed.exit.out_crit_edge

iwl_mvm_is_radio_killed.exit.out_crit_edge:       ; preds = %iwl_mvm_is_radio_killed.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end2:                                          ; preds = %iwl_mvm_is_radio_killed.exit
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wait_scan_done.i) #10
  %7 = call ptr @memset(ptr %wait_scan_done.i, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i34 = icmp eq i32 %8, 0
  br i1 %tobool.not.i34, label %if.end2.if.end.i_crit_edge, label %land.rhs.i

if.end2.if.end.i_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end2
  %dep_map.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !148

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2941, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end2.if.end.i_crit_edge
  %notif_wait.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 23
  call void @iwl_init_notification_wait(ptr noundef %notif_wait.i, ptr noundef nonnull %wait_scan_done.i, ptr noundef nonnull @iwl_mvm_scan_stop_wait.scan_done_notif, i32 noundef 2, ptr noundef null, ptr noundef null) #10
  %9 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %10, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_scan_stop_wait, ptr noundef nonnull @.str.47, i32 noundef %type) #10
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %11 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw.i, align 8
  %_capa.i.i = getelementptr inbounds %struct.iwl_fw, ptr %12, i32 0, i32 5, i32 8
  %13 = ptrtoint ptr %_capa.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %_capa.i.i, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i.i) #10
  %16 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %cmd.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %17 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %if.then31.i.if.end.i.i_crit_edge, label %land.rhs.i.i

if.then31.i.if.end.i.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %if.then31.i
  %dep_map.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !148

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2910, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %if.then31.i.if.end.i.i_crit_edge
  %max_scans.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 55
  %18 = ptrtoint ptr %max_scans.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_scans.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp6.not.i.i.i = icmp eq i32 %19, 0
  br i1 %cmp6.not.i.i.i, label %if.end.i.i.land.rhs31.i.i_crit_edge, label %if.end.i.i.for.body.i.i.i_crit_edge

if.end.i.i.for.body.i.i.i_crit_edge:              ; preds = %if.end.i.i
  br label %for.body.i.i.i

if.end.i.i.land.rhs31.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs31.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i.for.body.i.i.i_crit_edge
  %i.07.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 56, i32 %i.07.i.i.i
  %20 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %type)
  %cmp1.i.i.i = icmp eq i32 %21, %type
  br i1 %cmp1.i.i.i, label %iwl_mvm_scan_uid_by_status.exit.i.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw i32 %i.07.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %19
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.land.rhs31.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.inc.i.i.i.land.rhs31.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs31.i.i

iwl_mvm_scan_uid_by_status.exit.i.i:              ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.07.i.i.i)
  %cmp25.i.i = icmp slt i32 %i.07.i.i.i, 0
  br i1 %cmp25.i.i, label %iwl_mvm_scan_uid_by_status.exit.i.i.land.rhs31.i.i_crit_edge, label %if.end79.i.i

iwl_mvm_scan_uid_by_status.exit.i.i.land.rhs31.i.i_crit_edge: ; preds = %iwl_mvm_scan_uid_by_status.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs31.i.i

land.rhs31.i.i:                                   ; preds = %iwl_mvm_scan_uid_by_status.exit.i.i.land.rhs31.i.i_crit_edge, %for.inc.i.i.i.land.rhs31.i.i_crit_edge, %if.end.i.i.land.rhs31.i.i_crit_edge
  %retval.0.i111.i.i = phi i32 [ %i.07.i.i.i, %iwl_mvm_scan_uid_by_status.exit.i.i.land.rhs31.i.i_crit_edge ], [ -2, %if.end.i.i.land.rhs31.i.i_crit_edge ], [ -2, %for.inc.i.i.i.land.rhs31.i.i_crit_edge ]
  %.b107.i.i = load i1, ptr @iwl_mvm_umac_scan_abort.__already_done, align 1
  br i1 %.b107.i.i, label %land.rhs31.i.i.iwl_mvm_umac_scan_abort.exit.i_crit_edge, label %if.then42.i.i, !prof !147

land.rhs31.i.i.iwl_mvm_umac_scan_abort.exit.i_crit_edge: ; preds = %land.rhs31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_umac_scan_abort.exit.i

if.then42.i.i:                                    ; preds = %land.rhs31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_umac_scan_abort.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2917, i32 noundef 9, ptr noundef null) #10
  br label %iwl_mvm_umac_scan_abort.exit.i

if.end79.i.i:                                     ; preds = %iwl_mvm_scan_uid_by_status.exit.i.i
  %22 = call i32 @llvm.bswap.i32(i32 %i.07.i.i.i) #10
  %23 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %cmd.i.i, align 8
  %24 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %25, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_umac_scan_abort, ptr noundef nonnull @.str.49, i32 noundef %i.07.i.i.i) #10
  %call88.i.i = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 270, i32 noundef 0, i16 noundef zeroext 8, ptr noundef nonnull %cmd.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i.i)
  %tobool89.not.i.i = icmp eq i32 %call88.i.i, 0
  br i1 %tobool89.not.i.i, label %if.then90.i.i, label %if.end79.i.i.iwl_mvm_umac_scan_abort.exit.i_crit_edge

if.end79.i.i.iwl_mvm_umac_scan_abort.exit.i_crit_edge: ; preds = %if.end79.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_umac_scan_abort.exit.i

if.then90.i.i:                                    ; preds = %if.end79.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i.i = shl i32 %type, 8
  %26 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shl.i.i, ptr %arrayidx.i.i.i, align 4
  br label %iwl_mvm_umac_scan_abort.exit.i

iwl_mvm_umac_scan_abort.exit.i:                   ; preds = %if.then90.i.i, %if.end79.i.i.iwl_mvm_umac_scan_abort.exit.i_crit_edge, %if.then42.i.i, %land.rhs31.i.i.iwl_mvm_umac_scan_abort.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %retval.0.i111.i.i, %if.then42.i.i ], [ 0, %if.then90.i.i ], [ %call88.i.i, %if.end79.i.i.iwl_mvm_umac_scan_abort.exit.i_crit_edge ], [ %retval.0.i111.i.i, %land.rhs31.i.i.iwl_mvm_umac_scan_abort.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i.i) #10
  br label %if.end34.i

if.else.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i61.i) #10
  %27 = call ptr @memset(ptr %cmd.i61.i, i32 0, i32 36)
  %28 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd.i61.i, i32 0, i32 5
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 82, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i.i) #10
  %30 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %status.i.i, align 4
  %call.i62.i = call i32 @iwl_mvm_send_cmd_status(ptr noundef %mvm, ptr noundef nonnull %cmd.i61.i, ptr noundef nonnull %status.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62.i)
  %tobool.not.i63.i = icmp eq i32 %call.i62.i, 0
  br i1 %tobool.not.i63.i, label %if.end.i65.i, label %if.else.i.iwl_mvm_lmac_scan_abort.exit.i_crit_edge

if.else.i.iwl_mvm_lmac_scan_abort.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_lmac_scan_abort.exit.i

if.end.i65.i:                                     ; preds = %if.else.i
  %31 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %status.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp.not.i64.i = icmp eq i32 %32, 1
  br i1 %cmp.not.i64.i, label %if.end.i65.i.iwl_mvm_lmac_scan_abort.exit.i_crit_edge, label %do.end.i66.i

if.end.i65.i.iwl_mvm_lmac_scan_abort.exit.i_crit_edge: ; preds = %if.end.i65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_lmac_scan_abort.exit.i

do.end.i66.i:                                     ; preds = %if.end.i65.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %34, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_lmac_scan_abort, ptr noundef nonnull @.str.50, i32 noundef %32) #10
  br label %iwl_mvm_lmac_scan_abort.exit.i

iwl_mvm_lmac_scan_abort.exit.i:                   ; preds = %do.end.i66.i, %if.end.i65.i.iwl_mvm_lmac_scan_abort.exit.i_crit_edge, %if.else.i.iwl_mvm_lmac_scan_abort.exit.i_crit_edge
  %retval.0.i67.i = phi i32 [ %call.i62.i, %if.else.i.iwl_mvm_lmac_scan_abort.exit.i_crit_edge ], [ -2, %do.end.i66.i ], [ 0, %if.end.i65.i.iwl_mvm_lmac_scan_abort.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i61.i) #10
  br label %if.end34.i

if.end34.i:                                       ; preds = %iwl_mvm_lmac_scan_abort.exit.i, %iwl_mvm_umac_scan_abort.exit.i
  %ret.0.i = phi i32 [ %retval.0.i.i, %iwl_mvm_umac_scan_abort.exit.i ], [ %retval.0.i67.i, %iwl_mvm_lmac_scan_abort.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool35.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool35.not.i, label %iwl_mvm_scan_stop_wait.exit, label %iwl_mvm_scan_stop_wait.exit.thread

iwl_mvm_scan_stop_wait.exit.thread:               ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %36, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_scan_stop_wait, ptr noundef nonnull @.str.48, i32 noundef %type) #10
  call void @iwl_remove_notification(ptr noundef %notif_wait.i, ptr noundef nonnull %wait_scan_done.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wait_scan_done.i) #10
  br label %out

iwl_mvm_scan_stop_wait.exit:                      ; preds = %if.end34.i
  %call47.i = call i32 @iwl_wait_notification(ptr noundef %notif_wait.i, ptr noundef nonnull %wait_scan_done.i, i32 noundef 100) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wait_scan_done.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool4.not = icmp eq i32 %call47.i, 0
  br i1 %tobool4.not, label %if.then5, label %iwl_mvm_scan_stop_wait.exit.out_crit_edge

iwl_mvm_scan_stop_wait.exit.out_crit_edge:        ; preds = %iwl_mvm_scan_stop_wait.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then5:                                         ; preds = %iwl_mvm_scan_stop_wait.exit
  call void @__sanitizer_cov_trace_pc() #12
  %shl = shl i32 %type, 8
  %37 = ptrtoint ptr %scan_status to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %scan_status, align 4
  %or = or i32 %38, %shl
  store i32 %or, ptr %scan_status, align 4
  br label %out

out:                                              ; preds = %if.then5, %iwl_mvm_scan_stop_wait.exit.out_crit_edge, %iwl_mvm_scan_stop_wait.exit.thread, %iwl_mvm_is_radio_killed.exit.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call47.i, %iwl_mvm_scan_stop_wait.exit.out_crit_edge ], [ 0, %if.then5 ], [ 0, %iwl_mvm_is_radio_killed.exit.out_crit_edge ], [ %ret.0.i, %iwl_mvm_scan_stop_wait.exit.thread ], [ 0, %if.end.out_crit_edge ]
  %neg = xor i32 %type, -1
  %39 = ptrtoint ptr %scan_status to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %scan_status, align 4
  %and9 = and i32 %40, %neg
  store i32 %and9, ptr %scan_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp = icmp eq i32 %type, 1
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %out
  %scan_timeout_dwork = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 54
  %call11 = call zeroext i1 @cancel_delayed_work(ptr noundef %scan_timeout_dwork) #10
  br i1 %notify, label %if.then13, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #10
  %41 = call ptr @memcpy(ptr %info, ptr @__const.iwl_mvm_scan_stop.info, i32 16)
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %42 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw, align 4
  call void @ieee80211_scan_completed(ptr noundef %43, ptr noundef nonnull %info) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #10
  br label %cleanup

if.else:                                          ; preds = %out
  br i1 %notify, label %if.then16, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %hw17 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %44 = ptrtoint ptr %hw17 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw17, align 4
  call void @ieee80211_sched_scan_stopped(ptr noundef %45) #10
  %sched_scan_pass_all = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 53
  %46 = ptrtoint ptr %sched_scan_pass_all to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %sched_scan_pass_all, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.else.cleanup_crit_edge, %if.then13, %if.then10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %if.else.cleanup_crit_edge ], [ %ret.0, %if.then16 ], [ %ret.0, %if.then10.cleanup_crit_edge ], [ %ret.0, %if.then13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iwl_mvm_low_latency_band(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_iwl_mvm_get_scan_type(ptr nocapture noundef readonly %mvm, ptr noundef %vif, i32 noundef %load, i1 noundef zeroext %low_latency) unnamed_addr #2 align 64 {
entry:
  %global_cnt = alloca i32, align 4
  %data = alloca %struct.iwl_is_dcm_with_go_iterator_data, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %global_cnt) #10
  %0 = ptrtoint ptr %global_cnt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %global_cnt, align 4
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %2, i32 noundef 0, ptr noundef nonnull @iwl_mvm_scan_condition_iterator, ptr noundef nonnull %global_cnt) #10
  %3 = ptrtoint ptr %global_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %global_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup30_crit_edge, label %if.end

entry.cleanup30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30

if.end:                                           ; preds = %entry
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %5 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw, align 8
  %_api.i = getelementptr inbounds %struct.iwl_fw, ptr %6, i32 0, i32 5, i32 7
  %7 = ptrtoint ptr %_api.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %_api.i, align 4
  %9 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not = icmp eq i32 %9, 0
  br i1 %tobool.i.not, label %if.end.if.end22_crit_edge, label %if.then1

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %load)
  %cmp = icmp eq i32 %load, 2
  %brmerge = or i1 %cmp, %low_latency
  %tobool3.not = icmp eq ptr %vif, null
  br i1 %brmerge, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.then1
  br i1 %tobool3.not, label %land.lhs.true.cleanup30_crit_edge, label %lor.lhs.false4

land.lhs.true.cleanup30_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30

lor.lhs.false4:                                   ; preds = %land.lhs.true
  %10 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %11)
  %cmp5.not = icmp eq i32 %11, 10
  br i1 %cmp5.not, label %lor.lhs.false4.if.end22_crit_edge, label %lor.lhs.false4.cleanup30_crit_edge

lor.lhs.false4.cleanup30_crit_edge:               ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30

lor.lhs.false4.if.end22_crit_edge:                ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.end7:                                          ; preds = %if.then1
  br i1 %tobool3.not, label %if.end7.if.end22_crit_edge, label %land.lhs.true9

if.end7.if.end22_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

land.lhs.true9:                                   ; preds = %if.end7
  %12 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp11 = icmp eq i32 %.pr, 2
  br i1 %cmp11, label %land.lhs.true12, label %land.lhs.true9.if.end22_crit_edge

land.lhs.true9.if.end22_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %dtim_period = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 18
  %13 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dtim_period, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -36, i8 %14)
  %cmp13 = icmp ult i8 %14, -36
  br i1 %cmp13, label %if.then15, label %land.lhs.true12.if.end22_crit_edge

land.lhs.true12.if.end22_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then15:                                        ; preds = %land.lhs.true12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #10
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 -4278190081, ptr %data, align 8, !annotation !149
  store ptr %vif, ptr %data, align 8
  %is_dcm_with_p2p_go = getelementptr inbounds %struct.iwl_is_dcm_with_go_iterator_data, ptr %data, i32 0, i32 1
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %17, i32 noundef 0, ptr noundef nonnull @iwl_mvm_is_dcm_with_go_iterator, ptr noundef nonnull %data) #10
  %18 = ptrtoint ptr %is_dcm_with_p2p_go to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_dcm_with_p2p_go, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool18.not = icmp eq i8 %19, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #10
  br i1 %tobool18.not, label %if.then15.if.end22_crit_edge, label %if.then15.cleanup30_crit_edge

if.then15.cleanup30_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30

if.then15.if.end22_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.end22:                                         ; preds = %if.then15.if.end22_crit_edge, %land.lhs.true12.if.end22_crit_edge, %land.lhs.true9.if.end22_crit_edge, %if.end7.if.end22_crit_edge, %lor.lhs.false4.if.end22_crit_edge, %if.end.if.end22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %load)
  %cmp23.not = icmp ne i32 %load, 0
  %brmerge40 = or i1 %cmp23.not, %low_latency
  %spec.select = select i1 %brmerge40, i32 3, i32 2
  br label %cleanup30

cleanup30:                                        ; preds = %if.end22, %if.then15.cleanup30_crit_edge, %lor.lhs.false4.cleanup30_crit_edge, %land.lhs.true.cleanup30_crit_edge, %entry.cleanup30_crit_edge
  %retval.1 = phi i32 [ 5, %if.then15.cleanup30_crit_edge ], [ 1, %entry.cleanup30_crit_edge ], [ 4, %lor.lhs.false4.cleanup30_crit_edge ], [ 4, %land.lhs.true.cleanup30_crit_edge ], [ %spec.select, %if.end22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %global_cnt) #10
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_active_interfaces_atomic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @iwl_mvm_scan_condition_iterator(ptr nocapture noundef %data, ptr nocapture noundef readnone %mac, ptr nocapture noundef readonly %vif) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cmp.not = icmp eq i32 %1, 10
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %phy_ctxt = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 40
  %2 = ptrtoint ptr %phy_ctxt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_ctxt, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true1

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %5)
  %cmp3 = icmp ult i16 %5, 3
  br i1 %cmp3, label %if.then, label %land.lhs.true1.if.end_crit_edge

land.lhs.true1.if.end_crit_edge:                  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  %add = add i32 %7, 1
  store i32 %add, ptr %data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true1.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @iwl_mvm_is_dcm_with_go_iterator(ptr nocapture noundef %_data, ptr nocapture noundef readnone %mac, ptr noundef readonly %vif) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_data, align 4
  %cmp = icmp eq ptr %1, %vif
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp3 = icmp eq i32 %3, 3
  br i1 %cmp3, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %p2p = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %4 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %p2p, align 2, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true4:                                   ; preds = %land.lhs.true
  %phy_ctxt = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 40
  %6 = ptrtoint ptr %phy_ctxt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_ctxt, align 8
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %land.lhs.true4.cleanup_crit_edge, label %land.lhs.true6

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %phy_ctxt7 = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 40
  %8 = ptrtoint ptr %phy_ctxt7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_ctxt7, align 8
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %land.lhs.true6.cleanup_crit_edge, label %land.lhs.true9

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %7, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %13)
  %cmp14.not = icmp eq i16 %11, %13
  br i1 %cmp14.not, label %land.lhs.true9.cleanup_crit_edge, label %if.then16

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then16:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  %is_dcm_with_p2p_go = getelementptr inbounds %struct.iwl_is_dcm_with_go_iterator_data, ptr %_data, i32 0, i32 1
  %14 = ptrtoint ptr %is_dcm_with_p2p_go to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %is_dcm_with_p2p_go, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %land.lhs.true9.cleanup_crit_edge, %land.lhs.true6.cleanup_crit_edge, %land.lhs.true4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iwl_mvm_low_latency(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_ie_split_ric(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksize(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_scan_build_ssids(ptr nocapture noundef readonly %params, ptr nocapture noundef %ssids, ptr noundef writeonly %ssid_bitmap) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %n_match_sets = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 12
  %0 = ptrtoint ptr %n_match_sets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_match_sets, align 4
  %j.0109 = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.0109)
  %cmp110 = icmp sgt i32 %j.0109, -1
  br i1 %cmp110, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %match_sets = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 14
  %umin = call i32 @llvm.umin.i32(i32 %j.0109, i32 19)
  %2 = add nuw nsw i32 %umin, 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %j.0113 = phi i32 [ %j.0109, %for.body.lr.ph ], [ %j.0, %for.inc.for.body_crit_edge ]
  %i.0111 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %match_sets to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %match_sets, align 4
  %ssid_len = getelementptr %struct.cfg80211_match_set, ptr %4, i32 %j.0113, i32 0, i32 1
  %5 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ssid_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx2 = getelementptr %struct.iwl_ssid_ie, ptr %ssids, i32 %i.0111
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx2, align 1
  %8 = ptrtoint ptr %match_sets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %match_sets, align 4
  %ssid_len6 = getelementptr %struct.cfg80211_match_set, ptr %9, i32 %j.0113, i32 0, i32 1
  %10 = ptrtoint ptr %ssid_len6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ssid_len6, align 4
  %len = getelementptr %struct.iwl_ssid_ie, ptr %ssids, i32 %i.0111, i32 1
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %len, align 1
  %ssid9 = getelementptr %struct.iwl_ssid_ie, ptr %ssids, i32 %i.0111, i32 2
  %13 = load ptr, ptr %match_sets, align 4
  %arrayidx11 = getelementptr %struct.cfg80211_match_set, ptr %13, i32 %j.0113
  %conv = zext i8 %11 to i32
  %14 = call ptr @memcpy(ptr %ssid9, ptr %arrayidx11, i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0111, 1
  %j.0 = add i32 %j.0113, -1
  %exitcond.not = icmp eq i32 %i.0111, %umin
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %2, %for.inc.for.end_crit_edge ]
  %n_ssids = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 4
  %15 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_ssids, align 4
  %j.1114 = add i32 %16, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.1114)
  %cmp19115 = icmp sgt i32 %j.1114, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %i.0.lcssa)
  %cmp22116 = icmp slt i32 %i.0.lcssa, 20
  %or.cond105117 = select i1 %cmp19115, i1 %cmp22116, i1 false
  br i1 %or.cond105117, label %for.body25.lr.ph, label %for.end.for.end59_crit_edge

for.end.for.end59_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end59

for.body25.lr.ph:                                 ; preds = %for.end
  %ssids26 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 5
  %ssid6.i = getelementptr inbounds %struct.iwl_ssid_ie, ptr %ssids, i32 0, i32 2
  br label %for.body25

for.body25:                                       ; preds = %for.inc56.for.body25_crit_edge, %for.body25.lr.ph
  %j.1121 = phi i32 [ %j.1114, %for.body25.lr.ph ], [ %j.1, %for.inc56.for.body25_crit_edge ]
  %tmp_bitmap.0120 = phi i32 [ 0, %for.body25.lr.ph ], [ %tmp_bitmap.1, %for.inc56.for.body25_crit_edge ]
  %i.1118 = phi i32 [ %i.0.lcssa, %for.body25.lr.ph ], [ %inc57, %for.inc56.for.body25_crit_edge ]
  %17 = ptrtoint ptr %ssids26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ssids26, align 4
  %arrayidx27 = getelementptr %struct.cfg80211_ssid, ptr %18, i32 %j.1121
  %ssid_len32 = getelementptr %struct.cfg80211_ssid, ptr %18, i32 %j.1121, i32 1
  %19 = ptrtoint ptr %ssid_len32 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ssid_len32, align 1
  %conv3.i = zext i8 %20 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body25
  %i.018.i = phi i32 [ 0, %for.body25 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %len.i = getelementptr %struct.iwl_ssid_ie, ptr %ssids, i32 %i.018.i, i32 1
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %for.body.i.if.then35_crit_edge, label %if.end.i

for.body.i.if.then35_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %20)
  %cmp4.i = icmp eq i8 %22, %20
  br i1 %cmp4.i, label %land.lhs.true.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %bcmp.i = tail call i32 @bcmp(ptr %ssid6.i, ptr %arrayidx27, i32 %conv3.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool8.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.for.inc56_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i.for.inc56_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc56

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20
  br i1 %exitcond.not.i, label %for.inc.i.if.then35_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.then35_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35

if.then35:                                        ; preds = %for.inc.i.if.then35_crit_edge, %for.body.i.if.then35_crit_edge
  %arrayidx36 = getelementptr %struct.iwl_ssid_ie, ptr %ssids, i32 %i.1118
  %23 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx36, align 1
  %24 = ptrtoint ptr %ssids26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ssids26, align 4
  %ssid_len40 = getelementptr %struct.cfg80211_ssid, ptr %25, i32 %j.1121, i32 1
  %26 = ptrtoint ptr %ssid_len40 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ssid_len40, align 1
  %len42 = getelementptr %struct.iwl_ssid_ie, ptr %ssids, i32 %i.1118, i32 1
  %28 = ptrtoint ptr %len42 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %len42, align 1
  %ssid44 = getelementptr %struct.iwl_ssid_ie, ptr %ssids, i32 %i.1118, i32 2
  %29 = load ptr, ptr %ssids26, align 4
  %arrayidx47 = getelementptr %struct.cfg80211_ssid, ptr %29, i32 %j.1121
  %conv52 = zext i8 %27 to i32
  %30 = call ptr @memcpy(ptr %ssid44, ptr %arrayidx47, i32 %conv52)
  br label %for.inc56

for.inc56:                                        ; preds = %if.then35, %land.lhs.true.i.for.inc56_crit_edge
  %i.1.pn = phi i32 [ %i.1118, %if.then35 ], [ %i.018.i, %land.lhs.true.i.for.inc56_crit_edge ]
  %shl.pn = shl nuw i32 1, %i.1.pn
  %tmp_bitmap.1 = or i32 %shl.pn, %tmp_bitmap.0120
  %inc57 = add nuw nsw i32 %i.1118, 1
  %j.1 = add i32 %j.1121, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.1)
  %cmp19 = icmp sgt i32 %j.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %i.1118)
  %cmp22 = icmp ult i32 %i.1118, 19
  %or.cond105 = select i1 %cmp19, i1 %cmp22, i1 false
  br i1 %or.cond105, label %for.inc56.for.body25_crit_edge, label %for.inc56.for.end59_crit_edge

for.inc56.for.end59_crit_edge:                    ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end59

for.inc56.for.body25_crit_edge:                   ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body25

for.end59:                                        ; preds = %for.inc56.for.end59_crit_edge, %for.end.for.end59_crit_edge
  %tmp_bitmap.0.lcssa = phi i32 [ 0, %for.end.for.end59_crit_edge ], [ %tmp_bitmap.1, %for.inc56.for.end59_crit_edge ]
  %tobool60.not = icmp eq ptr %ssid_bitmap, null
  br i1 %tobool60.not, label %for.end59.if.end62_crit_edge, label %if.then61

for.end59.if.end62_crit_edge:                     ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then61:                                        ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %ssid_bitmap to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %tmp_bitmap.0.lcssa, ptr %ssid_bitmap, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %for.end59.if.end62_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_mvm_next_antenna(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_mvm_scan_umac_v15(ptr noundef %mvm, ptr nocapture noundef readonly %vif, ptr noundef %params, i32 noundef %type, i32 noundef %uid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @iwl_mvm_scan_umac_v14_and_above(ptr noundef %mvm, ptr noundef %vif, ptr noundef %params, i32 noundef %type, i32 noundef %uid)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_mvm_scan_umac_v14(ptr noundef %mvm, ptr nocapture noundef readonly %vif, ptr noundef %params, i32 noundef %type, i32 noundef %uid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @iwl_mvm_scan_umac_v14_and_above(ptr noundef %mvm, ptr noundef %vif, ptr noundef %params, i32 noundef %type, i32 noundef %uid)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_mvm_scan_umac_v12(ptr noundef %mvm, ptr nocapture noundef readonly %vif, ptr nocapture noundef readonly %params, i32 noundef %type, i32 noundef %uid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %scan_cmd = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 49
  %0 = ptrtoint ptr %scan_cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scan_cmd, align 8
  %scan_params = getelementptr inbounds %struct.iwl_scan_req_umac_v12, ptr %1, i32 0, i32 2
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 56, i32 %uid
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %type, ptr %arrayidx, align 4
  %n_scan_plans.i.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 15
  %3 = ptrtoint ptr %n_scan_plans.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %n_scan_plans.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i.i = icmp eq i32 %4, 1
  br i1 %cmp.i.i, label %iwl_mvm_is_regular_scan.exit.i, label %entry.iwl_mvm_scan_umac_ooc_priority.exit_crit_edge

entry.iwl_mvm_scan_umac_ooc_priority.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_umac_ooc_priority.exit

iwl_mvm_is_regular_scan.exit.i:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %scan_plans.i.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 16
  %5 = ptrtoint ptr %scan_plans.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %scan_plans.i.i, align 4
  %iterations.i.i = getelementptr inbounds %struct.cfg80211_sched_scan_plan, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %iterations.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iterations.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp1.i.i = icmp eq i32 %8, 1
  %spec.select.i = select i1 %cmp1.i.i, i32 100663296, i32 33554432
  br label %iwl_mvm_scan_umac_ooc_priority.exit

iwl_mvm_scan_umac_ooc_priority.exit:              ; preds = %iwl_mvm_is_regular_scan.exit.i, %entry.iwl_mvm_scan_umac_ooc_priority.exit_crit_edge
  %9 = phi i32 [ 33554432, %entry.iwl_mvm_scan_umac_ooc_priority.exit_crit_edge ], [ %spec.select.i, %iwl_mvm_is_regular_scan.exit.i ]
  %ooc_priority = getelementptr inbounds %struct.iwl_scan_req_umac_v12, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %ooc_priority to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %ooc_priority, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %uid)
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %1, align 1
  %call2 = tail call fastcc zeroext i16 @iwl_mvm_scan_umac_flags_v2(ptr noundef %mvm, ptr noundef %params, i32 noundef %type)
  %13 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %params, align 4
  %adwell_default_social_chn.i.i = getelementptr inbounds %struct.iwl_scan_req_umac_v12, ptr %1, i32 0, i32 2, i32 0, i32 6
  %15 = ptrtoint ptr %adwell_default_social_chn.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 10, ptr %adwell_default_social_chn.i.i, align 1
  %adwell_default_2g.i.i = getelementptr inbounds %struct.iwl_scan_req_umac_v12, ptr %1, i32 0, i32 2, i32 0, i32 4
  %16 = ptrtoint ptr %adwell_default_2g.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %adwell_default_2g.i.i, align 1
  %adwell_default_5g.i.i = getelementptr inbounds %struct.iwl_scan_req_umac_v12, ptr %1, i32 0, i32 2, i32 0, i32 5
  %17 = ptrtoint ptr %adwell_default_5g.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 8, ptr %adwell_default_5g.i.i, align 1
  %ssids.i.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 5
  %18 = ptrtoint ptr %ssids.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ssids.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %iwl_mvm_scan_umac_ooc_priority.exit.if.else.i.i_crit_edge, label %land.lhs.true.i.i

iwl_mvm_scan_umac_ooc_priority.exit.if.else.i.i_crit_edge: ; preds = %iwl_mvm_scan_umac_ooc_priority.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %iwl_mvm_scan_umac_ooc_priority.exit
  %ssid_len.i.i = getelementptr inbounds %struct.cfg80211_ssid, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %ssid_len.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ssid_len.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool3.not.i.i = icmp eq i8 %21, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i.iwl_mvm_scan_umac_dwell_v11.exit.i_crit_edge

land.lhs.true.i.i.iwl_mvm_scan_umac_dwell_v11.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_umac_dwell_v11.exit.i

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %iwl_mvm_scan_umac_ooc_priority.exit.if.else.i.i_crit_edge
  br label %iwl_mvm_scan_umac_dwell_v11.exit.i

iwl_mvm_scan_umac_dwell_v11.exit.i:               ; preds = %if.else.i.i, %land.lhs.true.i.i.iwl_mvm_scan_umac_dwell_v11.exit.i_crit_edge
  %.sink.i.i = phi i16 [ 11265, %if.else.i.i ], [ 25600, %land.lhs.true.i.i.iwl_mvm_scan_umac_dwell_v11.exit.i_crit_edge ]
  %adwell_max_budget4.i.i = getelementptr inbounds %struct.iwl_scan_req_umac_v12, ptr %1, i32 0, i32 2, i32 0, i32 8
  %22 = ptrtoint ptr %adwell_max_budget4.i.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %.sink.i.i, ptr %adwell_max_budget4.i.i, align 1
  %arrayidx.i.i = getelementptr [6 x %struct.iwl_mvm_scan_timing_params], ptr @scan_timing, i32 0, i32 %14
  %scan_priority.i.i = getelementptr inbounds %struct.iwl_scan_req_umac_v12, ptr %1, i32 0, i32 2, i32 0, i32 11
  %23 = ptrtoint ptr %scan_priority.i.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 100663296, ptr %scan_priority.i.i, align 1
  %max_out_time.i.i = getelementptr [6 x %struct.iwl_mvm_scan_timing_params], ptr @scan_timing, i32 0, i32 %14, i32 1
  %24 = ptrtoint ptr %max_out_time.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_out_time.i.i, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #10
  %max_out_of_time.i.i = getelementptr inbounds %struct.iwl_scan_req_umac_v12, ptr %1, i32 0, i32 2, i32 0, i32 9
  %27 = ptrtoint ptr %max_out_of_time.i.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %max_out_of_time.i.i, align 1
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #10
  %suspend_time6.i.i = getelementptr inbounds %struct.iwl_scan_req_umac_v12, ptr %1, i32 0, i32 2, i32 0, i32 10
  %31 = ptrtoint ptr %suspend_time6.i.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %suspend_time6.i.i, align 1
  %hb_type.i.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 1
  %32 = ptrtoint ptr %hb_type.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hb_type.i.i, align 4
  %arrayidx8.i.i = getelementptr [6 x %struct.iwl_mvm_scan_timing_params], ptr @scan_timing, i32 0, i32 %33
  %max_out_time9.i.i = getelementptr [6 x %struct.iwl_mvm_scan_timing_params], ptr @scan_timing, i32 0, i32 %33, i32 1
  %34 = ptrtoint ptr %max_out_time9.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_out_time9.i.i, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #10
  %arrayidx11.i.i = getelementptr %struct.iwl_scan_req_umac_v12, ptr %1, i32 0, i32 2, i32 0, i32 9, i32 1
  %37 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %arrayidx11.i.i, align 1
  %38 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx8.i.i, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #10
  %arrayidx14.i.i = getelementptr %struct.iwl_scan_req_umac_v12, ptr %1, i32 0, i32 2, i32 0, i32 10, i32 1
  %41 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %arrayidx14.i.i, align 1
  %active_dwell15.i.i = getelementptr inbounds %struct.iwl_scan_req_umac_v12, ptr %1, i32 0, i32 2, i32 0, i32 3
  %42 = ptrtoint ptr %active_dwell15.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 10, ptr %active_dwell15.i.i, align 1
  %passive_dwell17.i.i = getelementptr inbounds %struct.iwl_scan_req_umac_v12, ptr %1, i32 0, i32 2, i32 0, i32 12
  %43 = ptrtoint ptr %passive_dwell17.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 110, ptr %passive_dwell17.i.i, align 1
  %arrayidx20.i.i = getelementptr %struct.iwl_scan_req_umac_v12, ptr %1, i32 0, i32 2, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 10, ptr %arrayidx20.i.i, align 1
  %arrayidx22.i.i = getelementptr %struct.iwl_scan_req_umac_v12, ptr %1, i32 0, i32 2, i32 0, i32 12, i32 1
  %45 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 110, ptr %arrayidx22.i.i, align 1
  %46 = tail call i16 @llvm.bswap.i16(i16 %call2) #10
  %47 = ptrtoint ptr %scan_params to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 %46, ptr %scan_params, align 1
  %conv.i = zext i16 %call2 to i32
  %and.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %iwl_mvm_scan_umac_dwell_v11.exit.i.if.end.i_crit_edge, label %if.then.i

iwl_mvm_scan_umac_dwell_v11.exit.i.if.end.i_crit_edge: ; preds = %iwl_mvm_scan_umac_dwell_v11.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %iwl_mvm_scan_umac_dwell_v11.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %num_of_fragments.i = getelementptr inbounds %struct.iwl_scan_req_umac_v12, ptr %1, i32 0, i32 2, i32 0, i32 13
  %48 = ptrtoint ptr %num_of_fragments.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 3, ptr %num_of_fragments.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %iwl_mvm_scan_umac_dwell_v11.exit.i.if.end.i_crit_edge
  %and2.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.iwl_mvm_scan_umac_fill_general_p_v11.exit_crit_edge, label %if.then4.i

if.end.i.iwl_mvm_scan_umac_fill_general_p_v11.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_umac_fill_general_p_v11.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx6.i = getelementptr %struct.iwl_scan_req_umac_v12, ptr %1, i32 0, i32 2, i32 0, i32 13, i32 1
  %49 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 3, ptr %arrayidx6.i, align 1
  br label %iwl_mvm_scan_umac_fill_general_p_v11.exit

iwl_mvm_scan_umac_fill_general_p_v11.exit:        ; preds = %if.then4.i, %if.end.i.iwl_mvm_scan_umac_fill_general_p_v11.exit_crit_edge
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %id.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %id.i, align 4
  %conv8.i = trunc i16 %51 to i8
  %scan_start_mac_id.i = getelementptr inbounds %struct.iwl_scan_req_umac_v12, ptr %1, i32 0, i32 2, i32 0, i32 2
  %52 = ptrtoint ptr %scan_start_mac_id.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv8.i, ptr %scan_start_mac_id.i, align 1
  %periodic_params = getelementptr inbounds %struct.iwl_scan_req_umac_v12, ptr %1, i32 0, i32 2, i32 2
  %delay = getelementptr inbounds %struct.iwl_scan_req_umac_v12, ptr %1, i32 0, i32 2, i32 2, i32 1
  %53 = ptrtoint ptr %n_scan_plans.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %n_scan_plans.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i28 = icmp eq i32 %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp.i = icmp sgt i32 %54, 2
  %spec.select.i29 = or i1 %tobool.not.i28, %cmp.i
  br i1 %spec.select.i29, label %iwl_mvm_fill_scan_sched_params.exit, label %for.cond.preheader.i, !prof !148

for.cond.preheader.i:                             ; preds = %iwl_mvm_scan_umac_fill_general_p_v11.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp2557.i = icmp sgt i32 %54, 0
  br i1 %cmp2557.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %scan_plans.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.058.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %55 = ptrtoint ptr %scan_plans.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %scan_plans.i, align 4
  %arrayidx.i = getelementptr %struct.cfg80211_sched_scan_plan, ptr %56, i32 %i.058.i
  %iterations.i = getelementptr %struct.cfg80211_sched_scan_plan, ptr %56, i32 %i.058.i, i32 1
  %57 = ptrtoint ptr %iterations.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %iterations.i, align 4
  %conv.i30 = trunc i32 %58 to i8
  %arrayidx26.i = getelementptr %struct.iwl_scan_umac_schedule, ptr %periodic_params, i32 %i.058.i
  %iter_count.i = getelementptr %struct.iwl_scan_umac_schedule, ptr %periodic_params, i32 %i.058.i, i32 1
  %59 = ptrtoint ptr %iter_count.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv.i30, ptr %iter_count.i, align 1
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i, align 4
  %conv27.i = trunc i32 %61 to i16
  %62 = tail call i16 @llvm.bswap.i16(i16 %conv27.i) #10
  %63 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 2)
  store i16 %62, ptr %arrayidx26.i, align 1
  %inc.i = add nuw nsw i32 %i.058.i, 1
  %64 = ptrtoint ptr %n_scan_plans.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %n_scan_plans.i.i, align 4
  %cmp25.i = icmp slt i32 %inc.i, %65
  br i1 %cmp25.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ %54, %for.cond.preheader.i.for.end.i_crit_edge ], [ %65, %for.body.i.for.end.i_crit_edge ]
  %sub.i = add i32 %.lcssa.i, -1
  %iter_count32.i = getelementptr %struct.iwl_scan_umac_schedule, ptr %periodic_params, i32 %sub.i, i32 1
  %66 = ptrtoint ptr %iter_count32.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %iter_count32.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool33.not.i = icmp eq i8 %67, 0
  br i1 %tobool33.not.i, label %if.then34.i, label %for.end.i.if.end_crit_edge

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then34.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %iter_count32.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -1, ptr %iter_count32.i, align 1
  br label %if.end

iwl_mvm_fill_scan_sched_params.exit:              ; preds = %iwl_mvm_scan_umac_fill_general_p_v11.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2134, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %if.then34.i, %for.end.i.if.end_crit_edge
  %delay40.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 3
  %69 = ptrtoint ptr %delay40.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %delay40.i, align 4
  %71 = tail call i16 @llvm.bswap.i16(i16 %70) #10
  %72 = ptrtoint ptr %delay to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %delay, align 2
  %probe_params = getelementptr inbounds %struct.iwl_scan_req_umac_v12, ptr %1, i32 0, i32 2, i32 3
  %preq1.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13
  %73 = call ptr @memcpy(ptr %probe_params, ptr %preq1.i, i32 532)
  %n_ssids.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 4
  %74 = ptrtoint ptr %n_ssids.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %n_ssids.i, align 4
  %conv.i31 = trunc i32 %75 to i8
  %ssid_num.i = getelementptr inbounds %struct.iwl_scan_req_umac_v12, ptr %1, i32 0, i32 2, i32 3, i32 1
  %76 = ptrtoint ptr %ssid_num.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv.i31, ptr %ssid_num.i, align 1
  %direct_scan.i = getelementptr inbounds %struct.iwl_scan_req_umac_v12, ptr %1, i32 0, i32 2, i32 3, i32 5
  tail call fastcc void @iwl_scan_build_ssids(ptr noundef %params, ptr noundef %direct_scan.i, ptr noundef null) #10
  %channel_params = getelementptr inbounds %struct.iwl_scan_req_umac_v12, ptr %1, i32 0, i32 2, i32 1
  %fw.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %77 = ptrtoint ptr %fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %fw.i.i.i, align 8
  %arrayidx.i.i.i.i.i.i = getelementptr %struct.iwl_fw, ptr %78, i32 0, i32 5, i32 8, i32 1
  %79 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %arrayidx.i.i.i.i.i.i, align 4
  %81 = and i32 %80, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.i.i.not.i.i.i = icmp eq i32 %81, 0
  br i1 %tobool.i.i.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i.i = tail call zeroext i1 @iwl_mvm_low_latency_band(ptr noundef %mvm, i32 noundef 1) #10
  br label %if.end.i.i.i

if.else.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i.i.i = tail call zeroext i1 @iwl_mvm_low_latency(ptr noundef %mvm) #10
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i.i, %if.then.i.i.i
  %low_latency.0.in.i.i.i = phi i1 [ %call1.i.i.i, %if.then.i.i.i ], [ %call2.i.i.i, %if.else.i.i.i ]
  %flags.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %78, i32 0, i32 5, i32 3
  %82 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %83, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_umac_chan_flags_v2.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i.i
  %last_ebs_successful.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 64
  %84 = ptrtoint ptr %last_ebs_successful.i.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %last_ebs_successful.i.i.i, align 8, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool4.not.i.i.i = icmp eq i8 %85, 0
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge, label %land.lhs.true5.i.i.i

land.lhs.true.i.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_umac_chan_flags_v2.exit.i

land.lhs.true5.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %86 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %87)
  %cmp.not.i.i.i = icmp eq i32 %87, 10
  %low_latency.0.in.not.i.i.i = xor i1 %low_latency.0.in.i.i.i, true
  %brmerge.i.i.i = select i1 %cmp.not.i.i.i, i1 true, i1 %low_latency.0.in.not.i.i.i
  br i1 %brmerge.i.i.i, label %iwl_mvm_scan_use_ebs.exit.i.i, label %lor.rhs.i.i.i

lor.rhs.i.i.i:                                    ; preds = %land.lhs.true5.i.i.i
  %88 = ptrtoint ptr %fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %fw.i.i.i, align 8
  %arrayidx.i.i.i14.i.i.i = getelementptr %struct.iwl_fw, ptr %89, i32 0, i32 5, i32 7, i32 1
  %90 = ptrtoint ptr %arrayidx.i.i.i14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %arrayidx.i.i.i14.i.i.i, align 4
  %92 = and i32 %91, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.i.i15.i.not.i.i = icmp eq i32 %92, 0
  br i1 %tobool.i.i15.i.not.i.i, label %lor.rhs.i.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge, label %lor.rhs.i.i.i._crit_edge

lor.rhs.i.i.i._crit_edge:                         ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %93

lor.rhs.i.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge: ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_umac_chan_flags_v2.exit.i

iwl_mvm_scan_use_ebs.exit.i.i:                    ; preds = %land.lhs.true5.i.i.i
  br i1 %cmp.not.i.i.i, label %iwl_mvm_scan_use_ebs.exit.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge, label %iwl_mvm_scan_use_ebs.exit.i.i._crit_edge

iwl_mvm_scan_use_ebs.exit.i.i._crit_edge:         ; preds = %iwl_mvm_scan_use_ebs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %93

iwl_mvm_scan_use_ebs.exit.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge: ; preds = %iwl_mvm_scan_use_ebs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_umac_chan_flags_v2.exit.i

93:                                               ; preds = %iwl_mvm_scan_use_ebs.exit.i.i._crit_edge, %lor.rhs.i.i.i._crit_edge
  br label %iwl_mvm_scan_umac_chan_flags_v2.exit.i

iwl_mvm_scan_umac_chan_flags_v2.exit.i:           ; preds = %93, %iwl_mvm_scan_use_ebs.exit.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge, %lor.rhs.i.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge, %land.lhs.true.i.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge, %if.end.i.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge
  %94 = phi i8 [ 39, %93 ], [ 32, %iwl_mvm_scan_use_ebs.exit.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge ], [ 32, %lor.rhs.i.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge ], [ 32, %land.lhs.true.i.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge ], [ 32, %if.end.i.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge ]
  %95 = ptrtoint ptr %hb_type.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %hb_type.i.i, align 4
  %97 = and i32 %96, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %97)
  %98 = icmp eq i32 %97, 4
  %99 = or i8 %94, 8
  %flags.1.i.i = select i1 %98, i8 %99, i8 %94
  %100 = ptrtoint ptr %channel_params to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %flags.1.i.i, ptr %channel_params, align 1
  %n_channels.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 2
  %101 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %n_channels.i, align 4
  %conv.i33 = trunc i32 %102 to i8
  %count.i = getelementptr inbounds %struct.iwl_scan_req_umac_v12, ptr %1, i32 0, i32 2, i32 1, i32 1
  %103 = ptrtoint ptr %count.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv.i33, ptr %count.i, align 1
  %num_of_aps_override.i = getelementptr inbounds %struct.iwl_scan_req_umac_v12, ptr %1, i32 0, i32 2, i32 1, i32 2
  %104 = ptrtoint ptr %num_of_aps_override.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 10, ptr %num_of_aps_override.i, align 1
  %channels.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 6
  %105 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %channels.i, align 4
  %107 = load i32, ptr %n_channels.i, align 4
  %adwell_ch_override_bitmap.i.i = getelementptr inbounds %struct.iwl_scan_req_umac_v12, ptr %1, i32 0, i32 2, i32 1, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp1.i.i34 = icmp sgt i32 %107, 0
  br i1 %cmp1.i.i34, label %for.body.lr.ph.i.i, label %iwl_mvm_scan_umac_chan_flags_v2.exit.i.cleanup_crit_edge

iwl_mvm_scan_umac_chan_flags_v2.exit.i.cleanup_crit_edge: ; preds = %iwl_mvm_scan_umac_chan_flags_v2.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph.i.i:                               ; preds = %iwl_mvm_scan_umac_chan_flags_v2.exit.i
  %108 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %109)
  %cmp.not.i.i1.i = icmp eq i32 %109, 10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %iwl_mvm_scan_ch_add_n_aps_override.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.02.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %iwl_mvm_scan_ch_add_n_aps_override.exit.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i35 = getelementptr ptr, ptr %106, i32 %i.02.i.i
  %110 = ptrtoint ptr %arrayidx.i.i35 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx.i.i35, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %111, align 4
  %arrayidx2.i.i = getelementptr %struct.iwl_scan_req_umac_v12, ptr %1, i32 0, i32 2, i32 1, i32 4, i32 %i.02.i.i
  %114 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_storeN_noabort(i32 %114, i32 4)
  store i32 0, ptr %arrayidx2.i.i, align 1
  %115 = load ptr, ptr %arrayidx.i.i35, align 4
  %hw_value.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %115, i32 0, i32 3
  %116 = ptrtoint ptr %hw_value.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %hw_value.i.i, align 2
  %conv.i.i = trunc i16 %117 to i8
  %118 = getelementptr %struct.iwl_scan_req_umac_v12, ptr %1, i32 0, i32 2, i32 1, i32 4, i32 %i.02.i.i, i32 1
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv.i.i, ptr %118, align 1
  %120 = zext i32 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %113, label %land.end.i.i.i [
    i32 0, label %for.body.i.i.iwl_mvm_phy_band_from_nl80211.exit.i.i_crit_edge
    i32 1, label %sw.bb1.i.i.i
    i32 3, label %sw.bb2.i.i.i
  ]

for.body.i.i.iwl_mvm_phy_band_from_nl80211.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_phy_band_from_nl80211.exit.i.i

sw.bb1.i.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_phy_band_from_nl80211.exit.i.i

sw.bb2.i.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_phy_band_from_nl80211.exit.i.i

land.end.i.i.i:                                   ; preds = %for.body.i.i
  %.b38.i.i.i = load i1, ptr @iwl_mvm_phy_band_from_nl80211.__already_done, align 1
  br i1 %.b38.i.i.i, label %land.end.i.i.i.iwl_mvm_phy_band_from_nl80211.exit.i.i_crit_edge, label %if.then.i.i2.i, !prof !147

land.end.i.i.i.iwl_mvm_phy_band_from_nl80211.exit.i.i_crit_edge: ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_phy_band_from_nl80211.exit.i.i

if.then.i.i2.i:                                   ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_phy_band_from_nl80211.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 2099, i32 noundef 9, ptr noundef nonnull @.str.43, i32 noundef %113) #10
  br label %iwl_mvm_phy_band_from_nl80211.exit.i.i

iwl_mvm_phy_band_from_nl80211.exit.i.i:           ; preds = %if.then.i.i2.i, %land.end.i.i.i.iwl_mvm_phy_band_from_nl80211.exit.i.i_crit_edge, %sw.bb2.i.i.i, %sw.bb1.i.i.i, %for.body.i.i.iwl_mvm_phy_band_from_nl80211.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i8 [ 2, %sw.bb2.i.i.i ], [ 0, %sw.bb1.i.i.i ], [ 1, %for.body.i.i.iwl_mvm_phy_band_from_nl80211.exit.i.i_crit_edge ], [ 0, %if.then.i.i2.i ], [ 0, %land.end.i.i.i.iwl_mvm_phy_band_from_nl80211.exit.i.i_crit_edge ]
  %band5.i.i = getelementptr inbounds %struct.anon.195, ptr %118, i32 0, i32 1
  %121 = ptrtoint ptr %band5.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %retval.0.i.i.i, ptr %band5.i.i, align 1
  %iter_count.i.i = getelementptr inbounds %struct.anon.195, ptr %118, i32 0, i32 2
  %122 = ptrtoint ptr %iter_count.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %iter_count.i.i, align 1
  %iter_interval.i.i = getelementptr inbounds %struct.anon.195, ptr %118, i32 0, i32 3
  %123 = ptrtoint ptr %iter_interval.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %iter_interval.i.i, align 1
  %124 = ptrtoint ptr %118 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %118, align 1
  br i1 %cmp.not.i.i1.i, label %for.body.preheader.i.i.i, label %iwl_mvm_phy_band_from_nl80211.exit.i.i.iwl_mvm_scan_ch_add_n_aps_override.exit.i.i_crit_edge

iwl_mvm_phy_band_from_nl80211.exit.i.i.iwl_mvm_scan_ch_add_n_aps_override.exit.i.i_crit_edge: ; preds = %iwl_mvm_phy_band_from_nl80211.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_ch_add_n_aps_override.exit.i.i

for.body.preheader.i.i.i:                         ; preds = %iwl_mvm_phy_band_from_nl80211.exit.i.i
  %126 = zext i8 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %125, label %for.body.preheader.i.i.i.iwl_mvm_scan_ch_add_n_aps_override.exit.i.i_crit_edge [
    i8 36, label %for.body.preheader.i.i.i.for.body.preheader.i.i.i.i_crit_edge
    i8 40, label %for.body.preheader.i.i.i.for.body.preheader.i.i.i.i_crit_edge38
    i8 44, label %for.body.preheader.i.i.i.for.body.preheader.i.i.i.i_crit_edge39
    i8 48, label %for.body.preheader.i.i.i.for.body.preheader.i.i.i.i_crit_edge40
    i8 -107, label %for.body.preheader.i.i.i.for.body.preheader.i.i.i.i_crit_edge41
    i8 -103, label %for.body.preheader.i.i.i.for.body.preheader.i.i.i.i_crit_edge42
    i8 -99, label %for.body.preheader.i.i.i.for.body.preheader.i.i.i.i_crit_edge43
    i8 -95, label %for.body.preheader.i.i.i.for.body.preheader.i.i.i.i_crit_edge44
    i8 -91, label %for.body.preheader.i.i.i.for.body.preheader.i.i.i.i_crit_edge45
  ]

for.body.preheader.i.i.i.for.body.preheader.i.i.i.i_crit_edge45: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader.i.i.i.i

for.body.preheader.i.i.i.for.body.preheader.i.i.i.i_crit_edge44: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader.i.i.i.i

for.body.preheader.i.i.i.for.body.preheader.i.i.i.i_crit_edge43: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader.i.i.i.i

for.body.preheader.i.i.i.for.body.preheader.i.i.i.i_crit_edge42: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader.i.i.i.i

for.body.preheader.i.i.i.for.body.preheader.i.i.i.i_crit_edge41: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader.i.i.i.i

for.body.preheader.i.i.i.for.body.preheader.i.i.i.i_crit_edge40: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader.i.i.i.i

for.body.preheader.i.i.i.for.body.preheader.i.i.i.i_crit_edge39: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader.i.i.i.i

for.body.preheader.i.i.i.for.body.preheader.i.i.i.i_crit_edge38: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader.i.i.i.i

for.body.preheader.i.i.i.for.body.preheader.i.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader.i.i.i.i

for.body.preheader.i.i.i.iwl_mvm_scan_ch_add_n_aps_override.exit.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_ch_add_n_aps_override.exit.i.i

for.body.preheader.i.i.i.i:                       ; preds = %for.body.preheader.i.i.i.for.body.preheader.i.i.i.i_crit_edge, %for.body.preheader.i.i.i.for.body.preheader.i.i.i.i_crit_edge38, %for.body.preheader.i.i.i.for.body.preheader.i.i.i.i_crit_edge39, %for.body.preheader.i.i.i.for.body.preheader.i.i.i.i_crit_edge40, %for.body.preheader.i.i.i.for.body.preheader.i.i.i.i_crit_edge41, %for.body.preheader.i.i.i.for.body.preheader.i.i.i.i_crit_edge42, %for.body.preheader.i.i.i.for.body.preheader.i.i.i.i_crit_edge43, %for.body.preheader.i.i.i.for.body.preheader.i.i.i.i_crit_edge44, %for.body.preheader.i.i.i.for.body.preheader.i.i.i.i_crit_edge45
  %trunc.i.i = trunc i8 %retval.0.i.i.i to i2
  %127 = zext i2 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %127, ptr @__sancov_gen_cov_switch_values.63)
  switch i2 %trunc.i.i, label %for.body.preheader.i.i.i.i.iwl_mvm_scan_ch_add_n_aps_override.exit.i.i_crit_edge [
    i2 -2, label %for.body.preheader.i.i.i.i.if.end15.i.i.i.i_crit_edge
    i2 0, label %lor.lhs.false9.1.i.i.i.i
  ]

for.body.preheader.i.i.i.i.if.end15.i.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i.i.i.i

for.body.preheader.i.i.i.i.iwl_mvm_scan_ch_add_n_aps_override.exit.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_ch_add_n_aps_override.exit.i.i

if.end15.i.i.i.i:                                 ; preds = %lor.lhs.false.2.i.i.i.i.if.end15.i.i.i.i_crit_edge, %lor.lhs.false9.1.i.i.i.i.if.end15.i.i.i.i_crit_edge, %for.body.preheader.i.i.i.i.if.end15.i.i.i.i_crit_edge
  %i.047.lcssa.i.i.i.i = phi i32 [ 1, %lor.lhs.false9.1.i.i.i.i.if.end15.i.i.i.i_crit_edge ], [ 2, %lor.lhs.false.2.i.i.i.i.if.end15.i.i.i.i_crit_edge ], [ 3, %for.body.preheader.i.i.i.i.if.end15.i.i.i.i_crit_edge ]
  %.lcssa.neg.i.i.i.i = phi i32 [ -36, %lor.lhs.false9.1.i.i.i.i.if.end15.i.i.i.i_crit_edge ], [ -149, %lor.lhs.false.2.i.i.i.i.if.end15.i.i.i.i_crit_edge ], [ -1, %for.body.preheader.i.i.i.i.if.end15.i.i.i.i_crit_edge ]
  %arrayidx.le.i.i.i.i = getelementptr [4 x %struct.iwl_mvm_scan_channel_segment], ptr @scan_channel_segments, i32 0, i32 %i.047.lcssa.i.i.i.i
  %conv6.le.i.i.i.i = zext i8 %125 to i32
  %sub.i.i.i.i = add nsw i32 %.lcssa.neg.i.i.i.i, %conv6.le.i.i.i.i
  %channel_spacing_shift.i.i.i.i = getelementptr [4 x %struct.iwl_mvm_scan_channel_segment], ptr @scan_channel_segments, i32 0, i32 %i.047.lcssa.i.i.i.i, i32 4
  %128 = ptrtoint ptr %channel_spacing_shift.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %channel_spacing_shift.i.i.i.i, align 1
  %conv19.i.i.i.i = zext i8 %129 to i32
  %shr.i.i.i.i = ashr i32 %sub.i.i.i.i, %conv19.i.i.i.i
  %130 = ptrtoint ptr %arrayidx.le.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx.le.i.i.i.i, align 1
  %conv21.i.i.i.i = zext i8 %131 to i32
  %add.i.i.i.i = add nsw i32 %shr.i.i.i.i, %conv21.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 111, i32 %add.i.i.i.i)
  %132 = icmp ugt i32 %add.i.i.i.i, 111
  br i1 %132, label %if.end15.i.i.i.i.iwl_mvm_scan_ch_add_n_aps_override.exit.i.i_crit_edge, label %if.end9.i.i.i

if.end15.i.i.i.i.iwl_mvm_scan_ch_add_n_aps_override.exit.i.i_crit_edge: ; preds = %if.end15.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_ch_add_n_aps_override.exit.i.i

lor.lhs.false9.1.i.i.i.i:                         ; preds = %for.body.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %125)
  %cmp12.1.i.i.i.i = icmp ugt i8 %125, -112
  br i1 %cmp12.1.i.i.i.i, label %lor.lhs.false.2.i.i.i.i, label %lor.lhs.false9.1.i.i.i.i.if.end15.i.i.i.i_crit_edge

lor.lhs.false9.1.i.i.i.i.if.end15.i.i.i.i_crit_edge: ; preds = %lor.lhs.false9.1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i.i.i.i

lor.lhs.false.2.i.i.i.i:                          ; preds = %lor.lhs.false9.1.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -107, i8 %125)
  %133 = icmp ult i8 %125, -107
  br i1 %133, label %lor.lhs.false.2.i.i.i.i.iwl_mvm_scan_ch_add_n_aps_override.exit.i.i_crit_edge, label %lor.lhs.false.2.i.i.i.i.if.end15.i.i.i.i_crit_edge

lor.lhs.false.2.i.i.i.i.if.end15.i.i.i.i_crit_edge: ; preds = %lor.lhs.false.2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i.i.i.i

lor.lhs.false.2.i.i.i.i.iwl_mvm_scan_ch_add_n_aps_override.exit.i.i_crit_edge: ; preds = %lor.lhs.false.2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_ch_add_n_aps_override.exit.i.i

if.end9.i.i.i:                                    ; preds = %if.end15.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %div456.i.i.i = lshr i32 %add.i.i.i.i, 3
  %rem1.i.i.i = and i32 %add.i.i.i.i, 7
  %shl.i.i.i = shl nuw nsw i32 1, %rem1.i.i.i
  %arrayidx14.i.i.i = getelementptr i8, ptr %adwell_ch_override_bitmap.i.i, i32 %div456.i.i.i
  %134 = ptrtoint ptr %arrayidx14.i.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx14.i.i.i, align 1
  %136 = trunc i32 %shl.i.i.i to i8
  %conv16.i.i.i = or i8 %135, %136
  store i8 %conv16.i.i.i, ptr %arrayidx14.i.i.i, align 1
  br label %iwl_mvm_scan_ch_add_n_aps_override.exit.i.i

iwl_mvm_scan_ch_add_n_aps_override.exit.i.i:      ; preds = %if.end9.i.i.i, %lor.lhs.false.2.i.i.i.i.iwl_mvm_scan_ch_add_n_aps_override.exit.i.i_crit_edge, %if.end15.i.i.i.i.iwl_mvm_scan_ch_add_n_aps_override.exit.i.i_crit_edge, %for.body.preheader.i.i.i.i.iwl_mvm_scan_ch_add_n_aps_override.exit.i.i_crit_edge, %for.body.preheader.i.i.i.iwl_mvm_scan_ch_add_n_aps_override.exit.i.i_crit_edge, %iwl_mvm_phy_band_from_nl80211.exit.i.i.iwl_mvm_scan_ch_add_n_aps_override.exit.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %107
  br i1 %exitcond.not.i.i, label %iwl_mvm_scan_ch_add_n_aps_override.exit.i.i.cleanup_crit_edge, label %iwl_mvm_scan_ch_add_n_aps_override.exit.i.i.for.body.i.i_crit_edge

iwl_mvm_scan_ch_add_n_aps_override.exit.i.i.for.body.i.i_crit_edge: ; preds = %iwl_mvm_scan_ch_add_n_aps_override.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

iwl_mvm_scan_ch_add_n_aps_override.exit.i.i.cleanup_crit_edge: ; preds = %iwl_mvm_scan_ch_add_n_aps_override.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %iwl_mvm_scan_ch_add_n_aps_override.exit.i.i.cleanup_crit_edge, %iwl_mvm_scan_umac_chan_flags_v2.exit.i.cleanup_crit_edge, %iwl_mvm_fill_scan_sched_params.exit
  %retval.0 = phi i32 [ -22, %iwl_mvm_fill_scan_sched_params.exit ], [ 0, %iwl_mvm_scan_umac_chan_flags_v2.exit.i.cleanup_crit_edge ], [ 0, %iwl_mvm_scan_ch_add_n_aps_override.exit.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_scan_umac_v14_and_above(ptr noundef %mvm, ptr nocapture noundef readonly %vif, ptr noundef readonly %params, i32 noundef %type, i32 noundef %uid) unnamed_addr #2 align 64 {
entry:
  %bitmap_ssid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %scan_cmd = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 49
  %0 = ptrtoint ptr %scan_cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scan_cmd, align 8
  %scan_params = getelementptr inbounds %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2
  %channel_params = getelementptr inbounds %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 1
  %probe_params = getelementptr inbounds %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitmap_ssid) #10
  %2 = ptrtoint ptr %bitmap_ssid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %bitmap_ssid, align 4
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 56, i32 %uid
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %type, ptr %arrayidx, align 4
  %n_scan_plans.i.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 15
  %4 = ptrtoint ptr %n_scan_plans.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_scan_plans.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 1
  br i1 %cmp.i.i, label %iwl_mvm_is_regular_scan.exit.i, label %entry.iwl_mvm_scan_umac_ooc_priority.exit_crit_edge

entry.iwl_mvm_scan_umac_ooc_priority.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_umac_ooc_priority.exit

iwl_mvm_is_regular_scan.exit.i:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %scan_plans.i.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 16
  %6 = ptrtoint ptr %scan_plans.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scan_plans.i.i, align 4
  %iterations.i.i = getelementptr inbounds %struct.cfg80211_sched_scan_plan, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %iterations.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iterations.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp1.i.i = icmp eq i32 %9, 1
  %spec.select.i = select i1 %cmp1.i.i, i32 100663296, i32 33554432
  br label %iwl_mvm_scan_umac_ooc_priority.exit

iwl_mvm_scan_umac_ooc_priority.exit:              ; preds = %iwl_mvm_is_regular_scan.exit.i, %entry.iwl_mvm_scan_umac_ooc_priority.exit_crit_edge
  %10 = phi i32 [ 33554432, %entry.iwl_mvm_scan_umac_ooc_priority.exit_crit_edge ], [ %spec.select.i, %iwl_mvm_is_regular_scan.exit.i ]
  %ooc_priority = getelementptr inbounds %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %ooc_priority to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %ooc_priority, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %uid)
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %1, align 1
  %call2 = tail call fastcc zeroext i16 @iwl_mvm_scan_umac_flags_v2(ptr noundef %mvm, ptr noundef %params, i32 noundef %type)
  %14 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %params, align 4
  %adwell_default_social_chn.i.i = getelementptr inbounds %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 0, i32 6
  %16 = ptrtoint ptr %adwell_default_social_chn.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 10, ptr %adwell_default_social_chn.i.i, align 1
  %adwell_default_2g.i.i = getelementptr inbounds %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 0, i32 4
  %17 = ptrtoint ptr %adwell_default_2g.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %adwell_default_2g.i.i, align 1
  %adwell_default_5g.i.i = getelementptr inbounds %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 0, i32 5
  %18 = ptrtoint ptr %adwell_default_5g.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 8, ptr %adwell_default_5g.i.i, align 1
  %ssids.i.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 5
  %19 = ptrtoint ptr %ssids.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ssids.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %iwl_mvm_scan_umac_ooc_priority.exit.if.else.i.i_crit_edge, label %land.lhs.true.i.i

iwl_mvm_scan_umac_ooc_priority.exit.if.else.i.i_crit_edge: ; preds = %iwl_mvm_scan_umac_ooc_priority.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %iwl_mvm_scan_umac_ooc_priority.exit
  %ssid_len.i.i = getelementptr inbounds %struct.cfg80211_ssid, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %ssid_len.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ssid_len.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool3.not.i.i = icmp eq i8 %22, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i.iwl_mvm_scan_umac_dwell_v11.exit.i_crit_edge

land.lhs.true.i.i.iwl_mvm_scan_umac_dwell_v11.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_umac_dwell_v11.exit.i

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %iwl_mvm_scan_umac_ooc_priority.exit.if.else.i.i_crit_edge
  br label %iwl_mvm_scan_umac_dwell_v11.exit.i

iwl_mvm_scan_umac_dwell_v11.exit.i:               ; preds = %if.else.i.i, %land.lhs.true.i.i.iwl_mvm_scan_umac_dwell_v11.exit.i_crit_edge
  %.sink.i.i = phi i16 [ 11265, %if.else.i.i ], [ 25600, %land.lhs.true.i.i.iwl_mvm_scan_umac_dwell_v11.exit.i_crit_edge ]
  %adwell_max_budget4.i.i = getelementptr inbounds %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 0, i32 8
  %23 = ptrtoint ptr %adwell_max_budget4.i.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %.sink.i.i, ptr %adwell_max_budget4.i.i, align 1
  %arrayidx.i.i = getelementptr [6 x %struct.iwl_mvm_scan_timing_params], ptr @scan_timing, i32 0, i32 %15
  %scan_priority.i.i = getelementptr inbounds %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 0, i32 11
  %24 = ptrtoint ptr %scan_priority.i.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 100663296, ptr %scan_priority.i.i, align 1
  %max_out_time.i.i = getelementptr [6 x %struct.iwl_mvm_scan_timing_params], ptr @scan_timing, i32 0, i32 %15, i32 1
  %25 = ptrtoint ptr %max_out_time.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_out_time.i.i, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #10
  %max_out_of_time.i.i = getelementptr inbounds %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 0, i32 9
  %28 = ptrtoint ptr %max_out_of_time.i.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %max_out_of_time.i.i, align 1
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #10
  %suspend_time6.i.i = getelementptr inbounds %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 0, i32 10
  %32 = ptrtoint ptr %suspend_time6.i.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %suspend_time6.i.i, align 1
  %hb_type.i.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 1
  %33 = ptrtoint ptr %hb_type.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hb_type.i.i, align 4
  %arrayidx8.i.i = getelementptr [6 x %struct.iwl_mvm_scan_timing_params], ptr @scan_timing, i32 0, i32 %34
  %max_out_time9.i.i = getelementptr [6 x %struct.iwl_mvm_scan_timing_params], ptr @scan_timing, i32 0, i32 %34, i32 1
  %35 = ptrtoint ptr %max_out_time9.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_out_time9.i.i, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #10
  %arrayidx11.i.i = getelementptr %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 0, i32 9, i32 1
  %38 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %arrayidx11.i.i, align 1
  %39 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx8.i.i, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #10
  %arrayidx14.i.i = getelementptr %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 0, i32 10, i32 1
  %42 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %arrayidx14.i.i, align 1
  %active_dwell15.i.i = getelementptr inbounds %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 0, i32 3
  %43 = ptrtoint ptr %active_dwell15.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 10, ptr %active_dwell15.i.i, align 1
  %passive_dwell17.i.i = getelementptr inbounds %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 0, i32 12
  %44 = ptrtoint ptr %passive_dwell17.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 110, ptr %passive_dwell17.i.i, align 1
  %arrayidx20.i.i = getelementptr %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 10, ptr %arrayidx20.i.i, align 1
  %arrayidx22.i.i = getelementptr %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 0, i32 12, i32 1
  %46 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 110, ptr %arrayidx22.i.i, align 1
  %47 = tail call i16 @llvm.bswap.i16(i16 %call2) #10
  %48 = ptrtoint ptr %scan_params to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %47, ptr %scan_params, align 1
  %conv.i = zext i16 %call2 to i32
  %and.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %iwl_mvm_scan_umac_dwell_v11.exit.i.if.end.i_crit_edge, label %if.then.i

iwl_mvm_scan_umac_dwell_v11.exit.i.if.end.i_crit_edge: ; preds = %iwl_mvm_scan_umac_dwell_v11.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %iwl_mvm_scan_umac_dwell_v11.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %num_of_fragments.i = getelementptr inbounds %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 0, i32 13
  %49 = ptrtoint ptr %num_of_fragments.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 3, ptr %num_of_fragments.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %iwl_mvm_scan_umac_dwell_v11.exit.i.if.end.i_crit_edge
  %and2.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.iwl_mvm_scan_umac_fill_general_p_v11.exit_crit_edge, label %if.then4.i

if.end.i.iwl_mvm_scan_umac_fill_general_p_v11.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_umac_fill_general_p_v11.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx6.i = getelementptr %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 0, i32 13, i32 1
  %50 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 3, ptr %arrayidx6.i, align 1
  br label %iwl_mvm_scan_umac_fill_general_p_v11.exit

iwl_mvm_scan_umac_fill_general_p_v11.exit:        ; preds = %if.then4.i, %if.end.i.iwl_mvm_scan_umac_fill_general_p_v11.exit_crit_edge
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %id.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %id.i, align 4
  %conv8.i = trunc i16 %52 to i8
  %scan_start_mac_id.i = getelementptr inbounds %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 0, i32 2
  %53 = ptrtoint ptr %scan_start_mac_id.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv8.i, ptr %scan_start_mac_id.i, align 1
  %periodic_params = getelementptr inbounds %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 2
  %delay = getelementptr inbounds %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 2, i32 1
  %54 = ptrtoint ptr %n_scan_plans.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %n_scan_plans.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i1 = icmp eq i32 %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp.i = icmp sgt i32 %55, 2
  %spec.select.i2 = or i1 %tobool.not.i1, %cmp.i
  br i1 %spec.select.i2, label %iwl_mvm_fill_scan_sched_params.exit, label %for.cond.preheader.i, !prof !148

for.cond.preheader.i:                             ; preds = %iwl_mvm_scan_umac_fill_general_p_v11.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp2557.i = icmp sgt i32 %55, 0
  br i1 %cmp2557.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %scan_plans.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.058.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %56 = ptrtoint ptr %scan_plans.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %scan_plans.i, align 4
  %arrayidx.i = getelementptr %struct.cfg80211_sched_scan_plan, ptr %57, i32 %i.058.i
  %iterations.i = getelementptr %struct.cfg80211_sched_scan_plan, ptr %57, i32 %i.058.i, i32 1
  %58 = ptrtoint ptr %iterations.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %iterations.i, align 4
  %conv.i3 = trunc i32 %59 to i8
  %arrayidx26.i = getelementptr %struct.iwl_scan_umac_schedule, ptr %periodic_params, i32 %i.058.i
  %iter_count.i = getelementptr %struct.iwl_scan_umac_schedule, ptr %periodic_params, i32 %i.058.i, i32 1
  %60 = ptrtoint ptr %iter_count.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv.i3, ptr %iter_count.i, align 1
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i, align 4
  %conv27.i = trunc i32 %62 to i16
  %63 = tail call i16 @llvm.bswap.i16(i16 %conv27.i) #10
  %64 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_storeN_noabort(i32 %64, i32 2)
  store i16 %63, ptr %arrayidx26.i, align 1
  %inc.i = add nuw nsw i32 %i.058.i, 1
  %65 = ptrtoint ptr %n_scan_plans.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %n_scan_plans.i.i, align 4
  %cmp25.i = icmp slt i32 %inc.i, %66
  br i1 %cmp25.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ %55, %for.cond.preheader.i.for.end.i_crit_edge ], [ %66, %for.body.i.for.end.i_crit_edge ]
  %sub.i = add i32 %.lcssa.i, -1
  %iter_count32.i = getelementptr %struct.iwl_scan_umac_schedule, ptr %periodic_params, i32 %sub.i, i32 1
  %67 = ptrtoint ptr %iter_count32.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %iter_count32.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool33.not.i = icmp eq i8 %68, 0
  br i1 %tobool33.not.i, label %if.then34.i, label %for.end.i.if.end_crit_edge

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then34.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %iter_count32.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -1, ptr %iter_count32.i, align 1
  br label %if.end

iwl_mvm_fill_scan_sched_params.exit:              ; preds = %iwl_mvm_scan_umac_fill_general_p_v11.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2134, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %if.then34.i, %for.end.i.if.end_crit_edge
  %delay40.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 3
  %70 = ptrtoint ptr %delay40.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %delay40.i, align 4
  %72 = tail call i16 @llvm.bswap.i16(i16 %71) #10
  %73 = ptrtoint ptr %delay to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %delay, align 2
  %scan_6ghz = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 20
  %74 = ptrtoint ptr %scan_6ghz to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %scan_6ghz, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool5.not = icmp eq i8 %75, 0
  %preq1.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 13
  br i1 %tobool5.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %76 = call ptr @memcpy(ptr %probe_params, ptr %preq1.i, i32 532)
  %direct_scan.i = getelementptr inbounds %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 3, i32 4
  call fastcc void @iwl_scan_build_ssids(ptr noundef %params, ptr noundef %direct_scan.i, ptr noundef nonnull %bitmap_ssid) #10
  %77 = ptrtoint ptr %bitmap_ssid to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bitmap_ssid, align 4
  %fw.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %79 = ptrtoint ptr %fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %fw.i.i.i, align 8
  %arrayidx.i.i.i.i.i.i = getelementptr %struct.iwl_fw, ptr %80, i32 0, i32 5, i32 8, i32 1
  %81 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %arrayidx.i.i.i.i.i.i, align 4
  %83 = and i32 %82, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.i.i.not.i.i.i = icmp eq i32 %83, 0
  br i1 %tobool.i.i.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i.i = call zeroext i1 @iwl_mvm_low_latency_band(ptr noundef %mvm, i32 noundef 1) #10
  br label %if.end.i.i.i

if.else.i.i.i:                                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i.i.i = call zeroext i1 @iwl_mvm_low_latency(ptr noundef %mvm) #10
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i.i, %if.then.i.i.i
  %low_latency.0.in.i.i.i = phi i1 [ %call1.i.i.i, %if.then.i.i.i ], [ %call2.i.i.i, %if.else.i.i.i ]
  %flags.i.i.i = getelementptr inbounds %struct.iwl_fw, ptr %80, i32 0, i32 5, i32 3
  %84 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %85, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_umac_chan_flags_v2.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i.i
  %last_ebs_successful.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 64
  %86 = ptrtoint ptr %last_ebs_successful.i.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %last_ebs_successful.i.i.i, align 8, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool4.not.i.i.i = icmp eq i8 %87, 0
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge, label %land.lhs.true5.i.i.i

land.lhs.true.i.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_umac_chan_flags_v2.exit.i

land.lhs.true5.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %88 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %89)
  %cmp.not.i.i.i = icmp eq i32 %89, 10
  %low_latency.0.in.not.i.i.i = xor i1 %low_latency.0.in.i.i.i, true
  %brmerge.i.i.i = select i1 %cmp.not.i.i.i, i1 true, i1 %low_latency.0.in.not.i.i.i
  br i1 %brmerge.i.i.i, label %iwl_mvm_scan_use_ebs.exit.i.i, label %lor.rhs.i.i.i

lor.rhs.i.i.i:                                    ; preds = %land.lhs.true5.i.i.i
  %90 = ptrtoint ptr %fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %fw.i.i.i, align 8
  %arrayidx.i.i.i14.i.i.i = getelementptr %struct.iwl_fw, ptr %91, i32 0, i32 5, i32 7, i32 1
  %92 = ptrtoint ptr %arrayidx.i.i.i14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %arrayidx.i.i.i14.i.i.i, align 4
  %94 = and i32 %93, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.i.i15.i.not.i.i = icmp eq i32 %94, 0
  br i1 %tobool.i.i15.i.not.i.i, label %lor.rhs.i.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge, label %lor.rhs.i.i.i._crit_edge

lor.rhs.i.i.i._crit_edge:                         ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %95

lor.rhs.i.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge: ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_umac_chan_flags_v2.exit.i

iwl_mvm_scan_use_ebs.exit.i.i:                    ; preds = %land.lhs.true5.i.i.i
  br i1 %cmp.not.i.i.i, label %iwl_mvm_scan_use_ebs.exit.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge, label %iwl_mvm_scan_use_ebs.exit.i.i._crit_edge

iwl_mvm_scan_use_ebs.exit.i.i._crit_edge:         ; preds = %iwl_mvm_scan_use_ebs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %95

iwl_mvm_scan_use_ebs.exit.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge: ; preds = %iwl_mvm_scan_use_ebs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_umac_chan_flags_v2.exit.i

95:                                               ; preds = %iwl_mvm_scan_use_ebs.exit.i.i._crit_edge, %lor.rhs.i.i.i._crit_edge
  br label %iwl_mvm_scan_umac_chan_flags_v2.exit.i

iwl_mvm_scan_umac_chan_flags_v2.exit.i:           ; preds = %95, %iwl_mvm_scan_use_ebs.exit.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge, %lor.rhs.i.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge, %land.lhs.true.i.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge, %if.end.i.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge
  %96 = phi i8 [ 39, %95 ], [ 32, %iwl_mvm_scan_use_ebs.exit.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge ], [ 32, %lor.rhs.i.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge ], [ 32, %land.lhs.true.i.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge ], [ 32, %if.end.i.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit.i_crit_edge ]
  %97 = ptrtoint ptr %hb_type.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %hb_type.i.i, align 4
  %99 = and i32 %98, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %99)
  %100 = icmp eq i32 %99, 4
  %101 = or i8 %96, 8
  %flags.1.i.i = select i1 %100, i8 %101, i8 %96
  %102 = ptrtoint ptr %channel_params to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %flags.1.i.i, ptr %channel_params, align 1
  %n_channels.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 2
  %103 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %n_channels.i, align 4
  %conv.i5 = trunc i32 %104 to i8
  %count.i = getelementptr inbounds %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 1, i32 1
  %105 = ptrtoint ptr %count.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv.i5, ptr %count.i, align 1
  %n_aps_override.i = getelementptr inbounds %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 1, i32 2
  %106 = ptrtoint ptr %n_aps_override.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 10, ptr %n_aps_override.i, align 1
  %arrayidx2.i = getelementptr %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 1, i32 2, i32 1
  %107 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 2, ptr %arrayidx2.i, align 1
  %channels.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 6
  %108 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %channels.i, align 4
  %110 = load i32, ptr %n_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp4.i.i = icmp sgt i32 %110, 0
  br i1 %cmp4.i.i, label %for.body.lr.ph.i.i, label %iwl_mvm_scan_umac_chan_flags_v2.exit.i.iwl_mvm_umac_scan_cfg_channels_v6.exit.i_crit_edge

iwl_mvm_scan_umac_chan_flags_v2.exit.i.iwl_mvm_umac_scan_cfg_channels_v6.exit.i_crit_edge: ; preds = %iwl_mvm_scan_umac_chan_flags_v2.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_umac_scan_cfg_channels_v6.exit.i

for.body.lr.ph.i.i:                               ; preds = %iwl_mvm_scan_umac_chan_flags_v2.exit.i
  %111 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %112)
  %cmp.not.i.i41.i = icmp eq i32 %112, 10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.05.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i6 = getelementptr ptr, ptr %109, i32 %i.05.i.i
  %113 = ptrtoint ptr %arrayidx.i.i6 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx.i.i6, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %114, align 4
  %arrayidx2.i.i = getelementptr %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 1, i32 3, i32 %i.05.i.i
  br i1 %cmp.not.i.i41.i, label %for.body.preheader.i.i.i, label %for.body.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge

for.body.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_ch_n_aps_flag.exit.i.i

for.body.preheader.i.i.i:                         ; preds = %for.body.i.i
  %hw_value.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %114, i32 0, i32 3
  %117 = ptrtoint ptr %hw_value.i.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %hw_value.i.i, align 2
  %conv.i.i = trunc i16 %118 to i8
  %119 = zext i8 %conv.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %conv.i.i, label %for.cond9.2.i.i.i [
    i8 36, label %for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge
    i8 40, label %for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge85
    i8 44, label %for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge86
    i8 48, label %for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge87
    i8 -107, label %for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge88
    i8 -103, label %for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge89
    i8 -99, label %for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge90
    i8 -95, label %for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge91
    i8 -91, label %for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge92
    i8 1, label %out.fold.split.i.i.i
    i8 6, label %out.fold.split38.i.i.i
    i8 11, label %out.fold.split39.i.i.i
  ]

for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge92: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_ch_n_aps_flag.exit.i.i

for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge91: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_ch_n_aps_flag.exit.i.i

for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge90: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_ch_n_aps_flag.exit.i.i

for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge89: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_ch_n_aps_flag.exit.i.i

for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge88: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_ch_n_aps_flag.exit.i.i

for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge87: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_ch_n_aps_flag.exit.i.i

for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge86: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_ch_n_aps_flag.exit.i.i

for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge85: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_ch_n_aps_flag.exit.i.i

for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_ch_n_aps_flag.exit.i.i

for.cond9.2.i.i.i:                                ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_ch_n_aps_flag.exit.i.i

out.fold.split.i.i.i:                             ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_ch_n_aps_flag.exit.i.i

out.fold.split38.i.i.i:                           ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_ch_n_aps_flag.exit.i.i

out.fold.split39.i.i.i:                           ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_ch_n_aps_flag.exit.i.i

iwl_mvm_scan_ch_n_aps_flag.exit.i.i:              ; preds = %out.fold.split39.i.i.i, %out.fold.split38.i.i.i, %out.fold.split.i.i.i, %for.cond9.2.i.i.i, %for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge, %for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge85, %for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge86, %for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge87, %for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge88, %for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge89, %for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge90, %for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge91, %for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge92, %for.body.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge
  %flags.1.i.i.i = phi i32 [ 0, %for.body.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge ], [ 0, %for.cond9.2.i.i.i ], [ 1048576, %for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge ], [ 1048576, %for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge85 ], [ 1048576, %for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge86 ], [ 1048576, %for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge87 ], [ 1048576, %for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge88 ], [ 1048576, %for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge89 ], [ 1048576, %for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge90 ], [ 1048576, %for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge91 ], [ 1048576, %for.body.preheader.i.i.i.iwl_mvm_scan_ch_n_aps_flag.exit.i.i_crit_edge92 ], [ 2097152, %out.fold.split.i.i.i ], [ 2097152, %out.fold.split38.i.i.i ], [ 2097152, %out.fold.split39.i.i.i ]
  %or.i.i = or i32 %flags.1.i.i.i, %78
  %120 = call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  %121 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_storeN_noabort(i32 %121, i32 4)
  store i32 %120, ptr %arrayidx2.i.i, align 1
  %122 = ptrtoint ptr %arrayidx.i.i6 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx.i.i6, align 4
  %hw_value6.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %123, i32 0, i32 3
  %124 = ptrtoint ptr %hw_value6.i.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %hw_value6.i.i, align 2
  %conv7.i.i = trunc i16 %125 to i8
  %126 = getelementptr %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 1, i32 3, i32 %i.05.i.i, i32 1
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv7.i.i, ptr %126, align 1
  %128 = zext i32 %116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %116, label %land.end.i.i.i [
    i32 0, label %iwl_mvm_scan_ch_n_aps_flag.exit.i.i.iwl_mvm_phy_band_from_nl80211.exit.i.i_crit_edge
    i32 1, label %sw.bb1.i.i.i
    i32 3, label %sw.bb2.i.i.i
  ]

iwl_mvm_scan_ch_n_aps_flag.exit.i.i.iwl_mvm_phy_band_from_nl80211.exit.i.i_crit_edge: ; preds = %iwl_mvm_scan_ch_n_aps_flag.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_phy_band_from_nl80211.exit.i.i

sw.bb1.i.i.i:                                     ; preds = %iwl_mvm_scan_ch_n_aps_flag.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_phy_band_from_nl80211.exit.i.i

sw.bb2.i.i.i:                                     ; preds = %iwl_mvm_scan_ch_n_aps_flag.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_phy_band_from_nl80211.exit.i.i

land.end.i.i.i:                                   ; preds = %iwl_mvm_scan_ch_n_aps_flag.exit.i.i
  %.b38.i.i.i = load i1, ptr @iwl_mvm_phy_band_from_nl80211.__already_done, align 1
  br i1 %.b38.i.i.i, label %land.end.i.i.i.iwl_mvm_phy_band_from_nl80211.exit.i.i_crit_edge, label %if.then.i.i42.i, !prof !147

land.end.i.i.i.iwl_mvm_phy_band_from_nl80211.exit.i.i_crit_edge: ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_phy_band_from_nl80211.exit.i.i

if.then.i.i42.i:                                  ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_phy_band_from_nl80211.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 2099, i32 noundef 9, ptr noundef nonnull @.str.43, i32 noundef %116) #10
  br label %iwl_mvm_phy_band_from_nl80211.exit.i.i

iwl_mvm_phy_band_from_nl80211.exit.i.i:           ; preds = %if.then.i.i42.i, %land.end.i.i.i.iwl_mvm_phy_band_from_nl80211.exit.i.i_crit_edge, %sw.bb2.i.i.i, %sw.bb1.i.i.i, %iwl_mvm_scan_ch_n_aps_flag.exit.i.i.iwl_mvm_phy_band_from_nl80211.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i8 [ 2, %sw.bb2.i.i.i ], [ 0, %sw.bb1.i.i.i ], [ 1, %iwl_mvm_scan_ch_n_aps_flag.exit.i.i.iwl_mvm_phy_band_from_nl80211.exit.i.i_crit_edge ], [ 0, %if.then.i.i42.i ], [ 0, %land.end.i.i.i.iwl_mvm_phy_band_from_nl80211.exit.i.i_crit_edge ]
  %band9.i.i = getelementptr inbounds %struct.anon.195, ptr %126, i32 0, i32 1
  %129 = ptrtoint ptr %band9.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %retval.0.i.i.i, ptr %band9.i.i, align 1
  %130 = ptrtoint ptr %arrayidx.i.i6 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx.i.i6, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %133)
  %cmp.not.i1.i.i = icmp eq i32 %133, 3
  br i1 %cmp.not.i1.i.i, label %cfg80211_channel_is_psc.exit.i.i, label %iwl_mvm_phy_band_from_nl80211.exit.i.i.if.end.i.i_crit_edge

iwl_mvm_phy_band_from_nl80211.exit.i.i.if.end.i.i_crit_edge: ; preds = %iwl_mvm_phy_band_from_nl80211.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

cfg80211_channel_is_psc.exit.i.i:                 ; preds = %iwl_mvm_phy_band_from_nl80211.exit.i.i
  %center_freq.i.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %131, i32 0, i32 1
  %134 = ptrtoint ptr %center_freq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %center_freq.i.i.i, align 4
  %mul.i.i.i.i = mul i32 %135, 1000
  %call.i.i.i.i = call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i.i.i.i) #10
  %136 = and i32 %call.i.i.i.i, -2147483633
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %136)
  %cmp1.i.i.i = icmp eq i32 %136, 5
  br i1 %cmp1.i.i.i, label %if.then.i.i, label %cfg80211_channel_is_psc.exit.i.i.if.end.i.i_crit_edge

cfg80211_channel_is_psc.exit.i.i.if.end.i.i_crit_edge: ; preds = %cfg80211_channel_is_psc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %cfg80211_channel_is_psc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %137 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_storeN_noabort(i32 %137, i32 4)
  store i32 0, ptr %arrayidx2.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %cfg80211_channel_is_psc.exit.i.i.if.end.i.i_crit_edge, %iwl_mvm_phy_band_from_nl80211.exit.i.i.if.end.i.i_crit_edge
  %iter_count.i.i = getelementptr inbounds %struct.anon.195, ptr %126, i32 0, i32 2
  %138 = ptrtoint ptr %iter_count.i.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 1, ptr %iter_count.i.i, align 1
  %iter_interval.i.i = getelementptr inbounds %struct.anon.195, ptr %126, i32 0, i32 3
  %139 = ptrtoint ptr %iter_interval.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 0, ptr %iter_interval.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %110
  br i1 %exitcond.not.i.i, label %if.end.i.i.iwl_mvm_umac_scan_cfg_channels_v6.exit.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

if.end.i.i.iwl_mvm_umac_scan_cfg_channels_v6.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_umac_scan_cfg_channels_v6.exit.i

iwl_mvm_umac_scan_cfg_channels_v6.exit.i:         ; preds = %if.end.i.i.iwl_mvm_umac_scan_cfg_channels_v6.exit.i_crit_edge, %iwl_mvm_scan_umac_chan_flags_v2.exit.i.iwl_mvm_umac_scan_cfg_channels_v6.exit.i_crit_edge
  %enable_6ghz_passive.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 21
  %140 = ptrtoint ptr %enable_6ghz_passive.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %enable_6ghz_passive.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool.not.i7 = icmp eq i8 %141, 0
  br i1 %tobool.not.i7, label %iwl_mvm_umac_scan_cfg_channels_v6.exit.i.cleanup_crit_edge, label %if.then.i8

iwl_mvm_umac_scan_cfg_channels_v6.exit.i.cleanup_crit_edge: ; preds = %iwl_mvm_umac_scan_cfg_channels_v6.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i8:                                       ; preds = %iwl_mvm_umac_scan_cfg_channels_v6.exit.i
  %nvm_data.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %142 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %nvm_data.i, align 8
  %arrayidx4.i = getelementptr %struct.iwl_nvm_data, ptr %143, i32 0, i32 26, i32 3
  %n_channels5.i = getelementptr %struct.iwl_nvm_data, ptr %143, i32 0, i32 26, i32 3, i32 3
  %144 = ptrtoint ptr %n_channels5.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %n_channels5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp45.not.i = icmp eq i32 %145, 0
  br i1 %cmp45.not.i, label %if.then.i8.cleanup_crit_edge, label %if.then.i8.for.body.i9_crit_edge

if.then.i8.for.body.i9_crit_edge:                 ; preds = %if.then.i8
  br label %for.body.i9

if.then.i8.cleanup_crit_edge:                     ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i9:                                      ; preds = %cleanup.i.for.body.i9_crit_edge, %if.then.i8.for.body.i9_crit_edge
  %i.046.i = phi i32 [ %inc17.i, %cleanup.i.for.body.i9_crit_edge ], [ 0, %if.then.i8.for.body.i9_crit_edge ]
  %146 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx4.i, align 4
  %arrayidx8.i = getelementptr %struct.ieee80211_channel, ptr %147, i32 %i.046.i
  %148 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %count.i, align 1
  %150 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %151)
  %cmp.not.i.i = icmp eq i32 %151, 3
  br i1 %cmp.not.i.i, label %cfg80211_channel_is_psc.exit.i, label %for.body.i9.cleanup.i_crit_edge

for.body.i9.cleanup.i_crit_edge:                  ; preds = %for.body.i9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

cfg80211_channel_is_psc.exit.i:                   ; preds = %for.body.i9
  %center_freq.i.i = getelementptr %struct.ieee80211_channel, ptr %147, i32 %i.046.i, i32 1
  %152 = ptrtoint ptr %center_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %center_freq.i.i, align 4
  %mul.i.i.i = mul i32 %153, 1000
  %call.i.i.i = call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i.i.i) #10
  %154 = and i32 %call.i.i.i, -2147483633
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %154)
  %cmp1.i.i10 = icmp eq i32 %154, 5
  br i1 %cmp1.i.i10, label %if.end.i13, label %cfg80211_channel_is_psc.exit.i.cleanup.i_crit_edge

cfg80211_channel_is_psc.exit.i.cleanup.i_crit_edge: ; preds = %cfg80211_channel_is_psc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end.i13:                                       ; preds = %cfg80211_channel_is_psc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %idxprom.i = zext i8 %149 to i32
  %arrayidx10.i = getelementptr %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 1, i32 3, i32 %idxprom.i
  %155 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_storeN_noabort(i32 %155, i32 4)
  store i32 0, ptr %arrayidx10.i, align 1
  %hw_value.i = getelementptr %struct.ieee80211_channel, ptr %147, i32 %i.046.i, i32 3
  %156 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %hw_value.i, align 2
  %conv14.i = trunc i16 %157 to i8
  %158 = getelementptr %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 1, i32 3, i32 %idxprom.i, i32 1
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %conv14.i, ptr %158, align 1
  %band.i = getelementptr inbounds %struct.anon.195, ptr %158, i32 0, i32 1
  %160 = ptrtoint ptr %band.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 2, ptr %band.i, align 1
  %iter_count.i11 = getelementptr inbounds %struct.anon.195, ptr %158, i32 0, i32 2
  %161 = ptrtoint ptr %iter_count.i11 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 1, ptr %iter_count.i11, align 1
  %iter_interval.i = getelementptr inbounds %struct.anon.195, ptr %158, i32 0, i32 3
  %162 = ptrtoint ptr %iter_interval.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %iter_interval.i, align 1
  %163 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %count.i, align 1
  %inc.i12 = add i8 %164, 1
  store i8 %inc.i12, ptr %count.i, align 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i13, %cfg80211_channel_is_psc.exit.i.cleanup.i_crit_edge, %for.body.i9.cleanup.i_crit_edge
  %inc17.i = add nuw i32 %i.046.i, 1
  %165 = ptrtoint ptr %n_channels5.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %n_channels5.i, align 4
  %cmp.i14 = icmp ult i32 %inc17.i, %166
  br i1 %cmp.i14, label %cleanup.i.for.body.i9_crit_edge, label %cleanup.i.cleanup_crit_edge

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.i.for.body.i9_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i9

if.else:                                          ; preds = %if.end
  %167 = call ptr @memcpy(ptr %probe_params, ptr %preq1.i, i32 532)
  %fw.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %168 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %fw.i.i, align 8
  %arrayidx.i.i.i.i.i = getelementptr %struct.iwl_fw, ptr %169, i32 0, i32 5, i32 8, i32 1
  %170 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile i32, ptr %arrayidx.i.i.i.i.i, align 4
  %172 = and i32 %171, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool.i.i.not.i.i = icmp eq i32 %172, 0
  br i1 %tobool.i.i.not.i.i, label %if.else.i.i16, label %if.then.i.i15

if.then.i.i15:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i = tail call zeroext i1 @iwl_mvm_low_latency_band(ptr noundef %mvm, i32 noundef 1) #10
  br label %if.end.i.i18

if.else.i.i16:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i.i = tail call zeroext i1 @iwl_mvm_low_latency(ptr noundef %mvm) #10
  br label %if.end.i.i18

if.end.i.i18:                                     ; preds = %if.else.i.i16, %if.then.i.i15
  %low_latency.0.in.i.i = phi i1 [ %call1.i.i, %if.then.i.i15 ], [ %call2.i.i, %if.else.i.i16 ]
  %flags.i.i = getelementptr inbounds %struct.iwl_fw, ptr %169, i32 0, i32 5, i32 3
  %173 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %174, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i17 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i17, label %if.end.i.i18.iwl_mvm_scan_umac_chan_flags_v2.exit_crit_edge, label %land.lhs.true.i.i19

if.end.i.i18.iwl_mvm_scan_umac_chan_flags_v2.exit_crit_edge: ; preds = %if.end.i.i18
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_umac_chan_flags_v2.exit

land.lhs.true.i.i19:                              ; preds = %if.end.i.i18
  %last_ebs_successful.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 64
  %175 = ptrtoint ptr %last_ebs_successful.i.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %last_ebs_successful.i.i, align 8, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool4.not.i.i = icmp eq i8 %176, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i19.iwl_mvm_scan_umac_chan_flags_v2.exit_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i19.iwl_mvm_scan_umac_chan_flags_v2.exit_crit_edge: ; preds = %land.lhs.true.i.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_umac_chan_flags_v2.exit

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i19
  %177 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %178)
  %cmp.not.i.i20 = icmp eq i32 %178, 10
  %low_latency.0.in.not.i.i = xor i1 %low_latency.0.in.i.i, true
  %brmerge.i.i = select i1 %cmp.not.i.i20, i1 true, i1 %low_latency.0.in.not.i.i
  br i1 %brmerge.i.i, label %iwl_mvm_scan_use_ebs.exit.i, label %lor.rhs.i.i

lor.rhs.i.i:                                      ; preds = %land.lhs.true5.i.i
  %179 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %fw.i.i, align 8
  %arrayidx.i.i.i14.i.i = getelementptr %struct.iwl_fw, ptr %180, i32 0, i32 5, i32 7, i32 1
  %181 = ptrtoint ptr %arrayidx.i.i.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load volatile i32, ptr %arrayidx.i.i.i14.i.i, align 4
  %183 = and i32 %182, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool.i.i15.i.not.i = icmp eq i32 %183, 0
  br i1 %tobool.i.i15.i.not.i, label %lor.rhs.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit_crit_edge, label %lor.rhs.i.i._crit_edge

lor.rhs.i.i._crit_edge:                           ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %184

lor.rhs.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_umac_chan_flags_v2.exit

iwl_mvm_scan_use_ebs.exit.i:                      ; preds = %land.lhs.true5.i.i
  br i1 %cmp.not.i.i20, label %iwl_mvm_scan_use_ebs.exit.i.iwl_mvm_scan_umac_chan_flags_v2.exit_crit_edge, label %iwl_mvm_scan_use_ebs.exit.i._crit_edge

iwl_mvm_scan_use_ebs.exit.i._crit_edge:           ; preds = %iwl_mvm_scan_use_ebs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %184

iwl_mvm_scan_use_ebs.exit.i.iwl_mvm_scan_umac_chan_flags_v2.exit_crit_edge: ; preds = %iwl_mvm_scan_use_ebs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_scan_umac_chan_flags_v2.exit

184:                                              ; preds = %iwl_mvm_scan_use_ebs.exit.i._crit_edge, %lor.rhs.i.i._crit_edge
  br label %iwl_mvm_scan_umac_chan_flags_v2.exit

iwl_mvm_scan_umac_chan_flags_v2.exit:             ; preds = %184, %iwl_mvm_scan_use_ebs.exit.i.iwl_mvm_scan_umac_chan_flags_v2.exit_crit_edge, %lor.rhs.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit_crit_edge, %land.lhs.true.i.i19.iwl_mvm_scan_umac_chan_flags_v2.exit_crit_edge, %if.end.i.i18.iwl_mvm_scan_umac_chan_flags_v2.exit_crit_edge
  %185 = phi i8 [ 39, %184 ], [ 32, %iwl_mvm_scan_use_ebs.exit.i.iwl_mvm_scan_umac_chan_flags_v2.exit_crit_edge ], [ 32, %lor.rhs.i.i.iwl_mvm_scan_umac_chan_flags_v2.exit_crit_edge ], [ 32, %land.lhs.true.i.i19.iwl_mvm_scan_umac_chan_flags_v2.exit_crit_edge ], [ 32, %if.end.i.i18.iwl_mvm_scan_umac_chan_flags_v2.exit_crit_edge ]
  %186 = ptrtoint ptr %hb_type.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %hb_type.i.i, align 4
  %188 = and i32 %187, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %188)
  %189 = icmp eq i32 %188, 4
  %190 = or i8 %185, 8
  %flags.1.i = select i1 %189, i8 %190, i8 %185
  %191 = ptrtoint ptr %channel_params to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %flags.1.i, ptr %channel_params, align 1
  %n_aps_override = getelementptr inbounds %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 1, i32 2
  %192 = ptrtoint ptr %n_aps_override to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 10, ptr %n_aps_override, align 1
  %arrayidx14 = getelementptr %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 1, i32 2, i32 1
  %193 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 2, ptr %arrayidx14, align 1
  %scan_6ghz_params1.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 18
  %194 = ptrtoint ptr %scan_6ghz_params1.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %scan_6ghz_params1.i, align 4
  %196 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %fw.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %197, i32 0, i32 5, i32 8, i32 1
  %198 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %200 = and i32 %199, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool.i.not.i = icmp eq i32 %200, 0
  %n_ssids.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 4
  %201 = ptrtoint ptr %n_ssids.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %n_ssids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %cmp3.i = icmp sgt i32 %202, 0
  br i1 %cmp3.i, label %iwl_mvm_scan_umac_chan_flags_v2.exit.for.body.i23_crit_edge, label %iwl_mvm_scan_umac_chan_flags_v2.exit.for.cond32.preheader.i_crit_edge

iwl_mvm_scan_umac_chan_flags_v2.exit.for.cond32.preheader.i_crit_edge: ; preds = %iwl_mvm_scan_umac_chan_flags_v2.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond32.preheader.i

iwl_mvm_scan_umac_chan_flags_v2.exit.for.body.i23_crit_edge: ; preds = %iwl_mvm_scan_umac_chan_flags_v2.exit
  br label %for.body.i23

for.cond32.preheader.i:                           ; preds = %for.inc.i.for.cond32.preheader.i_crit_edge, %iwl_mvm_scan_umac_chan_flags_v2.exit.for.cond32.preheader.i_crit_edge
  %idex_s.0.lcssa.i = phi i32 [ 0, %iwl_mvm_scan_umac_chan_flags_v2.exit.for.cond32.preheader.i_crit_edge ], [ %idex_s.1.i, %for.inc.i.for.cond32.preheader.i_crit_edge ]
  %n_6ghz_params.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 19
  %203 = ptrtoint ptr %n_6ghz_params.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %n_6ghz_params.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %cmp3317.not.i = icmp eq i32 %204, 0
  br i1 %cmp3317.not.i, label %for.cond32.preheader.i.iwl_mvm_umac_scan_fill_6g_chan_list.exit_crit_edge, label %for.cond32.preheader.i.for.body35.i_crit_edge

for.cond32.preheader.i.for.body35.i_crit_edge:    ; preds = %for.cond32.preheader.i
  br label %for.body35.i

for.cond32.preheader.i.iwl_mvm_umac_scan_fill_6g_chan_list.exit_crit_edge: ; preds = %for.cond32.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_umac_scan_fill_6g_chan_list.exit

for.body.i23:                                     ; preds = %for.inc.i.for.body.i23_crit_edge, %iwl_mvm_scan_umac_chan_flags_v2.exit.for.body.i23_crit_edge
  %idex_s.07.i = phi i32 [ %idex_s.1.i, %for.inc.i.for.body.i23_crit_edge ], [ 0, %iwl_mvm_scan_umac_chan_flags_v2.exit.for.body.i23_crit_edge ]
  %j.04.i = phi i32 [ %inc31.i, %for.inc.i.for.body.i23_crit_edge ], [ 0, %iwl_mvm_scan_umac_chan_flags_v2.exit.for.body.i23_crit_edge ]
  %205 = ptrtoint ptr %ssids.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %ssids.i.i, align 4
  %ssid_len.i = getelementptr %struct.cfg80211_ssid, ptr %206, i32 %j.04.i, i32 1
  %207 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %ssid_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %208)
  %tobool.not.i22 = icmp eq i8 %208, 0
  br i1 %tobool.not.i22, label %for.body.i23.for.inc.i_crit_edge, label %if.end.i26

for.body.i23.for.inc.i_crit_edge:                 ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i26:                                       ; preds = %for.body.i23
  %arrayidx.i24 = getelementptr %struct.cfg80211_ssid, ptr %206, i32 %j.04.i
  %conv.i25 = zext i8 %208 to i32
  %call8.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %arrayidx.i24, i32 noundef %conv.i25) #15
  %neg.i = xor i32 %call8.i, -1
  %209 = tail call i32 @llvm.bswap.i32(i32 %neg.i) #10
  %arrayidx9.i = getelementptr %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 3, i32 5, i32 %idex_s.07.i
  %210 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_storeN_noabort(i32 %210, i32 4)
  store i32 %209, ptr %arrayidx9.i, align 1
  br i1 %tobool.i.not.i, label %if.end.i26.if.end30.i_crit_edge, label %if.then11.i

if.end.i26.if.end30.i_crit_edge:                  ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i

if.then11.i:                                      ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx12.i = getelementptr %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 3, i32 4, i32 %idex_s.07.i
  %211 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 0, ptr %arrayidx12.i, align 1
  %212 = ptrtoint ptr %ssids.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %ssids.i.i, align 4
  %ssid_len15.i = getelementptr %struct.cfg80211_ssid, ptr %213, i32 %j.04.i, i32 1
  %214 = ptrtoint ptr %ssid_len15.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %ssid_len15.i, align 1
  %len.i = getelementptr %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 3, i32 4, i32 %idex_s.07.i, i32 1
  %216 = ptrtoint ptr %len.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %215, ptr %len.i, align 1
  %ssid20.i = getelementptr %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 3, i32 4, i32 %idex_s.07.i, i32 2
  %217 = load ptr, ptr %ssids.i.i, align 4
  %arrayidx23.i = getelementptr %struct.cfg80211_ssid, ptr %217, i32 %j.04.i
  %ssid_len28.i = getelementptr %struct.cfg80211_ssid, ptr %217, i32 %j.04.i, i32 1
  %218 = ptrtoint ptr %ssid_len28.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %ssid_len28.i, align 1
  %conv29.i = zext i8 %219 to i32
  %220 = call ptr @memcpy(ptr %ssid20.i, ptr %arrayidx23.i, i32 %conv29.i)
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then11.i, %if.end.i26.if.end30.i_crit_edge
  %inc.i27 = add nsw i32 %idex_s.07.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end30.i, %for.body.i23.for.inc.i_crit_edge
  %idex_s.1.i = phi i32 [ %inc.i27, %if.end30.i ], [ %idex_s.07.i, %for.body.i23.for.inc.i_crit_edge ]
  %inc31.i = add nuw nsw i32 %j.04.i, 1
  %221 = ptrtoint ptr %n_ssids.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %n_ssids.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc31.i, i32 %222)
  %cmp.i28 = icmp slt i32 %inc31.i, %222
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %idex_s.1.i)
  %cmp2.i = icmp slt i32 %idex_s.1.i, 8
  %or.cond.i = select i1 %cmp.i28, i1 %cmp2.i, i1 false
  br i1 %or.cond.i, label %for.inc.i.for.body.i23_crit_edge, label %for.inc.i.for.cond32.preheader.i_crit_edge

for.inc.i.for.cond32.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond32.preheader.i

for.inc.i.for.body.i23_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i23

for.body35.i:                                     ; preds = %if.end92.i.for.body35.i_crit_edge, %for.cond32.preheader.i.for.body35.i_crit_edge
  %idex_b.022.i = phi i32 [ %idex_b.1.i, %if.end92.i.for.body35.i_crit_edge ], [ 0, %for.cond32.preheader.i.for.body35.i_crit_edge ]
  %idex_s.221.i = phi i32 [ %idex_s.3.i, %if.end92.i.for.body35.i_crit_edge ], [ %idex_s.0.lcssa.i, %for.cond32.preheader.i.for.body35.i_crit_edge ]
  %j.118.i = phi i32 [ %inc94.i, %if.end92.i.for.body35.i_crit_edge ], [ 0, %for.cond32.preheader.i.for.body35.i_crit_edge ]
  %arrayidx36.i = getelementptr %struct.cfg80211_scan_6ghz_params, ptr %195, i32 %j.118.i
  %short_ssid_valid.i = getelementptr %struct.cfg80211_scan_6ghz_params, ptr %195, i32 %j.118.i, i32 4
  %223 = ptrtoint ptr %short_ssid_valid.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %short_ssid_valid.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %tobool37.not.i = icmp eq i8 %224, 0
  br i1 %tobool37.not.i, label %for.body35.i.if.end65.i_crit_edge, label %for.cond39.preheader.i

for.body35.i.if.end65.i_crit_edge:                ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65.i

for.cond39.preheader.i:                           ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idex_s.221.i)
  %cmp409.i = icmp sgt i32 %idex_s.221.i, 0
  br i1 %cmp409.i, label %for.body42.lr.ph.i, label %for.cond39.preheader.i.for.end53.i_crit_edge

for.cond39.preheader.i.for.end53.i_crit_edge:     ; preds = %for.cond39.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end53.i

for.body42.lr.ph.i:                               ; preds = %for.cond39.preheader.i
  %225 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %arrayidx36.i, align 4
  %227 = tail call i32 @llvm.bswap.i32(i32 %226) #10
  br label %for.body42.i

for.body42.i:                                     ; preds = %for.inc51.i.for.body42.i_crit_edge, %for.body42.lr.ph.i
  %k.010.i = phi i32 [ 0, %for.body42.lr.ph.i ], [ %inc52.i, %for.inc51.i.for.body42.i_crit_edge ]
  %arrayidx44.i = getelementptr %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 3, i32 5, i32 %k.010.i
  %228 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_loadN_noabort(i32 %228, i32 4)
  %229 = load i32, ptr %arrayidx44.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %229, i32 %227)
  %cmp47.i = icmp eq i32 %229, %227
  br i1 %cmp47.i, label %for.body42.i.for.end53.i_crit_edge, label %for.inc51.i

for.body42.i.for.end53.i_crit_edge:               ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end53.i

for.inc51.i:                                      ; preds = %for.body42.i
  %inc52.i = add nuw nsw i32 %k.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc52.i, %idex_s.221.i
  br i1 %exitcond.not.i, label %for.inc51.i.for.end53.i_crit_edge, label %for.inc51.i.for.body42.i_crit_edge

for.inc51.i.for.body42.i_crit_edge:               ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body42.i

for.inc51.i.for.end53.i_crit_edge:                ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end53.i

for.end53.i:                                      ; preds = %for.inc51.i.for.end53.i_crit_edge, %for.body42.i.for.end53.i_crit_edge, %for.cond39.preheader.i.for.end53.i_crit_edge
  %k.0.lcssa.i = phi i32 [ 0, %for.cond39.preheader.i.for.end53.i_crit_edge ], [ %idex_s.221.i, %for.inc51.i.for.end53.i_crit_edge ], [ %k.010.i, %for.body42.i.for.end53.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %k.0.lcssa.i, i32 %idex_s.221.i)
  %cmp54.i = icmp eq i32 %k.0.lcssa.i, %idex_s.221.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %idex_s.221.i)
  %cmp56.i = icmp slt i32 %idex_s.221.i, 8
  %or.cond1.i = and i1 %cmp56.i, %cmp54.i
  br i1 %or.cond1.i, label %if.then58.i, label %for.end53.i.if.end65.i_crit_edge

for.end53.i.if.end65.i_crit_edge:                 ; preds = %for.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65.i

if.then58.i:                                      ; preds = %for.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  %230 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %arrayidx36.i, align 4
  %232 = tail call i32 @llvm.bswap.i32(i32 %231) #10
  %inc62.i = add nsw i32 %idex_s.221.i, 1
  %arrayidx63.i = getelementptr %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 3, i32 5, i32 %idex_s.221.i
  %233 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_storeN_noabort(i32 %233, i32 4)
  store i32 %232, ptr %arrayidx63.i, align 1
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then58.i, %for.end53.i.if.end65.i_crit_edge, %for.body35.i.if.end65.i_crit_edge
  %idex_s.3.i = phi i32 [ %inc62.i, %if.then58.i ], [ %idex_s.221.i, %for.end53.i.if.end65.i_crit_edge ], [ %idex_s.221.i, %for.body35.i.if.end65.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idex_b.022.i)
  %cmp6713.i = icmp sgt i32 %idex_b.022.i, 0
  br i1 %cmp6713.i, label %for.body69.lr.ph.i, label %if.end65.i.for.end79.i_crit_edge

if.end65.i.for.end79.i_crit_edge:                 ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end79.i

for.body69.lr.ph.i:                               ; preds = %if.end65.i
  %bssid.i = getelementptr %struct.cfg80211_scan_6ghz_params, ptr %195, i32 %j.118.i, i32 2
  br label %for.body69.i

for.body69.i:                                     ; preds = %for.inc77.i.for.body69.i_crit_edge, %for.body69.lr.ph.i
  %k.114.i = phi i32 [ 0, %for.body69.lr.ph.i ], [ %inc78.i, %for.inc77.i.for.body69.i_crit_edge ]
  %arrayidx70.i = getelementptr %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 3, i32 6, i32 %k.114.i
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %arrayidx70.i, ptr noundef dereferenceable(6) %bssid.i, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool74.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool74.not.i, label %for.body69.i.for.end79.i_crit_edge, label %for.inc77.i

for.body69.i.for.end79.i_crit_edge:               ; preds = %for.body69.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end79.i

for.inc77.i:                                      ; preds = %for.body69.i
  %inc78.i = add nuw nsw i32 %k.114.i, 1
  %exitcond25.not.i = icmp eq i32 %inc78.i, %idex_b.022.i
  br i1 %exitcond25.not.i, label %for.inc77.i.for.end79.i_crit_edge, label %for.inc77.i.for.body69.i_crit_edge

for.inc77.i.for.body69.i_crit_edge:               ; preds = %for.inc77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body69.i

for.inc77.i.for.end79.i_crit_edge:                ; preds = %for.inc77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end79.i

for.end79.i:                                      ; preds = %for.inc77.i.for.end79.i_crit_edge, %for.body69.i.for.end79.i_crit_edge, %if.end65.i.for.end79.i_crit_edge
  %k.1.lcssa.i = phi i32 [ 0, %if.end65.i.for.end79.i_crit_edge ], [ %idex_b.022.i, %for.inc77.i.for.end79.i_crit_edge ], [ %k.114.i, %for.body69.i.for.end79.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %k.1.lcssa.i, i32 %idex_b.022.i)
  %cmp80.i = icmp eq i32 %k.1.lcssa.i, %idex_b.022.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %idex_b.022.i)
  %cmp83.i = icmp slt i32 %idex_b.022.i, 16
  %or.cond2.i = and i1 %cmp83.i, %cmp80.i
  br i1 %or.cond2.i, label %if.then85.i, label %for.end79.i.if.end92.i_crit_edge

for.end79.i.if.end92.i_crit_edge:                 ; preds = %for.end79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92.i

if.then85.i:                                      ; preds = %for.end79.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc87.i = add nsw i32 %idex_b.022.i, 1
  %arrayidx88.i = getelementptr %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 3, i32 6, i32 %idex_b.022.i
  %bssid90.i = getelementptr %struct.cfg80211_scan_6ghz_params, ptr %195, i32 %j.118.i, i32 2
  %234 = call ptr @memcpy(ptr %arrayidx88.i, ptr %bssid90.i, i32 6)
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.then85.i, %for.end79.i.if.end92.i_crit_edge
  %idex_b.1.i = phi i32 [ %inc87.i, %if.then85.i ], [ %idex_b.022.i, %for.end79.i.if.end92.i_crit_edge ]
  %inc94.i = add nuw i32 %j.118.i, 1
  %235 = ptrtoint ptr %n_6ghz_params.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %n_6ghz_params.i, align 4
  %cmp33.i = icmp ult i32 %inc94.i, %236
  br i1 %cmp33.i, label %if.end92.i.for.body35.i_crit_edge, label %if.end92.i.iwl_mvm_umac_scan_fill_6g_chan_list.exit_crit_edge

if.end92.i.iwl_mvm_umac_scan_fill_6g_chan_list.exit_crit_edge: ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_umac_scan_fill_6g_chan_list.exit

if.end92.i.for.body35.i_crit_edge:                ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body35.i

iwl_mvm_umac_scan_fill_6g_chan_list.exit:         ; preds = %if.end92.i.iwl_mvm_umac_scan_fill_6g_chan_list.exit_crit_edge, %for.cond32.preheader.i.iwl_mvm_umac_scan_fill_6g_chan_list.exit_crit_edge
  %idex_s.2.lcssa.i = phi i32 [ %idex_s.0.lcssa.i, %for.cond32.preheader.i.iwl_mvm_umac_scan_fill_6g_chan_list.exit_crit_edge ], [ %idex_s.3.i, %if.end92.i.iwl_mvm_umac_scan_fill_6g_chan_list.exit_crit_edge ]
  %idex_b.0.lcssa.i = phi i32 [ 0, %for.cond32.preheader.i.iwl_mvm_umac_scan_fill_6g_chan_list.exit_crit_edge ], [ %idex_b.1.i, %if.end92.i.iwl_mvm_umac_scan_fill_6g_chan_list.exit_crit_edge ]
  %conv96.i = trunc i32 %idex_s.2.lcssa.i to i8
  %short_ssid_num.i = getelementptr inbounds %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 3, i32 1
  %237 = ptrtoint ptr %short_ssid_num.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %conv96.i, ptr %short_ssid_num.i, align 1
  %conv97.i = trunc i32 %idex_b.0.lcssa.i to i8
  %bssid_num.i = getelementptr inbounds %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 3, i32 2
  %238 = ptrtoint ptr %bssid_num.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %conv97.i, ptr %bssid_num.i, align 1
  %n_channels = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 2
  %channel_config.i = getelementptr inbounds %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 1, i32 3
  %239 = ptrtoint ptr %scan_6ghz_params1.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %scan_6ghz_params1.i, align 4
  %241 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %cmp98.not.i = icmp eq i32 %242, 0
  br i1 %cmp98.not.i, label %iwl_mvm_umac_scan_fill_6g_chan_list.exit.iwl_mvm_umac_scan_cfg_channels_v6_6g.exit_crit_edge, label %for.body.lr.ph.i34

iwl_mvm_umac_scan_fill_6g_chan_list.exit.iwl_mvm_umac_scan_cfg_channels_v6_6g.exit_crit_edge: ; preds = %iwl_mvm_umac_scan_fill_6g_chan_list.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_umac_scan_cfg_channels_v6_6g.exit

for.body.lr.ph.i34:                               ; preds = %iwl_mvm_umac_scan_fill_6g_chan_list.exit
  %channels.i30 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 6
  br label %for.body.i41

for.body.i41:                                     ; preds = %if.end223.i.for.body.i41_crit_edge, %for.body.lr.ph.i34
  %i.099.i = phi i32 [ 0, %for.body.lr.ph.i34 ], [ %inc228.i, %if.end223.i.for.body.i41_crit_edge ]
  %243 = ptrtoint ptr %channels.i30 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %channels.i30, align 4
  %arrayidx4.i35 = getelementptr ptr, ptr %244, i32 %i.099.i
  %245 = ptrtoint ptr %arrayidx4.i35 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %arrayidx4.i35, align 4
  %hw_value.i36 = getelementptr inbounds %struct.ieee80211_channel, ptr %246, i32 0, i32 3
  %247 = ptrtoint ptr %hw_value.i36 to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %hw_value.i36, align 2
  %conv.i37 = trunc i16 %248 to i8
  %249 = getelementptr %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 1, i32 3, i32 %i.099.i, i32 1
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 %conv.i37, ptr %249, align 1
  %band.i38 = getelementptr inbounds %struct.anon.195, ptr %249, i32 0, i32 1
  %251 = ptrtoint ptr %band.i38 to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 2, ptr %band.i38, align 1
  %iter_count.i39 = getelementptr inbounds %struct.anon.195, ptr %249, i32 0, i32 2
  %252 = ptrtoint ptr %iter_count.i39 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 1, ptr %iter_count.i39, align 1
  %iter_interval.i40 = getelementptr inbounds %struct.anon.195, ptr %249, i32 0, i32 3
  %253 = ptrtoint ptr %iter_interval.i40 to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 0, ptr %iter_interval.i40, align 1
  %254 = ptrtoint ptr %n_6ghz_params.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %n_6ghz_params.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %255)
  %cmp775.not.i = icmp eq i32 %255, 0
  br i1 %cmp775.not.i, label %for.body.i41.for.end105.i_crit_edge, label %for.body.i41.for.body9.i_crit_edge

for.body.i41.for.body9.i_crit_edge:               ; preds = %for.body.i41
  br label %for.body9.i

for.body.i41.for.end105.i_crit_edge:              ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end105.i

for.body9.i:                                      ; preds = %for.inc103.i.for.body9.i_crit_edge, %for.body.i41.for.body9.i_crit_edge
  %conv691.i = phi i32 [ %conv6.i, %for.inc103.i.for.body9.i_crit_edge ], [ 0, %for.body.i41.for.body9.i_crit_edge ]
  %psc_no_listen.0.off090.i = phi i1 [ %psc_no_listen.1.off0.i, %for.inc103.i.for.body9.i_crit_edge ], [ false, %for.body.i41.for.body9.i_crit_edge ]
  %unsolicited_probe_on_chan.0.off089.i = phi i1 [ %unsolicited_probe_on_chan.1.off0.i, %for.inc103.i.for.body9.i_crit_edge ], [ false, %for.body.i41.for.body9.i_crit_edge ]
  %allow_passive.0.off087.i = phi i1 [ %allow_passive.2.off0.i, %for.inc103.i.for.body9.i_crit_edge ], [ true, %for.body.i41.for.body9.i_crit_edge ]
  %n_used_bssid_entries.085.i = phi i8 [ %n_used_bssid_entries.2.i, %for.inc103.i.for.body9.i_crit_edge ], [ 3, %for.body.i41.for.body9.i_crit_edge ]
  %b_max.083.i = phi i8 [ %b_max.1.i, %for.inc103.i.for.body9.i_crit_edge ], [ 0, %for.body.i41.for.body9.i_crit_edge ]
  %s_max.081.i = phi i8 [ %s_max.2.i, %for.inc103.i.for.body9.i_crit_edge ], [ 0, %for.body.i41.for.body9.i_crit_edge ]
  %j.080.i = phi i8 [ %inc104.i, %for.inc103.i.for.body9.i_crit_edge ], [ 0, %for.body.i41.for.body9.i_crit_edge ]
  %bssid_bitmap.078.i = phi i32 [ %bssid_bitmap.1.i, %for.inc103.i.for.body9.i_crit_edge ], [ 0, %for.body.i41.for.body9.i_crit_edge ]
  %s_ssid_bitmap.076.i = phi i32 [ %s_ssid_bitmap.2.i, %for.inc103.i.for.body9.i_crit_edge ], [ 0, %for.body.i41.for.body9.i_crit_edge ]
  %arrayidx10.i42 = getelementptr %struct.cfg80211_scan_6ghz_params, ptr %240, i32 %conv691.i
  %channel_idx.i = getelementptr %struct.cfg80211_scan_6ghz_params, ptr %240, i32 %conv691.i, i32 1
  %256 = ptrtoint ptr %channel_idx.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %channel_idx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %257, i32 %i.099.i)
  %cmp11.i = icmp eq i32 %257, %i.099.i
  br i1 %cmp11.i, label %if.end.i43, label %for.body9.i.for.inc103.i_crit_edge

for.body9.i.for.inc103.i_crit_edge:               ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc103.i

if.end.i43:                                       ; preds = %for.body9.i
  %unsolicited_probe.i = getelementptr %struct.cfg80211_scan_6ghz_params, ptr %240, i32 %conv691.i, i32 3
  %258 = ptrtoint ptr %unsolicited_probe.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %unsolicited_probe.i, align 2, !range !150
  %260 = zext i8 %259 to i32
  %conv17.i = zext i1 %unsolicited_probe_on_chan.0.off089.i to i32
  %or.i = or i32 %260, %conv17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool18.i = icmp ne i32 %or.i, 0
  %psc_no_listen21.i = getelementptr %struct.cfg80211_scan_6ghz_params, ptr %240, i32 %conv691.i, i32 5
  %261 = ptrtoint ptr %psc_no_listen21.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %psc_no_listen21.i, align 4, !range !150
  %263 = zext i8 %262 to i32
  %conv25.i = zext i1 %psc_no_listen.0.off090.i to i32
  %or26.i = or i32 %263, %conv25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or26.i)
  %tobool27.i = icmp ne i32 %or26.i, 0
  %264 = ptrtoint ptr %short_ssid_num.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %short_ssid_num.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %265)
  %cmp3269.not.i = icmp eq i8 %265, 0
  br i1 %cmp3269.not.i, label %if.end.i43.for.cond75.preheader.i_crit_edge, label %for.body34.lr.ph.i

if.end.i43.for.cond75.preheader.i_crit_edge:      ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond75.preheader.i

for.body34.lr.ph.i:                               ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %259)
  %tobool38.not.i = icmp eq i8 %259, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %n_used_bssid_entries.085.i)
  %cmp52.i = icmp ugt i8 %n_used_bssid_entries.085.i, 2
  %wide.trip.count.i = zext i8 %265 to i32
  br label %for.body34.i

for.cond75.preheader.i:                           ; preds = %for.inc.i50.for.cond75.preheader.i_crit_edge, %if.end.i43.for.cond75.preheader.i_crit_edge
  %266 = ptrtoint ptr %bssid_num.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %bssid_num.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %267)
  %cmp7872.not.i = icmp eq i8 %267, 0
  br i1 %cmp7872.not.i, label %for.cond75.preheader.i.for.inc103.i_crit_edge, label %for.body80.lr.ph.i

for.cond75.preheader.i.for.inc103.i_crit_edge:    ; preds = %for.cond75.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc103.i

for.body80.lr.ph.i:                               ; preds = %for.cond75.preheader.i
  %bssid.i44 = getelementptr %struct.cfg80211_scan_6ghz_params, ptr %240, i32 %conv691.i, i32 2
  %wide.trip.count108.i = zext i8 %267 to i32
  br label %for.body80.i

for.body34.i:                                     ; preds = %for.inc.i50.for.body34.i_crit_edge, %for.body34.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body34.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i50.for.body34.i_crit_edge ]
  br i1 %tobool38.not.i, label %land.lhs.true.i, label %for.body34.i.for.inc.i50_crit_edge

for.body34.i.for.inc.i50_crit_edge:               ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i50

land.lhs.true.i:                                  ; preds = %for.body34.i
  %arrayidx40.i = getelementptr %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 3, i32 5, i32 %indvars.iv.i
  %268 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_loadN_noabort(i32 %268, i32 4)
  %269 = load i32, ptr %arrayidx40.i, align 1
  %270 = tail call i32 @llvm.bswap.i32(i32 %269) #10
  %271 = ptrtoint ptr %arrayidx10.i42 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %arrayidx10.i42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %270, i32 %272)
  %cmp44.i = icmp eq i32 %270, %272
  br i1 %cmp44.i, label %if.then46.i, label %land.lhs.true.i.for.inc.i50_crit_edge

land.lhs.true.i.for.inc.i50_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i50

if.then46.i:                                      ; preds = %land.lhs.true.i
  %shl.i = shl nuw i32 1, %indvars.iv.i
  %and.i45 = and i32 %shl.i, %s_ssid_bitmap.076.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45)
  %tobool48.not.i = icmp eq i32 %and.i45, 0
  br i1 %tobool48.not.i, label %if.end50.i, label %if.then46.i.for.inc103.i_crit_edge

if.then46.i.for.inc103.i_crit_edge:               ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc103.i

if.end50.i:                                       ; preds = %if.then46.i
  br i1 %cmp52.i, label %if.then54.i, label %if.else.i

if.then54.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  %or57.i = or i32 %shl.i, %s_ssid_bitmap.076.i
  %inc.i46 = add i8 %s_max.081.i, 1
  %sub.i47 = add i8 %n_used_bssid_entries.085.i, -3
  br label %for.inc103.i

if.else.i:                                        ; preds = %if.end50.i
  %len.i48 = getelementptr %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 3, i32 4, i32 %indvars.iv.i, i32 1
  %273 = ptrtoint ptr %len.i48 to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %len.i48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %274)
  %tobool62.not.i = icmp eq i8 %274, 0
  br i1 %tobool62.not.i, label %if.else.i.for.inc.i50_crit_edge, label %if.then63.i

if.else.i.for.inc.i50_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i50

if.then63.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %or66.i = or i32 %shl.i, %s_ssid_bitmap.076.i
  %inc67.i = add i8 %s_max.081.i, 1
  br label %for.inc103.i

for.inc.i50:                                      ; preds = %if.else.i.for.inc.i50_crit_edge, %land.lhs.true.i.for.inc.i50_crit_edge, %for.body34.i.for.inc.i50_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i49 = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i49, label %for.inc.i50.for.cond75.preheader.i_crit_edge, label %for.inc.i50.for.body34.i_crit_edge

for.inc.i50.for.body34.i_crit_edge:               ; preds = %for.inc.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body34.i

for.inc.i50.for.cond75.preheader.i_crit_edge:     ; preds = %for.inc.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond75.preheader.i

for.cond75.i:                                     ; preds = %for.body80.i
  %indvars.iv.next107.i = add nuw nsw i32 %indvars.iv106.i, 1
  %exitcond109.not.i = icmp eq i32 %indvars.iv.next107.i, %wide.trip.count108.i
  br i1 %exitcond109.not.i, label %for.cond75.i.for.inc103.i_crit_edge, label %for.cond75.i.for.body80.i_crit_edge

for.cond75.i.for.body80.i_crit_edge:              ; preds = %for.cond75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body80.i

for.cond75.i.for.inc103.i_crit_edge:              ; preds = %for.cond75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc103.i

for.body80.i:                                     ; preds = %for.cond75.i.for.body80.i_crit_edge, %for.body80.lr.ph.i
  %indvars.iv106.i = phi i32 [ 0, %for.body80.lr.ph.i ], [ %indvars.iv.next107.i, %for.cond75.i.for.body80.i_crit_edge ]
  %arrayidx82.i = getelementptr %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 3, i32 6, i32 %indvars.iv106.i
  %bcmp.i51 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %arrayidx82.i, ptr noundef dereferenceable(6) %bssid.i44, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i51)
  %tobool86.not.i = icmp eq i32 %bcmp.i51, 0
  br i1 %tobool86.not.i, label %if.then87.i, label %for.cond75.i

if.then87.i:                                      ; preds = %for.body80.i
  %shl89.i = shl nuw i32 1, %indvars.iv106.i
  %and90.i = and i32 %shl89.i, %bssid_bitmap.078.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90.i)
  %tobool91.not.i = icmp eq i32 %and90.i, 0
  br i1 %tobool91.not.i, label %if.then92.i, label %if.then87.i.for.inc103.i_crit_edge

if.then87.i.for.inc103.i_crit_edge:               ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc103.i

if.then92.i:                                      ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #12
  %or95.i = or i32 %shl89.i, %bssid_bitmap.078.i
  %inc96.i = add i8 %b_max.083.i, 1
  %inc97.i = add i8 %n_used_bssid_entries.085.i, 1
  br label %for.inc103.i

for.inc103.i:                                     ; preds = %if.then92.i, %if.then87.i.for.inc103.i_crit_edge, %for.cond75.i.for.inc103.i_crit_edge, %if.then63.i, %if.then54.i, %if.then46.i.for.inc103.i_crit_edge, %for.cond75.preheader.i.for.inc103.i_crit_edge, %for.body9.i.for.inc103.i_crit_edge
  %s_ssid_bitmap.2.i = phi i32 [ %s_ssid_bitmap.076.i, %if.then87.i.for.inc103.i_crit_edge ], [ %s_ssid_bitmap.076.i, %if.then92.i ], [ %s_ssid_bitmap.076.i, %for.body9.i.for.inc103.i_crit_edge ], [ %or66.i, %if.then63.i ], [ %or57.i, %if.then54.i ], [ %s_ssid_bitmap.076.i, %for.cond75.preheader.i.for.inc103.i_crit_edge ], [ %s_ssid_bitmap.076.i, %for.cond75.i.for.inc103.i_crit_edge ], [ %s_ssid_bitmap.076.i, %if.then46.i.for.inc103.i_crit_edge ]
  %bssid_bitmap.1.i = phi i32 [ %bssid_bitmap.078.i, %if.then87.i.for.inc103.i_crit_edge ], [ %or95.i, %if.then92.i ], [ %bssid_bitmap.078.i, %for.body9.i.for.inc103.i_crit_edge ], [ %bssid_bitmap.078.i, %if.then63.i ], [ %bssid_bitmap.078.i, %if.then54.i ], [ %bssid_bitmap.078.i, %for.cond75.preheader.i.for.inc103.i_crit_edge ], [ %bssid_bitmap.078.i, %for.cond75.i.for.inc103.i_crit_edge ], [ %bssid_bitmap.078.i, %if.then46.i.for.inc103.i_crit_edge ]
  %s_max.2.i = phi i8 [ %s_max.081.i, %if.then87.i.for.inc103.i_crit_edge ], [ %s_max.081.i, %if.then92.i ], [ %s_max.081.i, %for.body9.i.for.inc103.i_crit_edge ], [ %inc67.i, %if.then63.i ], [ %inc.i46, %if.then54.i ], [ %s_max.081.i, %for.cond75.preheader.i.for.inc103.i_crit_edge ], [ %s_max.081.i, %for.cond75.i.for.inc103.i_crit_edge ], [ %s_max.081.i, %if.then46.i.for.inc103.i_crit_edge ]
  %b_max.1.i = phi i8 [ %b_max.083.i, %if.then87.i.for.inc103.i_crit_edge ], [ %inc96.i, %if.then92.i ], [ %b_max.083.i, %for.body9.i.for.inc103.i_crit_edge ], [ %b_max.083.i, %if.then63.i ], [ %b_max.083.i, %if.then54.i ], [ %b_max.083.i, %for.cond75.preheader.i.for.inc103.i_crit_edge ], [ %b_max.083.i, %for.cond75.i.for.inc103.i_crit_edge ], [ %b_max.083.i, %if.then46.i.for.inc103.i_crit_edge ]
  %n_used_bssid_entries.2.i = phi i8 [ %n_used_bssid_entries.085.i, %if.then87.i.for.inc103.i_crit_edge ], [ %inc97.i, %if.then92.i ], [ %n_used_bssid_entries.085.i, %for.body9.i.for.inc103.i_crit_edge ], [ %n_used_bssid_entries.085.i, %if.then63.i ], [ %sub.i47, %if.then54.i ], [ %n_used_bssid_entries.085.i, %for.cond75.preheader.i.for.inc103.i_crit_edge ], [ %n_used_bssid_entries.085.i, %for.cond75.i.for.inc103.i_crit_edge ], [ %n_used_bssid_entries.085.i, %if.then46.i.for.inc103.i_crit_edge ]
  %allow_passive.2.off0.i = phi i1 [ %allow_passive.0.off087.i, %if.then87.i.for.inc103.i_crit_edge ], [ %allow_passive.0.off087.i, %if.then92.i ], [ %allow_passive.0.off087.i, %for.body9.i.for.inc103.i_crit_edge ], [ false, %if.then63.i ], [ %allow_passive.0.off087.i, %if.then54.i ], [ %allow_passive.0.off087.i, %for.cond75.preheader.i.for.inc103.i_crit_edge ], [ %allow_passive.0.off087.i, %for.cond75.i.for.inc103.i_crit_edge ], [ %allow_passive.0.off087.i, %if.then46.i.for.inc103.i_crit_edge ]
  %unsolicited_probe_on_chan.1.off0.i = phi i1 [ %tobool18.i, %if.then87.i.for.inc103.i_crit_edge ], [ %tobool18.i, %if.then92.i ], [ %unsolicited_probe_on_chan.0.off089.i, %for.body9.i.for.inc103.i_crit_edge ], [ %tobool18.i, %if.then63.i ], [ %tobool18.i, %if.then54.i ], [ %tobool18.i, %for.cond75.preheader.i.for.inc103.i_crit_edge ], [ %tobool18.i, %for.cond75.i.for.inc103.i_crit_edge ], [ %tobool18.i, %if.then46.i.for.inc103.i_crit_edge ]
  %psc_no_listen.1.off0.i = phi i1 [ %tobool27.i, %if.then87.i.for.inc103.i_crit_edge ], [ %tobool27.i, %if.then92.i ], [ %psc_no_listen.0.off090.i, %for.body9.i.for.inc103.i_crit_edge ], [ %tobool27.i, %if.then63.i ], [ %tobool27.i, %if.then54.i ], [ %tobool27.i, %for.cond75.preheader.i.for.inc103.i_crit_edge ], [ %tobool27.i, %for.cond75.i.for.inc103.i_crit_edge ], [ %tobool27.i, %if.then46.i.for.inc103.i_crit_edge ]
  %inc104.i = add i8 %j.080.i, 1
  %conv6.i = zext i8 %inc104.i to i32
  %cmp7.i = icmp ugt i32 %255, %conv6.i
  br i1 %cmp7.i, label %for.inc103.i.for.body9.i_crit_edge, label %for.inc103.i.for.end105.i_crit_edge

for.inc103.i.for.end105.i_crit_edge:              ; preds = %for.inc103.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end105.i

for.inc103.i.for.body9.i_crit_edge:               ; preds = %for.inc103.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body9.i

for.end105.i:                                     ; preds = %for.inc103.i.for.end105.i_crit_edge, %for.body.i41.for.end105.i_crit_edge
  %s_ssid_bitmap.0.lcssa.i = phi i32 [ 0, %for.body.i41.for.end105.i_crit_edge ], [ %s_ssid_bitmap.2.i, %for.inc103.i.for.end105.i_crit_edge ]
  %bssid_bitmap.0.lcssa.i = phi i32 [ 0, %for.body.i41.for.end105.i_crit_edge ], [ %bssid_bitmap.1.i, %for.inc103.i.for.end105.i_crit_edge ]
  %s_max.0.lcssa.i = phi i8 [ 0, %for.body.i41.for.end105.i_crit_edge ], [ %s_max.2.i, %for.inc103.i.for.end105.i_crit_edge ]
  %b_max.0.lcssa.i = phi i8 [ 0, %for.body.i41.for.end105.i_crit_edge ], [ %b_max.1.i, %for.inc103.i.for.end105.i_crit_edge ]
  %allow_passive.0.off0.lcssa.i = phi i1 [ true, %for.body.i41.for.end105.i_crit_edge ], [ %allow_passive.2.off0.i, %for.inc103.i.for.end105.i_crit_edge ]
  %unsolicited_probe_on_chan.0.off0.lcssa.i = phi i1 [ false, %for.body.i41.for.end105.i_crit_edge ], [ %unsolicited_probe_on_chan.1.off0.i, %for.inc103.i.for.end105.i_crit_edge ]
  %psc_no_listen.0.off0.lcssa.i = phi i1 [ false, %for.body.i41.for.end105.i_crit_edge ], [ %psc_no_listen.1.off0.i, %for.inc103.i.for.end105.i_crit_edge ]
  %275 = ptrtoint ptr %channels.i30 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %channels.i30, align 4
  %arrayidx107.i = getelementptr ptr, ptr %276, i32 %i.099.i
  %277 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %arrayidx107.i, align 4
  %279 = ptrtoint ptr %278 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %278, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %280)
  %cmp.not.i.i52 = icmp eq i32 %280, 3
  br i1 %cmp.not.i.i52, label %cfg80211_channel_is_psc.exit.i57, label %for.end105.i.cfg80211_channel_is_psc.exit.thread.i_crit_edge

for.end105.i.cfg80211_channel_is_psc.exit.thread.i_crit_edge: ; preds = %for.end105.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cfg80211_channel_is_psc.exit.thread.i

cfg80211_channel_is_psc.exit.i57:                 ; preds = %for.end105.i
  call void @__sanitizer_cov_trace_pc() #12
  %center_freq.i.i53 = getelementptr inbounds %struct.ieee80211_channel, ptr %278, i32 0, i32 1
  %281 = ptrtoint ptr %center_freq.i.i53 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %center_freq.i.i53, align 4
  %mul.i.i.i54 = mul i32 %282, 1000
  %call.i.i.i55 = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i.i.i54) #10
  %283 = and i32 %call.i.i.i55, -2147483633
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %283)
  %cmp1.i.i56 = icmp eq i32 %283, 5
  %284 = select i1 %cmp1.i.i56, i1 %psc_no_listen.0.off0.lcssa.i, i1 false
  %spec.select64.i = select i1 %284, i32 33554432, i32 0
  br label %cfg80211_channel_is_psc.exit.thread.i

cfg80211_channel_is_psc.exit.thread.i:            ; preds = %cfg80211_channel_is_psc.exit.i57, %for.end105.i.cfg80211_channel_is_psc.exit.thread.i_crit_edge
  %285 = phi i32 [ 0, %for.end105.i.cfg80211_channel_is_psc.exit.thread.i_crit_edge ], [ %spec.select64.i, %cfg80211_channel_is_psc.exit.i57 ]
  %or118.i = or i32 %285, 16777216
  %spec.select21.i = select i1 %unsolicited_probe_on_chan.0.off0.lcssa.i, i32 %or118.i, i32 %285
  %286 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %params, align 4
  %288 = and i32 %287, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %288)
  %289 = icmp eq i32 %288, 4
  %290 = ptrtoint ptr %channels.i30 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %channels.i30, align 4
  %arrayidx163.i = getelementptr ptr, ptr %291, i32 %i.099.i
  %292 = ptrtoint ptr %arrayidx163.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %arrayidx163.i, align 4
  %294 = ptrtoint ptr %293 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %293, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %295)
  %cmp.not.i36.i = icmp eq i32 %295, 3
  br i1 %289, label %if.else161.i, label %if.then121.i

if.then121.i:                                     ; preds = %cfg80211_channel_is_psc.exit.thread.i
  br i1 %cmp.not.i36.i, label %cfg80211_channel_is_psc.exit35.i, label %if.then121.i.if.then127.i_crit_edge

if.then121.i.if.then127.i_crit_edge:              ; preds = %if.then121.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then127.i

cfg80211_channel_is_psc.exit35.i:                 ; preds = %if.then121.i
  %center_freq.i29.i = getelementptr inbounds %struct.ieee80211_channel, ptr %293, i32 0, i32 1
  %296 = ptrtoint ptr %center_freq.i29.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %center_freq.i29.i, align 4
  %mul.i.i30.i = mul i32 %297, 1000
  %call.i.i31.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i.i30.i) #10
  %298 = and i32 %call.i.i31.i, -2147483633
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %298)
  %cmp1.i32.i = icmp eq i32 %298, 5
  %and125.i = and i32 %spec.select21.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125.i)
  %tobool126.not.i = icmp eq i32 %and125.i, 0
  %or.cond.i58 = select i1 %cmp1.i32.i, i1 %tobool126.not.i, i1 false
  br i1 %or.cond.i58, label %if.else150.i, label %cfg80211_channel_is_psc.exit35.i.if.then127.i_crit_edge

cfg80211_channel_is_psc.exit35.i.if.then127.i_crit_edge: ; preds = %cfg80211_channel_is_psc.exit35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then127.i

if.then127.i:                                     ; preds = %cfg80211_channel_is_psc.exit35.i.if.then127.i_crit_edge, %if.then121.i.if.then127.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %s_max.0.lcssa.i)
  %cmp129.i = icmp ugt i8 %s_max.0.lcssa.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %b_max.0.lcssa.i)
  %cmp132.i = icmp ugt i8 %b_max.0.lcssa.i, 9
  %spec.select22.i = select i1 %cmp129.i, i1 true, i1 %cmp132.i
  br i1 %unsolicited_probe_on_chan.0.off0.lcssa.i, label %land.rhs.i, label %if.then127.i.land.end.i_crit_edge

if.then127.i.land.end.i_crit_edge:                ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end.i

land.rhs.i:                                       ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %s_max.0.lcssa.i)
  %cmp138.i = icmp ugt i8 %s_max.0.lcssa.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %b_max.0.lcssa.i)
  %cmp142.i = icmp ugt i8 %b_max.0.lcssa.i, 6
  %spec.select23.i = select i1 %cmp138.i, i1 true, i1 %cmp142.i
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.then127.i.land.end.i_crit_edge
  %299 = phi i1 [ false, %if.then127.i.land.end.i_crit_edge ], [ %spec.select23.i, %land.rhs.i ]
  %or14719.i = or i1 %spec.select22.i, %299
  br label %if.end204.i

if.else150.i:                                     ; preds = %cfg80211_channel_is_psc.exit35.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %s_max.0.lcssa.i)
  %cmp152.i = icmp ugt i8 %s_max.0.lcssa.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %b_max.0.lcssa.i)
  %cmp156.i = icmp ugt i8 %b_max.0.lcssa.i, 6
  %spec.select24.i = select i1 %cmp152.i, i1 true, i1 %cmp156.i
  br label %if.end204.i

if.else161.i:                                     ; preds = %cfg80211_channel_is_psc.exit.thread.i
  br i1 %cmp.not.i36.i, label %cfg80211_channel_is_psc.exit43.i, label %if.else161.i.if.else175.i_crit_edge

if.else161.i.if.else175.i_crit_edge:              ; preds = %if.else161.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else175.i

cfg80211_channel_is_psc.exit43.i:                 ; preds = %if.else161.i
  %center_freq.i37.i = getelementptr inbounds %struct.ieee80211_channel, ptr %293, i32 0, i32 1
  %300 = ptrtoint ptr %center_freq.i37.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %center_freq.i37.i, align 4
  %mul.i.i38.i = mul i32 %301, 1000
  %call.i.i39.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i.i38.i) #10
  %302 = and i32 %call.i.i39.i, -2147483633
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %302)
  %cmp1.i40.i = icmp eq i32 %302, 5
  br i1 %cmp1.i40.i, label %if.then165.i, label %cfg80211_channel_is_psc.exit43.i.if.else175.i_crit_edge

cfg80211_channel_is_psc.exit43.i.if.else175.i_crit_edge: ; preds = %cfg80211_channel_is_psc.exit43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else175.i

if.then165.i:                                     ; preds = %cfg80211_channel_is_psc.exit43.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %s_max.0.lcssa.i)
  %cmp167.i = icmp ugt i8 %s_max.0.lcssa.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %b_max.0.lcssa.i)
  %cmp171.i = icmp ugt i8 %b_max.0.lcssa.i, 3
  %spec.select25.i = select i1 %cmp167.i, i1 true, i1 %cmp171.i
  br label %if.end204.i

if.else175.i:                                     ; preds = %cfg80211_channel_is_psc.exit43.i.if.else175.i_crit_edge, %if.else161.i.if.else175.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %s_max.0.lcssa.i)
  %cmp177.i = icmp ugt i8 %s_max.0.lcssa.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %b_max.0.lcssa.i)
  %cmp181.i = icmp ugt i8 %b_max.0.lcssa.i, 6
  %spec.select26.i = select i1 %cmp177.i, i1 true, i1 %cmp181.i
  br i1 %unsolicited_probe_on_chan.0.off0.lcssa.i, label %land.rhs187.i, label %if.else175.i.land.end196.i_crit_edge

if.else175.i.land.end196.i_crit_edge:             ; preds = %if.else175.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end196.i

land.rhs187.i:                                    ; preds = %if.else175.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %s_max.0.lcssa.i)
  %cmp189.i = icmp ugt i8 %s_max.0.lcssa.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %b_max.0.lcssa.i)
  %cmp193.i = icmp ugt i8 %b_max.0.lcssa.i, 3
  %spec.select27.i = select i1 %cmp189.i, i1 true, i1 %cmp193.i
  br label %land.end196.i

land.end196.i:                                    ; preds = %land.rhs187.i, %if.else175.i.land.end196.i_crit_edge
  %303 = phi i1 [ false, %if.else175.i.land.end196.i_crit_edge ], [ %spec.select27.i, %land.rhs187.i ]
  %or20020.i = or i1 %spec.select26.i, %303
  br label %if.end204.i

if.end204.i:                                      ; preds = %land.end196.i, %if.then165.i, %if.else150.i, %land.end.i
  %force_passive.0.in.i = phi i1 [ %spec.select25.i, %if.then165.i ], [ %or20020.i, %land.end196.i ], [ %or14719.i, %land.end.i ], [ %spec.select24.i, %if.else150.i ]
  %304 = select i1 %allow_passive.0.off0.lcssa.i, i1 %force_passive.0.in.i, i1 false
  br i1 %304, label %if.end204.i.if.then217.i_crit_edge, label %lor.lhs.false210.i

if.end204.i.if.then217.i_crit_edge:               ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then217.i

lor.lhs.false210.i:                               ; preds = %if.end204.i
  %or211.i = or i32 %bssid_bitmap.0.lcssa.i, %s_ssid_bitmap.0.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or211.i)
  %tobool212.not.i = icmp eq i32 %or211.i, 0
  br i1 %tobool212.not.i, label %land.lhs.true213.i, label %lor.lhs.false210.i.if.else219.i_crit_edge

lor.lhs.false210.i.if.else219.i_crit_edge:        ; preds = %lor.lhs.false210.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else219.i

land.lhs.true213.i:                               ; preds = %lor.lhs.false210.i
  %305 = ptrtoint ptr %channels.i30 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %channels.i30, align 4
  %arrayidx215.i = getelementptr ptr, ptr %306, i32 %i.099.i
  %307 = ptrtoint ptr %arrayidx215.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %arrayidx215.i, align 4
  %309 = ptrtoint ptr %308 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %308, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %310)
  %cmp.not.i44.i = icmp eq i32 %310, 3
  br i1 %cmp.not.i44.i, label %cfg80211_channel_is_psc.exit51.i, label %land.lhs.true213.i.if.then217.i_crit_edge

land.lhs.true213.i.if.then217.i_crit_edge:        ; preds = %land.lhs.true213.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then217.i

cfg80211_channel_is_psc.exit51.i:                 ; preds = %land.lhs.true213.i
  %center_freq.i45.i = getelementptr inbounds %struct.ieee80211_channel, ptr %308, i32 0, i32 1
  %311 = ptrtoint ptr %center_freq.i45.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %center_freq.i45.i, align 4
  %mul.i.i46.i = mul i32 %312, 1000
  %call.i.i47.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i.i46.i) #10
  %313 = and i32 %call.i.i47.i, -2147483633
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %313)
  %cmp1.i48.i = icmp eq i32 %313, 5
  br i1 %cmp1.i48.i, label %cfg80211_channel_is_psc.exit51.i.if.else219.i_crit_edge, label %cfg80211_channel_is_psc.exit51.i.if.then217.i_crit_edge

cfg80211_channel_is_psc.exit51.i.if.then217.i_crit_edge: ; preds = %cfg80211_channel_is_psc.exit51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then217.i

cfg80211_channel_is_psc.exit51.i.if.else219.i_crit_edge: ; preds = %cfg80211_channel_is_psc.exit51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else219.i

if.then217.i:                                     ; preds = %cfg80211_channel_is_psc.exit51.i.if.then217.i_crit_edge, %land.lhs.true213.i.if.then217.i_crit_edge, %if.end204.i.if.then217.i_crit_edge
  %or218.i = or i32 %spec.select21.i, 67108864
  br label %if.end223.i

if.else219.i:                                     ; preds = %cfg80211_channel_is_psc.exit51.i.if.else219.i_crit_edge, %lor.lhs.false210.i.if.else219.i_crit_edge
  %shl220.i = shl i32 %s_ssid_bitmap.0.lcssa.i, 16
  %or221.i = or i32 %bssid_bitmap.0.lcssa.i, %shl220.i
  %or222.i = or i32 %or221.i, %spec.select21.i
  br label %if.end223.i

if.end223.i:                                      ; preds = %if.else219.i, %if.then217.i
  %flags.2.i = phi i32 [ %or218.i, %if.then217.i ], [ %or222.i, %if.else219.i ]
  %314 = tail call i32 @llvm.bswap.i32(i32 %flags.2.i) #10
  %arrayidx224.i = getelementptr %struct.iwl_scan_channel_cfg_umac, ptr %channel_config.i, i32 %i.099.i
  %315 = ptrtoint ptr %arrayidx224.i to i32
  call void @__asan_loadN_noabort(i32 %315, i32 4)
  %316 = load i32, ptr %arrayidx224.i, align 1
  %or226.i = or i32 %316, %314
  store i32 %or226.i, ptr %arrayidx224.i, align 1
  %inc228.i = add nuw i32 %i.099.i, 1
  %317 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %n_channels, align 4
  %cmp.i59 = icmp ult i32 %inc228.i, %318
  br i1 %cmp.i59, label %if.end223.i.for.body.i41_crit_edge, label %if.end223.i.iwl_mvm_umac_scan_cfg_channels_v6_6g.exit_crit_edge

if.end223.i.iwl_mvm_umac_scan_cfg_channels_v6_6g.exit_crit_edge: ; preds = %if.end223.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_umac_scan_cfg_channels_v6_6g.exit

if.end223.i.for.body.i41_crit_edge:               ; preds = %if.end223.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i41

iwl_mvm_umac_scan_cfg_channels_v6_6g.exit:        ; preds = %if.end223.i.iwl_mvm_umac_scan_cfg_channels_v6_6g.exit_crit_edge, %iwl_mvm_umac_scan_fill_6g_chan_list.exit.iwl_mvm_umac_scan_cfg_channels_v6_6g.exit_crit_edge
  %319 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %n_channels, align 4
  %conv = trunc i32 %320 to i8
  %count = getelementptr inbounds %struct.iwl_scan_req_umac_v15, ptr %1, i32 0, i32 2, i32 1, i32 1
  %321 = ptrtoint ptr %count to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 %conv, ptr %count, align 1
  %322 = ptrtoint ptr %n_ssids.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %n_ssids.i, align 4
  %324 = zext i32 %323 to i64
  call void @__sanitizer_cov_trace_switch(i64 %324, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %323, label %iwl_mvm_umac_scan_cfg_channels_v6_6g.exit.cleanup_crit_edge [
    i32 0, label %iwl_mvm_umac_scan_cfg_channels_v6_6g.exit.if.then26_crit_edge
    i32 1, label %land.lhs.true
  ]

iwl_mvm_umac_scan_cfg_channels_v6_6g.exit.if.then26_crit_edge: ; preds = %iwl_mvm_umac_scan_cfg_channels_v6_6g.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26

iwl_mvm_umac_scan_cfg_channels_v6_6g.exit.cleanup_crit_edge: ; preds = %iwl_mvm_umac_scan_cfg_channels_v6_6g.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %iwl_mvm_umac_scan_cfg_channels_v6_6g.exit
  %325 = ptrtoint ptr %ssids.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %ssids.i.i, align 4
  %ssid_len = getelementptr inbounds %struct.cfg80211_ssid, ptr %326, i32 0, i32 1
  %327 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %ssid_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %328)
  %tobool25.not = icmp eq i8 %328, 0
  br i1 %tobool25.not, label %land.lhs.true.if.then26_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.then26_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26

if.then26:                                        ; preds = %land.lhs.true.if.then26_crit_edge, %iwl_mvm_umac_scan_cfg_channels_v6_6g.exit.if.then26_crit_edge
  %329 = ptrtoint ptr %channel_params to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %channel_params, align 1
  %331 = or i8 %330, 64
  store i8 %331, ptr %channel_params, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %land.lhs.true.cleanup_crit_edge, %iwl_mvm_umac_scan_cfg_channels_v6_6g.exit.cleanup_crit_edge, %cleanup.i.cleanup_crit_edge, %if.then.i8.cleanup_crit_edge, %iwl_mvm_umac_scan_cfg_channels_v6.exit.i.cleanup_crit_edge, %iwl_mvm_fill_scan_sched_params.exit
  %retval.0 = phi i32 [ -22, %iwl_mvm_fill_scan_sched_params.exit ], [ 0, %iwl_mvm_umac_scan_cfg_channels_v6_6g.exit.cleanup_crit_edge ], [ 0, %if.then26 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %iwl_mvm_umac_scan_cfg_channels_v6.exit.i.cleanup_crit_edge ], [ 0, %if.then.i8.cleanup_crit_edge ], [ 0, %cleanup.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitmap_ssid) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i16 @iwl_mvm_scan_umac_flags_v2(ptr nocapture noundef readonly %mvm, ptr nocapture noundef readonly %params, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %n_ssids = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 4
  %0 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_ssids, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %1, label %if.end10.fold.split [
    i32 0, label %entry.if.end10_crit_edge
    i32 1, label %land.lhs.true
  ]

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ssids = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 5
  %3 = ptrtoint ptr %ssids to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ssids, align 4
  %ssid_len = getelementptr inbounds %struct.cfg80211_ssid, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ssid_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %spec.select = select i1 %tobool.not, i16 0, i16 64
  br label %if.end10

if.end10.fold.split:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end10:                                         ; preds = %if.end10.fold.split, %land.lhs.true, %entry.if.end10_crit_edge
  %flags.0 = phi i16 [ 2048, %entry.if.end10_crit_edge ], [ 0, %if.end10.fold.split ], [ %spec.select, %land.lhs.true ]
  %7 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %params, align 4
  %9 = and i32 %8, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %10 = icmp eq i32 %9, 4
  %11 = or i16 %flags.0, 8
  %spec.select1 = select i1 %10, i16 %11, i16 %flags.0
  %hb_type = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 1
  %12 = ptrtoint ptr %hb_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hb_type, align 4
  %14 = and i32 %13, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %15 = icmp eq i32 %14, 4
  %16 = or i16 %spec.select1, 16
  %flags.2 = select i1 %15, i16 %16, i16 %spec.select1
  %pass_all = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 11
  %17 = ptrtoint ptr %pass_all to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pass_all, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool23.not = icmp eq i8 %18, 0
  %flags.3.v = select i1 %tobool23.not, i16 32, i16 2
  %flags.3 = or i16 %flags.2, %flags.3.v
  %n_scan_plans.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 15
  %19 = ptrtoint ptr %n_scan_plans.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n_scan_plans.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i = icmp eq i32 %20, 1
  br i1 %cmp.i, label %iwl_mvm_is_regular_scan.exit, label %if.end10.iwl_mvm_is_regular_scan.exit.thread_crit_edge

if.end10.iwl_mvm_is_regular_scan.exit.thread_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_is_regular_scan.exit.thread

iwl_mvm_is_regular_scan.exit:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %scan_plans.i = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 16
  %21 = ptrtoint ptr %scan_plans.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %scan_plans.i, align 4
  %iterations.i = getelementptr inbounds %struct.cfg80211_sched_scan_plan, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %iterations.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iterations.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp1.i = icmp ne i32 %24, 1
  %25 = zext i1 %cmp1.i to i16
  br label %iwl_mvm_is_regular_scan.exit.thread

iwl_mvm_is_regular_scan.exit.thread:              ; preds = %iwl_mvm_is_regular_scan.exit, %if.end10.iwl_mvm_is_regular_scan.exit.thread_crit_edge
  %.sink = phi i16 [ %25, %iwl_mvm_is_regular_scan.exit ], [ 1, %if.end10.iwl_mvm_is_regular_scan.exit.thread_crit_edge ]
  %spec.select6 = or i16 %flags.3, %.sink
  %iter_notif = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 17
  %26 = ptrtoint ptr %iter_notif to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %iter_notif, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool39.not = icmp eq i8 %27, 0
  br i1 %tobool39.not, label %lor.lhs.false, label %iwl_mvm_is_regular_scan.exit.thread.if.then43_crit_edge

iwl_mvm_is_regular_scan.exit.thread.if.then43_crit_edge: ; preds = %iwl_mvm_is_regular_scan.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

lor.lhs.false:                                    ; preds = %iwl_mvm_is_regular_scan.exit.thread
  %sched_scan_pass_all = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 53
  %28 = ptrtoint ptr %sched_scan_pass_all to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sched_scan_pass_all, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp41 = icmp eq i32 %29, 1
  br i1 %cmp41, label %lor.lhs.false.if.then43_crit_edge, label %lor.lhs.false.if.end47_crit_edge

lor.lhs.false.if.end47_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

lor.lhs.false.if.then43_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

if.then43:                                        ; preds = %lor.lhs.false.if.then43_crit_edge, %iwl_mvm_is_regular_scan.exit.thread.if.then43_crit_edge
  %30 = or i16 %spec.select6, 4
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %lor.lhs.false.if.end47_crit_edge
  %flags.5 = phi i16 [ %30, %if.then43 ], [ %spec.select6, %lor.lhs.false.if.end47_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp51 = icmp eq i32 %type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type)
  %cmp54 = icmp eq i32 %type, 4
  %or.cond = or i1 %cmp51, %cmp54
  %flags.6.v = select i1 %or.cond, i16 384, i16 128
  %flags.6 = or i16 %flags.5, %flags.6.v
  %31 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %type, label %if.end47.if.end73_crit_edge [
    i32 4, label %if.end47.land.lhs.true66_crit_edge
    i32 2, label %if.end47.land.lhs.true66_crit_edge7
  ]

if.end47.land.lhs.true66_crit_edge7:              ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true66

if.end47.land.lhs.true66_crit_edge:               ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true66

if.end47.if.end73_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

land.lhs.true66:                                  ; preds = %if.end47.land.lhs.true66_crit_edge, %if.end47.land.lhs.true66_crit_edge7
  %flags67 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 7
  %32 = ptrtoint ptr %flags67 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags67, align 4
  %34 = trunc i32 %33 to i16
  %35 = lshr i16 %34, 2
  %36 = and i16 %35, 4096
  %37 = or i16 %36, %flags.6
  br label %if.end73

if.end73:                                         ; preds = %land.lhs.true66, %if.end47.if.end73_crit_edge
  %flags.7 = phi i16 [ %flags.6, %if.end47.if.end73_crit_edge ], [ %37, %land.lhs.true66 ]
  %enable_6ghz_passive = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 21
  %38 = ptrtoint ptr %enable_6ghz_passive to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %enable_6ghz_passive, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool74.not = icmp eq i8 %39, 0
  %40 = or i16 %flags.7, 8192
  %spec.select4 = select i1 %tobool74.not, i16 %flags.7, i16 %40
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %41 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %42, i32 0, i32 5, i32 7, i32 1
  %43 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %45 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.i.i.not = icmp eq i32 %45, 0
  br i1 %tobool.i.i.not, label %if.end73.if.end90_crit_edge, label %land.lhs.true82

if.end73.if.end90_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

land.lhs.true82:                                  ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  %flags83 = getelementptr inbounds %struct.iwl_mvm_scan_params, ptr %params, i32 0, i32 7
  %46 = ptrtoint ptr %flags83 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags83, align 4
  %and84 = and i32 %47, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  %48 = or i16 %spec.select4, -32768
  %spec.select5 = select i1 %tobool85.not, i16 %spec.select4, i16 %48
  br label %if.end90

if.end90:                                         ; preds = %land.lhs.true82, %if.end73.if.end90_crit_edge
  %flags.9 = phi i16 [ %spec.select4, %if.end73.if.end90_crit_edge ], [ %spec.select5, %land.lhs.true82 ]
  ret i16 %flags.9
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_init_notification_wait(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_remove_notification(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_wait_notification(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd_pdu(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !15, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !33, !35, !37, !39, !41, !42, !44, !46, !47, !49, !51, !53, !54, !56, !58, !59, !61, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !85, !87, !89, !90, !91, !93, !95, !97, !99, !101, !103, !104, !105, !107, !109, !111, !113, !115, !117, !118, !120, !122, !123, !125, !127, !128, !130, !132, !134, !135, !137}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !{ptr @__func__.iwl_mvm_rx_lmac_scan_iter_complete_notif, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 336, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 341, i32 3}
!5 = !{ptr @__func__.iwl_mvm_rx_scan_match_found, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 350, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 378, i32 6}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 396, i32 3}
!13 = !{ptr @__func__.iwl_mvm_rx_lmac_scan_complete_notif, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 398, i32 3}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 401, i32 3}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 409, i32 3}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 415, i32 3}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 420, i32 3}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 434, i32 3}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 443, i32 3}
!30 = !{ptr @__func__.iwl_mvm_config_scan, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 1276, i32 2}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 2530, i32 2}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 2630, i32 3}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 2687, i32 3}
!39 = !{ptr @__func__.iwl_mvm_reg_scan_start, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 2693, i32 2}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 2725, i32 3}
!44 = !{ptr @__func__.iwl_mvm_sched_scan_start, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 2763, i32 3}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 2819, i32 3}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 2827, i32 3}
!51 = !{ptr @__func__.iwl_mvm_rx_umac_scan_complete_notif, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 2864, i32 2}
!53 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 2870, i32 2}
!56 = !{ptr @__func__.iwl_mvm_rx_umac_scan_iter_complete_notif, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 2890, i32 2}
!58 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 2900, i32 2}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 3062, i32 8}
!63 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 358, i32 10}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 360, i32 10}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 364, i32 10}
!70 = !{ptr @__func__.iwl_mvm_legacy_config_scan, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 1234, i32 2}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 1145, i32 2}
!74 = !{ptr @rate_to_scan_rate_flag.rate_to_scan_rate, !75, !"rate_to_scan_rate", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 1014, i32 19}
!76 = !{ptr @scan_timing, !77, !"scan_timing", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 54, i32 42}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 1093, i32 2}
!80 = !{ptr @iwl_mvm_copy_and_insert_ds_elem.before_ds_params, !81, !"before_ds_params", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 700, i32 18}
!82 = !{ptr @__func__.iwl_mvm_scan_6ghz_passive_scan, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 1917, i32 3}
!84 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 1924, i32 3}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 1940, i32 3}
!89 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 1948, i32 3}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 1960, i32 3}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 1966, i32 3}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 1981, i32 3}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 1987, i32 2}
!101 = distinct !{null, !102, !"__already_done", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h", i32 2099, i32 3}
!103 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @iwl_scan_umac_handlers, !106, !"iwl_scan_umac_handlers", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 2562, i32 43}
!107 = distinct !{null, !108, !"p2p_go_friendly_chs", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 1519, i32 17}
!109 = distinct !{null, !110, !"social_chs", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 1523, i32 17}
!111 = !{ptr @scan_channel_segments, !112, !"scan_channel_segments", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 1454, i32 50}
!113 = distinct !{null, !114, !"__already_done", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 2118, i32 9}
!115 = !{ptr @__func__.iwl_mvm_scan_pass_all, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 604, i32 3}
!117 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.45, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 611, i32 2}
!120 = !{ptr @__func__.iwl_mvm_config_sched_scan_profiles, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 590, i32 2}
!122 = !{ptr @.str.46, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @iwl_mvm_scan_stop_wait.scan_done_notif, !124, !"scan_done_notif", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 2937, i32 19}
!125 = !{ptr @__func__.iwl_mvm_scan_stop_wait, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 2948, i32 2}
!127 = !{ptr @.str.47, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.48, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 2956, i32 3}
!130 = distinct !{null, !131, !"__already_done", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 2917, i32 6}
!132 = !{ptr @__func__.iwl_mvm_umac_scan_abort, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 2922, i32 2}
!134 = !{ptr @.str.49, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @__func__.iwl_mvm_lmac_scan_abort, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/scan.c", i32 637, i32 3}
!137 = !{ptr @.str.50, !136, !"<string literal>", i1 false, i1 false}
!138 = !{i32 1, !"wchar_size", i32 2}
!139 = !{i32 1, !"min_enum_size", i32 4}
!140 = !{i32 8, !"branch-target-enforcement", i32 0}
!141 = !{i32 8, !"sign-return-address", i32 0}
!142 = !{i32 8, !"sign-return-address-all", i32 0}
!143 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!147 = !{!"branch_weights", i32 2000, i32 1}
!148 = !{!"branch_weights", i32 1, i32 2000}
!149 = !{!"auto-init"}
!150 = !{i8 0, i8 2}
