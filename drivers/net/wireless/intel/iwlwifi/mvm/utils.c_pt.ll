; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/mvm/utils.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/mvm/utils.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_mvm_mod_params = type { i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }
%struct.iwl_rx_cmd_buffer = type { ptr, i32, i8, i32, i32 }
%struct.iwl_scd_txq_cfg_cmd = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16 }
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
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
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
%struct.iwl_statistics_cmd = type { i32 }
%struct.iwl_notification_wait = type { %struct.list_head, ptr, ptr, [5 x i16], i8, i8, i8 }
%struct.iwl_mvm_diversity_iter_data = type { ptr, i8 }
%struct.iwl_cfg = type { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }
%struct.iwl_mac_low_latency_cmd = type { i32, i8, i8, i16 }
%struct.iwl_mvm_low_latency_iter = type { i8, [6 x i8] }
%struct.iwl_bss_iter_data = type { ptr, i8 }
%struct.iwl_bss_find_iter_data = type { ptr, i32 }
%struct.iwl_sta_iter_data = type { i8 }
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
%struct.iwl_fw_dbg_trigger_mlme = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/utils.c\00", [49 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@iwl_mvm_send_cmd_status.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cmd flags %x\00", [19 x i8] zeroinitializer }, align 32
@iwl_mvm_send_cmd_status.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_mac80211_ac_to_ucode_ac.mac80211_ac_to_ucode_ac = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\03\02\01\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"FW Error notification: type 0x%08X cmd_id 0x%02X\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"FW Error notification: seq 0x%04X service 0x%08X\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"FW Error notification: timestamp 0x%016llX\0A\00", [52 x i8] zeroinitializer }, align 32
@first_antenna.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_next_antenna.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to toggle between antennas 0x%x\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Trying to reconfig unallocated queue %d\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_reconfig_scd = private unnamed_addr constant [21 x i8] c"iwl_mvm_reconfig_scd\00", align 1
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Reconfig SCD for TXQ #%d\0A\00", [38 x i8] zeroinitializer }, align 32
@iwl_mvm_reconfig_scd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to re-configure queue %d on FIFO %d, ret=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@iwl_mvm_request_statistics.stats_complete = internal constant { [1 x i16], [30 x i8] } { [1 x i16] [i16 157], [30 x i8] zeroinitializer }, align 32
@iwlmvm_mod_params = external dso_local local_unnamed_addr global %struct.iwl_mvm_mod_params, align 4
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to send low latency command\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"More than one managed interface active!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Frame from %pM timed out, tid %d\00", [63 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@iwl_mvm_tcm_add_vif.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"(work_completion)(&(&mvmvif->uapsd_nonagg_detected_wk)->work)\00", [34 x i8] zeroinitializer }, align 32
@iwl_mvm_tcm_add_vif.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"&(&mvmvif->uapsd_nonagg_detected_wk)->timer\00", [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Trigger %d occurred while no-collect window.\0A\00", [50 x i8] zeroinitializer }, align 32
@iwl_mvm_check_uapsd_agg_expected_tpt.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"detected AP should do aggregation but isn't, likely due to U-APSD\0A\00", [61 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"AP isn't using AMPDU with uAPSD enabled\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967164, i64 4294967184]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967164]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 6, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.30 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 6, i64 8, i64 9, i64 10]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 26, i32 6 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 91, i32 6 }
@___asan_gen_.37 = private unnamed_addr constant [24 x i8] c"mac80211_ac_to_ucode_ac\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 186, i32 18 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 201, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 203, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 206, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 240, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 263, i32 6 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 267, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 270, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [15 x i8] c"stats_complete\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 380, i32 20 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 486, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 592, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 730, i32 44 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 755, i32 5 }
@___asan_gen_.82 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1126, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [54 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/../fw/dbg.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 121, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 908, i32 8 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 695, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 866, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 723, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.107 = private constant [50 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/utils.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 842, i32 5 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @.str, ptr @.str.1, ptr @iwl_mvm_mac80211_ac_to_ucode_ac.mac80211_ac_to_ucode_ac, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @iwl_mvm_request_statistics.stats_complete, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @iwl_mvm_tcm_add_vif.__key, ptr @.str.14, ptr @iwl_mvm_tcm_add_vif.__key.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_mac80211_ac_to_ucode_ac.mac80211_ac_to_ucode_ac to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_request_statistics.stats_complete to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_tcm_add_vif.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_tcm_add_vif.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d3_test_active = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 113
  %0 = ptrtoint ptr %d3_test_active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %d3_test_active, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end22, label %do.end, !prof !70

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 26, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end22:                                         ; preds = %entry
  %flags = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %do.body25, label %if.end22.if.end61_crit_edge

if.end22.if.end61_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

do.body25:                                        ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool27.not = icmp eq i32 %4, 0
  br i1 %tobool27.not, label %do.body25.if.end61_crit_edge, label %land.rhs

do.body25.if.end61_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

land.rhs:                                         ; preds = %do.body25
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end45, label %land.rhs.if.end61_crit_edge, !prof !71

land.rhs.if.end61_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

do.end45:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 36, i32 noundef 9, ptr noundef null) #10
  br label %if.end61

if.end61:                                         ; preds = %do.end45, %land.rhs.if.end61_crit_edge, %do.body25.if.end61_crit_edge, %if.end22.if.end61_crit_edge
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %5 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trans, align 4
  %call62 = tail call i32 @iwl_trans_send_cmd(ptr noundef %6, ptr noundef %cmd) #10
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and64 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end67:                                         ; preds = %if.end61
  %9 = zext i32 %call62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call62, label %if.end73 [
    i32 0, label %if.end67.cleanup_crit_edge
    i32 -132, label %if.end67.cleanup_crit_edge84
    i32 -112, label %if.end67.cleanup_crit_edge85
  ]

if.end67.cleanup_crit_edge85:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end67.cleanup_crit_edge84:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end73:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.end67.cleanup_crit_edge, %if.end67.cleanup_crit_edge84, %if.end67.cleanup_crit_edge85, %if.end61.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %call62, %if.end73 ], [ %call62, %if.end61.cleanup_crit_edge ], [ 0, %if.end67.cleanup_crit_edge ], [ 0, %if.end67.cleanup_crit_edge84 ], [ 0, %if.end67.cleanup_crit_edge85 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_trans_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef %id, i32 noundef %flags, i16 noundef zeroext %len, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd) #10
  %0 = getelementptr inbounds i8, ptr %cmd, i32 32
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !72
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
  %5 = ptrtoint ptr %id4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %id, ptr %id4, align 4
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
  %call = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %cmd)
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_send_cmd_status(ptr noundef %mvm, ptr noundef %cmd, ptr nocapture noundef writeonly %status) local_unnamed_addr #0 align 64 {
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
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !71

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 80, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %d3_test_active = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 113
  %1 = ptrtoint ptr %d3_test_active to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %d3_test_active, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool25.not = icmp eq i8 %2, 0
  br i1 %tobool25.not, label %if.end57, label %do.end41, !prof !70

do.end41:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 83, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end57:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool58.not = icmp eq i32 %and, 0
  br i1 %tobool58.not, label %if.end113, label %land.rhs64

land.rhs64:                                       ; preds = %if.end57
  %.b203 = load i1, ptr @iwl_mvm_send_cmd_status.__already_done, align 1
  br i1 %.b203, label %land.rhs64.cleanup_crit_edge, label %if.then75, !prof !70

land.rhs64.cleanup_crit_edge:                     ; preds = %land.rhs64
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then75:                                        ; preds = %land.rhs64
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_send_cmd_status.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 92, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %4) #10
  br label %cleanup

if.end113:                                        ; preds = %if.end57
  %or = or i32 %4, 2
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %flags, align 4
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %6 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trans, align 4
  %call115 = tail call i32 @iwl_trans_send_cmd(ptr noundef %7, ptr noundef %cmd) #10
  %8 = zext i32 %call115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %call115, label %if.then119 [
    i32 -132, label %if.end113.cleanup_crit_edge
    i32 0, label %if.end121
  ]

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then119:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end121:                                        ; preds = %if.end113
  %resp_pkt = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 1
  %9 = ptrtoint ptr %resp_pkt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resp_pkt, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %10, align 1
  %13 = and i32 %12, -12648448
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %13)
  %cmp124.not = icmp eq i32 %13, 134217728
  br i1 %cmp124.not, label %if.end179, label %land.rhs131

land.rhs131:                                      ; preds = %if.end121
  %.b201202 = load i1, ptr @iwl_mvm_send_cmd_status.__already_done.2, align 1
  br i1 %.b201202, label %land.rhs131.out_free_resp_crit_edge, label %if.then142, !prof !70

land.rhs131.out_free_resp_crit_edge:              ; preds = %land.rhs131
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_resp

if.then142:                                       ; preds = %land.rhs131
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_send_cmd_status.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 111, i32 noundef 9, ptr noundef null) #10
  br label %out_free_resp

if.end179:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %10, i32 0, i32 2
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %status, align 4
  br label %out_free_resp

out_free_resp:                                    ; preds = %if.end179, %if.then142, %land.rhs131.out_free_resp_crit_edge
  %ret.0 = phi i32 [ 0, %if.end179 ], [ -5, %if.then142 ], [ -5, %land.rhs131.out_free_resp_crit_edge ]
  %_rx_page_addr.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 2
  %18 = ptrtoint ptr %_rx_page_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %_rx_page_addr.i, align 4
  %_rx_page_order.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 3
  %20 = ptrtoint ptr %_rx_page_order.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %_rx_page_order.i, align 4
  tail call void @free_pages(i32 noundef %19, i32 noundef %21) #10
  br label %cleanup

cleanup:                                          ; preds = %out_free_resp, %if.then119, %if.end113.cleanup_crit_edge, %if.then75, %land.rhs64.cleanup_crit_edge, %do.end41
  %retval.0 = phi i32 [ -5, %do.end41 ], [ %call115, %if.then119 ], [ %ret.0, %out_free_resp ], [ -22, %if.then75 ], [ 0, %if.end113.cleanup_crit_edge ], [ -22, %land.rhs64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_send_cmd_pdu_status(ptr noundef %mvm, i32 noundef %id, i16 noundef zeroext %len, ptr noundef %data, ptr nocapture noundef writeonly %status) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd) #10
  %0 = getelementptr inbounds i8, ptr %cmd, i32 32
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !72
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %cmd, align 4
  %arrayinit.cur.ptr = getelementptr inbounds ptr, ptr %cmd, i32 1
  %id3 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 5
  %3 = call ptr @memset(ptr %arrayinit.cur.ptr, i32 0, i32 20)
  %4 = ptrtoint ptr %id3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %id, ptr %id3, align 4
  %len4 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %len4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %len, ptr %len4, align 4
  %arrayinit.start6 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %arrayinit.start6 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %arrayinit.start6, align 2
  %arrayinit.end7 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 7
  %7 = ptrtoint ptr %arrayinit.end7 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %arrayinit.end7, align 4
  %call = call i32 @iwl_mvm_send_cmd_status(ptr noundef %mvm, ptr noundef nonnull %cmd, ptr noundef %status)
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd) #10
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @iwl_mvm_legacy_hw_idx_to_mac80211_idx(i32 noundef %rate_n_flags, i32 noundef %band) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %rate_n_flags, 1792
  %and1 = and i32 %rate_n_flags, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %band)
  %cmp = icmp eq i32 %band, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and)
  %cmp2 = icmp eq i32 %and, 256
  %add = add nuw nsw i32 %and1, 4
  %cond = select i1 %cmp, i32 %add, i32 %and1
  %spec.select = select i1 %cmp, i32 %and1, i32 -1
  %retval.0 = select i1 %cmp2, i32 %cond, i32 %spec.select
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_legacy_rate_to_mac80211_idx(i32 noundef %rate_n_flags, i32 noundef %band) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %band)
  %cmp.not = icmp eq i32 %band, 0
  %spec.store.select = select i1 %cmp.not, i32 0, i32 4
  %0 = trunc i32 %rate_n_flags to i8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %idx.013 = phi i32 [ %spec.store.select, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = tail call zeroext i8 @iwl_fw_rate_idx_to_plcp(i32 noundef %idx.013) #10
  call void @__sanitizer_cov_trace_cmp1(i8 %call, i8 %0)
  %cmp2 = icmp eq i8 %call, %0
  br i1 %cmp2, label %if.then4, label %for.inc

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub nsw i32 %idx.013, %spec.store.select
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %idx.013, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then4
  %retval.0 = phi i32 [ %sub, %if.then4 ], [ -1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_fw_rate_idx_to_plcp(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @iwl_mvm_mac80211_idx_to_hwrate(ptr noundef %fw, i32 noundef %rate_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %fw, i8 noundef zeroext 1, i8 noundef zeroext 28, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %call)
  %cmp = icmp ugt i8 %call, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rate_idx)
  %cmp2 = icmp sgt i32 %rate_idx, 3
  %sub = add i32 %rate_idx, 252
  %cond = select i1 %cmp2, i32 %sub, i32 %rate_idx
  %conv4 = trunc i32 %cond to i8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call zeroext i8 @iwl_fw_rate_idx_to_plcp(i32 noundef %rate_idx) #10
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %conv4, %if.then ], [ %call5, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @iwl_mvm_mac80211_ac_to_ucode_ac(i32 noundef %ac) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i8], ptr @iwl_mvm_mac80211_ac_to_ucode_ac.mac80211_ac_to_ucode_ac, i32 0, i32 %ac
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  ret i8 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rx_fw_error(ptr nocapture noundef readonly %mvm, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
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
  %8 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %data, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %cmd_id = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %11 = ptrtoint ptr %cmd_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cmd_id, align 1
  %conv = zext i8 %12 to i32
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %7, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef %10, i32 noundef %conv) #10
  %13 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mvm, align 8
  %bad_cmd_seq_num = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1, i32 2
  %15 = ptrtoint ptr %bad_cmd_seq_num to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %bad_cmd_seq_num, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %conv9 = zext i16 %17 to i32
  %error_service = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2
  %18 = ptrtoint ptr %error_service to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %error_service, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %14, i32 noundef 0, ptr noundef nonnull @.str.4, i32 noundef %conv9, i32 noundef %20) #10
  %21 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mvm, align 8
  %timestamp = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2, i32 1
  %23 = ptrtoint ptr %timestamp to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %timestamp, align 1
  %25 = tail call i64 @llvm.bswap.i64(i64 %24)
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %22, i32 noundef 0, ptr noundef nonnull @.str.5, i64 noundef %25) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @first_antenna(i8 noundef zeroext %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mask)
  %tobool.not = icmp eq i8 %mask, 0
  br i1 %tobool.not, label %land.rhs, label %if.end41

land.rhs:                                         ; preds = %entry
  %.b46 = load i1, ptr @first_antenna.__already_done, align 1
  br i1 %.b46, label %land.rhs.return_crit_edge, label %if.then, !prof !70

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @first_antenna.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 217, i32 noundef 9, ptr noundef null) #10
  br label %return

if.end41:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i8 @llvm.cttz.i8(i8 %mask, i1 true), !range !73
  %shl = shl nuw i8 1, %0
  br label %return

return:                                           ; preds = %if.end41, %if.then, %land.rhs.return_crit_edge
  %retval.0 = phi i8 [ %shl, %if.end41 ], [ 1, %if.then ], [ 1, %land.rhs.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @iwl_mvm_next_antenna(ptr nocapture noundef readnone %mvm, i8 noundef zeroext %valid, i8 noundef zeroext %last_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv2 = zext i8 %valid to i32
  %0 = and i8 %last_idx, 1
  %1 = xor i8 %0, 1
  %conv3 = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv3
  %and = and i32 %shl, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond:                                         ; preds = %entry
  %conv3.1 = zext i8 %0 to i32
  %shl.1 = shl nuw nsw i32 1, %conv3.1
  %and.1 = and i32 %shl.1, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %.b49 = load i1, ptr @iwl_mvm_next_antenna.__already_done, align 1
  br i1 %.b49, label %for.cond.1.cleanup_crit_edge, label %if.then10, !prof !70

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_next_antenna.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 240, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %conv2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %last_idx, %if.then10 ], [ %last_idx, %for.cond.1.cleanup_crit_edge ], [ %1, %entry.cleanup_crit_edge ], [ %0, %for.cond.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_reconfig_scd(ptr noundef %mvm, i32 noundef %queue, i32 noundef %fifo, i32 noundef %sta_id, i32 noundef %tid, i32 noundef %frame_limit, i16 noundef zeroext %ssn) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.iwl_host_cmd, align 4
  %cmd = alloca %struct.iwl_scd_txq_cfg_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #10
  %0 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, ptr %cmd, i32 0, i32 3
  %3 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, ptr %cmd, i32 0, i32 4
  %4 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, ptr %cmd, i32 0, i32 5
  %5 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, ptr %cmd, i32 0, i32 6
  %6 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, ptr %cmd, i32 0, i32 7
  %7 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, ptr %cmd, i32 0, i32 8
  %8 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, ptr %cmd, i32 0, i32 9
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %cmd, align 1
  %conv = trunc i32 %sta_id to i8
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %0, align 1
  %conv3 = trunc i32 %tid to i8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv3, ptr %1, align 1
  %conv4 = trunc i32 %queue to i8
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv4, ptr %2, align 1
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %queue)
  %cmp = icmp sgt i32 %queue, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %queue)
  %cmp6 = icmp eq i32 %queue, 4
  %spec.select = or i1 %cmp, %cmp6
  %conv8 = zext i1 %spec.select to i8
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv8, ptr %4, align 1
  %conv9 = trunc i32 %fifo to i8
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv9, ptr %5, align 1
  %conv10 = trunc i32 %frame_limit to i8
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv10, ptr %6, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %ssn)
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %17, ptr %7, align 1
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 0, ptr %8, align 1
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %20 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %trans_cfg.i, align 4
  %use_tfh.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %use_tfh.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load.i = load i16, ptr %use_tfh.i, align 4
  %25 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.i.not = icmp eq i16 %25, 0
  br i1 %tobool.i.not, label %if.end32, label %do.end, !prof !70

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 260, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end32:                                         ; preds = %entry
  %26 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 28
  %tid_bitmap = getelementptr [32 x %struct.iwl_mvm_dqa_txq_info], ptr %26, i32 0, i32 %queue, i32 4
  %27 = ptrtoint ptr %tid_bitmap to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %tid_bitmap, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp35 = icmp eq i16 %28, 0
  br i1 %cmp35, label %do.end52, label %do.end72, !prof !71

do.end52:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 264, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %queue) #10
  br label %cleanup

do.end72:                                         ; preds = %if.end32
  %29 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %30, i32 noundef -2147483648, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_reconfig_scd, ptr noundef nonnull @.str.8, i32 noundef %queue) #10
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i) #10
  %31 = getelementptr inbounds i8, ptr %cmd.i, i32 32
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 65535, ptr %31, align 4, !annotation !72
  %33 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %cmd, ptr %cmd.i, align 4
  %arrayinit.cur.ptr.i = getelementptr inbounds ptr, ptr %cmd.i, i32 1
  %id4.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 5
  %34 = call ptr @memset(ptr %arrayinit.cur.ptr.i, i32 0, i32 20)
  %35 = ptrtoint ptr %id4.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 29, ptr %id4.i, align 4
  %len5.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6
  %36 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 12, ptr %len5.i, align 4
  %arrayinit.start7.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6, i32 1
  %37 = ptrtoint ptr %arrayinit.start7.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %arrayinit.start7.i, align 2
  %call.i = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %cmd.i) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool76.not = icmp eq i32 %call.i, 0
  br i1 %tobool76.not, label %do.end72.cleanup_crit_edge, label %land.rhs

do.end72.cleanup_crit_edge:                       ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs:                                         ; preds = %do.end72
  %.b144 = load i1, ptr @iwl_mvm_reconfig_scd.__already_done, align 1
  br i1 %.b144, label %land.rhs.cleanup_crit_edge, label %if.then92, !prof !70

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then92:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_reconfig_scd.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 271, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %queue, i32 noundef %fifo, i32 noundef %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then92, %land.rhs.cleanup_crit_edge, %do.end72.cleanup_crit_edge, %do.end52, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -6, %do.end52 ], [ 0, %do.end72.cleanup_crit_edge ], [ %call.i, %if.then92 ], [ %call.i, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_send_lq_cmd(ptr noundef %mvm, ptr noundef %lq) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd) #10
  %0 = getelementptr inbounds i8, ptr %cmd, i32 32
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !72
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %lq, ptr %cmd, align 4
  %arrayinit.cur.ptr = getelementptr inbounds ptr, ptr %cmd, i32 1
  %flags = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 4
  %3 = call ptr @memset(ptr %arrayinit.cur.ptr, i32 0, i32 16)
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %flags, align 4
  %id = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 5
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 78, ptr %id, align 4
  %len = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 88, ptr %len, align 4
  %arrayinit.start3 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %arrayinit.start3 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %arrayinit.start3, align 2
  %arrayinit.end4 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 7
  %8 = ptrtoint ptr %arrayinit.end4 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %arrayinit.end4, align 4
  %9 = ptrtoint ptr %lq to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %lq, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %cmp = icmp eq i8 %10, -1
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %11 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %12, i32 0, i32 5, i32 8, i32 1
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %15 = and i32 %14, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.i.not = icmp eq i32 %15, 0
  br i1 %tobool.i.i.not, label %if.end32, label %lor.rhs.do.end_crit_edge, !prof !70

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 296, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end32:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %call33 = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %cmd)
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call33, %if.end32 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_update_smps(ptr noundef %mvm, ptr noundef %vif, i32 noundef %req_type, i32 noundef %smps_request) local_unnamed_addr #0 align 64 {
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
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !71

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 320, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %nvm_data.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %1 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nvm_data.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.cond.false.i_crit_edge, label %land.lhs.true.i

if.end.cond.false.i_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.end
  %valid_rx_ant.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %2, i32 0, i32 21
  %3 = ptrtoint ptr %valid_rx_ant.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %valid_rx_ant.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not.i = icmp eq i8 %4, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %5 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw.i, align 8
  %valid_rx_ant3.i = getelementptr inbounds %struct.iwl_fw, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %valid_rx_ant3.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %valid_rx_ant3.i, align 1
  %and.i = and i8 %8, %4
  br label %iwl_mvm_get_valid_rx_ant.exit

cond.false.i:                                     ; preds = %land.lhs.true.i.cond.false.i_crit_edge, %if.end.cond.false.i_crit_edge
  %fw8.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %9 = ptrtoint ptr %fw8.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw8.i, align 8
  %valid_rx_ant9.i = getelementptr inbounds %struct.iwl_fw, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %valid_rx_ant9.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %valid_rx_ant9.i, align 1
  br label %iwl_mvm_get_valid_rx_ant.exit

iwl_mvm_get_valid_rx_ant.exit:                    ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i8 [ %and.i, %cond.true.i ], [ %12, %cond.false.i ]
  %and.i60 = and i8 %cond.i, 1
  %and3.i = lshr i8 %cond.i, 1
  %and3.lobit.i = and i8 %and3.i, 1
  %add.i = add nuw nsw i8 %and3.lobit.i, %and.i60
  %and10.i = lshr i8 %cond.i, 2
  %and10.lobit.i = and i8 %and10.i, 1
  %add16.i = add nuw nsw i8 %add.i, %and10.lobit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %add16.i)
  %cmp26 = icmp eq i8 %add16.i, 1
  br i1 %cmp26, label %iwl_mvm_get_valid_rx_ant.exit.cleanup_crit_edge, label %if.end29

iwl_mvm_get_valid_rx_ant.exit.cleanup_crit_edge:  ; preds = %iwl_mvm_get_valid_rx_ant.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %iwl_mvm_get_valid_rx_ant.exit
  %13 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp30.not = icmp eq i32 %14, 2
  br i1 %cmp30.not, label %if.end33, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %arrayidx = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 37, i32 %req_type
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %smps_request, ptr %arrayidx, align 4
  %arrayidx38 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 4, i32 5
  %16 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx38, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %17, label %if.end33.for.inc_crit_edge [
    i32 2, label %if.end33.for.end_crit_edge
    i32 3, label %if.then47
  ]

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end33.for.inc_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then47:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.then47, %if.end33.for.inc_crit_edge
  %smps_mode.1 = phi i32 [ 3, %if.then47 ], [ 0, %if.end33.for.inc_crit_edge ]
  %arrayidx38.1 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 4, i32 6
  %19 = ptrtoint ptr %arrayidx38.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx38.1, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %20, label %for.inc.for.inc.1_crit_edge [
    i32 2, label %for.inc.for.end_crit_edge
    i32 3, label %if.then47.1
  ]

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then47.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then47.1, %for.inc.for.inc.1_crit_edge
  %smps_mode.1.1 = phi i32 [ 3, %if.then47.1 ], [ %smps_mode.1, %for.inc.for.inc.1_crit_edge ]
  %arrayidx38.2 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 5
  %22 = ptrtoint ptr %arrayidx38.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx38.2, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %23, label %for.inc.1.for.inc.2_crit_edge [
    i32 2, label %for.inc.1.for.end_crit_edge
    i32 3, label %if.then47.2
  ]

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then47.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then47.2, %for.inc.1.for.inc.2_crit_edge
  %smps_mode.1.2 = phi i32 [ 3, %if.then47.2 ], [ %smps_mode.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %arrayidx38.3 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %arrayidx38.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx38.3, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %26, label %for.inc.2.for.inc.3_crit_edge [
    i32 2, label %for.inc.2.for.end_crit_edge
    i32 3, label %if.then47.3
  ]

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then47.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then47.3, %for.inc.2.for.inc.3_crit_edge
  %smps_mode.1.3 = phi i32 [ 3, %if.then47.3 ], [ %smps_mode.1.2, %for.inc.2.for.inc.3_crit_edge ]
  br label %for.end

for.end:                                          ; preds = %for.inc.3, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %if.end33.for.end_crit_edge
  %smps_mode.2 = phi i32 [ %17, %if.end33.for.end_crit_edge ], [ %20, %for.inc.for.end_crit_edge ], [ %23, %for.inc.1.for.end_crit_edge ], [ %26, %for.inc.2.for.end_crit_edge ], [ %smps_mode.1.3, %for.inc.3 ]
  tail call void @ieee80211_request_smps(ptr noundef %vif, i32 noundef %smps_mode.2) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end29.cleanup_crit_edge, %iwl_mvm_get_valid_rx_ant.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_request_smps(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_request_statistics(ptr noundef %mvm, i1 noundef zeroext %clear) local_unnamed_addr #0 align 64 {
entry:
  %scmd = alloca %struct.iwl_statistics_cmd, align 4
  %cmd = alloca %struct.iwl_host_cmd, align 4
  %stats_wait = alloca %struct.iwl_notification_wait, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scmd) #10
  %cond = select i1 %clear, i32 16777216, i32 0
  %0 = ptrtoint ptr %scmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %cond, ptr %scmd, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd) #10
  %1 = getelementptr inbounds i8, ptr %cmd, i32 32
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !72
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %scmd, ptr %cmd, align 4
  %arrayinit.cur.ptr = getelementptr inbounds ptr, ptr %cmd, i32 1
  %resp_pkt = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 1
  %_rx_page_addr = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 2
  %_rx_page_order = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 3
  %id = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 5
  %4 = call ptr @memset(ptr %arrayinit.cur.ptr, i32 0, i32 20)
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 156, ptr %id, align 4
  %len = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 4, ptr %len, align 4
  %arrayinit.start4 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %arrayinit.start4 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %arrayinit.start4, align 2
  %arrayinit.end5 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 7
  %8 = ptrtoint ptr %arrayinit.end5 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %arrayinit.end5, align 4
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %9 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw, align 8
  %call = call zeroext i8 @iwl_fw_lookup_notif_ver(ptr noundef %10, i8 noundef zeroext 0, i8 noundef zeroext -99, i8 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %call)
  %cmp = icmp ult i8 %call, 15
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %flags2 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 4
  %11 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %flags2, align 4
  %call13 = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end, label %if.then.cleanup31_crit_edge

if.then.cleanup31_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup31

if.end:                                           ; preds = %if.then
  %12 = ptrtoint ptr %resp_pkt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resp_pkt, align 4
  call void @iwl_mvm_handle_rx_statistics(ptr noundef %mvm, ptr noundef %13) #10
  %14 = ptrtoint ptr %_rx_page_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %_rx_page_addr, align 4
  %16 = ptrtoint ptr %_rx_page_order to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %_rx_page_order, align 4
  call void @free_pages(i32 noundef %15, i32 noundef %17) #10
  br i1 %clear, label %if.end.if.then29_crit_edge, label %if.end.cleanup31_crit_edge

if.end.cleanup31_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup31

if.end.if.then29_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %stats_wait) #10
  %18 = call ptr @memset(ptr %stats_wait, i32 255, i32 32)
  %notif_wait = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 23
  call void @iwl_init_notification_wait(ptr noundef %notif_wait, ptr noundef nonnull %stats_wait, ptr noundef nonnull @iwl_mvm_request_statistics.stats_complete, i32 noundef 1, ptr noundef nonnull @iwl_wait_stats_complete, ptr noundef null) #10
  %call17 = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @iwl_remove_notification(ptr noundef %notif_wait, ptr noundef nonnull %stats_wait) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %stats_wait) #10
  br label %cleanup31

cleanup:                                          ; preds = %if.else
  %call23 = call i32 @iwl_wait_notification(ptr noundef %notif_wait, ptr noundef nonnull %stats_wait, i32 noundef 20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %stats_wait) #10
  %19 = and i1 %tobool24.not, %clear
  br i1 %19, label %cleanup.if.then29_crit_edge, label %cleanup.cleanup31_crit_edge

cleanup.cleanup31_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup31

cleanup.if.then29_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

if.then29:                                        ; preds = %cleanup.if.then29_crit_edge, %if.end.if.then29_crit_edge
  %radio_stats.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 25
  %20 = ptrtoint ptr %radio_stats.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %radio_stats.i, align 8
  %accu_radio_stats.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 26
  %22 = ptrtoint ptr %accu_radio_stats.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %accu_radio_stats.i, align 8
  %add.i = add i64 %23, %21
  store i64 %add.i, ptr %accu_radio_stats.i, align 8
  %tx_time.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 25, i32 1
  %24 = ptrtoint ptr %tx_time.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %tx_time.i, align 8
  %tx_time4.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 26, i32 1
  %26 = ptrtoint ptr %tx_time4.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %tx_time4.i, align 8
  %add5.i = add i64 %27, %25
  store i64 %add5.i, ptr %tx_time4.i, align 8
  %on_time_rf.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 25, i32 2
  %28 = ptrtoint ptr %on_time_rf.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %on_time_rf.i, align 8
  %on_time_rf8.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 26, i32 2
  %30 = ptrtoint ptr %on_time_rf8.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %on_time_rf8.i, align 8
  %add9.i = add i64 %31, %29
  store i64 %add9.i, ptr %on_time_rf8.i, align 8
  %on_time_scan.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 25, i32 3
  %32 = ptrtoint ptr %on_time_scan.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %on_time_scan.i, align 8
  %on_time_scan12.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 26, i32 3
  %34 = ptrtoint ptr %on_time_scan12.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %on_time_scan12.i, align 8
  %add13.i = add i64 %35, %33
  store i64 %add13.i, ptr %on_time_scan12.i, align 8
  br label %cleanup31

cleanup31:                                        ; preds = %if.then29, %cleanup.cleanup31_crit_edge, %cleanup.thread, %if.end.cleanup31_crit_edge, %if.then.cleanup31_crit_edge
  %retval.1 = phi i32 [ %call23, %cleanup.cleanup31_crit_edge ], [ %call13, %if.then.cleanup31_crit_edge ], [ 0, %if.then29 ], [ 0, %if.end.cleanup31_crit_edge ], [ %call17, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scmd) #10
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_fw_lookup_notif_ver(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_handle_rx_statistics(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_init_notification_wait(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @iwl_wait_stats_complete(ptr nocapture noundef readnone %notif_wait, ptr nocapture noundef readonly %pkt, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hdr = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hdr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -99, i8 %1)
  %cmp.not = icmp eq i8 %1, -99
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !70

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 346, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_remove_notification(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_wait_notification(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @iwl_mvm_accu_radio_stats(ptr nocapture noundef %mvm) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %radio_stats = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 25
  %0 = ptrtoint ptr %radio_stats to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %radio_stats, align 8
  %accu_radio_stats = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 26
  %2 = ptrtoint ptr %accu_radio_stats to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %accu_radio_stats, align 8
  %add = add i64 %3, %1
  store i64 %add, ptr %accu_radio_stats, align 8
  %tx_time = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 25, i32 1
  %4 = ptrtoint ptr %tx_time to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %tx_time, align 8
  %tx_time4 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 26, i32 1
  %6 = ptrtoint ptr %tx_time4 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %tx_time4, align 8
  %add5 = add i64 %7, %5
  store i64 %add5, ptr %tx_time4, align 8
  %on_time_rf = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 25, i32 2
  %8 = ptrtoint ptr %on_time_rf to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %on_time_rf, align 8
  %on_time_rf8 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 26, i32 2
  %10 = ptrtoint ptr %on_time_rf8 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %on_time_rf8, align 8
  %add9 = add i64 %11, %9
  store i64 %add9, ptr %on_time_rf8, align 8
  %on_time_scan = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 25, i32 3
  %12 = ptrtoint ptr %on_time_scan to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %on_time_scan, align 8
  %on_time_scan12 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 26, i32 3
  %14 = ptrtoint ptr %on_time_scan12 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %on_time_scan12, align 8
  %add13 = add i64 %15, %13
  store i64 %add13, ptr %on_time_scan12, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @iwl_mvm_rx_diversity_allowed(ptr noundef %mvm, ptr noundef %ctxt) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca %struct.iwl_mvm_diversity_iter_data, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #10
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -4261412865, ptr %data, align 8, !annotation !72
  store ptr %ctxt, ptr %data, align 8
  %result = getelementptr inbounds %struct.iwl_mvm_diversity_iter_data, ptr %data, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !71

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 448, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mvm_mod_params, ptr @iwlmvm_mod_params, i32 0, i32 1) to i32))
  %2 = load i32, ptr getelementptr inbounds (%struct.iwl_mvm_mod_params, ptr @iwlmvm_mod_params, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp25.not = icmp eq i32 %2, 1
  br i1 %cmp25.not, label %if.end27, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %nvm_data.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %3 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nvm_data.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end27.cond.false.i_crit_edge, label %land.lhs.true.i

if.end27.cond.false.i_crit_edge:                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.end27
  %valid_rx_ant.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %4, i32 0, i32 21
  %5 = ptrtoint ptr %valid_rx_ant.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %valid_rx_ant.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not.i = icmp eq i8 %6, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %7 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw.i, align 8
  %valid_rx_ant3.i = getelementptr inbounds %struct.iwl_fw, ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %valid_rx_ant3.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %valid_rx_ant3.i, align 1
  %and.i = and i8 %10, %6
  br label %iwl_mvm_get_valid_rx_ant.exit

cond.false.i:                                     ; preds = %land.lhs.true.i.cond.false.i_crit_edge, %if.end27.cond.false.i_crit_edge
  %fw8.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %11 = ptrtoint ptr %fw8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw8.i, align 8
  %valid_rx_ant9.i = getelementptr inbounds %struct.iwl_fw, ptr %12, i32 0, i32 16
  %13 = ptrtoint ptr %valid_rx_ant9.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %valid_rx_ant9.i, align 1
  br label %iwl_mvm_get_valid_rx_ant.exit

iwl_mvm_get_valid_rx_ant.exit:                    ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i8 [ %and.i, %cond.true.i ], [ %14, %cond.false.i ]
  %and.i43 = and i8 %cond.i, 1
  %and3.i = lshr i8 %cond.i, 1
  %and3.lobit.i = and i8 %and3.i, 1
  %add.i = add nuw nsw i8 %and3.lobit.i, %and.i43
  %and10.i = lshr i8 %cond.i, 2
  %and10.lobit.i = and i8 %and10.i, 1
  %add16.i = add nuw nsw i8 %add.i, %and10.lobit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %add16.i)
  %cmp30 = icmp eq i8 %add16.i, 1
  br i1 %cmp30, label %iwl_mvm_get_valid_rx_ant.exit.cleanup_crit_edge, label %if.end33

iwl_mvm_get_valid_rx_ant.exit.cleanup_crit_edge:  ; preds = %iwl_mvm_get_valid_rx_ant.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %iwl_mvm_get_valid_rx_ant.exit
  %cfg = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 3
  %15 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg, align 4
  %rx_with_siso_diversity = getelementptr inbounds %struct.iwl_cfg, ptr %16, i32 0, i32 21
  %17 = ptrtoint ptr %rx_with_siso_diversity to i32
  call void @__asan_loadN_noabort(i32 %17, i32 3)
  %bf.load = load i24, ptr %rx_with_siso_diversity, align 4
  %tobool34.not = icmp sgt i24 %bf.load, -1
  br i1 %tobool34.not, label %if.end36, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %19, i32 noundef 0, ptr noundef nonnull @iwl_mvm_diversity_iter, ptr noundef nonnull %data) #10
  %20 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %result, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool38 = icmp ne i8 %21, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end33.cleanup_crit_edge, %iwl_mvm_get_valid_rx_ant.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool38, %if.end36 ], [ false, %if.end.cleanup_crit_edge ], [ false, %iwl_mvm_get_valid_rx_ant.exit.cleanup_crit_edge ], [ false, %if.end33.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #10
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_active_interfaces_atomic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_diversity_iter(ptr nocapture noundef %_data, ptr nocapture noundef readnone %mac, ptr nocapture noundef readonly %vif) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_ctxt = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 40
  %0 = ptrtoint ptr %phy_ctxt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_ctxt, align 8
  %2 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_data, align 4
  %cmp.not = icmp eq ptr %1, %3
  br i1 %cmp.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 4, i32 5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = and i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %switch = icmp eq i32 %6, 2
  br i1 %switch, label %for.body.preheader.if.then6_crit_edge, label %for.cond

for.body.preheader.if.then6_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

for.cond:                                         ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 4, i32 6
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.1, align 4
  %9 = and i32 %8, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %switch.1 = icmp eq i32 %9, 2
  br i1 %switch.1, label %for.cond.if.then6_crit_edge, label %for.cond.1

for.cond.if.then6_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 5
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.2, align 4
  %12 = and i32 %11, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %switch.2 = icmp eq i32 %12, 2
  br i1 %switch.2, label %for.cond.1.if.then6_crit_edge, label %for.cond.2

for.cond.1.if.then6_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.3, align 4
  %15 = and i32 %14, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %switch.3 = icmp eq i32 %15, 2
  br i1 %switch.3, label %for.cond.2.if.then6_crit_edge, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.2.if.then6_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.then6:                                         ; preds = %for.cond.2.if.then6_crit_edge, %for.cond.1.if.then6_crit_edge, %for.cond.if.then6_crit_edge, %for.body.preheader.if.then6_crit_edge
  %result = getelementptr inbounds %struct.iwl_mvm_diversity_iter_data, ptr %_data, i32 0, i32 1
  %16 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %result, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %for.cond.2.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_send_low_latency_cmd(ptr noundef %mvm, i1 noundef zeroext %low_latency, i16 noundef zeroext %mac_id) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.iwl_host_cmd, align 4
  %cmd = alloca %struct.iwl_mac_low_latency_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #10
  %0 = getelementptr inbounds %struct.iwl_mac_low_latency_cmd, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.iwl_mac_low_latency_cmd, ptr %cmd, i32 0, i32 2
  %conv = zext i16 %mac_id to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %cmd, align 4
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %0, align 4
  %5 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw, align 8
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %6, i32 0, i32 5, i32 8, i32 1
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i.i, align 4
  %9 = and i32 %8, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not = icmp eq i32 %9, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %low_latency, label %if.then2, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %0, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %1, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i) #10
  %12 = getelementptr inbounds i8, ptr %cmd.i, i32 32
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 65535, ptr %12, align 4, !annotation !72
  %14 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cmd, ptr %cmd.i, align 4
  %arrayinit.cur.ptr.i = getelementptr inbounds ptr, ptr %cmd.i, i32 1
  %id4.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 5
  %15 = call ptr @memset(ptr %arrayinit.cur.ptr.i, i32 0, i32 20)
  %16 = ptrtoint ptr %id4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 771, ptr %id4.i, align 4
  %len5.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6
  %17 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 8, ptr %len5.i, align 4
  %arrayinit.start7.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %arrayinit.start7.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %arrayinit.start7.i, align 2
  %call.i = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %cmd.i) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %do.end

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %20, i32 noundef 0, ptr noundef nonnull @.str.10) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_update_low_latency(ptr noundef %mvm, ptr nocapture noundef %vif, i1 noundef zeroext %low_latency, i32 noundef %cause) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i.i = alloca %struct.iwl_host_cmd, align 4
  %cmd.i = alloca %struct.iwl_mac_low_latency_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
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
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !71

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 497, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %low_latency_actual.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 11
  %1 = ptrtoint ptr %low_latency_actual.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i = load i8, ptr %low_latency_actual.i, align 8
  %2 = and i8 %bf.load.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i = icmp ne i8 %2, 0
  %3 = trunc i32 %cause to i8
  br i1 %low_latency, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bf.value66.i = shl i8 %3, 2
  %bf.load.masked.i = and i8 %bf.load.i, -4
  %bf.shl.i = or i8 %bf.load.masked.i, %bf.value66.i
  %bf.clear.i = and i8 %bf.load.i, 3
  %bf.set.i = or i8 %bf.shl.i, %bf.clear.i
  br label %if.end.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = xor i8 %3, -1
  %conv763.i = shl i8 %4, 2
  %bf.lshr56465.i = or i8 %conv763.i, 3
  %bf.set12.i = and i8 %bf.load.i, %bf.lshr56465.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %bf.set12.sink.i = phi i8 [ %bf.set12.i, %if.else.i ], [ %bf.set.i, %if.then.i ]
  %5 = and i8 %bf.set12.sink.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool18.not.i = icmp eq i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %cause)
  %cmp.not.i = icmp eq i32 %cause, 16
  %or.cond.i = or i1 %cmp.not.i, %tobool18.not.i
  br i1 %or.cond.i, label %if.end21.i, label %if.end.i.iwl_mvm_vif_set_low_latency.exit_crit_edge

if.end.i.iwl_mvm_vif_set_low_latency.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_vif_set_low_latency.exit

if.end21.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %brmerge.demorgan.i = and i1 %cmp.not.i, %low_latency
  %bf.load29.lobit.i = lshr i8 %bf.set12.sink.i, 7
  %6 = and i8 %bf.set12.sink.i, 60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool42.i = icmp ne i8 %6, 0
  %conv47.i = zext i1 %tobool42.i to i8
  %new_state.0.i = select i1 %brmerge.demorgan.i, i8 %bf.load29.lobit.i, i8 %conv47.i
  %bf.value50.i = shl nuw nsw i8 %new_state.0.i, 1
  %bf.clear52.i = and i8 %bf.set12.sink.i, -3
  %bf.set53.i = or i8 %bf.value50.i, %bf.clear52.i
  br label %iwl_mvm_vif_set_low_latency.exit

iwl_mvm_vif_set_low_latency.exit:                 ; preds = %if.end21.i, %if.end.i.iwl_mvm_vif_set_low_latency.exit_crit_edge
  %storemerge = phi i8 [ %bf.set53.i, %if.end21.i ], [ %bf.set12.sink.i, %if.end.i.iwl_mvm_vif_set_low_latency.exit_crit_edge ]
  %7 = ptrtoint ptr %low_latency_actual.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %storemerge, ptr %low_latency_actual.i, align 8
  %8 = and i8 %storemerge, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.i59 = icmp ne i8 %8, 0
  %9 = xor i1 %tobool.i, %tobool.i59
  br i1 %9, label %if.end36, label %iwl_mvm_vif_set_low_latency.exit.cleanup_crit_edge

iwl_mvm_vif_set_low_latency.exit.cleanup_crit_edge: ; preds = %iwl_mvm_vif_set_low_latency.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36:                                         ; preds = %iwl_mvm_vif_set_low_latency.exit
  %id = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i) #10
  %12 = getelementptr inbounds %struct.iwl_mac_low_latency_cmd, ptr %cmd.i, i32 0, i32 1
  %13 = getelementptr inbounds %struct.iwl_mac_low_latency_cmd, ptr %cmd.i, i32 0, i32 2
  %conv.i = zext i16 %11 to i32
  %14 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #10
  %15 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %cmd.i, align 4
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %12, align 4
  %17 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %18, i32 0, i32 5, i32 8, i32 1
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %21 = and i32 %20, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not.i = icmp eq i32 %21, 0
  br i1 %tobool.i.not.i, label %if.end36.iwl_mvm_send_low_latency_cmd.exit_crit_edge, label %if.end.i60

if.end36.iwl_mvm_send_low_latency_cmd.exit_crit_edge: ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_send_low_latency_cmd.exit

if.end.i60:                                       ; preds = %if.end36
  br i1 %tobool.i59, label %if.then2.i, label %if.end.i60.if.end5.i_crit_edge

if.end.i60.if.end5.i_crit_edge:                   ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then2.i:                                       ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %12, align 4
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %13, align 1
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.end.i60.if.end5.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i.i) #10
  %24 = getelementptr inbounds i8, ptr %cmd.i.i, i32 32
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 65535, ptr %24, align 4, !annotation !72
  %26 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %cmd.i, ptr %cmd.i.i, align 4
  %arrayinit.cur.ptr.i.i = getelementptr inbounds ptr, ptr %cmd.i.i, i32 1
  %id4.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i, i32 0, i32 5
  %27 = call ptr @memset(ptr %arrayinit.cur.ptr.i.i, i32 0, i32 20)
  %28 = ptrtoint ptr %id4.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 771, ptr %id4.i.i, align 4
  %len5.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %len5.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 8, ptr %len5.i.i, align 4
  %arrayinit.start7.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i, i32 0, i32 6, i32 1
  %30 = ptrtoint ptr %arrayinit.start7.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %arrayinit.start7.i.i, align 2
  %call.i.i = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %cmd.i.i) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool8.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool8.not.i, label %if.end5.i.iwl_mvm_send_low_latency_cmd.exit_crit_edge, label %do.end.i

if.end5.i.iwl_mvm_send_low_latency_cmd.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_send_low_latency_cmd.exit

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %32, i32 noundef 0, ptr noundef nonnull @.str.10) #10
  br label %iwl_mvm_send_low_latency_cmd.exit

iwl_mvm_send_low_latency_cmd.exit:                ; preds = %do.end.i, %if.end5.i.iwl_mvm_send_low_latency_cmd.exit_crit_edge, %if.end36.iwl_mvm_send_low_latency_cmd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #10
  %call38 = call i32 @iwl_mvm_update_quotas(ptr noundef %mvm, i1 noundef zeroext false, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %iwl_mvm_send_low_latency_cmd.exit.cleanup_crit_edge

iwl_mvm_send_low_latency_cmd.exit.cleanup_crit_edge: ; preds = %iwl_mvm_send_low_latency_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end41:                                         ; preds = %iwl_mvm_send_low_latency_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @iwl_mvm_bt_coex_vif_change(ptr noundef %mvm) #10
  %call42 = call i32 @iwl_mvm_power_update_mac(ptr noundef %mvm) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %iwl_mvm_send_low_latency_cmd.exit.cleanup_crit_edge, %iwl_mvm_vif_set_low_latency.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %if.end41 ], [ 0, %iwl_mvm_vif_set_low_latency.exit.cleanup_crit_edge ], [ %call38, %iwl_mvm_send_low_latency_cmd.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_update_quotas(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_bt_coex_vif_change(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_power_update_mac(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @iwl_mvm_low_latency(ptr nocapture noundef readonly %mvm) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca %struct.iwl_mvm_low_latency_iter, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %data) #10
  %0 = call ptr @memset(ptr %data, i32 0, i32 7)
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %2, i32 noundef 0, ptr noundef nonnull @iwl_mvm_ll_iter, ptr noundef nonnull %data) #10
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool = icmp ne i8 %4, 0
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %data) #10
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @iwl_mvm_ll_iter(ptr nocapture noundef writeonly %_data, ptr nocapture noundef readnone %mac, ptr nocapture noundef readonly %vif) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %low_latency_actual.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 11
  %0 = ptrtoint ptr %low_latency_actual.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %low_latency_actual.i, align 8
  %1 = and i8 %bf.load.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %_data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %_data, align 1
  %phy_ctxt = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 40
  %3 = ptrtoint ptr %phy_ctxt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy_ctxt, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %channel = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %channel, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %arrayidx = getelementptr %struct.iwl_mvm_low_latency_iter, ptr %_data, i32 0, i32 1, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @iwl_mvm_low_latency_band(ptr nocapture noundef readonly %mvm, i32 noundef %band) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca %struct.iwl_mvm_low_latency_iter, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %data) #10
  %0 = call ptr @memset(ptr %data, i32 0, i32 7)
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %2, i32 noundef 0, ptr noundef nonnull @iwl_mvm_ll_iter, ptr noundef nonnull %data) #10
  %arrayidx = getelementptr %struct.iwl_mvm_low_latency_iter, ptr %data, i32 0, i32 1, i32 %band
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool = icmp ne i8 %4, 0
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %data) #10
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iwl_mvm_get_bss_vif(ptr nocapture noundef readonly %mvm) local_unnamed_addr #0 align 64 {
entry:
  %bss_iter_data = alloca %struct.iwl_bss_iter_data, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bss_iter_data) #10
  %0 = ptrtoint ptr %bss_iter_data to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %bss_iter_data, align 8
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %2, i32 noundef 0, ptr noundef nonnull @iwl_mvm_bss_iface_iterator, ptr noundef nonnull %bss_iter_data) #10
  %error = getelementptr inbounds %struct.iwl_bss_iter_data, ptr %bss_iter_data, i32 0, i32 1
  %3 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %error, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %6, i32 noundef 0, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %bss_iter_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bss_iter_data, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %8, %if.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bss_iter_data) #10
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @iwl_mvm_bss_iface_iterator(ptr nocapture noundef %_data, ptr nocapture noundef readnone %mac, ptr noundef %vif) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %p2p = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %2 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %p2p, align 2, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_data, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %error = getelementptr inbounds %struct.iwl_bss_iter_data, ptr %_data, i32 0, i32 1
  %6 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %error, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %vif, ptr %_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iwl_mvm_get_vif_by_macid(ptr noundef %mvm, i32 noundef %macid) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca %struct.iwl_bss_find_iter_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #10
  %0 = getelementptr inbounds %struct.iwl_bss_find_iter_data, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %data, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %macid, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !71

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 620, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %5, i32 noundef 0, ptr noundef nonnull @iwl_mvm_bss_find_iface_iterator, ptr noundef nonnull %data) #10
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #10
  ret ptr %7
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @iwl_mvm_bss_find_iface_iterator(ptr nocapture noundef %_data, ptr nocapture noundef readnone %mac, ptr noundef %vif) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %id = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 4
  %conv = zext i16 %1 to i32
  %macid = getelementptr inbounds %struct.iwl_bss_find_iter_data, ptr %_data, i32 0, i32 1
  %2 = ptrtoint ptr %macid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %macid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp = icmp eq i32 %3, %conv
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %vif, ptr %_data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @iwl_mvm_is_vif_assoc(ptr nocapture noundef readonly %mvm) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca %struct.iwl_sta_iter_data, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #10
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %data, align 1
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %2, i32 noundef 0, ptr noundef nonnull @iwl_mvm_sta_iface_iterator, ptr noundef nonnull %data) #10
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool = icmp ne i8 %4, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #10
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @iwl_mvm_sta_iface_iterator(ptr nocapture noundef writeonly %_data, ptr nocapture noundef readnone %mac, ptr nocapture noundef readonly %vif) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %assoc = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 10
  %2 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %assoc, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %_data to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %_data, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_get_wd_timeout(ptr nocapture noundef readonly %mvm, ptr noundef readonly %vif, i1 noundef zeroext %tdls, i1 noundef zeroext %cmd_q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %cmd_q, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %0 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans, align 4
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans_cfg, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %7, %cond.false ], [ 2500, %entry.cond.end_crit_edge ]
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %8 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw, align 8
  %arrayidx = getelementptr %struct.iwl_fw, ptr %9, i32 0, i32 20, i32 3, i32 9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %if.then, label %do.end12

if.then:                                          ; preds = %cond.end
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %9, i32 0, i32 5, i32 8, i32 1
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i.i, align 4
  %14 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not = icmp eq i32 %14, 0
  %tobool6.not = icmp eq ptr %vif, null
  %or.cond = or i1 %tobool6.not, %tobool.i.not
  br i1 %or.cond, label %if.then.if.end_crit_edge, label %land.lhs.true7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %if.then
  %15 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp = icmp eq i32 %16, 3
  br i1 %cmp, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %if.then.if.end_crit_edge
  br label %cleanup

do.end12:                                         ; preds = %cond.end
  %data = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %11, i32 0, i32 10
  br i1 %tdls, label %if.then17, label %if.end19

if.then17:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  %tdls18 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %11, i32 2
  %17 = ptrtoint ptr %tdls18 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %tdls18, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  br label %cleanup

if.end19:                                         ; preds = %do.end12
  br i1 %cmd_q, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %data, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  br label %cleanup

if.end22:                                         ; preds = %if.end19
  %tobool23.not = icmp eq ptr %vif, null
  br i1 %tobool23.not, label %do.end41, label %if.end57, !prof !71

do.end41:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 689, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end57:                                         ; preds = %if.end22
  %23 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vif, align 8
  %p2p.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %25 = ptrtoint ptr %p2p.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %p2p.i, align 2, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %ieee80211_vif_type_p2p.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end57
  %27 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %24, label %if.then.i.i.do.end77_crit_edge [
    i32 2, label %if.then.i.i.sw.bb61_crit_edge
    i32 3, label %if.then.i.i.sw.bb62_crit_edge
    i32 1, label %if.then.i.i.sw.bb_crit_edge
    i32 8, label %if.then.i.i.sw.bb61_crit_edge119
    i32 9, label %if.then.i.i.sw.bb62_crit_edge120
    i32 10, label %if.then.i.i.sw.bb63_crit_edge
    i32 6, label %if.then.i.i.cleanup_crit_edge
  ]

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.i.sw.bb63_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb63

if.then.i.i.sw.bb62_crit_edge120:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb62

if.then.i.i.sw.bb61_crit_edge119:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb61

if.then.i.i.sw.bb_crit_edge:                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then.i.i.sw.bb62_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb62

if.then.i.i.sw.bb61_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb61

if.then.i.i.do.end77_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end77

ieee80211_vif_type_p2p.exit:                      ; preds = %if.end57
  %28 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %24, label %ieee80211_vif_type_p2p.exit.do.end77_crit_edge [
    i32 1, label %ieee80211_vif_type_p2p.exit.sw.bb_crit_edge
    i32 2, label %sw.bb59
    i32 3, label %sw.bb60
    i32 8, label %ieee80211_vif_type_p2p.exit.sw.bb61_crit_edge
    i32 9, label %ieee80211_vif_type_p2p.exit.sw.bb62_crit_edge
    i32 10, label %ieee80211_vif_type_p2p.exit.sw.bb63_crit_edge
    i32 6, label %ieee80211_vif_type_p2p.exit.cleanup_crit_edge
  ]

ieee80211_vif_type_p2p.exit.cleanup_crit_edge:    ; preds = %ieee80211_vif_type_p2p.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

ieee80211_vif_type_p2p.exit.sw.bb63_crit_edge:    ; preds = %ieee80211_vif_type_p2p.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb63

ieee80211_vif_type_p2p.exit.sw.bb62_crit_edge:    ; preds = %ieee80211_vif_type_p2p.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb62

ieee80211_vif_type_p2p.exit.sw.bb61_crit_edge:    ; preds = %ieee80211_vif_type_p2p.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb61

ieee80211_vif_type_p2p.exit.sw.bb_crit_edge:      ; preds = %ieee80211_vif_type_p2p.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

ieee80211_vif_type_p2p.exit.do.end77_crit_edge:   ; preds = %ieee80211_vif_type_p2p.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end77

sw.bb:                                            ; preds = %ieee80211_vif_type_p2p.exit.sw.bb_crit_edge, %if.then.i.i.sw.bb_crit_edge
  %ibss = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %11, i32 1, i32 9, i32 1
  %29 = ptrtoint ptr %ibss to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %ibss, align 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  br label %cleanup

sw.bb59:                                          ; preds = %ieee80211_vif_type_p2p.exit
  call void @__sanitizer_cov_trace_pc() #12
  %bss = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %11, i32 1, i32 1
  %32 = ptrtoint ptr %bss to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %bss, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  br label %cleanup

sw.bb60:                                          ; preds = %ieee80211_vif_type_p2p.exit
  call void @__sanitizer_cov_trace_pc() #12
  %softap = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %11, i32 1, i32 2
  %35 = ptrtoint ptr %softap to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %softap, align 1
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  br label %cleanup

sw.bb61:                                          ; preds = %ieee80211_vif_type_p2p.exit.sw.bb61_crit_edge, %if.then.i.i.sw.bb61_crit_edge, %if.then.i.i.sw.bb61_crit_edge119
  %p2p_client = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %11, i32 1, i32 4
  %38 = ptrtoint ptr %p2p_client to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %p2p_client, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  br label %cleanup

sw.bb62:                                          ; preds = %ieee80211_vif_type_p2p.exit.sw.bb62_crit_edge, %if.then.i.i.sw.bb62_crit_edge, %if.then.i.i.sw.bb62_crit_edge120
  %p2p_go = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %11, i32 1, i32 3
  %41 = ptrtoint ptr %p2p_go to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %p2p_go, align 1
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  br label %cleanup

sw.bb63:                                          ; preds = %ieee80211_vif_type_p2p.exit.sw.bb63_crit_edge, %if.then.i.i.sw.bb63_crit_edge
  %p2p_device = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %11, i32 1, i32 7
  %44 = ptrtoint ptr %p2p_device to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %p2p_device, align 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  br label %cleanup

do.end77:                                         ; preds = %ieee80211_vif_type_p2p.exit.do.end77_crit_edge, %if.then.i.i.do.end77_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 708, i32 noundef 9, ptr noundef null) #10
  %trans91 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %47 = ptrtoint ptr %trans91 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %trans91, align 4
  %trans_cfg92 = getelementptr inbounds %struct.iwl_trans, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %trans_cfg92 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %trans_cfg92, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end77, %sw.bb63, %sw.bb62, %sw.bb61, %sw.bb60, %sw.bb59, %sw.bb, %ieee80211_vif_type_p2p.exit.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge, %do.end41, %if.then21, %if.then17, %if.end, %land.lhs.true7.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %if.then17 ], [ %22, %if.then21 ], [ %cond, %do.end41 ], [ %54, %do.end77 ], [ %46, %sw.bb63 ], [ %43, %sw.bb62 ], [ %40, %sw.bb61 ], [ %37, %sw.bb60 ], [ %34, %sw.bb59 ], [ %31, %sw.bb ], [ %cond, %if.end ], [ 0, %land.lhs.true7.cleanup_crit_edge ], [ %cond, %ieee80211_vif_type_p2p.exit.cleanup_crit_edge ], [ %cond, %if.then.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_connection_loss(ptr noundef %mvm, ptr noundef %vif, ptr noundef %errmsg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fwrt = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40
  %call = tail call ptr @ieee80211_vif_to_wdev(ptr noundef %vif) #10
  %0 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwrt, align 8
  %internal_ini_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 32, i32 10
  %2 = ptrtoint ptr %internal_ini_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %internal_ini_cfg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i.i, label %iwl_trans_dbg_ini_valid.exit.i, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

iwl_trans_dbg_ini_valid.exit.i:                   ; preds = %entry
  %external_ini_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 32, i32 11
  %4 = ptrtoint ptr %external_ini_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %external_ini_cfg.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.i.not.i = icmp eq i32 %5, 0
  br i1 %cmp2.i.not.i, label %if.end.i, label %iwl_trans_dbg_ini_valid.exit.i.out_crit_edge

iwl_trans_dbg_ini_valid.exit.i.out_crit_edge:     ; preds = %iwl_trans_dbg_ini_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.i:                                         ; preds = %iwl_trans_dbg_ini_valid.exit.i
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 1
  %6 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw.i, align 4
  %arrayidx.i = getelementptr %struct.iwl_fw, ptr %7, i32 0, i32 20, i32 3, i32 6
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i.out_crit_edge, label %if.end4.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end4.i:                                        ; preds = %if.end.i
  %trig_dis_ms.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %trig_dis_ms.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %trig_dis_ms.i.i, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #10
  %conv.i.i = zext i16 %12 to i32
  %mul.i.i = mul nuw nsw i32 %conv.i.i, 1000
  %tobool.not.i.i = icmp eq ptr %call, null
  br i1 %tobool.not.i.i, label %if.end4.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end4.i.if.end.i.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end4.i
  %vif_type.i.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %vif_type.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %vif_type.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i.i = icmp eq i32 %14, 0
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %iwl_fw_dbg_trigger_vif_match.exit.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

iwl_fw_dbg_trigger_vif_match.exit.i.i:            ; preds = %land.lhs.true.i.i
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  %iftype.i.i.i = getelementptr inbounds %struct.wireless_dev, ptr %call, i32 0, i32 1
  %16 = ptrtoint ptr %iftype.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iftype.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp1.i.i.i = icmp eq i32 %17, %15
  br i1 %cmp1.i.i.i, label %iwl_fw_dbg_trigger_vif_match.exit.i.i.if.end.i.i_crit_edge, label %iwl_fw_dbg_trigger_vif_match.exit.i.i.out_crit_edge

iwl_fw_dbg_trigger_vif_match.exit.i.i.out_crit_edge: ; preds = %iwl_fw_dbg_trigger_vif_match.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

iwl_fw_dbg_trigger_vif_match.exit.i.i.if.end.i.i_crit_edge: ; preds = %iwl_fw_dbg_trigger_vif_match.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %iwl_fw_dbg_trigger_vif_match.exit.i.i.if.end.i.i_crit_edge, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end4.i.if.end.i.i_crit_edge
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %9, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #10
  %call3.i.i.i.i = tail call i32 @__usecs_to_jiffies(i32 noundef %mul.i.i) #10
  %arrayidx.i.i.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 12, i32 3, i32 %20
  %21 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %24 = add i32 %22, %call3.i.i.i.i
  %sub.i.i.i = sub i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i16.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i16.i.i, label %do.end.i.i, label %land.lhs.true.i.i.i.if.end7.i.i_crit_edge

land.lhs.true.i.i.i.if.end7.i.i_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 2
  %25 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i.i, align 8
  %27 = ptrtoint ptr %9 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %9, align 1
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %26, ptr noundef nonnull @.str.17, i32 noundef %28) #10
  br label %out

if.end7.i.i:                                      ; preds = %land.lhs.true.i.i.i.if.end7.i.i_crit_edge, %if.end.i.i.if.end7.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %30 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx.i.i.i, align 4
  %mode.i.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %9, i32 0, i32 4
  %31 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mode.i.i.i, align 1
  %33 = and i8 %32, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i17.i.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i17.i.i, label %if.end7.i.i.out_crit_edge, label %land.rhs.i.i.i

if.end7.i.i.out_crit_edge:                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.rhs.i.i.i:                                   ; preds = %if.end7.i.i
  %conf.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 12, i32 2
  %34 = ptrtoint ptr %conf.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %conf.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %35)
  %cmp.i18.i.i = icmp eq i8 %35, -1
  br i1 %cmp.i18.i.i, label %land.rhs.i.i.i.if.end_crit_edge, label %iwl_fw_dbg_trigger_check_stop.exit.i

land.rhs.i.i.i.if.end_crit_edge:                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

iwl_fw_dbg_trigger_check_stop.exit.i:             ; preds = %land.rhs.i.i.i
  %conv1.i.i.i = zext i8 %35 to i32
  %shl.i.i.i = shl nuw i32 1, %conv1.i.i.i
  %stop_conf_ids.i.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %9, i32 0, i32 2
  %36 = ptrtoint ptr %stop_conf_ids.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %stop_conf_ids.i.i.i, align 1
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #10
  %and6.i.i.i = and i32 %38, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.i.i.not.i = icmp eq i32 %and6.i.i.i, 0
  br i1 %tobool7.i.i.not.i, label %iwl_fw_dbg_trigger_check_stop.exit.i.out_crit_edge, label %iwl_fw_dbg_trigger_check_stop.exit.i.if.end_crit_edge

iwl_fw_dbg_trigger_check_stop.exit.i.if.end_crit_edge: ; preds = %iwl_fw_dbg_trigger_check_stop.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

iwl_fw_dbg_trigger_check_stop.exit.i.out_crit_edge: ; preds = %iwl_fw_dbg_trigger_check_stop.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %iwl_fw_dbg_trigger_check_stop.exit.i.if.end_crit_edge, %land.rhs.i.i.i.if.end_crit_edge
  %data = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %9, i32 0, i32 10
  %stop_connection_loss = getelementptr inbounds %struct.iwl_fw_dbg_trigger_mlme, ptr %data, i32 0, i32 6
  %39 = ptrtoint ptr %stop_connection_loss to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %stop_connection_loss, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool5.not = icmp eq i8 %40, 0
  br i1 %tobool5.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %dec = add i8 %40, -1
  %41 = ptrtoint ptr %stop_connection_loss to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %dec, ptr %stop_connection_loss, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %tobool8.not = icmp eq i8 %dec, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %call12 = tail call i32 (ptr, ptr, ptr, ...) @iwl_fw_dbg_collect_trig(ptr noundef %fwrt, ptr noundef nonnull %9, ptr noundef nonnull @.str.12, ptr noundef %errmsg) #10
  br label %out

out:                                              ; preds = %if.end10, %land.lhs.true.out_crit_edge, %iwl_fw_dbg_trigger_check_stop.exit.i.out_crit_edge, %if.end7.i.i.out_crit_edge, %do.end.i.i, %iwl_fw_dbg_trigger_vif_match.exit.i.i.out_crit_edge, %if.end.i.out_crit_edge, %iwl_trans_dbg_ini_valid.exit.i.out_crit_edge, %entry.out_crit_edge
  tail call void @ieee80211_connection_loss(ptr noundef %vif) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_vif_to_wdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_fw_dbg_collect_trig(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_connection_loss(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_event_frame_timeout_callback(ptr noundef %mvm, ptr noundef %vif, ptr noundef %sta, i16 noundef zeroext %tid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fwrt = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40
  %call = tail call ptr @ieee80211_vif_to_wdev(ptr noundef %vif) #10
  %0 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwrt, align 8
  %internal_ini_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 32, i32 10
  %2 = ptrtoint ptr %internal_ini_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %internal_ini_cfg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i.i, label %iwl_trans_dbg_ini_valid.exit.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

iwl_trans_dbg_ini_valid.exit.i:                   ; preds = %entry
  %external_ini_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 32, i32 11
  %4 = ptrtoint ptr %external_ini_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %external_ini_cfg.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.i.not.i = icmp eq i32 %5, 0
  br i1 %cmp2.i.not.i, label %if.end.i, label %iwl_trans_dbg_ini_valid.exit.i.cleanup_crit_edge

iwl_trans_dbg_ini_valid.exit.i.cleanup_crit_edge: ; preds = %iwl_trans_dbg_ini_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %iwl_trans_dbg_ini_valid.exit.i
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 1
  %6 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw.i, align 4
  %arrayidx.i = getelementptr %struct.iwl_fw, ptr %7, i32 0, i32 20, i32 3, i32 11
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %trig_dis_ms.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %trig_dis_ms.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %trig_dis_ms.i.i, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #10
  %conv.i.i = zext i16 %12 to i32
  %mul.i.i = mul nuw nsw i32 %conv.i.i, 1000
  %tobool.not.i.i = icmp eq ptr %call, null
  br i1 %tobool.not.i.i, label %if.end4.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end4.i.if.end.i.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end4.i
  %vif_type.i.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %vif_type.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %vif_type.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i.i = icmp eq i32 %14, 0
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %iwl_fw_dbg_trigger_vif_match.exit.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

iwl_fw_dbg_trigger_vif_match.exit.i.i:            ; preds = %land.lhs.true.i.i
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  %iftype.i.i.i = getelementptr inbounds %struct.wireless_dev, ptr %call, i32 0, i32 1
  %16 = ptrtoint ptr %iftype.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iftype.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp1.i.i.i = icmp eq i32 %17, %15
  br i1 %cmp1.i.i.i, label %iwl_fw_dbg_trigger_vif_match.exit.i.i.if.end.i.i_crit_edge, label %iwl_fw_dbg_trigger_vif_match.exit.i.i.cleanup_crit_edge

iwl_fw_dbg_trigger_vif_match.exit.i.i.cleanup_crit_edge: ; preds = %iwl_fw_dbg_trigger_vif_match.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

iwl_fw_dbg_trigger_vif_match.exit.i.i.if.end.i.i_crit_edge: ; preds = %iwl_fw_dbg_trigger_vif_match.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %iwl_fw_dbg_trigger_vif_match.exit.i.i.if.end.i.i_crit_edge, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end4.i.if.end.i.i_crit_edge
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %9, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #10
  %call3.i.i.i.i = tail call i32 @__usecs_to_jiffies(i32 noundef %mul.i.i) #10
  %arrayidx.i.i.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 12, i32 3, i32 %20
  %21 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %24 = add i32 %22, %call3.i.i.i.i
  %sub.i.i.i = sub i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i16.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i16.i.i, label %do.end.i.i, label %land.lhs.true.i.i.i.if.end7.i.i_crit_edge

land.lhs.true.i.i.i.if.end7.i.i_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 2
  %25 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i.i, align 8
  %27 = ptrtoint ptr %9 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %9, align 1
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %26, ptr noundef nonnull @.str.17, i32 noundef %28) #10
  br label %cleanup

if.end7.i.i:                                      ; preds = %land.lhs.true.i.i.i.if.end7.i.i_crit_edge, %if.end.i.i.if.end7.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %30 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx.i.i.i, align 4
  %mode.i.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %9, i32 0, i32 4
  %31 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mode.i.i.i, align 1
  %33 = and i8 %32, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i17.i.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i17.i.i, label %if.end7.i.i.cleanup_crit_edge, label %land.rhs.i.i.i

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs.i.i.i:                                   ; preds = %if.end7.i.i
  %conf.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 12, i32 2
  %34 = ptrtoint ptr %conf.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %conf.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %35)
  %cmp.i18.i.i = icmp eq i8 %35, -1
  br i1 %cmp.i18.i.i, label %land.rhs.i.i.i.if.end_crit_edge, label %iwl_fw_dbg_trigger_check_stop.exit.i

land.rhs.i.i.i.if.end_crit_edge:                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

iwl_fw_dbg_trigger_check_stop.exit.i:             ; preds = %land.rhs.i.i.i
  %conv1.i.i.i = zext i8 %35 to i32
  %shl.i.i.i = shl nuw i32 1, %conv1.i.i.i
  %stop_conf_ids.i.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %9, i32 0, i32 2
  %36 = ptrtoint ptr %stop_conf_ids.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %stop_conf_ids.i.i.i, align 1
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #10
  %and6.i.i.i = and i32 %38, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.i.i.not.i = icmp eq i32 %and6.i.i.i, 0
  br i1 %tobool7.i.i.not.i, label %iwl_fw_dbg_trigger_check_stop.exit.i.cleanup_crit_edge, label %iwl_fw_dbg_trigger_check_stop.exit.i.if.end_crit_edge

iwl_fw_dbg_trigger_check_stop.exit.i.if.end_crit_edge: ; preds = %iwl_fw_dbg_trigger_check_stop.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

iwl_fw_dbg_trigger_check_stop.exit.i.cleanup_crit_edge: ; preds = %iwl_fw_dbg_trigger_check_stop.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %iwl_fw_dbg_trigger_check_stop.exit.i.if.end_crit_edge, %land.rhs.i.i.i.if.end_crit_edge
  %frame_timeout = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %9, i32 1, i32 3
  %39 = ptrtoint ptr %frame_timeout to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %frame_timeout, align 1
  %41 = tail call i16 @llvm.bswap.i16(i16 %40)
  %conv = zext i16 %41 to i32
  %conv5 = zext i16 %tid to i32
  %shl = shl nuw i32 1, %conv5
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %call12 = tail call i32 (ptr, ptr, ptr, ...) @iwl_fw_dbg_collect_trig(ptr noundef %fwrt, ptr noundef nonnull %9, ptr noundef nonnull @.str.13, ptr noundef %addr, i32 noundef %conv5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %iwl_fw_dbg_trigger_check_stop.exit.i.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %do.end.i.i, %iwl_fw_dbg_trigger_vif_match.exit.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %iwl_trans_dbg_ini_valid.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @iwl_mvm_tcm_load_percentage(i32 noundef %airtime, i32 noundef %elapsed) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %elapsed)
  %tobool.not = icmp eq i32 %elapsed, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mul = mul i32 %airtime, 100
  %div = udiv i32 %mul, %elapsed
  %div1 = udiv i32 %div, 1000
  %conv = trunc i32 %div1 to i8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i8 [ %conv, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_recalc_tcm(ptr noundef %mvm) local_unnamed_addr #0 align 64 {
entry:
  %band_airtime.i = alloca [6 x i32], align 4
  %band.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %tcm = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133
  %uapsd_nonagg_ts = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 4
  %1 = ptrtoint ptr %uapsd_nonagg_ts to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %uapsd_nonagg_ts, align 8
  %add = sub i32 500, %0
  %sub = add i32 %add, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  %lock = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %paused = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 5
  %3 = ptrtoint ptr %paused to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %paused, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %ts4 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 2
  %5 = ptrtoint ptr %ts4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ts4, align 8
  %add5 = sub i32 50, %0
  %sub6 = add i32 %add5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub6)
  %cmp7 = icmp slt i32 %sub6, 0
  br i1 %cmp7, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %7 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %8, i32 0, i32 5, i32 8, i32 2
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %11 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.i.not = icmp eq i32 %11, 0
  br i1 %tobool.i.i.not, label %land.lhs.true.if.end20_crit_edge, label %if.then14

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %mutex = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %call15 = tail call i32 @iwl_mvm_request_statistics(ptr noundef %mvm, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %land.lhs.true.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %handle_uapsd.1.off0 = phi i1 [ %tobool16.not, %if.then14 ], [ true, %land.lhs.true.if.end20_crit_edge ], [ false, %if.end.if.end20_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %12 = ptrtoint ptr %paused to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %paused, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool25.not = icmp eq i8 %13, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %if.end20.if.end45_crit_edge

if.end20.if.end45_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

land.lhs.true26:                                  ; preds = %if.end20
  %14 = ptrtoint ptr %ts4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ts4, align 8
  %sub30 = add i32 %add5, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub30)
  %cmp31 = icmp slt i32 %sub30, 0
  br i1 %cmp31, label %if.then32, label %land.lhs.true26.if.end45_crit_edge

land.lhs.true26.if.end45_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then32:                                        ; preds = %land.lhs.true26
  %sub.i = sub i32 %0, %15
  %call.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub.i) #10
  %16 = ptrtoint ptr %uapsd_nonagg_ts to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %uapsd_nonagg_ts, align 8
  %sub3.i = sub i32 %0, %17
  %call4.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub3.i) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %band_airtime.i) #10
  %18 = call ptr @memset(ptr %band_airtime.i, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %band.i) #10
  %19 = call ptr @memset(ptr %band.i, i32 0, i32 16)
  %ll_ts.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 3
  %20 = ptrtoint ptr %ll_ts.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ll_ts.i, align 4
  %add.i = sub i32 1000, %0
  %sub6.i = add i32 %add.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub6.i)
  %cmp.i = icmp slt i32 %sub6.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then32.if.end.i_crit_edge

if.then32.if.end.i_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %ll_ts.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %0, ptr %ll_ts.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then32.if.end.i_crit_edge
  br i1 %handle_uapsd.1.off0, label %if.then11.i, label %if.end.i.if.end14.i_crit_edge

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %uapsd_nonagg_ts to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %0, ptr %uapsd_nonagg_ts, align 8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %if.end.i.if.end14.i_crit_edge
  %result.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 7
  %24 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call.i, ptr %result.i, align 8
  %hw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %25 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw.i, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %26, i32 noundef 0, ptr noundef nonnull @iwl_mvm_tcm_iterator, ptr noundef nonnull %band.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i, 0
  %fw.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %mul213.i.i = mul i32 %call4.i, 100
  br label %for.body.i

for.body.i:                                       ; preds = %if.end95.i.for.body.i_crit_edge, %if.end14.i
  %low_latency.0.off0280.i = phi i1 [ false, %if.end14.i ], [ %tobool82.i, %if.end95.i.for.body.i_crit_edge ]
  %mac.0277.i = phi i32 [ 0, %if.end14.i ], [ %inc101.i, %if.end95.i.for.body.i_crit_edge ]
  %total_airtime.0276.i = phi i32 [ 0, %if.end14.i ], [ %add22.i, %if.end95.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 %mac.0277.i
  %rx.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 %mac.0277.i, i32 1
  %airtime19.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 %mac.0277.i, i32 1, i32 1
  %27 = ptrtoint ptr %airtime19.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %airtime19.i, align 4
  %airtime20.i = getelementptr inbounds %struct.anon.147, ptr %arrayidx.i, i32 0, i32 1
  %29 = ptrtoint ptr %airtime20.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %airtime20.i, align 8
  %add21.i = add i32 %30, %28
  %add22.i = add i32 %add21.i, %total_airtime.0276.i
  %arrayidx23.i = getelementptr [4 x i32], ptr %band.i, i32 0, i32 %mac.0277.i
  %31 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx23.i, align 4
  %arrayidx24.i = getelementptr [6 x i32], ptr %band_airtime.i, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx24.i, align 4
  %add25.i = add i32 %34, %add21.i
  store i32 %add25.i, ptr %arrayidx24.i, align 4
  br i1 %tobool.not.i.i.i, label %for.body.i.iwl_mvm_tcm_load.exit.i_crit_edge, label %iwl_mvm_tcm_load_percentage.exit.i.i

for.body.i.iwl_mvm_tcm_load.exit.i_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_tcm_load.exit.i

iwl_mvm_tcm_load_percentage.exit.i.i:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i.i.i = mul i32 %add21.i, 100
  %div.i.i.i = udiv i32 %mul.i.i.i, %call.i
  %div1.i.i.i = udiv i32 %div.i.i.i, 1000
  %conv.i.i.i = trunc i32 %div1.i.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %conv.i.i.i)
  %cmp.i.i = icmp ugt i8 %conv.i.i.i, 50
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %conv.i.i.i)
  %cmp3.i.i = icmp ugt i8 %conv.i.i.i, 10
  %..i.i = zext i1 %cmp3.i.i to i32
  %spec.select.i.i = select i1 %cmp.i.i, i32 2, i32 %..i.i
  br label %iwl_mvm_tcm_load.exit.i

iwl_mvm_tcm_load.exit.i:                          ; preds = %iwl_mvm_tcm_load_percentage.exit.i.i, %for.body.i.iwl_mvm_tcm_load.exit.i_crit_edge
  %35 = phi i32 [ 0, %for.body.i.iwl_mvm_tcm_load.exit.i_crit_edge ], [ %spec.select.i.i, %iwl_mvm_tcm_load_percentage.exit.i.i ]
  %arrayidx30.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 7, i32 2, i32 %mac.0277.i
  %36 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx30.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp31.i = icmp ne i32 %35, %37
  %arrayidx34.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 7, i32 6, i32 %mac.0277.i
  %frombool35.i = zext i1 %cmp31.i to i8
  %38 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool35.i, ptr %arrayidx34.i, align 1
  %39 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %35, ptr %arrayidx30.i, align 4
  %arrayidx43.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 7, i32 1, i32 %mac.0277.i
  %40 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add21.i, ptr %arrayidx43.i, align 4
  %41 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx.i, align 4
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i, align 4
  %add53.i = add i32 %44, %42
  %arrayidx48.1.i = getelementptr [4 x i32], ptr %rx.i, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx48.1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx48.1.i, align 4
  %arrayidx51.1.i = getelementptr [4 x i32], ptr %arrayidx.i, i32 0, i32 1
  %47 = ptrtoint ptr %arrayidx51.1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx51.1.i, align 4
  %add52.1.i = add i32 %add53.i, %46
  %add53.1.i = add i32 %add52.1.i, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %add53.1.i)
  %cmp54.i = icmp ugt i32 %add53.1.i, 100
  br i1 %cmp54.i, label %if.then55.i, label %if.else.i

if.then55.i:                                      ; preds = %iwl_mvm_tcm_load.exit.i
  %arrayidx59.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 7, i32 5, i32 %mac.0277.i
  %49 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %arrayidx59.i, align 1
  br i1 %cmp.i, label %if.then55.i.if.then69.i_crit_edge, label %if.then55.i.if.end74.i_crit_edge

if.then55.i.if.end74.i_crit_edge:                 ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74.i

if.then55.i.if.then69.i_crit_edge:                ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69.i

if.else.i:                                        ; preds = %iwl_mvm_tcm_load.exit.i
  br i1 %cmp.i, label %if.then61.i, label %if.else.i.if.end74.i_crit_edge

if.else.i.if.end74.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74.i

if.then61.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx65.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 7, i32 5, i32 %mac.0277.i
  %50 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %arrayidx65.i, align 1
  br label %if.then69.i

if.then69.i:                                      ; preds = %if.then61.i, %if.then55.i.if.then69.i_crit_edge
  %51 = call ptr @memset(ptr %rx.i, i32 0, i32 16)
  %52 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 16)
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then69.i, %if.else.i.if.end74.i_crit_edge, %if.then55.i.if.end74.i_crit_edge
  %arrayidx78.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 7, i32 5, i32 %mac.0277.i
  %53 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx78.i, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool79.not.i = icmp eq i8 %54, 0
  %55 = zext i8 %54 to i32
  %conv81.i = zext i1 %low_latency.0.off0280.i to i32
  %or.i = or i32 %55, %conv81.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool82.i = icmp ne i32 %or.i, 0
  %56 = and i1 %handle_uapsd.1.off0, %tobool79.not.i
  br i1 %56, label %if.then91.i, label %if.end74.i.if.end92.i_crit_edge

if.end74.i.if.end92.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92.i

if.then91.i:                                      ; preds = %if.end74.i
  %uapsd_nonagg_detect.i.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 %mac.0277.i, i32 2
  %57 = ptrtoint ptr %uapsd_nonagg_detect.i.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %uapsd_nonagg_detect.i.i, align 8
  %rate5.i.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 %mac.0277.i, i32 2, i32 1
  %59 = ptrtoint ptr %rate5.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rate5.i.i, align 4
  %shr.i.i.i = lshr i32 %60, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %60)
  %tobool.not.i.i = icmp ult i32 %60, 65536
  br i1 %tobool.not.i.i, label %if.then91.i.if.end92.i_crit_edge, label %lor.lhs.false.i.i

if.then91.i.if.end92.i_crit_edge:                 ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92.i

lor.lhs.false.i.i:                                ; preds = %if.then91.i
  %opened_rx_ba_sessions.i.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 %mac.0277.i, i32 3
  %61 = ptrtoint ptr %opened_rx_ba_sessions.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %opened_rx_ba_sessions.i.i, align 8, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool9.not.i.i = icmp eq i8 %62, 0
  br i1 %tobool9.not.i.i, label %lor.lhs.false10.i.i, label %lor.lhs.false.i.i.if.end92.i_crit_edge

lor.lhs.false.i.i.if.end92.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92.i

lor.lhs.false10.i.i:                              ; preds = %lor.lhs.false.i.i
  %detected.i.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 %mac.0277.i, i32 2, i32 2
  %63 = ptrtoint ptr %detected.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %detected.i.i, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool15.not.i.i = icmp eq i8 %64, 0
  br i1 %tobool15.not.i.i, label %if.end.i.i, label %lor.lhs.false10.i.i.if.end92.i_crit_edge

lor.lhs.false10.i.i.if.end92.i_crit_edge:         ; preds = %lor.lhs.false10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92.i

if.end.i.i:                                       ; preds = %lor.lhs.false10.i.i
  %65 = ptrtoint ptr %fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fw.i.i.i, align 8
  %arrayidx.i.i.i.i.i = getelementptr %struct.iwl_fw, ptr %66, i32 0, i32 5, i32 8, i32 2
  %67 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %arrayidx.i.i.i.i.i, align 4
  %69 = and i32 %68, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.i.i.not.i.i = icmp eq i32 %69, 0
  %mul211.i.i = shl i64 %58, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul211.i.i)
  %cmp414.i.i = icmp ult i64 %mul211.i.i, 4294967296
  br i1 %tobool.i.i.not.i.i, label %if.else412.i.i, label %if.else184.i.i

if.else184.i.i:                                   ; preds = %if.end.i.i
  br i1 %cmp414.i.i, label %if.then190.i.i, label %if.else196.i.i, !prof !70

if.then190.i.i:                                   ; preds = %if.else184.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv191.i.i = trunc i64 %mul211.i.i to i32
  %div194.i.i = udiv i32 %conv191.i.i, %call4.i
  %conv195.i.i = zext i32 %div194.i.i to i64
  br label %if.end200.i.i

if.else196.i.i:                                   ; preds = %if.else184.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %70 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call4.i, i64 %mul211.i.i) #13, !srcloc !74
  %asmresult1.i.i.i = extractvalue { i64, i64 } %70, 1
  br label %if.end200.i.i

if.end200.i.i:                                    ; preds = %if.else196.i.i, %if.then190.i.i
  %tpt.0.i.i = phi i64 [ %conv195.i.i, %if.then190.i.i ], [ %asmresult1.i.i.i, %if.else196.i.i ]
  %div204.i.i = mul nuw nsw i32 %shr.i.i.i, 220
  %conv205.i.i = zext i32 %div204.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %tpt.0.i.i, i64 %conv205.i.i)
  %cmp206.i.i = icmp ult i64 %tpt.0.i.i, %conv205.i.i
  br i1 %cmp206.i.i, label %if.end200.i.i.if.end92.i_crit_edge, label %if.end200.i.i.if.end439.i.i_crit_edge

if.end200.i.i.if.end439.i.i_crit_edge:            ; preds = %if.end200.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end439.i.i

if.end200.i.i.if.end92.i_crit_edge:               ; preds = %if.end200.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92.i

if.else412.i.i:                                   ; preds = %if.end.i.i
  br i1 %cmp414.i.i, label %if.then422.i.i, label %if.else428.i.i, !prof !70

if.then422.i.i:                                   ; preds = %if.else412.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv423.i.i = trunc i64 %mul211.i.i to i32
  %div426.i.i = udiv i32 %conv423.i.i, %mul213.i.i
  %conv427.i.i = zext i32 %div426.i.i to i64
  br label %if.end432.i.i

if.else428.i.i:                                   ; preds = %if.else412.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %71 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul213.i.i, i64 %mul211.i.i) #13, !srcloc !74
  %asmresult1.i645.i.i = extractvalue { i64, i64 } %71, 1
  br label %if.end432.i.i

if.end432.i.i:                                    ; preds = %if.else428.i.i, %if.then422.i.i
  %tpt.1.i.i = phi i64 [ %conv427.i.i, %if.then422.i.i ], [ %asmresult1.i645.i.i, %if.else428.i.i ]
  %conv434.i.i = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %tpt.1.i.i, i64 %conv434.i.i)
  %cmp435.i.i = icmp ult i64 %tpt.1.i.i, %conv434.i.i
  br i1 %cmp435.i.i, label %if.end432.i.i.if.end92.i_crit_edge, label %if.end432.i.i.if.end439.i.i_crit_edge

if.end432.i.i.if.end439.i.i_crit_edge:            ; preds = %if.end432.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end439.i.i

if.end432.i.i.if.end92.i_crit_edge:               ; preds = %if.end432.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92.i

if.end439.i.i:                                    ; preds = %if.end432.i.i.if.end439.i.i_crit_edge, %if.end200.i.i.if.end439.i.i_crit_edge
  %72 = call i32 @llvm.read_register.i32(metadata !59) #10
  %and.i.i.i.i.i.i.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %75, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !75
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i.i, label %if.end439.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end439.i.i.rcu_read_lock.exit.i.i_crit_edge:   ; preds = %if.end439.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end439.i.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i205.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i205.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #10
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end439.i.i.rcu_read_lock.exit.i.i_crit_edge
  %arrayidx441.i.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 94, i32 %mac.0277.i
  %76 = ptrtoint ptr %arrayidx441.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %arrayidx441.i.i, align 4
  %call443.i.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call443.i.i)
  %tobool444.not.i.i = icmp eq i32 %call443.i.i, 0
  br i1 %tobool444.not.i.i, label %land.lhs.true445.i.i, label %rcu_read_lock.exit.i.i.do.end453.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end453.i.i_crit_edge:   ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end453.i.i

land.lhs.true445.i.i:                             ; preds = %rcu_read_lock.exit.i.i
  %call446.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call446.i.i)
  %tobool447.not.i.i = icmp eq i32 %call446.i.i, 0
  br i1 %tobool447.not.i.i, label %land.lhs.true445.i.i.do.end453.i.i_crit_edge, label %land.lhs.true448.i.i

land.lhs.true445.i.i.do.end453.i.i_crit_edge:     ; preds = %land.lhs.true445.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end453.i.i

land.lhs.true448.i.i:                             ; preds = %land.lhs.true445.i.i
  %.b635.i.i = load i1, ptr @iwl_mvm_check_uapsd_agg_expected_tpt.__warned, align 1
  br i1 %.b635.i.i, label %land.lhs.true448.i.i.do.end453.i.i_crit_edge, label %if.then450.i.i

land.lhs.true448.i.i.do.end453.i.i_crit_edge:     ; preds = %land.lhs.true448.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end453.i.i

if.then450.i.i:                                   ; preds = %land.lhs.true448.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iwl_mvm_check_uapsd_agg_expected_tpt.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 908, ptr noundef nonnull @.str.18) #10
  br label %do.end453.i.i

do.end453.i.i:                                    ; preds = %if.then450.i.i, %land.lhs.true448.i.i.do.end453.i.i_crit_edge, %land.lhs.true445.i.i.do.end453.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end453.i.i_crit_edge
  %tobool455.not.i.i = icmp eq ptr %77, null
  br i1 %tobool455.not.i.i, label %do.end453.i.i.if.end457.i.i_crit_edge, label %if.then456.i.i

do.end453.i.i.if.end457.i.i_crit_edge:            ; preds = %do.end453.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end457.i.i

if.then456.i.i:                                   ; preds = %do.end453.i.i
  %drv_priv.i.i.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %77, i32 0, i32 19
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %79)
  %cmp.not.i646.i.i = icmp eq i32 %79, 2
  br i1 %cmp.not.i646.i.i, label %if.end.i.i.i, label %if.then456.i.i.if.end457.i.i_crit_edge

if.then456.i.i.if.end457.i.i_crit_edge:           ; preds = %if.then456.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end457.i.i

if.end.i.i.i:                                     ; preds = %if.then456.i.i
  %assoc.i.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %77, i32 0, i32 1, i32 10
  %80 = ptrtoint ptr %assoc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %assoc.i.i.i, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i647.i.i = icmp eq i8 %81, 0
  br i1 %tobool.not.i647.i.i, label %if.end.i.i.i.if.end457.i.i_crit_edge, label %if.end2.i.i.i

if.end.i.i.i.if.end457.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end457.i.i

if.end2.i.i.i:                                    ; preds = %if.end.i.i.i
  %uapsd.i.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %77, i32 1, i32 1, i32 26, i32 4
  %82 = ptrtoint ptr %uapsd.i.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %uapsd.i.i.i, align 8, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool3.not.i.i.i = icmp eq i8 %83, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i648.i.i, label %if.end2.i.i.i.if.end19.i.i.i_crit_edge

if.end2.i.i.i.if.end19.i.i.i_crit_edge:           ; preds = %if.end2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i.i.i

land.lhs.true.i648.i.i:                           ; preds = %if.end2.i.i.i
  %uapsd6.i.i.i = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i.i.i.i, i32 0, i32 18, i32 1, i32 5
  %84 = ptrtoint ptr %uapsd6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %uapsd6.i.i.i, align 2, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool7.not.i.i.i = icmp eq i8 %85, 0
  br i1 %tobool7.not.i.i.i, label %land.lhs.true8.i.i.i, label %land.lhs.true.i648.i.i.if.end19.i.i.i_crit_edge

land.lhs.true.i648.i.i.if.end19.i.i.i_crit_edge:  ; preds = %land.lhs.true.i648.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i.i.i

land.lhs.true8.i.i.i:                             ; preds = %land.lhs.true.i648.i.i
  %uapsd11.i.i.i = getelementptr %struct.ieee80211_vif, ptr %77, i32 1, i32 1, i32 32
  %86 = ptrtoint ptr %uapsd11.i.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %uapsd11.i.i.i, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool12.not.i.i.i = icmp eq i8 %87, 0
  br i1 %tobool12.not.i.i.i, label %land.lhs.true13.i.i.i, label %land.lhs.true8.i.i.i.if.end19.i.i.i_crit_edge

land.lhs.true8.i.i.i.if.end19.i.i.i_crit_edge:    ; preds = %land.lhs.true8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i.i.i

land.lhs.true13.i.i.i:                            ; preds = %land.lhs.true8.i.i.i
  %uapsd16.i.i.i = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i.i.i.i, i32 0, i32 18, i32 3, i32 5
  %88 = ptrtoint ptr %uapsd16.i.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %uapsd16.i.i.i, align 2, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool17.not.i.i.i = icmp eq i8 %89, 0
  br i1 %tobool17.not.i.i.i, label %land.lhs.true13.i.i.i.if.end457.i.i_crit_edge, label %land.lhs.true13.i.i.i.if.end19.i.i.i_crit_edge

land.lhs.true13.i.i.i.if.end19.i.i.i_crit_edge:   ; preds = %land.lhs.true13.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i.i.i

land.lhs.true13.i.i.i.if.end457.i.i_crit_edge:    ; preds = %land.lhs.true13.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end457.i.i

if.end19.i.i.i:                                   ; preds = %land.lhs.true13.i.i.i.if.end19.i.i.i_crit_edge, %land.lhs.true8.i.i.i.if.end19.i.i.i_crit_edge, %land.lhs.true.i648.i.i.if.end19.i.i.i_crit_edge, %if.end2.i.i.i.if.end19.i.i.i_crit_edge
  %id.i.i.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i.i.i.i, i32 0, i32 1
  %90 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %id.i.i.i, align 4
  %idxprom.i.i.i = zext i16 %91 to i32
  %detected.i.i.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 %idxprom.i.i.i, i32 2, i32 2
  %92 = ptrtoint ptr %detected.i.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %detected.i.i.i, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool21.not.i.i.i = icmp eq i8 %93, 0
  br i1 %tobool21.not.i.i.i, label %if.end23.i.i.i, label %if.end19.i.i.i.if.end457.i.i_crit_edge

if.end19.i.i.i.if.end457.i.i_crit_edge:           ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end457.i.i

if.end23.i.i.i:                                   ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %detected.i.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %detected.i.i.i, align 4
  %95 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mvm, align 8
  call void (ptr, ptr, ...) @__iwl_info(ptr noundef %96, ptr noundef nonnull @.str.21) #10
  %uapsd_nonagg_detected_wk.i.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %77, i32 1, i32 1, i32 62, i32 0, i32 5, i32 2, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %97 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %97, ptr noundef %uapsd_nonagg_detected_wk.i.i.i, i32 noundef 1500) #10
  br label %if.end457.i.i

if.end457.i.i:                                    ; preds = %if.end23.i.i.i, %if.end19.i.i.i.if.end457.i.i_crit_edge, %land.lhs.true13.i.i.i.if.end457.i.i_crit_edge, %if.end.i.i.i.if.end457.i.i_crit_edge, %if.then456.i.i.if.end457.i.i_crit_edge, %do.end453.i.i.if.end457.i.i_crit_edge
  %call.i649.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i649.i.i, label %if.end457.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i652.i.i

if.end457.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %if.end457.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i652.i.i:                           ; preds = %if.end457.i.i
  %call1.i650.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i650.i.i)
  %tobool.not.i651.i.i = icmp eq i32 %call1.i650.i.i, 0
  br i1 %tobool.not.i651.i.i, label %land.lhs.true.i652.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i654.i.i

land.lhs.true.i652.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i652.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i654.i.i:                          ; preds = %land.lhs.true.i652.i.i
  %.b4.i653.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i653.i.i, label %land.lhs.true2.i654.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i655.i.i

land.lhs.true2.i654.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i654.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i.i

if.then.i655.i.i:                                 ; preds = %land.lhs.true2.i654.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.22) #10
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i655.i.i, %land.lhs.true2.i654.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i652.i.i.rcu_read_unlock.exit.i.i_crit_edge, %if.end457.i.i.rcu_read_unlock.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !76
  %98 = call i32 @llvm.read_register.i32(metadata !59) #10
  %and.i.i.i.i.i656.i.i = and i32 %98, -16384
  %99 = inttoptr i32 %and.i.i.i.i.i656.i.i to ptr
  %preempt_count.i.i.i.i657.i.i = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %preempt_count.i.i.i.i657.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %preempt_count.i.i.i.i657.i.i, align 4
  %sub.i.i.i.i.i = add i32 %101, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i657.i.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %if.end92.i

if.end92.i:                                       ; preds = %rcu_read_unlock.exit.i.i, %if.end432.i.i.if.end92.i_crit_edge, %if.end200.i.i.if.end92.i_crit_edge, %lor.lhs.false10.i.i.if.end92.i_crit_edge, %lor.lhs.false.i.i.if.end92.i_crit_edge, %if.then91.i.if.end92.i_crit_edge, %if.end74.i.if.end92.i_crit_edge
  br i1 %handle_uapsd.1.off0, label %if.then94.i, label %if.end92.i.if.end95.i_crit_edge

if.end92.i.if.end95.i_crit_edge:                  ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95.i

if.then94.i:                                      ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #12
  %uapsd_nonagg_detect.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 %mac.0277.i, i32 2
  %102 = ptrtoint ptr %uapsd_nonagg_detect.i to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 0, ptr %uapsd_nonagg_detect.i, align 8
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.then94.i, %if.end92.i.if.end95.i_crit_edge
  %103 = ptrtoint ptr %airtime19.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %airtime19.i, align 4
  %104 = ptrtoint ptr %airtime20.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %airtime20.i, align 8
  %inc101.i = add nuw nsw i32 %mac.0277.i, 1
  %exitcond.not.i = icmp eq i32 %inc101.i, 4
  br i1 %exitcond.not.i, label %for.end102.i, label %if.end95.i.for.body.i_crit_edge

if.end95.i.for.body.i_crit_edge:                  ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end102.i:                                     ; preds = %if.end95.i
  br i1 %tobool.not.i.i.i, label %iwl_mvm_tcm_load.exit227.5.thread.i, label %iwl_mvm_tcm_load.exit227.5.i

iwl_mvm_tcm_load.exit227.5.thread.i:              ; preds = %for.end102.i
  %arrayidx115284.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 7, i32 3, i32 0
  %105 = call ptr @memset(ptr %arrayidx115284.i, i32 0, i32 28)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %band.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %band_airtime.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10
  %106 = ptrtoint ptr %ts4 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %0, ptr %ts4, align 8
  br i1 %tobool82.i, label %iwl_mvm_tcm_load.exit227.5.thread.i.if.then41_crit_edge, label %iwl_mvm_tcm_load.exit227.5.thread.i.if.end45_crit_edge

iwl_mvm_tcm_load.exit227.5.thread.i.if.end45_crit_edge: ; preds = %iwl_mvm_tcm_load.exit227.5.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

iwl_mvm_tcm_load.exit227.5.thread.i.if.then41_crit_edge: ; preds = %iwl_mvm_tcm_load.exit227.5.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then41

iwl_mvm_tcm_load.exit227.5.i:                     ; preds = %for.end102.i
  %mul.i.i207.i = mul i32 %add22.i, 100
  %div.i.i208.i = udiv i32 %mul.i.i207.i, %call.i
  %div1.i.i209.i = udiv i32 %div.i.i208.i, 1000
  %conv.i.i210.i = trunc i32 %div1.i.i209.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %conv.i.i210.i)
  %cmp.i211.i = icmp ugt i8 %conv.i.i210.i, 50
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %conv.i.i210.i)
  %cmp3.i212.i = icmp ugt i8 %conv.i.i210.i, 10
  %..i213.i = zext i1 %cmp3.i212.i to i32
  %spec.select.i214.i = select i1 %cmp.i211.i, i32 2, i32 %..i213.i
  %global_load.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 7, i32 4
  %107 = ptrtoint ptr %global_load.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %spec.select.i214.i, ptr %global_load.i, align 4
  %108 = ptrtoint ptr %band_airtime.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %band_airtime.i, align 4
  %mul.i.i218.i = mul i32 %109, 100
  %div.i.i219.i = udiv i32 %mul.i.i218.i, %call.i
  %div1.i.i220.i = udiv i32 %div.i.i219.i, 1000
  %conv.i.i221.i = trunc i32 %div1.i.i220.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %conv.i.i221.i)
  %cmp.i222.i = icmp ugt i8 %conv.i.i221.i, 50
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %conv.i.i221.i)
  %cmp3.i223.i = icmp ugt i8 %conv.i.i221.i, 10
  %..i224.i = zext i1 %cmp3.i223.i to i32
  %spec.select.i225.i = select i1 %cmp.i222.i, i32 2, i32 %..i224.i
  %arrayidx115.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 7, i32 3, i32 0
  %110 = ptrtoint ptr %arrayidx115.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %spec.select.i225.i, ptr %arrayidx115.i, align 4
  %arrayidx110.1.i = getelementptr inbounds [6 x i32], ptr %band_airtime.i, i32 0, i32 1
  %111 = ptrtoint ptr %arrayidx110.1.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx110.1.i, align 4
  %mul.i.i218.1.i = mul i32 %112, 100
  %div.i.i219.1.i = udiv i32 %mul.i.i218.1.i, %call.i
  %div1.i.i220.1.i = udiv i32 %div.i.i219.1.i, 1000
  %conv.i.i221.1.i = trunc i32 %div1.i.i220.1.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %conv.i.i221.1.i)
  %cmp.i222.1.i = icmp ugt i8 %conv.i.i221.1.i, 50
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %conv.i.i221.1.i)
  %cmp3.i223.1.i = icmp ugt i8 %conv.i.i221.1.i, 10
  %..i224.1.i = zext i1 %cmp3.i223.1.i to i32
  %spec.select.i225.1.i = select i1 %cmp.i222.1.i, i32 2, i32 %..i224.1.i
  %arrayidx115.1.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 7, i32 3, i32 1
  %113 = ptrtoint ptr %arrayidx115.1.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %spec.select.i225.1.i, ptr %arrayidx115.1.i, align 4
  %arrayidx110.2.i = getelementptr inbounds [6 x i32], ptr %band_airtime.i, i32 0, i32 2
  %114 = ptrtoint ptr %arrayidx110.2.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx110.2.i, align 4
  %mul.i.i218.2.i = mul i32 %115, 100
  %div.i.i219.2.i = udiv i32 %mul.i.i218.2.i, %call.i
  %div1.i.i220.2.i = udiv i32 %div.i.i219.2.i, 1000
  %conv.i.i221.2.i = trunc i32 %div1.i.i220.2.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %conv.i.i221.2.i)
  %cmp.i222.2.i = icmp ugt i8 %conv.i.i221.2.i, 50
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %conv.i.i221.2.i)
  %cmp3.i223.2.i = icmp ugt i8 %conv.i.i221.2.i, 10
  %..i224.2.i = zext i1 %cmp3.i223.2.i to i32
  %spec.select.i225.2.i = select i1 %cmp.i222.2.i, i32 2, i32 %..i224.2.i
  %arrayidx115.2.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 7, i32 3, i32 2
  %116 = ptrtoint ptr %arrayidx115.2.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %spec.select.i225.2.i, ptr %arrayidx115.2.i, align 4
  %arrayidx110.3.i = getelementptr inbounds [6 x i32], ptr %band_airtime.i, i32 0, i32 3
  %117 = ptrtoint ptr %arrayidx110.3.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx110.3.i, align 4
  %mul.i.i218.3.i = mul i32 %118, 100
  %div.i.i219.3.i = udiv i32 %mul.i.i218.3.i, %call.i
  %div1.i.i220.3.i = udiv i32 %div.i.i219.3.i, 1000
  %conv.i.i221.3.i = trunc i32 %div1.i.i220.3.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %conv.i.i221.3.i)
  %cmp.i222.3.i = icmp ugt i8 %conv.i.i221.3.i, 50
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %conv.i.i221.3.i)
  %cmp3.i223.3.i = icmp ugt i8 %conv.i.i221.3.i, 10
  %..i224.3.i = zext i1 %cmp3.i223.3.i to i32
  %spec.select.i225.3.i = select i1 %cmp.i222.3.i, i32 2, i32 %..i224.3.i
  %arrayidx115.3.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 7, i32 3, i32 3
  %119 = ptrtoint ptr %arrayidx115.3.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %spec.select.i225.3.i, ptr %arrayidx115.3.i, align 4
  %arrayidx110.4.i = getelementptr inbounds [6 x i32], ptr %band_airtime.i, i32 0, i32 4
  %120 = ptrtoint ptr %arrayidx110.4.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx110.4.i, align 4
  %mul.i.i218.4.i = mul i32 %121, 100
  %div.i.i219.4.i = udiv i32 %mul.i.i218.4.i, %call.i
  %div1.i.i220.4.i = udiv i32 %div.i.i219.4.i, 1000
  %conv.i.i221.4.i = trunc i32 %div1.i.i220.4.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %conv.i.i221.4.i)
  %cmp.i222.4.i = icmp ugt i8 %conv.i.i221.4.i, 50
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %conv.i.i221.4.i)
  %cmp3.i223.4.i = icmp ugt i8 %conv.i.i221.4.i, 10
  %..i224.4.i = zext i1 %cmp3.i223.4.i to i32
  %spec.select.i225.4.i = select i1 %cmp.i222.4.i, i32 2, i32 %..i224.4.i
  %arrayidx115.4.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 7, i32 3, i32 4
  %122 = ptrtoint ptr %arrayidx115.4.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %spec.select.i225.4.i, ptr %arrayidx115.4.i, align 4
  %arrayidx110.5.i = getelementptr inbounds [6 x i32], ptr %band_airtime.i, i32 0, i32 5
  %123 = ptrtoint ptr %arrayidx110.5.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx110.5.i, align 4
  %mul.i.i218.5.i = mul i32 %124, 100
  %div.i.i219.5.i = udiv i32 %mul.i.i218.5.i, %call.i
  %div1.i.i220.5.i = udiv i32 %div.i.i219.5.i, 1000
  %conv.i.i221.5.i = trunc i32 %div1.i.i220.5.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %conv.i.i221.5.i)
  %cmp.i222.5.i = icmp ugt i8 %conv.i.i221.5.i, 50
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %conv.i.i221.5.i)
  %cmp3.i223.5.i = icmp ugt i8 %conv.i.i221.5.i, 10
  %..i224.5.i = zext i1 %cmp3.i223.5.i to i32
  %spec.select.i225.5.i = select i1 %cmp.i222.5.i, i32 2, i32 %..i224.5.i
  %arrayidx115.5.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 7, i32 3, i32 5
  %125 = ptrtoint ptr %arrayidx115.5.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %spec.select.i225.5.i, ptr %arrayidx115.5.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %band.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %band_airtime.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10
  %126 = ptrtoint ptr %ts4 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %0, ptr %ts4, align 8
  %brmerge = select i1 %cmp3.i212.i, i1 true, i1 %tobool82.i
  %.mux = select i1 %cmp3.i212.i, i32 50, i32 1000
  br i1 %brmerge, label %iwl_mvm_tcm_load.exit227.5.i.if.then41_crit_edge, label %iwl_mvm_tcm_load.exit227.5.i.if.end45_crit_edge

iwl_mvm_tcm_load.exit227.5.i.if.end45_crit_edge:  ; preds = %iwl_mvm_tcm_load.exit227.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

iwl_mvm_tcm_load.exit227.5.i.if.then41_crit_edge: ; preds = %iwl_mvm_tcm_load.exit227.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then41

if.then41:                                        ; preds = %iwl_mvm_tcm_load.exit227.5.i.if.then41_crit_edge, %iwl_mvm_tcm_load.exit227.5.thread.i.if.then41_crit_edge
  %127 = phi i32 [ %.mux, %iwl_mvm_tcm_load.exit227.5.i.if.then41_crit_edge ], [ 1000, %iwl_mvm_tcm_load.exit227.5.thread.i.if.then41_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %128 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %128, ptr noundef %tcm, i32 noundef %127) #10
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %iwl_mvm_tcm_load.exit227.5.i.if.end45_crit_edge, %iwl_mvm_tcm_load.exit227.5.thread.i.if.end45_crit_edge, %land.lhs.true26.if.end45_crit_edge, %if.end20.if.end45_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #10
  %mutex.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  %hw.i74 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %129 = ptrtoint ptr %hw.i74 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %hw.i74, align 4
  call void @ieee80211_iterate_interfaces(ptr noundef %130, i32 noundef 2, ptr noundef nonnull @iwl_mvm_tcm_iter, ptr noundef %mvm) #10
  %fw.i75 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %131 = ptrtoint ptr %fw.i75 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %fw.i75, align 8
  %_capa.i.i = getelementptr inbounds %struct.iwl_fw, ptr %132, i32 0, i32 5, i32 8
  %133 = ptrtoint ptr %_capa.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %_capa.i.i, align 4
  %135 = and i32 %134, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool.i.not.i = icmp eq i32 %135, 0
  br i1 %tobool.i.not.i, label %if.end45.iwl_mvm_tcm_results.exit_crit_edge, label %if.then.i76

if.end45.iwl_mvm_tcm_results.exit_crit_edge:      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_tcm_results.exit

if.then.i76:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = call i32 @iwl_mvm_config_scan(ptr noundef %mvm) #10
  br label %iwl_mvm_tcm_results.exit

iwl_mvm_tcm_results.exit:                         ; preds = %if.then.i76, %if.end45.iwl_mvm_tcm_results.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i) #10
  br label %cleanup

cleanup:                                          ; preds = %iwl_mvm_tcm_results.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_tcm_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -5752
  tail call void @iwl_mvm_recalc_tcm(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_pause_tcm(ptr noundef %mvm, i1 noundef zeroext %with_cancel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %paused = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 5
  %0 = ptrtoint ptr %paused to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %paused, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br i1 %with_cancel, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tcm = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %tcm) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_resume_tcm(ptr noundef %mvm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %ts = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 2
  %1 = ptrtoint ptr %ts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %ts, align 8
  %2 = load volatile i32, ptr @jiffies, align 128
  %ll_ts = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 3
  %3 = ptrtoint ptr %ll_ts to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %ll_ts, align 4
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 0
  %arrayidx10 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 7, i32 5, i32 0
  %4 = call ptr @memset(ptr %arrayidx, i32 0, i32 40)
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx10, align 1, !range !69
  %arrayidx.1 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 1
  %arrayidx10.1 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 7, i32 5, i32 1
  %7 = call ptr @memset(ptr %arrayidx.1, i32 0, i32 40)
  %8 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx10.1, align 1, !range !69
  %arrayidx.2 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 2
  %arrayidx10.2 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 7, i32 5, i32 2
  %10 = call ptr @memset(ptr %arrayidx.2, i32 0, i32 40)
  %11 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx10.2, align 1, !range !69
  %arrayidx.3 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 3
  %arrayidx10.3 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 7, i32 5, i32 3
  %13 = call ptr @memset(ptr %arrayidx.3, i32 0, i32 40)
  %14 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx10.3, align 1, !range !69
  %tcm = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !77
  %paused = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 5
  %16 = ptrtoint ptr %paused to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %paused, align 4
  %global_load = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 7, i32 4
  %17 = ptrtoint ptr %global_load to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %global_load, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp17.not = icmp eq i32 %18, 0
  br i1 %cmp17.not, label %if.else, label %entry.if.end26.sink.split_crit_edge

entry.if.end26.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.3 = icmp ne i8 %15, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp ne i8 %6, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.1 = icmp ne i8 %9, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.2 = icmp ne i8 %12, 0
  %19 = select i1 %tobool.not.3, i1 true, i1 %tobool.not.2
  %20 = select i1 %19, i1 true, i1 %tobool.not.1
  %spec.select.3 = select i1 %20, i1 true, i1 %tobool.not
  br i1 %spec.select.3, label %if.else.if.end26.sink.split_crit_edge, label %if.else.if.end26_crit_edge

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.else.if.end26.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.sink.split

if.end26.sink.split:                              ; preds = %if.else.if.end26.sink.split_crit_edge, %entry.if.end26.sink.split_crit_edge
  %.sink48 = phi i32 [ 50, %entry.if.end26.sink.split_crit_edge ], [ 1000, %if.else.if.end26.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %21 = load ptr, ptr @system_wq, align 4
  %call.i.i45 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %tcm, i32 noundef %.sink48) #10
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %if.else.if.end26_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_tcm_add_vif(ptr nocapture noundef readnone %mvm, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %uapsd_nonagg_detected_wk = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 5, i32 2, i32 1
  tail call void @__init_work(ptr noundef %uapsd_nonagg_detected_wk, i32 noundef 0) #10
  %0 = ptrtoint ptr %uapsd_nonagg_detected_wk to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %uapsd_nonagg_detected_wk, align 8
  %lockdep_map = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 5, i32 3, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.14, ptr noundef nonnull @iwl_mvm_tcm_add_vif.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry8 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 5, i32 2, i32 3
  %1 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 5, i32 2, i32 5
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry8, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 5, i32 2, i32 7
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @iwl_mvm_tcm_uapsd_nonagg_detected_wk, ptr %func, align 4
  %timer = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 63
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.16, ptr noundef nonnull @iwl_mvm_tcm_add_vif.__key.15) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_tcm_uapsd_nonagg_detected_wk(ptr noundef %wk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wk, i32 -672
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %id = getelementptr i8, ptr %wk, i32 -668
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %id, align 4
  %idxprom = zext i16 %3 to i32
  %opened_rx_ba_sessions = getelementptr %struct.iwl_mvm, ptr %1, i32 0, i32 133, i32 6, i32 %idxprom, i32 3
  %4 = ptrtoint ptr %opened_rx_ba_sessions to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %opened_rx_ba_sessions, align 8, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr3 = getelementptr i8, ptr %wk, i32 -1520
  %uapsd_noagg_bssid_write_idx = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 134
  %6 = ptrtoint ptr %uapsd_noagg_bssid_write_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %uapsd_noagg_bssid_write_idx, align 8
  %idxprom5 = zext i8 %7 to i32
  %arrayidx6 = getelementptr %struct.iwl_mvm, ptr %1, i32 0, i32 136, i32 %idxprom5
  %bss_conf = getelementptr i8, ptr %wk, i32 -1512
  %8 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bss_conf, align 8
  %10 = call ptr @memcpy(ptr %arrayidx6, ptr %9, i32 6)
  %inc = add i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %inc)
  %cmp = icmp ugt i8 %inc, 19
  %spec.select = select i1 %cmp, i8 0, i8 %inc
  %11 = ptrtoint ptr %uapsd_noagg_bssid_write_idx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %spec.select, ptr %uapsd_noagg_bssid_write_idx, align 8
  tail call void @iwl_mvm_connection_loss(ptr noundef %1, ptr noundef %add.ptr3, ptr noundef nonnull @.str.23)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_tcm_rm_vif(ptr nocapture noundef readnone %mvm, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %uapsd_nonagg_detected_wk = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 5, i32 2, i32 1
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %uapsd_nonagg_detected_wk) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_get_systime(ptr nocapture noundef readonly %mvm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %0 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans, align 4
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %5)
  %cmp = icmp ugt i32 %5, 17
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cfg = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg, align 8
  %gp2_reg_addr = getelementptr inbounds %struct.iwl_cfg, ptr %7, i32 0, i32 34
  %8 = ptrtoint ptr %gp2_reg_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gp2_reg_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %spec.select = select i1 %tobool.not, i32 10494060, i32 %9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %reg_addr.0 = phi i32 [ 10494060, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %call = tail call i32 @iwl_read_prph(ptr noundef %1, i32 noundef %reg_addr.0) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read_prph(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_get_sync_time(ptr noundef %mvm, i32 noundef %clock_type, ptr nocapture noundef writeonly %gp2, ptr noundef writeonly %boottime, ptr noundef writeonly %realtime) local_unnamed_addr #0 align 64 {
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
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !71

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1153, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %ps_disabled24 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 145
  %1 = ptrtoint ptr %ps_disabled24 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ps_disabled24, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool25 = icmp ne i8 %2, 0
  %frombool = zext i1 %tobool25 to i8
  br i1 %tobool25, label %if.end.if.end30_crit_edge, label %if.then27

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %ps_disabled24 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %ps_disabled24, align 4
  %call29 = tail call i32 @iwl_mvm_power_update_device(ptr noundef %mvm) #10
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end.if.end30_crit_edge
  %trans.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %4 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trans.i, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trans_cfg.i, align 4
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %device_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %9)
  %cmp.i = icmp ugt i32 %9, 17
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end30.iwl_mvm_get_systime.exit_crit_edge

if.end30.iwl_mvm_get_systime.exit_crit_edge:      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwl_mvm_get_systime.exit

land.lhs.true.i:                                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg.i, align 8
  %gp2_reg_addr.i = getelementptr inbounds %struct.iwl_cfg, ptr %11, i32 0, i32 34
  %12 = ptrtoint ptr %gp2_reg_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gp2_reg_addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  %spec.select.i = select i1 %tobool.not.i, i32 10494060, i32 %13
  br label %iwl_mvm_get_systime.exit

iwl_mvm_get_systime.exit:                         ; preds = %land.lhs.true.i, %if.end30.iwl_mvm_get_systime.exit_crit_edge
  %reg_addr.0.i = phi i32 [ 10494060, %if.end30.iwl_mvm_get_systime.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %call.i62 = tail call i32 @iwl_read_prph(ptr noundef %5, i32 noundef %reg_addr.0.i) #10
  %14 = ptrtoint ptr %gp2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.i62, ptr %gp2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %clock_type)
  %cmp32 = icmp ne i32 %clock_type, 7
  %tobool33.not = icmp eq ptr %boottime, null
  %or.cond = or i1 %cmp32, %tobool33.not
  br i1 %or.cond, label %if.else, label %iwl_mvm_get_systime.exit.if.end42.sink.split_crit_edge

iwl_mvm_get_systime.exit.if.end42.sink.split_crit_edge: ; preds = %iwl_mvm_get_systime.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.sink.split

if.else:                                          ; preds = %iwl_mvm_get_systime.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock_type)
  %cmp36 = icmp ne i32 %clock_type, 0
  %tobool38.not = icmp eq ptr %realtime, null
  %or.cond61 = or i1 %cmp36, %tobool38.not
  br i1 %or.cond61, label %if.else.if.end42_crit_edge, label %if.else.if.end42.sink.split_crit_edge

if.else.if.end42.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.sink.split

if.else.if.end42_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.end42.sink.split:                              ; preds = %if.else.if.end42.sink.split_crit_edge, %iwl_mvm_get_systime.exit.if.end42.sink.split_crit_edge
  %.sink = phi i32 [ 1, %iwl_mvm_get_systime.exit.if.end42.sink.split_crit_edge ], [ 0, %if.else.if.end42.sink.split_crit_edge ]
  %realtime.sink = phi ptr [ %boottime, %iwl_mvm_get_systime.exit.if.end42.sink.split_crit_edge ], [ %realtime, %if.else.if.end42.sink.split_crit_edge ]
  %call.i63 = tail call i64 @ktime_get_with_offset(i32 noundef %.sink) #10
  %15 = ptrtoint ptr %realtime.sink to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %call.i63, ptr %realtime.sink, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.end42.sink.split, %if.else.if.end42_crit_edge
  br i1 %tobool25, label %if.end42.if.end48_crit_edge, label %if.then44

if.end42.if.end48_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %ps_disabled24 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool, ptr %ps_disabled24, align 4
  %call47 = tail call i32 @iwl_mvm_power_update_device(ptr noundef %mvm) #10
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %if.end42.if.end48_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_power_update_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @iwl_mvm_tcm_iterator(ptr nocapture noundef writeonly %_data, ptr nocapture noundef readnone %mac, ptr nocapture noundef readonly %vif) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_ctxt = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 40
  %0 = ptrtoint ptr %phy_ctxt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_ctxt, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %channel = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %id = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %id, align 4
  %idxprom = zext i16 %7 to i32
  %arrayidx = getelementptr i32, ptr %_data, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_tcm_iter(ptr noundef %_data, ptr nocapture noundef readnone %mac, ptr nocapture noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %id = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %1)
  %cmp = icmp ugt i16 %1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %low_latency1 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 11
  %2 = ptrtoint ptr %low_latency1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %low_latency1, align 8
  %conv2 = zext i16 %1 to i32
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %_data, i32 0, i32 133, i32 7, i32 5, i32 %conv2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool6 = icmp ne i8 %4, 0
  %arrayidx12 = getelementptr %struct.iwl_mvm, ptr %_data, i32 0, i32 133, i32 7, i32 6, i32 %conv2
  %5 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx12, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool13.not = icmp eq i8 %6, 0
  %7 = lshr i8 %bf.load, 2
  %.lobit = and i8 %7, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %.lobit, i8 %4)
  %cmp18 = icmp eq i8 %.lobit, %4
  %or.cond = select i1 %tobool13.not, i1 %cmp18, i1 false
  br i1 %or.cond, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call i32 @iwl_mvm_update_quotas(ptr noundef %_data, i1 noundef zeroext false, ptr noundef null) #10
  br label %cleanup

if.end22:                                         ; preds = %if.end
  br i1 %cmp18, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %call31 = tail call i32 @iwl_mvm_update_low_latency(ptr noundef %_data, ptr noundef %vif, i1 noundef zeroext %tobool6, i32 noundef 1)
  br label %cleanup

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %call32 = tail call i32 @iwl_mvm_update_quotas(ptr noundef %_data, i1 noundef zeroext false, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then29, %if.then20, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_config_scan(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_interfaces(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !20, !22, !24, !25, !27, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !45, !47, !48, !50, !51, !52, !54, !56, !57}
!llvm.named.register.sp = !{!59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/utils.c", i32 26, i32 6}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/utils.c", i32 91, i32 6}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/utils.c", i32 111, i32 6}
!7 = !{ptr @iwl_mvm_mac80211_ac_to_ucode_ac.mac80211_ac_to_ucode_ac, !8, !"mac80211_ac_to_ucode_ac", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/utils.c", i32 186, i32 18}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/utils.c", i32 201, i32 2}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/utils.c", i32 203, i32 2}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/utils.c", i32 206, i32 2}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/utils.c", i32 217, i32 6}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/utils.c", i32 240, i32 2}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/utils.c", i32 263, i32 6}
!22 = !{ptr @__func__.iwl_mvm_reconfig_scd, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/utils.c", i32 267, i32 2}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/utils.c", i32 270, i32 2}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @iwl_mvm_request_statistics.stats_complete, !29, !"stats_complete", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/utils.c", i32 380, i32 20}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/utils.c", i32 486, i32 3}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/utils.c", i32 592, i32 3}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/utils.c", i32 730, i32 44}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/utils.c", i32 755, i32 5}
!38 = !{ptr @iwl_mvm_tcm_add_vif.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/utils.c", i32 1126, i32 2}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @iwl_mvm_tcm_add_vif.__key.15, !39, !"__key", i1 false, i1 false}
!42 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../fw/dbg.h", i32 121, i32 3}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/utils.c", i32 908, i32 8}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/utils.c", i32 866, i32 2}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!56 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/utils.c", i32 842, i32 5}
!59 = !{!"sp"}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i8 0, i8 2}
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{!"branch_weights", i32 1, i32 2000}
!72 = !{!"auto-init"}
!73 = !{i8 0, i8 9}
!74 = !{i64 2149007893, i64 2149008173, i64 2149008507, i64 2149008841}
!75 = !{i64 2149951043}
!76 = !{i64 2149951309}
!77 = !{i64 2160035867}
