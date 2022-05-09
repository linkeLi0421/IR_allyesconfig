; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_mod_params = type { i32, i32, i32, i8, i8, i32, i8, i32, i32, ptr, i32, i8, i8, i8, i8 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iwl_mvm_mac_iface_iterator_data = type { ptr, ptr, [1 x i32], [1 x i32], i32, i8 }
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
%struct.ieee80211_tx_info = type { i32, i32, %union.anon.193 }
%union.anon.193 = type { %struct.anon.197, [32 x i8] }
%struct.anon.197 = type { i64 }
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.iwl_mac_beacon_cmd_v7 = type { %struct.iwl_tx_cmd, i32, i32, i32, i32, i32, [0 x %struct.ieee80211_hdr] }
%struct.iwl_tx_cmd = type { i16, i16, i32, %struct.anon.201, i32, i8, i8, i8, i8, [16 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, %union.anon.202 }
%struct.anon.201 = type { i8, i8, i16 }
%union.anon.202 = type { %struct.anon.205 }
%struct.anon.205 = type { %struct.anon.206, [0 x %struct.ieee80211_hdr] }
%struct.anon.206 = type {}
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.iwl_mac_beacon_cmd = type { i16, i16, i32, i32, i32, i32, i32, i32, i32, [0 x %struct.ieee80211_hdr] }
%struct.iwl_mac_beacon_cmd_v6 = type { %struct.iwl_tx_cmd, i32, i32, i32, [0 x %struct.ieee80211_hdr] }
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
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.160 }
%union.anon.160 = type { %struct.anon.166, [16 x i8] }
%struct.anon.166 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.iwl_mac_ctx_cmd = type { i32, i32, i32, i32, [6 x i8], i16, [6 x i8], i16, i32, i32, i32, i32, i32, i32, i32, [5 x %struct.iwl_ac_qos], %union.anon.200 }
%struct.iwl_ac_qos = type { i16, i16, i8, i8, i16 }
%union.anon.200 = type { %struct.iwl_mac_data_p2p_sta }
%struct.iwl_mac_data_p2p_sta = type { %struct.iwl_mac_data_sta, i32 }
%struct.iwl_mac_data_sta = type <{ i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }>
%struct.iwl_mvm_go_iterator_data = type { i8 }
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
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.129, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.anon.129 = type { i32, i16 }
%struct.iwl_mac_data_ibss = type <{ i32, i64, i32, i32, i32 }>
%struct.iwl_rx_cmd_buffer = type { ptr, i32, i8, i32, i32 }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }
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
%struct.iwl_mvm_tx_resp = type { i8, i8, i8, i8, i32, i16, i8, [3 x i8], [3 x i8], [3 x i8], i16, i8, i8, i32, i16, i16, i8, i8, i16, i16, i16, %struct.agg_tx_status }
%struct.agg_tx_status = type { i16, i16 }
%union.iwl_dbg_tlv_tp_data = type { ptr }
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
%struct.iwl_stored_beacon_notif_common = type <{ i32, i64, i32, i16, i16, i32, i32 }>
%struct.iwl_probe_resp_data = type { %struct.callback_head, %struct.iwl_probe_resp_data_notif, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.iwl_probe_resp_data_notif = type { i32, i32, %struct.iwl_p2p_noa_attr, i8, [3 x i8] }
%struct.iwl_p2p_noa_attr = type { i8, i8, i8, i8, i8, [2 x %struct.ieee80211_p2p_noa_desc], i8 }
%struct.iwl_nvm_data = type { i32, [6 x i8], i8, i16, i16, i16, i16, [2 x i16], i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, [6 x %struct.ieee80211_supported_band], %struct.anon.139, [0 x %struct.ieee80211_channel] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.anon.139 = type { [2 x %struct.ieee80211_sband_iftype_data], [2 x %struct.ieee80211_sband_iftype_data] }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.118 }>
%struct.anon.118 = type { ptr, i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.120, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
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
%struct.anon.120 = type { i64, i64, i8 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.iwl_mvm_mac_ap_iterator_data = type { ptr, ptr, i32, i16 }
%struct.iwl_mac_data_ap = type <{ i32, i64, i32, i32, i32, i32, i32, i32 }>

@iwl_mvm_ac_to_tx_fifo = dso_local constant { [4 x i8], [28 x i8] } { [4 x i8] c"\03\02\01\00", [28 x i8] zeroinitializer }, align 32
@iwl_mvm_ac_to_gen2_tx_fifo = dso_local constant { [8 x i8], [24 x i8] } { [8 x i8] c"\04\03\02\01\08\07\06\05", [24 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c\00", [46 x i8] zeroinitializer }, align 32
@iwl_mvm_mac_ctxt_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to init MAC context - no free ID!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to init MAC context - no free TSF!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to find TIM Element in beacon\0A\00", [58 x i8] zeroinitializer }, align 32
@iwl_mvm_mac_ctxt_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Adding active MAC %pM/%d\0A\00", [38 x i8] zeroinitializer }, align 32
@iwl_mvm_mac_ctxt_changed.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Changing inactive MAC %pM/%d\0A\00", [34 x i8] zeroinitializer }, align 32
@iwl_mvm_mac_ctxt_remove.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Removing inactive MAC %pM/%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to remove MAC context: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_rx_beacon_notif = private unnamed_addr constant [24 x i8] c"iwl_mvm_rx_beacon_notif\00", align 1
@.str.8 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"beacon status %#x retries:%d tsf:0x%016llX gp2:0x%X rate:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"beacon status %#x tsf:0x%016llX gp2:0x%X\0A\00", [54 x i8] zeroinitializer }, align 32
@iwl_mvm_rx_beacon_notif.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@iwl_mvm_rx_beacon_notif.__warned.11 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.iwl_mvm_rx_missed_beacons_notif = private unnamed_addr constant [32 x i8] c"iwl_mvm_rx_missed_beacons_notif\00", align 1
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"missed bcn mac_id=%u, consecutive=%u (%u, %u, %u)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"missed beacons\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"alloc_skb failed\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_probe_resp_data_notif = private unnamed_addr constant [30 x i8] c"iwl_mvm_probe_resp_data_notif\00", align 1
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Probe response data notif: noa %d, csa %d\0A\00", [53 x i8] zeroinitializer }, align 32
@iwl_mvm_probe_resp_data_notif.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iwl_mvm_channel_switch_start_notif.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_channel_switch_start_notif.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@iwl_mvm_channel_switch_start_notif.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"channel switch noa notification on unexpected vif (csa_vif=%d, notif=%d)\00", [55 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_channel_switch_start_notif = private unnamed_addr constant [35 x i8] c"iwl_mvm_channel_switch_start_notif\00", align 1
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Channel Switch Started Notification\0A\00", [59 x i8] zeroinitializer }, align 32
@iwl_mvm_channel_switch_start_notif.__already_done.20 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_mvm_rx_missed_vap_notif = private unnamed_addr constant [28 x i8] c"iwl_mvm_rx_missed_vap_notif\00", align 1
@.str.21 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"missed_vap notify mac_id=%u, num_beacon_intervals_elapsed=%u, profile_periodicity=%u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"missed vap beacon\00", [46 x i8] zeroinitializer }, align 32
@iwl_mvm_mac_ctxt_send_beacon_v9.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iwl_mvm_find_ie_offset.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_mvm_mac_ctxt_cmd_sta = private unnamed_addr constant [25 x i8] c"iwl_mvm_mac_ctxt_cmd_sta\00", align 1
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DTIM TBTT is 0x%llx/0x%x, offset %d\0A\00", [59 x i8] zeroinitializer }, align 32
@iwl_mvm_mac_ctxt_cmd_sta.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iwlwifi_mod_params = external dso_local local_unnamed_addr global %struct.iwl_mod_params, align 4
@iwl_mvm_mac_ctxt_cmd_common.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_mac_ctxt_cmd_common.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.iwl_mvm_mac_ctxt_cmd_common = private unnamed_addr constant [28 x i8] c"iwl_mvm_mac_ctxt_cmd_common\00", align 1
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"use_cts_prot %d, ht_operation_mode %d\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_mac_ctxt_set_ht_flags = private unnamed_addr constant [30 x i8] c"iwl_mvm_mac_ctxt_set_ht_flags\00", align 1
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"protection mode set to %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to send MAC context (action:%d): %d\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_mac_ctxt_cmd_fill_ap = private unnamed_addr constant [29 x i8] c"iwl_mvm_mac_ctxt_cmd_fill_ap\00", align 1
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Asking FW to pass beacons\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No need to receive beacons\0A\00", [36 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/mvm.h\00", [51 x i8] zeroinitializer }, align 32
@iwl_mvm_rcu_dereference_vif_id.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iwl_mvm_rcu_dereference_vif_id.__warned.34 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.35 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Trigger %d occurred while no-collect window.\0A\00", [50 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 10]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.40 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 6, i64 10]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.45 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 6, i64 10]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.47 = private unnamed_addr constant [22 x i8] c"iwl_mvm_ac_to_tx_fifo\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 16, i32 10 }
@___asan_gen_.50 = private unnamed_addr constant [27 x i8] c"iwl_mvm_ac_to_gen2_tx_fifo\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 23, i32 10 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 210, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 264, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 275, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 788, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1215, i32 6 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1236, i32 6 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1250, i32 6 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1263, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1340, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1352, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1358, i32 12 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1402, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1424, i32 37 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1486, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1521, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1576, i32 8 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1587, i32 7 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1592, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1626, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1636, i32 37 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 600, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 522, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 409, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 537, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1095, i32 3 }
@___asan_gen_.129 = private constant [53 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 1097, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 695, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 1216, i32 6 }
@___asan_gen_.141 = private unnamed_addr constant [54 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/../fw/dbg.h\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 121, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 723, i32 2 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @iwl_mvm_ac_to_tx_fifo, ptr @iwl_mvm_ac_to_gen2_tx_fifo, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_ac_to_tx_fifo to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_ac_to_gen2_tx_fifo to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_mac_ctxt_recalc_tsf_id(ptr noundef %mvm, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca %struct.iwl_mvm_mac_iface_iterator_data, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %data) #11
  %0 = getelementptr inbounds i8, ptr %data, i32 20
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mvm, ptr %data, align 4
  %vif2 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %vif2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %vif, ptr %vif2, align 4
  %available_mac_ids = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %available_mac_ids to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %available_mac_ids, align 4
  %available_tsf_ids = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, ptr %data, i32 0, i32 3
  %5 = ptrtoint ptr %available_tsf_ids to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 15, ptr %available_tsf_ids, align 4
  %preferred_tsf = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, ptr %data, i32 0, i32 4
  %6 = ptrtoint ptr %preferred_tsf to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %preferred_tsf, align 4
  %found_vif = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, ptr %data, i32 0, i32 5
  %7 = ptrtoint ptr %found_vif to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %found_vif, align 4
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @iwl_mvm_mac_tsf_id_iter, ptr noundef nonnull %data) #11
  %10 = ptrtoint ptr %preferred_tsf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %preferred_tsf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp.not = icmp eq i32 %11, 4
  %tsf_id5 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 26, i32 1
  br i1 %cmp.not, label %if.else, label %entry.if.end13.sink.split_crit_edge

entry.if.end13.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.sink.split

if.else:                                          ; preds = %entry
  %12 = ptrtoint ptr %tsf_id5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tsf_id5, align 4
  %div3.i = lshr i32 %13, 5
  %arrayidx.i = getelementptr i32, ptr %available_tsf_ids, i32 %div3.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %13, 31
  %16 = shl nuw i32 1, %and.i
  %17 = and i32 %16, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %if.then8, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = call i32 @_find_first_bit_be(ptr noundef %available_tsf_ids, i32 noundef 4) #11
  br label %if.end13.sink.split

if.end13.sink.split:                              ; preds = %if.then8, %entry.if.end13.sink.split_crit_edge
  %call11.sink = phi i32 [ %call11, %if.then8 ], [ %11, %entry.if.end13.sink.split_crit_edge ]
  %18 = ptrtoint ptr %tsf_id5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call11.sink, ptr %tsf_id5, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %if.else.if.end13_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %data) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_active_interfaces_atomic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @iwl_mvm_mac_tsf_id_iter(ptr noundef %_data, ptr nocapture noundef readnone %mac, ptr noundef readonly %vif) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vif1 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, ptr %_data, i32 0, i32 1
  %0 = ptrtoint ptr %vif1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif1, align 4
  %cmp = icmp eq ptr %1, %vif
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb36
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %5 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp4.not = icmp eq i32 %6, 3
  br i1 %cmp4.not, label %lor.lhs.false, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

lor.lhs.false:                                    ; preds = %sw.bb
  %preferred_tsf = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, ptr %_data, i32 0, i32 4
  %7 = ptrtoint ptr %preferred_tsf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %preferred_tsf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp5.not = icmp eq i32 %8, 4
  br i1 %cmp5.not, label %lor.lhs.false6, label %lor.lhs.false.sw.epilog_crit_edge

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %tsf_id = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 26, i32 1
  %9 = ptrtoint ptr %tsf_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tsf_id, align 4
  %available_tsf_ids = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, ptr %_data, i32 0, i32 3
  %div3.i = lshr i32 %10, 5
  %arrayidx.i = getelementptr i32, ptr %available_tsf_ids, i32 %div3.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %10, 31
  %13 = shl nuw i32 1, %and.i
  %14 = and i32 %13, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %lor.lhs.false6.sw.epilog_crit_edge, label %if.end9

lor.lhs.false6.sw.epilog_crit_edge:               ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end9:                                          ; preds = %lor.lhs.false6
  %beacon_int = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 19
  %15 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %beacon_int, align 2
  %beacon_int12 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 19
  %17 = ptrtoint ptr %beacon_int12 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %beacon_int12, align 2
  %19 = tail call i16 @llvm.umin.i16(i16 %16, i16 %18)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool19.not = icmp eq i16 %19, 0
  br i1 %tobool19.not, label %if.end9.sw.epilog_crit_edge, label %if.end21

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end21:                                         ; preds = %if.end9
  %conv25 = zext i16 %16 to i32
  %conv28 = zext i16 %18 to i32
  %sub = sub nsw i32 %conv25, %conv28
  %conv29 = zext i16 %19 to i32
  %rem = srem i32 %sub, %conv29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp30 = icmp eq i32 %rem, 0
  br i1 %cmp30, label %if.then32, label %if.end21.sw.epilog_crit_edge

if.end21.sw.epilog_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then32:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %preferred_tsf to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %10, ptr %preferred_tsf, align 4
  br label %cleanup

sw.bb36:                                          ; preds = %if.end
  %21 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vif, align 8
  %23 = and i32 %22, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %switch = icmp eq i32 %23, 2
  br i1 %switch, label %lor.lhs.false43, label %sw.bb36.sw.epilog_crit_edge

sw.bb36.sw.epilog_crit_edge:                      ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

lor.lhs.false43:                                  ; preds = %sw.bb36
  %preferred_tsf44 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, ptr %_data, i32 0, i32 4
  %24 = ptrtoint ptr %preferred_tsf44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %preferred_tsf44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp45.not = icmp eq i32 %25, 4
  br i1 %cmp45.not, label %lor.lhs.false47, label %lor.lhs.false43.sw.epilog_crit_edge

lor.lhs.false43.sw.epilog_crit_edge:              ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

lor.lhs.false47:                                  ; preds = %lor.lhs.false43
  %tsf_id48 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 26, i32 1
  %26 = ptrtoint ptr %tsf_id48 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tsf_id48, align 4
  %available_tsf_ids49 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, ptr %_data, i32 0, i32 3
  %div3.i139 = lshr i32 %27, 5
  %arrayidx.i140 = getelementptr i32, ptr %available_tsf_ids49, i32 %div3.i139
  %28 = ptrtoint ptr %arrayidx.i140 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %arrayidx.i140, align 4
  %and.i141 = and i32 %27, 31
  %30 = shl nuw i32 1, %and.i141
  %31 = and i32 %30, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool52.not = icmp eq i32 %31, 0
  br i1 %tobool52.not, label %lor.lhs.false47.sw.epilog_crit_edge, label %if.end54

lor.lhs.false47.sw.epilog_crit_edge:              ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end54:                                         ; preds = %lor.lhs.false47
  %beacon_int57 = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 19
  %32 = ptrtoint ptr %beacon_int57 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %beacon_int57, align 2
  %beacon_int59 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 19
  %34 = ptrtoint ptr %beacon_int59 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %beacon_int59, align 2
  %36 = tail call i16 @llvm.umin.i16(i16 %33, i16 %35)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool72.not = icmp eq i16 %36, 0
  br i1 %tobool72.not, label %if.end54.sw.epilog_crit_edge, label %if.end74

if.end54.sw.epilog_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end74:                                         ; preds = %if.end54
  %conv78 = zext i16 %33 to i32
  %conv81 = zext i16 %35 to i32
  %sub82 = sub nsw i32 %conv78, %conv81
  %conv83 = zext i16 %36 to i32
  %rem84 = srem i32 %sub82, %conv83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem84)
  %cmp85 = icmp eq i32 %rem84, 0
  br i1 %cmp85, label %if.then87, label %if.end74.sw.epilog_crit_edge

if.end74.sw.epilog_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then87:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %preferred_tsf44 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %27, ptr %preferred_tsf44, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %if.end74.sw.epilog_crit_edge, %if.end54.sw.epilog_crit_edge, %lor.lhs.false47.sw.epilog_crit_edge, %lor.lhs.false43.sw.epilog_crit_edge, %sw.bb36.sw.epilog_crit_edge, %if.end21.sw.epilog_crit_edge, %if.end9.sw.epilog_crit_edge, %lor.lhs.false6.sw.epilog_crit_edge, %lor.lhs.false.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %tsf_id91 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 26, i32 1
  %38 = ptrtoint ptr %tsf_id91 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tsf_id91, align 4
  %available_tsf_ids92 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, ptr %_data, i32 0, i32 3
  %rem.i = and i32 %39, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %39, 5
  %add.ptr.i = getelementptr i32, ptr %available_tsf_ids92, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i, align 4
  %and.i144 = and i32 %41, %neg.i
  store i32 %and.i144, ptr %add.ptr.i, align 4
  %preferred_tsf94 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, ptr %_data, i32 0, i32 4
  %42 = ptrtoint ptr %preferred_tsf94 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %preferred_tsf94, align 4
  %44 = load i32, ptr %tsf_id91, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %44)
  %cmp96 = icmp eq i32 %43, %44
  br i1 %cmp96, label %if.then98, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then98:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %preferred_tsf94 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4, ptr %preferred_tsf94, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then98, %sw.epilog.cleanup_crit_edge, %if.then87, %if.then32, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_mac_ctxt_init(ptr noundef %mvm, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca %struct.iwl_mvm_mac_iface_iterator_data, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %data) #11
  %0 = getelementptr inbounds i8, ptr %data, i32 20
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mvm, ptr %data, align 4
  %vif2 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %vif2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %vif, ptr %vif2, align 4
  %available_mac_ids = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %available_mac_ids to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 15, ptr %available_mac_ids, align 4
  %available_tsf_ids = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, ptr %data, i32 0, i32 3
  %5 = ptrtoint ptr %available_tsf_ids to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 15, ptr %available_tsf_ids, align 4
  %preferred_tsf = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, ptr %data, i32 0, i32 4
  %6 = ptrtoint ptr %preferred_tsf to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %preferred_tsf, align 4
  %found_vif = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, ptr %data, i32 0, i32 5
  %7 = ptrtoint ptr %found_vif to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %found_vif, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !121

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 210, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vif, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %10, label %if.end.sw.default_crit_edge [
    i32 1, label %if.end.sw.epilog_crit_edge
    i32 2, label %sw.bb
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.sw.default_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default

sw.bb:                                            ; preds = %if.end
  %p2p = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %12 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %p2p, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool28.not = icmp eq i8 %13, 0
  br i1 %tobool28.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.sw.default_crit_edge

sw.bb.sw.default_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.sw.default_crit_edge, %if.end.sw.default_crit_edge
  %14 = ptrtoint ptr %available_mac_ids to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %available_mac_ids, align 4
  %and.i = and i32 %15, -2
  store i32 %and.i, ptr %available_mac_ids, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %17, i32 noundef 1, ptr noundef nonnull @iwl_mvm_mac_iface_iterator, ptr noundef nonnull %data) #11
  %18 = ptrtoint ptr %found_vif to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %found_vif, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool33.not = icmp eq i8 %19, 0
  br i1 %tobool33.not, label %if.end35, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end35:                                         ; preds = %sw.epilog
  %status = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %status, align 4
  %22 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool37.not = icmp eq i32 %22, 0
  br i1 %tobool37.not, label %if.end91, label %land.rhs43

land.rhs43:                                       ; preds = %if.end35
  %.b180 = load i1, ptr @iwl_mvm_mac_ctxt_init.__already_done, align 1
  br i1 %.b180, label %land.rhs43.cleanup_crit_edge, label %if.then54, !prof !123

land.rhs43.cleanup_crit_edge:                     ; preds = %land.rhs43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then54:                                        ; preds = %land.rhs43
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_mac_ctxt_init.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 258, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end91:                                         ; preds = %if.end35
  %call94 = call i32 @_find_first_bit_be(ptr noundef %available_mac_ids, i32 noundef 4) #11
  %conv = trunc i32 %call94 to i16
  %id = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %23 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv, ptr %id, align 4
  %conv96 = and i32 %call94, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv96)
  %cmp97 = icmp eq i32 %conv96, 4
  br i1 %cmp97, label %if.end91.exit_fail_crit_edge, label %if.end106

if.end91.exit_fail_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_fail

if.end106:                                        ; preds = %if.end91
  %24 = ptrtoint ptr %preferred_tsf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %preferred_tsf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp108.not = icmp eq i32 %25, 4
  br i1 %cmp108.not, label %if.end116, label %if.end116.thread

if.end116.thread:                                 ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  %26 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 26, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %26, align 4
  br label %if.end128

if.end116:                                        ; preds = %if.end106
  %call114 = call i32 @_find_first_bit_be(ptr noundef %available_tsf_ids, i32 noundef 4) #11
  %28 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 26, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call114, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call114)
  %cmp118 = icmp eq i32 %call114, 4
  br i1 %cmp118, label %if.end116.exit_fail_crit_edge, label %if.end116.if.end128_crit_edge

if.end116.if.end128_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end128

if.end116.exit_fail_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_fail

if.end128:                                        ; preds = %if.end116.if.end128_crit_edge, %if.end116.thread
  %color = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 2
  %30 = ptrtoint ptr %color to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %color, align 2
  %list = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 32, i32 5
  %31 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 33
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %list, ptr %prev.i, align 4
  %id130 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 33, i32 1, i32 12
  %33 = ptrtoint ptr %id130 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 16, ptr %id130, align 4
  %34 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vif, align 8
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %35, label %if.end128.if.end143_crit_edge [
    i32 10, label %if.end128.cleanup_crit_edge
    i32 3, label %if.end128.if.then142_crit_edge
    i32 1, label %if.end128.if.then142_crit_edge185
  ]

if.end128.if.then142_crit_edge185:                ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then142

if.end128.if.then142_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then142

if.end128.cleanup_crit_edge:                      ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end128.if.end143_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end143

if.then142:                                       ; preds = %if.end128.if.then142_crit_edge, %if.end128.if.then142_crit_edge185
  %cab_queue = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 5
  %37 = ptrtoint ptr %cab_queue to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 3, ptr %cab_queue, align 2
  br label %if.end143

if.end143:                                        ; preds = %if.then142, %if.end128.if.end143_crit_edge
  %bcast_sta = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 39, i32 9
  %38 = ptrtoint ptr %bcast_sta to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 255, ptr %bcast_sta, align 8
  %mcast_sta = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 39, i32 21
  %39 = ptrtoint ptr %mcast_sta to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 255, ptr %mcast_sta, align 4
  %ap_sta_id = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %40 = ptrtoint ptr %ap_sta_id to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %ap_sta_id, align 8
  %uglygep = getelementptr i8, ptr %vif, i32 1496
  %41 = call ptr @memset(ptr %uglygep, i32 0, i32 16)
  br label %cleanup

exit_fail:                                        ; preds = %if.end116.exit_fail_crit_edge, %if.end91.exit_fail_crit_edge
  %.str.2.sink = phi ptr [ @.str.1, %if.end91.exit_fail_crit_edge ], [ @.str.2, %if.end116.exit_fail_crit_edge ]
  %42 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %43, i32 noundef 0, ptr noundef nonnull %.str.2.sink) #11
  %44 = call ptr @memset(ptr %drv_priv.i, i32 0, i32 928)
  br label %cleanup

cleanup:                                          ; preds = %exit_fail, %if.end143, %if.end128.cleanup_crit_edge, %if.then54, %land.rhs43.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %exit_fail ], [ 0, %sw.epilog.cleanup_crit_edge ], [ -16, %if.then54 ], [ 0, %if.end128.cleanup_crit_edge ], [ -16, %land.rhs43.cleanup_crit_edge ], [ 0, %if.end143 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %data) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @iwl_mvm_mac_iface_iterator(ptr noundef %_data, ptr nocapture noundef readnone %mac, ptr noundef %vif) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vif1 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, ptr %_data, i32 0, i32 1
  %0 = ptrtoint ptr %vif1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif1, align 4
  %cmp = icmp eq ptr %1, %vif
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %found_vif = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, ptr %_data, i32 0, i32 5
  %2 = ptrtoint ptr %found_vif to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %found_vif, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %id = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %id, align 4
  %conv = zext i16 %4 to i32
  %available_mac_ids = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, ptr %_data, i32 0, i32 2
  %rem.i = and i32 %conv, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv, 5
  %add.ptr.i = getelementptr i32, ptr %available_mac_ids, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %6, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  tail call void @iwl_mvm_mac_tsf_id_iter(ptr noundef %_data, ptr noundef %mac, ptr noundef %vif)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_mac_ctxt_set_tim(ptr nocapture noundef readonly %mvm, ptr nocapture noundef writeonly %tim_index, ptr nocapture noundef writeonly %tim_size, ptr nocapture noundef readonly %beacon, i32 noundef %frame_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %frame_size, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %sub)
  %cmp33 = icmp ugt i32 %sub, 36
  br i1 %cmp33, label %entry.land.rhs_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %tim_idx.034 = phi i32 [ %add6, %while.body.land.rhs_crit_edge ], [ 36, %entry.land.rhs_crit_edge ]
  %arrayidx = getelementptr i8, ptr %beacon, i32 %tim_idx.034
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp1.not = icmp eq i8 %1, 5
  br i1 %cmp1.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %add = add nuw i32 %tim_idx.034, 1
  %arrayidx3 = getelementptr i8, ptr %beacon, i32 %add
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %3 to i32
  %add5 = add i32 %tim_idx.034, 2
  %add6 = add i32 %add5, %conv4
  %cmp = icmp ult i32 %add6, %sub
  br i1 %cmp, label %while.body.land.rhs_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %tim_idx.0.lcssa = phi i32 [ 36, %entry.while.end_crit_edge ], [ %add6, %while.body.while.end_crit_edge ], [ %tim_idx.034, %land.rhs.while.end_crit_edge ]
  %sub7 = add i32 %frame_size, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %tim_idx.0.lcssa, i32 %sub7)
  %cmp8 = icmp ult i32 %tim_idx.0.lcssa, %sub7
  br i1 %cmp8, label %land.lhs.true, label %while.end.do.end_crit_edge

while.end.do.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %while.end
  %arrayidx10 = getelementptr i8, ptr %beacon, i32 %tim_idx.0.lcssa
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %5)
  %cmp12 = icmp eq i8 %5, 5
  br i1 %cmp12, label %if.then, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %6 = tail call i32 @llvm.bswap.i32(i32 %tim_idx.0.lcssa)
  %7 = ptrtoint ptr %tim_index to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tim_index, align 4
  %add14 = add nuw i32 %tim_idx.0.lcssa, 1
  %arrayidx15 = getelementptr i8, ptr %beacon, i32 %add14
  %8 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %9 to i32
  %10 = shl nuw i32 %conv16, 24
  %11 = ptrtoint ptr %tim_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tim_size, align 4
  br label %if.end

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %while.end.do.end_crit_edge
  %12 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mvm, align 8
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %13, ptr noundef nonnull @.str.3) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @iwl_mvm_mac_ctxt_get_lowest_rate(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %vif) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %band = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load)
  %cmp = icmp ult i32 %bf.load, 536870912
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %p2p = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %1 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %p2p, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %rate.0 = phi i8 [ 4, %if.else ], [ 0, %land.lhs.true.if.end_crit_edge ]
  ret i8 %rate.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @iwl_mvm_mac_ctxt_get_beacon_flags(ptr noundef %fw, i8 noundef zeroext %rate_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %rate_idx to i32
  %call = tail call zeroext i8 @iwl_mvm_mac80211_idx_to_hwrate(ptr noundef %fw, i32 noundef %conv) #11
  %conv1 = zext i8 %call to i16
  %call2 = tail call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %fw, i8 noundef zeroext 1, i8 noundef zeroext -111, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rate_idx)
  %cmp6 = icmp eq i8 %rate_idx, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %call2)
  %cmp = icmp ugt i8 %call2, 10
  %cond = select i1 %cmp, i16 32, i16 256
  %or = select i1 %cmp6, i16 %cond, i16 0
  %flags.0 = or i16 %or, %conv1
  ret i16 %flags.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_mvm_mac80211_idx_to_hwrate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_mac_ctxt_send_beacon_cmd(ptr noundef %mvm, ptr nocapture noundef readonly %beacon, ptr noundef %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd) #11
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %2 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd, i32 0, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %2, align 4
  %4 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd, i32 0, i32 5
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 145, ptr %4, align 4
  %conv = trunc i32 %len to i16
  %len1 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 6
  %6 = ptrtoint ptr %len1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %len1, align 4
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data, ptr %cmd, align 4
  %len5 = getelementptr inbounds %struct.sk_buff, ptr %beacon, i32 0, i32 6
  %8 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len5, align 4
  %conv6 = trunc i32 %9 to i16
  %arrayidx8 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv6, ptr %arrayidx8, align 2
  %data9 = getelementptr inbounds %struct.sk_buff, ptr %beacon, i32 0, i32 19
  %11 = ptrtoint ptr %data9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data9, align 4
  %arrayidx11 = getelementptr inbounds [2 x ptr], ptr %cmd, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %arrayidx11, align 4
  %arrayidx13 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %arrayidx13, align 1
  %call = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %cmd) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_mac_ctxt_send_beacon(ptr noundef %mvm, ptr noundef %vif, ptr noundef %beacon) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i.i89 = alloca %struct.iwl_host_cmd, align 4
  %beacon_cmd.i90 = alloca %struct.iwl_mac_beacon_cmd_v7, align 1
  %cmd.i.i47 = alloca %struct.iwl_host_cmd, align 4
  %beacon_cmd.i48 = alloca %struct.iwl_mac_beacon_cmd, align 2
  %cmd.i.i = alloca %struct.iwl_host_cmd, align 4
  %beacon_cmd.i = alloca %struct.iwl_mac_beacon_cmd_v6, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %beacon, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !121

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1000, i32 noundef 9, ptr noundef null) #11
  br label %return

if.end23:                                         ; preds = %entry
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw, align 8
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %1, i32 0, i32 5, i32 8, i32 2
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i.i, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end23
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %beacon_cmd.i) #11
  %5 = call ptr @memset(ptr %beacon_cmd.i, i32 0, i32 68)
  call fastcc void @iwl_mvm_mac_ctxt_set_tx(ptr noundef %mvm, ptr noundef %vif, ptr noundef nonnull %beacon, ptr noundef nonnull %beacon_cmd.i) #11
  %id.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %id.i, align 4
  %conv.i = zext i16 %7 to i32
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #11
  %template_id.i = getelementptr inbounds %struct.iwl_mac_beacon_cmd_v6, ptr %beacon_cmd.i, i32 0, i32 1
  %9 = ptrtoint ptr %template_id.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %template_id.i, align 1
  %10 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i = icmp eq i32 %11, 3
  br i1 %cmp.i, label %if.then.i, label %if.then24.iwl_mvm_mac_ctxt_send_beacon_v6.exit_crit_edge

if.then24.iwl_mvm_mac_ctxt_send_beacon_v6.exit_crit_edge: ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_mac_ctxt_send_beacon_v6.exit

if.then.i:                                        ; preds = %if.then24
  %tim_idx.i = getelementptr inbounds %struct.iwl_mac_beacon_cmd_v6, ptr %beacon_cmd.i, i32 0, i32 2
  %tim_size.i = getelementptr inbounds %struct.iwl_mac_beacon_cmd_v6, ptr %beacon_cmd.i, i32 0, i32 3
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %beacon, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %beacon, i32 0, i32 6
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  %sub.i.i = add i32 %15, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %sub.i.i)
  %cmp33.i.i = icmp ugt i32 %sub.i.i, 36
  br i1 %cmp33.i.i, label %if.then.i.land.rhs.i.i_crit_edge, label %if.then.i.while.end.i.i_crit_edge

if.then.i.while.end.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i

if.then.i.land.rhs.i.i_crit_edge:                 ; preds = %if.then.i
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %if.then.i.land.rhs.i.i_crit_edge
  %tim_idx.034.i.i = phi i32 [ %add6.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ], [ 36, %if.then.i.land.rhs.i.i_crit_edge ]
  %arrayidx.i.i44 = getelementptr i8, ptr %13, i32 %tim_idx.034.i.i
  %16 = ptrtoint ptr %arrayidx.i.i44 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.i44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %17)
  %cmp1.not.i.i = icmp eq i8 %17, 5
  br i1 %cmp1.not.i.i, label %land.rhs.i.i.while.end.i.i_crit_edge, label %while.body.i.i

land.rhs.i.i.while.end.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %add.i.i = add nuw i32 %tim_idx.034.i.i, 1
  %arrayidx3.i.i = getelementptr i8, ptr %13, i32 %add.i.i
  %18 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx3.i.i, align 1
  %conv4.i.i = zext i8 %19 to i32
  %add5.i.i = add i32 %tim_idx.034.i.i, 2
  %add6.i.i = add i32 %add5.i.i, %conv4.i.i
  %cmp.i.i = icmp ult i32 %add6.i.i, %sub.i.i
  br i1 %cmp.i.i, label %while.body.i.i.land.rhs.i.i_crit_edge, label %while.body.i.i.while.end.i.i_crit_edge

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %land.rhs.i.i.while.end.i.i_crit_edge, %if.then.i.while.end.i.i_crit_edge
  %tim_idx.0.lcssa.i.i = phi i32 [ 36, %if.then.i.while.end.i.i_crit_edge ], [ %add6.i.i, %while.body.i.i.while.end.i.i_crit_edge ], [ %tim_idx.034.i.i, %land.rhs.i.i.while.end.i.i_crit_edge ]
  %sub7.i.i = add i32 %15, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %tim_idx.0.lcssa.i.i, i32 %sub7.i.i)
  %cmp8.i.i = icmp ult i32 %tim_idx.0.lcssa.i.i, %sub7.i.i
  br i1 %cmp8.i.i, label %land.lhs.true.i.i, label %while.end.i.i.do.end.i.i_crit_edge

while.end.i.i.do.end.i.i_crit_edge:               ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %while.end.i.i
  %arrayidx10.i.i = getelementptr i8, ptr %13, i32 %tim_idx.0.lcssa.i.i
  %20 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx10.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %21)
  %cmp12.i.i = icmp eq i8 %21, 5
  br i1 %cmp12.i.i, label %if.then.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = tail call i32 @llvm.bswap.i32(i32 %tim_idx.0.lcssa.i.i) #11
  %23 = ptrtoint ptr %tim_idx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %tim_idx.i, align 4
  %add14.i.i = add nuw i32 %tim_idx.0.lcssa.i.i, 1
  %arrayidx15.i.i = getelementptr i8, ptr %13, i32 %add14.i.i
  %24 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx15.i.i, align 1
  %conv16.i.i = zext i8 %25 to i32
  %26 = shl nuw i32 %conv16.i.i, 24
  %27 = ptrtoint ptr %tim_size.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %tim_size.i, align 4
  br label %iwl_mvm_mac_ctxt_send_beacon_v6.exit

do.end.i.i:                                       ; preds = %land.lhs.true.i.i.do.end.i.i_crit_edge, %while.end.i.i.do.end.i.i_crit_edge
  %28 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mvm, align 8
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %29, ptr noundef nonnull @.str.3) #11
  br label %iwl_mvm_mac_ctxt_send_beacon_v6.exit

iwl_mvm_mac_ctxt_send_beacon_v6.exit:             ; preds = %do.end.i.i, %if.then.i.i, %if.then24.iwl_mvm_mac_ctxt_send_beacon_v6.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i.i) #11
  %30 = getelementptr inbounds i8, ptr %cmd.i.i, i32 8
  %31 = call ptr @memset(ptr %30, i32 0, i32 28)
  %32 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %32, align 4
  %34 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd.i.i, i32 0, i32 5
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 145, ptr %34, align 4
  %len1.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i, i32 0, i32 6
  %36 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 68, ptr %len1.i.i, align 4
  %37 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %beacon_cmd.i, ptr %cmd.i.i, align 4
  %len5.i.i = getelementptr inbounds %struct.sk_buff, ptr %beacon, i32 0, i32 6
  %38 = ptrtoint ptr %len5.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len5.i.i, align 4
  %conv6.i.i = trunc i32 %39 to i16
  %arrayidx8.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i, i32 0, i32 6, i32 1
  %40 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv6.i.i, ptr %arrayidx8.i.i, align 2
  %data9.i.i = getelementptr inbounds %struct.sk_buff, ptr %beacon, i32 0, i32 19
  %41 = ptrtoint ptr %data9.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data9.i.i, align 4
  %arrayidx11.i.i = getelementptr inbounds [2 x ptr], ptr %cmd.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %arrayidx11.i.i, align 4
  %arrayidx13.i.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i, i32 0, i32 7, i32 1
  %44 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 2, ptr %arrayidx13.i.i, align 1
  %call.i.i = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %cmd.i.i) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i.i) #11
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %beacon_cmd.i) #11
  br label %return

if.end26:                                         ; preds = %if.end23
  %arrayidx.i.i45 = getelementptr %struct.iwl_fw, ptr %1, i32 0, i32 5, i32 7, i32 1
  %45 = ptrtoint ptr %arrayidx.i.i45 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %arrayidx.i.i45, align 4
  %47 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.i46.not = icmp eq i32 %47, 0
  %drv_priv.i.i91 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  br i1 %tobool.i46.not, label %if.end32, label %if.then30

if.then30:                                        ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %beacon_cmd.i48) #11
  %48 = call ptr @memset(ptr %beacon_cmd.i48, i32 0, i32 32)
  %band.i.i = getelementptr inbounds %struct.sk_buff, ptr %beacon, i32 0, i32 3, i32 4
  %49 = ptrtoint ptr %band.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %bf.load.i.i = load i32, ptr %band.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load.i.i)
  %cmp.i.i50 = icmp ult i32 %bf.load.i.i, 536870912
  br i1 %cmp.i.i50, label %land.lhs.true.i88.i, label %if.then30.if.else.i.i_crit_edge

if.then30.if.else.i.i_crit_edge:                  ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

land.lhs.true.i88.i:                              ; preds = %if.then30
  %p2p.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %50 = ptrtoint ptr %p2p.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %p2p.i.i, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i87.i = icmp eq i8 %51, 0
  br i1 %tobool.not.i87.i, label %land.lhs.true.i88.i.iwl_mvm_mac_ctxt_get_lowest_rate.exit.i_crit_edge, label %land.lhs.true.i88.i.if.else.i.i_crit_edge

land.lhs.true.i88.i.if.else.i.i_crit_edge:        ; preds = %land.lhs.true.i88.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

land.lhs.true.i88.i.iwl_mvm_mac_ctxt_get_lowest_rate.exit.i_crit_edge: ; preds = %land.lhs.true.i88.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_mac_ctxt_get_lowest_rate.exit.i

if.else.i.i:                                      ; preds = %land.lhs.true.i88.i.if.else.i.i_crit_edge, %if.then30.if.else.i.i_crit_edge
  br label %iwl_mvm_mac_ctxt_get_lowest_rate.exit.i

iwl_mvm_mac_ctxt_get_lowest_rate.exit.i:          ; preds = %if.else.i.i, %land.lhs.true.i88.i.iwl_mvm_mac_ctxt_get_lowest_rate.exit.i_crit_edge
  %cmp6.i.i = phi i1 [ true, %land.lhs.true.i88.i.iwl_mvm_mac_ctxt_get_lowest_rate.exit.i_crit_edge ], [ false, %if.else.i.i ]
  %rate.0.i.i = phi i32 [ 0, %land.lhs.true.i88.i.iwl_mvm_mac_ctxt_get_lowest_rate.exit.i_crit_edge ], [ 4, %if.else.i.i ]
  %call.i89.i = tail call zeroext i8 @iwl_mvm_mac80211_idx_to_hwrate(ptr noundef %1, i32 noundef %rate.0.i.i) #11
  %conv1.i.i = zext i8 %call.i89.i to i16
  %call2.i.i = tail call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext -111, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %call2.i.i)
  %cmp.i90.i = icmp ugt i8 %call2.i.i, 10
  %cond.i.i = select i1 %cmp.i90.i, i16 32, i16 256
  %spec.select = select i1 %cmp6.i.i, i16 %cond.i.i, i16 0
  %flags.0.i.i = or i16 %spec.select, %conv1.i.i
  %52 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i.i.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %55, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !124
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i51 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i51, label %iwl_mvm_mac_ctxt_get_lowest_rate.exit.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i52

iwl_mvm_mac_ctxt_get_lowest_rate.exit.i.rcu_read_lock.exit.i_crit_edge: ; preds = %iwl_mvm_mac_ctxt_get_lowest_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i52:                              ; preds = %iwl_mvm_mac_ctxt_get_lowest_rate.exit.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i52.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i52.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i52
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i52
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i53

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i53:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 696, ptr noundef nonnull @.str.32) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i53, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i52.rcu_read_lock.exit.i_crit_edge, %iwl_mvm_mac_ctxt_get_lowest_rate.exit.i.rcu_read_lock.exit.i_crit_edge
  %chanctx_conf.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 9
  %56 = ptrtoint ptr %chanctx_conf.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %chanctx_conf.i, align 4
  %call5.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end11.i_crit_edge

rcu_read_lock.exit.i.do.end11.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call6.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.do.end11.i_crit_edge, label %land.lhs.true8.i

land.lhs.true.i.do.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %.b86.i = load i1, ptr @iwl_mvm_mac_ctxt_send_beacon_v9.__warned, align 1
  br i1 %.b86.i, label %land.lhs.true8.i.do.end11.i_crit_edge, label %if.then.i54

land.lhs.true8.i.do.end11.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11.i

if.then.i54:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_mac_ctxt_send_beacon_v9.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 958, ptr noundef nonnull @.str.16) #11
  br label %do.end11.i

do.end11.i:                                       ; preds = %if.then.i54, %land.lhs.true8.i.do.end11.i_crit_edge, %land.lhs.true.i.do.end11.i_crit_edge, %rcu_read_lock.exit.i.do.end11.i_crit_edge
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %center_freq.i, align 4
  %mul.i.i = mul i32 %61, 1000
  %call.i91.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91.i)
  %cmp.i55 = icmp eq i32 %call.i91.i, 0
  br i1 %cmp.i55, label %do.end25.i, label %do.end11.i.if.end31.i_crit_edge, !prof !121

do.end11.i.if.end31.i_crit_edge:                  ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

do.end25.i:                                       ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 960, i32 noundef 9, ptr noundef null) #11
  br label %if.end31.i

if.end31.i:                                       ; preds = %do.end25.i, %do.end11.i.if.end31.i_crit_edge
  %62 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %57, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %65)
  %cmp.not.i.i = icmp eq i32 %65, 3
  br i1 %cmp.not.i.i, label %cfg80211_channel_is_psc.exit.i, label %if.end31.i.if.end51.i_crit_edge

if.end31.i.if.end51.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51.i

cfg80211_channel_is_psc.exit.i:                   ; preds = %if.end31.i
  %center_freq.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %63, i32 0, i32 1
  %66 = ptrtoint ptr %center_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %center_freq.i.i, align 4
  %mul.i.i.i = mul i32 %67, 1000
  %call.i.i.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i.i.i) #11
  %68 = and i32 %call.i.i.i, -2147483633
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %68)
  %cmp1.i.i = icmp eq i32 %68, 5
  br i1 %cmp1.i.i, label %if.then42.i, label %cfg80211_channel_is_psc.exit.i.if.end51.i_crit_edge

cfg80211_channel_is_psc.exit.i.if.end51.i_crit_edge: ; preds = %cfg80211_channel_is_psc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51.i

if.then42.i:                                      ; preds = %cfg80211_channel_is_psc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fw, align 8
  %call44.i = tail call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %70, i8 noundef zeroext 1, i8 noundef zeroext -111, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %call44.i)
  %cmp45.i = icmp ugt i8 %call44.i, 10
  %cond.i = select i1 %cmp45.i, i16 256, i16 4096
  %or.i = or i16 %cond.i, %flags.0.i.i
  %ssid.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 39
  %ssid_len.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 40
  %71 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ssid_len.i, align 8
  %call50.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %ssid.i, i32 noundef %72) #14
  %neg.i = xor i32 %call50.i, -1
  %73 = tail call i32 @llvm.bswap.i32(i32 %neg.i) #11
  %short_ssid.i = getelementptr inbounds %struct.iwl_mac_beacon_cmd, ptr %beacon_cmd.i48, i32 0, i32 2
  %74 = ptrtoint ptr %short_ssid.i to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 %73, ptr %short_ssid.i, align 2
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then42.i, %cfg80211_channel_is_psc.exit.i.if.end51.i_crit_edge, %if.end31.i.if.end51.i_crit_edge
  %flags.0.i = phi i16 [ %or.i, %if.then42.i ], [ %flags.0.i.i, %cfg80211_channel_is_psc.exit.i.if.end51.i_crit_edge ], [ %flags.0.i.i, %if.end31.i.if.end51.i_crit_edge ]
  %call.i92.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i92.i, label %if.end51.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i95.i

if.end51.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true.i95.i:                              ; preds = %if.end51.i
  %call1.i93.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i93.i)
  %tobool.not.i94.i = icmp eq i32 %call1.i93.i, 0
  br i1 %tobool.not.i94.i, label %land.lhs.true.i95.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i97.i

land.lhs.true.i95.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i95.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i97.i:                             ; preds = %land.lhs.true.i95.i
  %.b4.i96.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i96.i, label %land.lhs.true2.i97.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i98.i

land.lhs.true2.i97.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i97.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

if.then.i98.i:                                    ; preds = %land.lhs.true2.i97.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 724, ptr noundef nonnull @.str.36) #11
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i98.i, %land.lhs.true2.i97.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i95.i.rcu_read_unlock.exit.i_crit_edge, %if.end51.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !125
  %75 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i.i.i99.i = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i.i.i99.i to ptr
  %preempt_count.i.i.i.i100.i = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %preempt_count.i.i.i.i100.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %preempt_count.i.i.i.i100.i, align 4
  %sub.i.i.i.i = add i32 %78, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i100.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %79 = tail call i16 @llvm.bswap.i16(i16 %flags.0.i) #11
  %flags52.i = getelementptr inbounds %struct.iwl_mac_beacon_cmd, ptr %beacon_cmd.i48, i32 0, i32 1
  %80 = ptrtoint ptr %flags52.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %flags52.i, align 2
  %len.i56 = getelementptr inbounds %struct.sk_buff, ptr %beacon, i32 0, i32 6
  %81 = ptrtoint ptr %len.i56 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %len.i56, align 4
  %conv53.i = trunc i32 %82 to i16
  %83 = tail call i16 @llvm.bswap.i16(i16 %conv53.i) #11
  %84 = ptrtoint ptr %beacon_cmd.i48 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %beacon_cmd.i48, align 2
  %id.i57 = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i.i91, i32 0, i32 1
  %85 = ptrtoint ptr %id.i57 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %id.i57, align 4
  %conv54.i = zext i16 %86 to i32
  %87 = tail call i32 @llvm.bswap.i32(i32 %conv54.i) #11
  %template_id.i58 = getelementptr inbounds %struct.iwl_mac_beacon_cmd, ptr %beacon_cmd.i48, i32 0, i32 4
  %88 = ptrtoint ptr %template_id.i58 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 %87, ptr %template_id.i58, align 2
  %89 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %90)
  %cmp55.i = icmp eq i32 %90, 3
  br i1 %cmp55.i, label %if.then57.i, label %rcu_read_unlock.exit.i.if.end59.i_crit_edge

rcu_read_unlock.exit.i.if.end59.i_crit_edge:      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i

if.then57.i:                                      ; preds = %rcu_read_unlock.exit.i
  %tim_idx.i59 = getelementptr inbounds %struct.iwl_mac_beacon_cmd, ptr %beacon_cmd.i48, i32 0, i32 5
  %tim_size.i60 = getelementptr inbounds %struct.iwl_mac_beacon_cmd, ptr %beacon_cmd.i48, i32 0, i32 6
  %data.i61 = getelementptr inbounds %struct.sk_buff, ptr %beacon, i32 0, i32 19
  %91 = ptrtoint ptr %data.i61 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data.i61, align 4
  %sub.i.i62 = add i32 %82, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %sub.i.i62)
  %cmp33.i.i63 = icmp ugt i32 %sub.i.i62, 36
  br i1 %cmp33.i.i63, label %if.then57.i.land.rhs.i.i67_crit_edge, label %if.then57.i.while.end.i.i77_crit_edge

if.then57.i.while.end.i.i77_crit_edge:            ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i77

if.then57.i.land.rhs.i.i67_crit_edge:             ; preds = %if.then57.i
  br label %land.rhs.i.i67

land.rhs.i.i67:                                   ; preds = %while.body.i.i73.land.rhs.i.i67_crit_edge, %if.then57.i.land.rhs.i.i67_crit_edge
  %tim_idx.034.i.i64 = phi i32 [ %add6.i.i72, %while.body.i.i73.land.rhs.i.i67_crit_edge ], [ 36, %if.then57.i.land.rhs.i.i67_crit_edge ]
  %arrayidx.i.i65 = getelementptr i8, ptr %92, i32 %tim_idx.034.i.i64
  %93 = ptrtoint ptr %arrayidx.i.i65 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx.i.i65, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %94)
  %cmp1.not.i.i66 = icmp eq i8 %94, 5
  br i1 %cmp1.not.i.i66, label %land.rhs.i.i67.while.end.i.i77_crit_edge, label %while.body.i.i73

land.rhs.i.i67.while.end.i.i77_crit_edge:         ; preds = %land.rhs.i.i67
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i77

while.body.i.i73:                                 ; preds = %land.rhs.i.i67
  %add.i.i68 = add nuw i32 %tim_idx.034.i.i64, 1
  %arrayidx3.i.i69 = getelementptr i8, ptr %92, i32 %add.i.i68
  %95 = ptrtoint ptr %arrayidx3.i.i69 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx3.i.i69, align 1
  %conv4.i.i70 = zext i8 %96 to i32
  %add5.i.i71 = add i32 %tim_idx.034.i.i64, 2
  %add6.i.i72 = add i32 %add5.i.i71, %conv4.i.i70
  %cmp.i101.i = icmp ult i32 %add6.i.i72, %sub.i.i62
  br i1 %cmp.i101.i, label %while.body.i.i73.land.rhs.i.i67_crit_edge, label %while.body.i.i73.while.end.i.i77_crit_edge

while.body.i.i73.while.end.i.i77_crit_edge:       ; preds = %while.body.i.i73
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i77

while.body.i.i73.land.rhs.i.i67_crit_edge:        ; preds = %while.body.i.i73
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i67

while.end.i.i77:                                  ; preds = %while.body.i.i73.while.end.i.i77_crit_edge, %land.rhs.i.i67.while.end.i.i77_crit_edge, %if.then57.i.while.end.i.i77_crit_edge
  %tim_idx.0.lcssa.i.i74 = phi i32 [ 36, %if.then57.i.while.end.i.i77_crit_edge ], [ %add6.i.i72, %while.body.i.i73.while.end.i.i77_crit_edge ], [ %tim_idx.034.i.i64, %land.rhs.i.i67.while.end.i.i77_crit_edge ]
  %sub7.i.i75 = add i32 %82, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %tim_idx.0.lcssa.i.i74, i32 %sub7.i.i75)
  %cmp8.i.i76 = icmp ult i32 %tim_idx.0.lcssa.i.i74, %sub7.i.i75
  br i1 %cmp8.i.i76, label %land.lhs.true.i102.i, label %while.end.i.i77.do.end.i.i83_crit_edge

while.end.i.i77.do.end.i.i83_crit_edge:           ; preds = %while.end.i.i77
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i83

land.lhs.true.i102.i:                             ; preds = %while.end.i.i77
  %arrayidx10.i.i78 = getelementptr i8, ptr %92, i32 %tim_idx.0.lcssa.i.i74
  %97 = ptrtoint ptr %arrayidx10.i.i78 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx10.i.i78, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %98)
  %cmp12.i.i79 = icmp eq i8 %98, 5
  br i1 %cmp12.i.i79, label %if.then.i103.i, label %land.lhs.true.i102.i.do.end.i.i83_crit_edge

land.lhs.true.i102.i.do.end.i.i83_crit_edge:      ; preds = %land.lhs.true.i102.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i83

if.then.i103.i:                                   ; preds = %land.lhs.true.i102.i
  call void @__sanitizer_cov_trace_pc() #13
  %99 = tail call i32 @llvm.bswap.i32(i32 %tim_idx.0.lcssa.i.i74) #11
  %100 = ptrtoint ptr %tim_idx.i59 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %tim_idx.i59, align 4
  %add14.i.i80 = add nuw i32 %tim_idx.0.lcssa.i.i74, 1
  %arrayidx15.i.i81 = getelementptr i8, ptr %92, i32 %add14.i.i80
  %101 = ptrtoint ptr %arrayidx15.i.i81 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx15.i.i81, align 1
  %conv16.i.i82 = zext i8 %102 to i32
  %103 = shl nuw i32 %conv16.i.i82, 24
  %104 = ptrtoint ptr %tim_size.i60 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %tim_size.i60, align 4
  br label %if.end59.i

do.end.i.i83:                                     ; preds = %land.lhs.true.i102.i.do.end.i.i83_crit_edge, %while.end.i.i77.do.end.i.i83_crit_edge
  %105 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mvm, align 8
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %106, ptr noundef nonnull @.str.3) #11
  br label %if.end59.i

if.end59.i:                                       ; preds = %do.end.i.i83, %if.then.i103.i, %rcu_read_unlock.exit.i.if.end59.i_crit_edge
  %data60.i = getelementptr inbounds %struct.sk_buff, ptr %beacon, i32 0, i32 19
  %107 = ptrtoint ptr %data60.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %data60.i, align 4
  %109 = ptrtoint ptr %len.i56 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %len.i56, align 4
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %108 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %110)
  %cmp.i105.i = icmp ult i32 %110, 37
  br i1 %cmp.i105.i, label %land.rhs.i106.i, label %if.end37.i.i

land.rhs.i106.i:                                  ; preds = %if.end59.i
  %.b64.i.i = load i1, ptr @iwl_mvm_find_ie_offset.__already_done, align 1
  br i1 %.b64.i.i, label %land.rhs.i113.thread.i, label %if.then.i107.i, !prof !123

land.rhs.i113.thread.i:                           ; preds = %land.rhs.i106.i
  call void @__sanitizer_cov_trace_pc() #13
  %csa_offset128.i = getelementptr inbounds %struct.iwl_mac_beacon_cmd, ptr %beacon_cmd.i48, i32 0, i32 8
  %111 = ptrtoint ptr %csa_offset128.i to i32
  call void @__asan_storeN_noabort(i32 %111, i32 4)
  store i32 0, ptr %csa_offset128.i, align 2
  br label %iwl_mvm_mac_ctxt_send_beacon_v9.exit

if.then.i107.i:                                   ; preds = %land.rhs.i106.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_find_ie_offset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 797, i32 noundef 9, ptr noundef null) #11
  br label %iwl_mvm_find_ie_offset.exit.i

if.end37.i.i:                                     ; preds = %if.end59.i
  %variable.i.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %108, i32 0, i32 6, i32 1, i32 2
  %sub.i108.i = add i32 %110, -36
  %call.i.i.i.i = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 37, ptr noundef %variable.i.i, i32 noundef %sub.i108.i, ptr noundef null, i32 noundef 0, i32 noundef 0) #11
  %tobool47.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool47.not.i.i, label %if.end37.i.i.iwl_mvm_find_ie_offset.exit.i_crit_edge, label %if.end49.i.i

if.end37.i.i.iwl_mvm_find_ie_offset.exit.i_crit_edge: ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_find_ie_offset.exit.i

if.end49.i.i:                                     ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.ptr.lhs.cast50.i.i = ptrtoint ptr %call.i.i.i.i to i32
  %sub.ptr.sub52.i.i = sub i32 %sub.ptr.lhs.cast50.i.i, %sub.ptr.rhs.cast.i.i
  br label %iwl_mvm_find_ie_offset.exit.i

iwl_mvm_find_ie_offset.exit.i:                    ; preds = %if.end49.i.i, %if.end37.i.i.iwl_mvm_find_ie_offset.exit.i_crit_edge, %if.then.i107.i
  %retval.0.i109.ph.i = phi i32 [ 0, %if.end37.i.i.iwl_mvm_find_ie_offset.exit.i_crit_edge ], [ 0, %if.then.i107.i ], [ %sub.ptr.sub52.i.i, %if.end49.i.i ]
  %112 = ptrtoint ptr %len.i56 to i32
  call void @__asan_load4_noabort(i32 %112)
  %.pr.i = load i32, ptr %len.i56, align 4
  %113 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i109.ph.i) #11
  %csa_offset.i = getelementptr inbounds %struct.iwl_mac_beacon_cmd, ptr %beacon_cmd.i48, i32 0, i32 8
  %114 = ptrtoint ptr %csa_offset.i to i32
  call void @__asan_storeN_noabort(i32 %114, i32 4)
  store i32 %113, ptr %csa_offset.i, align 2
  %115 = ptrtoint ptr %data60.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %data60.i, align 4
  %sub.ptr.rhs.cast.i110.i = ptrtoint ptr %116 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %.pr.i)
  %cmp.i111.i = icmp ult i32 %.pr.i, 37
  br i1 %cmp.i111.i, label %land.rhs.i113.i, label %if.end37.i119.i

land.rhs.i113.i:                                  ; preds = %iwl_mvm_find_ie_offset.exit.i
  %.b64.i112.pr.i = load i1, ptr @iwl_mvm_find_ie_offset.__already_done, align 1
  br i1 %.b64.i112.pr.i, label %land.rhs.i113.i.iwl_mvm_mac_ctxt_send_beacon_v9.exit_crit_edge, label %if.then.i114.i, !prof !123

land.rhs.i113.i.iwl_mvm_mac_ctxt_send_beacon_v9.exit_crit_edge: ; preds = %land.rhs.i113.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_mac_ctxt_send_beacon_v9.exit

if.then.i114.i:                                   ; preds = %land.rhs.i113.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_find_ie_offset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 797, i32 noundef 9, ptr noundef null) #11
  br label %iwl_mvm_mac_ctxt_send_beacon_v9.exit

if.end37.i119.i:                                  ; preds = %iwl_mvm_find_ie_offset.exit.i
  %variable.i115.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %116, i32 0, i32 6, i32 1, i32 2
  %sub.i116.i = add i32 %.pr.i, -36
  %call.i.i.i117.i = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 60, ptr noundef %variable.i115.i, i32 noundef %sub.i116.i, ptr noundef null, i32 noundef 0, i32 noundef 0) #11
  %tobool47.not.i118.i = icmp eq ptr %call.i.i.i117.i, null
  br i1 %tobool47.not.i118.i, label %if.end37.i119.i.iwl_mvm_mac_ctxt_send_beacon_v9.exit_crit_edge, label %if.end49.i122.i

if.end37.i119.i.iwl_mvm_mac_ctxt_send_beacon_v9.exit_crit_edge: ; preds = %if.end37.i119.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_mac_ctxt_send_beacon_v9.exit

if.end49.i122.i:                                  ; preds = %if.end37.i119.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.ptr.lhs.cast50.i120.i = ptrtoint ptr %call.i.i.i117.i to i32
  %sub.ptr.sub52.i121.i = sub i32 %sub.ptr.lhs.cast50.i120.i, %sub.ptr.rhs.cast.i110.i
  br label %iwl_mvm_mac_ctxt_send_beacon_v9.exit

iwl_mvm_mac_ctxt_send_beacon_v9.exit:             ; preds = %if.end49.i122.i, %if.end37.i119.i.iwl_mvm_mac_ctxt_send_beacon_v9.exit_crit_edge, %if.then.i114.i, %land.rhs.i113.i.iwl_mvm_mac_ctxt_send_beacon_v9.exit_crit_edge, %land.rhs.i113.thread.i
  %retval.0.i123.i = phi i32 [ %sub.ptr.sub52.i121.i, %if.end49.i122.i ], [ 0, %if.then.i114.i ], [ 0, %if.end37.i119.i.iwl_mvm_mac_ctxt_send_beacon_v9.exit_crit_edge ], [ 0, %land.rhs.i113.i.iwl_mvm_mac_ctxt_send_beacon_v9.exit_crit_edge ], [ 0, %land.rhs.i113.thread.i ]
  %117 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i123.i) #11
  %ecsa_offset.i = getelementptr inbounds %struct.iwl_mac_beacon_cmd, ptr %beacon_cmd.i48, i32 0, i32 7
  %118 = ptrtoint ptr %ecsa_offset.i to i32
  call void @__asan_storeN_noabort(i32 %118, i32 4)
  store i32 %117, ptr %ecsa_offset.i, align 2
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i.i47) #11
  %119 = getelementptr inbounds i8, ptr %cmd.i.i47, i32 8
  %120 = call ptr @memset(ptr %119, i32 0, i32 28)
  %121 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd.i.i47, i32 0, i32 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 1, ptr %121, align 4
  %123 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd.i.i47, i32 0, i32 5
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 145, ptr %123, align 4
  %len1.i.i84 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i47, i32 0, i32 6
  %125 = ptrtoint ptr %len1.i.i84 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 32, ptr %len1.i.i84, align 4
  %126 = ptrtoint ptr %cmd.i.i47 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %beacon_cmd.i48, ptr %cmd.i.i47, align 4
  %127 = ptrtoint ptr %len.i56 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %len.i56, align 4
  %conv6.i.i85 = trunc i32 %128 to i16
  %arrayidx8.i.i86 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i47, i32 0, i32 6, i32 1
  %129 = ptrtoint ptr %arrayidx8.i.i86 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv6.i.i85, ptr %arrayidx8.i.i86, align 2
  %130 = ptrtoint ptr %data60.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %data60.i, align 4
  %arrayidx11.i.i87 = getelementptr inbounds [2 x ptr], ptr %cmd.i.i47, i32 0, i32 1
  %132 = ptrtoint ptr %arrayidx11.i.i87 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %131, ptr %arrayidx11.i.i87, align 4
  %arrayidx13.i.i88 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i47, i32 0, i32 7, i32 1
  %133 = ptrtoint ptr %arrayidx13.i.i88 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 2, ptr %arrayidx13.i.i88, align 1
  %call.i125.i = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %cmd.i.i47) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i.i47) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %beacon_cmd.i48) #11
  br label %return

if.end32:                                         ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %beacon_cmd.i90) #11
  %134 = call ptr @memset(ptr %beacon_cmd.i90, i32 0, i32 76)
  call fastcc void @iwl_mvm_mac_ctxt_set_tx(ptr noundef %mvm, ptr noundef %vif, ptr noundef nonnull %beacon, ptr noundef nonnull %beacon_cmd.i90) #11
  %id.i92 = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i.i91, i32 0, i32 1
  %135 = ptrtoint ptr %id.i92 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %id.i92, align 4
  %conv.i93 = zext i16 %136 to i32
  %137 = tail call i32 @llvm.bswap.i32(i32 %conv.i93) #11
  %template_id.i94 = getelementptr inbounds %struct.iwl_mac_beacon_cmd_v7, ptr %beacon_cmd.i90, i32 0, i32 1
  %138 = ptrtoint ptr %template_id.i94 to i32
  call void @__asan_storeN_noabort(i32 %138, i32 4)
  store i32 %137, ptr %template_id.i94, align 1
  %139 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %140)
  %cmp.i95 = icmp eq i32 %140, 3
  br i1 %cmp.i95, label %if.then.i102, label %if.end32.if.end.i_crit_edge

if.end32.if.end.i_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i102:                                     ; preds = %if.end32
  %tim_idx.i96 = getelementptr inbounds %struct.iwl_mac_beacon_cmd_v7, ptr %beacon_cmd.i90, i32 0, i32 2
  %tim_size.i97 = getelementptr inbounds %struct.iwl_mac_beacon_cmd_v7, ptr %beacon_cmd.i90, i32 0, i32 3
  %data.i98 = getelementptr inbounds %struct.sk_buff, ptr %beacon, i32 0, i32 19
  %141 = ptrtoint ptr %data.i98 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %data.i98, align 4
  %len.i99 = getelementptr inbounds %struct.sk_buff, ptr %beacon, i32 0, i32 6
  %143 = ptrtoint ptr %len.i99 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %len.i99, align 4
  %sub.i.i100 = add i32 %144, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %sub.i.i100)
  %cmp33.i.i101 = icmp ugt i32 %sub.i.i100, 36
  br i1 %cmp33.i.i101, label %if.then.i102.land.rhs.i.i106_crit_edge, label %if.then.i102.while.end.i.i117_crit_edge

if.then.i102.while.end.i.i117_crit_edge:          ; preds = %if.then.i102
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i117

if.then.i102.land.rhs.i.i106_crit_edge:           ; preds = %if.then.i102
  br label %land.rhs.i.i106

land.rhs.i.i106:                                  ; preds = %while.body.i.i113.land.rhs.i.i106_crit_edge, %if.then.i102.land.rhs.i.i106_crit_edge
  %tim_idx.034.i.i103 = phi i32 [ %add6.i.i111, %while.body.i.i113.land.rhs.i.i106_crit_edge ], [ 36, %if.then.i102.land.rhs.i.i106_crit_edge ]
  %arrayidx.i.i104 = getelementptr i8, ptr %142, i32 %tim_idx.034.i.i103
  %145 = ptrtoint ptr %arrayidx.i.i104 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx.i.i104, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %146)
  %cmp1.not.i.i105 = icmp eq i8 %146, 5
  br i1 %cmp1.not.i.i105, label %land.rhs.i.i106.while.end.i.i117_crit_edge, label %while.body.i.i113

land.rhs.i.i106.while.end.i.i117_crit_edge:       ; preds = %land.rhs.i.i106
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i117

while.body.i.i113:                                ; preds = %land.rhs.i.i106
  %add.i.i107 = add nuw i32 %tim_idx.034.i.i103, 1
  %arrayidx3.i.i108 = getelementptr i8, ptr %142, i32 %add.i.i107
  %147 = ptrtoint ptr %arrayidx3.i.i108 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx3.i.i108, align 1
  %conv4.i.i109 = zext i8 %148 to i32
  %add5.i.i110 = add i32 %tim_idx.034.i.i103, 2
  %add6.i.i111 = add i32 %add5.i.i110, %conv4.i.i109
  %cmp.i.i112 = icmp ult i32 %add6.i.i111, %sub.i.i100
  br i1 %cmp.i.i112, label %while.body.i.i113.land.rhs.i.i106_crit_edge, label %while.body.i.i113.while.end.i.i117_crit_edge

while.body.i.i113.while.end.i.i117_crit_edge:     ; preds = %while.body.i.i113
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i117

while.body.i.i113.land.rhs.i.i106_crit_edge:      ; preds = %while.body.i.i113
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i106

while.end.i.i117:                                 ; preds = %while.body.i.i113.while.end.i.i117_crit_edge, %land.rhs.i.i106.while.end.i.i117_crit_edge, %if.then.i102.while.end.i.i117_crit_edge
  %tim_idx.0.lcssa.i.i114 = phi i32 [ 36, %if.then.i102.while.end.i.i117_crit_edge ], [ %add6.i.i111, %while.body.i.i113.while.end.i.i117_crit_edge ], [ %tim_idx.034.i.i103, %land.rhs.i.i106.while.end.i.i117_crit_edge ]
  %sub7.i.i115 = add i32 %144, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %tim_idx.0.lcssa.i.i114, i32 %sub7.i.i115)
  %cmp8.i.i116 = icmp ult i32 %tim_idx.0.lcssa.i.i114, %sub7.i.i115
  br i1 %cmp8.i.i116, label %land.lhs.true.i.i120, label %while.end.i.i117.do.end.i.i125_crit_edge

while.end.i.i117.do.end.i.i125_crit_edge:         ; preds = %while.end.i.i117
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i125

land.lhs.true.i.i120:                             ; preds = %while.end.i.i117
  %arrayidx10.i.i118 = getelementptr i8, ptr %142, i32 %tim_idx.0.lcssa.i.i114
  %149 = ptrtoint ptr %arrayidx10.i.i118 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx10.i.i118, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %150)
  %cmp12.i.i119 = icmp eq i8 %150, 5
  br i1 %cmp12.i.i119, label %if.then.i.i124, label %land.lhs.true.i.i120.do.end.i.i125_crit_edge

land.lhs.true.i.i120.do.end.i.i125_crit_edge:     ; preds = %land.lhs.true.i.i120
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i125

if.then.i.i124:                                   ; preds = %land.lhs.true.i.i120
  call void @__sanitizer_cov_trace_pc() #13
  %151 = tail call i32 @llvm.bswap.i32(i32 %tim_idx.0.lcssa.i.i114) #11
  %152 = ptrtoint ptr %tim_idx.i96 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %tim_idx.i96, align 4
  %add14.i.i121 = add nuw i32 %tim_idx.0.lcssa.i.i114, 1
  %arrayidx15.i.i122 = getelementptr i8, ptr %142, i32 %add14.i.i121
  %153 = ptrtoint ptr %arrayidx15.i.i122 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx15.i.i122, align 1
  %conv16.i.i123 = zext i8 %154 to i32
  %155 = shl nuw i32 %conv16.i.i123, 24
  %156 = ptrtoint ptr %tim_size.i97 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %tim_size.i97, align 4
  br label %if.end.i

do.end.i.i125:                                    ; preds = %land.lhs.true.i.i120.do.end.i.i125_crit_edge, %while.end.i.i117.do.end.i.i125_crit_edge
  %157 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %mvm, align 8
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %158, ptr noundef nonnull @.str.3) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i.i125, %if.then.i.i124, %if.end32.if.end.i_crit_edge
  %data2.i = getelementptr inbounds %struct.sk_buff, ptr %beacon, i32 0, i32 19
  %159 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %data2.i, align 4
  %len3.i = getelementptr inbounds %struct.sk_buff, ptr %beacon, i32 0, i32 6
  %161 = ptrtoint ptr %len3.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %len3.i, align 4
  %sub.ptr.rhs.cast.i.i126 = ptrtoint ptr %160 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %162)
  %cmp.i20.i = icmp ult i32 %162, 37
  br i1 %cmp.i20.i, label %land.rhs.i21.i, label %if.end37.i.i131

land.rhs.i21.i:                                   ; preds = %if.end.i
  %.b64.i.i127 = load i1, ptr @iwl_mvm_find_ie_offset.__already_done, align 1
  br i1 %.b64.i.i127, label %land.rhs.i27.thread.i, label %if.then.i22.i, !prof !123

land.rhs.i27.thread.i:                            ; preds = %land.rhs.i21.i
  call void @__sanitizer_cov_trace_pc() #13
  %csa_offset40.i = getelementptr inbounds %struct.iwl_mac_beacon_cmd_v7, ptr %beacon_cmd.i90, i32 0, i32 5
  %163 = ptrtoint ptr %csa_offset40.i to i32
  call void @__asan_storeN_noabort(i32 %163, i32 4)
  store i32 0, ptr %csa_offset40.i, align 1
  br label %iwl_mvm_mac_ctxt_send_beacon_v7.exit

if.then.i22.i:                                    ; preds = %land.rhs.i21.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_find_ie_offset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 797, i32 noundef 9, ptr noundef null) #11
  br label %iwl_mvm_find_ie_offset.exit.i137

if.end37.i.i131:                                  ; preds = %if.end.i
  %variable.i.i128 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %160, i32 0, i32 6, i32 1, i32 2
  %sub.i23.i = add i32 %162, -36
  %call.i.i.i.i129 = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 37, ptr noundef %variable.i.i128, i32 noundef %sub.i23.i, ptr noundef null, i32 noundef 0, i32 noundef 0) #11
  %tobool47.not.i.i130 = icmp eq ptr %call.i.i.i.i129, null
  br i1 %tobool47.not.i.i130, label %if.end37.i.i131.iwl_mvm_find_ie_offset.exit.i137_crit_edge, label %if.end49.i.i134

if.end37.i.i131.iwl_mvm_find_ie_offset.exit.i137_crit_edge: ; preds = %if.end37.i.i131
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_find_ie_offset.exit.i137

if.end49.i.i134:                                  ; preds = %if.end37.i.i131
  call void @__sanitizer_cov_trace_pc() #13
  %sub.ptr.lhs.cast50.i.i132 = ptrtoint ptr %call.i.i.i.i129 to i32
  %sub.ptr.sub52.i.i133 = sub i32 %sub.ptr.lhs.cast50.i.i132, %sub.ptr.rhs.cast.i.i126
  br label %iwl_mvm_find_ie_offset.exit.i137

iwl_mvm_find_ie_offset.exit.i137:                 ; preds = %if.end49.i.i134, %if.end37.i.i131.iwl_mvm_find_ie_offset.exit.i137_crit_edge, %if.then.i22.i
  %retval.0.i.ph.i = phi i32 [ 0, %if.end37.i.i131.iwl_mvm_find_ie_offset.exit.i137_crit_edge ], [ 0, %if.then.i22.i ], [ %sub.ptr.sub52.i.i133, %if.end49.i.i134 ]
  %164 = ptrtoint ptr %len3.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %.pr.i135 = load i32, ptr %len3.i, align 4
  %165 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.ph.i) #11
  %csa_offset.i136 = getelementptr inbounds %struct.iwl_mac_beacon_cmd_v7, ptr %beacon_cmd.i90, i32 0, i32 5
  %166 = ptrtoint ptr %csa_offset.i136 to i32
  call void @__asan_storeN_noabort(i32 %166, i32 4)
  store i32 %165, ptr %csa_offset.i136, align 1
  %167 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %data2.i, align 4
  %sub.ptr.rhs.cast.i24.i = ptrtoint ptr %168 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %.pr.i135)
  %cmp.i25.i = icmp ult i32 %.pr.i135, 37
  br i1 %cmp.i25.i, label %land.rhs.i27.i, label %if.end37.i33.i

land.rhs.i27.i:                                   ; preds = %iwl_mvm_find_ie_offset.exit.i137
  %.b64.i26.pr.i = load i1, ptr @iwl_mvm_find_ie_offset.__already_done, align 1
  br i1 %.b64.i26.pr.i, label %land.rhs.i27.i.iwl_mvm_mac_ctxt_send_beacon_v7.exit_crit_edge, label %if.then.i28.i, !prof !123

land.rhs.i27.i.iwl_mvm_mac_ctxt_send_beacon_v7.exit_crit_edge: ; preds = %land.rhs.i27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_mac_ctxt_send_beacon_v7.exit

if.then.i28.i:                                    ; preds = %land.rhs.i27.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_find_ie_offset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 797, i32 noundef 9, ptr noundef null) #11
  br label %iwl_mvm_mac_ctxt_send_beacon_v7.exit

if.end37.i33.i:                                   ; preds = %iwl_mvm_find_ie_offset.exit.i137
  %variable.i29.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %168, i32 0, i32 6, i32 1, i32 2
  %sub.i30.i = add i32 %.pr.i135, -36
  %call.i.i.i31.i = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 60, ptr noundef %variable.i29.i, i32 noundef %sub.i30.i, ptr noundef null, i32 noundef 0, i32 noundef 0) #11
  %tobool47.not.i32.i = icmp eq ptr %call.i.i.i31.i, null
  br i1 %tobool47.not.i32.i, label %if.end37.i33.i.iwl_mvm_mac_ctxt_send_beacon_v7.exit_crit_edge, label %if.end49.i36.i

if.end37.i33.i.iwl_mvm_mac_ctxt_send_beacon_v7.exit_crit_edge: ; preds = %if.end37.i33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_mac_ctxt_send_beacon_v7.exit

if.end49.i36.i:                                   ; preds = %if.end37.i33.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.ptr.lhs.cast50.i34.i = ptrtoint ptr %call.i.i.i31.i to i32
  %sub.ptr.sub52.i35.i = sub i32 %sub.ptr.lhs.cast50.i34.i, %sub.ptr.rhs.cast.i24.i
  br label %iwl_mvm_mac_ctxt_send_beacon_v7.exit

iwl_mvm_mac_ctxt_send_beacon_v7.exit:             ; preds = %if.end49.i36.i, %if.end37.i33.i.iwl_mvm_mac_ctxt_send_beacon_v7.exit_crit_edge, %if.then.i28.i, %land.rhs.i27.i.iwl_mvm_mac_ctxt_send_beacon_v7.exit_crit_edge, %land.rhs.i27.thread.i
  %retval.0.i37.i = phi i32 [ %sub.ptr.sub52.i35.i, %if.end49.i36.i ], [ 0, %if.then.i28.i ], [ 0, %if.end37.i33.i.iwl_mvm_mac_ctxt_send_beacon_v7.exit_crit_edge ], [ 0, %land.rhs.i27.i.iwl_mvm_mac_ctxt_send_beacon_v7.exit_crit_edge ], [ 0, %land.rhs.i27.thread.i ]
  %169 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i37.i) #11
  %ecsa_offset.i138 = getelementptr inbounds %struct.iwl_mac_beacon_cmd_v7, ptr %beacon_cmd.i90, i32 0, i32 4
  %170 = ptrtoint ptr %ecsa_offset.i138 to i32
  call void @__asan_storeN_noabort(i32 %170, i32 4)
  store i32 %169, ptr %ecsa_offset.i138, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i.i89) #11
  %171 = getelementptr inbounds i8, ptr %cmd.i.i89, i32 8
  %172 = call ptr @memset(ptr %171, i32 0, i32 28)
  %173 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd.i.i89, i32 0, i32 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 1, ptr %173, align 4
  %175 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd.i.i89, i32 0, i32 5
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 145, ptr %175, align 4
  %len1.i.i139 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i89, i32 0, i32 6
  %177 = ptrtoint ptr %len1.i.i139 to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 76, ptr %len1.i.i139, align 4
  %178 = ptrtoint ptr %cmd.i.i89 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %beacon_cmd.i90, ptr %cmd.i.i89, align 4
  %179 = ptrtoint ptr %len3.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %len3.i, align 4
  %conv6.i.i140 = trunc i32 %180 to i16
  %arrayidx8.i.i141 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i89, i32 0, i32 6, i32 1
  %181 = ptrtoint ptr %arrayidx8.i.i141 to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %conv6.i.i140, ptr %arrayidx8.i.i141, align 2
  %182 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %data2.i, align 4
  %arrayidx11.i.i142 = getelementptr inbounds [2 x ptr], ptr %cmd.i.i89, i32 0, i32 1
  %184 = ptrtoint ptr %arrayidx11.i.i142 to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %183, ptr %arrayidx11.i.i142, align 4
  %arrayidx13.i.i143 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i.i89, i32 0, i32 7, i32 1
  %185 = ptrtoint ptr %arrayidx13.i.i143 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 2, ptr %arrayidx13.i.i143, align 1
  %call.i.i144 = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %cmd.i.i89) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i.i89) #11
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %beacon_cmd.i90) #11
  br label %return

return:                                           ; preds = %iwl_mvm_mac_ctxt_send_beacon_v7.exit, %iwl_mvm_mac_ctxt_send_beacon_v9.exit, %iwl_mvm_mac_ctxt_send_beacon_v6.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i125.i, %iwl_mvm_mac_ctxt_send_beacon_v9.exit ], [ %call.i.i144, %iwl_mvm_mac_ctxt_send_beacon_v7.exit ], [ %call.i.i, %iwl_mvm_mac_ctxt_send_beacon_v6.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_mac_ctxt_beacon_changed(ptr noundef %mvm, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif, align 8
  %2 = and i32 %1, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %.not = icmp eq i32 %2, 1
  br i1 %.not, label %entry.if.end_crit_edge, label %do.end, !prof !123

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1025, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %call = tail call ptr @ieee80211_beacon_get_template(ptr noundef %4, ptr noundef %vif, ptr noundef null) #11
  %tobool21.not = icmp eq ptr %call, null
  br i1 %tobool21.not, label %if.end.cleanup_crit_edge, label %if.end23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %beacon_inject_active = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 75
  %5 = ptrtoint ptr %beacon_inject_active to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %beacon_inject_active, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool24.not = icmp eq i8 %6, 0
  br i1 %tobool24.not, label %if.end26, label %if.end23.cleanup.sink.split_crit_edge

if.end23.cleanup.sink.split_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end26:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %call27 = tail call i32 @iwl_mvm_mac_ctxt_send_beacon(ptr noundef %mvm, ptr noundef %vif, ptr noundef nonnull %call)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end26, %if.end23.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call27, %if.end26 ], [ -16, %if.end23.cleanup.sink.split_crit_edge ]
  tail call void @consume_skb(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_beacon_get_template(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_mac_ctxt_add(ptr noundef %mvm, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %uploaded = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 7
  %0 = ptrtoint ptr %uploaded to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %uploaded, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end39, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b55 = load i1, ptr @iwl_mvm_mac_ctxt_add.__already_done, align 1
  br i1 %.b55, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !123

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @iwl_mvm_mac_ctxt_add.__already_done, align 1
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vif, align 8
  %p2p.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %4 = ptrtoint ptr %p2p.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %p2p.i, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then.if.end.i.i_crit_edge, label %if.then.i.i

if.then.if.end.i.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then
  %6 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %3, label %if.then.i.i.if.end.i.i_crit_edge [
    i32 2, label %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge
    i32 3, label %sw.bb1.i.i
  ]

if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ieee80211_vif_type_p2p.exit

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

sw.bb1.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ieee80211_vif_type_p2p.exit

if.end.i.i:                                       ; preds = %if.then.i.i.if.end.i.i_crit_edge, %if.then.if.end.i.i_crit_edge
  br label %ieee80211_vif_type_p2p.exit

ieee80211_vif_type_p2p.exit:                      ; preds = %if.end.i.i, %sw.bb1.i.i, %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge
  %retval.0.i.i = phi i32 [ %3, %if.end.i.i ], [ 9, %sw.bb1.i.i ], [ 8, %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1216, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %addr, i32 noundef %retval.0.i.i) #11
  br label %cleanup

if.end39:                                         ; preds = %entry
  %call40 = tail call fastcc i32 @iwl_mvm_mac_ctx_send(ptr noundef %mvm, ptr noundef %vif, i32 noundef 1, i1 noundef zeroext true, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end43:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iwl_mvm_set_last_nonqos_seq(ptr noundef %mvm, ptr noundef %vif) #11
  %7 = ptrtoint ptr %uploaded to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %uploaded, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end39.cleanup_crit_edge, %ieee80211_vif_type_p2p.exit, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end43 ], [ -5, %ieee80211_vif_type_p2p.exit ], [ %call40, %if.end39.cleanup_crit_edge ], [ -5, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_mac_ctx_send(ptr noundef %mvm, ptr noundef %vif, i32 noundef %action, i1 noundef zeroext %force_assoc_off, ptr noundef %bssid_override) unnamed_addr #0 align 64 {
entry:
  %cmd.i71 = alloca %struct.iwl_mac_ctx_cmd, align 1
  %cmd.i61 = alloca %struct.iwl_mac_ctx_cmd, align 1
  %data.i = alloca %struct.iwl_mvm_go_iterator_data, align 1
  %cmd.i51 = alloca %struct.iwl_mac_ctx_cmd, align 1
  %cmd.i37 = alloca %struct.iwl_mac_ctx_cmd, align 1
  %cmd.i28 = alloca %struct.iwl_mac_ctx_cmd, align 1
  %cmd.i = alloca %struct.iwl_mac_ctx_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %1, label %entry.return_crit_edge [
    i32 2, label %if.end.i
    i32 3, label %sw.bb1
    i32 6, label %if.end.i56
    i32 10, label %if.end.i68
    i32 1, label %if.end.i80
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 148, ptr nonnull %cmd.i) #11
  %3 = call ptr @memset(ptr %cmd.i, i32 0, i32 148)
  call fastcc void @iwl_mvm_mac_ctxt_cmd_common(ptr noundef %mvm, ptr noundef %vif, ptr noundef nonnull %cmd.i, ptr noundef %bssid_override, i32 noundef %action) #11
  %p2p.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %4 = ptrtoint ptr %p2p.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %p2p.i, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool19.not.i = icmp eq i8 %5, 0
  br i1 %tobool19.not.i, label %if.else.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %oppps_ctwindow.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 44, i32 1
  %6 = ptrtoint ptr %oppps_ctwindow.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %oppps_ctwindow.i, align 1
  %8 = and i8 %7, 127
  %and.i = zext i8 %8 to i32
  %9 = shl nuw nsw i32 %and.i, 24
  %10 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i, i32 0, i32 16
  %ctwin.i = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i, i32 0, i32 16, i32 0, i32 1
  %11 = ptrtoint ptr %ctwin.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %9, ptr %ctwin.i, align 1
  br label %if.end21.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i, i32 0, i32 16
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else.i, %if.then20.i
  %ctxt_sta.0.i = phi ptr [ %10, %if.then20.i ], [ %12, %if.else.i ]
  %assoc.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 10
  %13 = ptrtoint ptr %assoc.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %assoc.i, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool23.not.i = icmp eq i8 %14, 0
  br i1 %tobool23.not.i, label %if.end21.i.if.else91.i_crit_edge, label %land.lhs.true.i

if.end21.i.if.else91.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else91.i

land.lhs.true.i:                                  ; preds = %if.end21.i
  %dtim_period.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 18
  %15 = ptrtoint ptr %dtim_period.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dtim_period.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool27.not.i = icmp eq i8 %16, 0
  %brmerge.i = or i1 %tobool27.not.i, %force_assoc_off
  br i1 %brmerge.i, label %land.lhs.true.i.if.else91.i_crit_edge, label %if.then30.i

land.lhs.true.i.if.else91.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else91.i

if.then30.i:                                      ; preds = %land.lhs.true.i
  %ap_sta_id31.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %17 = ptrtoint ptr %ap_sta_id31.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ap_sta_id31.i, align 8
  %sync_dtim_count.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 23
  %19 = ptrtoint ptr %sync_dtim_count.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sync_dtim_count.i, align 4
  %conv33.i = zext i8 %20 to i32
  %beacon_int.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 19
  %21 = ptrtoint ptr %beacon_int.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %beacon_int.i, align 2
  %conv35.i = zext i16 %22 to i32
  %mul.i = shl nuw nsw i32 %conv33.i, 10
  %mul36.i = mul i32 %mul.i, %conv35.i
  %sync_tsf.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 21
  %23 = ptrtoint ptr %sync_tsf.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %sync_tsf.i, align 8
  %conv38.i = zext i32 %mul36.i to i64
  %add.i = add i64 %24, %conv38.i
  %25 = call i64 @llvm.bswap.i64(i64 %add.i) #11
  %dtim_tsf.i = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i, i32 0, i32 16, i32 0, i32 0, i32 2
  %26 = ptrtoint ptr %dtim_tsf.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %25, ptr %dtim_tsf.i, align 1
  %sync_device_ts.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 22
  %27 = ptrtoint ptr %sync_device_ts.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sync_device_ts.i, align 8
  %add40.i = add i32 %28, %mul36.i
  %29 = call i32 @llvm.bswap.i32(i32 %add40.i) #11
  %dtim_time.i = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i, i32 0, i32 16, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %dtim_time.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %29, ptr %dtim_time.i, align 1
  %31 = call i32 @llvm.bswap.i32(i32 %28) #11
  %assoc_beacon_arrive_time.i = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i, i32 0, i32 16, i32 0, i32 0, i32 9
  %32 = ptrtoint ptr %assoc_beacon_arrive_time.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %assoc_beacon_arrive_time.i, align 1
  %33 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %34, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_mac_ctxt_cmd_sta, ptr noundef nonnull @.str.24, i64 noundef %add.i, i32 noundef %add40.i, i32 noundef %mul36.i) #11
  %35 = ptrtoint ptr %ctxt_sta.0.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 16777216, ptr %ctxt_sta.0.i, align 1
  %authorized.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 11
  %36 = ptrtoint ptr %authorized.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load.i = load i8, ptr %authorized.i, align 8
  %bf.clear.i = and i8 %bf.load.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %tobool51.not.i = icmp eq i8 %bf.clear.i, 0
  br i1 %tobool51.not.i, label %land.lhs.true52.i, label %if.then30.i.if.end56.i_crit_edge

if.then30.i.if.end56.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56.i

land.lhs.true52.i:                                ; preds = %if.then30.i
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %37 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %38, i32 0, i32 5, i32 8, i32 1
  %39 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %41 = and i32 %40, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i.not.i = icmp eq i32 %41, 0
  br i1 %tobool.i.not.i, label %land.lhs.true52.i.if.end56.i_crit_edge, label %if.then55.i

land.lhs.true52.i.if.end56.i_crit_edge:           ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56.i

if.then55.i:                                      ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #13
  %data_policy.i = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i, i32 0, i32 16, i32 0, i32 0, i32 6
  %42 = ptrtoint ptr %data_policy.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %data_policy.i, align 1
  %or.i = or i32 %43, 536870912
  store i32 %or.i, ptr %data_policy.i, align 1
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then55.i, %land.lhs.true52.i.if.end56.i_crit_edge, %if.then30.i.if.end56.i_crit_edge
  %conv57.i = zext i8 %18 to i32
  %fw58.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %44 = ptrtoint ptr %fw58.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fw58.i, align 8
  %num_stations.i = getelementptr inbounds %struct.iwl_fw, ptr %45, i32 0, i32 5, i32 6
  %46 = ptrtoint ptr %num_stations.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_stations.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %conv57.i)
  %cmp60.i = icmp ugt i32 %47, %conv57.i
  br i1 %cmp60.i, label %if.then62.i, label %if.end56.i.if.end95.i_crit_edge

if.end56.i.if.end95.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95.i

if.then62.i:                                      ; preds = %if.end56.i
  %48 = call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %51, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !124
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %if.then62.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then62.i.rcu_read_lock.exit.i_crit_edge:       ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then62.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 696, ptr noundef nonnull @.str.32) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then62.i.rcu_read_lock.exit.i_crit_edge
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %conv57.i
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %arrayidx.i, align 4
  %call69.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool70.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool70.not.i, label %land.lhs.true71.i, label %rcu_read_lock.exit.i.do.end79.i_crit_edge

rcu_read_lock.exit.i.do.end79.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end79.i

land.lhs.true71.i:                                ; preds = %rcu_read_lock.exit.i
  %call72.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %tobool73.not.i = icmp eq i32 %call72.i, 0
  br i1 %tobool73.not.i, label %land.lhs.true71.i.do.end79.i_crit_edge, label %land.lhs.true74.i

land.lhs.true71.i.do.end79.i_crit_edge:           ; preds = %land.lhs.true71.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end79.i

land.lhs.true74.i:                                ; preds = %land.lhs.true71.i
  %.b203.i = load i1, ptr @iwl_mvm_mac_ctxt_cmd_sta.__warned, align 1
  br i1 %.b203.i, label %land.lhs.true74.i.do.end79.i_crit_edge, label %if.then76.i

land.lhs.true74.i.do.end79.i_crit_edge:           ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end79.i

if.then76.i:                                      ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_mac_ctxt_cmd_sta.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 622, ptr noundef nonnull @.str.16) #11
  br label %do.end79.i

do.end79.i:                                       ; preds = %if.then76.i, %land.lhs.true74.i.do.end79.i_crit_edge, %land.lhs.true71.i.do.end79.i_crit_edge, %rcu_read_lock.exit.i.do.end79.i_crit_edge
  %tobool.not.i204.i = icmp eq ptr %53, null
  %cmp.i.i = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i204.i, %cmp.i.i
  br i1 %spec.select.i.i, label %do.end79.i.if.end89.i_crit_edge, label %if.then82.i

do.end79.i.if.end89.i_crit_edge:                  ; preds = %do.end79.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89.i

if.then82.i:                                      ; preds = %do.end79.i
  %sta_state.i = getelementptr inbounds %struct.ieee80211_sta, ptr %53, i32 1, i32 0, i32 5
  %54 = ptrtoint ptr %sta_state.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sta_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %55)
  %cmp84.i = icmp eq i32 %55, 4
  br i1 %cmp84.i, label %if.then86.i, label %if.then82.i.if.end89.i_crit_edge

if.then82.i.if.end89.i_crit_edge:                 ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89.i

if.then86.i:                                      ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #13
  %filter_flags.i = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i, i32 0, i32 13
  %56 = ptrtoint ptr %filter_flags.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %filter_flags.i, align 1
  %or87.i = or i32 %57, 67108864
  store i32 %or87.i, ptr %filter_flags.i, align 1
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then86.i, %if.then82.i.if.end89.i_crit_edge, %do.end79.i.if.end89.i_crit_edge
  %call.i206.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i206.i, label %if.end89.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i209.i

if.end89.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true.i209.i:                             ; preds = %if.end89.i
  %call1.i207.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i207.i)
  %tobool.not.i208.i = icmp eq i32 %call1.i207.i, 0
  br i1 %tobool.not.i208.i, label %land.lhs.true.i209.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i211.i

land.lhs.true.i209.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i209.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i211.i:                            ; preds = %land.lhs.true.i209.i
  %.b4.i210.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i210.i, label %land.lhs.true2.i211.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i212.i

land.lhs.true2.i211.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i211.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

if.then.i212.i:                                   ; preds = %land.lhs.true2.i211.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 724, ptr noundef nonnull @.str.36) #11
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i212.i, %land.lhs.true2.i211.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i209.i.rcu_read_unlock.exit.i_crit_edge, %if.end89.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !125
  %58 = call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i.i.i213.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i.i.i213.i to ptr
  %preempt_count.i.i.i.i214.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i.i.i214.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i.i.i214.i, align 4
  %sub.i.i.i.i = add i32 %61, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i214.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %if.end95.i

if.else91.i:                                      ; preds = %land.lhs.true.i.if.else91.i_crit_edge, %if.end21.i.if.else91.i_crit_edge
  %62 = ptrtoint ptr %ctxt_sta.0.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 0, ptr %ctxt_sta.0.i, align 1
  %filter_flags93.i = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i, i32 0, i32 13
  %63 = ptrtoint ptr %filter_flags93.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %filter_flags93.i, align 1
  %or94.i = or i32 %64, 1073741824
  store i32 %or94.i, ptr %filter_flags93.i, align 1
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.else91.i, %rcu_read_unlock.exit.i, %if.end56.i.if.end95.i_crit_edge
  %beacon_int97.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 19
  %65 = ptrtoint ptr %beacon_int97.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %beacon_int97.i, align 2
  %conv98.i = zext i16 %66 to i32
  %67 = call i32 @llvm.bswap.i32(i32 %conv98.i) #11
  %bi.i = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i, i32 0, i32 16, i32 0, i32 0, i32 3
  %68 = ptrtoint ptr %bi.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %67, ptr %bi.i, align 1
  %dtim_period103.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 18
  %69 = ptrtoint ptr %dtim_period103.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %dtim_period103.i, align 8
  %conv104.i = zext i8 %70 to i32
  %mul105.i = mul nuw nsw i32 %conv104.i, %conv98.i
  %71 = call i32 @llvm.bswap.i32(i32 %mul105.i) #11
  %dtim_interval.i = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i, i32 0, i32 16, i32 0, i32 0, i32 5
  %72 = ptrtoint ptr %dtim_interval.i to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 %71, ptr %dtim_interval.i, align 1
  %hw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %73 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw.i, align 4
  %listen_interval.i = getelementptr inbounds %struct.ieee80211_conf, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %listen_interval.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %listen_interval.i, align 4
  %conv106.i = zext i16 %76 to i32
  %77 = call i32 @llvm.bswap.i32(i32 %conv106.i) #11
  %listen_interval107.i = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i, i32 0, i32 16, i32 0, i32 0, i32 7
  %78 = ptrtoint ptr %listen_interval107.i to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 %77, ptr %listen_interval107.i, align 1
  %aid.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 13
  %79 = ptrtoint ptr %aid.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %aid.i, align 2
  %conv109.i = zext i16 %80 to i32
  %81 = call i32 @llvm.bswap.i32(i32 %conv109.i) #11
  %assoc_id.i = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i, i32 0, i32 16, i32 0, i32 0, i32 8
  %82 = ptrtoint ptr %assoc_id.i to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 %81, ptr %assoc_id.i, align 1
  %probe_req_reg.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 13
  %83 = ptrtoint ptr %probe_req_reg.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %probe_req_reg.i, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool110.not.i = icmp eq i8 %84, 0
  br i1 %tobool110.not.i, label %if.end95.i.if.end124.i_crit_edge, label %land.lhs.true112.i

if.end95.i.if.end124.i_crit_edge:                 ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end124.i

land.lhs.true112.i:                               ; preds = %if.end95.i
  %85 = ptrtoint ptr %assoc.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %assoc.i, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool115.not.i = icmp eq i8 %86, 0
  br i1 %tobool115.not.i, label %land.lhs.true112.i.if.end124.i_crit_edge, label %land.lhs.true117.i

land.lhs.true112.i.if.end124.i_crit_edge:         ; preds = %land.lhs.true112.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end124.i

land.lhs.true117.i:                               ; preds = %land.lhs.true112.i
  %87 = ptrtoint ptr %p2p.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %p2p.i, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool119.not.i = icmp eq i8 %88, 0
  br i1 %tobool119.not.i, label %land.lhs.true117.i.if.end124.i_crit_edge, label %if.then121.i

land.lhs.true117.i.if.end124.i_crit_edge:         ; preds = %land.lhs.true117.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end124.i

if.then121.i:                                     ; preds = %land.lhs.true117.i
  call void @__sanitizer_cov_trace_pc() #13
  %filter_flags122.i = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i, i32 0, i32 13
  %89 = ptrtoint ptr %filter_flags122.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %filter_flags122.i, align 1
  %or123.i = or i32 %90, 1048576
  store i32 %or123.i, ptr %filter_flags122.i, align 1
  br label %if.end124.i

if.end124.i:                                      ; preds = %if.then121.i, %land.lhs.true117.i.if.end124.i_crit_edge, %land.lhs.true112.i.if.end124.i_crit_edge, %if.end95.i.if.end124.i_crit_edge
  %he_support.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 5
  %91 = ptrtoint ptr %he_support.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %he_support.i, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool126.not.i = icmp eq i8 %92, 0
  br i1 %tobool126.not.i, label %if.end124.i.if.end152.i_crit_edge, label %land.lhs.true128.i

if.end124.i.if.end152.i_crit_edge:                ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end152.i

land.lhs.true128.i:                               ; preds = %if.end124.i
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 12) to i32))
  %93 = load i8, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 12), align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool129.not.i = icmp eq i8 %93, 0
  br i1 %tobool129.not.i, label %if.then130.i, label %land.lhs.true128.i.if.end152.i_crit_edge

land.lhs.true128.i.if.end152.i_crit_edge:         ; preds = %land.lhs.true128.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end152.i

if.then130.i:                                     ; preds = %land.lhs.true128.i
  %filter_flags131.i = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i, i32 0, i32 13
  %94 = ptrtoint ptr %filter_flags131.i to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %filter_flags131.i, align 1
  %or132.i = or i32 %95, 4194304
  store i32 %or132.i, ptr %filter_flags131.i, align 1
  %twt_requester.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 6
  %96 = ptrtoint ptr %twt_requester.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %twt_requester.i, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool134.not.i = icmp eq i8 %97, 0
  br i1 %tobool134.not.i, label %if.then130.i.if.end139.i_crit_edge, label %if.then136.i

if.then130.i.if.end139.i_crit_edge:               ; preds = %if.then130.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139.i

if.then136.i:                                     ; preds = %if.then130.i
  call void @__sanitizer_cov_trace_pc() #13
  %data_policy137.i = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i, i32 0, i32 16, i32 0, i32 0, i32 6
  %98 = ptrtoint ptr %data_policy137.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %data_policy137.i, align 1
  %or138.i = or i32 %99, 16777216
  store i32 %or138.i, ptr %data_policy137.i, align 1
  br label %if.end139.i

if.end139.i:                                      ; preds = %if.then136.i, %if.then130.i.if.end139.i_crit_edge
  %twt_protected.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 8
  %100 = ptrtoint ptr %twt_protected.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %twt_protected.i, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool141.not.i = icmp eq i8 %101, 0
  br i1 %tobool141.not.i, label %if.end139.i.if.end145.i_crit_edge, label %if.then142.i

if.end139.i.if.end145.i_crit_edge:                ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end145.i

if.then142.i:                                     ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #13
  %data_policy143.i = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i, i32 0, i32 16, i32 0, i32 0, i32 6
  %102 = ptrtoint ptr %data_policy143.i to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %data_policy143.i, align 1
  %or144.i = or i32 %103, 134217728
  store i32 %or144.i, ptr %data_policy143.i, align 1
  br label %if.end145.i

if.end145.i:                                      ; preds = %if.then142.i, %if.end139.i.if.end145.i_crit_edge
  %twt_broadcast.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 9
  %104 = ptrtoint ptr %twt_broadcast.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %twt_broadcast.i, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool147.not.i = icmp eq i8 %105, 0
  br i1 %tobool147.not.i, label %if.end145.i.if.end152.i_crit_edge, label %if.then148.i

if.end145.i.if.end152.i_crit_edge:                ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end152.i

if.then148.i:                                     ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #13
  %data_policy149.i = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i, i32 0, i32 16, i32 0, i32 0, i32 6
  %106 = ptrtoint ptr %data_policy149.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %data_policy149.i, align 1
  %or150.i = or i32 %107, 268435456
  store i32 %or150.i, ptr %data_policy149.i, align 1
  br label %if.end152.i

if.end152.i:                                      ; preds = %if.then148.i, %if.end145.i.if.end152.i_crit_edge, %land.lhs.true128.i.if.end152.i_crit_edge, %if.end124.i.if.end152.i_crit_edge
  %call.i215.i = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 40, i32 noundef 0, i16 noundef zeroext 148, ptr noundef nonnull %cmd.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i215.i)
  %tobool.not.i216.i = icmp eq i32 %call.i215.i, 0
  br i1 %tobool.not.i216.i, label %if.end152.i.iwl_mvm_mac_ctxt_cmd_sta.exit_crit_edge, label %do.end.i.i

if.end152.i.iwl_mvm_mac_ctxt_cmd_sta.exit_crit_edge: ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_mac_ctxt_cmd_sta.exit

do.end.i.i:                                       ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #13
  %108 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mvm, align 8
  %action.i.i = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i, i32 0, i32 1
  %110 = ptrtoint ptr %action.i.i to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %action.i.i, align 1
  %112 = call i32 @llvm.bswap.i32(i32 %111) #11
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %109, i32 noundef 0, ptr noundef nonnull @.str.28, i32 noundef %112, i32 noundef %call.i215.i) #11
  br label %iwl_mvm_mac_ctxt_cmd_sta.exit

iwl_mvm_mac_ctxt_cmd_sta.exit:                    ; preds = %do.end.i.i, %if.end152.i.iwl_mvm_mac_ctxt_cmd_sta.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %cmd.i) #11
  br label %return

sw.bb1:                                           ; preds = %entry
  %p2p = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %113 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %p2p, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool2.not = icmp eq i8 %114, 0
  br i1 %tobool2.not, label %if.end.i34, label %if.end.i48

if.end.i34:                                       ; preds = %sw.bb1
  call void @llvm.lifetime.start.p0(i64 148, ptr nonnull %cmd.i28) #11
  %115 = call ptr @memset(ptr %cmd.i28, i32 0, i32 148)
  call fastcc void @iwl_mvm_mac_ctxt_cmd_common(ptr noundef %mvm, ptr noundef %vif, ptr noundef nonnull %cmd.i28, ptr noundef null, i32 noundef %action) #11
  %116 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i28, i32 0, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %action)
  %cmp20.i = icmp eq i32 %action, 1
  call fastcc void @iwl_mvm_mac_ctxt_cmd_fill_ap(ptr noundef %mvm, ptr noundef %vif, ptr noundef nonnull %cmd.i28, ptr noundef %116, i1 noundef zeroext %cmp20.i) #11
  %call.i.i32 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 40, i32 noundef 0, i16 noundef zeroext 148, ptr noundef nonnull %cmd.i28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32)
  %tobool.not.i.i33 = icmp eq i32 %call.i.i32, 0
  br i1 %tobool.not.i.i33, label %if.end.i34.iwl_mvm_mac_ctxt_cmd_ap.exit_crit_edge, label %do.end.i.i36

if.end.i34.iwl_mvm_mac_ctxt_cmd_ap.exit_crit_edge: ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_mac_ctxt_cmd_ap.exit

do.end.i.i36:                                     ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #13
  %117 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mvm, align 8
  %action.i.i35 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i28, i32 0, i32 1
  %119 = ptrtoint ptr %action.i.i35 to i32
  call void @__asan_loadN_noabort(i32 %119, i32 4)
  %120 = load i32, ptr %action.i.i35, align 1
  %121 = call i32 @llvm.bswap.i32(i32 %120) #11
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %118, i32 noundef 0, ptr noundef nonnull @.str.28, i32 noundef %121, i32 noundef %call.i.i32) #11
  br label %iwl_mvm_mac_ctxt_cmd_ap.exit

iwl_mvm_mac_ctxt_cmd_ap.exit:                     ; preds = %do.end.i.i36, %if.end.i34.iwl_mvm_mac_ctxt_cmd_ap.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %cmd.i28) #11
  br label %return

if.end.i48:                                       ; preds = %sw.bb1
  call void @llvm.lifetime.start.p0(i64 148, ptr nonnull %cmd.i37) #11
  %122 = call ptr @memset(ptr %cmd.i37, i32 0, i32 148)
  call fastcc void @iwl_mvm_mac_ctxt_cmd_common(ptr noundef %mvm, ptr noundef %vif, ptr noundef nonnull %cmd.i37, ptr noundef null, i32 noundef %action) #11
  %123 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i37, i32 0, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %action)
  %cmp21.i = icmp eq i32 %action, 1
  call fastcc void @iwl_mvm_mac_ctxt_cmd_fill_ap(ptr noundef %mvm, ptr noundef %vif, ptr noundef nonnull %cmd.i37, ptr noundef %123, i1 noundef zeroext %cmp21.i) #11
  %oppps_ctwindow.i43 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 44, i32 1
  %124 = ptrtoint ptr %oppps_ctwindow.i43 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %oppps_ctwindow.i43, align 1
  %126 = and i8 %125, 127
  %and.i44 = zext i8 %126 to i32
  %127 = shl nuw nsw i32 %and.i44, 24
  %ctwin.i45 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i37, i32 0, i32 16, i32 0, i32 0, i32 8
  %128 = ptrtoint ptr %ctwin.i45 to i32
  call void @__asan_storeN_noabort(i32 %128, i32 4)
  store i32 %127, ptr %ctwin.i45, align 1
  %.lobit.i = lshr i8 %125, 7
  %129 = zext i8 %.lobit.i to i32
  %130 = shl nuw nsw i32 %129, 24
  %opp_ps_enabled.i = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i37, i32 0, i32 16, i32 0, i32 0, i32 9
  %131 = ptrtoint ptr %opp_ps_enabled.i to i32
  call void @__asan_storeN_noabort(i32 %131, i32 4)
  store i32 %130, ptr %opp_ps_enabled.i, align 1
  %call.i.i46 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 40, i32 noundef 0, i16 noundef zeroext 148, ptr noundef nonnull %cmd.i37) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i46)
  %tobool.not.i.i47 = icmp eq i32 %call.i.i46, 0
  br i1 %tobool.not.i.i47, label %if.end.i48.iwl_mvm_mac_ctxt_cmd_go.exit_crit_edge, label %do.end.i.i50

if.end.i48.iwl_mvm_mac_ctxt_cmd_go.exit_crit_edge: ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_mac_ctxt_cmd_go.exit

do.end.i.i50:                                     ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #13
  %132 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %mvm, align 8
  %action.i.i49 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i37, i32 0, i32 1
  %134 = ptrtoint ptr %action.i.i49 to i32
  call void @__asan_loadN_noabort(i32 %134, i32 4)
  %135 = load i32, ptr %action.i.i49, align 1
  %136 = call i32 @llvm.bswap.i32(i32 %135) #11
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %133, i32 noundef 0, ptr noundef nonnull @.str.28, i32 noundef %136, i32 noundef %call.i.i46) #11
  br label %iwl_mvm_mac_ctxt_cmd_go.exit

iwl_mvm_mac_ctxt_cmd_go.exit:                     ; preds = %do.end.i.i50, %if.end.i48.iwl_mvm_mac_ctxt_cmd_go.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %cmd.i37) #11
  br label %return

if.end.i56:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 148, ptr nonnull %cmd.i51) #11
  %137 = call ptr @memset(ptr %cmd.i51, i32 0, i32 148)
  %snif_queue.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 142
  %138 = ptrtoint ptr %snif_queue.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %snif_queue.i, align 2
  %conv.i = zext i16 %139 to i32
  %shl.i = shl nuw i32 1, %conv.i
  call fastcc void @iwl_mvm_mac_ctxt_cmd_common(ptr noundef %mvm, ptr noundef %vif, ptr noundef nonnull %cmd.i51, ptr noundef null, i32 noundef %action) #11
  %filter_flags.i54 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i51, i32 0, i32 13
  %140 = ptrtoint ptr %filter_flags.i54 to i32
  call void @__asan_storeN_noabort(i32 %140, i32 4)
  store i32 1192755200, ptr %filter_flags.i54, align 1
  %hw.i55 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %141 = ptrtoint ptr %hw.i55 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %hw.i55, align 4
  %flags.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %142, i32 0, i32 4
  %143 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %flags.i.i, align 4
  %or.i.i.i = or i32 %144, 2
  store i32 %or.i.i.i, ptr %flags.i.i, align 4
  %snif_sta.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 63
  %145 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %vif, align 8
  %call.i = call i32 @iwl_mvm_allocate_int_sta(ptr noundef %mvm, ptr noundef %snif_sta.i, i32 noundef %shl.i, i32 noundef %146, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool21.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.end.i56.iwl_mvm_mac_ctxt_cmd_listener.exit_crit_edge

if.end.i56.iwl_mvm_mac_ctxt_cmd_listener.exit_crit_edge: ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_mac_ctxt_cmd_listener.exit

if.end23.i:                                       ; preds = %if.end.i56
  %call.i.i57 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 40, i32 noundef 0, i16 noundef zeroext 148, ptr noundef nonnull %cmd.i51) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i57)
  %tobool.not.i.i58 = icmp eq i32 %call.i.i57, 0
  br i1 %tobool.not.i.i58, label %if.end23.i.iwl_mvm_mac_ctxt_cmd_listener.exit_crit_edge, label %do.end.i.i60

if.end23.i.iwl_mvm_mac_ctxt_cmd_listener.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_mac_ctxt_cmd_listener.exit

do.end.i.i60:                                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  %147 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mvm, align 8
  %action.i.i59 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i51, i32 0, i32 1
  %149 = ptrtoint ptr %action.i.i59 to i32
  call void @__asan_loadN_noabort(i32 %149, i32 4)
  %150 = load i32, ptr %action.i.i59, align 1
  %151 = call i32 @llvm.bswap.i32(i32 %150) #11
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %148, i32 noundef 0, ptr noundef nonnull @.str.28, i32 noundef %151, i32 noundef %call.i.i57) #11
  br label %iwl_mvm_mac_ctxt_cmd_listener.exit

iwl_mvm_mac_ctxt_cmd_listener.exit:               ; preds = %do.end.i.i60, %if.end23.i.iwl_mvm_mac_ctxt_cmd_listener.exit_crit_edge, %if.end.i56.iwl_mvm_mac_ctxt_cmd_listener.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i56.iwl_mvm_mac_ctxt_cmd_listener.exit_crit_edge ], [ 0, %if.end23.i.iwl_mvm_mac_ctxt_cmd_listener.exit_crit_edge ], [ %call.i.i57, %do.end.i.i60 ]
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %cmd.i51) #11
  br label %return

if.end.i68:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 148, ptr nonnull %cmd.i61) #11
  %152 = call ptr @memset(ptr %cmd.i61, i32 0, i32 148)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #11
  %153 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 0, ptr %data.i, align 1
  call fastcc void @iwl_mvm_mac_ctxt_cmd_common(ptr noundef %mvm, ptr noundef %vif, ptr noundef nonnull %cmd.i61, ptr noundef null, i32 noundef %action) #11
  %filter_flags.i64 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i61, i32 0, i32 13
  %154 = ptrtoint ptr %filter_flags.i64 to i32
  call void @__asan_storeN_noabort(i32 %154, i32 4)
  store i32 1048576, ptr %filter_flags.i64, align 1
  %hw.i65 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %155 = ptrtoint ptr %hw.i65 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %hw.i65, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %156, i32 noundef 1, ptr noundef nonnull @iwl_mvm_go_iterator, ptr noundef nonnull %data.i) #11
  %157 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %data.i, align 1, !range !122
  %159 = zext i8 %158 to i32
  %160 = shl nuw nsw i32 %159, 24
  %161 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i61, i32 0, i32 16
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_storeN_noabort(i32 %162, i32 4)
  store i32 %160, ptr %161, align 1
  %call.i.i66 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 40, i32 noundef 0, i16 noundef zeroext 148, ptr noundef nonnull %cmd.i61) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i66)
  %tobool.not.i.i67 = icmp eq i32 %call.i.i66, 0
  br i1 %tobool.not.i.i67, label %if.end.i68.iwl_mvm_mac_ctxt_cmd_p2p_device.exit_crit_edge, label %do.end.i.i70

if.end.i68.iwl_mvm_mac_ctxt_cmd_p2p_device.exit_crit_edge: ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_mac_ctxt_cmd_p2p_device.exit

do.end.i.i70:                                     ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #13
  %163 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %mvm, align 8
  %action.i.i69 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i61, i32 0, i32 1
  %165 = ptrtoint ptr %action.i.i69 to i32
  call void @__asan_loadN_noabort(i32 %165, i32 4)
  %166 = load i32, ptr %action.i.i69, align 1
  %167 = call i32 @llvm.bswap.i32(i32 %166) #11
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %164, i32 noundef 0, ptr noundef nonnull @.str.28, i32 noundef %167, i32 noundef %call.i.i66) #11
  br label %iwl_mvm_mac_ctxt_cmd_p2p_device.exit

iwl_mvm_mac_ctxt_cmd_p2p_device.exit:             ; preds = %do.end.i.i70, %if.end.i68.iwl_mvm_mac_ctxt_cmd_p2p_device.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #11
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %cmd.i61) #11
  br label %return

if.end.i80:                                       ; preds = %entry
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 148, ptr nonnull %cmd.i71) #11
  %168 = call ptr @memset(ptr %cmd.i71, i32 0, i32 148)
  call fastcc void @iwl_mvm_mac_ctxt_cmd_common(ptr noundef %mvm, ptr noundef %vif, ptr noundef nonnull %cmd.i71, ptr noundef null, i32 noundef %action) #11
  %filter_flags.i74 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i71, i32 0, i32 13
  %169 = ptrtoint ptr %filter_flags.i74 to i32
  call void @__asan_storeN_noabort(i32 %169, i32 4)
  store i32 1141899264, ptr %filter_flags.i74, align 1
  %beacon_int.i75 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 19
  %170 = ptrtoint ptr %beacon_int.i75 to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %beacon_int.i75, align 2
  %conv.i76 = zext i16 %171 to i32
  %172 = call i32 @llvm.bswap.i32(i32 %conv.i76) #11
  %173 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i71, i32 0, i32 16
  %bi.i77 = getelementptr inbounds %struct.iwl_mac_data_ibss, ptr %173, i32 0, i32 2
  %174 = ptrtoint ptr %bi.i77 to i32
  call void @__asan_storeN_noabort(i32 %174, i32 4)
  store i32 %172, ptr %bi.i77, align 1
  %id.i = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i.i, i32 0, i32 1
  %175 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %id.i, align 4
  %conv19.i = zext i16 %176 to i32
  %177 = call i32 @llvm.bswap.i32(i32 %conv19.i) #11
  %beacon_template.i = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i71, i32 0, i32 16, i32 0, i32 0, i32 4
  %178 = ptrtoint ptr %beacon_template.i to i32
  call void @__asan_storeN_noabort(i32 %178, i32 4)
  store i32 %177, ptr %beacon_template.i, align 1
  %call.i.i78 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 40, i32 noundef 0, i16 noundef zeroext 148, ptr noundef nonnull %cmd.i71) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i78)
  %tobool.not.i.i79 = icmp eq i32 %call.i.i78, 0
  br i1 %tobool.not.i.i79, label %if.end.i80.iwl_mvm_mac_ctxt_cmd_ibss.exit_crit_edge, label %do.end.i.i82

if.end.i80.iwl_mvm_mac_ctxt_cmd_ibss.exit_crit_edge: ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_mac_ctxt_cmd_ibss.exit

do.end.i.i82:                                     ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #13
  %179 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %mvm, align 8
  %action.i.i81 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd.i71, i32 0, i32 1
  %181 = ptrtoint ptr %action.i.i81 to i32
  call void @__asan_loadN_noabort(i32 %181, i32 4)
  %182 = load i32, ptr %action.i.i81, align 1
  %183 = call i32 @llvm.bswap.i32(i32 %182) #11
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %180, i32 noundef 0, ptr noundef nonnull @.str.28, i32 noundef %183, i32 noundef %call.i.i78) #11
  br label %iwl_mvm_mac_ctxt_cmd_ibss.exit

iwl_mvm_mac_ctxt_cmd_ibss.exit:                   ; preds = %do.end.i.i82, %if.end.i80.iwl_mvm_mac_ctxt_cmd_ibss.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %cmd.i71) #11
  br label %return

return:                                           ; preds = %iwl_mvm_mac_ctxt_cmd_ibss.exit, %iwl_mvm_mac_ctxt_cmd_p2p_device.exit, %iwl_mvm_mac_ctxt_cmd_listener.exit, %iwl_mvm_mac_ctxt_cmd_go.exit, %iwl_mvm_mac_ctxt_cmd_ap.exit, %iwl_mvm_mac_ctxt_cmd_sta.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i.i78, %iwl_mvm_mac_ctxt_cmd_ibss.exit ], [ %call.i.i66, %iwl_mvm_mac_ctxt_cmd_p2p_device.exit ], [ %retval.0.i, %iwl_mvm_mac_ctxt_cmd_listener.exit ], [ %call.i.i46, %iwl_mvm_mac_ctxt_cmd_go.exit ], [ %call.i.i32, %iwl_mvm_mac_ctxt_cmd_ap.exit ], [ %call.i215.i, %iwl_mvm_mac_ctxt_cmd_sta.exit ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_set_last_nonqos_seq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_mac_ctxt_changed(ptr noundef %mvm, ptr noundef %vif, i1 noundef zeroext %force_assoc_off, ptr noundef %bssid_override) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %uploaded = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 7
  %0 = ptrtoint ptr %uploaded to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %uploaded, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.rhs, label %if.end41

land.rhs:                                         ; preds = %entry
  %.b49 = load i1, ptr @iwl_mvm_mac_ctxt_changed.__already_done, align 1
  br i1 %.b49, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !123

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @iwl_mvm_mac_ctxt_changed.__already_done, align 1
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vif, align 8
  %p2p.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %4 = ptrtoint ptr %p2p.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %p2p.i, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then.if.end.i.i_crit_edge, label %if.then.i.i

if.then.if.end.i.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then
  %6 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %3, label %if.then.i.i.if.end.i.i_crit_edge [
    i32 2, label %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge
    i32 3, label %sw.bb1.i.i
  ]

if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ieee80211_vif_type_p2p.exit

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

sw.bb1.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ieee80211_vif_type_p2p.exit

if.end.i.i:                                       ; preds = %if.then.i.i.if.end.i.i_crit_edge, %if.then.if.end.i.i_crit_edge
  br label %ieee80211_vif_type_p2p.exit

ieee80211_vif_type_p2p.exit:                      ; preds = %if.end.i.i, %sw.bb1.i.i, %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge
  %retval.0.i.i = phi i32 [ %3, %if.end.i.i ], [ 9, %sw.bb1.i.i ], [ 8, %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1237, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %addr, i32 noundef %retval.0.i.i) #11
  br label %cleanup

if.end41:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call43 = tail call fastcc i32 @iwl_mvm_mac_ctx_send(ptr noundef %mvm, ptr noundef %vif, i32 noundef 2, i1 noundef zeroext %force_assoc_off, ptr noundef %bssid_override)
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %ieee80211_vif_type_p2p.exit, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call43, %if.end41 ], [ -5, %ieee80211_vif_type_p2p.exit ], [ -5, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_mac_ctxt_remove(ptr noundef %mvm, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_mac_ctx_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 148, ptr nonnull %cmd) #11
  %uploaded = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 7
  %0 = ptrtoint ptr %uploaded to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %uploaded, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b73 = load i1, ptr @iwl_mvm_mac_ctxt_remove.__already_done, align 1
  br i1 %.b73, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !123

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @iwl_mvm_mac_ctxt_remove.__already_done, align 1
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vif, align 8
  %p2p.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %4 = ptrtoint ptr %p2p.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %p2p.i, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then.if.end.i.i_crit_edge, label %if.then.i.i

if.then.if.end.i.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then
  %6 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %3, label %if.then.i.i.if.end.i.i_crit_edge [
    i32 2, label %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge
    i32 3, label %sw.bb1.i.i
  ]

if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ieee80211_vif_type_p2p.exit

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

sw.bb1.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ieee80211_vif_type_p2p.exit

if.end.i.i:                                       ; preds = %if.then.i.i.if.end.i.i_crit_edge, %if.then.if.end.i.i_crit_edge
  br label %ieee80211_vif_type_p2p.exit

ieee80211_vif_type_p2p.exit:                      ; preds = %if.end.i.i, %sw.bb1.i.i, %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge
  %retval.0.i.i = phi i32 [ %3, %if.end.i.i ], [ 9, %sw.bb1.i.i ], [ 8, %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1251, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef %addr, i32 noundef %retval.0.i.i) #11
  br label %cleanup

if.end40:                                         ; preds = %entry
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %7 = getelementptr inbounds i8, ptr %cmd, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 140)
  %id = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %id, align 4
  %conv = zext i16 %10 to i32
  %color = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 2
  %11 = ptrtoint ptr %color to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %color, align 2
  %conv41 = zext i16 %12 to i32
  %shl42 = shl nuw nsw i32 %conv41, 8
  %or = or i32 %shl42, %conv
  %13 = tail call i32 @llvm.bswap.i32(i32 %or)
  %14 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %cmd, align 4
  %action = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 1
  %15 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 50331648, ptr %action, align 4
  %call43 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 40, i32 noundef 0, i16 noundef zeroext 148, ptr noundef nonnull %cmd) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end52, label %do.end49

do.end49:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %17, i32 noundef 0, ptr noundef nonnull @.str.7, i32 noundef %call43) #11
  br label %cleanup

if.end52:                                         ; preds = %if.end40
  %18 = ptrtoint ptr %uploaded to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %uploaded, align 4
  %19 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %20)
  %cmp = icmp eq i32 %20, 6
  br i1 %cmp, label %if.then55, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %flags = getelementptr inbounds %struct.ieee80211_hw, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %and.i = and i32 %24, -3
  store i32 %and.i, ptr %flags, align 4
  call void @iwl_mvm_dealloc_snif_sta(ptr noundef %mvm) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.end52.cleanup_crit_edge, %do.end49, %ieee80211_vif_type_p2p.exit, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call43, %do.end49 ], [ -5, %ieee80211_vif_type_p2p.exit ], [ 0, %if.then55 ], [ 0, %if.end52.cleanup_crit_edge ], [ -5, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd_pdu(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_dealloc_snif_sta(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rx_beacon_notif(ptr noundef %mvm, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #11
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
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #11
  %sub.i = add nsw i32 %9, -4
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %10 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i216 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i216)
  %cmp.not = icmp eq i32 %call.i216, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !121

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1326, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %gp2 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 3
  %11 = ptrtoint ptr %gp2 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %gp2, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %ap_last_beacon_gp2 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 153
  %14 = ptrtoint ptr %ap_last_beacon_gp2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ap_last_beacon_gp2, align 4
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %15 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %16, i32 0, i32 5, i32 7, i32 1
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %19 = and i32 %18, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.i.not = icmp eq i32 %19, 0
  br i1 %tobool.i.i.not, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %sub.i)
  %cmp31 = icmp ult i32 %sub.i, 60
  br i1 %cmp31, label %if.then29.cleanup164_crit_edge, label %cleanup, !prof !121

if.then29.cleanup164_crit_edge:                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup164

cleanup:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %ibss_mgr_status = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 7, i32 1
  %20 = ptrtoint ptr %ibss_mgr_status to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %ibss_mgr_status, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp40 = icmp ne i32 %21, 0
  %ibss_manager = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 154
  %frombool = zext i1 %cmp40 to i8
  %22 = ptrtoint ptr %ibss_manager to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool, ptr %ibss_manager, align 8
  %trans.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %23 = ptrtoint ptr %trans.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %trans.i.i, align 4
  %trans_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %trans_cfg.i.i, align 4
  %use_tfh.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %use_tfh.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load.i.i = load i16, ptr %use_tfh.i.i, align 4
  %28 = and i16 %bf.load.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool.i.not.i = icmp eq i16 %28, 0
  %status.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 6
  %status1.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 5, i32 1
  %retval.0.i = select i1 %tobool.i.not.i, ptr %status1.i, ptr %status.i
  %29 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %retval.0.i, align 1
  %31 = lshr i16 %30, 8
  %32 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mvm, align 8
  %conv48 = zext i16 %31 to i32
  %failure_frame = getelementptr inbounds %struct.iwl_mvm_tx_resp, ptr %data, i32 0, i32 3
  %34 = ptrtoint ptr %failure_frame to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %failure_frame, align 1
  %conv49 = zext i8 %35 to i32
  %tsf = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %36 = ptrtoint ptr %tsf to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %tsf, align 1
  %38 = tail call i64 @llvm.bswap.i64(i64 %37)
  %39 = lshr i64 %37, 32
  %40 = trunc i64 %39 to i32
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %33, i32 noundef 16777216, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_beacon_notif, ptr noundef nonnull @.str.8, i32 noundef %conv48, i32 noundef %conv49, i64 noundef %38, i32 noundef %13, i32 noundef %41) #11
  br label %do.body82

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i)
  %cmp53 = icmp ult i32 %sub.i, 20
  br i1 %cmp53, label %if.else.cleanup164_crit_edge, label %if.end62, !prof !121

if.else.cleanup164_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup164

if.end62:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %ibss_mgr_status63 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2, i32 1
  %42 = ptrtoint ptr %ibss_mgr_status63 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %ibss_mgr_status63, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp64 = icmp ne i32 %43, 0
  %ibss_manager66 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 154
  %frombool67 = zext i1 %cmp64 to i8
  %44 = ptrtoint ptr %ibss_manager66 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %frombool67, ptr %ibss_manager66, align 8
  %45 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %data, align 1
  %47 = lshr i32 %46, 24
  %conv70 = trunc i32 %47 to i16
  %48 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mvm, align 8
  %tsf77 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %50 = ptrtoint ptr %tsf77 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %51 = load i64, ptr %tsf77, align 1
  %52 = tail call i64 @llvm.bswap.i64(i64 %51)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %49, i32 noundef 16777216, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_beacon_notif, ptr noundef nonnull @.str.9, i32 noundef %47, i64 noundef %52, i32 noundef %13) #11
  br label %do.body82

do.body82:                                        ; preds = %if.end62, %cleanup
  %status.1 = phi i16 [ %conv70, %if.end62 ], [ %31, %cleanup ]
  %dep_map84 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i217 = tail call i32 @lock_is_held_type(ptr noundef %dep_map84, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217)
  %tobool86.not = icmp eq i32 %call.i217, 0
  br i1 %tobool86.not, label %land.lhs.true, label %do.body82.do.end94_crit_edge

do.body82.do.end94_crit_edge:                     ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end94

land.lhs.true:                                    ; preds = %do.body82
  %call87 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %land.lhs.true.do.end94_crit_edge, label %land.lhs.true89

land.lhs.true.do.end94_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end94

land.lhs.true89:                                  ; preds = %land.lhs.true
  %.b215 = load i1, ptr @iwl_mvm_rx_beacon_notif.__warned, align 1
  br i1 %.b215, label %land.lhs.true89.do.end94_crit_edge, label %if.then91

land.lhs.true89.do.end94_crit_edge:               ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end94

if.then91:                                        ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_rx_beacon_notif.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1359, ptr noundef nonnull @.str.10) #11
  br label %do.end94

do.end94:                                         ; preds = %if.then91, %land.lhs.true89.do.end94_crit_edge, %land.lhs.true.do.end94_crit_edge, %do.body82.do.end94_crit_edge
  %csa_vif96 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 149
  %53 = ptrtoint ptr %csa_vif96 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %csa_vif96, align 8
  %tobool97.not = icmp eq ptr %54, null
  br i1 %tobool97.not, label %do.end94.do.body114_crit_edge, label %land.rhs98

do.end94.do.body114_crit_edge:                    ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body114

land.rhs98:                                       ; preds = %do.end94
  %csa_active = getelementptr inbounds %struct.ieee80211_vif, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %csa_active to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %csa_active, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool99.not = icmp eq i8 %56, 0
  br i1 %tobool99.not, label %land.rhs98.do.body114_crit_edge, label %if.then108, !prof !123

land.rhs98.do.body114_crit_edge:                  ; preds = %land.rhs98
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body114

if.then108:                                       ; preds = %land.rhs98
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %ap_last_beacon_gp2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ap_last_beacon_gp2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %status.1)
  %cmp111 = icmp eq i16 %status.1, 1
  tail call fastcc void @iwl_mvm_csa_count_down(ptr noundef %mvm, ptr noundef nonnull %54, i32 noundef %58, i1 noundef zeroext %cmp111)
  br label %do.body114

do.body114:                                       ; preds = %if.then108, %land.rhs98.do.body114_crit_edge, %do.end94.do.body114_crit_edge
  %call.i218 = tail call i32 @lock_is_held_type(ptr noundef %dep_map84, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i218)
  %tobool118.not = icmp eq i32 %call.i218, 0
  br i1 %tobool118.not, label %land.lhs.true119, label %do.body114.do.end127_crit_edge

do.body114.do.end127_crit_edge:                   ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end127

land.lhs.true119:                                 ; preds = %do.body114
  %call120 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %land.lhs.true119.do.end127_crit_edge, label %land.lhs.true122

land.lhs.true119.do.end127_crit_edge:             ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end127

land.lhs.true122:                                 ; preds = %land.lhs.true119
  %.b213214 = load i1, ptr @iwl_mvm_rx_beacon_notif.__warned.11, align 1
  br i1 %.b213214, label %land.lhs.true122.do.end127_crit_edge, label %if.then124

land.lhs.true122.do.end127_crit_edge:             ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end127

if.then124:                                       ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_rx_beacon_notif.__warned.11, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1365, ptr noundef nonnull @.str.10) #11
  br label %do.end127

do.end127:                                        ; preds = %if.then124, %land.lhs.true122.do.end127_crit_edge, %land.lhs.true119.do.end127_crit_edge, %do.body114.do.end127_crit_edge
  %csa_tx_blocked_vif = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 150
  %59 = ptrtoint ptr %csa_tx_blocked_vif to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %csa_tx_blocked_vif, align 4
  %tobool129.not = icmp eq ptr %60, null
  br i1 %tobool129.not, label %do.end127.cleanup164_crit_edge, label %if.then136, !prof !123

do.end127.cleanup164_crit_edge:                   ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup164

if.then136:                                       ; preds = %do.end127
  %csa_tx_block_bcn_timeout = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 151
  %61 = ptrtoint ptr %csa_tx_block_bcn_timeout to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %csa_tx_block_bcn_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool138.not = icmp eq i8 %62, 0
  %dec = add i8 %62, -1
  %storemerge = select i1 %tobool138.not, i8 3, i8 %dec
  %63 = ptrtoint ptr %csa_tx_block_bcn_timeout to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %storemerge, ptr %csa_tx_block_bcn_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %storemerge)
  %cmp146 = icmp eq i8 %storemerge, 0
  br i1 %cmp146, label %if.then148, label %if.then136.cleanup164_crit_edge

if.then136.cleanup164_crit_edge:                  ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup164

if.then148:                                       ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #13
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %60, i32 0, i32 19
  tail call void @iwl_mvm_modify_all_sta_disable_tx(ptr noundef %mvm, ptr noundef %drv_priv.i, i1 noundef zeroext false) #11
  %64 = ptrtoint ptr %csa_tx_blocked_vif to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr null, ptr %csa_tx_blocked_vif, align 4
  br label %cleanup164

cleanup164:                                       ; preds = %if.then148, %if.then136.cleanup164_crit_edge, %do.end127.cleanup164_crit_edge, %if.else.cleanup164_crit_edge, %if.then29.cleanup164_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_csa_count_down(ptr noundef %mvm, ptr noundef %csa_vif, i32 noundef %gp2, i1 noundef zeroext %tx_success) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %tx_success, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %csa_countdown = getelementptr inbounds %struct.ieee80211_vif, ptr %csa_vif, i32 1, i32 1, i32 64, i32 5, i32 1, i32 6
  %0 = ptrtoint ptr %csa_countdown to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %csa_countdown, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %csa_countdown2 = getelementptr inbounds %struct.ieee80211_vif, ptr %csa_vif, i32 1, i32 1, i32 64, i32 5, i32 1, i32 6
  %2 = ptrtoint ptr %csa_countdown2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %csa_countdown2, align 4
  %call3 = tail call zeroext i1 @ieee80211_beacon_cntdwn_is_complete(ptr noundef %csa_vif) #11
  br i1 %call3, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = tail call zeroext i8 @ieee80211_beacon_update_cntdwn(ptr noundef %csa_vif) #11
  %conv = zext i8 %call5 to i32
  %3 = ptrtoint ptr %csa_vif to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %csa_vif, align 8
  %5 = and i32 %4, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %.not.i = icmp eq i32 %5, 1
  br i1 %.not.i, label %if.then4.if.end.i_crit_edge, label %do.end.i, !prof !123

if.then4.if.end.i_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1025, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then4.if.end.i_crit_edge
  %hw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %6 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw.i, align 4
  %call.i = tail call ptr @ieee80211_beacon_get_template(ptr noundef %7, ptr noundef %csa_vif, ptr noundef null) #11
  %tobool21.not.i = icmp eq ptr %call.i, null
  br i1 %tobool21.not.i, label %if.end.i.iwl_mvm_mac_ctxt_beacon_changed.exit_crit_edge, label %if.end23.i

if.end.i.iwl_mvm_mac_ctxt_beacon_changed.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_mac_ctxt_beacon_changed.exit

if.end23.i:                                       ; preds = %if.end.i
  %beacon_inject_active.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 75
  %8 = ptrtoint ptr %beacon_inject_active.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %beacon_inject_active.i, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool24.not.i = icmp eq i8 %9, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.end23.i.cleanup.sink.split.i_crit_edge

if.end23.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.end26.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  %call27.i = tail call i32 @iwl_mvm_mac_ctxt_send_beacon(ptr noundef %mvm, ptr noundef %csa_vif, ptr noundef nonnull %call.i) #11
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end26.i, %if.end23.i.cleanup.sink.split.i_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %call.i) #11
  br label %iwl_mvm_mac_ctxt_beacon_changed.exit

iwl_mvm_mac_ctxt_beacon_changed.exit:             ; preds = %cleanup.sink.split.i, %if.end.i.iwl_mvm_mac_ctxt_beacon_changed.exit_crit_edge
  %p2p = getelementptr inbounds %struct.ieee80211_vif, ptr %csa_vif, i32 0, i32 3
  %10 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %p2p, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not = icmp eq i8 %11, 0
  br i1 %tobool7.not, label %iwl_mvm_mac_ctxt_beacon_changed.exit.cleanup_crit_edge, label %land.lhs.true9

iwl_mvm_mac_ctxt_beacon_changed.exit.cleanup_crit_edge: ; preds = %iwl_mvm_mac_ctxt_beacon_changed.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true9:                                   ; preds = %iwl_mvm_mac_ctxt_beacon_changed.exit
  %time_event_data = getelementptr inbounds %struct.ieee80211_vif, ptr %csa_vif, i32 1, i32 1, i32 32, i32 4, i32 1
  %tobool.not.i = icmp eq ptr %time_event_data, null
  br i1 %tobool.not.i, label %land.lhs.true9.iwl_mvm_te_scheduled.exit_crit_edge, label %if.end.i51

land.lhs.true9.iwl_mvm_te_scheduled.exit_crit_edge: ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_te_scheduled.exit

if.end.i51:                                       ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  %uid.i = getelementptr inbounds %struct.ieee80211_vif, ptr %csa_vif, i32 1, i32 1, i32 33, i32 1, i32 8
  %12 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %uid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool1.i = icmp ne i32 %13, 0
  br label %iwl_mvm_te_scheduled.exit

iwl_mvm_te_scheduled.exit:                        ; preds = %if.end.i51, %land.lhs.true9.iwl_mvm_te_scheduled.exit_crit_edge
  %retval.0.i52 = phi i1 [ %tobool1.i, %if.end.i51 ], [ false, %land.lhs.true9.iwl_mvm_te_scheduled.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gp2)
  %tobool12.not = icmp eq i32 %gp2, 0
  %or.cond = or i1 %tobool12.not, %retval.0.i52
  %tx_success.not = xor i1 %tx_success, true
  %brmerge = or i1 %or.cond, %tx_success.not
  br i1 %brmerge, label %iwl_mvm_te_scheduled.exit.cleanup_crit_edge, label %if.then16

iwl_mvm_te_scheduled.exit.cleanup_crit_edge:      ; preds = %iwl_mvm_te_scheduled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then16:                                        ; preds = %iwl_mvm_te_scheduled.exit
  call void @__sanitizer_cov_trace_pc() #13
  %beacon_int = getelementptr inbounds %struct.ieee80211_vif, ptr %csa_vif, i32 0, i32 1, i32 19
  %14 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %beacon_int, align 2
  %conv17 = zext i16 %15 to i32
  %add = shl nuw nsw i32 %conv, 10
  %mul = add nuw nsw i32 %add, 1024
  %sub = mul i32 %mul, %conv17
  %mul18 = add i32 %gp2, -40960
  %add19 = add i32 %mul18, %sub
  %call20 = tail call i32 @iwl_mvm_schedule_csa_period(ptr noundef %mvm, ptr noundef %csa_vif, i32 noundef 36, i32 noundef %add19) #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  %time_event_data22 = getelementptr inbounds %struct.ieee80211_vif, ptr %csa_vif, i32 1, i32 1, i32 32, i32 4, i32 1
  %tobool.not.i53 = icmp eq ptr %time_event_data22, null
  br i1 %tobool.not.i53, label %if.else.if.then24_crit_edge, label %iwl_mvm_te_scheduled.exit58

if.else.if.then24_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

iwl_mvm_te_scheduled.exit58:                      ; preds = %if.else
  %uid.i54 = getelementptr inbounds %struct.ieee80211_vif, ptr %csa_vif, i32 1, i32 1, i32 33, i32 1, i32 8
  %16 = ptrtoint ptr %uid.i54 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %uid.i54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool1.i55.not = icmp eq i32 %17, 0
  br i1 %tobool1.i55.not, label %iwl_mvm_te_scheduled.exit58.if.then24_crit_edge, label %iwl_mvm_te_scheduled.exit58.cleanup_crit_edge

iwl_mvm_te_scheduled.exit58.cleanup_crit_edge:    ; preds = %iwl_mvm_te_scheduled.exit58
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

iwl_mvm_te_scheduled.exit58.if.then24_crit_edge:  ; preds = %iwl_mvm_te_scheduled.exit58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

if.then24:                                        ; preds = %iwl_mvm_te_scheduled.exit58.if.then24_crit_edge, %if.else.if.then24_crit_edge
  tail call void @ieee80211_csa_finish(ptr noundef %csa_vif) #11
  %csa_vif28 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 149
  %18 = ptrtoint ptr %csa_vif28 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr null, ptr %csa_vif28, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %iwl_mvm_te_scheduled.exit58.cleanup_crit_edge, %if.then16, %iwl_mvm_te_scheduled.exit.cleanup_crit_edge, %iwl_mvm_mac_ctxt_beacon_changed.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_modify_all_sta_disable_tx(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rx_missed_beacons_notif(ptr noundef %mvm, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
entry:
  %tp_data = alloca %union.iwl_dbg_tlv_tp_data, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i58 = tail call ptr @page_address(ptr noundef %1) #11
  %2 = ptrtoint ptr %call.i58 to i32
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
  %8 = lshr i32 %7, 24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp_data) #11
  %9 = ptrtoint ptr %tp_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %5, ptr %tp_data, align 4
  %10 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mvm, align 8
  %12 = tail call i32 @llvm.bswap.i32(i32 %7)
  %consec_missed_beacons = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2
  %13 = ptrtoint ptr %consec_missed_beacons to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %consec_missed_beacons, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %consec_missed_beacons_since_last_rx = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %16 = ptrtoint ptr %consec_missed_beacons_since_last_rx to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %consec_missed_beacons_since_last_rx, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %num_recvd_beacons = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 3
  %19 = ptrtoint ptr %num_recvd_beacons to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %num_recvd_beacons, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %num_expected_beacons = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2, i32 1
  %22 = ptrtoint ptr %num_expected_beacons to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %num_expected_beacons, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %11, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_missed_beacons_notif, ptr noundef nonnull @.str.12, i32 noundef %12, i32 noundef %15, i32 noundef %18, i32 noundef %21, i32 noundef %24) #11
  %25 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %28, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !124
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 696, ptr noundef nonnull @.str.32) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %7)
  %cmp.i.not = icmp ult i32 %7, 67108864
  br i1 %cmp.i.not, label %if.end22.i, label %iwl_mvm_rcu_dereference_vif_id.exit.thread, !prof !123

iwl_mvm_rcu_dereference_vif_id.exit.thread:       ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 1216, i32 noundef 9, ptr noundef null) #11
  br label %out

if.end22.i:                                       ; preds = %rcu_read_lock.exit
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 94, i32 %8
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %arrayidx.i, align 4
  %call.i59 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %tobool30.not.i = icmp eq i32 %call.i59, 0
  br i1 %tobool30.not.i, label %land.lhs.true.i60, label %if.end22.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge

if.end22.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_rcu_dereference_vif_id.exit

land.lhs.true.i60:                                ; preds = %if.end22.i
  %call31.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %land.lhs.true.i60.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge, label %land.lhs.true33.i

land.lhs.true.i60.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge: ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_rcu_dereference_vif_id.exit

land.lhs.true33.i:                                ; preds = %land.lhs.true.i60
  %.b64.i = load i1, ptr @iwl_mvm_rcu_dereference_vif_id.__warned, align 1
  br i1 %.b64.i, label %land.lhs.true33.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge, label %if.then35.i

land.lhs.true33.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge: ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_rcu_dereference_vif_id.exit

if.then35.i:                                      ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_rcu_dereference_vif_id.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 1220, ptr noundef nonnull @.str.16) #11
  br label %iwl_mvm_rcu_dereference_vif_id.exit

iwl_mvm_rcu_dereference_vif_id.exit:              ; preds = %if.then35.i, %land.lhs.true33.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge, %land.lhs.true.i60.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge, %if.end22.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge
  %tobool.not = icmp eq ptr %30, null
  br i1 %tobool.not, label %iwl_mvm_rcu_dereference_vif_id.exit.out_crit_edge, label %if.end

iwl_mvm_rcu_dereference_vif_id.exit.out_crit_edge: ; preds = %iwl_mvm_rcu_dereference_vif_id.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %iwl_mvm_rcu_dereference_vif_id.exit
  %31 = ptrtoint ptr %consec_missed_beacons to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %consec_missed_beacons, align 1
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %34 = ptrtoint ptr %consec_missed_beacons_since_last_rx to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %consec_missed_beacons_since_last_rx, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %33)
  %cmp = icmp ugt i32 %33, 16
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iwl_mvm_connection_loss(ptr noundef %mvm, ptr noundef nonnull %30, ptr noundef nonnull @.str.13) #11
  br label %if.end14

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %36)
  %cmp10 = icmp ugt i32 %36, 8
  br i1 %cmp10, label %if.then12, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ieee80211_beacon_loss(ptr noundef nonnull %30) #11
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.else.if.end14_crit_edge, %if.then9
  %fwrt = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40
  call void @_iwl_dbg_tlv_time_point(ptr noundef %fwrt, i32 noundef 18, ptr noundef nonnull %tp_data, i1 noundef zeroext false) #11
  %call22 = call ptr @ieee80211_vif_to_wdev(ptr noundef nonnull %30) #11
  %37 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fwrt, align 8
  %internal_ini_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %38, i32 0, i32 32, i32 10
  %39 = ptrtoint ptr %internal_ini_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %internal_ini_cfg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.not.i.i = icmp eq i32 %40, 0
  br i1 %cmp.not.i.i, label %iwl_trans_dbg_ini_valid.exit.i, label %if.end14.out_crit_edge

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

iwl_trans_dbg_ini_valid.exit.i:                   ; preds = %if.end14
  %external_ini_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %38, i32 0, i32 32, i32 11
  %41 = ptrtoint ptr %external_ini_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %external_ini_cfg.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp2.i.not.i = icmp eq i32 %42, 0
  br i1 %cmp2.i.not.i, label %if.end.i, label %iwl_trans_dbg_ini_valid.exit.i.out_crit_edge

iwl_trans_dbg_ini_valid.exit.i.out_crit_edge:     ; preds = %iwl_trans_dbg_ini_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end.i:                                         ; preds = %iwl_trans_dbg_ini_valid.exit.i
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 1
  %43 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fw.i, align 4
  %arrayidx.i61 = getelementptr %struct.iwl_fw, ptr %44, i32 0, i32 20, i32 3, i32 3
  %45 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i61, align 4
  %tobool.not.i62 = icmp eq ptr %46, null
  br i1 %tobool.not.i62, label %if.end.i.out_crit_edge, label %if.end4.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end4.i:                                        ; preds = %if.end.i
  %trig_dis_ms.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %trig_dis_ms.i.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %trig_dis_ms.i.i, align 1
  %49 = call i16 @llvm.bswap.i16(i16 %48) #11
  %conv.i.i = zext i16 %49 to i32
  %mul.i.i = mul nuw nsw i32 %conv.i.i, 1000
  %tobool.not.i.i = icmp eq ptr %call22, null
  br i1 %tobool.not.i.i, label %if.end4.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end4.i.if.end.i.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end4.i
  %vif_type.i.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %46, i32 0, i32 1
  %50 = ptrtoint ptr %vif_type.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %vif_type.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i.i.i = icmp eq i32 %51, 0
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %iwl_fw_dbg_trigger_vif_match.exit.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

iwl_fw_dbg_trigger_vif_match.exit.i.i:            ; preds = %land.lhs.true.i.i
  %52 = call i32 @llvm.bswap.i32(i32 %51) #11
  %iftype.i.i.i = getelementptr inbounds %struct.wireless_dev, ptr %call22, i32 0, i32 1
  %53 = ptrtoint ptr %iftype.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %iftype.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %52)
  %cmp1.i.i.i = icmp eq i32 %54, %52
  br i1 %cmp1.i.i.i, label %iwl_fw_dbg_trigger_vif_match.exit.i.i.if.end.i.i_crit_edge, label %iwl_fw_dbg_trigger_vif_match.exit.i.i.out_crit_edge

iwl_fw_dbg_trigger_vif_match.exit.i.i.out_crit_edge: ; preds = %iwl_fw_dbg_trigger_vif_match.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

iwl_fw_dbg_trigger_vif_match.exit.i.i.if.end.i.i_crit_edge: ; preds = %iwl_fw_dbg_trigger_vif_match.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %iwl_fw_dbg_trigger_vif_match.exit.i.i.if.end.i.i_crit_edge, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end4.i.if.end.i.i_crit_edge
  %55 = ptrtoint ptr %46 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %46, align 1
  %57 = call i32 @llvm.bswap.i32(i32 %56) #11
  %call3.i.i.i.i = call i32 @__usecs_to_jiffies(i32 noundef %mul.i.i) #11
  %arrayidx.i.i.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 12, i32 3, i32 %57
  %58 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i.i.i = icmp eq i32 %59, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %61 = add i32 %59, %call3.i.i.i.i
  %sub.i.i.i = sub i32 %60, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i16.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i16.i.i, label %do.end.i.i, label %land.lhs.true.i.i.i.if.end7.i.i_crit_edge

land.lhs.true.i.i.i.if.end7.i.i_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 2
  %62 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i.i, align 8
  %64 = ptrtoint ptr %46 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %46, align 1
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %63, ptr noundef nonnull @.str.35, i32 noundef %65) #11
  br label %out

if.end7.i.i:                                      ; preds = %land.lhs.true.i.i.i.if.end7.i.i_crit_edge, %if.end.i.i.if.end7.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %66 = load volatile i32, ptr @jiffies, align 128
  %67 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %arrayidx.i.i.i, align 4
  %mode.i.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %46, i32 0, i32 4
  %68 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %mode.i.i.i, align 1
  %70 = and i8 %69, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i17.i.i = icmp eq i8 %70, 0
  br i1 %tobool.not.i17.i.i, label %if.end7.i.i.out_crit_edge, label %land.rhs.i.i.i

if.end7.i.i.out_crit_edge:                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.rhs.i.i.i:                                   ; preds = %if.end7.i.i
  %conf.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 12, i32 2
  %71 = ptrtoint ptr %conf.i.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %conf.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %72)
  %cmp.i18.i.i = icmp eq i8 %72, -1
  br i1 %cmp.i18.i.i, label %land.rhs.i.i.i.if.end26_crit_edge, label %iwl_fw_dbg_trigger_check_stop.exit.i

land.rhs.i.i.i.if.end26_crit_edge:                ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

iwl_fw_dbg_trigger_check_stop.exit.i:             ; preds = %land.rhs.i.i.i
  %conv1.i.i.i = zext i8 %72 to i32
  %shl.i.i.i = shl nuw i32 1, %conv1.i.i.i
  %stop_conf_ids.i.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %46, i32 0, i32 2
  %73 = ptrtoint ptr %stop_conf_ids.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %stop_conf_ids.i.i.i, align 1
  %75 = call i32 @llvm.bswap.i32(i32 %74) #11
  %and6.i.i.i = and i32 %75, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.i.i.not.i = icmp eq i32 %and6.i.i.i, 0
  br i1 %tobool7.i.i.not.i, label %iwl_fw_dbg_trigger_check_stop.exit.i.out_crit_edge, label %iwl_fw_dbg_trigger_check_stop.exit.i.if.end26_crit_edge

iwl_fw_dbg_trigger_check_stop.exit.i.if.end26_crit_edge: ; preds = %iwl_fw_dbg_trigger_check_stop.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

iwl_fw_dbg_trigger_check_stop.exit.i.out_crit_edge: ; preds = %iwl_fw_dbg_trigger_check_stop.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end26:                                         ; preds = %iwl_fw_dbg_trigger_check_stop.exit.i.if.end26_crit_edge, %land.rhs.i.i.i.if.end26_crit_edge
  %stop_consec_missed_bcon_since_rx = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %46, i32 1, i32 1
  %76 = ptrtoint ptr %stop_consec_missed_bcon_since_rx to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %stop_consec_missed_bcon_since_rx, align 1
  %78 = call i32 @llvm.bswap.i32(i32 %77)
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %78)
  %cmp29.not = icmp ult i32 %36, %78
  br i1 %cmp29.not, label %lor.lhs.false, label %if.end26.if.then33_crit_edge

if.end26.if.then33_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

lor.lhs.false:                                    ; preds = %if.end26
  %data27 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %46, i32 0, i32 10
  %79 = ptrtoint ptr %data27 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %data27, align 1
  %81 = call i32 @llvm.bswap.i32(i32 %80)
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %81)
  %cmp31.not = icmp ult i32 %33, %81
  br i1 %cmp31.not, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false.if.then33_crit_edge

lor.lhs.false.if.then33_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then33:                                        ; preds = %lor.lhs.false.if.then33_crit_edge, %if.end26.if.then33_crit_edge
  %call35 = call i32 (ptr, ptr, ptr, ...) @iwl_fw_dbg_collect_trig(ptr noundef %fwrt, ptr noundef nonnull %46, ptr noundef null) #11
  br label %out

out:                                              ; preds = %if.then33, %lor.lhs.false.out_crit_edge, %iwl_fw_dbg_trigger_check_stop.exit.i.out_crit_edge, %if.end7.i.i.out_crit_edge, %do.end.i.i, %iwl_fw_dbg_trigger_vif_match.exit.i.i.out_crit_edge, %if.end.i.out_crit_edge, %iwl_trans_dbg_ini_valid.exit.i.out_crit_edge, %if.end14.out_crit_edge, %iwl_mvm_rcu_dereference_vif_id.exit.out_crit_edge, %iwl_mvm_rcu_dereference_vif_id.exit.thread
  %call.i64 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i64, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i67

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i67:                                ; preds = %out
  %call1.i65 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i65)
  %tobool.not.i66 = icmp eq i32 %call1.i65, 0
  br i1 %tobool.not.i66, label %land.lhs.true.i67.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i69

land.lhs.true.i67.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i67
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i69:                               ; preds = %land.lhs.true.i67
  %.b4.i68 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i68, label %land.lhs.true2.i69.rcu_read_unlock.exit_crit_edge, label %if.then.i70

land.lhs.true2.i69.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i70:                                      ; preds = %land.lhs.true2.i69
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 724, ptr noundef nonnull @.str.36) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i70, %land.lhs.true2.i69.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i67.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !125
  %82 = call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i.i.i71 = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i.i.i71 to ptr
  %preempt_count.i.i.i.i72 = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %preempt_count.i.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %preempt_count.i.i.i.i72, align 4
  %sub.i.i.i73 = add i32 %85, -1
  store volatile i32 %sub.i.i.i73, ptr %preempt_count.i.i.i.i72, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp_data) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_connection_loss(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_beacon_loss(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_vif_to_wdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_fw_dbg_collect_trig(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rx_stored_beacon_notif(ptr nocapture noundef readonly %mvm, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #11
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
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #11
  %sub.i = add nsw i32 %9, -4
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  %byte_count = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 4
  %10 = ptrtoint ptr %byte_count to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %byte_count, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %13 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw, align 8
  %call3 = tail call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %14, i8 noundef zeroext 11, i8 noundef zeroext -1, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %entry.cleanup47_crit_edge, label %if.end

entry.cleanup47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup47

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %call3)
  %cmp5 = icmp ult i8 %call3, 3
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %12, i32 628) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %spec.select.i)
  %cmp11 = icmp ult i32 %sub.i, %spec.select.i
  %data15 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 4, i32 1
  br i1 %cmp11, label %if.then7.cleanup47_crit_edge, label %if.then7.if.end29_crit_edge

if.then7.if.end29_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then7.cleanup47_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup47

if.else:                                          ; preds = %if.end
  %spec.select.i90 = tail call i32 @llvm.uadd.sat.i32(i32 %12, i32 632) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %spec.select.i90)
  %cmp20 = icmp ult i32 %sub.i, %spec.select.i90
  %data24 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 5
  br i1 %cmp20, label %if.else.cleanup47_crit_edge, label %if.else.if.end29_crit_edge

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.else.cleanup47_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup47

if.end29:                                         ; preds = %if.else.if.end29_crit_edge, %if.then7.if.end29_crit_edge
  %data2.2 = phi ptr [ %data15, %if.then7.if.end29_crit_edge ], [ %data24, %if.else.if.end29_crit_edge ]
  %call.i91 = tail call ptr @__alloc_skb(i32 noundef %12, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool.not = icmp eq ptr %call.i91, null
  br i1 %tobool.not, label %do.end, label %if.end35

do.end:                                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %16, i32 noundef 0, ptr noundef nonnull @.str.14) #11
  br label %cleanup47

if.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %tsf = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %17 = ptrtoint ptr %tsf to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %tsf, align 1
  %19 = tail call i64 @llvm.bswap.i64(i64 %18)
  %20 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %data, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %band = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 3
  %23 = ptrtoint ptr %band to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %band, align 1
  %25 = lshr i16 %24, 8
  %26 = trunc i16 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %channel = getelementptr inbounds %struct.iwl_stored_beacon_notif_common, ptr %data, i32 0, i32 4
  %29 = ptrtoint ptr %channel to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %channel, align 1
  %31 = tail call i16 @llvm.bswap.i16(i16 %30)
  %conv40 = zext i16 %31 to i32
  %conv42 = zext i8 %28 to i32
  %call.i92 = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv40, i32 noundef %conv42) #11
  %div.i = udiv i32 %call.i92, 1000
  %conv44 = trunc i32 %div.i to i16
  %bf.shl = shl i16 %conv44, 3
  %call.i93 = tail call ptr @skb_put(ptr noundef nonnull %call.i91, i32 noundef %12) #11
  %32 = call ptr @memcpy(ptr %call.i93, ptr %data2.2, i32 %12)
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i91, i32 0, i32 3
  %33 = ptrtoint ptr %cb.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %19, ptr %cb.i, align 8
  %rx_status.sroa.6.0.call46.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %call.i91, i32 0, i32 3, i32 8
  %34 = ptrtoint ptr %rx_status.sroa.6.0.call46.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 0, ptr %rx_status.sroa.6.0.call46.sroa_idx, align 8
  %rx_status.sroa.667.0.call46.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %call.i91, i32 0, i32 3, i32 16
  %35 = ptrtoint ptr %rx_status.sroa.667.0.call46.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %22, ptr %rx_status.sroa.667.0.call46.sroa_idx, align 8
  %rx_status.sroa.7.0.call46.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %call.i91, i32 0, i32 3, i32 20
  %36 = ptrtoint ptr %rx_status.sroa.7.0.call46.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %rx_status.sroa.7.0.call46.sroa_idx, align 4
  %rx_status.sroa.768.0.call46.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %call.i91, i32 0, i32 3, i32 24
  %37 = ptrtoint ptr %rx_status.sroa.768.0.call46.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4, ptr %rx_status.sroa.768.0.call46.sroa_idx, align 8
  %rx_status.sroa.9.0.call46.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %call.i91, i32 0, i32 3, i32 28
  %38 = ptrtoint ptr %rx_status.sroa.9.0.call46.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %bf.shl, ptr %rx_status.sroa.9.0.call46.sroa_idx, align 4
  %rx_status.sroa.11.0.call46.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %call.i91, i32 0, i32 3, i32 30
  %39 = call ptr @memset(ptr %rx_status.sroa.11.0.call46.sroa_idx, i32 0, i32 6)
  %rx_status.sroa.1169.0.call46.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %call.i91, i32 0, i32 3, i32 36
  %40 = ptrtoint ptr %rx_status.sroa.1169.0.call46.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %28, ptr %rx_status.sroa.1169.0.call46.sroa_idx, align 4
  %rx_status.sroa.13.0.call46.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %call.i91, i32 0, i32 3, i32 37
  %41 = call ptr @memset(ptr %rx_status.sroa.13.0.call46.sroa_idx, i32 0, i32 11)
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %42 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_rx_napi(ptr noundef %43, ptr noundef null, ptr noundef nonnull %call.i91, ptr noundef null) #11
  br label %cleanup47

cleanup47:                                        ; preds = %if.end35, %do.end, %if.else.cleanup47_crit_edge, %if.then7.cleanup47_crit_edge, %entry.cleanup47_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_napi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_probe_resp_data_notif(ptr noundef %mvm, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #11
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
  %8 = lshr i32 %7, 24
  %9 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mvm, align 8
  %noa_active = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %11 = ptrtoint ptr %noa_active to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %noa_active, align 1
  %csa_counter = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 6
  %13 = ptrtoint ptr %csa_counter to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %csa_counter, align 1
  %conv = zext i8 %14 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %10, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_probe_resp_data_notif, ptr noundef nonnull @.str.15, i32 noundef %12, i32 noundef %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %7)
  %cmp.i.not = icmp ult i32 %7, 67108864
  br i1 %cmp.i.not, label %if.end22.i, label %iwl_mvm_rcu_dereference_vif_id.exit.thread, !prof !123

iwl_mvm_rcu_dereference_vif_id.exit.thread:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 1216, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end22.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool43.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool43.not.i, label %land.lhs.true44.i, label %if.end22.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge

if.end22.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_rcu_dereference_vif_id.exit

land.lhs.true44.i:                                ; preds = %if.end22.i
  %call45.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %land.lhs.true44.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge, label %land.lhs.true47.i

land.lhs.true44.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge: ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_rcu_dereference_vif_id.exit

land.lhs.true47.i:                                ; preds = %land.lhs.true44.i
  %.b6263.i = load i1, ptr @iwl_mvm_rcu_dereference_vif_id.__warned.34, align 1
  br i1 %.b6263.i, label %land.lhs.true47.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge, label %if.then49.i

land.lhs.true47.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge: ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_rcu_dereference_vif_id.exit

if.then49.i:                                      ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_rcu_dereference_vif_id.__warned.34, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 1223, ptr noundef nonnull @.str.10) #11
  br label %iwl_mvm_rcu_dereference_vif_id.exit

iwl_mvm_rcu_dereference_vif_id.exit:              ; preds = %if.then49.i, %land.lhs.true47.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge, %land.lhs.true44.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge, %if.end22.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge
  %arrayidx56.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 94, i32 %8
  %15 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx56.i, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %iwl_mvm_rcu_dereference_vif_id.exit.cleanup_crit_edge, label %if.end

iwl_mvm_rcu_dereference_vif_id.exit.cleanup_crit_edge: ; preds = %iwl_mvm_rcu_dereference_vif_id.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %iwl_mvm_rcu_dereference_vif_id.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 56) #15
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %16, i32 0, i32 19
  %notif11 = getelementptr inbounds %struct.iwl_probe_resp_data, ptr %call7.i.i, i32 0, i32 1
  %18 = call ptr @memcpy(ptr %notif11, ptr %data, i32 44)
  %noa_len = getelementptr inbounds %struct.iwl_probe_resp_data, ptr %call7.i.i, i32 0, i32 2
  %len_low = getelementptr inbounds %struct.iwl_probe_resp_data, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 1
  %19 = ptrtoint ptr %len_low to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %len_low, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %20)
  %cmp = icmp eq i8 %20, 15
  %spec.store.select = select i1 %cmp, i32 24, i32 37
  %21 = ptrtoint ptr %noa_len to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.store.select, ptr %noa_len, align 4
  %22 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %drv_priv.i, align 8
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %23, i32 0, i32 6, i32 5
  %call.i119 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool21.not = icmp eq i32 %call.i119, 0
  br i1 %tobool21.not, label %land.lhs.true, label %if.end10.do.end29_crit_edge

if.end10.do.end29_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end29

land.lhs.true:                                    ; preds = %if.end10
  %call22 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true.do.end29_crit_edge, label %land.lhs.true24

land.lhs.true.do.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end29

land.lhs.true24:                                  ; preds = %land.lhs.true
  %.b118 = load i1, ptr @iwl_mvm_probe_resp_data_notif.__warned, align 1
  br i1 %.b118, label %land.lhs.true24.do.end29_crit_edge, label %if.then26

land.lhs.true24.do.end29_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end29

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_probe_resp_data_notif.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1549, ptr noundef nonnull @.str.10) #11
  br label %do.end29

do.end29:                                         ; preds = %if.then26, %land.lhs.true24.do.end29_crit_edge, %land.lhs.true.do.end29_crit_edge, %if.end10.do.end29_crit_edge
  %probe_resp_data = getelementptr inbounds %struct.ieee80211_vif, ptr %16, i32 2, i32 1, i32 22
  %24 = ptrtoint ptr %probe_resp_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %probe_resp_data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  %26 = ptrtoint ptr %probe_resp_data to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %call7.i.i, ptr %probe_resp_data, align 8
  %tobool70.not = icmp eq ptr %25, null
  br i1 %tobool70.not, label %do.end29.if.end81_crit_edge, label %do.end77

do.end29.if.end81_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

do.end77:                                         ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kvfree_call_rcu(ptr noundef nonnull %25, ptr noundef null) #11
  br label %if.end81

if.end81:                                         ; preds = %do.end77, %do.end29.if.end81_crit_edge
  %27 = ptrtoint ptr %csa_counter to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %csa_counter, align 1
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %28, label %if.then91 [
    i8 -1, label %if.end81.cleanup_crit_edge
    i8 0, label %if.end81.cleanup_crit_edge122
  ]

if.end81.cleanup_crit_edge122:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then91:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ieee80211_beacon_set_cntdwn(ptr noundef nonnull %16, i8 noundef zeroext %28) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then91, %if.end81.cleanup_crit_edge, %if.end81.cleanup_crit_edge122, %if.end.cleanup_crit_edge, %iwl_mvm_rcu_dereference_vif_id.exit.cleanup_crit_edge, %iwl_mvm_rcu_dereference_vif_id.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_beacon_set_cntdwn(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_channel_switch_start_notif(ptr noundef %mvm, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i261 = tail call ptr @page_address(ptr noundef %1) #11
  %2 = ptrtoint ptr %call.i261 to i32
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
  %and = and i32 %8, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp = icmp ugt i32 %and, 3
  br i1 %cmp, label %land.rhs, label %if.end37

land.rhs:                                         ; preds = %entry
  %.b258 = load i1, ptr @iwl_mvm_channel_switch_start_notif.__already_done, align 1
  br i1 %.b258, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !123

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_channel_switch_start_notif.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1572, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end37:                                         ; preds = %entry
  %9 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !124
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.end37.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end37.rcu_read_lock.exit_crit_edge:            ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end37
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 696, ptr noundef nonnull @.str.32) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end37.rcu_read_lock.exit_crit_edge
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 94, i32 %and
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %arrayidx, align 4
  %call43 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end52_crit_edge

rcu_read_lock.exit.do.end52_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end52

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call45 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %land.lhs.true.do.end52_crit_edge, label %land.lhs.true47

land.lhs.true.do.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end52

land.lhs.true47:                                  ; preds = %land.lhs.true
  %.b252257 = load i1, ptr @iwl_mvm_channel_switch_start_notif.__warned, align 1
  br i1 %.b252257, label %land.lhs.true47.do.end52_crit_edge, label %if.then49

land.lhs.true47.do.end52_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end52

if.then49:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_channel_switch_start_notif.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1576, ptr noundef nonnull @.str.16) #11
  br label %do.end52

do.end52:                                         ; preds = %if.then49, %land.lhs.true47.do.end52_crit_edge, %land.lhs.true.do.end52_crit_edge, %rcu_read_lock.exit.do.end52_crit_edge
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %14, i32 0, i32 19
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %16, label %land.end177 [
    i32 3, label %sw.bb
    i32 2, label %sw.bb168
  ]

sw.bb:                                            ; preds = %do.end52
  %csa_vif59 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 149
  %18 = ptrtoint ptr %csa_vif59 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %csa_vif59, align 8
  %call61 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true63, label %sw.bb.do.end71_crit_edge

sw.bb.do.end71_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end71

land.lhs.true63:                                  ; preds = %sw.bb
  %call64 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %land.lhs.true63.do.end71_crit_edge, label %land.lhs.true66

land.lhs.true63.do.end71_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end71

land.lhs.true66:                                  ; preds = %land.lhs.true63
  %.b253255 = load i1, ptr @iwl_mvm_channel_switch_start_notif.__warned.17, align 1
  br i1 %.b253255, label %land.lhs.true66.do.end71_crit_edge, label %if.then68

land.lhs.true66.do.end71_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end71

if.then68:                                        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_channel_switch_start_notif.__warned.17, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1581, ptr noundef nonnull @.str.16) #11
  br label %do.end71

do.end71:                                         ; preds = %if.then68, %land.lhs.true66.do.end71_crit_edge, %land.lhs.true63.do.end71_crit_edge, %sw.bb.do.end71_crit_edge
  %tobool74.not = icmp eq ptr %19, null
  br i1 %tobool74.not, label %do.end71.do.end92_crit_edge, label %lor.lhs.false

do.end71.do.end92_crit_edge:                      ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end92

lor.lhs.false:                                    ; preds = %do.end71
  %csa_active = getelementptr inbounds %struct.ieee80211_vif, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %csa_active to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %csa_active, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool75.not = icmp eq i8 %21, 0
  %cmp76 = icmp ne ptr %19, %14
  %spec.select = select i1 %tobool75.not, i1 true, i1 %cmp76
  br i1 %spec.select, label %lor.lhs.false.do.end92_crit_edge, label %if.end108.critedge, !prof !121

lor.lhs.false.do.end92_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end92

do.end92:                                         ; preds = %lor.lhs.false.do.end92_crit_edge, %do.end71.do.end92_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1583, i32 noundef 9, ptr noundef null) #11
  br label %out_unlock

if.end108.critedge:                               ; preds = %lor.lhs.false
  %id = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %id, align 4
  %conv = zext i16 %23 to i32
  %color = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 2
  %24 = ptrtoint ptr %color to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %color, align 2
  %conv109 = zext i16 %25 to i32
  %shl110 = shl nuw nsw i32 %conv109, 8
  %or = or i32 %shl110, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %8)
  %cmp112.not = icmp eq i32 %or, %8
  br i1 %cmp112.not, label %do.end149.critedge, label %do.end129, !prof !123

do.end129:                                        ; preds = %if.end108.critedge
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1589, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %or, i32 noundef %8) #11
  br label %out_unlock

do.end149.critedge:                               ; preds = %if.end108.critedge
  %26 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %27, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_channel_switch_start_notif, ptr noundef nonnull @.str.19) #11
  %cs_tx_unblock_dwork = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 170
  %beacon_int = getelementptr inbounds %struct.ieee80211_vif, ptr %14, i32 0, i32 1, i32 19
  %28 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %beacon_int, align 2
  %conv152 = zext i16 %29 to i32
  %mul = mul nuw nsw i32 %conv152, 3
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %30 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %30, ptr noundef %cs_tx_unblock_dwork, i32 noundef %call2.i) #11
  tail call void @ieee80211_csa_finish(ptr noundef nonnull %14) #11
  %call.i262 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i262, label %do.end149.critedge.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i265

do.end149.critedge.rcu_read_unlock.exit_crit_edge: ; preds = %do.end149.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i265:                               ; preds = %do.end149.critedge
  %call1.i263 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i263)
  %tobool.not.i264 = icmp eq i32 %call1.i263, 0
  br i1 %tobool.not.i264, label %land.lhs.true.i265.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i267

land.lhs.true.i265.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i265
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i267:                              ; preds = %land.lhs.true.i265
  %.b4.i266 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i266, label %land.lhs.true2.i267.rcu_read_unlock.exit_crit_edge, label %if.then.i268

land.lhs.true2.i267.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i267
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i268:                                     ; preds = %land.lhs.true2.i267
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 724, ptr noundef nonnull @.str.36) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i268, %land.lhs.true2.i267.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i265.rcu_read_unlock.exit_crit_edge, %do.end149.critedge.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !125
  %31 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i.i.i269 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i269 to ptr
  %preempt_count.i.i.i.i270 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i270 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i270, align 4
  %sub.i.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i270, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %35 = ptrtoint ptr %csa_vif59 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr null, ptr %csa_vif59, align 8
  br label %cleanup

sw.bb168:                                         ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iwl_mvm_csa_client_absent(ptr noundef %mvm, ptr noundef %14) #11
  %csa_work = getelementptr inbounds %struct.ieee80211_vif, ptr %14, i32 1, i32 1, i32 64, i32 6, i32 1, i32 5
  %call169 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %csa_work) #11
  tail call void @ieee80211_chswitch_done(ptr noundef %14, i1 noundef zeroext true) #11
  br label %out_unlock

land.end177:                                      ; preds = %do.end52
  %.b254256 = load i1, ptr @iwl_mvm_channel_switch_start_notif.__already_done.20, align 1
  br i1 %.b254256, label %land.end177.out_unlock_crit_edge, label %if.then184, !prof !123

land.end177.out_unlock_crit_edge:                 ; preds = %land.end177
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.then184:                                       ; preds = %land.end177
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_channel_switch_start_notif.__already_done.20, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1611, i32 noundef 9, ptr noundef null) #11
  br label %out_unlock

out_unlock:                                       ; preds = %if.then184, %land.end177.out_unlock_crit_edge, %sw.bb168, %do.end129, %do.end92
  %call.i271 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i271, label %out_unlock.rcu_read_unlock.exit281_crit_edge, label %land.lhs.true.i274

out_unlock.rcu_read_unlock.exit281_crit_edge:     ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit281

land.lhs.true.i274:                               ; preds = %out_unlock
  %call1.i272 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i272)
  %tobool.not.i273 = icmp eq i32 %call1.i272, 0
  br i1 %tobool.not.i273, label %land.lhs.true.i274.rcu_read_unlock.exit281_crit_edge, label %land.lhs.true2.i276

land.lhs.true.i274.rcu_read_unlock.exit281_crit_edge: ; preds = %land.lhs.true.i274
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit281

land.lhs.true2.i276:                              ; preds = %land.lhs.true.i274
  %.b4.i275 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i275, label %land.lhs.true2.i276.rcu_read_unlock.exit281_crit_edge, label %if.then.i277

land.lhs.true2.i276.rcu_read_unlock.exit281_crit_edge: ; preds = %land.lhs.true2.i276
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit281

if.then.i277:                                     ; preds = %land.lhs.true2.i276
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 724, ptr noundef nonnull @.str.36) #11
  br label %rcu_read_unlock.exit281

rcu_read_unlock.exit281:                          ; preds = %if.then.i277, %land.lhs.true2.i276.rcu_read_unlock.exit281_crit_edge, %land.lhs.true.i274.rcu_read_unlock.exit281_crit_edge, %out_unlock.rcu_read_unlock.exit281_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !125
  %36 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i.i.i278 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i278 to ptr
  %preempt_count.i.i.i.i279 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i279 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i279, align 4
  %sub.i.i.i280 = add i32 %39, -1
  store volatile i32 %sub.i.i.i280, ptr %preempt_count.i.i.i.i279, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit281, %rcu_read_unlock.exit, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_csa_finish(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_csa_client_absent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_chswitch_done(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rx_missed_vap_notif(ptr noundef %mvm, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i14 = tail call ptr @page_address(ptr noundef %1) #11
  %2 = ptrtoint ptr %call.i14 to i32
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
  %9 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mvm, align 8
  %num_beacon_intervals_elapsed = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %11 = ptrtoint ptr %num_beacon_intervals_elapsed to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_beacon_intervals_elapsed, align 1
  %conv = zext i8 %12 to i32
  %profile_periodicity = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1, i32 1
  %13 = ptrtoint ptr %profile_periodicity to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %profile_periodicity, align 1
  %conv3 = zext i8 %14 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %10, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_missed_vap_notif, ptr noundef nonnull @.str.21, i32 noundef %8, i32 noundef %conv, i32 noundef %conv3) #11
  %15 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !124
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 696, ptr noundef nonnull @.str.32) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %19 = and i32 %8, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.not = icmp eq i32 %19, 0
  br i1 %cmp.i.not, label %if.end22.i, label %iwl_mvm_rcu_dereference_vif_id.exit.thread, !prof !123

iwl_mvm_rcu_dereference_vif_id.exit.thread:       ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 1216, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end22.i:                                       ; preds = %rcu_read_lock.exit
  %conv.i = and i32 %8, 255
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 94, i32 %conv.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %arrayidx.i, align 4
  %call.i15 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool30.not.i = icmp eq i32 %call.i15, 0
  br i1 %tobool30.not.i, label %land.lhs.true.i16, label %if.end22.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge

if.end22.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_rcu_dereference_vif_id.exit

land.lhs.true.i16:                                ; preds = %if.end22.i
  %call31.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %land.lhs.true.i16.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge, label %land.lhs.true33.i

land.lhs.true.i16.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge: ; preds = %land.lhs.true.i16
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_rcu_dereference_vif_id.exit

land.lhs.true33.i:                                ; preds = %land.lhs.true.i16
  %.b64.i = load i1, ptr @iwl_mvm_rcu_dereference_vif_id.__warned, align 1
  br i1 %.b64.i, label %land.lhs.true33.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge, label %if.then35.i

land.lhs.true33.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge: ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_rcu_dereference_vif_id.exit

if.then35.i:                                      ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_rcu_dereference_vif_id.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 1220, ptr noundef nonnull @.str.16) #11
  br label %iwl_mvm_rcu_dereference_vif_id.exit

iwl_mvm_rcu_dereference_vif_id.exit:              ; preds = %if.then35.i, %land.lhs.true33.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge, %land.lhs.true.i16.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge, %if.end22.i.iwl_mvm_rcu_dereference_vif_id.exit_crit_edge
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %iwl_mvm_rcu_dereference_vif_id.exit.if.end_crit_edge, label %if.then

iwl_mvm_rcu_dereference_vif_id.exit.if.end_crit_edge: ; preds = %iwl_mvm_rcu_dereference_vif_id.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %iwl_mvm_rcu_dereference_vif_id.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iwl_mvm_connection_loss(ptr noundef %mvm, ptr noundef nonnull %21, ptr noundef nonnull @.str.22) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %iwl_mvm_rcu_dereference_vif_id.exit.if.end_crit_edge, %iwl_mvm_rcu_dereference_vif_id.exit.thread
  %call.i17 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i17, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i20

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i20:                                ; preds = %if.end
  %call1.i18 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i22

land.lhs.true.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21, label %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, label %if.then.i23

land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 724, ptr noundef nonnull @.str.36) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i23, %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !125
  %22 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i.i.i24 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i24 to ptr
  %preempt_count.i.i.i.i25 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i25, align 4
  %sub.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i25, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_mac_ctxt_set_tx(ptr noundef %mvm, ptr nocapture noundef readonly %vif, ptr noundef %beacon, ptr nocapture noundef %tx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %beacon, i32 0, i32 3
  %len = getelementptr inbounds %struct.sk_buff, ptr %beacon, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %conv = trunc i32 %1 to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %3 = ptrtoint ptr %tx to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %2, ptr %tx, align 1
  %bcast_sta = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 39, i32 9
  %4 = ptrtoint ptr %bcast_sta to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bcast_sta, align 8
  %conv3 = trunc i32 %5 to i8
  %sta_id4 = getelementptr inbounds %struct.iwl_tx_cmd, ptr %tx, i32 0, i32 5
  %6 = ptrtoint ptr %sta_id4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv3, ptr %sta_id4, align 1
  %life_time = getelementptr inbounds %struct.iwl_tx_cmd, ptr %tx, i32 0, i32 11
  %7 = ptrtoint ptr %life_time to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 -1, ptr %life_time, align 1
  %data = getelementptr inbounds %struct.sk_buff, ptr %beacon, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %call5 = tail call zeroext i8 @iwl_mvm_bt_coex_tx_prio(ptr noundef %mvm, ptr noundef %9, ptr noundef %cb.i, i8 noundef zeroext 0) #11
  %conv6 = zext i8 %call5 to i32
  %shl = shl nuw nsw i32 %conv6, 11
  %or = or i32 %shl, 73728
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %tx_flags7 = getelementptr inbounds %struct.iwl_tx_cmd, ptr %tx, i32 0, i32 2
  %11 = ptrtoint ptr %tx_flags7 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %tx_flags7, align 1
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %12 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw, align 8
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %13, i32 0, i32 5, i32 8, i32 2
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i.i, align 4
  %16 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not = icmp eq i32 %16, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %mgmt_last_antenna_idx = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 66
  %nvm_data.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 31
  %17 = ptrtoint ptr %nvm_data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nvm_data.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.then.cond.false.i.i_crit_edge, label %land.lhs.true.i.i

if.then.cond.false.i.i_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false.i.i

land.lhs.true.i.i:                                ; preds = %if.then
  %valid_tx_ant.i.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %18, i32 0, i32 20
  %19 = ptrtoint ptr %valid_tx_ant.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %valid_tx_ant.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool2.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.cond.false.i.i_crit_edge, label %cond.true.i.i

land.lhs.true.i.i.cond.false.i.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false.i.i

cond.true.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %valid_tx_ant3.i.i = getelementptr inbounds %struct.iwl_fw, ptr %13, i32 0, i32 15
  %21 = ptrtoint ptr %valid_tx_ant3.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %valid_tx_ant3.i.i, align 4
  %and.i.i = and i8 %22, %20
  br label %iwl_mvm_toggle_tx_ant.exit

cond.false.i.i:                                   ; preds = %land.lhs.true.i.i.cond.false.i.i_crit_edge, %if.then.cond.false.i.i_crit_edge
  %valid_tx_ant9.i.i = getelementptr inbounds %struct.iwl_fw, ptr %13, i32 0, i32 15
  %23 = ptrtoint ptr %valid_tx_ant9.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %valid_tx_ant9.i.i, align 4
  br label %iwl_mvm_toggle_tx_ant.exit

iwl_mvm_toggle_tx_ant.exit:                       ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i8 [ %and.i.i, %cond.true.i.i ], [ %24, %cond.false.i.i ]
  %25 = ptrtoint ptr %mgmt_last_antenna_idx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mgmt_last_antenna_idx, align 1
  %call1.i = tail call zeroext i8 @iwl_mvm_next_antenna(ptr noundef %mvm, i8 noundef zeroext %cond.i.i, i8 noundef zeroext %26) #11
  %27 = ptrtoint ptr %mgmt_last_antenna_idx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %call1.i, ptr %mgmt_last_antenna_idx, align 1
  br label %if.end

if.end:                                           ; preds = %iwl_mvm_toggle_tx_ant.exit, %entry.if.end_crit_edge
  %mgmt_last_antenna_idx9 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 66
  %28 = ptrtoint ptr %mgmt_last_antenna_idx9 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mgmt_last_antenna_idx9, align 2
  %conv10 = zext i8 %29 to i32
  %shl12 = shl i32 16384, %conv10
  %30 = tail call i32 @llvm.bswap.i32(i32 %shl12)
  %rate_n_flags = getelementptr inbounds %struct.iwl_tx_cmd, ptr %tx, i32 0, i32 4
  %31 = ptrtoint ptr %rate_n_flags to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %rate_n_flags, align 1
  %band.i = getelementptr inbounds %struct.sk_buff, ptr %beacon, i32 0, i32 3, i32 4
  %32 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load.i = load i32, ptr %band.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load.i)
  %cmp.i = icmp ult i32 %bf.load.i, 536870912
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.if.else.i_crit_edge

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end
  %p2p.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %33 = ptrtoint ptr %p2p.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %p2p.i, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.iwl_mvm_mac_ctxt_get_lowest_rate.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i.iwl_mvm_mac_ctxt_get_lowest_rate.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_mac_ctxt_get_lowest_rate.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  br label %iwl_mvm_mac_ctxt_get_lowest_rate.exit

iwl_mvm_mac_ctxt_get_lowest_rate.exit:            ; preds = %if.else.i, %land.lhs.true.i.iwl_mvm_mac_ctxt_get_lowest_rate.exit_crit_edge
  %cmp = phi i1 [ true, %land.lhs.true.i.iwl_mvm_mac_ctxt_get_lowest_rate.exit_crit_edge ], [ false, %if.else.i ]
  %rate.0.i = phi i32 [ 0, %land.lhs.true.i.iwl_mvm_mac_ctxt_get_lowest_rate.exit_crit_edge ], [ 4, %if.else.i ]
  %35 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fw, align 8
  %call16 = tail call zeroext i8 @iwl_mvm_mac80211_idx_to_hwrate(ptr noundef %36, i32 noundef %rate.0.i) #11
  %conv17 = zext i8 %call16 to i32
  %37 = shl nuw i32 %conv17, 24
  %38 = ptrtoint ptr %rate_n_flags to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %rate_n_flags, align 1
  %or19 = or i32 %37, %39
  %or24 = or i32 %or19, 131072
  %spec.select = select i1 %cmp, i32 %or24, i32 %or19
  store i32 %spec.select, ptr %rate_n_flags, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_mvm_bt_coex_tx_prio(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_mvm_next_antenna(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_mac_ctxt_cmd_common(ptr nocapture noundef readonly %mvm, ptr noundef %vif, ptr noundef %cmd, ptr noundef readonly %bssid_override, i32 noundef %action) unnamed_addr #0 align 64 {
entry:
  %basic.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %ht_operation_mode = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 27
  %0 = ptrtoint ptr %ht_operation_mode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ht_operation_mode, align 8
  %2 = and i16 %1, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  %tobool2.not = icmp eq ptr %bssid_override, null
  br i1 %tobool2.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bss_conf = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %3 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bss_conf, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi ptr [ %4, %cond.false ], [ %bssid_override, %entry.cond.end_crit_edge ]
  %id = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %id, align 4
  %conv5 = zext i16 %6 to i32
  %color = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 2
  %7 = ptrtoint ptr %color to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %color, align 2
  %conv6 = zext i16 %8 to i32
  %shl7 = shl nuw nsw i32 %conv6, 8
  %or = or i32 %shl7, %conv5
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %cmd, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %action)
  %action8 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 1
  %12 = ptrtoint ptr %action8 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %action8, align 1
  %13 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vif, align 8
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %14, label %land.end [
    i32 2, label %sw.bb
    i32 3, label %sw.bb11
    i32 6, label %sw.bb13
    i32 10, label %sw.bb15
    i32 1, label %sw.bb17
  ]

sw.bb:                                            ; preds = %cond.end
  %p2p = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %16 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %p2p, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool9.not = icmp eq i8 %17, 0
  %mac_type10 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 2
  br i1 %tobool9.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %mac_type10 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 117440512, ptr %mac_type10, align 1
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %mac_type10 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 83886080, ptr %mac_type10, align 1
  br label %sw.epilog

sw.bb11:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %mac_type12 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 2
  %20 = ptrtoint ptr %mac_type12 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 134217728, ptr %mac_type12, align 1
  br label %sw.epilog

sw.bb13:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %mac_type14 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 2
  %21 = ptrtoint ptr %mac_type14 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 33554432, ptr %mac_type14, align 1
  br label %sw.epilog

sw.bb15:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %mac_type16 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 2
  %22 = ptrtoint ptr %mac_type16 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 100663296, ptr %mac_type16, align 1
  br label %sw.epilog

sw.bb17:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %mac_type18 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 2
  %23 = ptrtoint ptr %mac_type18 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 67108864, ptr %mac_type18, align 1
  br label %sw.epilog

land.end:                                         ; preds = %cond.end
  %.b224 = load i1, ptr @iwl_mvm_mac_ctxt_cmd_common.__already_done, align 1
  br i1 %.b224, label %land.end.sw.epilog_crit_edge, label %if.then26, !prof !123

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then26:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_mac_ctxt_cmd_common.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 471, i32 noundef 9, ptr noundef null) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then26, %land.end.sw.epilog_crit_edge, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %if.else, %if.then
  %tsf_id = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 26, i32 1
  %24 = ptrtoint ptr %tsf_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tsf_id, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %tsf_id56 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 3
  %27 = ptrtoint ptr %tsf_id56 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %tsf_id56, align 1
  %node_addr = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 4
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %28 = call ptr @memcpy(ptr %node_addr, ptr %addr, i32 6)
  %tobool58.not = icmp eq ptr %cond, null
  %bssid_addr62 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 6
  br i1 %tobool58.not, label %if.else61, label %if.then59

if.then59:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %29 = call ptr @memcpy(ptr %bssid_addr62, ptr %cond, i32 6)
  br label %if.end64

if.else61:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %30 = call ptr @memset(ptr %bssid_addr62, i32 255, i32 6)
  br label %if.end64

if.end64:                                         ; preds = %if.else61, %if.then59
  %31 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %34, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !124
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.end64.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end64.rcu_read_lock.exit_crit_edge:            ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end64
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 696, ptr noundef nonnull @.str.32) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end64.rcu_read_lock.exit_crit_edge
  %chanctx_conf = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 9
  %35 = ptrtoint ptr %chanctx_conf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %chanctx_conf, align 4
  %call70 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end79_crit_edge

rcu_read_lock.exit.do.end79_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end79

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call72 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %land.lhs.true.do.end79_crit_edge, label %land.lhs.true74

land.lhs.true.do.end79_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end79

land.lhs.true74:                                  ; preds = %land.lhs.true
  %.b222223 = load i1, ptr @iwl_mvm_mac_ctxt_cmd_common.__warned, align 1
  br i1 %.b222223, label %land.lhs.true74.do.end79_crit_edge, label %if.then76

land.lhs.true74.do.end79_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end79

if.then76:                                        ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_mac_ctxt_cmd_common.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 484, ptr noundef nonnull @.str.16) #11
  br label %do.end79

do.end79:                                         ; preds = %if.then76, %land.lhs.true74.do.end79_crit_edge, %land.lhs.true.do.end79_crit_edge, %rcu_read_lock.exit.do.end79_crit_edge
  %tobool81.not = icmp eq ptr %36, null
  br i1 %tobool81.not, label %do.end79.cond.end84_crit_edge, label %cond.true82

do.end79.cond.end84_crit_edge:                    ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end84

cond.true82:                                      ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  br label %cond.end84

cond.end84:                                       ; preds = %cond.true82, %do.end79.cond.end84_crit_edge
  %cond85 = phi i32 [ %40, %cond.true82 ], [ 0, %do.end79.cond.end84_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %basic.i) #11
  %basic_rates.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 24
  %41 = ptrtoint ptr %basic_rates.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %basic_rates.i, align 8
  %43 = ptrtoint ptr %basic.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %basic.i, align 4
  %hw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %44 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wiphy.i, align 8
  %arrayidx.i = getelementptr %struct.wiphy, ptr %47, i32 0, i32 53, i32 %cond85
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i, align 4
  %call.i225 = call i32 @_find_next_bit_be(ptr noundef nonnull %basic.i, i32 noundef 32, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i225)
  %cmp85.i = icmp slt i32 %call.i225, 32
  br i1 %cmp85.i, label %for.body.lr.ph.i, label %cond.end84.for.end.thread.i_crit_edge

cond.end84.for.end.thread.i_crit_edge:            ; preds = %cond.end84
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread.i

for.body.lr.ph.i:                                 ; preds = %cond.end84
  %bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %49, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end18.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.090.i = phi i32 [ %call.i225, %for.body.lr.ph.i ], [ %call19.i, %if.end18.i.for.body.i_crit_edge ]
  %ofdm.089.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %ofdm.1.i, %if.end18.i.for.body.i_crit_edge ]
  %cck.088.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %cck.1.i, %if.end18.i.for.body.i_crit_edge ]
  %lowest_present_cck.087.i = phi i32 [ 100, %for.body.lr.ph.i ], [ %lowest_present_cck.1.i, %if.end18.i.for.body.i_crit_edge ]
  %lowest_present_ofdm.086.i = phi i32 [ 100, %for.body.lr.ph.i ], [ %lowest_present_ofdm.1.i, %if.end18.i.for.body.i_crit_edge ]
  %50 = ptrtoint ptr %bitrates.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bitrates.i, align 4
  %hw_value.i = getelementptr %struct.ieee80211_rate, ptr %51, i32 %i.090.i, i32 2
  %52 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %hw_value.i, align 2
  %conv.i = zext i16 %53 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %53)
  %cmp3.i = icmp ugt i16 %53, 3
  br i1 %cmp3.i, label %if.then.i226, label %do.end.i

if.then.i226:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = add nsw i32 %conv.i, -4
  %shl.i = shl nuw i32 1, %sub.i
  %54 = trunc i32 %shl.i to i8
  %conv6.i = or i8 %ofdm.089.i, %54
  %55 = call i32 @llvm.smin.i32(i32 %lowest_present_ofdm.086.i, i32 %conv.i) #11
  br label %if.end18.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %shl10.i = shl nuw i32 1, %conv.i
  %56 = trunc i32 %shl10.i to i8
  %conv13.i = or i8 %cck.088.i, %56
  %57 = call i32 @llvm.smin.i32(i32 %lowest_present_cck.087.i, i32 %conv.i) #11
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end.i, %if.then.i226
  %lowest_present_ofdm.1.i = phi i32 [ %55, %if.then.i226 ], [ %lowest_present_ofdm.086.i, %do.end.i ]
  %lowest_present_cck.1.i = phi i32 [ %lowest_present_cck.087.i, %if.then.i226 ], [ %57, %do.end.i ]
  %cck.1.i = phi i8 [ %cck.088.i, %if.then.i226 ], [ %conv13.i, %do.end.i ]
  %ofdm.1.i = phi i8 [ %conv6.i, %if.then.i226 ], [ %ofdm.089.i, %do.end.i ]
  %add.i = add nsw i32 %i.090.i, 1
  %call19.i = call i32 @_find_next_bit_be(ptr noundef nonnull %basic.i, i32 noundef 32, i32 noundef %add.i) #11
  %cmp.i = icmp slt i32 %call19.i, 32
  br i1 %cmp.i, label %if.end18.i.for.body.i_crit_edge, label %for.end.i

if.end18.i.for.body.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %lowest_present_ofdm.1.i)
  %cmp20.i = icmp sgt i32 %lowest_present_ofdm.1.i, 8
  %58 = or i8 %ofdm.1.i, 16
  br i1 %cmp20.i, label %for.end.i.for.end.thread.i_crit_edge, label %for.end.i.iwl_mvm_ack_rates.exit_crit_edge

for.end.i.iwl_mvm_ack_rates.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_ack_rates.exit

for.end.i.for.end.thread.i_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %for.end.i.for.end.thread.i_crit_edge, %cond.end84.for.end.thread.i_crit_edge
  %59 = phi i8 [ %58, %for.end.i.for.end.thread.i_crit_edge ], [ 16, %cond.end84.for.end.thread.i_crit_edge ]
  %cck.0.lcssa104.i = phi i8 [ %cck.1.i, %for.end.i.for.end.thread.i_crit_edge ], [ 0, %cond.end84.for.end.thread.i_crit_edge ]
  %lowest_present_cck.0.lcssa102.i = phi i32 [ %lowest_present_cck.1.i, %for.end.i.for.end.thread.i_crit_edge ], [ 100, %cond.end84.for.end.thread.i_crit_edge ]
  %lowest_present_ofdm.0.lcssa100.i = phi i32 [ %lowest_present_ofdm.1.i, %for.end.i.for.end.thread.i_crit_edge ], [ 100, %cond.end84.for.end.thread.i_crit_edge ]
  br label %iwl_mvm_ack_rates.exit

iwl_mvm_ack_rates.exit:                           ; preds = %for.end.thread.i, %for.end.i.iwl_mvm_ack_rates.exit_crit_edge
  %cck.0.lcssa103.i = phi i8 [ %cck.0.lcssa104.i, %for.end.thread.i ], [ %cck.1.i, %for.end.i.iwl_mvm_ack_rates.exit_crit_edge ]
  %lowest_present_cck.0.lcssa101.i = phi i32 [ %lowest_present_cck.0.lcssa102.i, %for.end.thread.i ], [ %lowest_present_cck.1.i, %for.end.i.iwl_mvm_ack_rates.exit_crit_edge ]
  %lowest_present_ofdm.0.lcssa99.i = phi i32 [ %lowest_present_ofdm.0.lcssa100.i, %for.end.thread.i ], [ %lowest_present_ofdm.1.i, %for.end.i.iwl_mvm_ack_rates.exit_crit_edge ]
  %60 = phi i8 [ %59, %for.end.thread.i ], [ %ofdm.1.i, %for.end.i.iwl_mvm_ack_rates.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %lowest_present_ofdm.0.lcssa99.i)
  %cmp27.i = icmp sgt i32 %lowest_present_ofdm.0.lcssa99.i, 6
  %61 = or i8 %60, 4
  %ofdm.3.i = select i1 %cmp27.i, i8 %61, i8 %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %lowest_present_cck.0.lcssa101.i)
  %cmp37.i = icmp sgt i32 %lowest_present_cck.0.lcssa101.i, 3
  %62 = or i8 %cck.0.lcssa103.i, 8
  %cck.2.i = select i1 %cmp37.i, i8 %62, i8 %cck.0.lcssa103.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %lowest_present_cck.0.lcssa101.i)
  %cmp44.i = icmp sgt i32 %lowest_present_cck.0.lcssa101.i, 2
  %63 = or i8 %cck.2.i, 4
  %cck.3.i = select i1 %cmp44.i, i8 %63, i8 %cck.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %lowest_present_cck.0.lcssa101.i)
  %cmp51.i = icmp sgt i32 %lowest_present_cck.0.lcssa101.i, 1
  %64 = or i8 %cck.3.i, 2
  %cck.4.i = select i1 %cmp51.i, i8 %64, i8 %cck.3.i
  %65 = or i8 %ofdm.3.i, 1
  %66 = or i8 %cck.4.i, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %basic.i) #11
  %call.i227 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i227, label %iwl_mvm_ack_rates.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i230

iwl_mvm_ack_rates.exit.rcu_read_unlock.exit_crit_edge: ; preds = %iwl_mvm_ack_rates.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i230:                               ; preds = %iwl_mvm_ack_rates.exit
  %call1.i228 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i228)
  %tobool.not.i229 = icmp eq i32 %call1.i228, 0
  br i1 %tobool.not.i229, label %land.lhs.true.i230.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i232

land.lhs.true.i230.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i230
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i232:                              ; preds = %land.lhs.true.i230
  %.b4.i231 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i231, label %land.lhs.true2.i232.rcu_read_unlock.exit_crit_edge, label %if.then.i233

land.lhs.true2.i232.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i232
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i233:                                     ; preds = %land.lhs.true2.i232
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 724, ptr noundef nonnull @.str.36) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i233, %land.lhs.true2.i232.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i230.rcu_read_unlock.exit_crit_edge, %iwl_mvm_ack_rates.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !125
  %67 = call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i.i.i.i234 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i.i.i234 to ptr
  %preempt_count.i.i.i.i235 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i.i.i235 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i.i.i235, align 4
  %sub.i.i.i = add i32 %70, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i235, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %conv86 = zext i8 %66 to i32
  %71 = shl nuw i32 %conv86, 24
  %cck_rates = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 8
  %72 = ptrtoint ptr %cck_rates to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 %71, ptr %cck_rates, align 1
  %conv87 = zext i8 %65 to i32
  %73 = shl nuw i32 %conv87, 24
  %ofdm_rates = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 9
  %74 = ptrtoint ptr %ofdm_rates to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 %73, ptr %ofdm_rates, align 1
  %use_short_preamble = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 15
  %75 = ptrtoint ptr %use_short_preamble to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %use_short_preamble, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool89.not = icmp eq i8 %76, 0
  %cond91 = select i1 %tobool89.not, i32 0, i32 536870912
  %cck_short_preamble = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 11
  %77 = ptrtoint ptr %cck_short_preamble to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %cond91, ptr %cck_short_preamble, align 1
  %use_short_slot = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 16
  %78 = ptrtoint ptr %use_short_slot to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %use_short_slot, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool93.not = icmp eq i8 %79, 0
  %cond95 = select i1 %tobool93.not, i32 0, i32 268435456
  %short_slot = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 12
  %80 = ptrtoint ptr %short_slot to i32
  call void @__asan_storeN_noabort(i32 %80, i32 4)
  store i32 %cond95, ptr %short_slot, align 1
  %filter_flags = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 13
  %81 = ptrtoint ptr %filter_flags to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 0, ptr %filter_flags, align 1
  %trans.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %82 = ptrtoint ptr %trans.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %trans.i.i, align 4
  %trans_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %trans_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %trans_cfg.i.i, align 4
  %use_tfh.i.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %85, i32 0, i32 5
  %86 = ptrtoint ptr %use_tfh.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %bf.load.i.i = load i16, ptr %use_tfh.i.i, align 4
  %87 = and i16 %bf.load.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool.i.not.i = icmp eq i16 %87, 0
  %call98 = call zeroext i8 @iwl_mvm_mac80211_ac_to_ucode_ac(i32 noundef 0) #11
  %arrayidx = getelementptr %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 26, i32 2
  %cw_min = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 18, i32 0, i32 1
  %88 = ptrtoint ptr %cw_min to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %cw_min, align 2
  %90 = call i16 @llvm.bswap.i16(i16 %89)
  %idxprom = zext i8 %call98 to i32
  %arrayidx99 = getelementptr %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 15, i32 %idxprom
  %91 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 2)
  store i16 %90, ptr %arrayidx99, align 1
  %cw_max = getelementptr %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 26, i32 3
  %92 = ptrtoint ptr %cw_max to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %cw_max, align 2
  %94 = call i16 @llvm.bswap.i16(i16 %93)
  %cw_max106 = getelementptr %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 15, i32 %idxprom, i32 1
  %95 = ptrtoint ptr %cw_max106 to i32
  call void @__asan_storeN_noabort(i32 %95, i32 2)
  store i16 %94, ptr %cw_max106, align 1
  %96 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %arrayidx, align 2
  %mul = shl i16 %97, 5
  %98 = call i16 @llvm.bswap.i16(i16 %mul)
  %edca_txop = getelementptr %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 15, i32 %idxprom, i32 4
  %99 = ptrtoint ptr %edca_txop to i32
  call void @__asan_storeN_noabort(i32 %99, i32 2)
  store i16 %98, ptr %edca_txop, align 1
  %aifs = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 18, i32 0, i32 3
  %100 = ptrtoint ptr %aifs to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %aifs, align 2
  %aifsn = getelementptr %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 15, i32 %idxprom, i32 2
  %102 = ptrtoint ptr %aifsn to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %aifsn, align 1
  %conv121 = select i1 %tobool.i.not.i, i8 8, i8 16
  %fifos_mask = getelementptr %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 15, i32 %idxprom, i32 3
  %103 = ptrtoint ptr %fifos_mask to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv121, ptr %fifos_mask, align 1
  %104 = ptrtoint ptr %trans.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %trans.i.i, align 4
  %trans_cfg.i.i.1 = getelementptr inbounds %struct.iwl_trans, ptr %105, i32 0, i32 3
  %106 = ptrtoint ptr %trans_cfg.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %trans_cfg.i.i.1, align 4
  %use_tfh.i.i.1 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %107, i32 0, i32 5
  %108 = ptrtoint ptr %use_tfh.i.i.1 to i32
  call void @__asan_load2_noabort(i32 %108)
  %bf.load.i.i.1 = load i16, ptr %use_tfh.i.i.1, align 4
  %109 = and i16 %bf.load.i.i.1, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %109)
  %tobool.i.not.i.1 = icmp eq i16 %109, 0
  %call98.1 = call zeroext i8 @iwl_mvm_mac80211_ac_to_ucode_ac(i32 noundef 1) #11
  %arrayidx.1 = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 18, i32 1
  %cw_min.1 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 27
  %110 = ptrtoint ptr %cw_min.1 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %cw_min.1, align 2
  %112 = call i16 @llvm.bswap.i16(i16 %111)
  %idxprom.1 = zext i8 %call98.1 to i32
  %arrayidx99.1 = getelementptr %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 15, i32 %idxprom.1
  %113 = ptrtoint ptr %arrayidx99.1 to i32
  call void @__asan_storeN_noabort(i32 %113, i32 2)
  store i16 %112, ptr %arrayidx99.1, align 1
  %cw_max.1 = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 18, i32 1, i32 2
  %114 = ptrtoint ptr %cw_max.1 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %cw_max.1, align 2
  %116 = call i16 @llvm.bswap.i16(i16 %115)
  %cw_max106.1 = getelementptr %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 15, i32 %idxprom.1, i32 1
  %117 = ptrtoint ptr %cw_max106.1 to i32
  call void @__asan_storeN_noabort(i32 %117, i32 2)
  store i16 %116, ptr %cw_max106.1, align 1
  %118 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %arrayidx.1, align 2
  %mul.1 = shl i16 %119, 5
  %120 = call i16 @llvm.bswap.i16(i16 %mul.1)
  %edca_txop.1 = getelementptr %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 15, i32 %idxprom.1, i32 4
  %121 = ptrtoint ptr %edca_txop.1 to i32
  call void @__asan_storeN_noabort(i32 %121, i32 2)
  store i16 %120, ptr %edca_txop.1, align 1
  %aifs.1 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 28
  %122 = ptrtoint ptr %aifs.1 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %aifs.1, align 2
  %aifsn.1 = getelementptr %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 15, i32 %idxprom.1, i32 2
  %124 = ptrtoint ptr %aifsn.1 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %123, ptr %aifsn.1, align 1
  %conv121.1 = select i1 %tobool.i.not.i.1, i8 4, i8 8
  %fifos_mask.1 = getelementptr %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 15, i32 %idxprom.1, i32 3
  %125 = ptrtoint ptr %fifos_mask.1 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv121.1, ptr %fifos_mask.1, align 1
  %126 = ptrtoint ptr %trans.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %trans.i.i, align 4
  %trans_cfg.i.i.2 = getelementptr inbounds %struct.iwl_trans, ptr %127, i32 0, i32 3
  %128 = ptrtoint ptr %trans_cfg.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %trans_cfg.i.i.2, align 4
  %use_tfh.i.i.2 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %129, i32 0, i32 5
  %130 = ptrtoint ptr %use_tfh.i.i.2 to i32
  call void @__asan_load2_noabort(i32 %130)
  %bf.load.i.i.2 = load i16, ptr %use_tfh.i.i.2, align 4
  %131 = and i16 %bf.load.i.i.2, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %tobool.i.not.i.2 = icmp eq i16 %131, 0
  %call98.2 = call zeroext i8 @iwl_mvm_mac80211_ac_to_ucode_ac(i32 noundef 2) #11
  %arrayidx.2 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 30
  %cw_min.2 = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 18, i32 2, i32 1
  %132 = ptrtoint ptr %cw_min.2 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %cw_min.2, align 2
  %134 = call i16 @llvm.bswap.i16(i16 %133)
  %idxprom.2 = zext i8 %call98.2 to i32
  %arrayidx99.2 = getelementptr %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 15, i32 %idxprom.2
  %135 = ptrtoint ptr %arrayidx99.2 to i32
  call void @__asan_storeN_noabort(i32 %135, i32 2)
  store i16 %134, ptr %arrayidx99.2, align 1
  %cw_max.2 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 31
  %136 = ptrtoint ptr %cw_max.2 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %cw_max.2, align 2
  %138 = call i16 @llvm.bswap.i16(i16 %137)
  %cw_max106.2 = getelementptr %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 15, i32 %idxprom.2, i32 1
  %139 = ptrtoint ptr %cw_max106.2 to i32
  call void @__asan_storeN_noabort(i32 %139, i32 2)
  store i16 %138, ptr %cw_max106.2, align 1
  %140 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %arrayidx.2, align 2
  %mul.2 = shl i16 %141, 5
  %142 = call i16 @llvm.bswap.i16(i16 %mul.2)
  %edca_txop.2 = getelementptr %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 15, i32 %idxprom.2, i32 4
  %143 = ptrtoint ptr %edca_txop.2 to i32
  call void @__asan_storeN_noabort(i32 %143, i32 2)
  store i16 %142, ptr %edca_txop.2, align 1
  %aifs.2 = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 18, i32 2, i32 3
  %144 = ptrtoint ptr %aifs.2 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %aifs.2, align 2
  %aifsn.2 = getelementptr %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 15, i32 %idxprom.2, i32 2
  %146 = ptrtoint ptr %aifsn.2 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %aifsn.2, align 1
  %conv121.2 = select i1 %tobool.i.not.i.2, i8 2, i8 4
  %fifos_mask.2 = getelementptr %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 15, i32 %idxprom.2, i32 3
  %147 = ptrtoint ptr %fifos_mask.2 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv121.2, ptr %fifos_mask.2, align 1
  %148 = ptrtoint ptr %trans.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %trans.i.i, align 4
  %trans_cfg.i.i.3 = getelementptr inbounds %struct.iwl_trans, ptr %149, i32 0, i32 3
  %150 = ptrtoint ptr %trans_cfg.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %trans_cfg.i.i.3, align 4
  %use_tfh.i.i.3 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %151, i32 0, i32 5
  %152 = ptrtoint ptr %use_tfh.i.i.3 to i32
  call void @__asan_load2_noabort(i32 %152)
  %bf.load.i.i.3 = load i16, ptr %use_tfh.i.i.3, align 4
  %153 = lshr i16 %bf.load.i.i.3, 14
  %154 = trunc i16 %153 to i8
  %155 = and i8 %154, 1
  %call98.3 = call zeroext i8 @iwl_mvm_mac80211_ac_to_ucode_ac(i32 noundef 3) #11
  %arrayidx.3 = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 18, i32 3
  %cw_min.3 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 32, i32 2
  %156 = ptrtoint ptr %cw_min.3 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %cw_min.3, align 2
  %158 = call i16 @llvm.bswap.i16(i16 %157)
  %idxprom.3 = zext i8 %call98.3 to i32
  %arrayidx99.3 = getelementptr %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 15, i32 %idxprom.3
  %159 = ptrtoint ptr %arrayidx99.3 to i32
  call void @__asan_storeN_noabort(i32 %159, i32 2)
  store i16 %158, ptr %arrayidx99.3, align 1
  %cw_max.3 = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 18, i32 3, i32 2
  %160 = ptrtoint ptr %cw_max.3 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %cw_max.3, align 2
  %162 = call i16 @llvm.bswap.i16(i16 %161)
  %cw_max106.3 = getelementptr %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 15, i32 %idxprom.3, i32 1
  %163 = ptrtoint ptr %cw_max106.3 to i32
  call void @__asan_storeN_noabort(i32 %163, i32 2)
  store i16 %162, ptr %cw_max106.3, align 1
  %164 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %arrayidx.3, align 2
  %mul.3 = shl i16 %165, 5
  %166 = call i16 @llvm.bswap.i16(i16 %mul.3)
  %edca_txop.3 = getelementptr %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 15, i32 %idxprom.3, i32 4
  %167 = ptrtoint ptr %edca_txop.3 to i32
  call void @__asan_storeN_noabort(i32 %167, i32 2)
  store i16 %166, ptr %edca_txop.3, align 1
  %aifs.3 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 32, i32 3
  %168 = ptrtoint ptr %aifs.3 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %aifs.3, align 2
  %aifsn.3 = getelementptr %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 15, i32 %idxprom.3, i32 2
  %170 = ptrtoint ptr %aifsn.3 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %169, ptr %aifsn.3, align 1
  %shl120.3 = shl nuw nsw i8 1, %155
  %fifos_mask.3 = getelementptr %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 15, i32 %idxprom.3, i32 3
  %171 = ptrtoint ptr %fifos_mask.3 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %shl120.3, ptr %fifos_mask.3, align 1
  %qos = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 36
  %172 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %qos, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool126.not = icmp eq i8 %173, 0
  br i1 %tobool126.not, label %rcu_read_unlock.exit.if.end129_crit_edge, label %if.then127

rcu_read_unlock.exit.if.end129_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end129

if.then127:                                       ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %qos_flags = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 14
  %174 = ptrtoint ptr %qos_flags to i32
  call void @__asan_loadN_noabort(i32 %174, i32 4)
  %175 = load i32, ptr %qos_flags, align 1
  %or128 = or i32 %175, 16777216
  store i32 %or128, ptr %qos_flags, align 1
  br label %if.end129

if.end129:                                        ; preds = %if.then127, %rcu_read_unlock.exit.if.end129_crit_edge
  %use_cts_prot = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 14
  %176 = ptrtoint ptr %use_cts_prot to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %use_cts_prot, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool131.not = icmp eq i8 %177, 0
  br i1 %tobool131.not, label %if.end129.do.end138_crit_edge, label %if.then132

if.end129.do.end138_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end138

if.then132:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #13
  %protection_flags = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 10
  %178 = ptrtoint ptr %protection_flags to i32
  call void @__asan_loadN_noabort(i32 %178, i32 4)
  %179 = load i32, ptr %protection_flags, align 1
  %or133 = or i32 %179, 134217728
  store i32 %or133, ptr %protection_flags, align 1
  br label %do.end138

do.end138:                                        ; preds = %if.then132, %if.end129.do.end138_crit_edge
  %180 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %mvm, align 8
  %182 = ptrtoint ptr %use_cts_prot to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %use_cts_prot, align 4, !range !122
  %184 = zext i8 %183 to i32
  %185 = ptrtoint ptr %ht_operation_mode to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %ht_operation_mode, align 8
  %conv145 = zext i16 %186 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %181, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_mac_ctxt_cmd_common, ptr noundef nonnull @.str.25, i32 noundef %184, i32 noundef %conv145) #11
  %width = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 32, i32 1
  %187 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %cmp149.not = icmp eq i32 %188, 0
  br i1 %cmp149.not, label %do.end138.if.end154_crit_edge, label %if.then151

do.end138.if.end154_crit_edge:                    ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end154

if.then151:                                       ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #13
  %qos_flags152 = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 14
  %189 = ptrtoint ptr %qos_flags152 to i32
  call void @__asan_loadN_noabort(i32 %189, i32 4)
  %190 = load i32, ptr %qos_flags152, align 1
  %or153 = or i32 %190, 33554432
  store i32 %or153, ptr %qos_flags152, align 1
  br label %if.end154

if.end154:                                        ; preds = %if.then151, %do.end138.if.end154_crit_edge
  br i1 %tobool.not, label %if.end154.if.end157_crit_edge, label %if.then156

if.end154.if.end157_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end157

if.then156:                                       ; preds = %if.end154
  %191 = ptrtoint ptr %ht_operation_mode to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %ht_operation_mode, align 8
  %193 = and i16 %192, 3
  %conv1.i = zext i16 %193 to i32
  %194 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %195, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_mac_ctxt_set_ht_flags, ptr noundef nonnull @.str.26, i32 noundef %conv1.i) #11
  %196 = zext i32 %conv1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %196, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %conv1.i, label %entry.unreachabledefault.i [
    i32 0, label %if.then156.if.end157_crit_edge
    i32 1, label %if.then156.sw.epilog.sink.split.i_crit_edge
    i32 3, label %if.then156.sw.epilog.sink.split.i_crit_edge242
    i32 2, label %sw.bb7.i
  ]

if.then156.sw.epilog.sink.split.i_crit_edge242:   ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split.i

if.then156.sw.epilog.sink.split.i_crit_edge:      ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split.i

if.then156.if.end157_crit_edge:                   ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end157

sw.bb7.i:                                         ; preds = %if.then156
  %197 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %198)
  %cmp.i237 = icmp ugt i32 %198, 1
  br i1 %cmp.i237, label %sw.bb7.i.sw.epilog.sink.split.i_crit_edge, label %sw.bb7.i.if.end157_crit_edge

sw.bb7.i.if.end157_crit_edge:                     ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end157

sw.bb7.i.sw.epilog.sink.split.i_crit_edge:        ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split.i

entry.unreachabledefault.i:                       ; preds = %if.then156
  unreachable

sw.epilog.sink.split.i:                           ; preds = %sw.bb7.i.sw.epilog.sink.split.i_crit_edge, %if.then156.sw.epilog.sink.split.i_crit_edge, %if.then156.sw.epilog.sink.split.i_crit_edge242
  %protection_flags.i = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 10
  %199 = ptrtoint ptr %protection_flags.i to i32
  call void @__asan_loadN_noabort(i32 %199, i32 4)
  %200 = load i32, ptr %protection_flags.i, align 1
  %or11.i = or i32 %200, 32769
  store i32 %or11.i, ptr %protection_flags.i, align 1
  br label %if.end157

if.end157:                                        ; preds = %sw.epilog.sink.split.i, %sw.bb7.i.if.end157_crit_edge, %if.then156.if.end157_crit_edge, %if.end154.if.end157_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_mvm_mac80211_ac_to_ucode_ac(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_mac_ctxt_cmd_fill_ap(ptr noundef %mvm, ptr noundef %vif, ptr nocapture noundef %cmd, ptr nocapture noundef writeonly %ctxt_ap, i1 noundef zeroext %add) unnamed_addr #0 align 64 {
entry:
  %data = alloca %struct.iwl_mvm_mac_ap_iterator_data, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data) #11
  %0 = getelementptr inbounds i8, ptr %data, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mvm, ptr %data, align 4
  %vif2 = getelementptr inbounds %struct.iwl_mvm_mac_ap_iterator_data, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %vif2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %vif, ptr %vif2, align 4
  %beacon_device_ts = getelementptr inbounds %struct.iwl_mvm_mac_ap_iterator_data, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %beacon_device_ts to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %beacon_device_ts, align 4
  %beacon_int = getelementptr inbounds %struct.iwl_mvm_mac_ap_iterator_data, ptr %data, i32 0, i32 3
  %5 = ptrtoint ptr %beacon_int to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %beacon_int, align 4
  %fifos_mask = getelementptr %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 15, i32 3, i32 3
  %6 = ptrtoint ptr %fifos_mask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fifos_mask, align 1
  %8 = or i8 %7, 32
  store i8 %8, ptr %fifos_mask, align 1
  %filter_flags = getelementptr inbounds %struct.iwl_mac_ctx_cmd, ptr %cmd, i32 0, i32 13
  %9 = ptrtoint ptr %filter_flags to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %filter_flags, align 1
  %or4 = or i32 %10, 1048576
  store i32 %or4, ptr %filter_flags, align 1
  %ap_assoc_sta_count = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 4
  %11 = ptrtoint ptr %ap_assoc_sta_count to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ap_assoc_sta_count, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %drop_bcn_ap_mode = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 168
  %13 = ptrtoint ptr %drop_bcn_ap_mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %drop_bcn_ap_mode, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool6.not = icmp eq i8 %14, 0
  br i1 %tobool6.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %or8 = or i32 %10, 1074790400
  %15 = ptrtoint ptr %filter_flags to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %or8, ptr %filter_flags, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %.str.30.sink = phi ptr [ @.str.29, %if.then ], [ @.str.30, %lor.lhs.false.if.end_crit_edge ]
  %16 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %17, i32 noundef 4, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_mac_ctxt_cmd_fill_ap, ptr noundef nonnull %.str.30.sink) #11
  %beacon_int19 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 19
  %18 = ptrtoint ptr %beacon_int19 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %beacon_int19, align 2
  %conv20 = zext i16 %19 to i32
  %20 = tail call i32 @llvm.bswap.i32(i32 %conv20)
  %bi = getelementptr inbounds %struct.iwl_mac_data_ap, ptr %ctxt_ap, i32 0, i32 2
  %21 = ptrtoint ptr %bi to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %bi, align 1
  %22 = ptrtoint ptr %beacon_int19 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %beacon_int19, align 2
  %conv23 = zext i16 %23 to i32
  %dtim_period = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 18
  %24 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dtim_period, align 8
  %conv25 = zext i8 %25 to i32
  %mul = mul nuw nsw i32 %conv25, %conv23
  %26 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %dtim_interval = getelementptr inbounds %struct.iwl_mac_data_ap, ptr %ctxt_ap, i32 0, i32 4
  %27 = ptrtoint ptr %dtim_interval to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %dtim_interval, align 1
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %28 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fw, align 8
  %_api.i = getelementptr inbounds %struct.iwl_fw, ptr %29, i32 0, i32 5, i32 7
  %30 = ptrtoint ptr %_api.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %_api.i, align 4
  %32 = and i32 %31, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i.not = icmp eq i32 %32, 0
  br i1 %tobool.i.not, label %if.then27, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %cab_queue = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 5
  %33 = ptrtoint ptr %cab_queue to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %cab_queue, align 2
  %conv28 = zext i16 %34 to i32
  %35 = tail call i32 @llvm.bswap.i32(i32 %conv28)
  %mcast_qid = getelementptr inbounds %struct.iwl_mac_data_ap, ptr %ctxt_ap, i32 0, i32 6
  %36 = ptrtoint ptr %mcast_qid to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %mcast_qid, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end.if.end29_crit_edge
  br i1 %add, label %if.then31, label %if.end29.if.end47_crit_edge

if.end29.if.end47_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then31:                                        ; preds = %if.end29
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %37 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %38, i32 noundef 1, ptr noundef nonnull @iwl_mvm_mac_ap_iterator, ptr noundef nonnull %data) #11
  %39 = ptrtoint ptr %beacon_device_ts to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %beacon_device_ts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool33.not = icmp eq i32 %40, 0
  br i1 %tobool33.not, label %if.else43, label %if.then34

if.then34:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  %call35 = call i32 @prandom_u32() #11
  %rem = urem i32 %call35, 28
  %add36 = add nuw nsw i32 %rem, 36
  %41 = ptrtoint ptr %beacon_device_ts to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %beacon_device_ts, align 4
  %43 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %beacon_int, align 4
  %conv39 = zext i16 %44 to i32
  %mul40 = mul nuw nsw i32 %add36, %conv39
  %div = udiv i32 %mul40, 100
  %mul.i = shl nuw nsw i32 %div, 10
  %add42 = add i32 %mul.i, %42
  br label %if.end47.sink.split

if.else43:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  %call44 = call i32 @iwl_mvm_get_systime(ptr noundef %mvm) #11
  br label %if.end47.sink.split

if.end47.sink.split:                              ; preds = %if.else43, %if.then34
  %add42.sink = phi i32 [ %add42, %if.then34 ], [ %call44, %if.else43 ]
  %ap_beacon_time = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 26
  %45 = ptrtoint ptr %ap_beacon_time to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add42.sink, ptr %ap_beacon_time, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.end47.sink.split, %if.end29.if.end47_crit_edge
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %ap_beacon_time48 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 26
  %46 = ptrtoint ptr %ap_beacon_time48 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ap_beacon_time48, align 8
  %48 = call i32 @llvm.bswap.i32(i32 %47)
  %49 = ptrtoint ptr %ctxt_ap to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %48, ptr %ctxt_ap, align 1
  %beacon_tsf = getelementptr inbounds %struct.iwl_mac_data_ap, ptr %ctxt_ap, i32 0, i32 1
  %50 = ptrtoint ptr %beacon_tsf to i32
  call void @__asan_storeN_noabort(i32 %50, i32 8)
  store i64 0, ptr %beacon_tsf, align 1
  %id = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %51 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %id, align 4
  %conv49 = zext i16 %52 to i32
  %53 = call i32 @llvm.bswap.i32(i32 %conv49)
  %beacon_template = getelementptr inbounds %struct.iwl_mac_data_ap, ptr %ctxt_ap, i32 0, i32 7
  %54 = ptrtoint ptr %beacon_template to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %53, ptr %beacon_template, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @iwl_mvm_mac_ap_iterator(ptr nocapture noundef %_data, ptr nocapture noundef readnone %mac, ptr nocapture noundef readonly %vif) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %assoc = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 10
  %2 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %assoc, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %p2p = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %4 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %p2p, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %beacon_device_ts = getelementptr inbounds %struct.iwl_mvm_mac_ap_iterator_data, ptr %_data, i32 0, i32 2
  %6 = ptrtoint ptr %beacon_device_ts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %beacon_device_ts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end4_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %sync_device_ts = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 22
  %8 = ptrtoint ptr %sync_device_ts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sync_device_ts, align 8
  %beacon_device_ts6 = getelementptr inbounds %struct.iwl_mvm_mac_ap_iterator_data, ptr %_data, i32 0, i32 2
  %10 = ptrtoint ptr %beacon_device_ts6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %beacon_device_ts6, align 4
  %beacon_int = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 19
  %11 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %beacon_int, align 2
  %beacon_int8 = getelementptr inbounds %struct.iwl_mvm_mac_ap_iterator_data, ptr %_data, i32 0, i32 3
  %13 = ptrtoint ptr %beacon_int8 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %beacon_int8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_get_systime(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_allocate_int_sta(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @iwl_mvm_go_iterator(ptr nocapture noundef writeonly %_data, ptr nocapture noundef readnone %mac, ptr nocapture noundef readonly %vif) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %p2p = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %2 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %p2p, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true1

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %ap_ibss_active = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 8
  %4 = ptrtoint ptr %ap_ibss_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ap_ibss_active, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %land.lhs.true1.if.end_crit_edge, label %if.then

land.lhs.true1.if.end_crit_edge:                  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %_data to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %_data, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true1.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_beacon_cntdwn_is_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ieee80211_beacon_update_cntdwn(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_schedule_csa_period(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_iwl_dbg_tlv_time_point(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !44, !45, !47, !49, !51, !52, !54, !56, !58, !59, !61, !63, !64, !66, !68, !70, !72, !74, !75, !77, !79, !81, !83, !84, !86, !87, !89, !91, !93, !94, !96, !98, !99, !100, !102, !104, !106, !108, !110}
!llvm.named.register.sp = !{!111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @iwl_mvm_ac_to_tx_fifo, !1, !"iwl_mvm_ac_to_tx_fifo", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 16, i32 10}
!2 = !{ptr @iwl_mvm_ac_to_gen2_tx_fifo, !3, !"iwl_mvm_ac_to_gen2_tx_fifo", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 23, i32 10}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 210, i32 2}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 258, i32 6}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 264, i32 3}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 275, i32 3}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 788, i32 3}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 1215, i32 6}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 1236, i32 6}
!19 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 1250, i32 6}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 1263, i32 3}
!25 = !{ptr @__func__.iwl_mvm_rx_beacon_notif, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 1340, i32 3}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 1352, i32 3}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 1358, i32 12}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 1364, i32 19}
!35 = !{ptr @__func__.iwl_mvm_rx_missed_beacons_notif, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 1402, i32 2}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 1424, i32 37}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 1486, i32 3}
!42 = !{ptr @__func__.iwl_mvm_probe_resp_data_notif, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 1521, i32 2}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 1548, i32 13}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 1572, i32 6}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 1576, i32 8}
!51 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 1581, i32 13}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 1587, i32 7}
!56 = !{ptr @__func__.iwl_mvm_channel_switch_start_notif, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 1592, i32 3}
!58 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 1611, i32 3}
!61 = !{ptr @__func__.iwl_mvm_rx_missed_vap_notif, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 1626, i32 2}
!63 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 1636, i32 37}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 958, i32 8}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 797, i32 6}
!70 = distinct !{null, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/net/cfg80211.h", i32 5969, i32 6}
!72 = !{ptr @__func__.iwl_mvm_mac_ctxt_cmd_sta, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 600, i32 3}
!74 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 622, i32 10}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 471, i32 3}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 484, i32 12}
!81 = !{ptr @__func__.iwl_mvm_mac_ctxt_cmd_common, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 522, i32 2}
!83 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @__func__.iwl_mvm_mac_ctxt_set_ht_flags, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 409, i32 2}
!86 = !{ptr @.str.26, !85, !"<string literal>", i1 false, i1 false}
!87 = distinct !{null, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 427, i32 3}
!89 = !{ptr @.str.28, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 537, i32 3}
!91 = !{ptr @__func__.iwl_mvm_mac_ctxt_cmd_fill_ap, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 1095, i32 3}
!93 = !{ptr @.str.29, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mac-ctxt.c", i32 1097, i32 3}
!96 = distinct !{null, !97, !"__warned", i1 false, i1 false}
!97 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!98 = !{ptr @.str.31, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.32, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.33, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h", i32 1216, i32 6}
!102 = distinct !{null, !103, !"__warned", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h", i32 1220, i32 10}
!104 = distinct !{null, !105, !"__warned", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h", i32 1222, i32 9}
!106 = !{ptr @.str.35, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../fw/dbg.h", i32 121, i32 3}
!108 = distinct !{null, !109, !"__warned", i1 false, i1 false}
!109 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!110 = !{ptr @.str.36, !109, !"<string literal>", i1 false, i1 false}
!111 = !{!"sp"}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{!"branch_weights", i32 1, i32 2000}
!122 = !{i8 0, i8 2}
!123 = !{!"branch_weights", i32 2000, i32 1}
!124 = !{i64 2149712435}
!125 = !{i64 2149712701}
!126 = !{i64 2160106542}
