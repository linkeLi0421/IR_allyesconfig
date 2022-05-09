; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/mvm/rx.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/mvm/rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%struct.atomic_t = type { i32 }
%union.anon.98 = type { i32 }
%struct.iwl_rx_cmd_buffer = type { ptr, i32, i8, i32, i32 }
%struct.iwl_mvm = type <{ ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i32, i8, [3 x i8], %struct.iwl_notif_wait_data, %union.anon.136, %struct.anon.137, %struct.anon.137, %struct.list_head, %union.anon.138, %struct.work_struct, ptr, ptr, ptr, ptr, i8, i8, [2 x i8], %struct.work_struct, ptr, [13 x %struct.iwl_nvm_section], %struct.iwl_fw_runtime, [5 x %struct.mac_address], %struct.iwl_rx_phy_info, [2 x i8], [16 x ptr], i8, [3 x i8], i32, i32, ptr, ptr, i32, i32, i32, %struct.delayed_work, i32, [4 x i32], [4 x i8], i64, ptr, i8, [3 x i8], %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i8, i8, i8, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.iwl_mvm_frame_stats, %struct.spinlock, i16, [2 x i8], [3 x %struct.iwl_mvm_phy_ctxt], %struct.list_head, %struct.spinlock, [1 x i32], [16 x i8], i8, [3 x i8], [4 x ptr], i8, [3 x i8], ptr, %struct.led_classdev, ptr, %struct.wiphy_wowlan_support, i32, i32, i32, i32, %struct.ieee80211_scan_ies, ptr, i32, ptr, i32, i8, i8, i8, i8, i32, ptr, i32, %struct.wait_queue_head, %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_ci_cmd, i8, [3 x i8], i32, %struct.list_head, %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_thermal_device, %struct.iwl_mvm_cooling_device, i32, i8, i8, [2 x i8], i32, [4 x i8], %struct.iwl_mvm_tcm, i8, i8, [20 x %struct.mac_address], %struct.iwl_time_quota_cmd, [2 x i8], i32, ptr, i16, i16, i16, i16, i8, [3 x i8], i32, ptr, ptr, ptr, i8, [3 x i8], i32, i8, i8, [2 x i8], i32, %struct.anon.151, [10 x i32], [1 x %struct.ieee80211_cipher_scheme], %struct.cfg80211_ftm_responder_stats, %struct.anon.153, %struct.list_head, %struct.anon.155, [2 x i8], ptr, [32 x ptr], i8, [3 x i8], %struct.delayed_work, i8, i8, i16, [6 x i8], [2 x i8], i32, i32 }>
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }
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
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.iwl_mvm_stat_data_all_macs = type { ptr, i32, ptr }
%struct.iwl_mvm_stat_data = type { ptr, i32, i32, i8, ptr, ptr }
%struct.iwl_mvm_sta = type { i32, i32, i32, i16, i16, i32, i32, i8, i8, %struct.spinlock, [9 x %struct.iwl_mvm_tid_data], [8 x i8], %union.anon.160, ptr, [4 x ptr], ptr, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8, i8, i32 }
%struct.iwl_mvm_tid_data = type { i16, i16, i32, i8, i8, i32, i16, i16, i16, i32, i32, i32 }
%union.anon.160 = type { %struct.iwl_lq_sta }
%struct.iwl_lq_sta = type { i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, %struct.rs_rate, i32, ptr, i32, i8, %struct.iwl_lq_cmd, [2 x %struct.iwl_scale_tbl_info], i8, i32, i8, i32, %struct.lq_sta_pers }
%struct.rs_rate = type { i32, i32, i8, i32, i8, i8, i8, i8 }
%struct.iwl_lq_cmd = type { i8, i8, i16, i8, i8, i8, i8, [4 x i8], i16, i8, i8, i32, [16 x i32], i32 }
%struct.iwl_scale_tbl_info = type { %struct.rs_rate, i32, ptr, [17 x %struct.iwl_rate_scale_data], [16 x %struct.iwl_rate_scale_data] }
%struct.iwl_rate_scale_data = type { i64, i32, i32, i32, i32 }
%struct.lq_sta_pers = type { i32, i8, i32, i8, [4 x i8], i8, [8 x [17 x %struct.rs_rate_stats]], ptr, %struct.spinlock }
%struct.rs_rate_stats = type { i64, i64 }
%struct.iwl_statistics_ntfy_hdr = type { i8, i8, i16 }
%struct.iwl_statistics_ntfy_per_mac = type { i32, i32, i32, i32, i32, i32, i32 }

@__func__.iwl_mvm_rx_rx_mpdu = private unnamed_addr constant [19 x i8] c"iwl_mvm_rx_rx_mpdu\00", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Bad REPLY_RX_MPDU_CMD size\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"FW lied about packet len\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"alloc_skb failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Bad decryption results 0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Bad CRC or FIFO: 0x%08X.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Rssi %d, TSF %llu\0A\00", [45 x i8] zeroinitializer }, align 32
@iwl_mvm_rx_rx_mpdu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/rx.c\00", [52 x i8] zeroinitializer }, align 32
@iwl_mvm_rx_rx_mpdu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@iwl_mvm_rx_rx_mpdu.__warned.8 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid rate flags 0x%x, band %d,\0A\00", [61 x i8] zeroinitializer }, align 32
@iwl_mvm_handle_rx_statistics.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"received invalid statistics size (%d)!\0A\00", [56 x i8] zeroinitializer }, align 32
@iwl_mvm_window_status_notif.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unhandled alg: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_get_signal_strength = private unnamed_addr constant [28 x i8] c"iwl_mvm_get_signal_strength\00", align 1
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"energy In A %d B %d  , and max %d\0A\00", [61 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Trigger %d occurred while no-collect window.\0A\00", [50 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@iwl_mvm_rx_handle_tcm.thresh_tpt = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\09\12\1E*<NZ`x\87", [22 x i8] zeroinitializer }, align 32
@tid_to_mac80211_ac = external dso_local local_unnamed_addr constant [0 x i8], align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@iwl_mvm_handle_rx_statistics_tlv.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalid statistics version id: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@iwl_mvm_verify_stats_len.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"received invalid statistics size (%d)!, expected_size: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@iwl_mvm_verify_stats_len.__already_done.20 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"received unsupported hdr type %d, version %d\0A\00", [50 x i8] zeroinitializer }, align 32
@iwl_mvm_verify_stats_len.__already_done.22 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"received invalid statistics size in header (%d)!, expected_size: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@iwl_mvm_stat_iterator_all_macs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"invalid vif id: %d\00", [45 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_update_vif_sig = private unnamed_addr constant [23 x i8] c"iwl_mvm_update_vif_sig\00", align 1
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"RSSI is 0 - skip signal based decision\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cqm_iterator bt coex high %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cqm_iterator bt coex low %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cqm_iterator cqm low %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cqm_iterator cqm high %d\0A\00", [38 x i8] zeroinitializer }, align 32
@iwl_mvm_rx_stats_check_trigger.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_stats_energy_iter.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sta_id %d >= %d\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1792]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 2048, i64 4096, i64 6144]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 16, i64 20480, i64 32768]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 16, i64 20480, i64 32768]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 8, i64 14, i64 15]
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 301, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 311, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 323, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 334, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 346, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 368, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 377, i32 8 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 378, i32 10 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 494, i32 7 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 912, i32 6 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 193, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 119, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 695, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [54 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/../fw/dbg.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 121, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [11 x i8] c"thresh_tpt\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 211, i32 18 }
@___asan_gen_.85 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 723, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 1160, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 820, i32 6 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 786, i32 6 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 793, i32 6 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 800, i32 6 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 643, i32 6 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 545, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 559, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 566, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 580, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 590, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private constant [47 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/rx.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 699, i32 6 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @iwl_mvm_rx_handle_tcm.thresh_tpt, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_rx_handle_tcm.thresh_tpt to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rx_rx_phy_cmd(ptr noundef %mvm, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #8
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
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  %sub.i = add nsw i32 %9, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %sub.i)
  %cmp = icmp ult i32 %sub.i, 68
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !87

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %last_phy_info = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 42
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %last_phy_info, ptr %data, i32 68)
  %ampdu_ref = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 20
  %11 = ptrtoint ptr %ampdu_ref to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ampdu_ref, align 8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %ampdu_ref, align 8
  %phy_flags = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 42, i32 7
  %13 = ptrtoint ptr %phy_flags to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %phy_flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %14)
  %tobool4.not = icmp sgt i16 %14, -1
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %drv_stats_lock = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 84
  tail call void @_raw_spin_lock(ptr noundef %drv_stats_lock) #8
  %ampdu_count = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 83, i32 12
  %15 = ptrtoint ptr %ampdu_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ampdu_count, align 4
  %inc6 = add i32 %16, 1
  store i32 %inc6, ptr %ampdu_count, align 4
  tail call void @_raw_spin_unlock(ptr noundef %drv_stats_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rx_rx_mpdu(ptr noundef %mvm, ptr noundef %napi, ptr nocapture noundef %rxb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i611 = tail call ptr @page_address(ptr noundef %1) #8
  %2 = ptrtoint ptr %call.i611 to i32
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
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  %sub.i = add nsw i32 %9, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp = icmp ult i32 %sub.i, 4
  br i1 %cmp, label %do.end, label %if.end, !prof !87

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %11, i32 noundef 8192, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_rx_mpdu, ptr noundef nonnull @.str) #8
  br label %cleanup452

if.end:                                           ; preds = %entry
  %last_phy_info = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 42
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  %add.ptr = getelementptr %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %12 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %data, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv = zext i16 %14 to i32
  %add8 = add nuw nsw i32 %conv, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add8, i32 %sub.i)
  %cmp9 = icmp ugt i32 %add8, %sub.i
  br i1 %cmp9, label %do.end21, label %if.end25, !prof !87

do.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %16, i32 noundef 8192, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_rx_mpdu, ptr noundef nonnull @.str.1) #8
  br label %cleanup452

if.end25:                                         ; preds = %if.end
  %add.ptr29 = getelementptr i8, ptr %add.ptr, i32 %conv
  %17 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %add.ptr29, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  %call.i612 = tail call ptr @__alloc_skb(i32 noundef 128, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool32.not = icmp eq ptr %call.i612, null
  br i1 %tobool32.not, label %do.end37, label %if.end41

do.end37:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %21, i32 noundef 0, ptr noundef nonnull @.str.2) #8
  br label %cleanup452

if.end41:                                         ; preds = %if.end25
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i612, i32 0, i32 3
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr, align 2
  %24 = and i16 %23, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp.i.not.i = icmp eq i16 %24, 0
  br i1 %cmp.i.not.i, label %if.end41.if.end53_crit_edge, label %lor.lhs.false.i

if.end41.if.end53_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

lor.lhs.false.i:                                  ; preds = %if.end41
  %and.i = and i32 %19, 1792
  %25 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %if.end4.i [
    i32 0, label %lor.lhs.false.i.if.end53_crit_edge
    i32 1792, label %lor.lhs.false.i.if.end53_crit_edge660
  ]

lor.lhs.false.i.if.end53_crit_edge660:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

lor.lhs.false.i.if.end53_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.end4.i:                                        ; preds = %lor.lhs.false.i
  %26 = add nsw i32 %and.i, -256
  %27 = lshr exact i32 %26, 8
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %27, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb9.i
    i32 0, label %if.end4.i.sw.bb15.i_crit_edge
    i32 3, label %sw.bb26.i
  ]

if.end4.i.sw.bb15.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb15.i

sw.bb.i:                                          ; preds = %if.end4.i
  %and6.i = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool.not.i613 = icmp eq i32 %and6.i, 0
  br i1 %tobool.not.i613, label %sw.bb.i.do.end49_crit_edge, label %if.end8.i

sw.bb.i.do.end49_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end49

if.end8.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %flag.i = getelementptr inbounds %struct.sk_buff, ptr %call.i612, i32 0, i32 3, i32 24
  %29 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flag.i, align 8
  %or.i = or i32 %30, 2
  store i32 %or.i, ptr %flag.i, align 8
  br label %if.end53

sw.bb9.i:                                         ; preds = %if.end4.i
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %31 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %32, i32 0, i32 5, i32 7, i32 1
  %33 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %35 = and i32 %34, 512
  %and11.i = and i32 %19, 128
  %36 = or i32 %35, %and11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %sw.bb9.i.if.end53_crit_edge, label %sw.bb9.i.sw.bb15.i_crit_edge

sw.bb9.i.sw.bb15.i_crit_edge:                     ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb15.i

sw.bb9.i.if.end53_crit_edge:                      ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

sw.bb15.i:                                        ; preds = %sw.bb9.i.sw.bb15.i_crit_edge, %if.end4.i.sw.bb15.i_crit_edge
  %crypt_len.0 = phi i8 [ 0, %if.end4.i.sw.bb15.i_crit_edge ], [ 8, %sw.bb9.i.sw.bb15.i_crit_edge ]
  %and16.i = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %sw.bb15.i.do.end49_crit_edge, label %if.end19.i

sw.bb15.i.do.end49_crit_edge:                     ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end49

if.end19.i:                                       ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #10
  %flag20.i = getelementptr inbounds %struct.sk_buff, ptr %call.i612, i32 0, i32 3, i32 24
  %38 = ptrtoint ptr %flag20.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flag20.i, align 8
  %or21.i = or i32 %39, 2
  store i32 %or21.i, ptr %flag20.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and.i)
  %cmp23.i = icmp eq i32 %and.i, 256
  %spec.select = select i1 %cmp23.i, i8 4, i8 %crypt_len.0
  br label %if.end53

sw.bb26.i:                                        ; preds = %if.end4.i
  %and27.i = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %sw.bb26.i.do.end49_crit_edge, label %if.end30.i

sw.bb26.i.do.end49_crit_edge:                     ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end49

if.end30.i:                                       ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #10
  %flag31.i = getelementptr inbounds %struct.sk_buff, ptr %call.i612, i32 0, i32 3, i32 24
  %40 = ptrtoint ptr %flag31.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flag31.i, align 8
  %or32.i = or i32 %41, 2
  store i32 %or32.i, ptr %flag31.i, align 8
  br label %if.end53

sw.default.i:                                     ; preds = %if.end4.i
  %monitor_on.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 171
  %42 = ptrtoint ptr %monitor_on.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %monitor_on.i, align 4, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool33.not.i = icmp eq i8 %43, 0
  br i1 %tobool33.not.i, label %do.end.i, label %sw.default.i.if.end53_crit_edge

sw.default.i.if.end53_crit_edge:                  ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

do.end.i:                                         ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %45, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef %19) #8
  br label %if.end53

do.end49:                                         ; preds = %sw.bb26.i.do.end49_crit_edge, %sw.bb15.i.do.end49_crit_edge, %sw.bb.i.do.end49_crit_edge
  %46 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %47, i32 noundef 8192, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_rx_mpdu, ptr noundef nonnull @.str.3, i32 noundef %19) #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i612, i32 noundef 0) #8
  br label %cleanup452

if.end53:                                         ; preds = %do.end.i, %sw.default.i.if.end53_crit_edge, %if.end30.i, %if.end19.i, %sw.bb9.i.if.end53_crit_edge, %if.end8.i, %lor.lhs.false.i.if.end53_crit_edge, %lor.lhs.false.i.if.end53_crit_edge660, %if.end41.if.end53_crit_edge
  %crypt_len.1.ph = phi i8 [ 0, %lor.lhs.false.i.if.end53_crit_edge ], [ 0, %lor.lhs.false.i.if.end53_crit_edge660 ], [ 8, %if.end8.i ], [ 0, %sw.bb9.i.if.end53_crit_edge ], [ 0, %if.end30.i ], [ 0, %sw.default.i.if.end53_crit_edge ], [ 0, %do.end.i ], [ 0, %if.end41.if.end53_crit_edge ], [ %spec.select, %if.end19.i ]
  %48 = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %48)
  %.not = icmp eq i32 %48, 3
  br i1 %.not, label %if.end53.if.end65_crit_edge, label %do.end61

if.end53.if.end65_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

do.end61:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %50, i32 noundef 16777216, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_rx_mpdu, ptr noundef nonnull @.str.4, i32 noundef %19) #8
  %flag = getelementptr inbounds %struct.sk_buff, ptr %call.i612, i32 0, i32 3, i32 24
  %51 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flag, align 8
  %or = or i32 %52, 32
  store i32 %or, ptr %flag, align 8
  br label %if.end65

if.end65:                                         ; preds = %do.end61, %if.end53.if.end65_crit_edge
  %rate_n_flags66 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 42, i32 10
  %53 = ptrtoint ptr %rate_n_flags66 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %rate_n_flags66, align 1
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %timestamp = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 42, i32 5
  %56 = ptrtoint ptr %timestamp to i32
  call void @__asan_loadN_noabort(i32 %56, i32 8)
  %57 = load i64, ptr %timestamp, align 1
  %58 = tail call i64 @llvm.bswap.i64(i64 %57)
  %59 = ptrtoint ptr %cb.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %58, ptr %cb.i, align 8
  %system_timestamp = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 42, i32 4
  %60 = ptrtoint ptr %system_timestamp to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %system_timestamp, align 1
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %device_timestamp = getelementptr inbounds %struct.sk_buff, ptr %call.i612, i32 0, i32 3, i32 16
  %63 = ptrtoint ptr %device_timestamp to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %device_timestamp, align 8
  %phy_flags = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 42, i32 7
  %64 = ptrtoint ptr %phy_flags to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %phy_flags, align 1
  %66 = lshr i16 %65, 8
  %67 = trunc i16 %66 to i8
  %68 = and i8 %67, 1
  %69 = xor i8 %68, 1
  %band = getelementptr inbounds %struct.sk_buff, ptr %call.i612, i32 0, i32 3, i32 36
  %70 = ptrtoint ptr %band to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %band, align 4
  %channel = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 42, i32 8
  %71 = ptrtoint ptr %channel to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %channel, align 1
  %73 = tail call i16 @llvm.bswap.i16(i16 %72)
  %conv71 = zext i16 %73 to i32
  %conv73 = zext i8 %69 to i32
  %call.i614 = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv71, i32 noundef %conv73) #8
  %div.i = udiv i32 %call.i614, 1000
  %conv75 = trunc i32 %div.i to i16
  %freq = getelementptr inbounds %struct.sk_buff, ptr %call.i612, i32 0, i32 3, i32 28
  %74 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %74)
  %bf.load = load i16, ptr %freq, align 4
  %bf.shl = shl i16 %conv75, 3
  %bf.clear = and i16 %bf.load, 7
  %bf.set = or i16 %bf.shl, %bf.clear
  store i16 %bf.set, ptr %freq, align 4
  %flag76 = getelementptr inbounds %struct.sk_buff, ptr %call.i612, i32 0, i32 3, i32 24
  %75 = ptrtoint ptr %flag76 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flag76, align 8
  %or77 = or i32 %76, 4
  store i32 %or77, ptr %flag76, align 8
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 42, i32 9, i32 1
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %arrayidx.i, align 1
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #8
  %and.i615 = and i32 %79, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i615)
  %tobool.not.i616 = icmp eq i32 %and.i615, 0
  %sub.i617 = sub nsw i32 0, %and.i615
  %spec.select.i = select i1 %tobool.not.i616, i32 -128, i32 %sub.i617
  %and1.i = lshr i32 %79, 8
  %shr2.i = and i32 %and1.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr2.i)
  %tobool3.not.i = icmp eq i32 %shr2.i, 0
  %sub5.i = sub nsw i32 0, %shr2.i
  %cond8.i = select i1 %tobool3.not.i, i32 -128, i32 %sub5.i
  %80 = tail call i32 @llvm.smax.i32(i32 %spec.select.i, i32 %cond8.i) #8
  %81 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %82, i32 noundef 536870912, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_get_signal_strength, ptr noundef nonnull @.str.12, i32 noundef %spec.select.i, i32 noundef %cond8.i, i32 noundef %80) #8
  %conv.i = trunc i32 %80 to i8
  %signal.i = getelementptr inbounds %struct.sk_buff, ptr %call.i612, i32 0, i32 3, i32 38
  %83 = ptrtoint ptr %signal.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv.i, ptr %signal.i, align 2
  %84 = ptrtoint ptr %phy_flags to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %85 = load i16, ptr %phy_flags, align 1
  %86 = lshr i16 %85, 12
  %87 = trunc i16 %86 to i8
  %conv19.i = and i8 %87, 7
  %chains.i = getelementptr inbounds %struct.sk_buff, ptr %call.i612, i32 0, i32 3, i32 39
  %88 = ptrtoint ptr %chains.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv19.i, ptr %chains.i, align 1
  %conv20.i = trunc i32 %spec.select.i to i8
  %chain_signal.i = getelementptr inbounds %struct.sk_buff, ptr %call.i612, i32 0, i32 3, i32 40
  %89 = ptrtoint ptr %chain_signal.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv20.i, ptr %chain_signal.i, align 8
  %conv22.i = trunc i32 %cond8.i to i8
  %arrayidx24.i = getelementptr %struct.sk_buff, ptr %call.i612, i32 0, i32 3, i32 41
  %90 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv22.i, ptr %arrayidx24.i, align 1
  %91 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mvm, align 8
  %sext = shl i32 %80, 24
  %conv83 = ashr exact i32 %sext, 24
  %93 = ptrtoint ptr %cb.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %cb.i, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %92, i32 noundef 536870912, i1 noundef zeroext true, ptr noundef nonnull @__func__.iwl_mvm_rx_rx_mpdu, ptr noundef nonnull @.str.5, i32 noundef %conv83, i64 noundef %94) #8
  %95 = tail call i32 @llvm.read_register.i32(metadata !77) #8
  %and.i.i.i.i.i = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %98, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !89
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end65.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end65.rcu_read_lock.exit_crit_edge:            ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end65
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end65.rcu_read_lock.exit_crit_edge
  %and87 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.else, label %if.then89

if.then89:                                        ; preds = %rcu_read_lock.exit
  %and90 = lshr i32 %19, 24
  %shr = and i32 %and90, 31
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %99 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %fw, align 8
  %num_stations = getelementptr inbounds %struct.iwl_fw, ptr %100, i32 0, i32 5, i32 6
  %101 = ptrtoint ptr %num_stations to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %num_stations, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %102)
  %cmp91.not = icmp ult i32 %shr, %102
  br i1 %cmp91.not, label %if.then142.critedge, label %land.rhs

land.rhs:                                         ; preds = %if.then89
  %.b605 = load i1, ptr @iwl_mvm_rx_rx_mpdu.__already_done, align 1
  br i1 %.b605, label %land.rhs.if.end256_crit_edge, label %if.then108, !prof !90

land.rhs.if.end256_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end256

if.then108:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_rx_rx_mpdu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 377, i32 noundef 9, ptr noundef null) #8
  br label %if.end256

if.then142.critedge:                              ; preds = %if.then89
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %shr
  %103 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile ptr, ptr %arrayidx, align 4
  %call148 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %land.lhs.true, label %if.then142.critedge.do.end157_crit_edge

if.then142.critedge.do.end157_crit_edge:          ; preds = %if.then142.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end157

land.lhs.true:                                    ; preds = %if.then142.critedge
  %call150 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %land.lhs.true.do.end157_crit_edge, label %land.lhs.true152

land.lhs.true.do.end157_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end157

land.lhs.true152:                                 ; preds = %land.lhs.true
  %.b601604 = load i1, ptr @iwl_mvm_rx_rx_mpdu.__warned, align 1
  br i1 %.b601604, label %land.lhs.true152.do.end157_crit_edge, label %if.then154

land.lhs.true152.do.end157_crit_edge:             ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end157

if.then154:                                       ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_rx_rx_mpdu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 378, ptr noundef nonnull @.str.7) #8
  br label %do.end157

do.end157:                                        ; preds = %if.then154, %land.lhs.true152.do.end157_crit_edge, %land.lhs.true.do.end157_crit_edge, %if.then142.critedge.do.end157_crit_edge
  %cmp.i = icmp ugt ptr %104, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end157.if.end256_crit_edge, label %do.end157.if.end170_crit_edge

do.end157.if.end170_crit_edge:                    ; preds = %do.end157
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end170

do.end157.if.end256_crit_edge:                    ; preds = %do.end157
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end256

if.else:                                          ; preds = %rcu_read_lock.exit
  %addr2 = getelementptr %struct.iwl_rx_packet, ptr %5, i32 2, i32 1, i32 2
  %105 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %addr2, align 4
  %107 = and i32 %106, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.i.not = icmp eq i32 %107, 0
  br i1 %tobool.i.not, label %if.then165, label %if.else.if.end256_crit_edge

if.else.if.end256_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end256

if.then165:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %108 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hw, align 4
  %call168 = tail call ptr @ieee80211_find_sta_by_ifaddr(ptr noundef %109, ptr noundef %addr2, ptr noundef null) #8
  br label %if.end170

if.end170:                                        ; preds = %if.then165, %do.end157.if.end170_crit_edge
  %sta.1 = phi ptr [ %call168, %if.then165 ], [ %104, %do.end157.if.end170_crit_edge ]
  %tobool171.not = icmp eq ptr %sta.1, null
  br i1 %tobool171.not, label %if.end170.if.end256_crit_edge, label %if.then172

if.end170.if.end256_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end256

if.then172:                                       ; preds = %if.end170
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta.1, i32 0, i32 29
  %csa_tx_blocked_vif = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 150
  %110 = ptrtoint ptr %csa_tx_blocked_vif to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile ptr, ptr %csa_tx_blocked_vif, align 4
  %call179 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %land.lhs.true181, label %if.then172.do.end189_crit_edge

if.then172.do.end189_crit_edge:                   ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end189

land.lhs.true181:                                 ; preds = %if.then172
  %call182 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %land.lhs.true181.do.end189_crit_edge, label %land.lhs.true184

land.lhs.true181.do.end189_crit_edge:             ; preds = %land.lhs.true181
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end189

land.lhs.true184:                                 ; preds = %land.lhs.true181
  %.b602603 = load i1, ptr @iwl_mvm_rx_rx_mpdu.__warned.8, align 1
  br i1 %.b602603, label %land.lhs.true184.do.end189_crit_edge, label %if.then186

land.lhs.true184.do.end189_crit_edge:             ; preds = %land.lhs.true184
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end189

if.then186:                                       ; preds = %land.lhs.true184
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_rx_rx_mpdu.__warned.8, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 392, ptr noundef nonnull @.str.7) #8
  br label %do.end189

do.end189:                                        ; preds = %if.then186, %land.lhs.true184.do.end189_crit_edge, %land.lhs.true181.do.end189_crit_edge, %if.then172.do.end189_crit_edge
  %vif191 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta.1, i32 17, i32 28, i32 10
  %112 = ptrtoint ptr %vif191 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %vif191, align 8
  %tobool192.not = icmp eq ptr %111, null
  br i1 %tobool192.not, label %do.end189.if.end212_crit_edge, label %land.lhs.true199, !prof !90

do.end189.if.end212_crit_edge:                    ; preds = %do.end189
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end212

land.lhs.true199:                                 ; preds = %do.end189
  %cmp200 = icmp eq ptr %113, %111
  br i1 %cmp200, label %if.then202, label %land.lhs.true199.if.end212_crit_edge

land.lhs.true199.if.end212_crit_edge:             ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end212

if.then202:                                       ; preds = %land.lhs.true199
  %csa_target_freq = getelementptr inbounds %struct.ieee80211_vif, ptr %111, i32 1, i32 1, i32 64, i32 6
  %114 = ptrtoint ptr %csa_target_freq to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %csa_target_freq, align 2
  %116 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %116)
  %bf.load206 = load i16, ptr %freq, align 4
  %bf.lshr = lshr i16 %bf.load206, 3
  call void @__sanitizer_cov_trace_cmp2(i16 %115, i16 %bf.lshr)
  %cmp208 = icmp eq i16 %115, %bf.lshr
  br i1 %cmp208, label %if.then210, label %if.then202.if.end212_crit_edge

if.then202.if.end212_crit_edge:                   ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end212

if.then210:                                       ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iwl_mvm_sta_modify_disable_tx_ap(ptr noundef %mvm, ptr noundef nonnull %sta.1, i1 noundef zeroext false) #8
  br label %if.end212

if.end212:                                        ; preds = %if.then210, %if.then202.if.end212_crit_edge, %land.lhs.true199.if.end212_crit_edge, %do.end189.if.end212_crit_edge
  tail call void @rs_update_last_rssi(ptr noundef %mvm, ptr noundef %drv_priv.i, ptr noundef %cb.i) #8
  %fwrt = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40
  %call220 = tail call ptr @ieee80211_vif_to_wdev(ptr noundef %113) #8
  %117 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %fwrt, align 8
  %internal_ini_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %118, i32 0, i32 32, i32 10
  %119 = ptrtoint ptr %internal_ini_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %internal_ini_cfg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp.not.i.i = icmp eq i32 %120, 0
  br i1 %cmp.not.i.i, label %iwl_trans_dbg_ini_valid.exit.i, label %if.end212.if.end238_crit_edge

if.end212.if.end238_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end238

iwl_trans_dbg_ini_valid.exit.i:                   ; preds = %if.end212
  %external_ini_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %118, i32 0, i32 32, i32 11
  %121 = ptrtoint ptr %external_ini_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %external_ini_cfg.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp2.i.not.i = icmp eq i32 %122, 0
  br i1 %cmp2.i.not.i, label %if.end.i, label %iwl_trans_dbg_ini_valid.exit.i.if.end238_crit_edge

iwl_trans_dbg_ini_valid.exit.i.if.end238_crit_edge: ; preds = %iwl_trans_dbg_ini_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end238

if.end.i:                                         ; preds = %iwl_trans_dbg_ini_valid.exit.i
  %fw.i619 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 1
  %123 = ptrtoint ptr %fw.i619 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %fw.i619, align 4
  %arrayidx.i620 = getelementptr %struct.iwl_fw, ptr %124, i32 0, i32 20, i32 3, i32 8
  %125 = ptrtoint ptr %arrayidx.i620 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx.i620, align 4
  %tobool.not.i621 = icmp eq ptr %126, null
  br i1 %tobool.not.i621, label %if.end.i.if.end238_crit_edge, label %if.end4.i622

if.end.i.if.end238_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end238

if.end4.i622:                                     ; preds = %if.end.i
  %trig_dis_ms.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %126, i32 0, i32 7
  %127 = ptrtoint ptr %trig_dis_ms.i.i to i32
  call void @__asan_loadN_noabort(i32 %127, i32 2)
  %128 = load i16, ptr %trig_dis_ms.i.i, align 1
  %129 = tail call i16 @llvm.bswap.i16(i16 %128) #8
  %conv.i.i = zext i16 %129 to i32
  %mul.i.i = mul nuw nsw i32 %conv.i.i, 1000
  %tobool.not.i.i = icmp eq ptr %call220, null
  br i1 %tobool.not.i.i, label %if.end4.i622.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end4.i622.if.end.i.i_crit_edge:                ; preds = %if.end4.i622
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end4.i622
  %vif_type.i.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %126, i32 0, i32 1
  %130 = ptrtoint ptr %vif_type.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %130, i32 4)
  %131 = load i32, ptr %vif_type.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp.i.i.i = icmp eq i32 %131, 0
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %iwl_fw_dbg_trigger_vif_match.exit.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

iwl_fw_dbg_trigger_vif_match.exit.i.i:            ; preds = %land.lhs.true.i.i
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #8
  %iftype.i.i.i = getelementptr inbounds %struct.wireless_dev, ptr %call220, i32 0, i32 1
  %133 = ptrtoint ptr %iftype.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %iftype.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %132)
  %cmp1.i.i.i = icmp eq i32 %134, %132
  br i1 %cmp1.i.i.i, label %iwl_fw_dbg_trigger_vif_match.exit.i.i.if.end.i.i_crit_edge, label %iwl_fw_dbg_trigger_vif_match.exit.i.i.if.end238_crit_edge

iwl_fw_dbg_trigger_vif_match.exit.i.i.if.end238_crit_edge: ; preds = %iwl_fw_dbg_trigger_vif_match.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end238

iwl_fw_dbg_trigger_vif_match.exit.i.i.if.end.i.i_crit_edge: ; preds = %iwl_fw_dbg_trigger_vif_match.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %iwl_fw_dbg_trigger_vif_match.exit.i.i.if.end.i.i_crit_edge, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end4.i622.if.end.i.i_crit_edge
  %135 = ptrtoint ptr %126 to i32
  call void @__asan_loadN_noabort(i32 %135, i32 4)
  %136 = load i32, ptr %126, align 1
  %137 = tail call i32 @llvm.bswap.i32(i32 %136) #8
  %call3.i.i.i.i = tail call i32 @__usecs_to_jiffies(i32 noundef %mul.i.i) #8
  %arrayidx.i.i.i623 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 12, i32 3, i32 %137
  %138 = ptrtoint ptr %arrayidx.i.i.i623 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx.i.i.i623, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool.not.i.i.i = icmp eq i32 %139, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %140 = load volatile i32, ptr @jiffies, align 128
  %141 = add i32 %139, %call3.i.i.i.i
  %sub.i.i.i = sub i32 %140, %141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i16.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i16.i.i, label %do.end.i.i, label %land.lhs.true.i.i.i.if.end7.i.i_crit_edge

land.lhs.true.i.i.i.if.end7.i.i_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 2
  %142 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev.i.i, align 8
  %144 = ptrtoint ptr %126 to i32
  call void @__asan_loadN_noabort(i32 %144, i32 4)
  %145 = load i32, ptr %126, align 1
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %143, ptr noundef nonnull @.str.15, i32 noundef %145) #8
  br label %if.end238

if.end7.i.i:                                      ; preds = %land.lhs.true.i.i.i.if.end7.i.i_crit_edge, %if.end.i.i.if.end7.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %146 = load volatile i32, ptr @jiffies, align 128
  %147 = ptrtoint ptr %arrayidx.i.i.i623 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %arrayidx.i.i.i623, align 4
  %mode.i.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %126, i32 0, i32 4
  %148 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %mode.i.i.i, align 1
  %150 = and i8 %149, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool.not.i17.i.i = icmp eq i8 %150, 0
  br i1 %tobool.not.i17.i.i, label %if.end7.i.i.if.end238_crit_edge, label %land.rhs.i.i.i

if.end7.i.i.if.end238_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end238

land.rhs.i.i.i:                                   ; preds = %if.end7.i.i
  %conf.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 12, i32 2
  %151 = ptrtoint ptr %conf.i.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %conf.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %152)
  %cmp.i18.i.i = icmp eq i8 %152, -1
  br i1 %cmp.i18.i.i, label %land.rhs.i.i.i.land.lhs.true223_crit_edge, label %iwl_fw_dbg_trigger_check_stop.exit.i

land.rhs.i.i.i.land.lhs.true223_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true223

iwl_fw_dbg_trigger_check_stop.exit.i:             ; preds = %land.rhs.i.i.i
  %conv1.i.i.i = zext i8 %152 to i32
  %shl.i.i.i = shl nuw i32 1, %conv1.i.i.i
  %stop_conf_ids.i.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %126, i32 0, i32 2
  %153 = ptrtoint ptr %stop_conf_ids.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %153, i32 4)
  %154 = load i32, ptr %stop_conf_ids.i.i.i, align 1
  %155 = tail call i32 @llvm.bswap.i32(i32 %154) #8
  %and6.i.i.i = and i32 %155, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.i.i.not.i = icmp eq i32 %and6.i.i.i, 0
  br i1 %tobool7.i.i.not.i, label %iwl_fw_dbg_trigger_check_stop.exit.i.if.end238_crit_edge, label %iwl_fw_dbg_trigger_check_stop.exit.i.land.lhs.true223_crit_edge

iwl_fw_dbg_trigger_check_stop.exit.i.land.lhs.true223_crit_edge: ; preds = %iwl_fw_dbg_trigger_check_stop.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true223

iwl_fw_dbg_trigger_check_stop.exit.i.if.end238_crit_edge: ; preds = %iwl_fw_dbg_trigger_check_stop.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end238

land.lhs.true223:                                 ; preds = %iwl_fw_dbg_trigger_check_stop.exit.i.land.lhs.true223_crit_edge, %land.rhs.i.i.i.land.lhs.true223_crit_edge
  %156 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %add.ptr, align 2
  %158 = and i16 %157, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %158)
  %cmp.i625 = icmp eq i16 %158, -32768
  br i1 %cmp.i625, label %if.then226, label %land.lhs.true223.if.end238_crit_edge

land.lhs.true223.if.end238_crit_edge:             ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end238

if.then226:                                       ; preds = %land.lhs.true223
  %data227 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %126, i32 0, i32 10
  %159 = ptrtoint ptr %data227 to i32
  call void @__asan_loadN_noabort(i32 %159, i32 4)
  %160 = load i32, ptr %data227, align 1
  %161 = tail call i32 @llvm.bswap.i32(i32 %160)
  %162 = ptrtoint ptr %signal.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %signal.i, align 2
  %conv231 = sext i8 %163 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %161, i32 %conv231)
  %cmp232 = icmp sgt i32 %161, %conv231
  br i1 %cmp232, label %if.then234, label %if.then226.if.end238_crit_edge

if.then226.if.end238_crit_edge:                   ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end238

if.then234:                                       ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #10
  %call236 = tail call i32 (ptr, ptr, ptr, ...) @iwl_fw_dbg_collect_trig(ptr noundef %fwrt, ptr noundef nonnull %126, ptr noundef null) #8
  br label %if.end238

if.end238:                                        ; preds = %if.then234, %if.then226.if.end238_crit_edge, %land.lhs.true223.if.end238_crit_edge, %iwl_fw_dbg_trigger_check_stop.exit.i.if.end238_crit_edge, %if.end7.i.i.if.end238_crit_edge, %do.end.i.i, %iwl_fw_dbg_trigger_vif_match.exit.i.i.if.end238_crit_edge, %if.end.i.if.end238_crit_edge, %iwl_trans_dbg_ini_valid.exit.i.if.end238_crit_edge, %if.end212.if.end238_crit_edge
  %paused = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 5
  %164 = ptrtoint ptr %paused to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %paused, align 4, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool239.not = icmp eq i8 %165, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 29, i16 %14)
  %cmp241 = icmp ugt i16 %14, 29
  %or.cond607 = select i1 %tobool239.not, i1 %cmp241, i1 false
  br i1 %or.cond607, label %land.lhs.true243, label %if.end238.if.end251_crit_edge

if.end238.if.end251_crit_edge:                    ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end251

land.lhs.true243:                                 ; preds = %if.end238
  %addr1 = getelementptr %struct.iwl_rx_packet, ptr %5, i32 2
  %166 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %addr1, align 4
  %168 = and i32 %167, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool.i626.not = icmp eq i32 %168, 0
  br i1 %tobool.i626.not, label %land.lhs.true246, label %land.lhs.true243.if.end251_crit_edge

land.lhs.true243.if.end251_crit_edge:             ; preds = %land.lhs.true243
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end251

land.lhs.true246:                                 ; preds = %land.lhs.true243
  %169 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %add.ptr, align 2
  %171 = and i16 %170, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %171)
  %cmp.i627 = icmp eq i16 %171, 2048
  br i1 %cmp.i627, label %if.then250, label %land.lhs.true246.if.end251_crit_edge

land.lhs.true246.if.end251_crit_edge:             ; preds = %land.lhs.true246
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end251

if.then250:                                       ; preds = %land.lhs.true246
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @iwl_mvm_rx_handle_tcm(ptr noundef %mvm, ptr noundef nonnull %sta.1, ptr noundef %add.ptr, i32 noundef %conv, ptr noundef %last_phy_info, i32 noundef %55)
  br label %if.end251

if.end251:                                        ; preds = %if.then250, %land.lhs.true246.if.end251_crit_edge, %land.lhs.true243.if.end251_crit_edge, %if.end238.if.end251_crit_edge
  %172 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %add.ptr, align 2
  %174 = and i16 %173, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %174)
  %cmp.i628 = icmp eq i16 %174, 2048
  br i1 %cmp.i628, label %if.then254, label %if.end251.if.end256_crit_edge

if.end251.if.end256_crit_edge:                    ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end256

if.then254:                                       ; preds = %if.end251
  %175 = ptrtoint ptr %vif191 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %vif191, align 8
  %features.i = getelementptr inbounds %struct.ieee80211_vif, ptr %176, i32 2, i32 1, i32 21
  %177 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %features.i, align 8
  %and.i629 = and i64 %178, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i629)
  %tobool.not.i630 = icmp eq i64 %and.i629, 0
  %179 = and i32 %19, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %179)
  %180 = icmp ne i32 %179, 196608
  %181 = or i1 %180, %tobool.not.i630
  br i1 %181, label %if.then254.if.end256_crit_edge, label %if.then.i631

if.then254.if.end256_crit_edge:                   ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end256

if.then.i631:                                     ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #10
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %call.i612, i32 0, i32 15
  %182 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 512
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  br label %if.end256

if.end256:                                        ; preds = %if.then.i631, %if.then254.if.end256_crit_edge, %if.end251.if.end256_crit_edge, %if.end170.if.end256_crit_edge, %if.else.if.end256_crit_edge, %do.end157.if.end256_crit_edge, %if.then108, %land.rhs.if.end256_crit_edge
  %sta.1654 = phi ptr [ %sta.1, %if.end251.if.end256_crit_edge ], [ null, %if.end170.if.end256_crit_edge ], [ %sta.1, %if.then254.if.end256_crit_edge ], [ %sta.1, %if.then.i631 ], [ null, %if.else.if.end256_crit_edge ], [ null, %if.then108 ], [ null, %land.rhs.if.end256_crit_edge ], [ null, %do.end157.if.end256_crit_edge ]
  %call.i633 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i633, label %if.end256.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i636

if.end256.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i636:                               ; preds = %if.end256
  %call1.i634 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i634)
  %tobool.not.i635 = icmp eq i32 %call1.i634, 0
  br i1 %tobool.not.i635, label %land.lhs.true.i636.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i638

land.lhs.true.i636.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i636
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i638:                              ; preds = %land.lhs.true.i636
  %.b4.i637 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i637, label %land.lhs.true2.i638.rcu_read_unlock.exit_crit_edge, label %if.then.i639

land.lhs.true2.i638.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i638
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i639:                                     ; preds = %land.lhs.true2.i638
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.16) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i639, %land.lhs.true2.i638.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i636.rcu_read_unlock.exit_crit_edge, %if.end256.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !91
  %183 = tail call i32 @llvm.read_register.i32(metadata !77) #8
  %and.i.i.i.i.i640 = and i32 %183, -16384
  %184 = inttoptr i32 %and.i.i.i.i.i640 to ptr
  %preempt_count.i.i.i.i641 = getelementptr inbounds %struct.thread_info, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %preempt_count.i.i.i.i641 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load volatile i32, ptr %preempt_count.i.i.i.i641, align 4
  %sub.i.i.i642 = add i32 %186, -1
  store volatile i32 %sub.i.i.i642, ptr %preempt_count.i.i.i.i641, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %187 = ptrtoint ptr %phy_flags to i32
  call void @__asan_loadN_noabort(i32 %187, i32 2)
  %188 = load i16, ptr %phy_flags, align 1
  %189 = and i16 %188, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %189)
  %tobool260.not = icmp eq i16 %189, 0
  br i1 %tobool260.not, label %rcu_read_unlock.exit.if.end265_crit_edge, label %if.then261

rcu_read_unlock.exit.if.end265_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end265

if.then261:                                       ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #10
  %enc_flags = getelementptr inbounds %struct.sk_buff, ptr %call.i612, i32 0, i32 3, i32 30
  %190 = ptrtoint ptr %enc_flags to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %enc_flags, align 2
  %192 = or i8 %191, 1
  store i8 %192, ptr %enc_flags, align 2
  %193 = ptrtoint ptr %phy_flags to i32
  call void @__asan_loadN_noabort(i32 %193, i32 2)
  %.pr = load i16, ptr %phy_flags, align 1
  br label %if.end265

if.end265:                                        ; preds = %if.then261, %rcu_read_unlock.exit.if.end265_crit_edge
  %194 = phi i16 [ %.pr, %if.then261 ], [ %188, %rcu_read_unlock.exit.if.end265_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %194)
  %tobool269.not = icmp sgt i16 %194, -1
  br i1 %tobool269.not, label %if.end265.if.end273_crit_edge, label %if.then270

if.end265.if.end273_crit_edge:                    ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end273

if.then270:                                       ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #10
  %195 = ptrtoint ptr %flag76 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %flag76, align 8
  %or272 = or i32 %196, 512
  store i32 %or272, ptr %flag76, align 8
  %ampdu_ref = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 20
  %197 = ptrtoint ptr %ampdu_ref to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %ampdu_ref, align 8
  %ampdu_reference = getelementptr inbounds %struct.sk_buff, ptr %call.i612, i32 0, i32 3, i32 20
  %199 = ptrtoint ptr %ampdu_reference to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %ampdu_reference, align 4
  br label %if.end273

if.end273:                                        ; preds = %if.then270, %if.end265.if.end273_crit_edge
  %and274 = and i32 %55, 6144
  %200 = zext i32 %and274 to i64
  call void @__sanitizer_cov_trace_switch(i64 %200, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %and274, label %if.end273.sw.epilog_crit_edge [
    i32 6144, label %sw.bb283
    i32 2048, label %if.end273.sw.epilog.sink.split_crit_edge
    i32 4096, label %sw.bb278
  ]

if.end273.sw.epilog.sink.split_crit_edge:         ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.end273.sw.epilog_crit_edge:                    ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb278:                                         ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.bb283:                                         ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb283, %sw.bb278, %if.end273.sw.epilog.sink.split_crit_edge
  %.sink = phi i16 [ 10240, %sw.bb283 ], [ 8192, %sw.bb278 ], [ 6144, %if.end273.sw.epilog.sink.split_crit_edge ]
  %bw = getelementptr inbounds %struct.sk_buff, ptr %call.i612, i32 0, i32 3, i32 31
  %201 = ptrtoint ptr %bw to i32
  call void @__asan_loadN_noabort(i32 %201, i32 2)
  %bf.load285 = load i16, ptr %bw, align 1
  %bf.clear286 = and i16 %bf.load285, -14337
  %bf.set287 = or i16 %bf.clear286, %.sink
  store i16 %bf.set287, ptr %bw, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end273.sw.epilog_crit_edge
  %202 = and i32 %55, 8704
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %202)
  %.not657 = icmp eq i32 %202, 8192
  br i1 %.not657, label %if.then293, label %sw.epilog.if.end298_crit_edge

sw.epilog.if.end298_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end298

if.then293:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %enc_flags294 = getelementptr inbounds %struct.sk_buff, ptr %call.i612, i32 0, i32 3, i32 30
  %203 = ptrtoint ptr %enc_flags294 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %enc_flags294, align 2
  %205 = or i8 %204, 4
  store i8 %205, ptr %enc_flags294, align 2
  br label %if.end298

if.end298:                                        ; preds = %if.then293, %sw.epilog.if.end298_crit_edge
  %and299 = and i32 %55, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and299)
  %tobool300.not = icmp eq i32 %and299, 0
  br i1 %tobool300.not, label %if.end298.if.end306_crit_edge, label %if.then301

if.end298.if.end306_crit_edge:                    ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end306

if.then301:                                       ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #10
  %enc_flags302 = getelementptr inbounds %struct.sk_buff, ptr %call.i612, i32 0, i32 3, i32 30
  %206 = ptrtoint ptr %enc_flags302 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %enc_flags302, align 2
  %208 = or i8 %207, 8
  store i8 %208, ptr %enc_flags302, align 2
  br label %if.end306

if.end306:                                        ; preds = %if.then301, %if.end298.if.end306_crit_edge
  %and307 = and i32 %55, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and307)
  %tobool308.not = icmp eq i32 %and307, 0
  br i1 %tobool308.not, label %if.end306.if.end314_crit_edge, label %if.then309

if.end306.if.end314_crit_edge:                    ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end314

if.then309:                                       ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #10
  %enc_flags310 = getelementptr inbounds %struct.sk_buff, ptr %call.i612, i32 0, i32 3, i32 30
  %209 = ptrtoint ptr %enc_flags310 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %enc_flags310, align 2
  %211 = or i8 %210, 64
  store i8 %211, ptr %enc_flags310, align 2
  br label %if.end314

if.end314:                                        ; preds = %if.then309, %if.end306.if.end314_crit_edge
  %and315 = and i32 %55, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and315)
  %tobool316.not = icmp eq i32 %and315, 0
  br i1 %tobool316.not, label %if.else331, label %if.then317

if.then317:                                       ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #10
  %encoding = getelementptr inbounds %struct.sk_buff, ptr %call.i612, i32 0, i32 3, i32 31
  %212 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %212, i32 2)
  %bf.load321 = load i16, ptr %encoding, align 1
  %bf.clear322 = and i16 %bf.load321, 16383
  %bf.set323 = or i16 %bf.clear322, 16384
  store i16 %bf.set323, ptr %encoding, align 1
  %213 = trunc i32 %55 to i8
  %conv325 = and i8 %213, 63
  %rate_idx = getelementptr inbounds %struct.sk_buff, ptr %call.i612, i32 0, i32 3, i32 33
  %214 = ptrtoint ptr %rate_idx to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %conv325, ptr %rate_idx, align 1
  %215 = lshr i32 %55, 13
  %enc_flags327 = getelementptr inbounds %struct.sk_buff, ptr %call.i612, i32 0, i32 3, i32 30
  %216 = ptrtoint ptr %enc_flags327 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %enc_flags327, align 2
  %218 = trunc i32 %215 to i8
  %219 = and i8 %218, 16
  %conv330 = or i8 %217, %219
  store i8 %conv330, ptr %enc_flags327, align 2
  br label %if.end410

if.else331:                                       ; preds = %if.end314
  %and332 = and i32 %55, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and332)
  %tobool333.not = icmp eq i32 %and332, 0
  br i1 %tobool333.not, label %if.else364, label %if.then334

if.then334:                                       ; preds = %if.else331
  call void @__sanitizer_cov_trace_pc() #10
  %220 = trunc i32 %55 to i8
  %221 = lshr i8 %220, 4
  %222 = and i8 %221, 3
  %conv342 = add nuw nsw i8 %222, 1
  %nss = getelementptr inbounds %struct.sk_buff, ptr %call.i612, i32 0, i32 3, i32 34
  %223 = ptrtoint ptr %nss to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %conv342, ptr %nss, align 2
  %conv344 = and i8 %220, 15
  %rate_idx345 = getelementptr inbounds %struct.sk_buff, ptr %call.i612, i32 0, i32 3, i32 33
  %224 = ptrtoint ptr %rate_idx345 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %conv344, ptr %rate_idx345, align 1
  %encoding346 = getelementptr inbounds %struct.sk_buff, ptr %call.i612, i32 0, i32 3, i32 31
  %225 = ptrtoint ptr %encoding346 to i32
  call void @__asan_loadN_noabort(i32 %225, i32 2)
  %bf.load347 = load i16, ptr %encoding346, align 1
  %bf.clear348 = and i16 %bf.load347, 16383
  %bf.set349 = or i16 %bf.clear348, -32768
  store i16 %bf.set349, ptr %encoding346, align 1
  %226 = lshr i32 %55, 13
  %enc_flags352 = getelementptr inbounds %struct.sk_buff, ptr %call.i612, i32 0, i32 3, i32 30
  %227 = ptrtoint ptr %enc_flags352 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %enc_flags352, align 2
  %229 = trunc i32 %226 to i8
  %230 = and i8 %229, 16
  %and356 = lshr i32 %55, 12
  %231 = trunc i32 %and356 to i8
  %232 = and i8 %231, -128
  %conv355 = or i8 %232, %230
  %233 = or i8 %conv355, %228
  store i8 %233, ptr %enc_flags352, align 2
  br label %if.end410

if.else364:                                       ; preds = %if.else331
  %234 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %band, align 4
  %conv366 = zext i8 %235 to i32
  %call367 = tail call i32 @iwl_mvm_legacy_rate_to_mac80211_idx(i32 noundef %55, i32 noundef %conv366) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call367)
  %236 = icmp ugt i32 %call367, 255
  br i1 %236, label %do.end388, label %if.end406, !prof !87

do.end388:                                        ; preds = %if.else364
  call void @__sanitizer_cov_trace_pc() #10
  %237 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %band, align 4
  %conv390 = zext i8 %238 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 496, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %55, i32 noundef %conv390) #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i612, i32 noundef 0) #8
  br label %cleanup452

if.end406:                                        ; preds = %if.else364
  call void @__sanitizer_cov_trace_pc() #10
  %conv407 = trunc i32 %call367 to i8
  %rate_idx408 = getelementptr inbounds %struct.sk_buff, ptr %call.i612, i32 0, i32 3, i32 33
  %239 = ptrtoint ptr %rate_idx408 to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %conv407, ptr %rate_idx408, align 1
  br label %if.end410

if.end410:                                        ; preds = %if.end406, %if.then334, %if.then317
  %240 = ptrtoint ptr %flag76 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %flag76, align 8
  %and412 = and i32 %241, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and412)
  %tobool413 = icmp ne i32 %and412, 0
  tail call void @iwl_mvm_update_frame_stats(ptr noundef %mvm, i32 noundef %55, i1 noundef zeroext %tobool413) #8
  %242 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %add.ptr, align 2
  %244 = and i16 %243, -1024
  %245 = zext i16 %244 to i64
  call void @__sanitizer_cov_trace_switch(i64 %245, ptr @__sancov_gen_cov_switch_values.33)
  switch i16 %244, label %if.end410.if.end433_crit_edge [
    i16 -32768, label %if.end410.land.rhs421_crit_edge
    i16 20480, label %if.end410.land.rhs421_crit_edge661
  ]

if.end410.land.rhs421_crit_edge661:               ; preds = %if.end410
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs421

if.end410.land.rhs421_crit_edge:                  ; preds = %if.end410
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs421

if.end410.if.end433_crit_edge:                    ; preds = %if.end410
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end433

land.rhs421:                                      ; preds = %if.end410.land.rhs421_crit_edge, %if.end410.land.rhs421_crit_edge661
  %sched_scan_pass_all = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 53
  %246 = ptrtoint ptr %sched_scan_pass_all to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %sched_scan_pass_all, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %247)
  %cmp422 = icmp eq i32 %247, 1
  br i1 %cmp422, label %if.then431, label %land.rhs421.if.end433_crit_edge, !prof !87

land.rhs421.if.end433_crit_edge:                  ; preds = %land.rhs421
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end433

if.then431:                                       ; preds = %land.rhs421
  call void @__sanitizer_cov_trace_pc() #10
  %248 = ptrtoint ptr %sched_scan_pass_all to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 2, ptr %sched_scan_pass_all, align 8
  br label %if.end433

if.end433:                                        ; preds = %if.then431, %land.rhs421.if.end433_crit_edge, %if.end410.if.end433_crit_edge
  %249 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %add.ptr, align 2
  %251 = and i16 %250, -1024
  %252 = zext i16 %251 to i64
  call void @__sanitizer_cov_trace_switch(i64 %252, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %251, label %if.end433.if.end450_crit_edge [
    i16 -32768, label %if.end433.if.then448_crit_edge
    i16 20480, label %if.end433.if.then448_crit_edge662
  ], !prof !92

if.end433.if.then448_crit_edge662:                ; preds = %if.end433
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then448

if.end433.if.then448_crit_edge:                   ; preds = %if.end433
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then448

if.end433.if.end450_crit_edge:                    ; preds = %if.end433
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end450

if.then448:                                       ; preds = %if.end433.if.then448_crit_edge, %if.end433.if.then448_crit_edge662
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #8
  %boottime_ns = getelementptr inbounds %struct.sk_buff, ptr %call.i612, i32 0, i32 3, i32 8
  %253 = ptrtoint ptr %boottime_ns to i32
  call void @__asan_store8_noabort(i32 %253)
  store i64 %call.i.i, ptr %boottime_ns, align 8
  br label %if.end450

if.end450:                                        ; preds = %if.then448, %if.end433.if.end450_crit_edge
  tail call fastcc void @iwl_mvm_pass_packet_to_mac80211(ptr noundef %mvm, ptr noundef %sta.1654, ptr noundef %napi, ptr noundef nonnull %call.i612, ptr noundef %add.ptr, i16 noundef zeroext %14, i8 noundef zeroext %crypt_len.1.ph, ptr noundef %rxb)
  br label %cleanup452

cleanup452:                                       ; preds = %if.end450, %do.end388, %do.end49, %do.end37, %do.end21, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta_by_ifaddr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_sta_modify_disable_tx_ap(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs_update_last_rssi(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_vif_to_wdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_fw_dbg_collect_trig(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_rx_handle_tcm(ptr noundef %mvm, ptr nocapture noundef readonly %sta, ptr nocapture noundef readonly %hdr, i32 noundef %len, ptr nocapture noundef readonly %phy_info, i32 noundef %rate_n_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hdr, align 2
  %2 = and i16 %1, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %2)
  %cmp.i = icmp eq i16 %2, -30720
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = and i16 %1, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %3)
  %cmp.i.i.i = icmp eq i16 %3, 3
  %retval.0.v.i.i = select i1 %cmp.i.i.i, i32 30, i32 24
  %retval.0.i.i = getelementptr i8, ptr %hdr, i32 %retval.0.v.i.i
  %4 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %retval.0.i.i, align 1
  %6 = and i8 %5, 15
  %idxprom = zext i8 %6 to i32
  %arrayidx = getelementptr [0 x i8], ptr @tid_to_mac80211_ac, i32 0, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ac.0 = phi i32 [ %conv, %if.then ], [ 2, %entry.if.end_crit_edge ]
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %mac_id_n_color = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %mac_id_n_color to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mac_id_n_color, align 8
  %and = and i32 %10, 255
  %ts = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 2
  %11 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ts, align 8
  %add = add i32 %12, 50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %tcm = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %14 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %tcm, i32 noundef 0) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %rx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 %and, i32 1
  %arrayidx10 = getelementptr [4 x i32], ptr %rx, i32 0, i32 %ac.0
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx10, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %arrayidx10, align 4
  %last_ampdu_ref = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 %and, i32 1, i32 2
  %17 = ptrtoint ptr %last_ampdu_ref to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %last_ampdu_ref, align 4
  %ampdu_ref = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 20
  %19 = ptrtoint ptr %ampdu_ref to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ampdu_ref, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp12.not = icmp eq i32 %18, %20
  br i1 %cmp12.not, label %if.end7.if.end21_crit_edge, label %if.then14

if.end7.if.end21_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %last_ampdu_ref to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %last_ampdu_ref, align 4
  %frame_time = getelementptr inbounds %struct.iwl_rx_phy_info, ptr %phy_info, i32 0, i32 14
  %22 = ptrtoint ptr %frame_time to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %frame_time, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %conv18 = zext i16 %24 to i32
  %airtime = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 %and, i32 1, i32 1
  %25 = ptrtoint ptr %airtime to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %airtime, align 4
  %add20 = add i32 %26, %conv18
  store i32 %add20, ptr %airtime, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %if.end7.if.end21_crit_edge
  %and22 = and i32 %rate_n_flags, 67109120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool.not = icmp eq i32 %and22, 0
  br i1 %tobool.not, label %if.end21.cleanup_crit_edge, label %if.end24

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  %vif = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 28, i32 10
  %27 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vif, align 8
  %drv_priv.i143 = getelementptr inbounds %struct.ieee80211_vif, ptr %28, i32 0, i32 19
  %opened_rx_ba_sessions = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 %and, i32 3
  %29 = ptrtoint ptr %opened_rx_ba_sessions to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %opened_rx_ba_sessions, align 8, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool26.not = icmp eq i8 %30, 0
  br i1 %tobool26.not, label %lor.lhs.false, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end24
  %uapsd_nonagg_detect = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 %and, i32 2
  %detected = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 %and, i32 2, i32 2
  %31 = ptrtoint ptr %detected to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %detected, align 4, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool28.not = icmp eq i8 %32, 0
  br i1 %tobool28.not, label %lor.lhs.false30, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false30:                                  ; preds = %lor.lhs.false
  %uapsd = getelementptr inbounds %struct.ieee80211_vif, ptr %28, i32 1, i32 1, i32 26, i32 4
  %33 = ptrtoint ptr %uapsd to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %uapsd, align 8, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool32.not = icmp eq i8 %34, 0
  br i1 %tobool32.not, label %land.lhs.true, label %lor.lhs.false30.lor.lhs.false47_crit_edge

lor.lhs.false30.lor.lhs.false47_crit_edge:        ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false47

land.lhs.true:                                    ; preds = %lor.lhs.false30
  %uapsd35 = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i143, i32 0, i32 18, i32 1, i32 5
  %35 = ptrtoint ptr %uapsd35 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %uapsd35, align 2, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool36.not = icmp eq i8 %36, 0
  br i1 %tobool36.not, label %land.lhs.true37, label %land.lhs.true.lor.lhs.false47_crit_edge

land.lhs.true.lor.lhs.false47_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false47

land.lhs.true37:                                  ; preds = %land.lhs.true
  %uapsd40 = getelementptr %struct.ieee80211_vif, ptr %28, i32 1, i32 1, i32 32
  %37 = ptrtoint ptr %uapsd40 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %uapsd40, align 4, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool41.not = icmp eq i8 %38, 0
  br i1 %tobool41.not, label %land.lhs.true42, label %land.lhs.true37.lor.lhs.false47_crit_edge

land.lhs.true37.lor.lhs.false47_crit_edge:        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false47

land.lhs.true42:                                  ; preds = %land.lhs.true37
  %uapsd45 = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i143, i32 0, i32 18, i32 3, i32 5
  %39 = ptrtoint ptr %uapsd45 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %uapsd45, align 2, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool46.not = icmp eq i8 %40, 0
  br i1 %tobool46.not, label %land.lhs.true42.cleanup_crit_edge, label %land.lhs.true42.lor.lhs.false47_crit_edge

land.lhs.true42.lor.lhs.false47_crit_edge:        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false47

land.lhs.true42.cleanup_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false47:                                  ; preds = %land.lhs.true42.lor.lhs.false47_crit_edge, %land.lhs.true37.lor.lhs.false47_crit_edge, %land.lhs.true.lor.lhs.false47_crit_edge, %lor.lhs.false30.lor.lhs.false47_crit_edge
  %41 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %drv_priv.i, align 8
  %ap_sta_id = getelementptr inbounds %struct.ieee80211_vif, ptr %28, i32 1, i32 1
  %43 = ptrtoint ptr %ap_sta_id to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ap_sta_id, align 8
  %conv48 = zext i8 %44 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %conv48)
  %cmp49.not = icmp eq i32 %42, %conv48
  br i1 %cmp49.not, label %if.end52, label %lor.lhs.false47.cleanup_crit_edge

lor.lhs.false47.cleanup_crit_edge:                ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end52:                                         ; preds = %lor.lhs.false47
  %and53 = and i32 %rate_n_flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.else, label %if.then55

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %and56 = and i32 %rate_n_flags, 7
  br label %if.end99

if.else:                                          ; preds = %if.end52
  %and63 = and i32 %rate_n_flags, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and63)
  %cmp64 = icmp ugt i32 %and63, 9
  br i1 %cmp64, label %do.end, label %if.else.if.end99_crit_edge, !prof !87

if.else.if.end99_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 253, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end99:                                         ; preds = %if.else.if.end99_crit_edge, %if.then55
  %and63.sink = phi i32 [ %and56, %if.then55 ], [ %and63, %if.else.if.end99_crit_edge ]
  %.sink144 = phi i32 [ 3, %if.then55 ], [ 4, %if.else.if.end99_crit_edge ]
  %arrayidx91 = getelementptr [10 x i8], ptr @iwl_mvm_rx_handle_tcm.thresh_tpt, i32 0, i32 %and63.sink
  %45 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx91, align 1
  %and93 = lshr i32 %rate_n_flags, %.sink144
  %shr94 = and i32 %and93, 3
  %add95 = add nuw nsw i32 %shr94, 1
  %conv96 = zext i8 %46 to i32
  %mul97 = mul nuw nsw i32 %add95, %conv96
  %and100 = lshr i32 %rate_n_flags, 11
  %shr101 = and i32 %and100, 3
  %shl = shl nuw nsw i32 %mul97, %shr101
  %conv104 = zext i32 %len to i64
  %47 = ptrtoint ptr %uapsd_nonagg_detect to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %uapsd_nonagg_detect, align 8
  %add106 = add i64 %48, %conv104
  store i64 %add106, ptr %uapsd_nonagg_detect, align 8
  %rate = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 %and, i32 2, i32 1
  %49 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i = icmp eq i32 %50, 0
  %sub.i = mul i32 %50, 15
  %shl19.i = shl nuw nsw i32 %shl, 16
  %add.i = add i32 %sub.i, %shl19.i
  %shr.i = lshr i32 %add.i, 4
  %cond.i = select i1 %tobool.not.i, i32 %shl19.i, i32 %shr.i
  %51 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 %cond.i, ptr %rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %do.end, %lor.lhs.false47.cleanup_crit_edge, %land.lhs.true42.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end21.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_legacy_rate_to_mac80211_idx(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_update_frame_stats(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_pass_packet_to_mac80211(ptr nocapture noundef readonly %mvm, ptr noundef %sta, ptr noundef %napi, ptr noundef %skb, ptr noundef %hdr, i16 noundef zeroext %len, i8 noundef zeroext %crypt_len, ptr nocapture noundef %rxb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hdr, align 2
  %call = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %1) #11
  %and = and i32 %call, 3
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %and
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %5, i32 %and
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %conv = zext i16 %len to i32
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %entry.skb_tailroom.exit_crit_edge

entry.skb_tailroom.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %entry.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %entry.skb_tailroom.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %conv)
  %cmp.not = icmp slt i32 %cond.i, %conv
  %conv4 = zext i8 %crypt_len to i32
  %add = add nuw nsw i32 %conv4, 8
  %add5 = add i32 %add, %call
  %cond = select i1 %cmp.not, i32 %add5, i32 %conv
  %call.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %cond) #8
  %10 = call ptr @memcpy(ptr %call.i, ptr %hdr, i32 %cond)
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv)
  %tobool.not = icmp eq i32 %cond, %conv
  br i1 %tobool.not, label %skb_tailroom.exit.if.end_crit_edge, label %if.then

skb_tailroom.exit.if.end_crit_edge:               ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %skb_tailroom.exit
  %sub = sub i32 %conv, %cond
  %add.ptr = getelementptr i8, ptr %hdr, i32 %cond
  %11 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rxb, align 4
  %call.i29 = tail call ptr @page_address(ptr noundef %12) #8
  %13 = ptrtoint ptr %call.i29 to i32
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %add10 = sub i32 %sub.ptr.lhs.cast, %13
  %_page_stolen.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 2
  %14 = ptrtoint ptr %_page_stolen.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %_page_stolen.i, align 4
  %15 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rxb, align 4
  %17 = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and.i.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !90

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i = add i32 %19, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %16 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %20, %if.end.i.i.i ]
  %21 = inttoptr i32 %retval.0.i.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %22 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  %add.i.i.i = add i32 %23, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i.i)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i, 128
  br i1 %cmp.i.i.i, label %if.then.i1.i.i, label %do.end5.i.i.i, !prof !87

if.then.i1.i.i:                                   ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %21, ptr noundef nonnull @.str.17) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #8, !srcloc !93
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit.i.i
  %call.i.i.i.i9.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !94
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@iwl_mvm_pass_packet_to_mac80211, %if.then.i.i.i.i.i)) #8
          to label %rxb_steal_page.exit [label %if.then.i.i.i.i.i], !srcloc !95

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__page_ref_mod(ptr noundef %21, i32 noundef 1) #8
  br label %rxb_steal_page.exit

rxb_steal_page.exit:                              ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i
  %25 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rxb, align 4
  %truesize = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 4
  %27 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %truesize, align 4
  tail call void @skb_add_rx_frag(ptr noundef %skb, i32 noundef 0, ptr noundef %26, i32 noundef %add10, i32 noundef %sub, i32 noundef %28) #8
  br label %if.end

if.end:                                           ; preds = %rxb_steal_page.exit, %skb_tailroom.exit.if.end_crit_edge
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_rx_napi(ptr noundef %30, ptr noundef %sta, ptr noundef %skb, ptr noundef %napi) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_handle_rx_statistics(ptr noundef %mvm, ptr noundef %pkt) local_unnamed_addr #0 align 64 {
entry:
  %data.i201.i = alloca %struct.iwl_mvm_stat_data_all_macs, align 4
  %data.i.i = alloca %struct.iwl_mvm_stat_data, align 4
  %beacon_average_energy.i.i = alloca [4 x i8], align 1
  %average_energy.i = alloca [16 x i8], align 1
  %air_time.i = alloca [4 x i32], align 4
  %rx_bytes.i = alloca [4 x i32], align 4
  %data = alloca %struct.iwl_mvm_stat_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %data) #8
  %0 = getelementptr inbounds i8, ptr %data, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mvm, ptr %data, align 4
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %3 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw, align 8
  %call = tail call zeroext i8 @iwl_fw_lookup_notif_ver(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext -99, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %call)
  %cmp = icmp ugt i8 %call, 13
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %average_energy.i) #8
  %5 = getelementptr inbounds [16 x i8], ptr %average_energy.i, i32 0, i32 1
  %6 = getelementptr inbounds [16 x i8], ptr %average_energy.i, i32 0, i32 2
  %7 = getelementptr inbounds [16 x i8], ptr %average_energy.i, i32 0, i32 3
  %8 = getelementptr inbounds [16 x i8], ptr %average_energy.i, i32 0, i32 4
  %9 = getelementptr inbounds [16 x i8], ptr %average_energy.i, i32 0, i32 5
  %10 = getelementptr inbounds [16 x i8], ptr %average_energy.i, i32 0, i32 6
  %11 = getelementptr inbounds [16 x i8], ptr %average_energy.i, i32 0, i32 7
  %12 = getelementptr inbounds [16 x i8], ptr %average_energy.i, i32 0, i32 8
  %13 = getelementptr inbounds [16 x i8], ptr %average_energy.i, i32 0, i32 9
  %14 = getelementptr inbounds [16 x i8], ptr %average_energy.i, i32 0, i32 10
  %15 = getelementptr inbounds [16 x i8], ptr %average_energy.i, i32 0, i32 11
  %16 = getelementptr inbounds [16 x i8], ptr %average_energy.i, i32 0, i32 12
  %17 = getelementptr inbounds [16 x i8], ptr %average_energy.i, i32 0, i32 13
  %18 = getelementptr inbounds [16 x i8], ptr %average_energy.i, i32 0, i32 14
  %19 = getelementptr inbounds [16 x i8], ptr %average_energy.i, i32 0, i32 15
  %20 = call ptr @memset(ptr %average_energy.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %air_time.i) #8
  %21 = getelementptr inbounds [4 x i32], ptr %air_time.i, i32 0, i32 1
  %22 = getelementptr inbounds [4 x i32], ptr %air_time.i, i32 0, i32 2
  %23 = getelementptr inbounds [4 x i32], ptr %air_time.i, i32 0, i32 3
  %24 = call ptr @memset(ptr %air_time.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rx_bytes.i) #8
  %25 = getelementptr inbounds [4 x i32], ptr %rx_bytes.i, i32 0, i32 1
  %26 = getelementptr inbounds [4 x i32], ptr %rx_bytes.i, i32 0, i32 2
  %27 = getelementptr inbounds [4 x i32], ptr %rx_bytes.i, i32 0, i32 3
  %28 = call ptr @memset(ptr %rx_bytes.i, i32 255, i32 16)
  %29 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fw, align 8
  %call.i = tail call zeroext i8 @iwl_fw_lookup_notif_ver(ptr noundef %30, i8 noundef zeroext 0, i8 noundef zeroext -99, i8 noundef zeroext 0) #8
  %conv.i = zext i8 %call.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %call.i)
  %cmp.i = icmp ugt i8 %call.i, 15
  br i1 %cmp.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then
  %.b199.i = load i1, ptr @iwl_mvm_handle_rx_statistics_tlv.__already_done, align 1
  br i1 %.b199.i, label %land.rhs.i.iwl_mvm_handle_rx_statistics_tlv.exit_crit_edge, label %if.then.i, !prof !90

land.rhs.i.iwl_mvm_handle_rx_statistics_tlv.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_handle_rx_statistics_tlv.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_handle_rx_statistics_tlv.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 821, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %conv.i) #8
  br label %iwl_mvm_handle_rx_statistics_tlv.exit

if.end39.i:                                       ; preds = %if.then
  %31 = zext i8 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %call.i, label %if.end39.i.if.end123.i_crit_edge [
    i8 14, label %if.then42.i
    i8 15, label %if.then75.i
  ]

if.end39.i.if.end123.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123.i

if.then42.i:                                      ; preds = %if.end39.i
  %call43.i = tail call fastcc zeroext i1 @iwl_mvm_verify_stats_len(ptr noundef %mvm, ptr noundef %pkt, i32 noundef 196) #8
  br i1 %call43.i, label %if.end72.thread.i, label %if.then42.i.iwl_mvm_handle_rx_statistics_tlv.exit_crit_edge

if.then42.i.iwl_mvm_handle_rx_statistics_tlv.exit_crit_edge: ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_handle_rx_statistics_tlv.exit

if.end72.thread.i:                                ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %data.i.i) #8
  %32 = getelementptr inbounds i8, ptr %data.i.i, i32 12
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %32, align 4
  %34 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %mvm, ptr %data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %beacon_average_energy.i.i) #8
  %35 = getelementptr inbounds [4 x i8], ptr %beacon_average_energy.i.i, i32 0, i32 1
  %36 = getelementptr inbounds [4 x i8], ptr %beacon_average_energy.i.i, i32 0, i32 2
  %37 = getelementptr inbounds [4 x i8], ptr %beacon_average_energy.i.i, i32 0, i32 3
  %flags2.i.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 1, i32 1
  %38 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %flags2.i.i, align 1
  %mac_id.i.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 2
  %40 = ptrtoint ptr %mac_id.i.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %mac_id.i.i, align 1
  %mac_id3.i.i = getelementptr inbounds %struct.iwl_mvm_stat_data, ptr %data.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %mac_id3.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %mac_id3.i.i, align 4
  %beacon_filter_average_energy.i.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 2, i32 1
  %43 = ptrtoint ptr %beacon_filter_average_energy.i.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %beacon_filter_average_energy.i.i, align 1
  %45 = lshr i32 %44, 24
  %conv.i.i = trunc i32 %45 to i8
  %46 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv.i.i, ptr %32, align 4
  %flags5.i.i = getelementptr inbounds %struct.iwl_mvm_stat_data, ptr %data.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %flags5.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %39, ptr %flags5.i.i, align 4
  %beacon_counter.i.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 6
  %beacon_counter6.i.i = getelementptr inbounds %struct.iwl_mvm_stat_data, ptr %data.i.i, i32 0, i32 4
  %48 = ptrtoint ptr %beacon_counter6.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %beacon_counter.i.i, ptr %beacon_counter6.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 8
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %arrayidx.i.i, align 1
  %51 = lshr i32 %50, 24
  %conv9.i.i = trunc i32 %51 to i8
  %52 = ptrtoint ptr %beacon_average_energy.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv9.i.i, ptr %beacon_average_energy.i.i, align 1
  %arrayidx.1.i.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 8, i32 1
  %53 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %arrayidx.1.i.i, align 1
  %55 = lshr i32 %54, 24
  %conv9.1.i.i = trunc i32 %55 to i8
  %56 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv9.1.i.i, ptr %35, align 1
  %arrayidx.2.i.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 9
  %57 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %arrayidx.2.i.i, align 1
  %59 = lshr i32 %58, 24
  %conv9.2.i.i = trunc i32 %59 to i8
  %60 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv9.2.i.i, ptr %36, align 1
  %arrayidx.3.i.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 9, i32 1
  %61 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %arrayidx.3.i.i, align 1
  %63 = lshr i32 %62, 24
  %conv9.3.i.i = trunc i32 %63 to i8
  %64 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv9.3.i.i, ptr %37, align 1
  %beacon_average_energy12.i.i = getelementptr inbounds %struct.iwl_mvm_stat_data, ptr %data.i.i, i32 0, i32 5
  %65 = ptrtoint ptr %beacon_average_energy12.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %beacon_average_energy.i.i, ptr %beacon_average_energy12.i.i, align 4
  %hw.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %66 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw.i.i, align 4
  call void @ieee80211_iterate_interfaces(ptr noundef %67, i32 noundef 2, ptr noundef nonnull @iwl_mvm_stat_iterator, ptr noundef nonnull %data.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %beacon_average_energy.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %data.i.i) #8
  %68 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %flags2.i.i, align 1
  %rx_time.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 13
  %70 = ptrtoint ptr %rx_time.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 8)
  %71 = load i64, ptr %rx_time.i, align 1
  %72 = call i64 @llvm.bswap.i64(i64 %71) #8
  %radio_stats.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 25
  %73 = ptrtoint ptr %radio_stats.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %72, ptr %radio_stats.i, align 8
  %tx_time.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 14
  %74 = ptrtoint ptr %tx_time.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 8)
  %75 = load i64, ptr %tx_time.i, align 1
  %76 = call i64 @llvm.bswap.i64(i64 %75) #8
  %tx_time49.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 25, i32 1
  %77 = ptrtoint ptr %tx_time49.i to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %tx_time49.i, align 8
  %on_time_rf.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 15
  %78 = ptrtoint ptr %on_time_rf.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 8)
  %79 = load i64, ptr %on_time_rf.i, align 1
  %80 = call i64 @llvm.bswap.i64(i64 %79) #8
  %on_time_rf51.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 25, i32 2
  %81 = ptrtoint ptr %on_time_rf51.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %80, ptr %on_time_rf51.i, align 8
  %on_time_scan.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 16
  %82 = ptrtoint ptr %on_time_scan.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 8)
  %83 = load i64, ptr %on_time_scan.i, align 1
  %84 = call i64 @llvm.bswap.i64(i64 %83) #8
  %on_time_scan53.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 25, i32 3
  %85 = ptrtoint ptr %on_time_scan53.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %84, ptr %on_time_scan53.i, align 8
  %average_energy56.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 17
  %86 = ptrtoint ptr %average_energy56.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %average_energy56.i, align 1
  %88 = lshr i32 %87, 24
  %conv57.i = trunc i32 %88 to i8
  %89 = ptrtoint ptr %average_energy.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv57.i, ptr %average_energy.i, align 1
  %arrayidx.1.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 17, i32 1
  %90 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %arrayidx.1.i, align 1
  %92 = lshr i32 %91, 24
  %conv57.1.i = trunc i32 %92 to i8
  %93 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv57.1.i, ptr %5, align 1
  %arrayidx.2.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 18
  %94 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %arrayidx.2.i, align 1
  %96 = lshr i32 %95, 24
  %conv57.2.i = trunc i32 %96 to i8
  %97 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv57.2.i, ptr %6, align 1
  %arrayidx.3.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 18, i32 1
  %98 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %arrayidx.3.i, align 1
  %100 = lshr i32 %99, 24
  %conv57.3.i = trunc i32 %100 to i8
  %101 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv57.3.i, ptr %7, align 1
  %arrayidx.4.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 19
  %102 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %arrayidx.4.i, align 1
  %104 = lshr i32 %103, 24
  %conv57.4.i = trunc i32 %104 to i8
  %105 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv57.4.i, ptr %8, align 1
  %arrayidx.5.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 19, i32 1
  %106 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %arrayidx.5.i, align 1
  %108 = lshr i32 %107, 24
  %conv57.5.i = trunc i32 %108 to i8
  %109 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv57.5.i, ptr %9, align 1
  %arrayidx.6.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 20
  %110 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %arrayidx.6.i, align 1
  %112 = lshr i32 %111, 24
  %conv57.6.i = trunc i32 %112 to i8
  %113 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv57.6.i, ptr %10, align 1
  %arrayidx.7.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 20, i32 1
  %114 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_loadN_noabort(i32 %114, i32 4)
  %115 = load i32, ptr %arrayidx.7.i, align 1
  %116 = lshr i32 %115, 24
  %conv57.7.i = trunc i32 %116 to i8
  %117 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv57.7.i, ptr %11, align 1
  %arrayidx.8.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 21
  %118 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %arrayidx.8.i, align 1
  %120 = lshr i32 %119, 24
  %conv57.8.i = trunc i32 %120 to i8
  %121 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv57.8.i, ptr %12, align 1
  %arrayidx.9.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 21, i32 1
  %122 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %arrayidx.9.i, align 1
  %124 = lshr i32 %123, 24
  %conv57.9.i = trunc i32 %124 to i8
  %125 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv57.9.i, ptr %13, align 1
  %arrayidx.10.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 22
  %126 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_loadN_noabort(i32 %126, i32 4)
  %127 = load i32, ptr %arrayidx.10.i, align 1
  %128 = lshr i32 %127, 24
  %conv57.10.i = trunc i32 %128 to i8
  %129 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv57.10.i, ptr %14, align 1
  %arrayidx.11.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 22, i32 1
  %130 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_loadN_noabort(i32 %130, i32 4)
  %131 = load i32, ptr %arrayidx.11.i, align 1
  %132 = lshr i32 %131, 24
  %conv57.11.i = trunc i32 %132 to i8
  %133 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv57.11.i, ptr %15, align 1
  %arrayidx.12.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 23
  %134 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_loadN_noabort(i32 %134, i32 4)
  %135 = load i32, ptr %arrayidx.12.i, align 1
  %136 = lshr i32 %135, 24
  %conv57.12.i = trunc i32 %136 to i8
  %137 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv57.12.i, ptr %16, align 1
  %arrayidx.13.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 23, i32 1
  %138 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %139 = load i32, ptr %arrayidx.13.i, align 1
  %140 = lshr i32 %139, 24
  %conv57.13.i = trunc i32 %140 to i8
  %141 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv57.13.i, ptr %17, align 1
  %arrayidx.14.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 24
  %142 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_loadN_noabort(i32 %142, i32 4)
  %143 = load i32, ptr %arrayidx.14.i, align 1
  %144 = lshr i32 %143, 24
  %conv57.14.i = trunc i32 %144 to i8
  %145 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %conv57.14.i, ptr %18, align 1
  %arrayidx.15.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 24, i32 1
  %146 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_loadN_noabort(i32 %146, i32 4)
  %147 = load i32, ptr %arrayidx.15.i, align 1
  %148 = lshr i32 %147, 24
  %conv57.15.i = trunc i32 %148 to i8
  %149 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %conv57.15.i, ptr %19, align 1
  %air_time63.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 4
  %rx_bytes66.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 11
  %150 = call ptr @memcpy(ptr %air_time.i, ptr %air_time63.i, i32 16)
  %151 = call ptr @memcpy(ptr %rx_bytes.i, ptr %rx_bytes66.i, i32 16)
  br label %if.end123.i

if.then75.i:                                      ; preds = %if.end39.i
  %call79.i = tail call fastcc zeroext i1 @iwl_mvm_verify_stats_len(ptr noundef %mvm, ptr noundef %pkt, i32 noundef 480) #8
  br i1 %call79.i, label %if.end81.i, label %if.then75.i.iwl_mvm_handle_rx_statistics_tlv.exit_crit_edge

if.then75.i.iwl_mvm_handle_rx_statistics_tlv.exit_crit_edge: ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_handle_rx_statistics_tlv.exit

if.end81.i:                                       ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data.i201.i) #8
  %152 = getelementptr inbounds %struct.iwl_mvm_stat_data_all_macs, ptr %data.i201.i, i32 0, i32 1
  %153 = getelementptr inbounds %struct.iwl_mvm_stat_data_all_macs, ptr %data.i201.i, i32 0, i32 2
  %154 = ptrtoint ptr %data.i201.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %mvm, ptr %data.i201.i, align 4
  %flags2.i202.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 1, i32 1
  %155 = ptrtoint ptr %flags2.i202.i to i32
  call void @__asan_loadN_noabort(i32 %155, i32 4)
  %156 = load i32, ptr %flags2.i202.i, align 1
  %157 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %152, align 4
  %per_mac_stats3.i.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 2
  %158 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %per_mac_stats3.i.i, ptr %153, align 4
  %hw.i203.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %159 = ptrtoint ptr %hw.i203.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %hw.i203.i, align 4
  call void @ieee80211_iterate_interfaces(ptr noundef %160, i32 noundef 2, ptr noundef nonnull @iwl_mvm_stat_iterator_all_macs, ptr noundef nonnull %data.i201.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data.i201.i) #8
  %161 = ptrtoint ptr %flags2.i202.i to i32
  call void @__asan_loadN_noabort(i32 %161, i32 4)
  %162 = load i32, ptr %flags2.i202.i, align 1
  %rx_time83.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 57
  %163 = ptrtoint ptr %rx_time83.i to i32
  call void @__asan_loadN_noabort(i32 %163, i32 8)
  %164 = load i64, ptr %rx_time83.i, align 1
  %165 = call i64 @llvm.bswap.i64(i64 %164) #8
  %radio_stats84.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 25
  %166 = ptrtoint ptr %radio_stats84.i to i32
  call void @__asan_store8_noabort(i32 %166)
  store i64 %165, ptr %radio_stats84.i, align 8
  %tx_time86.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 58
  %167 = ptrtoint ptr %tx_time86.i to i32
  call void @__asan_loadN_noabort(i32 %167, i32 8)
  %168 = load i64, ptr %tx_time86.i, align 1
  %169 = call i64 @llvm.bswap.i64(i64 %168) #8
  %tx_time88.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 25, i32 1
  %170 = ptrtoint ptr %tx_time88.i to i32
  call void @__asan_store8_noabort(i32 %170)
  store i64 %169, ptr %tx_time88.i, align 8
  %on_time_rf89.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 59
  %171 = ptrtoint ptr %on_time_rf89.i to i32
  call void @__asan_loadN_noabort(i32 %171, i32 8)
  %172 = load i64, ptr %on_time_rf89.i, align 1
  %173 = call i64 @llvm.bswap.i64(i64 %172) #8
  %on_time_rf91.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 25, i32 2
  %174 = ptrtoint ptr %on_time_rf91.i to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 %173, ptr %on_time_rf91.i, align 8
  %on_time_scan92.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 60
  %175 = ptrtoint ptr %on_time_scan92.i to i32
  call void @__asan_loadN_noabort(i32 %175, i32 8)
  %176 = load i64, ptr %on_time_scan92.i, align 1
  %177 = call i64 @llvm.bswap.i64(i64 %176) #8
  %on_time_scan94.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 25, i32 3
  %178 = ptrtoint ptr %on_time_scan94.i to i32
  call void @__asan_store8_noabort(i32 %178)
  store i64 %177, ptr %on_time_scan94.i, align 8
  %per_sta_stats.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 49
  %179 = ptrtoint ptr %per_sta_stats.i to i32
  call void @__asan_loadN_noabort(i32 %179, i32 4)
  %180 = load i32, ptr %per_sta_stats.i, align 1
  %181 = lshr i32 %180, 24
  %conv101.i = trunc i32 %181 to i8
  %182 = ptrtoint ptr %average_energy.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %conv101.i, ptr %average_energy.i, align 1
  %arrayidx99.1.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 49, i32 1
  %183 = ptrtoint ptr %arrayidx99.1.i to i32
  call void @__asan_loadN_noabort(i32 %183, i32 4)
  %184 = load i32, ptr %arrayidx99.1.i, align 1
  %185 = lshr i32 %184, 24
  %conv101.1.i = trunc i32 %185 to i8
  %186 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %conv101.1.i, ptr %5, align 1
  %arrayidx99.2.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 50
  %187 = ptrtoint ptr %arrayidx99.2.i to i32
  call void @__asan_loadN_noabort(i32 %187, i32 4)
  %188 = load i32, ptr %arrayidx99.2.i, align 1
  %189 = lshr i32 %188, 24
  %conv101.2.i = trunc i32 %189 to i8
  %190 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %conv101.2.i, ptr %6, align 1
  %arrayidx99.3.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 50, i32 1
  %191 = ptrtoint ptr %arrayidx99.3.i to i32
  call void @__asan_loadN_noabort(i32 %191, i32 4)
  %192 = load i32, ptr %arrayidx99.3.i, align 1
  %193 = lshr i32 %192, 24
  %conv101.3.i = trunc i32 %193 to i8
  %194 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %conv101.3.i, ptr %7, align 1
  %arrayidx99.4.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 51
  %195 = ptrtoint ptr %arrayidx99.4.i to i32
  call void @__asan_loadN_noabort(i32 %195, i32 4)
  %196 = load i32, ptr %arrayidx99.4.i, align 1
  %197 = lshr i32 %196, 24
  %conv101.4.i = trunc i32 %197 to i8
  %198 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %conv101.4.i, ptr %8, align 1
  %arrayidx99.5.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 51, i32 1
  %199 = ptrtoint ptr %arrayidx99.5.i to i32
  call void @__asan_loadN_noabort(i32 %199, i32 4)
  %200 = load i32, ptr %arrayidx99.5.i, align 1
  %201 = lshr i32 %200, 24
  %conv101.5.i = trunc i32 %201 to i8
  %202 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %conv101.5.i, ptr %9, align 1
  %arrayidx99.6.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 52
  %203 = ptrtoint ptr %arrayidx99.6.i to i32
  call void @__asan_loadN_noabort(i32 %203, i32 4)
  %204 = load i32, ptr %arrayidx99.6.i, align 1
  %205 = lshr i32 %204, 24
  %conv101.6.i = trunc i32 %205 to i8
  %206 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %conv101.6.i, ptr %10, align 1
  %arrayidx99.7.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 52, i32 1
  %207 = ptrtoint ptr %arrayidx99.7.i to i32
  call void @__asan_loadN_noabort(i32 %207, i32 4)
  %208 = load i32, ptr %arrayidx99.7.i, align 1
  %209 = lshr i32 %208, 24
  %conv101.7.i = trunc i32 %209 to i8
  %210 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %conv101.7.i, ptr %11, align 1
  %arrayidx99.8.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 53
  %211 = ptrtoint ptr %arrayidx99.8.i to i32
  call void @__asan_loadN_noabort(i32 %211, i32 4)
  %212 = load i32, ptr %arrayidx99.8.i, align 1
  %213 = lshr i32 %212, 24
  %conv101.8.i = trunc i32 %213 to i8
  %214 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %conv101.8.i, ptr %12, align 1
  %arrayidx99.9.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 53, i32 1
  %215 = ptrtoint ptr %arrayidx99.9.i to i32
  call void @__asan_loadN_noabort(i32 %215, i32 4)
  %216 = load i32, ptr %arrayidx99.9.i, align 1
  %217 = lshr i32 %216, 24
  %conv101.9.i = trunc i32 %217 to i8
  %218 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %conv101.9.i, ptr %13, align 1
  %arrayidx99.10.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 54
  %219 = ptrtoint ptr %arrayidx99.10.i to i32
  call void @__asan_loadN_noabort(i32 %219, i32 4)
  %220 = load i32, ptr %arrayidx99.10.i, align 1
  %221 = lshr i32 %220, 24
  %conv101.10.i = trunc i32 %221 to i8
  %222 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %conv101.10.i, ptr %14, align 1
  %arrayidx99.11.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 54, i32 1
  %223 = ptrtoint ptr %arrayidx99.11.i to i32
  call void @__asan_loadN_noabort(i32 %223, i32 4)
  %224 = load i32, ptr %arrayidx99.11.i, align 1
  %225 = lshr i32 %224, 24
  %conv101.11.i = trunc i32 %225 to i8
  %226 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %conv101.11.i, ptr %15, align 1
  %arrayidx99.12.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 55
  %227 = ptrtoint ptr %arrayidx99.12.i to i32
  call void @__asan_loadN_noabort(i32 %227, i32 4)
  %228 = load i32, ptr %arrayidx99.12.i, align 1
  %229 = lshr i32 %228, 24
  %conv101.12.i = trunc i32 %229 to i8
  %230 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %conv101.12.i, ptr %16, align 1
  %arrayidx99.13.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 55, i32 1
  %231 = ptrtoint ptr %arrayidx99.13.i to i32
  call void @__asan_loadN_noabort(i32 %231, i32 4)
  %232 = load i32, ptr %arrayidx99.13.i, align 1
  %233 = lshr i32 %232, 24
  %conv101.13.i = trunc i32 %233 to i8
  %234 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %conv101.13.i, ptr %17, align 1
  %arrayidx99.14.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 56
  %235 = ptrtoint ptr %arrayidx99.14.i to i32
  call void @__asan_loadN_noabort(i32 %235, i32 4)
  %236 = load i32, ptr %arrayidx99.14.i, align 1
  %237 = lshr i32 %236, 24
  %conv101.14.i = trunc i32 %237 to i8
  %238 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %conv101.14.i, ptr %18, align 1
  %arrayidx99.15.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 56, i32 1
  %239 = ptrtoint ptr %arrayidx99.15.i to i32
  call void @__asan_loadN_noabort(i32 %239, i32 4)
  %240 = load i32, ptr %arrayidx99.15.i, align 1
  %241 = lshr i32 %240, 24
  %conv101.15.i = trunc i32 %241 to i8
  %242 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %conv101.15.i, ptr %19, align 1
  %air_time111.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 2, i32 1
  %243 = ptrtoint ptr %air_time111.i to i32
  call void @__asan_loadN_noabort(i32 %243, i32 4)
  %244 = load i32, ptr %air_time111.i, align 1
  %245 = ptrtoint ptr %air_time.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %244, ptr %air_time.i, align 4
  %rx_bytes115.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 5
  %246 = ptrtoint ptr %rx_bytes115.i to i32
  call void @__asan_loadN_noabort(i32 %246, i32 4)
  %247 = load i32, ptr %rx_bytes115.i, align 1
  %248 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %247, ptr %rx_bytes.i, align 4
  %air_time111.1.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 6
  %249 = ptrtoint ptr %air_time111.1.i to i32
  call void @__asan_loadN_noabort(i32 %249, i32 4)
  %250 = load i32, ptr %air_time111.1.i, align 1
  %251 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %250, ptr %21, align 4
  %rx_bytes115.1.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 8, i32 1
  %252 = ptrtoint ptr %rx_bytes115.1.i to i32
  call void @__asan_loadN_noabort(i32 %252, i32 4)
  %253 = load i32, ptr %rx_bytes115.1.i, align 1
  %254 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %253, ptr %25, align 4
  %air_time111.2.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 9, i32 1
  %255 = ptrtoint ptr %air_time111.2.i to i32
  call void @__asan_loadN_noabort(i32 %255, i32 4)
  %256 = load i32, ptr %air_time111.2.i, align 1
  %257 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %256, ptr %22, align 4
  %rx_bytes115.2.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 12
  %258 = ptrtoint ptr %rx_bytes115.2.i to i32
  call void @__asan_loadN_noabort(i32 %258, i32 4)
  %259 = load i32, ptr %rx_bytes115.2.i, align 1
  %260 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %259, ptr %26, align 4
  %air_time111.3.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 13
  %261 = ptrtoint ptr %air_time111.3.i to i32
  call void @__asan_loadN_noabort(i32 %261, i32 4)
  %262 = load i32, ptr %air_time111.3.i, align 1
  %263 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %262, ptr %23, align 4
  %rx_bytes115.3.i = getelementptr %struct.iwl_rx_packet, ptr %pkt, i32 15, i32 1
  %264 = ptrtoint ptr %rx_bytes115.3.i to i32
  call void @__asan_loadN_noabort(i32 %264, i32 4)
  %265 = load i32, ptr %rx_bytes115.3.i, align 1
  %266 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %265, ptr %27, align 4
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.end81.i, %if.end72.thread.i, %if.end39.i.if.end123.i_crit_edge
  %flags.3.i = phi i32 [ %162, %if.end81.i ], [ %69, %if.end72.thread.i ], [ 0, %if.end39.i.if.end123.i_crit_edge ]
  call fastcc void @iwl_mvm_rx_stats_check_trigger(ptr noundef %mvm, ptr noundef %pkt) #8
  %hw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %267 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %hw.i, align 4
  call void @ieee80211_iterate_stations_atomic(ptr noundef %268, ptr noundef nonnull @iwl_mvm_stats_energy_iter, ptr noundef nonnull %average_energy.i) #8
  %269 = and i32 %flags.3.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %269)
  %tobool125.not.i = icmp eq i32 %269, 0
  br i1 %tobool125.not.i, label %if.end123.i.iwl_mvm_handle_rx_statistics_tlv.exit_crit_edge, label %if.then126.i

if.end123.i.iwl_mvm_handle_rx_statistics_tlv.exit_crit_edge: ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_handle_rx_statistics_tlv.exit

if.then126.i:                                     ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @iwl_mvm_update_tcm_from_stats(ptr noundef %mvm, ptr noundef nonnull %air_time.i, ptr noundef nonnull %rx_bytes.i) #8
  br label %iwl_mvm_handle_rx_statistics_tlv.exit

iwl_mvm_handle_rx_statistics_tlv.exit:            ; preds = %if.then126.i, %if.end123.i.iwl_mvm_handle_rx_statistics_tlv.exit_crit_edge, %if.then75.i.iwl_mvm_handle_rx_statistics_tlv.exit_crit_edge, %if.then42.i.iwl_mvm_handle_rx_statistics_tlv.exit_crit_edge, %if.then.i, %land.rhs.i.iwl_mvm_handle_rx_statistics_tlv.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rx_bytes.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %air_time.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %average_energy.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %270 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %271, i32 0, i32 5, i32 7, i32 1
  %272 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %274 = and i32 %273, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %274)
  %tobool.i.i.not = icmp eq i32 %274, 0
  br i1 %tobool.i.i.not, label %if.then4, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i.i209 = getelementptr %struct.iwl_fw, ptr %271, i32 0, i32 5, i32 8, i32 2
  %275 = ptrtoint ptr %arrayidx.i.i.i209 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load volatile i32, ptr %arrayidx.i.i.i209, align 4
  %277 = and i32 %276, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %277)
  %tobool.i.i210.not = icmp eq i32 %277, 0
  %. = select i1 %tobool.i.i210.not, i32 684, i32 760
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end.if.end9_crit_edge
  %expected_size.0 = phi i32 [ %., %if.then4 ], [ 564, %if.end.if.end9_crit_edge ]
  %278 = ptrtoint ptr %pkt to i32
  call void @__asan_loadN_noabort(i32 %278, i32 4)
  %279 = load i32, ptr %pkt, align 1
  %280 = and i32 %279, -12648448
  %281 = tail call i32 @llvm.bswap.i32(i32 %280) #8
  %sub.i = add nsw i32 %281, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %expected_size.0)
  %cmp11.not = icmp eq i32 %sub.i, %expected_size.0
  br i1 %cmp11.not, label %if.end53, label %land.rhs

land.rhs:                                         ; preds = %if.end9
  %.b205 = load i1, ptr @iwl_mvm_handle_rx_statistics.__already_done, align 1
  br i1 %.b205, label %land.rhs.cleanup_crit_edge, label %if.then20, !prof !90

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then20:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_handle_rx_statistics.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 914, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %sub.i) #8
  br label %cleanup

if.end53:                                         ; preds = %if.end9
  %282 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %284 = and i32 %283, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %284)
  %tobool.i.i214.not = icmp eq i32 %284, 0
  %rx = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 1, i32 1
  br i1 %tobool.i.i214.not, label %if.then55, label %if.else81

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %mac_id = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 32, i32 1
  %285 = ptrtoint ptr %mac_id to i32
  call void @__asan_loadN_noabort(i32 %285, i32 4)
  %286 = load i32, ptr %mac_id, align 1
  %mac_id57 = getelementptr inbounds %struct.iwl_mvm_stat_data, ptr %data, i32 0, i32 2
  %287 = ptrtoint ptr %mac_id57 to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %286, ptr %mac_id57, align 4
  %beacon_filter_average_energy = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 74
  %288 = ptrtoint ptr %beacon_filter_average_energy to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %beacon_filter_average_energy, align 1
  %beacon_filter_average_energy59 = getelementptr inbounds %struct.iwl_mvm_stat_data, ptr %data, i32 0, i32 3
  %290 = ptrtoint ptr %beacon_filter_average_energy59 to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 %289, ptr %beacon_filter_average_energy59, align 4
  %291 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 24
  %292 = call ptr @memcpy(ptr %291, ptr %rx, i32 296)
  %rx_time = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 79
  %293 = ptrtoint ptr %rx_time to i32
  call void @__asan_loadN_noabort(i32 %293, i32 8)
  %294 = load i64, ptr %rx_time, align 1
  %295 = tail call i64 @llvm.bswap.i64(i64 %294)
  %radio_stats = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 25
  %296 = ptrtoint ptr %radio_stats to i32
  call void @__asan_store8_noabort(i32 %296)
  store i64 %295, ptr %radio_stats, align 8
  %tx_time = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 82
  %297 = ptrtoint ptr %tx_time to i32
  call void @__asan_loadN_noabort(i32 %297, i32 8)
  %298 = load i64, ptr %tx_time, align 1
  %299 = tail call i64 @llvm.bswap.i64(i64 %298)
  %tx_time67 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 25, i32 1
  %300 = ptrtoint ptr %tx_time67 to i32
  call void @__asan_store8_noabort(i32 %300)
  store i64 %299, ptr %tx_time67, align 8
  %on_time_rf = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 80
  %301 = ptrtoint ptr %on_time_rf to i32
  call void @__asan_loadN_noabort(i32 %301, i32 8)
  %302 = load i64, ptr %on_time_rf, align 1
  %303 = tail call i64 @llvm.bswap.i64(i64 %302)
  %on_time_rf71 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 25, i32 2
  %304 = ptrtoint ptr %on_time_rf71 to i32
  call void @__asan_store8_noabort(i32 %304)
  store i64 %303, ptr %on_time_rf71, align 8
  %on_time_scan = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 81
  %305 = ptrtoint ptr %on_time_scan to i32
  call void @__asan_loadN_noabort(i32 %305, i32 8)
  %306 = load i64, ptr %on_time_scan, align 1
  %307 = tail call i64 @llvm.bswap.i64(i64 %306)
  %beacon_counter = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 83
  br label %if.end122

if.else81:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %mac_id86 = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 16
  %308 = ptrtoint ptr %mac_id86 to i32
  call void @__asan_loadN_noabort(i32 %308, i32 4)
  %309 = load i32, ptr %mac_id86, align 1
  %mac_id87 = getelementptr inbounds %struct.iwl_mvm_stat_data, ptr %data, i32 0, i32 2
  %310 = ptrtoint ptr %mac_id87 to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %309, ptr %mac_id87, align 4
  %beacon_filter_average_energy90 = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 51, i32 1
  %311 = ptrtoint ptr %beacon_filter_average_energy90 to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %beacon_filter_average_energy90, align 1
  %beacon_filter_average_energy91 = getelementptr inbounds %struct.iwl_mvm_stat_data, ptr %data, i32 0, i32 3
  %313 = ptrtoint ptr %beacon_filter_average_energy91 to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 %312, ptr %beacon_filter_average_energy91, align 4
  %314 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 24
  %315 = call ptr @memcpy(ptr %314, ptr %rx, i32 136)
  %rx_time95 = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 56, i32 1
  %316 = ptrtoint ptr %rx_time95 to i32
  call void @__asan_loadN_noabort(i32 %316, i32 8)
  %317 = load i64, ptr %rx_time95, align 1
  %318 = tail call i64 @llvm.bswap.i64(i64 %317)
  %radio_stats96 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 25
  %319 = ptrtoint ptr %radio_stats96 to i32
  call void @__asan_store8_noabort(i32 %319)
  store i64 %318, ptr %radio_stats96, align 8
  %tx_time100 = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 59, i32 1
  %320 = ptrtoint ptr %tx_time100 to i32
  call void @__asan_loadN_noabort(i32 %320, i32 8)
  %321 = load i64, ptr %tx_time100, align 1
  %322 = tail call i64 @llvm.bswap.i64(i64 %321)
  %tx_time102 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 25, i32 1
  %323 = ptrtoint ptr %tx_time102 to i32
  call void @__asan_store8_noabort(i32 %323)
  store i64 %322, ptr %tx_time102, align 8
  %on_time_rf105 = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 57, i32 1
  %324 = ptrtoint ptr %on_time_rf105 to i32
  call void @__asan_loadN_noabort(i32 %324, i32 8)
  %325 = load i64, ptr %on_time_rf105, align 1
  %326 = tail call i64 @llvm.bswap.i64(i64 %325)
  %on_time_rf107 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 25, i32 2
  %327 = ptrtoint ptr %on_time_rf107 to i32
  call void @__asan_store8_noabort(i32 %327)
  store i64 %326, ptr %on_time_rf107, align 8
  %on_time_scan110 = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 58, i32 1
  %328 = ptrtoint ptr %on_time_scan110 to i32
  call void @__asan_loadN_noabort(i32 %328, i32 8)
  %329 = load i64, ptr %on_time_scan110, align 1
  %330 = tail call i64 @llvm.bswap.i64(i64 %329)
  %beacon_counter114 = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 60, i32 1
  br label %if.end122

if.end122:                                        ; preds = %if.else81, %if.then55
  %.sink221 = phi i32 [ 62, %if.else81 ], [ 85, %if.then55 ]
  %.sink = phi i64 [ %330, %if.else81 ], [ %307, %if.then55 ]
  %beacon_counter114.sink = phi ptr [ %beacon_counter114, %if.else81 ], [ %beacon_counter, %if.then55 ]
  %beacon_average_energy118 = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 %.sink221, i32 1
  %331 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 25, i32 3
  %332 = ptrtoint ptr %331 to i32
  call void @__asan_store8_noabort(i32 %332)
  store i64 %.sink, ptr %331, align 8
  %333 = getelementptr inbounds %struct.iwl_mvm_stat_data, ptr %data, i32 0, i32 4
  %334 = ptrtoint ptr %333 to i32
  call void @__asan_store4_noabort(i32 %334)
  store ptr %beacon_counter114.sink, ptr %333, align 4
  %335 = getelementptr inbounds %struct.iwl_mvm_stat_data, ptr %data, i32 0, i32 5
  %336 = ptrtoint ptr %335 to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr %beacon_average_energy118, ptr %335, align 4
  %flags.0.in = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 0, i32 2
  %337 = ptrtoint ptr %flags.0.in to i32
  call void @__asan_loadN_noabort(i32 %337, i32 4)
  %flags.0 = load i32, ptr %flags.0.in, align 1
  %flags123 = getelementptr inbounds %struct.iwl_mvm_stat_data, ptr %data, i32 0, i32 1
  %338 = ptrtoint ptr %flags123 to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 %flags.0, ptr %flags123, align 4
  tail call fastcc void @iwl_mvm_rx_stats_check_trigger(ptr noundef %mvm, ptr noundef %pkt)
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %339 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %hw, align 4
  call void @ieee80211_iterate_interfaces(ptr noundef %340, i32 noundef 2, ptr noundef nonnull @iwl_mvm_stat_iterator, ptr noundef nonnull %data) #8
  %341 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i216 = getelementptr %struct.iwl_fw, ptr %342, i32 0, i32 5, i32 8, i32 2
  %343 = ptrtoint ptr %arrayidx.i.i.i216 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load volatile i32, ptr %arrayidx.i.i.i216, align 4
  %345 = and i32 %344, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %345)
  %tobool.i.i217.not = icmp eq i32 %345, 0
  br i1 %tobool.i.i217.not, label %if.end122.cleanup_crit_edge, label %if.end126

if.end122.cleanup_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end126:                                        ; preds = %if.end122
  %arrayidx.i.i.i219 = getelementptr %struct.iwl_fw, ptr %342, i32 0, i32 5, i32 7, i32 1
  %346 = ptrtoint ptr %arrayidx.i.i.i219 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load volatile i32, ptr %arrayidx.i.i.i219, align 4
  %348 = and i32 %347, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %348)
  %tobool.i.i220.not = icmp eq i32 %348, 0
  br i1 %tobool.i.i220.not, label %if.then128, label %if.else133

if.then128:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  %load_stats = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 86, i32 1
  %avg_energy = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 94
  %byte_count = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 89
  br label %if.end142

if.else133:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  %load_stats136 = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 63, i32 1
  %avg_energy137 = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 69, i32 1
  %byte_count139 = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 65, i32 1
  br label %if.end142

if.end142:                                        ; preds = %if.else133, %if.then128
  %energy.0 = phi ptr [ %avg_energy137, %if.else133 ], [ %avg_energy, %if.then128 ]
  %air_time.0 = phi ptr [ %load_stats136, %if.else133 ], [ %load_stats, %if.then128 ]
  %bytes.0 = phi ptr [ %byte_count139, %if.else133 ], [ %byte_count, %if.then128 ]
  %349 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %hw, align 4
  call void @ieee80211_iterate_stations_atomic(ptr noundef %350, ptr noundef nonnull @iwl_mvm_stats_energy_iter, ptr noundef %energy.0) #8
  %351 = and i32 %flags.0, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %351)
  %tobool144.not = icmp eq i32 %351, 0
  br i1 %tobool144.not, label %if.end142.cleanup_crit_edge, label %if.then145

if.end142.cleanup_crit_edge:                      ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then145:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @iwl_mvm_update_tcm_from_stats(ptr noundef %mvm, ptr noundef %air_time.0, ptr noundef %bytes.0)
  br label %cleanup

cleanup:                                          ; preds = %if.then145, %if.end142.cleanup_crit_edge, %if.end122.cleanup_crit_edge, %if.then20, %land.rhs.cleanup_crit_edge, %iwl_mvm_handle_rx_statistics_tlv.exit
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %data) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_fw_lookup_notif_ver(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_rx_stats_check_trigger(ptr noundef %mvm, ptr nocapture noundef readonly %pkt) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %fwrt = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %iwl_trans_dbg_ini_valid.exit.i
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 1
  %6 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw.i, align 4
  %arrayidx.i = getelementptr %struct.iwl_fw, ptr %7, i32 0, i32 20, i32 3, i32 7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %9, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  %trig_dis_ms.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %9, i32 0, i32 7
  %13 = ptrtoint ptr %trig_dis_ms.i.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %trig_dis_ms.i.i, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #8
  %conv.i.i = zext i16 %15 to i32
  %mul.i.i = mul nuw nsw i32 %conv.i.i, 1000
  %call3.i.i.i.i = tail call i32 @__usecs_to_jiffies(i32 noundef %mul.i.i) #8
  %arrayidx.i.i.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 12, i32 3, i32 %12
  %16 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i.i, label %if.end4.i.if.end7.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end4.i.if.end7.i.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %19 = add i32 %17, %call3.i.i.i.i
  %sub.i.i.i = sub i32 %18, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i16.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i16.i.i, label %do.end.i.i, label %land.lhs.true.i.i.i.if.end7.i.i_crit_edge

land.lhs.true.i.i.i.if.end7.i.i_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 2
  %20 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i.i, align 8
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %9, align 1
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %21, ptr noundef nonnull @.str.15, i32 noundef %23) #8
  br label %cleanup

if.end7.i.i:                                      ; preds = %land.lhs.true.i.i.i.if.end7.i.i_crit_edge, %if.end4.i.if.end7.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %25 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx.i.i.i, align 4
  %mode.i.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %9, i32 0, i32 4
  %26 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mode.i.i.i, align 1
  %28 = and i8 %27, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i17.i.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i17.i.i, label %if.end7.i.i.cleanup_crit_edge, label %land.rhs.i.i.i

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs.i.i.i:                                   ; preds = %if.end7.i.i
  %conf.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 12, i32 2
  %29 = ptrtoint ptr %conf.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %conf.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %cmp.i18.i.i = icmp eq i8 %30, -1
  br i1 %cmp.i18.i.i, label %land.rhs.i.i.i.if.end_crit_edge, label %iwl_fw_dbg_trigger_check_stop.exit.i

land.rhs.i.i.i.if.end_crit_edge:                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

iwl_fw_dbg_trigger_check_stop.exit.i:             ; preds = %land.rhs.i.i.i
  %conv1.i.i.i = zext i8 %30 to i32
  %shl.i.i.i = shl nuw i32 1, %conv1.i.i.i
  %stop_conf_ids.i.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %9, i32 0, i32 2
  %31 = ptrtoint ptr %stop_conf_ids.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %stop_conf_ids.i.i.i, align 1
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  %and6.i.i.i = and i32 %33, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.i.i.not.i = icmp eq i32 %and6.i.i.i, 0
  br i1 %tobool7.i.i.not.i, label %iwl_fw_dbg_trigger_check_stop.exit.i.cleanup_crit_edge, label %iwl_fw_dbg_trigger_check_stop.exit.i.if.end_crit_edge

iwl_fw_dbg_trigger_check_stop.exit.i.if.end_crit_edge: ; preds = %iwl_fw_dbg_trigger_check_stop.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

iwl_fw_dbg_trigger_check_stop.exit.i.cleanup_crit_edge: ; preds = %iwl_fw_dbg_trigger_check_stop.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %iwl_fw_dbg_trigger_check_stop.exit.i.if.end_crit_edge, %land.rhs.i.i.i.if.end_crit_edge
  %data = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %9, i32 0, i32 10
  %34 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %data, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %37 = ptrtoint ptr %pkt to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %pkt, align 1
  %39 = and i32 %38, -12648448
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #8
  %sub.i = add nsw i32 %40, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %sub.i)
  %cmp.not = icmp ult i32 %36, %sub.i
  br i1 %cmp.not, label %if.end48, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %.b68 = load i1, ptr @iwl_mvm_rx_stats_check_trigger.__already_done, align 1
  br i1 %.b68, label %land.rhs.cleanup_crit_edge, label %if.then12, !prof !90

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_rx_stats_check_trigger.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 683, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end48:                                         ; preds = %if.end
  %stop_threshold = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %9, i32 1, i32 1
  %41 = ptrtoint ptr %stop_threshold to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %stop_threshold, align 1
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %data49 = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 0, i32 2
  %add.ptr = getelementptr i8, ptr %data49, i32 %36
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %43)
  %cmp52 = icmp ult i32 %46, %43
  br i1 %cmp52, label %if.end48.cleanup_crit_edge, label %if.end54

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %call56 = tail call i32 (ptr, ptr, ptr, ...) @iwl_fw_dbg_collect_trig(ptr noundef %fwrt, ptr noundef nonnull %9, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end48.cleanup_crit_edge, %if.then12, %land.rhs.cleanup_crit_edge, %iwl_fw_dbg_trigger_check_stop.exit.i.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %do.end.i.i, %if.end.i.cleanup_crit_edge, %iwl_trans_dbg_ini_valid.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_stat_iterator(ptr nocapture noundef readonly %_data, ptr nocapture noundef readnone %mac, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %beacon_filter_average_energy = getelementptr inbounds %struct.iwl_mvm_stat_data, ptr %_data, i32 0, i32 3
  %0 = ptrtoint ptr %beacon_filter_average_energy to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %beacon_filter_average_energy, align 4
  %conv = zext i8 %1 to i32
  %sub = sub nsw i32 0, %conv
  %mac_id = getelementptr inbounds %struct.iwl_mvm_stat_data, ptr %_data, i32 0, i32 2
  %2 = ptrtoint ptr %mac_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_id, align 4
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %id2 = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %4 = ptrtoint ptr %id2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id2, align 4
  %beacon_counter = getelementptr inbounds %struct.iwl_mvm_stat_data, ptr %_data, i32 0, i32 4
  %6 = ptrtoint ptr %beacon_counter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %beacon_counter, align 4
  %idxprom = zext i16 %5 to i32
  %arrayidx = getelementptr i32, ptr %7, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %beacon_stats = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 23
  %11 = ptrtoint ptr %beacon_stats to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %beacon_stats, align 4
  %beacon_average_energy = getelementptr inbounds %struct.iwl_mvm_stat_data, ptr %_data, i32 0, i32 5
  %12 = ptrtoint ptr %beacon_average_energy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %beacon_average_energy, align 4
  %arrayidx4 = getelementptr i8, ptr %13, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx4, align 1
  %sub6 = sub i8 0, %15
  %avg_signal = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 25
  %16 = ptrtoint ptr %avg_signal to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %sub6, ptr %avg_signal, align 4
  %17 = and i32 %3, -65536
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %idxprom)
  %cmp.not = icmp eq i32 %18, %idxprom
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %19 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp13.not = icmp eq i32 %20, 2
  br i1 %cmp13.not, label %if.end16, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.iwl_mvm_stat_data, ptr %_data, i32 0, i32 1
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  br i1 %tobool.not, label %if.end16.if.end21_crit_edge, label %if.then17

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then17:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %accu_num_beacons = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 24
  %24 = ptrtoint ptr %accu_num_beacons to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %accu_num_beacons, align 4
  %add = add i32 %25, %10
  store i32 %add, ptr %accu_num_beacons, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end16.if.end21_crit_edge
  tail call fastcc void @iwl_mvm_update_vif_sig(ptr noundef %vif, i32 noundef %sub)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_stations_atomic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_stats_energy_iter(ptr nocapture noundef readonly %_data, ptr nocapture noundef %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %drv_priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %1)
  %cmp = icmp ugt i32 %1, 15
  br i1 %cmp, label %land.rhs, label %if.end38

land.rhs:                                         ; preds = %entry
  %.b53 = load i1, ptr @iwl_mvm_stats_energy_iter.__already_done, align 1
  br i1 %.b53, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !90

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_stats_energy_iter.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 700, i32 noundef 9, ptr noundef nonnull @.str.30, i32 noundef %1, i32 noundef 16) #8
  br label %cleanup

if.end38:                                         ; preds = %entry
  %arrayidx = getelementptr i8, ptr %_data, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool39.not = icmp eq i8 %3, 0
  br i1 %tobool39.not, label %if.end38.cleanup_crit_edge, label %if.then40

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %avg_energy = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 26
  %4 = ptrtoint ptr %avg_energy to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %avg_energy, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.end38.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_update_tcm_from_stats(ptr noundef %mvm, ptr nocapture noundef readonly %air_time_le, ptr nocapture noundef readonly %rx_bytes_le) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %0 = ptrtoint ptr %rx_bytes_le to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_bytes_le, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %air_time_le to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %air_time_le, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %airtime4 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %airtime4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %airtime4, align 4
  %add = add i32 %7, %5
  store i32 %add, ptr %airtime4, align 4
  %conv = zext i32 %2 to i64
  %uapsd_nonagg_detect = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 0, i32 2
  %8 = ptrtoint ptr %uapsd_nonagg_detect to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %uapsd_nonagg_detect, align 8
  %add6 = add i64 %9, %conv
  store i64 %add6, ptr %uapsd_nonagg_detect, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rate = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rate, align 4
  %mul = shl i32 %2, 3
  %div = udiv i32 %mul, %5
  %11 = load volatile i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  %sub.i = mul i32 %11, 15
  %shl19.i = shl i32 %div, 16
  %add.i = add i32 %sub.i, %shl19.i
  %shr.i = lshr i32 %add.i, 4
  %cond.i = select i1 %tobool.not.i, i32 %shl19.i, i32 %shr.i
  %12 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 %cond.i, ptr %rate, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx2.1 = getelementptr i32, ptr %rx_bytes_le, i32 1
  %13 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx2.1, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %arrayidx3.1 = getelementptr i32, ptr %air_time_le, i32 1
  %16 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx3.1, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %airtime4.1 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 1, i32 1, i32 1
  %19 = ptrtoint ptr %airtime4.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %airtime4.1, align 4
  %add.1 = add i32 %20, %18
  store i32 %add.1, ptr %airtime4.1, align 4
  %conv.1 = zext i32 %15 to i64
  %uapsd_nonagg_detect.1 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 1, i32 2
  %21 = ptrtoint ptr %uapsd_nonagg_detect.1 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %uapsd_nonagg_detect.1, align 8
  %add6.1 = add i64 %22, %conv.1
  store i64 %add6.1, ptr %uapsd_nonagg_detect.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.1 = icmp eq i32 %17, 0
  br i1 %tobool.not.1, label %if.end.if.end.1_crit_edge, label %if.then.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %rate.1 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 1, i32 2, i32 1
  %23 = ptrtoint ptr %rate.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %rate.1, align 4
  %mul.1 = shl i32 %15, 3
  %div.1 = udiv i32 %mul.1, %18
  %24 = load volatile i32, ptr %rate.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.1 = icmp eq i32 %24, 0
  %sub.i.1 = mul i32 %24, 15
  %shl19.i.1 = shl i32 %div.1, 16
  %add.i.1 = add i32 %sub.i.1, %shl19.i.1
  %shr.i.1 = lshr i32 %add.i.1, 4
  %cond.i.1 = select i1 %tobool.not.i.1, i32 %shl19.i.1, i32 %shr.i.1
  %25 = ptrtoint ptr %rate.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 %cond.i.1, ptr %rate.1, align 4
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end.if.end.1_crit_edge
  %arrayidx2.2 = getelementptr i32, ptr %rx_bytes_le, i32 2
  %26 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx2.2, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %arrayidx3.2 = getelementptr i32, ptr %air_time_le, i32 2
  %29 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx3.2, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %airtime4.2 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 2, i32 1, i32 1
  %32 = ptrtoint ptr %airtime4.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %airtime4.2, align 4
  %add.2 = add i32 %33, %31
  store i32 %add.2, ptr %airtime4.2, align 4
  %conv.2 = zext i32 %28 to i64
  %uapsd_nonagg_detect.2 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 2, i32 2
  %34 = ptrtoint ptr %uapsd_nonagg_detect.2 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %uapsd_nonagg_detect.2, align 8
  %add6.2 = add i64 %35, %conv.2
  store i64 %add6.2, ptr %uapsd_nonagg_detect.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.2 = icmp eq i32 %30, 0
  br i1 %tobool.not.2, label %if.end.1.if.end.2_crit_edge, label %if.then.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.2

if.then.2:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  %rate.2 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 2, i32 2, i32 1
  %36 = ptrtoint ptr %rate.2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %rate.2, align 4
  %mul.2 = shl i32 %28, 3
  %div.2 = udiv i32 %mul.2, %31
  %37 = load volatile i32, ptr %rate.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.2 = icmp eq i32 %37, 0
  %sub.i.2 = mul i32 %37, 15
  %shl19.i.2 = shl i32 %div.2, 16
  %add.i.2 = add i32 %sub.i.2, %shl19.i.2
  %shr.i.2 = lshr i32 %add.i.2, 4
  %cond.i.2 = select i1 %tobool.not.i.2, i32 %shl19.i.2, i32 %shr.i.2
  %38 = ptrtoint ptr %rate.2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 %cond.i.2, ptr %rate.2, align 4
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.end.1.if.end.2_crit_edge
  %arrayidx2.3 = getelementptr i32, ptr %rx_bytes_le, i32 3
  %39 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx2.3, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %arrayidx3.3 = getelementptr i32, ptr %air_time_le, i32 3
  %42 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx3.3, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %airtime4.3 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 3, i32 1, i32 1
  %45 = ptrtoint ptr %airtime4.3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %airtime4.3, align 4
  %add.3 = add i32 %46, %44
  store i32 %add.3, ptr %airtime4.3, align 4
  %conv.3 = zext i32 %41 to i64
  %uapsd_nonagg_detect.3 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 3, i32 2
  %47 = ptrtoint ptr %uapsd_nonagg_detect.3 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %uapsd_nonagg_detect.3, align 8
  %add6.3 = add i64 %48, %conv.3
  store i64 %add6.3, ptr %uapsd_nonagg_detect.3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.3 = icmp eq i32 %43, 0
  br i1 %tobool.not.3, label %if.end.2.if.end.3_crit_edge, label %if.then.3

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.3

if.then.3:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  %rate.3 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 6, i32 3, i32 2, i32 1
  %49 = ptrtoint ptr %rate.3 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %rate.3, align 4
  %mul.3 = shl i32 %41, 3
  %div.3 = udiv i32 %mul.3, %44
  %50 = load volatile i32, ptr %rate.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i.3 = icmp eq i32 %50, 0
  %sub.i.3 = mul i32 %50, 15
  %shl19.i.3 = shl i32 %div.3, 16
  %add.i.3 = add i32 %sub.i.3, %shl19.i.3
  %shr.i.3 = lshr i32 %add.i.3, 4
  %cond.i.3 = select i1 %tobool.not.i.3, i32 %shl19.i.3, i32 %shr.i.3
  %51 = ptrtoint ptr %rate.3 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 %cond.i.3, ptr %rate.3, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %if.end.2.if.end.3_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rx_statistics(ptr noundef %mvm, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #8
  %2 = ptrtoint ptr %call.i to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  tail call void @iwl_mvm_handle_rx_statistics(ptr noundef %mvm, ptr noundef %5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_window_status_notif(ptr noundef %mvm, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i64 = tail call ptr @page_address(ptr noundef %1) #8
  %2 = ptrtoint ptr %call.i64 to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  %6 = tail call i32 @llvm.read_register.i32(metadata !77) #8
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !89
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %ra_tid = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 17
  %mpdu_rx_count = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 29
  %start_seq_num = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 21
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %rcu_read_lock.exit
  %i.075 = phi i32 [ 0, %rcu_read_lock.exit ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x i16], ptr %ra_tid, i32 0, i32 %i.075
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %arrayidx, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %13 = and i16 %12, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not = icmp eq i16 %13, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %arrayidx10 = getelementptr [16 x i16], ptr %mpdu_rx_count, i32 0, i32 %i.075
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %arrayidx10, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp12 = icmp eq i16 %15, 0
  br i1 %cmp12, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %17 = trunc i16 %12 to i8
  %conv18 = and i8 %17, 15
  %and20 = lshr i16 %12, 4
  %18 = and i16 %and20, 31
  %conv21 = zext i16 %18 to i32
  %arrayidx25 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %conv21
  %19 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %arrayidx25, align 4
  %call27 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true, label %if.end15.do.end36_crit_edge

if.end15.do.end36_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

land.lhs.true:                                    ; preds = %if.end15
  %call29 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true.do.end36_crit_edge, label %land.lhs.true31

land.lhs.true.do.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

land.lhs.true31:                                  ; preds = %land.lhs.true
  %.b63 = load i1, ptr @iwl_mvm_window_status_notif.__warned, align 1
  br i1 %.b63, label %land.lhs.true31.do.end36_crit_edge, label %if.then33

land.lhs.true31.do.end36_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

if.then33:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_window_status_notif.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1039, ptr noundef nonnull @.str.7) #8
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %land.lhs.true31.do.end36_crit_edge, %land.lhs.true.do.end36_crit_edge, %if.end15.do.end36_crit_edge
  %tobool.not.i65 = icmp eq ptr %20, null
  %cmp.i = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i65, %cmp.i
  br i1 %spec.select.i, label %do.end36.cleanup_crit_edge, label %if.end40

do.end36.cleanup_crit_edge:                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end40:                                         ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx42 = getelementptr [16 x i64], ptr %data, i32 0, i32 %i.075
  %21 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %arrayidx42, align 1
  %23 = tail call i64 @llvm.bswap.i64(i64 %22)
  %arrayidx43 = getelementptr [16 x i32], ptr %start_seq_num, i32 0, i32 %i.075
  %24 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %arrayidx43, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %conv44 = trunc i32 %26 to i16
  tail call void @ieee80211_mark_rx_ba_filtered_frames(ptr noundef nonnull %20, i8 noundef zeroext %conv18, i16 noundef zeroext %conv44, i64 noundef %23, i16 noundef zeroext %16) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.end36.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup
  %call.i66 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i66, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i69

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i69:                                ; preds = %for.end
  %call1.i67 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67)
  %tobool.not.i68 = icmp eq i32 %call1.i67, 0
  br i1 %tobool.not.i68, label %land.lhs.true.i69.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i71

land.lhs.true.i69.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i71:                               ; preds = %land.lhs.true.i69
  %.b4.i70 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i70, label %land.lhs.true2.i71.rcu_read_unlock.exit_crit_edge, label %if.then.i72

land.lhs.true2.i71.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i72:                                      ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.16) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i72, %land.lhs.true2.i71.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i69.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !91
  %27 = tail call i32 @llvm.read_register.i32(metadata !77) #8
  %and.i.i.i.i.i73 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i73 to ptr
  %preempt_count.i.i.i.i74 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i74, align 4
  %sub.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i74, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_mark_rx_ba_filtered_frames(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i64 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_add_rx_frag(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_napi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @iwl_mvm_verify_stats_len(ptr nocapture noundef readonly %mvm, ptr nocapture noundef readonly %pkt, i32 noundef %expected_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %pkt, align 1
  %2 = and i32 %1, -12648448
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  %sub.i = add nsw i32 %3, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %expected_size)
  %cmp = icmp ult i32 %sub.i, %expected_size
  br i1 %cmp, label %land.rhs, label %if.end38

land.rhs:                                         ; preds = %entry
  %.b189 = load i1, ptr @iwl_mvm_verify_stats_len.__already_done, align 1
  br i1 %.b189, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !90

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_verify_stats_len.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 788, i32 noundef 9, ptr noundef nonnull @.str.19, i32 noundef %sub.i, i32 noundef %expected_size) #8
  br label %cleanup

if.end38:                                         ; preds = %entry
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 0, i32 2
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data, align 2
  %6 = and i8 %5, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp40.not = icmp eq i8 %6, 0
  br i1 %cmp40.not, label %lor.rhs, label %if.end38.land.rhs54_crit_edge

if.end38.land.rhs54_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs54

lor.rhs:                                          ; preds = %if.end38
  %version = getelementptr inbounds %struct.iwl_statistics_ntfy_hdr, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %version, align 1
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %9 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw, align 8
  %call43 = tail call zeroext i8 @iwl_fw_lookup_notif_ver(ptr noundef %10, i8 noundef zeroext 0, i8 noundef zeroext -99, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %call43)
  %cmp45.not = icmp eq i8 %8, %call43
  br i1 %cmp45.not, label %if.end106, label %lor.rhs.land.rhs54_crit_edge

lor.rhs.land.rhs54_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs54

land.rhs54:                                       ; preds = %lor.rhs.land.rhs54_crit_edge, %if.end38.land.rhs54_crit_edge
  %.b185188 = load i1, ptr @iwl_mvm_verify_stats_len.__already_done.20, align 1
  br i1 %.b185188, label %land.rhs54.cleanup_crit_edge, label %if.then65, !prof !90

land.rhs54.cleanup_crit_edge:                     ; preds = %land.rhs54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then65:                                        ; preds = %land.rhs54
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_verify_stats_len.__already_done.20, align 1
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data, align 2
  %conv80 = zext i8 %12 to i32
  %version81 = getelementptr inbounds %struct.iwl_statistics_ntfy_hdr, ptr %data, i32 0, i32 1
  %13 = ptrtoint ptr %version81 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %version81, align 1
  %conv82 = zext i8 %14 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 797, i32 noundef 9, ptr noundef nonnull @.str.21, i32 noundef %conv80, i32 noundef %conv82) #8
  br label %cleanup

if.end106:                                        ; preds = %lor.rhs
  %size = getelementptr inbounds %struct.iwl_statistics_ntfy_hdr, ptr %data, i32 0, i32 2
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %size, align 2
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %conv108 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv108, i32 %expected_size)
  %cmp109.not = icmp eq i32 %conv108, %expected_size
  br i1 %cmp109.not, label %if.end106.cleanup_crit_edge, label %land.rhs118

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs118:                                      ; preds = %if.end106
  %.b186187 = load i1, ptr @iwl_mvm_verify_stats_len.__already_done.22, align 1
  br i1 %.b186187, label %land.rhs118.cleanup_crit_edge, label %if.then129, !prof !90

land.rhs118.cleanup_crit_edge:                    ; preds = %land.rhs118
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then129:                                       ; preds = %land.rhs118
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_verify_stats_len.__already_done.22, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 802, i32 noundef 9, ptr noundef nonnull @.str.23, i32 noundef %conv108, i32 noundef %expected_size) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then129, %land.rhs118.cleanup_crit_edge, %if.end106.cleanup_crit_edge, %if.then65, %land.rhs54.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then ], [ false, %if.then65 ], [ false, %land.rhs.cleanup_crit_edge ], [ false, %land.rhs54.cleanup_crit_edge ], [ true, %if.end106.cleanup_crit_edge ], [ false, %if.then129 ], [ false, %land.rhs118.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_stat_iterator_all_macs(ptr nocapture noundef readonly %_data, ptr nocapture noundef readnone %mac, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %id = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 4
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %1)
  %cmp = icmp ugt i16 %1, 4
  br i1 %cmp, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b71 = load i1, ptr @iwl_mvm_stat_iterator_all_macs.__already_done, align 1
  br i1 %.b71, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !90

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_stat_iterator_all_macs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 643, i32 noundef 9, ptr noundef nonnull @.str.24, i32 noundef %conv) #8
  br label %cleanup

if.end40:                                         ; preds = %entry
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp41.not = icmp eq i32 %3, 2
  br i1 %cmp41.not, label %if.end44, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  %per_mac_stats = getelementptr inbounds %struct.iwl_mvm_stat_data_all_macs, ptr %_data, i32 0, i32 2
  %4 = ptrtoint ptr %per_mac_stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %per_mac_stats, align 4
  %arrayidx = getelementptr %struct.iwl_statistics_ntfy_per_mac, ptr %5, i32 %conv
  %beacon_counter = getelementptr %struct.iwl_statistics_ntfy_per_mac, ptr %5, i32 %conv, i32 2
  %6 = ptrtoint ptr %beacon_counter to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %beacon_counter, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %beacon_stats = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 23
  %9 = ptrtoint ptr %beacon_stats to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %beacon_stats, align 4
  %beacon_average_energy = getelementptr %struct.iwl_statistics_ntfy_per_mac, ptr %5, i32 %conv, i32 3
  %10 = ptrtoint ptr %beacon_average_energy to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %beacon_average_energy, align 1
  %12 = lshr i32 %11, 24
  %13 = trunc i32 %12 to i8
  %conv45 = sub i8 0, %13
  %avg_signal = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 25
  %14 = ptrtoint ptr %avg_signal to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv45, ptr %avg_signal, align 4
  %flags = getelementptr inbounds %struct.iwl_mvm_stat_data_all_macs, ptr %_data, i32 0, i32 1
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool47.not = icmp eq i32 %17, 0
  br i1 %tobool47.not, label %if.end44.if.end52_crit_edge, label %if.then48

if.end44.if.end52_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %accu_num_beacons = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 24
  %18 = ptrtoint ptr %accu_num_beacons to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %accu_num_beacons, align 4
  %add = add i32 %19, %8
  store i32 %add, ptr %accu_num_beacons, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.end44.if.end52_crit_edge
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %arrayidx, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %sub53 = sub i32 0, %22
  tail call fastcc void @iwl_mvm_update_vif_sig(ptr noundef %vif, i32 noundef %sub53)
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.end40.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_update_vif_sig(ptr noundef %vif, i32 noundef %sig) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 8
  %cqm_rssi_thold = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 28
  %2 = ptrtoint ptr %cqm_rssi_thold to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cqm_rssi_thold, align 4
  %cqm_rssi_hyst = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 29
  %4 = ptrtoint ptr %cqm_rssi_hyst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cqm_rssi_hyst, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sig)
  %cmp = icmp eq i32 %sig, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %7, i32 noundef 16777216, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_update_vif_sig, ptr noundef nonnull @.str.25) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ave_beacon_signal = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 18
  %8 = ptrtoint ptr %ave_beacon_signal to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sig, ptr %ave_beacon_signal, align 4
  %bt_coex_min_thold = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 21
  %9 = ptrtoint ptr %bt_coex_min_thold to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bt_coex_min_thold, align 4
  %bt_coex_max_thold = getelementptr inbounds %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 14, i32 5
  %11 = ptrtoint ptr %bt_coex_max_thold to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bt_coex_max_thold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp8.not = icmp eq i32 %10, %12
  br i1 %cmp8.not, label %if.end.if.end49_crit_edge, label %if.then9

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then9:                                         ; preds = %if.end
  %last_bt_coex_event = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 22
  %13 = ptrtoint ptr %last_bt_coex_event to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last_bt_coex_event, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %sig)
  %cmp13 = icmp slt i32 %12, %sig
  br i1 %cmp13, label %land.lhs.true, label %if.then9.if.else_crit_edge

if.then9.if.else_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %10)
  %cmp16.not = icmp sle i32 %14, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp17 = icmp eq i32 %14, 0
  %or.cond = or i1 %cmp16.not, %cmp17
  br i1 %or.cond, label %land.lhs.true.if.end49.sink.split_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true.if.end49.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then9.if.else_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %sig)
  %cmp30 = icmp sgt i32 %10, %sig
  br i1 %cmp30, label %land.lhs.true31, label %if.else.if.end49_crit_edge

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

land.lhs.true31:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %12)
  %cmp34.not = icmp sge i32 %14, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp36 = icmp eq i32 %14, 0
  %or.cond150 = or i1 %cmp34.not, %cmp36
  br i1 %or.cond150, label %land.lhs.true31.if.end49.sink.split_crit_edge, label %land.lhs.true31.if.end49_crit_edge

land.lhs.true31.if.end49_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

land.lhs.true31.if.end49.sink.split_crit_edge:    ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.sink.split

if.end49.sink.split:                              ; preds = %land.lhs.true31.if.end49.sink.split_crit_edge, %land.lhs.true.if.end49.sink.split_crit_edge
  %.str.26.sink = phi ptr [ @.str.26, %land.lhs.true.if.end49.sink.split_crit_edge ], [ @.str.27, %land.lhs.true31.if.end49.sink.split_crit_edge ]
  %.sink = phi i32 [ 0, %land.lhs.true.if.end49.sink.split_crit_edge ], [ 1, %land.lhs.true31.if.end49.sink.split_crit_edge ]
  %15 = ptrtoint ptr %last_bt_coex_event to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sig, ptr %last_bt_coex_event, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %17, i32 noundef 16777216, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_update_vif_sig, ptr noundef nonnull %.str.26.sink, i32 noundef %sig) #8
  tail call void @iwl_mvm_bt_rssi_event(ptr noundef %1, ptr noundef %vif, i32 noundef %.sink) #8
  br label %if.end49

if.end49:                                         ; preds = %if.end49.sink.split, %land.lhs.true31.if.end49_crit_edge, %if.else.if.end49_crit_edge, %if.end.if.end49_crit_edge
  %driver_flags = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 10
  %18 = ptrtoint ptr %driver_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %driver_flags, align 8
  %and = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end49.cleanup_crit_edge, label %if.end51

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end51:                                         ; preds = %if.end49
  %last_cqm_event = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 20
  %20 = ptrtoint ptr %last_cqm_event to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %last_cqm_event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool53.not = icmp ne i32 %3, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sig)
  %cmp55 = icmp sgt i32 %3, %sig
  %or.cond151 = and i1 %tobool53.not, %cmp55
  br i1 %or.cond151, label %land.lhs.true56, label %if.end51.if.else70_crit_edge

if.end51.if.else70_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else70

land.lhs.true56:                                  ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp57 = icmp eq i32 %21, 0
  %sub = sub i32 %21, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sig)
  %cmp59 = icmp sgt i32 %sub, %sig
  %or.cond152 = select i1 %cmp57, i1 true, i1 %cmp59
  br i1 %or.cond152, label %if.then60, label %land.lhs.true56.if.else70_crit_edge

land.lhs.true56.if.else70_crit_edge:              ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else70

if.then60:                                        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %last_cqm_event to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sig, ptr %last_cqm_event, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %24, i32 noundef 16777216, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_update_vif_sig, ptr noundef nonnull @.str.28, i32 noundef %sig) #8
  tail call void @ieee80211_cqm_rssi_notify(ptr noundef %vif, i32 noundef 0, i32 noundef %sig, i32 noundef 3264) #8
  br label %cleanup

if.else70:                                        ; preds = %land.lhs.true56.if.else70_crit_edge, %if.end51.if.else70_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sig)
  %cmp71 = icmp slt i32 %3, %sig
  br i1 %cmp71, label %land.lhs.true72, label %if.else70.cleanup_crit_edge

if.else70.cleanup_crit_edge:                      ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true72:                                  ; preds = %if.else70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp73 = icmp eq i32 %21, 0
  %add = add i32 %21, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sig)
  %cmp75 = icmp slt i32 %add, %sig
  %or.cond153 = select i1 %cmp73, i1 true, i1 %cmp75
  br i1 %or.cond153, label %if.then76, label %land.lhs.true72.cleanup_crit_edge

land.lhs.true72.cleanup_crit_edge:                ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then76:                                        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %last_cqm_event to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sig, ptr %last_cqm_event, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %27, i32 noundef 16777216, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_update_vif_sig, ptr noundef nonnull @.str.29, i32 noundef %sig) #8
  tail call void @ieee80211_cqm_rssi_notify(ptr noundef %vif, i32 noundef 1, i32 noundef %sig, i32 noundef 3264) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %land.lhs.true72.cleanup_crit_edge, %if.else70.cleanup_crit_edge, %if.then60, %if.end49.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_bt_rssi_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_cqm_rssi_notify(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_interfaces(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !19, !21, !23, !25, !26, !28, !30, !32, !33, !35, !36, !37, !39, !41, !43, !44, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !68, !70, !72, !74, !76}
!llvm.named.register.sp = !{!77}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__func__.iwl_mvm_rx_rx_mpdu, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rx.c", i32 301, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rx.c", i32 311, i32 3}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rx.c", i32 323, i32 3}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rx.c", i32 334, i32 3}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rx.c", i32 346, i32 3}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rx.c", i32 368, i32 2}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rx.c", i32 377, i32 8}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rx.c", i32 378, i32 10}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rx.c", i32 392, i32 4}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rx.c", i32 494, i32 7}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rx.c", i32 912, i32 6}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rx.c", i32 1039, i32 9}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rx.c", i32 193, i32 4}
!30 = !{ptr @__func__.iwl_mvm_get_signal_strength, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rx.c", i32 119, i32 2}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../fw/dbg.h", i32 121, i32 3}
!39 = !{ptr @iwl_mvm_rx_handle_tcm.thresh_tpt, !40, !"thresh_tpt", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rx.c", i32 211, i32 18}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!43 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rx.c", i32 820, i32 6}
!48 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rx.c", i32 786, i32 6}
!51 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rx.c", i32 793, i32 6}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rx.c", i32 800, i32 6}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rx.c", i32 643, i32 6}
!60 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @__func__.iwl_mvm_update_vif_sig, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rx.c", i32 545, i32 3}
!63 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rx.c", i32 559, i32 4}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rx.c", i32 566, i32 4}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rx.c", i32 580, i32 3}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rx.c", i32 590, i32 3}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rx.c", i32 683, i32 6}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rx.c", i32 699, i32 6}
!76 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!77 = !{!"sp"}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{!"branch_weights", i32 1, i32 2000}
!88 = !{i8 0, i8 2}
!89 = !{i64 2149706797}
!90 = !{!"branch_weights", i32 2000, i32 1}
!91 = !{i64 2149707063}
!92 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!93 = !{i64 2153357451, i64 2153357935, i64 2153357488, i64 2153357544, i64 2153357578, i64 2153357602, i64 2153357643, i64 2153357664, i64 2153357692, i64 2153357726}
!94 = !{i64 2148441551, i64 2148441577, i64 2148441606, i64 2148441640, i64 2148441671, i64 2148441694}
!95 = !{i64 2148891975, i64 2148891980, i64 2148891993, i64 2148892037, i64 2148892071, i64 2148892092}
