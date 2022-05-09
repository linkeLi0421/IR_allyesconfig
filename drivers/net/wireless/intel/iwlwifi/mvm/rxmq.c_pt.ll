; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ieee80211_radiotap_he = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_radiotap_he_mu = type { i16, i16, [4 x i8], [4 x i8] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%struct.atomic_t = type { i32 }
%union.anon.98 = type { i32 }
%struct.iwl_mvm_baid_data = type { %struct.callback_head, i8, i8, i8, i16, i16, i32, %struct.timer_list, ptr, ptr, [52 x i8], [16 x %struct.iwl_mvm_reorder_buffer], [0 x %struct.iwl_mvm_reorder_buf_entry] }
%struct.callback_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.iwl_mvm_reorder_buffer = type { i16, i16, i16, i32, i16, i8, %struct.timer_list, i8, i8, %struct.spinlock, ptr, i32, i32, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.iwl_mvm_reorder_buf_entry = type { %struct._iwl_mvm_reorder_buf_entry, [4 x i8] }
%struct._iwl_mvm_reorder_buf_entry = type { %struct.sk_buff_head, i32 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.iwl_mvm = type <{ ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i32, i8, [3 x i8], %struct.iwl_notif_wait_data, %union.anon.136, %struct.anon.137, %struct.anon.137, %struct.list_head, %union.anon.138, %struct.work_struct, ptr, ptr, ptr, ptr, i8, i8, [2 x i8], %struct.work_struct, ptr, [13 x %struct.iwl_nvm_section], %struct.iwl_fw_runtime, [5 x %struct.mac_address], %struct.iwl_rx_phy_info, [2 x i8], [16 x ptr], i8, [3 x i8], i32, i32, ptr, ptr, i32, i32, i32, %struct.delayed_work, i32, [4 x i32], [4 x i8], i64, ptr, i8, [3 x i8], %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i8, i8, i8, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.iwl_mvm_frame_stats, %struct.spinlock, i16, [2 x i8], [3 x %struct.iwl_mvm_phy_ctxt], %struct.list_head, %struct.spinlock, [1 x i32], [16 x i8], i8, [3 x i8], [4 x ptr], i8, [3 x i8], ptr, %struct.led_classdev, ptr, %struct.wiphy_wowlan_support, i32, i32, i32, i32, %struct.ieee80211_scan_ies, ptr, i32, ptr, i32, i8, i8, i8, i8, i32, ptr, i32, %struct.wait_queue_head, %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_ci_cmd, i8, [3 x i8], i32, %struct.list_head, %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_thermal_device, %struct.iwl_mvm_cooling_device, i32, i8, i8, [2 x i8], i32, [4 x i8], %struct.iwl_mvm_tcm, i8, i8, [20 x %struct.mac_address], %struct.iwl_time_quota_cmd, [2 x i8], i32, ptr, i16, i16, i16, i16, i8, [3 x i8], i32, ptr, ptr, ptr, i8, [3 x i8], i32, i8, i8, [2 x i8], i32, %struct.anon.151, [10 x i32], [1 x %struct.ieee80211_cipher_scheme], %struct.cfg80211_ftm_responder_stats, %struct.anon.153, %struct.list_head, %struct.anon.155, [2 x i8], ptr, [32 x ptr], i8, [3 x i8], %struct.delayed_work, i8, i8, i16, [6 x i8], [2 x i8], i32, i32 }>
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
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
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%struct.iwl_rx_cmd_buffer = type { ptr, i32, i8, i32, i32 }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }
%struct.iwl_mvm_rx_phy_data = type { i32, i32, i32, i32, i32, i16 }
%struct.iwl_rx_sta_csa = type { i8, ptr }
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
%struct.iwl_rx_mpdu_desc_v3 = type <{ %union.anon.168, %union.anon.169, i32, i16, i16, i32, i8, i8, i8, i8, i32, %union.anon.170, [2 x i32] }>
%union.anon.168 = type { i32 }
%union.anon.169 = type { i32 }
%union.anon.170 = type { i64 }
%struct.iwl_rx_mpdu_desc_v1 = type <{ %union.anon.164, %union.anon.165, i32, i8, i8, i8, i8, i32, %union.anon.166 }>
%union.anon.164 = type { i32 }
%union.anon.165 = type { i32 }
%union.anon.166 = type { i64 }
%struct.iwl_rx_mpdu_desc = type <{ i16, i8, i8, i8, i16, i8, i16, %union.anon.162, i32, i32, %union.anon.163 }>
%union.anon.162 = type { i16 }
%union.anon.163 = type { %struct.iwl_rx_mpdu_desc_v3 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
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
%struct.ieee80211_radiotap_lsig = type { i16, i16 }
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
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
%struct.iwl_mvm_rxq_dup_data = type { [9 x i16], [9 x i8], [101 x i8] }
%struct.ieee80211_vendor_radiotap = type { i32, i8, [3 x i8], i8, i8, i16, [0 x i8] }
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
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.129, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.129 = type { i32, i16 }
%struct.anon.172 = type { [6 x i8], i16 }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.iwl_mvm_key_pn = type { %struct.callback_head, [120 x i8], [0 x %struct.anon.161] }
%struct.anon.161 = type { [8 x [6 x i8]], [80 x i8] }
%struct.iwl_frame_release = type { i8, i8, i16 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@iwl_mvm_reorder_timer_expired.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_reorder_timer_expired = private unnamed_addr constant [30 x i8] c"iwl_mvm_reorder_timer_expired\00", align 1
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Releasing expired frames for sta %u, sn %d\0A\00", [52 x i8] zeroinitializer }, align 32
@iwl_mvm_rx_queue_notif.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid notification size %d (%d)\00", [62 x i8] zeroinitializer }, align 32
@iwl_mvm_rx_queue_notif.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Received expired RX queue sync message\0A\00", [56 x i8] zeroinitializer }, align 32
@iwl_mvm_rx_queue_notif.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalid empty notification size %d\00", [61 x i8] zeroinitializer }, align 32
@iwl_mvm_rx_queue_notif.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"invalid delba notification size %d (%d)\00", [56 x i8] zeroinitializer }, align 32
@iwl_mvm_rx_queue_notif.__already_done.10 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"invalid nssn sync notification size %d (%d)\00", [52 x i8] zeroinitializer }, align 32
@iwl_mvm_rx_queue_notif.__already_done.12 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid identifier %d\00", [42 x i8] zeroinitializer }, align 32
@iwl_mvm_rx_queue_notif.__already_done.14 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"queue sync: queue %d responded a second time!\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_rx_mpdu_mq = private unnamed_addr constant [19 x i8] c"iwl_mvm_rx_mpdu_mq\00", align 1
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Bad REPLY_RX_MPDU_CMD size\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Got old format rate, converting. New rate: 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"FW lied about packet len\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"alloc_skb failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Bad CRC or FIFO: 0x%08X.\0A\00", [38 x i8] zeroinitializer }, align 32
@iwl_mvm_rx_mpdu_mq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_rx_mpdu_mq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iwl_mvm_rx_mpdu_mq.__warned.21 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid rate flags 0x%x, band %d,\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_rx_monitor_no_data = private unnamed_addr constant [27 x i8] c"iwl_mvm_rx_monitor_no_data\00", align 1
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Got an old rate format. Old rate: 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c" Rate after conversion to the new format: 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@iwl_mvm_rx_bar_frame_release.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_rx_bar_frame_release.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.iwl_mvm_rx_bar_frame_release = private unnamed_addr constant [29 x i8] c"iwl_mvm_rx_bar_frame_release\00", align 1
@.str.25 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Got valid BAID %d but not allocated, invalid BAR release!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"baid 0x%x is mapped to sta:%d tid:%d, but BAR release received for sta:%d tid:%d\0A\00", [46 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@iwl_mvm_del_ba.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid BAID: %x\0A\00", [46 x i8] zeroinitializer }, align 32
@iwl_mvm_del_ba.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iwl_mvm_del_ba.__already_done.31 = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_del_ba.__warned.32 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iwl_mvm_del_ba.__already_done.33 = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_rx_he.known = internal constant { %struct.ieee80211_radiotap_he, [20 x i8] } { %struct.ieee80211_radiotap_he { i16 -8190, i16 4608, i16 0, i16 0, i16 0, i16 0 }, [20 x i8] zeroinitializer }, align 32
@iwl_mvm_rx_he.mu_known = internal constant { %struct.ieee80211_radiotap_he_mu, [20 x i8] } { %struct.ieee80211_radiotap_he_mu { i16 20672, i16 1028, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, [20 x i8] zeroinitializer }, align 32
@iwl_mvm_nl80211_band_from_rx_msdu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unsupported phy band (%u)\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_get_signal_strength = private unnamed_addr constant [28 x i8] c"iwl_mvm_get_signal_strength\00", align 1
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"energy In A %d B %d, and max %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unhandled alg: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@iwl_mvm_rx_mgmt_prot.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iwl_mvm_rx_mgmt_prot.__warned.37 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iwl_mvm_rx_mgmt_prot.__warned.38 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.39 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Trigger %d occurred while no-collect window.\0A\00", [50 x i8] zeroinitializer }, align 32
@iwl_mvm_agg_rx_received.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.iwl_mvm_agg_rx_received = private unnamed_addr constant [24 x i8] c"iwl_mvm_agg_rx_received\00", align 1
@.str.40 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"Got valid BAID but no baid allocated, bypass the re-ordering buffer. Baid %d reorder 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@rfc1042_header = external dso_local local_unnamed_addr constant [6 x i8], align 1
@.str.41 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@iwl_mvm_reorder.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.42 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Got valid BAID without a valid station assigned\0A\00", [47 x i8] zeroinitializer }, align 32
@iwl_mvm_reorder.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.iwl_mvm_reorder = private unnamed_addr constant [16 x i8] c"iwl_mvm_reorder\00", align 1
@.str.43 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"baid 0x%x is mapped to sta:%d tid:%d, but was received for sta:%d tid:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"reached %d old SN frames from %pM on queue %d, stopping BA session on TID %d\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_check_pn = private unnamed_addr constant [17 x i8] c"iwl_mvm_check_pn\00", align 1
@.str.45 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"expected hw-decrypted unicast frame for station\0A\00", [47 x i8] zeroinitializer }, align 32
@iwl_mvm_check_pn.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.iwl_mvm_release_frames_from_notif = private unnamed_addr constant [34 x i8] c"iwl_mvm_release_frames_from_notif\00", align 1
@.str.46 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Frame release notification for BAID %u, NSSN %d\0A\00", [47 x i8] zeroinitializer }, align 32
@iwl_mvm_release_frames_from_notif.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_release_frames_from_notif.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"BAID %d not found in map\0A\00", [38 x i8] zeroinitializer }, align 32
@iwl_mvm_release_frames_from_notif.__warned.48 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iwl_mvm_release_frames_from_notif.__already_done.49 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 2048, i64 4096, i64 6144]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.52 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 512, i64 768]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 16, i64 20480, i64 32768]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 16, i64 20480, i64 32768]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 9]
@__sancov_gen_cov_switch_values.57 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 10]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 7, i64 9]
@__sancov_gen_cov_switch_values.60 = internal global [7 x i64] [i64 5, i64 32, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.61 = internal global [71 x i64] [i64 69, i64 7, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8388608]
@__sancov_gen_cov_switch_values.63 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.64 = internal global [8 x i64] [i64 6, i64 16, i64 2048, i64 2054, i64 33024, i64 34525, i64 34958, i64 35085]
@__sancov_gen_cov_switch_values.65 = internal global [5 x i64] [i64 3, i64 32, i64 2048, i64 4096, i64 6144]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 512, i64 768]
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 710, i32 9 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 714, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 831, i32 6 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 839, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 845, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 848, i32 7 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 855, i32 7 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 863, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 867, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1691, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1721, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1729, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1747, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1790, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1999, i32 7 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 2058, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 2061, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 2228, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 2234, i32 6 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 695, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 723, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 743, i32 6 }
@___asan_gen_.139 = private unnamed_addr constant [6 x i8] c"known\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1468, i32 44 }
@___asan_gen_.142 = private unnamed_addr constant [9 x i8] c"mu_known\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1476, i32 47 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1639, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 284, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 465, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant [54 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/../fw/dbg.h\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 121, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1153, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1160, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 967, i32 6 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 990, i32 6 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 914, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 72, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 780, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.179 = private constant [49 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 791, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @iwl_mvm_rx_he.known, ptr @iwl_mvm_rx_he.mu_known, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_rx_he.known to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_rx_he.mu_known to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_reorder_timer_expired(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -16
  %add.ptr.i = getelementptr i8, ptr %t, i32 -144
  %queue.i = getelementptr i8, ptr %t, i32 -8
  %0 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queue.i, align 8
  %mul.neg.i = mul i32 %1, -128
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.neg.i
  %entries_per_queue = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %add.ptr1.i, i32 0, i32 5
  %2 = ptrtoint ptr %entries_per_queue to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %entries_per_queue, align 2
  %conv = zext i16 %3 to i32
  %mul = mul i32 %1, %conv
  %arrayidx = getelementptr %struct.iwl_mvm_baid_data, ptr %add.ptr1.i, i32 0, i32 12, i32 %mul
  %lock = getelementptr i8, ptr %t, i32 52
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %num_stored = getelementptr i8, ptr %t, i32 -14
  %4 = ptrtoint ptr %num_stored to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_stored, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %removed = getelementptr i8, ptr %t, i32 48
  %6 = ptrtoint ptr %removed to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %removed, align 64, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %for.cond.preheader, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %buf_size = getelementptr i8, ptr %t, i32 -12
  %8 = ptrtoint ptr %buf_size to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %buf_size, align 4
  %conv5 = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp119.not = icmp eq i16 %9, 0
  br i1 %cmp119.not, label %for.cond.preheader.if.else_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.else_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr, align 128
  %conv7 = zext i16 %11 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cont.0.off0124 = phi i1 [ false, %for.body.lr.ph ], [ %cmp.i, %for.inc.for.body_crit_edge ]
  %expired.0.off0123 = phi i1 [ false, %for.body.lr.ph ], [ %expired.1.off0, %for.inc.for.body_crit_edge ]
  %sn.0122 = phi i16 [ 0, %for.body.lr.ph ], [ %sn.1, %for.inc.for.body_crit_edge ]
  %i.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.0120, %conv7
  %rem.urem = urem i32 %add, %conv5
  %arrayidx11 = getelementptr %struct.iwl_mvm_reorder_buf_entry, ptr %arrayidx, i32 %rem.urem
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx11, align 4
  %cmp.i = icmp ne ptr %13, %arrayidx11
  br i1 %cmp.i, label %if.end15, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end15:                                         ; preds = %for.body
  br i1 %cont.0.off0124, label %if.end15.if.end24_crit_edge, label %land.lhs.true

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end15
  %reorder_time = getelementptr inbounds %struct._iwl_mvm_reorder_buf_entry, ptr %arrayidx11, i32 0, i32 1
  %14 = ptrtoint ptr %reorder_time to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reorder_time, align 8
  %add20 = add i32 %15, 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add20, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp21 = icmp slt i32 %sub, 0
  br i1 %cmp21, label %land.lhs.true.if.end24_crit_edge, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.end24:                                         ; preds = %land.lhs.true.if.end24_crit_edge, %if.end15.if.end24_crit_edge
  %17 = trunc i32 %i.0120 to i16
  %conv27 = add i16 %17, 1
  %add.i = add i16 %conv27, %11
  %and.i = and i16 %add.i, 4095
  br label %for.inc

for.inc:                                          ; preds = %if.end24, %for.body.for.inc_crit_edge
  %sn.1 = phi i16 [ %and.i, %if.end24 ], [ %sn.0122, %for.body.for.inc_crit_edge ]
  %expired.1.off0 = phi i1 [ true, %if.end24 ], [ %expired.0.off0123, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0120, 1
  %exitcond.not = icmp eq i32 %inc, %conv5
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %sn.0.lcssa = phi i16 [ %sn.1, %for.inc.for.end_crit_edge ], [ %sn.0122, %land.lhs.true.for.end_crit_edge ]
  %expired.0.off0.lcssa = phi i1 [ %expired.1.off0, %for.inc.for.end_crit_edge ], [ %expired.0.off0123, %land.lhs.true.for.end_crit_edge ]
  br i1 %expired.0.off0.lcssa, label %if.then30, label %for.end.if.else_crit_edge

for.end.if.else_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then30:                                        ; preds = %for.end
  %sta_id31 = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %add.ptr1.i, i32 0, i32 1
  %18 = ptrtoint ptr %sta_id31 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sta_id31, align 8
  %20 = tail call i32 @llvm.read_register.i32(metadata !135) #11
  %and.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %23, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !146
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.then30.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then30.rcu_read_lock.exit_crit_edge:           ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then30
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then30.rcu_read_lock.exit_crit_edge
  %mvm = getelementptr i8, ptr %t, i32 96
  %24 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mvm, align 16
  %idxprom33 = zext i8 %19 to i32
  %arrayidx34 = getelementptr %struct.iwl_mvm, ptr %25, i32 0, i32 44, i32 %idxprom33
  %26 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %arrayidx34, align 4
  %call36 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %land.lhs.true38, label %rcu_read_lock.exit.do.end46_crit_edge

rcu_read_lock.exit.do.end46_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end46

land.lhs.true38:                                  ; preds = %rcu_read_lock.exit
  %call39 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true38.do.end46_crit_edge, label %land.lhs.true41

land.lhs.true38.do.end46_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end46

land.lhs.true41:                                  ; preds = %land.lhs.true38
  %.b109 = load i1, ptr @iwl_mvm_reorder_timer_expired.__warned, align 1
  br i1 %.b109, label %land.lhs.true41.do.end46_crit_edge, label %if.then43

land.lhs.true41.do.end46_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end46

if.then43:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_reorder_timer_expired.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 710, ptr noundef nonnull @.str.1) #11
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %land.lhs.true41.do.end46_crit_edge, %land.lhs.true38.do.end46_crit_edge, %rcu_read_lock.exit.do.end46_crit_edge
  %28 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mvm, align 16
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %conv55 = zext i16 %sn.0.lcssa to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %31, i32 noundef 67108864, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_reorder_timer_expired, ptr noundef nonnull @.str.2, i32 noundef %idxprom33, i32 noundef %conv55) #11
  %32 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mvm, align 16
  %vif = getelementptr inbounds %struct.ieee80211_sta, ptr %27, i32 17, i32 28, i32 10
  %34 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vif, align 8
  %tid = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %add.ptr1.i, i32 0, i32 2
  %36 = ptrtoint ptr %tid to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %tid, align 1
  %conv59 = zext i8 %37 to i16
  tail call void @iwl_mvm_event_frame_timeout_callback(ptr noundef %33, ptr noundef %35, ptr noundef %27, i16 noundef zeroext %conv59) #11
  %38 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mvm, align 16
  tail call fastcc void @iwl_mvm_release_frames(ptr noundef %39, ptr noundef %27, ptr noundef null, ptr noundef %add.ptr1.i, ptr noundef %add.ptr, i16 noundef zeroext %sn.0.lcssa, i32 noundef 1)
  %call.i110 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i110, label %do.end46.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i113

do.end46.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i113:                               ; preds = %do.end46
  %call1.i111 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i111)
  %tobool.not.i112 = icmp eq i32 %call1.i111, 0
  br i1 %tobool.not.i112, label %land.lhs.true.i113.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i115

land.lhs.true.i113.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i113
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i115:                              ; preds = %land.lhs.true.i113
  %.b4.i114 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i114, label %land.lhs.true2.i115.rcu_read_unlock.exit_crit_edge, label %if.then.i116

land.lhs.true2.i115.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i115
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i116:                                     ; preds = %land.lhs.true2.i115
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i116, %land.lhs.true2.i115.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i113.rcu_read_unlock.exit_crit_edge, %do.end46.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !147
  %40 = tail call i32 @llvm.read_register.i32(metadata !135) #11
  %and.i.i.i.i.i117 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i117 to ptr
  %preempt_count.i.i.i.i118 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i118, align 4
  %sub.i.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i118, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cleanup

if.else:                                          ; preds = %for.end.if.else_crit_edge, %for.cond.preheader.if.else_crit_edge
  %index.1133 = phi i32 [ %rem.urem, %for.end.if.else_crit_edge ], [ 0, %for.cond.preheader.if.else_crit_edge ]
  %reorder_time64 = getelementptr %struct.iwl_mvm_reorder_buf_entry, ptr %arrayidx, i32 %index.1133, i32 0, i32 1
  %44 = ptrtoint ptr %reorder_time64 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %reorder_time64, align 8
  %add66 = add i32 %45, 11
  %call67 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add66) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %rcu_read_unlock.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_event_frame_timeout_callback(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_release_frames(ptr nocapture noundef readonly %mvm, ptr noundef %sta, ptr noundef %napi, ptr noundef %baid_data, ptr noundef %reorder_buf, i16 noundef zeroext %nssn, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, ptr %reorder_buf, i32 0, i32 3
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queue, align 8
  %entries_per_queue = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %baid_data, i32 0, i32 5
  %2 = ptrtoint ptr %entries_per_queue to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %entries_per_queue, align 2
  %conv = zext i16 %3 to i32
  %mul = mul i32 %1, %conv
  %arrayidx = getelementptr %struct.iwl_mvm_baid_data, ptr %baid_data, i32 0, i32 12, i32 %mul
  %4 = ptrtoint ptr %reorder_buf to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %reorder_buf, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, ptr %reorder_buf, i32 0, i32 9, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !148

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 606, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  %.pre = zext i16 %nssn to i32
  %.pre160 = zext i16 %5 to i32
  %.pre161 = sub nsw i32 %.pre, %.pre160
  %.pre162 = and i32 %.pre161, 4095
  br i1 %tobool26.not, label %if.end30, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %.pre162)
  %cmp.i = icmp ugt i32 %.pre162, 2048
  br i1 %cmp.i, label %land.lhs.true.set_timer_crit_edge, label %if.end30.thread

land.lhs.true.set_timer_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_timer

if.end30.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %buf_size166 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, ptr %reorder_buf, i32 0, i32 2
  br label %while.cond.preheader

if.end30:                                         ; preds = %if.end
  %buf_size = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, ptr %reorder_buf, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %.pre162)
  %cmp.i.i = icmp ugt i32 %.pre162, 2048
  br i1 %cmp.i.i, label %land.rhs.i, label %if.end30.while.cond.preheader_crit_edge

if.end30.while.cond.preheader_crit_edge:          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.preheader

land.rhs.i:                                       ; preds = %if.end30
  %7 = ptrtoint ptr %buf_size to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %buf_size, align 4
  %sub.i128 = sub i16 %5, %8
  %conv1.i7.i = zext i16 %sub.i128 to i32
  %sub.i8.i = sub nsw i32 %.pre, %conv1.i7.i
  %and.i9.i = and i32 %sub.i8.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %and.i9.i)
  %cmp.i10.i = icmp ult i32 %and.i9.i, 2049
  br i1 %cmp.i10.i, label %land.rhs.i.set_timer_crit_edge, label %land.rhs.i.while.cond.preheader_crit_edge

land.rhs.i.while.cond.preheader_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.preheader

land.rhs.i.set_timer_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_timer

while.cond.preheader:                             ; preds = %land.rhs.i.while.cond.preheader_crit_edge, %if.end30.while.cond.preheader_crit_edge, %if.end30.thread
  %buf_size170 = phi ptr [ %buf_size166, %if.end30.thread ], [ %buf_size, %land.rhs.i.while.cond.preheader_crit_edge ], [ %buf_size, %if.end30.while.cond.preheader_crit_edge ]
  %sub.i.i131151 = sub nsw i32 %.pre160, %.pre
  %and.i.i132152 = and i32 %sub.i.i131151, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %and.i.i132152)
  %cmp.i.i133153 = icmp ugt i32 %and.i.i132152, 2048
  br i1 %cmp.i.i133153, label %iwl_mvm_is_sn_less.exit140.lr.ph, label %while.cond.preheader.while.end57_crit_edge

while.cond.preheader.while.end57_crit_edge:       ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end57

iwl_mvm_is_sn_less.exit140.lr.ph:                 ; preds = %while.cond.preheader
  %num_stored = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, ptr %reorder_buf, i32 0, i32 1
  br label %iwl_mvm_is_sn_less.exit140

while.cond.loopexit:                              ; preds = %while.body55.while.cond.loopexit_crit_edge, %while.body.while.cond.loopexit_crit_edge
  %conv.i.i129 = zext i16 %and.i.i141 to i32
  %sub.i.i131 = sub nsw i32 %conv.i.i129, %.pre
  %and.i.i132 = and i32 %sub.i.i131, 4095
  %cmp.i.i133 = icmp ugt i32 %and.i.i132, 2048
  br i1 %cmp.i.i133, label %while.cond.loopexit.iwl_mvm_is_sn_less.exit140_crit_edge, label %while.cond.loopexit.while.end57_crit_edge

while.cond.loopexit.while.end57_crit_edge:        ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end57

while.cond.loopexit.iwl_mvm_is_sn_less.exit140_crit_edge: ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_is_sn_less.exit140

iwl_mvm_is_sn_less.exit140:                       ; preds = %while.cond.loopexit.iwl_mvm_is_sn_less.exit140_crit_edge, %iwl_mvm_is_sn_less.exit140.lr.ph
  %conv.i.i129155 = phi i32 [ %.pre160, %iwl_mvm_is_sn_less.exit140.lr.ph ], [ %conv.i.i129, %while.cond.loopexit.iwl_mvm_is_sn_less.exit140_crit_edge ]
  %ssn.0154 = phi i16 [ %5, %iwl_mvm_is_sn_less.exit140.lr.ph ], [ %and.i.i141, %while.cond.loopexit.iwl_mvm_is_sn_less.exit140_crit_edge ]
  %9 = ptrtoint ptr %buf_size170 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %buf_size170, align 4
  %sub.i134 = sub i16 %nssn, %10
  %conv1.i7.i135 = zext i16 %sub.i134 to i32
  %sub.i8.i136 = sub nsw i32 %conv.i.i129155, %conv1.i7.i135
  %and.i9.i137 = and i32 %sub.i8.i136, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %and.i9.i137)
  %cmp.i10.i138 = icmp ult i32 %and.i9.i137, 2049
  br i1 %cmp.i10.i138, label %while.body, label %iwl_mvm_is_sn_less.exit140.while.end57_crit_edge

iwl_mvm_is_sn_less.exit140.while.end57_crit_edge: ; preds = %iwl_mvm_is_sn_less.exit140
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end57

while.body:                                       ; preds = %iwl_mvm_is_sn_less.exit140
  %11 = urem i16 %ssn.0154, %10
  %rem = zext i16 %11 to i32
  %arrayidx39 = getelementptr %struct.iwl_mvm_reorder_buf_entry, ptr %arrayidx, i32 %rem
  %add.i.i = add i16 %ssn.0154, 1
  %and.i.i141 = and i16 %add.i.i, 4095
  %12 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx39, align 4
  %cmp.i.i142147 = icmp eq ptr %13, %arrayidx39
  %tobool.not.i146148 = icmp eq ptr %13, null
  %tobool.not.i149 = or i1 %cmp.i.i142147, %tobool.not.i146148
  br i1 %tobool.not.i149, label %while.body.while.cond.loopexit_crit_edge, label %while.body55.lr.ph

while.body.while.cond.loopexit_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.loopexit

while.body55.lr.ph:                               ; preds = %while.body
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %arrayidx39, i32 0, i32 1
  br label %while.body55

while.body55:                                     ; preds = %while.body55.while.body55_crit_edge, %while.body55.lr.ph
  %14 = phi ptr [ %13, %while.body55.lr.ph ], [ %28, %while.body55.while.body55_crit_edge ]
  %15 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i143 = add i32 %16, -1
  store volatile i32 %sub.i.i143, ptr %qlen.i.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.44, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %14, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.44, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %20, ptr %prev17.i.i, align 4
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %18, ptr %20, align 8
  %23 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %queue, align 8
  tail call fastcc void @iwl_mvm_pass_packet_to_mac80211(ptr noundef %mvm, ptr noundef %napi, ptr noundef nonnull %14, i32 noundef %24, ptr noundef %sta)
  %25 = ptrtoint ptr %num_stored to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %num_stored, align 2
  %dec = add i16 %26, -1
  store i16 %dec, ptr %num_stored, align 2
  %27 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx39, align 4
  %cmp.i.i142 = icmp eq ptr %28, %arrayidx39
  %tobool.not.i146 = icmp eq ptr %28, null
  %tobool.not.i = or i1 %cmp.i.i142, %tobool.not.i146
  br i1 %tobool.not.i, label %while.body55.while.cond.loopexit_crit_edge, label %while.body55.while.body55_crit_edge

while.body55.while.body55_crit_edge:              ; preds = %while.body55
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body55

while.body55.while.cond.loopexit_crit_edge:       ; preds = %while.body55
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.loopexit

while.end57:                                      ; preds = %iwl_mvm_is_sn_less.exit140.while.end57_crit_edge, %while.cond.loopexit.while.end57_crit_edge, %while.cond.preheader.while.end57_crit_edge
  %29 = ptrtoint ptr %reorder_buf to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %nssn, ptr %reorder_buf, align 128
  br label %set_timer

set_timer:                                        ; preds = %while.end57, %land.rhs.i.set_timer_crit_edge, %land.lhs.true.set_timer_crit_edge
  %num_stored59 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, ptr %reorder_buf, i32 0, i32 1
  %30 = ptrtoint ptr %num_stored59 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %num_stored59, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool61.not = icmp eq i16 %31, 0
  br i1 %tobool61.not, label %set_timer.if.else_crit_edge, label %land.lhs.true62

set_timer.if.else_crit_edge:                      ; preds = %set_timer
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true62:                                  ; preds = %set_timer
  %removed = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, ptr %reorder_buf, i32 0, i32 7
  %32 = ptrtoint ptr %removed to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %removed, align 64, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool63.not = icmp eq i8 %33, 0
  br i1 %tobool63.not, label %if.then64, label %land.lhs.true62.if.else_crit_edge

land.lhs.true62.if.else_crit_edge:                ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then64:                                        ; preds = %land.lhs.true62
  %34 = ptrtoint ptr %reorder_buf to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %reorder_buf, align 128
  %buf_size68 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, ptr %reorder_buf, i32 0, i32 2
  %36 = ptrtoint ptr %buf_size68 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %buf_size68, align 4
  %38 = urem i16 %35, %37
  %idxprom156 = zext i16 %38 to i32
  %arrayidx73157 = getelementptr %struct.iwl_mvm_reorder_buf_entry, ptr %arrayidx, i32 %idxprom156
  %39 = ptrtoint ptr %arrayidx73157 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx73157, align 4
  %cmp.i144.not158 = icmp eq ptr %40, %arrayidx73157
  br i1 %cmp.i144.not158, label %while.body78.lr.ph, label %if.then64.while.end84_crit_edge

if.then64.while.end84_crit_edge:                  ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end84

while.body78.lr.ph:                               ; preds = %if.then64
  %conv81 = zext i16 %37 to i32
  br label %while.body78

while.body78:                                     ; preds = %while.body78.while.body78_crit_edge, %while.body78.lr.ph
  %idxprom159 = phi i32 [ %idxprom156, %while.body78.lr.ph ], [ %rem82, %while.body78.while.body78_crit_edge ]
  %add = add nuw nsw i32 %idxprom159, 1
  %rem82 = urem i32 %add, %conv81
  %arrayidx73 = getelementptr %struct.iwl_mvm_reorder_buf_entry, ptr %arrayidx, i32 %rem82
  %41 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx73, align 4
  %cmp.i144.not = icmp eq ptr %42, %arrayidx73
  br i1 %cmp.i144.not, label %while.body78.while.body78_crit_edge, label %while.body78.while.end84_crit_edge

while.body78.while.end84_crit_edge:               ; preds = %while.body78
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end84

while.body78.while.body78_crit_edge:              ; preds = %while.body78
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body78

while.end84:                                      ; preds = %while.body78.while.end84_crit_edge, %if.then64.while.end84_crit_edge
  %43 = phi i32 [ %idxprom156, %if.then64.while.end84_crit_edge ], [ %rem82, %while.body78.while.end84_crit_edge ]
  %reorder_timer = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, ptr %reorder_buf, i32 0, i32 6
  %reorder_time = getelementptr %struct.iwl_mvm_reorder_buf_entry, ptr %arrayidx, i32 %43, i32 0, i32 1
  %44 = ptrtoint ptr %reorder_time to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %reorder_time, align 8
  %add89 = add i32 %45, 11
  %call90 = tail call i32 @mod_timer(ptr noundef %reorder_timer, i32 noundef %add89) #11
  br label %if.end93

if.else:                                          ; preds = %land.lhs.true62.if.else_crit_edge, %set_timer.if.else_crit_edge
  %reorder_timer91 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, ptr %reorder_buf, i32 0, i32 6
  %call92 = tail call i32 @del_timer(ptr noundef %reorder_timer91) #11
  br label %if.end93

if.end93:                                         ; preds = %if.else, %while.end84
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rx_queue_notif(ptr noundef %mvm, ptr noundef %napi, ptr nocapture noundef readonly %rxb, i32 noundef %queue) local_unnamed_addr #0 align 64 {
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
  %payload = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i)
  %cmp = icmp ult i32 %sub.i, 12
  br i1 %cmp, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b448 = load i1, ptr @iwl_mvm_rx_queue_notif.__already_done, align 1
  br i1 %.b448, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !149

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_rx_queue_notif.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 833, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef %sub.i, i32 noundef 12) #11
  br label %cleanup

if.end39:                                         ; preds = %entry
  %sub = add nsw i32 %9, -16
  %sync = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1, i32 2
  %10 = ptrtoint ptr %sync to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %sync, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool40.not = icmp eq i16 %11, 0
  br i1 %tobool40.not, label %if.end39.if.end93_crit_edge, label %land.lhs.true

if.end39.if.end93_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93

land.lhs.true:                                    ; preds = %if.end39
  %queue_sync_cookie = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 13
  %12 = ptrtoint ptr %queue_sync_cookie to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %queue_sync_cookie, align 8
  %cookie = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2
  %14 = ptrtoint ptr %cookie to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %cookie, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp41.not = icmp eq i32 %13, %15
  br i1 %cmp41.not, label %land.lhs.true.if.end93_crit_edge, label %land.end51

land.lhs.true.if.end93_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93

land.end51:                                       ; preds = %land.lhs.true
  %.b436447 = load i1, ptr @iwl_mvm_rx_queue_notif.__already_done.4, align 1
  br i1 %.b436447, label %land.end51.cleanup_crit_edge, label %if.then58, !prof !149

land.end51.cleanup_crit_edge:                     ; preds = %land.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then58:                                        ; preds = %land.end51
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_rx_queue_notif.__already_done.4, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 839, i32 noundef 9, ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.end93:                                         ; preds = %land.lhs.true.if.end93_crit_edge, %if.end39.if.end93_crit_edge
  %16 = ptrtoint ptr %payload to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %payload, align 1
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i16 %17, label %land.end281 [
    i16 0, label %sw.bb
    i16 1, label %sw.bb150
    i16 2, label %sw.bb212
  ]

sw.bb:                                            ; preds = %if.end93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool96.not = icmp eq i32 %sub, 0
  br i1 %tobool96.not, label %sw.bb.sw.epilog_crit_edge, label %land.rhs104

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.rhs104:                                      ; preds = %sw.bb
  %.b437445 = load i1, ptr @iwl_mvm_rx_queue_notif.__already_done.6, align 1
  br i1 %.b437445, label %land.rhs104.sw.epilog_crit_edge, label %if.then115, !prof !149

land.rhs104.sw.epilog_crit_edge:                  ; preds = %land.rhs104
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then115:                                       ; preds = %land.rhs104
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_rx_queue_notif.__already_done.6, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 845, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %sub) #11
  br label %sw.epilog

sw.bb150:                                         ; preds = %if.end93
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp152.not = icmp eq i32 %sub, 4
  br i1 %cmp152.not, label %if.end209.critedge, label %land.rhs161

land.rhs161:                                      ; preds = %sw.bb150
  %.b438444 = load i1, ptr @iwl_mvm_rx_queue_notif.__already_done.8, align 1
  br i1 %.b438444, label %land.rhs161.sw.epilog_crit_edge, label %if.then172, !prof !149

land.rhs161.sw.epilog_crit_edge:                  ; preds = %land.rhs161
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then172:                                       ; preds = %land.rhs161
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_rx_queue_notif.__already_done.8, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 850, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %sub, i32 noundef 4) #11
  br label %sw.epilog

if.end209.critedge:                               ; preds = %sw.bb150
  %data210 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2, i32 1
  %19 = ptrtoint ptr %data210 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %data210, align 1
  %conv2.i = and i32 %20, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %conv2.i)
  %cmp.i = icmp ugt i32 %conv2.i, 31
  br i1 %cmp.i, label %land.rhs.i, label %if.end42.i

land.rhs.i:                                       ; preds = %if.end209.critedge
  %.b230.i = load i1, ptr @iwl_mvm_del_ba.__already_done, align 1
  br i1 %.b230.i, label %land.rhs.i.sw.epilog_crit_edge, label %if.then.i, !prof !149

land.rhs.i.sw.epilog_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_del_ba.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 743, i32 noundef 9, ptr noundef nonnull @.str.30, i32 noundef %conv2.i) #11
  br label %sw.epilog

if.end42.i:                                       ; preds = %if.end209.critedge
  %21 = tail call i32 @llvm.read_register.i32(metadata !135) #11
  %and.i.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !146
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %if.end42.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end42.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end42.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end42.i.rcu_read_lock.exit.i_crit_edge
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 167, i32 %conv2.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %arrayidx.i, align 4
  %call.i453 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i453)
  %tobool48.not.i = icmp eq i32 %call.i453, 0
  br i1 %tobool48.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end56.i_crit_edge

rcu_read_lock.exit.i.do.end56.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end56.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call49.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %land.lhs.true.i.do.end56.i_crit_edge, label %land.lhs.true51.i

land.lhs.true.i.do.end56.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end56.i

land.lhs.true51.i:                                ; preds = %land.lhs.true.i
  %.b222229.i = load i1, ptr @iwl_mvm_del_ba.__warned, align 1
  br i1 %.b222229.i, label %land.lhs.true51.i.do.end56.i_crit_edge, label %if.then53.i

land.lhs.true51.i.do.end56.i_crit_edge:           ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end56.i

if.then53.i:                                      ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_del_ba.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 748, ptr noundef nonnull @.str.1) #11
  br label %do.end56.i

do.end56.i:                                       ; preds = %if.then53.i, %land.lhs.true51.i.do.end56.i_crit_edge, %land.lhs.true.i.do.end56.i_crit_edge, %rcu_read_lock.exit.i.do.end56.i_crit_edge
  %tobool59.not.i = icmp eq ptr %26, null
  br i1 %tobool59.not.i, label %land.rhs69.i, label %if.end117.critedge.i

land.rhs69.i:                                     ; preds = %do.end56.i
  %.b223228.i = load i1, ptr @iwl_mvm_del_ba.__already_done.31, align 1
  br i1 %.b223228.i, label %land.rhs69.i.out.i_crit_edge, label %if.then80.i, !prof !149

land.rhs69.i.out.i_crit_edge:                     ; preds = %land.rhs69.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then80.i:                                      ; preds = %land.rhs69.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_del_ba.__already_done.31, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 749, i32 noundef 9, ptr noundef null) #11
  br label %out.i

if.end117.critedge.i:                             ; preds = %do.end56.i
  %sta_id.i = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %sta_id.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %sta_id.i, align 8
  %idxprom122.i = zext i8 %28 to i32
  %arrayidx123.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %idxprom122.i
  %29 = ptrtoint ptr %arrayidx123.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %arrayidx123.i, align 4
  %call125.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125.i)
  %tobool126.not.i = icmp eq i32 %call125.i, 0
  br i1 %tobool126.not.i, label %land.lhs.true127.i, label %if.end117.critedge.i.do.end135.i_crit_edge

if.end117.critedge.i.do.end135.i_crit_edge:       ; preds = %if.end117.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end135.i

land.lhs.true127.i:                               ; preds = %if.end117.critedge.i
  %call128.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128.i)
  %tobool129.not.i = icmp eq i32 %call128.i, 0
  br i1 %tobool129.not.i, label %land.lhs.true127.i.do.end135.i_crit_edge, label %land.lhs.true130.i

land.lhs.true127.i.do.end135.i_crit_edge:         ; preds = %land.lhs.true127.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end135.i

land.lhs.true130.i:                               ; preds = %land.lhs.true127.i
  %.b224227.i = load i1, ptr @iwl_mvm_del_ba.__warned.32, align 1
  br i1 %.b224227.i, label %land.lhs.true130.i.do.end135.i_crit_edge, label %if.then132.i

land.lhs.true130.i.do.end135.i_crit_edge:         ; preds = %land.lhs.true130.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end135.i

if.then132.i:                                     ; preds = %land.lhs.true130.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_del_ba.__warned.32, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 752, ptr noundef nonnull @.str.1) #11
  br label %do.end135.i

do.end135.i:                                      ; preds = %if.then132.i, %land.lhs.true130.i.do.end135.i_crit_edge, %land.lhs.true127.i.do.end135.i_crit_edge, %if.end117.critedge.i.do.end135.i_crit_edge
  %tobool.not.i235.i = icmp eq ptr %30, null
  %cmp.i.i = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i235.i, %cmp.i.i
  br i1 %spec.select.i.i, label %land.rhs146.i, label %if.end194.critedge.i

land.rhs146.i:                                    ; preds = %do.end135.i
  %.b225226.i = load i1, ptr @iwl_mvm_del_ba.__already_done.33, align 1
  br i1 %.b225226.i, label %land.rhs146.i.out.i_crit_edge, label %if.then157.i, !prof !149

land.rhs146.i.out.i_crit_edge:                    ; preds = %land.rhs146.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then157.i:                                     ; preds = %land.rhs146.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_del_ba.__already_done.33, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 753, i32 noundef 9, ptr noundef null) #11
  br label %out.i

if.end194.critedge.i:                             ; preds = %do.end135.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx196.i = getelementptr %struct.iwl_mvm_baid_data, ptr %26, i32 0, i32 11, i32 %queue
  %lock.i = getelementptr %struct.iwl_mvm_baid_data, ptr %26, i32 0, i32 11, i32 %queue, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #11
  %31 = ptrtoint ptr %arrayidx196.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx196.i, align 128
  %buf_size.i = getelementptr %struct.iwl_mvm_baid_data, ptr %26, i32 0, i32 11, i32 %queue, i32 2
  %33 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %buf_size.i, align 4
  %add.i.i = add i16 %34, %32
  %and.i.i = and i16 %add.i.i, 4095
  tail call fastcc void @iwl_mvm_release_frames(ptr noundef %mvm, ptr noundef nonnull %30, ptr noundef null, ptr noundef nonnull %26, ptr noundef %arrayidx196.i, i16 noundef zeroext %and.i.i, i32 noundef 0) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #11
  %reorder_timer.i = getelementptr %struct.iwl_mvm_baid_data, ptr %26, i32 0, i32 11, i32 %queue, i32 6
  %call199.i = tail call i32 @del_timer_sync(ptr noundef %reorder_timer.i) #11
  br label %out.i

out.i:                                            ; preds = %if.end194.critedge.i, %if.then157.i, %land.rhs146.i.out.i_crit_edge, %if.then80.i, %land.rhs69.i.out.i_crit_edge
  %call.i236.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i236.i, label %out.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i239.i

out.i.rcu_read_unlock.exit.i_crit_edge:           ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true.i239.i:                             ; preds = %out.i
  %call1.i237.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i237.i)
  %tobool.not.i238.i = icmp eq i32 %call1.i237.i, 0
  br i1 %tobool.not.i238.i, label %land.lhs.true.i239.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i241.i

land.lhs.true.i239.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i239.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i241.i:                            ; preds = %land.lhs.true.i239.i
  %.b4.i240.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i240.i, label %land.lhs.true2.i241.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i242.i

land.lhs.true2.i241.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i241.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

if.then.i242.i:                                   ; preds = %land.lhs.true2.i241.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #11
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i242.i, %land.lhs.true2.i241.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i239.i.rcu_read_unlock.exit.i_crit_edge, %out.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !147
  %35 = tail call i32 @llvm.read_register.i32(metadata !135) #11
  %and.i.i.i.i.i243.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i243.i to ptr
  %preempt_count.i.i.i.i244.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i244.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i244.i, align 4
  %sub.i.i.i.i = add i32 %38, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i244.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %sw.epilog

sw.bb212:                                         ; preds = %if.end93
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %cmp214.not = icmp eq i32 %sub, 8
  br i1 %cmp214.not, label %if.end271.critedge, label %land.rhs223

land.rhs223:                                      ; preds = %sw.bb212
  %.b439443 = load i1, ptr @iwl_mvm_rx_queue_notif.__already_done.10, align 1
  br i1 %.b439443, label %land.rhs223.sw.epilog_crit_edge, label %if.then234, !prof !149

land.rhs223.sw.epilog_crit_edge:                  ; preds = %land.rhs223
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then234:                                       ; preds = %land.rhs223
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_rx_queue_notif.__already_done.10, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 857, i32 noundef 9, ptr noundef nonnull @.str.11, i32 noundef %sub, i32 noundef 8) #11
  br label %sw.epilog

if.end271.critedge:                               ; preds = %sw.bb212
  call void @__sanitizer_cov_trace_pc() #13
  %data272 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2, i32 1
  %39 = ptrtoint ptr %data272 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %data272, align 1
  %conv.i = trunc i32 %40 to i8
  %nssn.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 3
  %41 = ptrtoint ptr %nssn.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %nssn.i, align 1
  %conv1.i = trunc i32 %42 to i16
  tail call fastcc void @iwl_mvm_release_frames_from_notif(ptr noundef %mvm, ptr noundef %napi, i8 noundef zeroext %conv.i, i16 noundef zeroext %conv1.i, i32 noundef %queue, i32 noundef 2) #11
  br label %sw.epilog

land.end281:                                      ; preds = %if.end93
  %.b440446 = load i1, ptr @iwl_mvm_rx_queue_notif.__already_done.12, align 1
  br i1 %.b440446, label %land.end281.sw.epilog_crit_edge, label %if.then288, !prof !149

land.end281.sw.epilog_crit_edge:                  ; preds = %land.end281
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then288:                                       ; preds = %land.end281
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_rx_queue_notif.__already_done.12, align 1
  %conv303 = zext i16 %17 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 863, i32 noundef 9, ptr noundef nonnull @.str.13, i32 noundef %conv303) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then288, %land.end281.sw.epilog_crit_edge, %if.end271.critedge, %if.then234, %land.rhs223.sw.epilog_crit_edge, %rcu_read_unlock.exit.i, %if.then.i, %land.rhs.i.sw.epilog_crit_edge, %if.then172, %land.rhs161.sw.epilog_crit_edge, %if.then115, %land.rhs104.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %43 = ptrtoint ptr %sync to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %sync, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool326.not = icmp eq i16 %44, 0
  br i1 %tobool326.not, label %sw.epilog.cleanup_crit_edge, label %if.then327

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then327:                                       ; preds = %sw.epilog
  %queue_sync_state = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 14
  %call329 = tail call i32 @_test_and_clear_bit(i32 noundef %queue, ptr noundef %queue_sync_state) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call329)
  %tobool330.not = icmp eq i32 %call329, 0
  br i1 %tobool330.not, label %land.rhs340, label %if.then327.if.end378_crit_edge

if.then327.if.end378_crit_edge:                   ; preds = %if.then327
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end378

land.rhs340:                                      ; preds = %if.then327
  %.b441442 = load i1, ptr @iwl_mvm_rx_queue_notif.__already_done.14, align 1
  br i1 %.b441442, label %land.rhs340.if.end378_crit_edge, label %if.then351, !prof !149

land.rhs340.if.end378_crit_edge:                  ; preds = %land.rhs340
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end378

if.then351:                                       ; preds = %land.rhs340
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_rx_queue_notif.__already_done.14, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 869, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %queue) #11
  br label %if.end378

if.end378:                                        ; preds = %if.then351, %land.rhs340.if.end378_crit_edge, %if.then327.if.end378_crit_edge
  %45 = ptrtoint ptr %queue_sync_state to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %queue_sync_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp391 = icmp eq i32 %46, 0
  br i1 %cmp391, label %if.then393, label %if.end378.cleanup_crit_edge

if.end378.cleanup_crit_edge:                      ; preds = %if.end378
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then393:                                       ; preds = %if.end378
  call void @__sanitizer_cov_trace_pc() #13
  %rx_sync_waitq = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 117
  tail call void @__wake_up(ptr noundef %rx_sync_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then393, %if.end378.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then58, %land.end51.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rx_mpdu_mq(ptr noundef %mvm, ptr noundef %napi, ptr nocapture noundef %rxb, i32 noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  %phy_data = alloca %struct.iwl_mvm_rx_phy_data, align 4
  %rx_sta_csa = alloca %struct.iwl_rx_sta_csa, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i946 = tail call ptr @page_address(ptr noundef %1) #11
  %2 = ptrtoint ptr %call.i946 to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %5, align 1
  %8 = and i32 %7, -12648448
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #11
  %sub.i = add nsw i32 %9, -4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %phy_data) #11
  %10 = call ptr @memset(ptr %phy_data, i32 0, i32 24)
  %status = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %status, align 4
  %13 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup693_crit_edge, !prof !149

entry.cleanup693_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup693

if.end:                                           ; preds = %entry
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %14 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trans, align 4
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %19)
  %cmp = icmp ugt i32 %19, 18
  %. = select i1 %cmp, i32 64, i32 48
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %.)
  %cmp7 = icmp ult i32 %sub.i, %.
  br i1 %cmp7, label %do.end, label %if.end18, !prof !148

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %21, i32 noundef 8192, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_mpdu_mq, ptr noundef nonnull @.str.16) #11
  br label %cleanup693

if.end18:                                         ; preds = %if.end
  %22 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 3, i32 1
  br i1 %cmp, label %if.then23, label %if.else29

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %rate_n_flags24 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 5, i32 1
  %23 = ptrtoint ptr %rate_n_flags24 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %rate_n_flags24, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %channel25 = getelementptr inbounds %struct.iwl_rx_mpdu_desc_v3, ptr %22, i32 0, i32 8
  %gp2_on_air_rise26 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 6, i32 1
  %26 = ptrtoint ptr %gp2_on_air_rise26 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %gp2_on_air_rise26, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %energy_a27 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 6
  %energy_b28 = getelementptr inbounds %struct.iwl_rx_mpdu_desc_v3, ptr %22, i32 0, i32 7
  %29 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 7
  %phy_data1 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 7, i32 1
  %30 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 4
  br label %if.end41

if.else29:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %rate_n_flags30 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 4, i32 1
  %31 = ptrtoint ptr %rate_n_flags30 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %rate_n_flags30, align 1
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %channel31 = getelementptr inbounds %struct.iwl_rx_mpdu_desc_v1, ptr %22, i32 0, i32 5
  %gp2_on_air_rise32 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 5, i32 1
  %34 = ptrtoint ptr %gp2_on_air_rise32 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %gp2_on_air_rise32, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %energy_a33 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 5
  %energy_b34 = getelementptr inbounds %struct.iwl_rx_mpdu_desc_v1, ptr %22, i32 0, i32 4
  %37 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 6
  %phy_data137 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 6, i32 1
  %38 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 4
  br label %if.end41

if.end41:                                         ; preds = %if.else29, %if.then23
  %.sink1093.in = phi ptr [ %29, %if.then23 ], [ %37, %if.else29 ]
  %.sink1092.in = phi ptr [ %phy_data1, %if.then23 ], [ %phy_data137, %if.else29 ]
  %.sink1091.in = phi ptr [ %30, %if.then23 ], [ %22, %if.else29 ]
  %.sink.in = phi ptr [ %22, %if.then23 ], [ %38, %if.else29 ]
  %energy_b.0.in = phi ptr [ %energy_b28, %if.then23 ], [ %energy_b34, %if.else29 ]
  %energy_a.0.in = phi ptr [ %energy_a27, %if.then23 ], [ %energy_a33, %if.else29 ]
  %channel.0.in = phi ptr [ %channel25, %if.then23 ], [ %channel31, %if.else29 ]
  %gp2_on_air_rise.0 = phi i32 [ %28, %if.then23 ], [ %36, %if.else29 ]
  %rate_n_flags.0 = phi i32 [ %25, %if.then23 ], [ %33, %if.else29 ]
  %39 = ptrtoint ptr %channel.0.in to i32
  call void @__asan_load1_noabort(i32 %39)
  %channel.0 = load i8, ptr %channel.0.in, align 1
  %40 = ptrtoint ptr %energy_a.0.in to i32
  call void @__asan_load1_noabort(i32 %40)
  %energy_a.0 = load i8, ptr %energy_a.0.in, align 1
  %41 = ptrtoint ptr %energy_b.0.in to i32
  call void @__asan_load1_noabort(i32 %41)
  %energy_b.0 = load i8, ptr %energy_b.0.in, align 1
  %42 = ptrtoint ptr %.sink.in to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %.sink = load i32, ptr %.sink.in, align 1
  %43 = ptrtoint ptr %.sink1091.in to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %.sink1091 = load i32, ptr %.sink1091.in, align 1
  %44 = ptrtoint ptr %.sink1092.in to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %.sink1092 = load i32, ptr %.sink1092.in, align 1
  %45 = ptrtoint ptr %.sink1093.in to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %.sink1093 = load i32, ptr %.sink1093.in, align 1
  %46 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, ptr %phy_data, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %.sink1093, ptr %46, align 4
  %48 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, ptr %phy_data, i32 0, i32 2
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %.sink1092, ptr %48, align 4
  %50 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, ptr %phy_data, i32 0, i32 3
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %.sink1091, ptr %50, align 4
  %52 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, ptr %phy_data, i32 0, i32 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %.sink, ptr %52, align 4
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %54 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fw, align 8
  %call42 = tail call zeroext i8 @iwl_fw_lookup_notif_ver(ptr noundef %55, i8 noundef zeroext 0, i8 noundef zeroext -63, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %call42)
  %cmp43 = icmp ult i8 %call42, 4
  br i1 %cmp43, label %if.then45, label %if.end41.if.end54_crit_edge

if.end41.if.end54_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %call46 = tail call i32 @iwl_new_rate_from_v1(i32 noundef %rate_n_flags.0) #11
  %56 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %57, i32 noundef 8192, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_mpdu_mq, ptr noundef nonnull @.str.17, i32 noundef %call46) #11
  br label %if.end54

if.end54:                                         ; preds = %if.then45, %if.end41.if.end54_crit_edge
  %rate_n_flags.1 = phi i32 [ %call46, %if.then45 ], [ %rate_n_flags.0, %if.end41.if.end54_crit_edge ]
  %and = and i32 %rate_n_flags.1, 1792
  %58 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %data, align 1
  %60 = tail call i16 @llvm.bswap.i16(i16 %59)
  %conv55 = zext i16 %60 to i32
  %add = add nuw nsw i32 %., %conv55
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i)
  %cmp56 = icmp ugt i32 %add, %sub.i
  br i1 %cmp56, label %do.end68, label %if.end72, !prof !148

do.end68:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %62, i32 noundef 8192, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_mpdu_mq, ptr noundef nonnull @.str.18) #11
  br label %cleanup693

if.end72:                                         ; preds = %if.end54
  %phy_info73 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1, i32 1
  %63 = ptrtoint ptr %phy_info73 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %phy_info73, align 1
  %65 = tail call i16 @llvm.bswap.i16(i16 %64)
  %66 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, ptr %data, i32 0, i32 7
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %66, align 1
  %d4 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, ptr %phy_data, i32 0, i32 5
  %69 = ptrtoint ptr %d4 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %d4, align 4
  %conv74 = zext i16 %65 to i32
  %and75 = and i32 %conv74, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end72.if.end80_crit_edge, label %if.then77

if.end72.if.end80_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

if.then77:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %48, align 4
  %72 = lshr i32 %71, 4
  %div4.i1086 = and i32 %72, 15
  %73 = ptrtoint ptr %phy_data to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %div4.i1086, ptr %phy_data, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %if.end72.if.end80_crit_edge
  %add.ptr = getelementptr i8, ptr %data, i32 %.
  %call.i947 = tail call ptr @__alloc_skb(i32 noundef 128, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool84.not = icmp eq ptr %call.i947, null
  br i1 %tobool84.not, label %do.end89, label %if.end93

do.end89:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %75, i32 noundef 0, ptr noundef nonnull @.str.19) #11
  br label %cleanup693

if.end93:                                         ; preds = %if.end80
  %mac_flags2 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, ptr %data, i32 0, i32 2
  %76 = ptrtoint ptr %mac_flags2 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %mac_flags2, align 1
  %78 = and i8 %77, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool96.not = icmp eq i8 %78, 0
  br i1 %tobool96.not, label %if.end93.if.end98_crit_edge, label %if.then97

if.end93.if.end98_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98

if.then97:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 19
  %79 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %80, i32 2
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 16
  %81 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %82, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %if.end93.if.end98_crit_edge
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3
  %and100 = and i32 %rate_n_flags.1, 14336
  %83 = zext i32 %and100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %and100, label %if.end98.sw.epilog_crit_edge [
    i32 6144, label %sw.bb106
    i32 2048, label %if.end98.sw.epilog.sink.split_crit_edge
    i32 4096, label %sw.bb101
  ]

if.end98.sw.epilog.sink.split_crit_edge:          ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

if.end98.sw.epilog_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb101:                                         ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.bb106:                                         ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb106, %sw.bb101, %if.end98.sw.epilog.sink.split_crit_edge
  %.sink1094 = phi i16 [ 10240, %sw.bb106 ], [ 8192, %sw.bb101 ], [ 6144, %if.end98.sw.epilog.sink.split_crit_edge ]
  %bw = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 31
  %84 = ptrtoint ptr %bw to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %bf.load108 = load i16, ptr %bw, align 1
  %bf.clear109 = and i16 %bf.load108, -14337
  %bf.set110 = or i16 %bf.clear109, %.sink1094
  store i16 %bf.set110, ptr %bw, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end98.sw.epilog_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and)
  %cmp111 = icmp eq i32 %and, 1024
  br i1 %cmp111, label %if.then113, label %sw.epilog.if.end114_crit_edge

sw.epilog.if.end114_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

if.then113:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @iwl_mvm_rx_he(ptr noundef %mvm, ptr noundef nonnull %call.i947, ptr noundef nonnull %phy_data, i32 noundef %rate_n_flags.1, i16 noundef zeroext %65, i32 noundef %queue)
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %sw.epilog.if.end114_crit_edge
  %85 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %phy_data, align 4
  %.off.i = add i32 %86, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 8
  br i1 %switch.i, label %sw.bb.i, label %if.end114.iwl_mvm_decode_lsig.exit_crit_edge

if.end114.iwl_mvm_decode_lsig.exit_crit_edge:     ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_decode_lsig.exit

sw.bb.i:                                          ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i948 = tail call ptr @skb_put(ptr noundef nonnull %call.i947, i32 noundef 4) #11
  %87 = ptrtoint ptr %call1.i948 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 512, ptr %call1.i948, align 2
  %88 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %48, align 4
  %90 = and i32 %89, 65295
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #11
  %92 = lshr exact i32 %91, 12
  %conv8.i.i = trunc i32 %92 to i16
  %93 = tail call i16 @llvm.bswap.i16(i16 %conv8.i.i) #11
  %data2.i = getelementptr inbounds %struct.ieee80211_radiotap_lsig, ptr %call1.i948, i32 0, i32 1
  %94 = ptrtoint ptr %data2.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %data2.i, align 2
  %flag.i = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 24
  %95 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %flag.i, align 8
  %or.i = or i32 %96, 268435456
  store i32 %or.i, ptr %flag.i, align 8
  br label %iwl_mvm_decode_lsig.exit

iwl_mvm_decode_lsig.exit:                         ; preds = %sw.bb.i, %if.end114.iwl_mvm_decode_lsig.exit_crit_edge
  %status115 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2, i32 1
  %97 = ptrtoint ptr %status115 to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %status115, align 1
  %99 = and i32 %98, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %99)
  %.not = icmp eq i32 %99, 50331648
  br i1 %.not, label %iwl_mvm_decode_lsig.exit.if.end130_crit_edge, label %do.end125

iwl_mvm_decode_lsig.exit.if.end130_crit_edge:     ; preds = %iwl_mvm_decode_lsig.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130

do.end125:                                        ; preds = %iwl_mvm_decode_lsig.exit
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mvm, align 8
  %102 = tail call i32 @llvm.bswap.i32(i32 %98)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %101, i32 noundef 16777216, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_mpdu_mq, ptr noundef nonnull @.str.20, i32 noundef %102) #11
  %flag = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 24
  %103 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flag, align 8
  %or = or i32 %104, 32
  store i32 %or, ptr %flag, align 8
  br label %if.end130

if.end130:                                        ; preds = %do.end125, %iwl_mvm_decode_lsig.exit.if.end130_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp131 = icmp eq i32 %and, 0
  %cmp131.not = xor i1 %cmp131, true
  %and134 = and i32 %conv74, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  %or.cond936 = select i1 %cmp131.not, i1 true, i1 %tobool135.not
  br i1 %or.cond936, label %if.end130.if.end140_crit_edge, label %if.then136

if.end130.if.end140_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end140

if.then136:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #13
  %enc_flags = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 30
  %105 = ptrtoint ptr %enc_flags to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %enc_flags, align 2
  %107 = or i8 %106, 1
  store i8 %107, ptr %enc_flags, align 2
  br label %if.end140

if.end140:                                        ; preds = %if.then136, %if.end130.if.end140_crit_edge
  br i1 %tobool76.not, label %if.then152, label %if.end140.if.end163_crit_edge, !prof !149

if.end140.if.end163_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end163

if.then152:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #13
  %108 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %trans, align 4
  %trans_cfg154 = getelementptr inbounds %struct.iwl_trans, ptr %109, i32 0, i32 3
  %110 = ptrtoint ptr %trans_cfg154 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %trans_cfg154, align 4
  %device_family155 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %device_family155 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %device_family155, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %113)
  %cmp156 = icmp ugt i32 %113, 18
  %.1099 = select i1 %cmp156, i32 7, i32 6
  %114 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 %.1099
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_loadN_noabort(i32 %115, i32 8)
  %116 = load i64, ptr %114, align 1
  %117 = tail call i64 @llvm.bswap.i64(i64 %116)
  %118 = ptrtoint ptr %cb.i to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %117, ptr %cb.i, align 8
  %flag161 = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 24
  %119 = ptrtoint ptr %flag161 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %flag161, align 8
  %or162 = or i32 %120, 4
  store i32 %or162, ptr %flag161, align 8
  br label %if.end163

if.end163:                                        ; preds = %if.then152, %if.end140.if.end163_crit_edge
  %device_timestamp = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 16
  %121 = ptrtoint ptr %device_timestamp to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %gp2_on_air_rise.0, ptr %device_timestamp, align 8
  %122 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %123, i32 0, i32 5, i32 7, i32 1
  %124 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %126 = and i32 %125, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool.i.i.not = icmp eq i32 %126, 0
  br i1 %tobool.i.i.not, label %if.else171, label %if.then165

if.then165:                                       ; preds = %if.end163
  %mac_phy_idx = getelementptr inbounds %struct.iwl_rx_mpdu_desc, ptr %data, i32 0, i32 5
  %127 = ptrtoint ptr %mac_phy_idx to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %mac_phy_idx, align 1
  %129 = lshr i8 %128, 6
  %conv.i = zext i8 %129 to i32
  %trunc = trunc i8 %129 to i2
  %130 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %130, ptr @__sancov_gen_cov_switch_values.51)
  switch i2 %trunc, label %land.end.i [
    i2 1, label %if.then165.if.end177_crit_edge
    i2 0, label %sw.bb1.i
    i2 -2, label %sw.bb2.i
  ]

if.then165.if.end177_crit_edge:                   ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end177

sw.bb1.i:                                         ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end177

sw.bb2.i:                                         ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end177

land.end.i:                                       ; preds = %if.then165
  %.b40.i = load i1, ptr @iwl_mvm_nl80211_band_from_rx_msdu.__already_done, align 1
  br i1 %.b40.i, label %land.end.i.if.end177_crit_edge, label %if.then.i949, !prof !149

land.end.i.if.end177_crit_edge:                   ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end177

if.then.i949:                                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_nl80211_band_from_rx_msdu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1639, i32 noundef 9, ptr noundef nonnull @.str.34, i32 noundef %conv.i) #11
  br label %if.end177

if.else171:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %channel.0)
  %cmp173 = icmp ugt i8 %channel.0, 14
  %conv175 = zext i1 %cmp173 to i8
  br label %if.end177

if.end177:                                        ; preds = %if.else171, %if.then.i949, %land.end.i.if.end177_crit_edge, %sw.bb2.i, %sw.bb1.i, %if.then165.if.end177_crit_edge
  %conv175.sink = phi i8 [ %conv175, %if.else171 ], [ 3, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %if.then165.if.end177_crit_edge ], [ 1, %if.then.i949 ], [ 1, %land.end.i.if.end177_crit_edge ]
  %band176 = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 36
  %131 = ptrtoint ptr %band176 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv175.sink, ptr %band176, align 4
  %conv178 = zext i8 %channel.0 to i32
  %band179 = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 36
  %conv180 = zext i8 %conv175.sink to i32
  %call.i950 = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv178, i32 noundef %conv180) #11
  %div.i = udiv i32 %call.i950, 1000
  %conv182 = trunc i32 %div.i to i16
  %freq = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 28
  %132 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %132)
  %bf.load183 = load i16, ptr %freq, align 4
  %bf.shl = shl i16 %conv182, 3
  %bf.clear184 = and i16 %bf.load183, 7
  %bf.set185 = or i16 %bf.shl, %bf.clear184
  store i16 %bf.set185, ptr %freq, align 4
  %conv186 = zext i8 %energy_a.0 to i32
  %conv187 = zext i8 %energy_b.0 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %energy_a.0)
  %tobool.not.i951 = icmp eq i8 %energy_a.0, 0
  %sub.i952 = sub nsw i32 0, %conv186
  %spec.select.i = select i1 %tobool.not.i951, i32 -128, i32 %sub.i952
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %energy_b.0)
  %tobool1.not.i = icmp eq i8 %energy_b.0, 0
  %sub3.i = sub nsw i32 0, %conv187
  %cond6.i = select i1 %tobool1.not.i, i32 -128, i32 %sub3.i
  %133 = tail call i32 @llvm.smax.i32(i32 %spec.select.i, i32 %cond6.i) #11
  %134 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %135, i32 noundef 536870912, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_get_signal_strength, ptr noundef nonnull @.str.35, i32 noundef %spec.select.i, i32 noundef %cond6.i, i32 noundef %133) #11
  %conv.i953 = trunc i32 %133 to i8
  %signal.i = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 38
  %136 = ptrtoint ptr %signal.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %conv.i953, ptr %signal.i, align 2
  %and.i954 = lshr i32 %rate_n_flags.1, 14
  %137 = trunc i32 %and.i954 to i8
  %conv14.i = and i8 %137, 3
  %chains.i = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 39
  %138 = ptrtoint ptr %chains.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv14.i, ptr %chains.i, align 1
  %conv15.i = trunc i32 %spec.select.i to i8
  %chain_signal.i = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 40
  %139 = ptrtoint ptr %chain_signal.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv15.i, ptr %chain_signal.i, align 8
  %conv16.i = trunc i32 %cond6.i to i8
  %arrayidx18.i = getelementptr %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 41
  %140 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv16.i, ptr %arrayidx18.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %queue)
  %tobool188.not = icmp eq i32 %queue, 0
  %tobool188.not.not = xor i1 %tobool188.not, true
  %and191 = and i32 %conv74, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191)
  %tobool192.not = icmp eq i32 %and191, 0
  %or.cond937 = select i1 %tobool188.not.not, i1 true, i1 %tobool192.not
  br i1 %or.cond937, label %if.end177.if.end218_crit_edge, label %if.then193

if.end177.if.end218_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end218

if.then193:                                       ; preds = %if.end177
  %and195 = lshr i32 %conv74, 6
  %and195.lobit = and i32 %and195, 1
  %flag197 = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 24
  %141 = ptrtoint ptr %flag197 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %flag197, align 8
  %or198 = or i32 %142, 512
  store i32 %or198, ptr %flag197, align 8
  %ampdu_toggle = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 21
  %143 = ptrtoint ptr %ampdu_toggle to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %ampdu_toggle, align 4, !range !145
  %145 = zext i8 %144 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and195.lobit, i32 %145)
  %cmp203.not = icmp eq i32 %and195.lobit, %145
  br i1 %cmp203.not, label %if.then193.if.end216_crit_edge, label %if.then205

if.then193.if.end216_crit_edge:                   ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end216

if.then205:                                       ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #13
  %146 = trunc i32 %and195.lobit to i8
  %ampdu_ref = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 20
  %147 = ptrtoint ptr %ampdu_ref to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %ampdu_ref, align 8
  %inc = add i32 %148, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %cmp207 = icmp eq i32 %inc, 0
  %spec.select = select i1 %cmp207, i32 1, i32 %inc
  %149 = ptrtoint ptr %ampdu_ref to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %spec.select, ptr %ampdu_ref, align 8
  %150 = ptrtoint ptr %ampdu_toggle to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %146, ptr %ampdu_toggle, align 4
  br label %if.end216

if.end216:                                        ; preds = %if.then205, %if.then193.if.end216_crit_edge
  %ampdu_ref217 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 20
  %151 = ptrtoint ptr %ampdu_ref217 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %ampdu_ref217, align 8
  %ampdu_reference = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 20
  %153 = ptrtoint ptr %ampdu_reference to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %ampdu_reference, align 4
  br label %if.end218

if.end218:                                        ; preds = %if.end216, %if.end177.if.end218_crit_edge
  %monitor_on = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 171
  %154 = ptrtoint ptr %monitor_on to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %monitor_on, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool219.not = icmp eq i8 %155, 0
  br i1 %tobool219.not, label %if.end218.if.end227_crit_edge, label %if.then226, !prof !149

if.end218.if.end227_crit_edge:                    ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end227

if.then226:                                       ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @iwl_mvm_add_rtap_sniffer_config(ptr noundef %mvm, ptr noundef nonnull %call.i947)
  br label %if.end227

if.end227:                                        ; preds = %if.then226, %if.end218.if.end227_crit_edge
  %156 = tail call i32 @llvm.read_register.i32(metadata !135) #11
  %and.i.i.i.i.i = and i32 %156, -16384
  %157 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %159, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !146
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.end227.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end227.rcu_read_lock.exit_crit_edge:           ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end227
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end227.rcu_read_lock.exit_crit_edge
  %160 = ptrtoint ptr %status115 to i32
  call void @__asan_loadN_noabort(i32 %160, i32 4)
  %161 = load i32, ptr %status115, align 1
  %and229 = and i32 %161, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and229)
  %tobool230.not = icmp eq i32 %and229, 0
  br i1 %tobool230.not, label %if.else311, label %if.then231

if.then231:                                       ; preds = %rcu_read_lock.exit
  %and.i944 = and i32 %161, 31
  %162 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %fw, align 8
  %num_stations = getelementptr inbounds %struct.iwl_fw, ptr %163, i32 0, i32 5, i32 6
  %164 = ptrtoint ptr %num_stations to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %num_stations, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i944, i32 %165)
  %cmp237.not = icmp ult i32 %and.i944, %165
  br i1 %cmp237.not, label %if.then289.critedge, label %land.rhs

land.rhs:                                         ; preds = %if.then231
  %.b933 = load i1, ptr @iwl_mvm_rx_mpdu_mq.__already_done, align 1
  br i1 %.b933, label %land.rhs.if.end319_crit_edge, label %if.then255, !prof !149

land.rhs.if.end319_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end319

if.then255:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_rx_mpdu_mq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1854, i32 noundef 9, ptr noundef null) #11
  br label %if.end319

if.then289.critedge:                              ; preds = %if.then231
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %and.i944
  %166 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load volatile ptr, ptr %arrayidx, align 4
  %call295 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call295)
  %tobool296.not = icmp eq i32 %call295, 0
  br i1 %tobool296.not, label %land.lhs.true297, label %if.then289.critedge.do.end305_crit_edge

if.then289.critedge.do.end305_crit_edge:          ; preds = %if.then289.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end305

land.lhs.true297:                                 ; preds = %if.then289.critedge
  %call298 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call298)
  %tobool299.not = icmp eq i32 %call298, 0
  br i1 %tobool299.not, label %land.lhs.true297.do.end305_crit_edge, label %land.lhs.true300

land.lhs.true297.do.end305_crit_edge:             ; preds = %land.lhs.true297
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end305

land.lhs.true300:                                 ; preds = %land.lhs.true297
  %.b929932 = load i1, ptr @iwl_mvm_rx_mpdu_mq.__warned, align 1
  br i1 %.b929932, label %land.lhs.true300.do.end305_crit_edge, label %if.then302

land.lhs.true300.do.end305_crit_edge:             ; preds = %land.lhs.true300
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end305

if.then302:                                       ; preds = %land.lhs.true300
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_rx_mpdu_mq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1855, ptr noundef nonnull @.str.1) #11
  br label %do.end305

do.end305:                                        ; preds = %if.then302, %land.lhs.true300.do.end305_crit_edge, %land.lhs.true297.do.end305_crit_edge, %if.then289.critedge.do.end305_crit_edge
  %cmp.i = icmp ugt ptr %167, inttoptr (i32 -4096 to ptr)
  %spec.select939 = select i1 %cmp.i, ptr null, ptr %167
  br label %if.end319

if.else311:                                       ; preds = %rcu_read_lock.exit
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr, i32 0, i32 3
  %168 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %addr2, align 4
  %170 = and i32 %169, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool.i.not = icmp eq i32 %170, 0
  br i1 %tobool.i.not, label %if.then314, label %if.else311.if.end319_crit_edge

if.else311.if.end319_crit_edge:                   ; preds = %if.else311
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end319

if.then314:                                       ; preds = %if.else311
  call void @__sanitizer_cov_trace_pc() #13
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %171 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %hw, align 4
  %call317 = tail call ptr @ieee80211_find_sta_by_ifaddr(ptr noundef %172, ptr noundef %addr2, ptr noundef null) #11
  br label %if.end319

if.end319:                                        ; preds = %if.then314, %if.else311.if.end319_crit_edge, %do.end305, %if.then255, %land.rhs.if.end319_crit_edge
  %sta.1 = phi ptr [ null, %if.else311.if.end319_crit_edge ], [ %call317, %if.then314 ], [ null, %if.then255 ], [ %spec.select939, %do.end305 ], [ null, %land.rhs.if.end319_crit_edge ]
  %173 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %173, i32 4)
  %174 = load i32, ptr %5, align 1
  %175 = tail call i32 @llvm.bswap.i32(i32 %174)
  %176 = ptrtoint ptr %status115 to i32
  call void @__asan_loadN_noabort(i32 %176, i32 4)
  %177 = load i32, ptr %status115, align 1
  %178 = tail call i32 @llvm.bswap.i32(i32 %177) #11
  %179 = and i16 %65, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %179)
  %tobool.not.i955 = icmp ne i16 %179, 0
  %and2.i = and i32 %178, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 1792, i32 %and2.i)
  %cmp.i956 = icmp eq i32 %and2.i, 1792
  %or.cond.i = select i1 %tobool.not.i955, i1 %cmp.i956, i1 false
  br i1 %or.cond.i, label %land.lhs.true4.i, label %if.end319.if.end.i_crit_edge

if.end319.if.end.i_crit_edge:                     ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true4.i:                                 ; preds = %if.end319
  %180 = ptrtoint ptr %monitor_on to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %monitor_on, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool5.not.i = icmp eq i8 %181, 0
  br i1 %tobool5.not.i, label %land.lhs.true4.i.if.then322_crit_edge, label %land.lhs.true4.i.if.end.i_crit_edge

land.lhs.true4.i.if.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true4.i.if.then322_crit_edge:            ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then322

if.end.i:                                         ; preds = %land.lhs.true4.i.if.end.i_crit_edge, %if.end319.if.end.i_crit_edge
  %182 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %add.ptr, align 2
  %184 = and i16 %183, 3136
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %184)
  %185 = icmp eq i16 %184, 0
  br i1 %185, label %iwl_mvm_rx_crypto.exit, label %if.end14.i, !prof !150

if.end14.i:                                       ; preds = %if.end.i
  %186 = and i16 %183, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %186)
  %cmp.i4.i = icmp eq i16 %186, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %cmp18.i = icmp eq i32 %and2.i, 0
  %or.cond6.i = select i1 %cmp.i4.i, i1 true, i1 %cmp18.i
  br i1 %or.cond6.i, label %if.end14.i.if.end323_crit_edge, label %if.end21.i

if.end14.i.if.end323_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end323

if.end21.i:                                       ; preds = %if.end14.i
  %187 = add nsw i32 %and2.i, -256
  %188 = lshr exact i32 %187, 8
  %189 = zext i32 %188 to i64
  call void @__sanitizer_cov_trace_switch(i64 %189, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %188, label %sw.default.i [
    i32 1, label %if.end21.i.do.end.i_crit_edge
    i32 4, label %if.end21.i.do.end.i_crit_edge1100
    i32 2, label %sw.bb33.i
    i32 0, label %if.end21.i.sw.bb48.i_crit_edge
    i32 3, label %sw.bb78.i
    i32 5, label %if.end21.i.if.end323_crit_edge
  ]

if.end21.i.if.end323_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end323

if.end21.i.sw.bb48.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb48.i

if.end21.i.do.end.i_crit_edge1100:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.end21.i.do.end.i_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.end21.i.do.end.i_crit_edge, %if.end21.i.do.end.i_crit_edge1100
  %and23.i = and i32 %178, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %do.end.i.if.then322_crit_edge, label %if.end26.i

do.end.i.if.then322_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then322

if.end26.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %flag.i957 = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 24
  %190 = ptrtoint ptr %flag.i957 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %flag.i957, align 8
  %and27.i = and i32 %175, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  %spec.select.v.i = select i1 %tobool28.not.i, i32 2, i32 2097154
  %spec.select.i958 = or i32 %191, %spec.select.v.i
  %192 = ptrtoint ptr %flag.i957 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %spec.select.i958, ptr %flag.i957, align 8
  br label %if.end323

sw.bb33.i:                                        ; preds = %if.end21.i
  %193 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i960 = getelementptr %struct.iwl_fw, ptr %194, i32 0, i32 5, i32 7, i32 1
  %195 = ptrtoint ptr %arrayidx.i.i.i960 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load volatile i32, ptr %arrayidx.i.i.i960, align 4
  %197 = and i32 %196, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool.i.not.i = icmp eq i32 %197, 0
  %and36.i = and i32 %178, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  %or.cond1.i = select i1 %tobool.i.not.i, i1 %tobool37.not.i, i1 false
  br i1 %or.cond1.i, label %sw.bb33.i.if.end323_crit_edge, label %if.end39.i

sw.bb33.i.if.end323_crit_edge:                    ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end323

if.end39.i:                                       ; preds = %sw.bb33.i
  %198 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %trans, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %199, i32 0, i32 3
  %200 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %trans_cfg.i, align 4
  %gen2.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %201, i32 0, i32 5
  %202 = ptrtoint ptr %gen2.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %bf.load.i = load i16, ptr %gen2.i, align 4
  %203 = and i16 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %203)
  %tobool40.not.i = icmp ne i16 %203, 0
  %and42.i = and i32 %178, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  %or.cond2.i = select i1 %tobool40.not.i, i1 %tobool43.not.i, i1 false
  br i1 %or.cond2.i, label %if.then44.i, label %if.end39.i.sw.bb48.i_crit_edge

if.end39.i.sw.bb48.i_crit_edge:                   ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb48.i

if.then44.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  %flag45.i = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 24
  %204 = ptrtoint ptr %flag45.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %flag45.i, align 8
  %or46.i = or i32 %205, 1
  store i32 %or46.i, ptr %flag45.i, align 8
  br label %sw.bb48.i

sw.bb48.i:                                        ; preds = %if.then44.i, %if.end39.i.sw.bb48.i_crit_edge, %if.end21.i.sw.bb48.i_crit_edge
  %crypt_len.0 = phi i8 [ 0, %if.end21.i.sw.bb48.i_crit_edge ], [ 8, %if.then44.i ], [ 8, %if.end39.i.sw.bb48.i_crit_edge ]
  %and49.i = and i32 %178, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %sw.bb48.i.if.then322_crit_edge, label %if.end52.i

sw.bb48.i.if.then322_crit_edge:                   ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then322

if.end52.i:                                       ; preds = %sw.bb48.i
  %flag53.i = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 24
  %206 = ptrtoint ptr %flag53.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %flag53.i, align 8
  %or54.i = or i32 %207, 2
  store i32 %or54.i, ptr %flag53.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and2.i)
  %cmp56.i = icmp eq i32 %and2.i, 256
  %spec.select1085 = select i1 %cmp56.i, i8 4, i8 %crypt_len.0
  %and60.i = and i32 %175, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i)
  %tobool61.not.i = icmp eq i32 %and60.i, 0
  br i1 %tobool61.not.i, label %if.end52.i.if.end323_crit_edge, label %if.then62.i

if.end52.i.if.end323_crit_edge:                   ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end323

if.then62.i:                                      ; preds = %if.end52.i
  %or64.i = or i32 %207, 8388610
  %208 = ptrtoint ptr %flag53.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %or64.i, ptr %flag53.i, align 8
  %209 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %trans, align 4
  %trans_cfg66.i = getelementptr inbounds %struct.iwl_trans, ptr %210, i32 0, i32 3
  %211 = ptrtoint ptr %trans_cfg66.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %trans_cfg66.i, align 4
  %gen267.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %212, i32 0, i32 5
  %213 = ptrtoint ptr %gen267.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %bf.load68.i = load i16, ptr %gen267.i, align 4
  %214 = and i16 %bf.load68.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %214)
  %tobool72.not.i = icmp eq i16 %214, 0
  br i1 %tobool72.not.i, label %if.then62.i.if.end323_crit_edge, label %if.then73.i

if.then62.i.if.end323_crit_edge:                  ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end323

if.then73.i:                                      ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #13
  %or75.i = or i32 %207, 8388618
  %215 = ptrtoint ptr %flag53.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %or75.i, ptr %flag53.i, align 8
  br label %if.end323

sw.bb78.i:                                        ; preds = %if.end21.i
  %and79.i = and i32 %178, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not.i, label %sw.bb78.i.if.then322_crit_edge, label %if.end82.i

sw.bb78.i.if.then322_crit_edge:                   ; preds = %sw.bb78.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then322

if.end82.i:                                       ; preds = %sw.bb78.i
  call void @__sanitizer_cov_trace_pc() #13
  %flag83.i = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 24
  %216 = ptrtoint ptr %flag83.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %flag83.i, align 8
  %or84.i = or i32 %217, 2
  store i32 %or84.i, ptr %flag83.i, align 8
  br label %if.end323

sw.default.i:                                     ; preds = %if.end21.i
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr, i32 0, i32 2
  %218 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %addr1.i, align 4
  %220 = and i32 %219, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool.i5.not.i = icmp eq i32 %220, 0
  br i1 %tobool.i5.not.i, label %land.lhs.true86.i, label %sw.default.i.if.end323_crit_edge

sw.default.i.if.end323_crit_edge:                 ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end323

land.lhs.true86.i:                                ; preds = %sw.default.i
  %221 = ptrtoint ptr %monitor_on to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %monitor_on, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %222)
  %tobool88.not.i = icmp eq i8 %222, 0
  br i1 %tobool88.not.i, label %land.lhs.true89.i, label %land.lhs.true86.i.if.end323_crit_edge

land.lhs.true86.i.if.end323_crit_edge:            ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end323

land.lhs.true89.i:                                ; preds = %land.lhs.true86.i
  %call90.i = tail call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i)
  %tobool91.not.i = icmp eq i32 %call90.i, 0
  br i1 %tobool91.not.i, label %land.lhs.true89.i.if.end323_crit_edge, label %do.end96.i

land.lhs.true89.i.if.end323_crit_edge:            ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end323

do.end96.i:                                       ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #13
  %223 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %224, i32 noundef 0, ptr noundef nonnull @.str.36, i32 noundef %178) #11
  br label %if.end323

iwl_mvm_rx_crypto.exit:                           ; preds = %if.end.i
  %call13.i = tail call fastcc i32 @iwl_mvm_rx_mgmt_prot(ptr noundef %sta.1, ptr noundef %add.ptr, ptr noundef %data, i32 noundef %178) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool321.not = icmp eq i32 %call13.i, 0
  br i1 %tobool321.not, label %iwl_mvm_rx_crypto.exit.if.end323_crit_edge, label %iwl_mvm_rx_crypto.exit.if.then322_crit_edge

iwl_mvm_rx_crypto.exit.if.then322_crit_edge:      ; preds = %iwl_mvm_rx_crypto.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then322

iwl_mvm_rx_crypto.exit.if.end323_crit_edge:       ; preds = %iwl_mvm_rx_crypto.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end323

if.then322:                                       ; preds = %iwl_mvm_rx_crypto.exit.if.then322_crit_edge, %sw.bb78.i.if.then322_crit_edge, %sw.bb48.i.if.then322_crit_edge, %do.end.i.if.then322_crit_edge, %land.lhs.true4.i.if.then322_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i947, i32 noundef 0) #11
  br label %out

if.end323:                                        ; preds = %iwl_mvm_rx_crypto.exit.if.end323_crit_edge, %do.end96.i, %land.lhs.true89.i.if.end323_crit_edge, %land.lhs.true86.i.if.end323_crit_edge, %sw.default.i.if.end323_crit_edge, %if.end82.i, %if.then73.i, %if.then62.i.if.end323_crit_edge, %if.end52.i.if.end323_crit_edge, %sw.bb33.i.if.end323_crit_edge, %if.end26.i, %if.end21.i.if.end323_crit_edge, %if.end14.i.if.end323_crit_edge
  %crypt_len.21072 = phi i8 [ 0, %iwl_mvm_rx_crypto.exit.if.end323_crit_edge ], [ 8, %if.end26.i ], [ 0, %sw.bb33.i.if.end323_crit_edge ], [ %spec.select1085, %if.then73.i ], [ %spec.select1085, %if.then62.i.if.end323_crit_edge ], [ %spec.select1085, %if.end52.i.if.end323_crit_edge ], [ 0, %if.end82.i ], [ 0, %if.end21.i.if.end323_crit_edge ], [ 0, %sw.default.i.if.end323_crit_edge ], [ 0, %land.lhs.true86.i.if.end323_crit_edge ], [ 0, %do.end96.i ], [ 0, %land.lhs.true89.i.if.end323_crit_edge ], [ 0, %if.end14.i.if.end323_crit_edge ]
  %tobool324.not = icmp eq ptr %sta.1, null
  br i1 %tobool324.not, label %if.end323.if.end511_crit_edge, label %if.then325

if.end323.if.end511_crit_edge:                    ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end511

if.then325:                                       ; preds = %if.end323
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta.1, i32 0, i32 29
  %csa_tx_blocked_vif = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 150
  %225 = ptrtoint ptr %csa_tx_blocked_vif to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load volatile ptr, ptr %csa_tx_blocked_vif, align 4
  %call332 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call332)
  %tobool333.not = icmp eq i32 %call332, 0
  br i1 %tobool333.not, label %land.lhs.true334, label %if.then325.do.end342_crit_edge

if.then325.do.end342_crit_edge:                   ; preds = %if.then325
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end342

land.lhs.true334:                                 ; preds = %if.then325
  %call335 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call335)
  %tobool336.not = icmp eq i32 %call335, 0
  br i1 %tobool336.not, label %land.lhs.true334.do.end342_crit_edge, label %land.lhs.true337

land.lhs.true334.do.end342_crit_edge:             ; preds = %land.lhs.true334
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end342

land.lhs.true337:                                 ; preds = %land.lhs.true334
  %.b930931 = load i1, ptr @iwl_mvm_rx_mpdu_mq.__warned.21, align 1
  br i1 %.b930931, label %land.lhs.true337.do.end342_crit_edge, label %if.then339

land.lhs.true337.do.end342_crit_edge:             ; preds = %land.lhs.true337
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end342

if.then339:                                       ; preds = %land.lhs.true337
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_rx_mpdu_mq.__warned.21, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1877, ptr noundef nonnull @.str.1) #11
  br label %do.end342

do.end342:                                        ; preds = %if.then339, %land.lhs.true337.do.end342_crit_edge, %land.lhs.true334.do.end342_crit_edge, %if.then325.do.end342_crit_edge
  %reorder_data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 3
  %227 = ptrtoint ptr %reorder_data to i32
  call void @__asan_loadN_noabort(i32 %227, i32 4)
  %228 = load i32, ptr %reorder_data, align 1
  %229 = trunc i32 %228 to i8
  %conv346 = and i8 %229, 127
  %vif347 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta.1, i32 17, i32 28, i32 10
  %230 = ptrtoint ptr %vif347 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %vif347, align 8
  %tcm = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133
  %paused = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 5
  %232 = ptrtoint ptr %paused to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %paused, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %tobool348.not = icmp eq i8 %233, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 29, i16 %60)
  %cmp350 = icmp ugt i16 %60, 29
  %or.cond940 = select i1 %tobool348.not, i1 %cmp350, i1 false
  br i1 %or.cond940, label %land.lhs.true352, label %do.end342.if.end366_crit_edge

do.end342.if.end366_crit_edge:                    ; preds = %do.end342
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end366

land.lhs.true352:                                 ; preds = %do.end342
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr, i32 0, i32 2
  %234 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %addr1, align 4
  %236 = and i32 %235, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %tobool.i962.not = icmp eq i32 %236, 0
  br i1 %tobool.i962.not, label %land.lhs.true355, label %land.lhs.true352.if.end366_crit_edge

land.lhs.true352.if.end366_crit_edge:             ; preds = %land.lhs.true352
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end366

land.lhs.true355:                                 ; preds = %land.lhs.true352
  %237 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %add.ptr, align 2
  %239 = and i16 %238, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %239)
  %cmp.i963 = icmp eq i16 %239, 2048
  br i1 %cmp.i963, label %land.lhs.true358, label %land.lhs.true355.if.end366_crit_edge

land.lhs.true355.if.end366_crit_edge:             ; preds = %land.lhs.true355
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end366

land.lhs.true358:                                 ; preds = %land.lhs.true355
  %ts = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 133, i32 2
  %240 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %ts, align 8
  %add360 = add i32 %241, 50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %242 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add360, %242
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp361 = icmp slt i32 %sub, 0
  br i1 %cmp361, label %if.then363, label %land.lhs.true358.if.end366_crit_edge

land.lhs.true358.if.end366_crit_edge:             ; preds = %land.lhs.true358
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end366

if.then363:                                       ; preds = %land.lhs.true358
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %243 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %243, ptr noundef %tcm, i32 noundef 0) #11
  br label %if.end366

if.end366:                                        ; preds = %if.then363, %land.lhs.true358.if.end366_crit_edge, %land.lhs.true355.if.end366_crit_edge, %land.lhs.true352.if.end366_crit_edge, %do.end342.if.end366_crit_edge
  %tobool367.not = icmp eq ptr %226, null
  br i1 %tobool367.not, label %if.end366.if.end407_crit_edge, label %land.lhs.true374, !prof !149

if.end366.if.end407_crit_edge:                    ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end407

land.lhs.true374:                                 ; preds = %if.end366
  %cmp375 = icmp eq ptr %226, %231
  br i1 %cmp375, label %if.then377, label %land.lhs.true374.if.end407_crit_edge

land.lhs.true374.if.end407_crit_edge:             ; preds = %land.lhs.true374
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end407

if.then377:                                       ; preds = %land.lhs.true374
  %drv_priv.i964 = getelementptr inbounds %struct.ieee80211_vif, ptr %226, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rx_sta_csa) #11
  %244 = ptrtoint ptr %rx_sta_csa to i32
  call void @__asan_store8_noabort(i32 %244)
  store i64 144115188075855871, ptr %rx_sta_csa, align 8, !annotation !151
  %vif379 = getelementptr inbounds %struct.iwl_rx_sta_csa, ptr %rx_sta_csa, i32 0, i32 1
  %245 = ptrtoint ptr %vif379 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %226, ptr %vif379, align 4
  %csa_target_freq = getelementptr inbounds %struct.ieee80211_vif, ptr %226, i32 1, i32 1, i32 64, i32 6
  %246 = ptrtoint ptr %csa_target_freq to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %csa_target_freq, align 2
  %248 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %248)
  %bf.load382 = load i16, ptr %freq, align 4
  %bf.lshr = lshr i16 %bf.load382, 3
  call void @__sanitizer_cov_trace_cmp2(i16 %247, i16 %bf.lshr)
  %cmp384 = icmp eq i16 %247, %bf.lshr
  br i1 %cmp384, label %if.then386, label %if.then377.if.end387_crit_edge

if.then377.if.end387_crit_edge:                   ; preds = %if.then377
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end387

if.then386:                                       ; preds = %if.then377
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iwl_mvm_sta_modify_disable_tx_ap(ptr noundef %mvm, ptr noundef nonnull %sta.1, i1 noundef zeroext false) #11
  br label %if.end387

if.end387:                                        ; preds = %if.then386, %if.then377.if.end387_crit_edge
  %hw388 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %249 = ptrtoint ptr %hw388 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %hw388, align 4
  call void @ieee80211_iterate_stations_atomic(ptr noundef %250, ptr noundef nonnull @iwl_mvm_rx_get_sta_block_tx, ptr noundef nonnull %rx_sta_csa) #11
  %251 = ptrtoint ptr %rx_sta_csa to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %rx_sta_csa, align 8, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %252)
  %tobool390.not = icmp eq i8 %252, 0
  br i1 %tobool390.not, label %if.end387.if.end406_crit_edge, label %do.body397

if.end387.if.end406_crit_edge:                    ; preds = %if.end387
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end406

do.body397:                                       ; preds = %if.end387
  call void @__sanitizer_cov_trace_pc() #13
  %253 = ptrtoint ptr %csa_tx_blocked_vif to i32
  call void @__asan_store4_noabort(i32 %253)
  store volatile ptr null, ptr %csa_tx_blocked_vif, align 4
  call void @iwl_mvm_modify_all_sta_disable_tx(ptr noundef %mvm, ptr noundef %drv_priv.i964, i1 noundef zeroext false) #11
  %cs_tx_unblock_dwork = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 170
  %call405 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %cs_tx_unblock_dwork) #11
  br label %if.end406

if.end406:                                        ; preds = %do.body397, %if.end387.if.end406_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rx_sta_csa) #11
  br label %if.end407

if.end407:                                        ; preds = %if.end406, %land.lhs.true374.if.end407_crit_edge, %if.end366.if.end407_crit_edge
  call void @rs_update_last_rssi(ptr noundef %mvm, ptr noundef %drv_priv.i, ptr noundef %cb.i) #11
  %fwrt = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40
  %call415 = call ptr @ieee80211_vif_to_wdev(ptr noundef %231) #11
  %254 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %fwrt, align 8
  %internal_ini_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %255, i32 0, i32 32, i32 10
  %256 = ptrtoint ptr %internal_ini_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %internal_ini_cfg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %cmp.not.i.i = icmp eq i32 %257, 0
  br i1 %cmp.not.i.i, label %iwl_trans_dbg_ini_valid.exit.i, label %if.end407.if.end433_crit_edge

if.end407.if.end433_crit_edge:                    ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end433

iwl_trans_dbg_ini_valid.exit.i:                   ; preds = %if.end407
  %external_ini_cfg.i.i = getelementptr inbounds %struct.iwl_trans, ptr %255, i32 0, i32 32, i32 11
  %258 = ptrtoint ptr %external_ini_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %external_ini_cfg.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %cmp2.i.not.i = icmp eq i32 %259, 0
  br i1 %cmp2.i.not.i, label %if.end.i967, label %iwl_trans_dbg_ini_valid.exit.i.if.end433_crit_edge

iwl_trans_dbg_ini_valid.exit.i.if.end433_crit_edge: ; preds = %iwl_trans_dbg_ini_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end433

if.end.i967:                                      ; preds = %iwl_trans_dbg_ini_valid.exit.i
  %fw.i965 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 1
  %260 = ptrtoint ptr %fw.i965 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %fw.i965, align 4
  %arrayidx.i = getelementptr %struct.iwl_fw, ptr %261, i32 0, i32 20, i32 3, i32 8
  %262 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i966 = icmp eq ptr %263, null
  br i1 %tobool.not.i966, label %if.end.i967.if.end433_crit_edge, label %if.end4.i

if.end.i967.if.end433_crit_edge:                  ; preds = %if.end.i967
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end433

if.end4.i:                                        ; preds = %if.end.i967
  %trig_dis_ms.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %263, i32 0, i32 7
  %264 = ptrtoint ptr %trig_dis_ms.i.i to i32
  call void @__asan_loadN_noabort(i32 %264, i32 2)
  %265 = load i16, ptr %trig_dis_ms.i.i, align 1
  %266 = call i16 @llvm.bswap.i16(i16 %265) #11
  %conv.i.i = zext i16 %266 to i32
  %mul.i.i = mul nuw nsw i32 %conv.i.i, 1000
  %tobool.not.i.i = icmp eq ptr %call415, null
  br i1 %tobool.not.i.i, label %if.end4.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end4.i.if.end.i.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end4.i
  %vif_type.i.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %263, i32 0, i32 1
  %267 = ptrtoint ptr %vif_type.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %267, i32 4)
  %268 = load i32, ptr %vif_type.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %268)
  %cmp.i.i.i = icmp eq i32 %268, 0
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %iwl_fw_dbg_trigger_vif_match.exit.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

iwl_fw_dbg_trigger_vif_match.exit.i.i:            ; preds = %land.lhs.true.i.i
  %269 = call i32 @llvm.bswap.i32(i32 %268) #11
  %iftype.i.i.i = getelementptr inbounds %struct.wireless_dev, ptr %call415, i32 0, i32 1
  %270 = ptrtoint ptr %iftype.i.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %iftype.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %271, i32 %269)
  %cmp1.i.i.i = icmp eq i32 %271, %269
  br i1 %cmp1.i.i.i, label %iwl_fw_dbg_trigger_vif_match.exit.i.i.if.end.i.i_crit_edge, label %iwl_fw_dbg_trigger_vif_match.exit.i.i.if.end433_crit_edge

iwl_fw_dbg_trigger_vif_match.exit.i.i.if.end433_crit_edge: ; preds = %iwl_fw_dbg_trigger_vif_match.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end433

iwl_fw_dbg_trigger_vif_match.exit.i.i.if.end.i.i_crit_edge: ; preds = %iwl_fw_dbg_trigger_vif_match.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %iwl_fw_dbg_trigger_vif_match.exit.i.i.if.end.i.i_crit_edge, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end4.i.if.end.i.i_crit_edge
  %272 = ptrtoint ptr %263 to i32
  call void @__asan_loadN_noabort(i32 %272, i32 4)
  %273 = load i32, ptr %263, align 1
  %274 = call i32 @llvm.bswap.i32(i32 %273) #11
  %call3.i.i.i.i = call i32 @__usecs_to_jiffies(i32 noundef %mul.i.i) #11
  %arrayidx.i.i.i968 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 12, i32 3, i32 %274
  %275 = ptrtoint ptr %arrayidx.i.i.i968 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %arrayidx.i.i.i968, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %276)
  %tobool.not.i.i.i = icmp eq i32 %276, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %277 = load volatile i32, ptr @jiffies, align 128
  %278 = add i32 %276, %call3.i.i.i.i
  %sub.i.i.i = sub i32 %277, %278
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i16.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i16.i.i, label %do.end.i.i, label %land.lhs.true.i.i.i.if.end7.i.i_crit_edge

land.lhs.true.i.i.i.if.end7.i.i_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 2
  %279 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %dev.i.i, align 8
  %281 = ptrtoint ptr %263 to i32
  call void @__asan_loadN_noabort(i32 %281, i32 4)
  %282 = load i32, ptr %263, align 1
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %280, ptr noundef nonnull @.str.39, i32 noundef %282) #11
  br label %if.end433

if.end7.i.i:                                      ; preds = %land.lhs.true.i.i.i.if.end7.i.i_crit_edge, %if.end.i.i.if.end7.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %283 = load volatile i32, ptr @jiffies, align 128
  %284 = ptrtoint ptr %arrayidx.i.i.i968 to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %283, ptr %arrayidx.i.i.i968, align 4
  %mode.i.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %263, i32 0, i32 4
  %285 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %mode.i.i.i, align 1
  %287 = and i8 %286, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %287)
  %tobool.not.i17.i.i = icmp eq i8 %287, 0
  br i1 %tobool.not.i17.i.i, label %if.end7.i.i.if.end433_crit_edge, label %land.rhs.i.i.i

if.end7.i.i.if.end433_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end433

land.rhs.i.i.i:                                   ; preds = %if.end7.i.i
  %conf.i.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 40, i32 12, i32 2
  %288 = ptrtoint ptr %conf.i.i.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %conf.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %289)
  %cmp.i18.i.i = icmp eq i8 %289, -1
  br i1 %cmp.i18.i.i, label %land.rhs.i.i.i.land.lhs.true418_crit_edge, label %iwl_fw_dbg_trigger_check_stop.exit.i

land.rhs.i.i.i.land.lhs.true418_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true418

iwl_fw_dbg_trigger_check_stop.exit.i:             ; preds = %land.rhs.i.i.i
  %conv1.i.i.i = zext i8 %289 to i32
  %shl.i.i.i = shl nuw i32 1, %conv1.i.i.i
  %stop_conf_ids.i.i.i = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %263, i32 0, i32 2
  %290 = ptrtoint ptr %stop_conf_ids.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %290, i32 4)
  %291 = load i32, ptr %stop_conf_ids.i.i.i, align 1
  %292 = call i32 @llvm.bswap.i32(i32 %291) #11
  %and6.i.i.i = and i32 %292, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.i.i.not.i = icmp eq i32 %and6.i.i.i, 0
  br i1 %tobool7.i.i.not.i, label %iwl_fw_dbg_trigger_check_stop.exit.i.if.end433_crit_edge, label %iwl_fw_dbg_trigger_check_stop.exit.i.land.lhs.true418_crit_edge

iwl_fw_dbg_trigger_check_stop.exit.i.land.lhs.true418_crit_edge: ; preds = %iwl_fw_dbg_trigger_check_stop.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true418

iwl_fw_dbg_trigger_check_stop.exit.i.if.end433_crit_edge: ; preds = %iwl_fw_dbg_trigger_check_stop.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end433

land.lhs.true418:                                 ; preds = %iwl_fw_dbg_trigger_check_stop.exit.i.land.lhs.true418_crit_edge, %land.rhs.i.i.i.land.lhs.true418_crit_edge
  %293 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %293)
  %294 = load i16, ptr %add.ptr, align 2
  %295 = and i16 %294, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %295)
  %cmp.i970 = icmp eq i16 %295, -32768
  br i1 %cmp.i970, label %if.then422, label %land.lhs.true418.if.end433_crit_edge

land.lhs.true418.if.end433_crit_edge:             ; preds = %land.lhs.true418
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end433

if.then422:                                       ; preds = %land.lhs.true418
  %data423 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, ptr %263, i32 0, i32 10
  %296 = ptrtoint ptr %data423 to i32
  call void @__asan_loadN_noabort(i32 %296, i32 4)
  %297 = load i32, ptr %data423, align 1
  %298 = call i32 @llvm.bswap.i32(i32 %297)
  %299 = ptrtoint ptr %signal.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %signal.i, align 2
  %conv426 = sext i8 %300 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %298, i32 %conv426)
  %cmp427 = icmp sgt i32 %298, %conv426
  br i1 %cmp427, label %if.then429, label %if.then422.if.end433_crit_edge

if.then422.if.end433_crit_edge:                   ; preds = %if.then422
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end433

if.then429:                                       ; preds = %if.then422
  call void @__sanitizer_cov_trace_pc() #13
  %call431 = call i32 (ptr, ptr, ptr, ...) @iwl_fw_dbg_collect_trig(ptr noundef %fwrt, ptr noundef nonnull %263, ptr noundef null) #11
  br label %if.end433

if.end433:                                        ; preds = %if.then429, %if.then422.if.end433_crit_edge, %land.lhs.true418.if.end433_crit_edge, %iwl_fw_dbg_trigger_check_stop.exit.i.if.end433_crit_edge, %if.end7.i.i.if.end433_crit_edge, %do.end.i.i, %iwl_fw_dbg_trigger_vif_match.exit.i.i.if.end433_crit_edge, %if.end.i967.if.end433_crit_edge, %iwl_trans_dbg_ini_valid.exit.i.if.end433_crit_edge, %if.end407.if.end433_crit_edge
  %301 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %301)
  %302 = load i16, ptr %add.ptr, align 2
  %303 = and i16 %302, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %303)
  %cmp.i971 = icmp eq i16 %303, 2048
  br i1 %cmp.i971, label %if.then436, label %if.end433.if.end437_crit_edge

if.end433.if.end437_crit_edge:                    ; preds = %if.end433
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end437

if.then436:                                       ; preds = %if.end433
  %304 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %trans, align 4
  %trans_cfg.i973 = getelementptr inbounds %struct.iwl_trans, ptr %305, i32 0, i32 3
  %306 = ptrtoint ptr %trans_cfg.i973 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %trans_cfg.i973, align 4
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %307, i32 0, i32 1
  %308 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %device_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %309)
  %cmp.i974 = icmp ugt i32 %309, 18
  br i1 %cmp.i974, label %if.then.i977, label %if.else.i

if.then.i977:                                     ; preds = %if.then436
  %310 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %310, i32 4)
  %311 = load i32, ptr %5, align 1
  %and.i975 = and i32 %311, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i975)
  %tobool.not.i976 = icmp eq i32 %and.i975, 0
  br i1 %tobool.not.i976, label %if.then.i977.if.end437_crit_edge, label %if.then1.i

if.then.i977.if.end437_crit_edge:                 ; preds = %if.then.i977
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end437

if.then1.i:                                       ; preds = %if.then.i977
  call void @__sanitizer_cov_trace_pc() #13
  %raw_xsum.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 5
  %312 = ptrtoint ptr %raw_xsum.i to i32
  call void @__asan_loadN_noabort(i32 %312, i32 2)
  %313 = load i16, ptr %raw_xsum.i, align 1
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 15
  %314 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %314)
  %bf.load.i978 = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i978, -1537
  %bf.set.i = or i16 %bf.clear.i, 1024
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  %neg.i = xor i16 %313, -1
  %conv.i.i979 = zext i16 %neg.i to i32
  %315 = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 15, i32 0, i32 5
  %316 = ptrtoint ptr %315 to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 %conv.i.i979, ptr %315, align 8
  br label %if.end437

if.else.i:                                        ; preds = %if.then436
  %317 = ptrtoint ptr %66 to i32
  call void @__asan_loadN_noabort(i32 %317, i32 2)
  %318 = load i16, ptr %66, align 1
  %319 = call i16 @llvm.bswap.i16(i16 %318) #11
  %conv4.i = zext i16 %319 to i32
  %320 = lshr i16 %319, 4
  %321 = ptrtoint ptr %vif347 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %vif347, align 8
  %features.i = getelementptr inbounds %struct.ieee80211_vif, ptr %322, i32 2, i32 1, i32 21
  %323 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %323)
  %324 = load i64, ptr %features.i, align 8
  %and8.i = and i64 %324, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8.i)
  %tobool9.not.i = icmp eq i64 %and8.i, 0
  %and11.i = and i32 %conv4.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %or.cond.i981 = select i1 %tobool9.not.i, i1 true, i1 %tobool12.not.i
  br i1 %or.cond.i981, label %if.else.i.if.end437_crit_edge, label %land.lhs.true13.i

if.else.i.if.end437_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end437

land.lhs.true13.i:                                ; preds = %if.else.i
  %and15.i = and i32 %conv4.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %lor.lhs.false.i, label %land.lhs.true13.i.if.then24.i_crit_edge

land.lhs.true13.i.if.then24.i_crit_edge:          ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true13.i
  %325 = and i16 %320, 15
  %.off.i982 = add nsw i16 %325, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off.i982)
  %switch.i983 = icmp ult i16 %.off.i982, 2
  br i1 %switch.i983, label %lor.lhs.false.i.if.then24.i_crit_edge, label %lor.lhs.false.i.if.end437_crit_edge

lor.lhs.false.i.if.end437_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end437

lor.lhs.false.i.if.then24.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24.i

if.then24.i:                                      ; preds = %lor.lhs.false.i.if.then24.i_crit_edge, %land.lhs.true13.i.if.then24.i_crit_edge
  %ip_summed25.i = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 15
  %326 = ptrtoint ptr %ip_summed25.i to i32
  call void @__asan_load2_noabort(i32 %326)
  %bf.load26.i = load i16, ptr %ip_summed25.i, align 8
  %bf.clear27.i = and i16 %bf.load26.i, -1537
  %bf.set28.i = or i16 %bf.clear27.i, 512
  store i16 %bf.set28.i, ptr %ip_summed25.i, align 8
  br label %if.end437

if.end437:                                        ; preds = %if.then24.i, %lor.lhs.false.i.if.end437_crit_edge, %if.else.i.if.end437_crit_edge, %if.then1.i, %if.then.i977.if.end437_crit_edge, %if.end433.if.end437_crit_edge
  %cmp.i.i = icmp ugt ptr %sta.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i985, label %if.end21.i988, !prof !148

do.end.i985:                                      ; preds = %if.end437
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 516, i32 noundef 9, ptr noundef null) #11
  br label %if.end440

if.end21.i988:                                    ; preds = %if.end437
  %dup_data23.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta.1, i32 17, i32 28, i32 15
  %327 = ptrtoint ptr %dup_data23.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %dup_data23.i, align 4
  %arrayidx.i986 = getelementptr %struct.iwl_mvm_rxq_dup_data, ptr %328, i32 %queue
  %329 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %329)
  %330 = load i16, ptr %add.ptr, align 2
  %331 = and i16 %330, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %331)
  %cmp.i120.i = icmp eq i16 %331, 1024
  %332 = and i16 %330, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -14336, i16 %332)
  %cmp.i121.i = icmp eq i16 %332, -14336
  %or.cond.i987 = or i1 %cmp.i120.i, %cmp.i121.i
  br i1 %or.cond.i987, label %if.end21.i988.if.then29.i_crit_edge, label %lor.lhs.false27.i

if.end21.i988.if.then29.i_crit_edge:              ; preds = %if.end21.i988
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29.i

lor.lhs.false27.i:                                ; preds = %if.end21.i988
  %addr1.i989 = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr, i32 0, i32 2
  %333 = ptrtoint ptr %addr1.i989 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %addr1.i989, align 4
  %335 = and i32 %334, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %335)
  %tobool.i.not.i990 = icmp eq i32 %335, 0
  br i1 %tobool.i.not.i990, label %if.end30.i, label %lor.lhs.false27.i.if.then29.i_crit_edge

lor.lhs.false27.i.if.then29.i_crit_edge:          ; preds = %lor.lhs.false27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29.i

if.then29.i:                                      ; preds = %lor.lhs.false27.i.if.then29.i_crit_edge, %if.end21.i988.if.then29.i_crit_edge
  %flag.i991 = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 24
  %336 = ptrtoint ptr %flag.i991 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %flag.i991, align 8
  %or.i992 = or i32 %337, 2048
  store i32 %or.i992, ptr %flag.i991, align 8
  br label %if.end440

if.end30.i:                                       ; preds = %lor.lhs.false27.i
  %338 = and i16 %330, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %338)
  %cmp.i122.i = icmp eq i16 %338, -30720
  br i1 %cmp.i122.i, label %if.then33.i, label %if.end30.i.if.end35.i_crit_edge

if.end30.i.if.end35.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i

if.then33.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  %339 = and i16 %330, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %339)
  %cmp.i.i.i.i993 = icmp eq i16 %339, 3
  %retval.0.v.i.i.i = select i1 %cmp.i.i.i.i993, i32 30, i32 24
  %retval.0.i.i.i = getelementptr i8, ptr %add.ptr, i32 %retval.0.v.i.i.i
  %340 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %retval.0.i.i.i, align 1
  %342 = and i8 %341, 15
  %phi.cast.i = zext i8 %342 to i32
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then33.i, %if.end30.i.if.end35.i_crit_edge
  %tid.0.i = phi i32 [ %phi.cast.i, %if.then33.i ], [ 8, %if.end30.i.if.end35.i_crit_edge ]
  %amsdu_info.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %343 = ptrtoint ptr %amsdu_info.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %amsdu_info.i, align 1
  %345 = and i8 %344, 127
  %346 = and i16 %330, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %346)
  %cmp.i123.not.i = icmp eq i16 %346, 0
  br i1 %cmp.i123.not.i, label %if.end35.i.if.end57.i_crit_edge, label %land.lhs.true.i995

if.end35.i.if.end57.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57.i

land.lhs.true.i995:                               ; preds = %if.end35.i
  %arrayidx40.i = getelementptr [9 x i16], ptr %arrayidx.i986, i32 0, i32 %tid.0.i
  %347 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load2_noabort(i32 %347)
  %348 = load i16, ptr %arrayidx40.i, align 2
  %seq_ctrl.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr, i32 0, i32 5
  %349 = ptrtoint ptr %seq_ctrl.i to i32
  call void @__asan_load2_noabort(i32 %349)
  %350 = load i16, ptr %seq_ctrl.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %348, i16 %350)
  %cmp.i994 = icmp eq i16 %348, %350
  br i1 %cmp.i994, label %land.rhs.i, label %land.lhs.true.i995.if.end57.i_crit_edge

land.lhs.true.i995.if.end57.i_crit_edge:          ; preds = %land.lhs.true.i995
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57.i

land.rhs.i:                                       ; preds = %land.lhs.true.i995
  %arrayidx45.i = getelementptr %struct.iwl_mvm_rxq_dup_data, ptr %328, i32 %queue, i32 1, i32 %tid.0.i
  %351 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %arrayidx45.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %352, i8 %345)
  %cmp48.not.i = icmp ult i8 %352, %345
  br i1 %cmp48.not.i, label %land.rhs.i.if.end57.i_crit_edge, label %cleanup, !prof !149

land.rhs.i.if.end57.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57.i

if.end57.i:                                       ; preds = %land.rhs.i.if.end57.i_crit_edge, %land.lhs.true.i995.if.end57.i_crit_edge, %if.end35.i.if.end57.i_crit_edge
  %arrayidx60.i = getelementptr [9 x i16], ptr %arrayidx.i986, i32 0, i32 %tid.0.i
  %353 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load2_noabort(i32 %353)
  %354 = load i16, ptr %arrayidx60.i, align 2
  %seq_ctrl62.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr, i32 0, i32 5
  %355 = ptrtoint ptr %seq_ctrl62.i to i32
  call void @__asan_load2_noabort(i32 %355)
  %356 = load i16, ptr %seq_ctrl62.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %354, i16 %356)
  %cmp64.i = icmp eq i16 %354, %356
  br i1 %cmp64.i, label %land.lhs.true66.i, label %if.end57.i.if.end81.i_crit_edge

if.end57.i.if.end81.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81.i

land.lhs.true66.i:                                ; preds = %if.end57.i
  %arrayidx70.i = getelementptr %struct.iwl_mvm_rxq_dup_data, ptr %328, i32 %queue, i32 1, i32 %tid.0.i
  %357 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %arrayidx70.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %345, i8 %358)
  %cmp72.i = icmp ugt i8 %345, %358
  br i1 %cmp72.i, label %land.lhs.true74.i, label %land.lhs.true66.i.if.end81.i_crit_edge

land.lhs.true66.i.if.end81.i_crit_edge:           ; preds = %land.lhs.true66.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81.i

land.lhs.true74.i:                                ; preds = %land.lhs.true66.i
  %359 = ptrtoint ptr %mac_flags2 to i32
  call void @__asan_load1_noabort(i32 %359)
  %360 = load i8, ptr %mac_flags2, align 1
  %361 = and i8 %360, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %361)
  %tobool77.not.i = icmp eq i8 %361, 0
  br i1 %tobool77.not.i, label %land.lhs.true74.i.if.end81.i_crit_edge, label %if.then78.i

land.lhs.true74.i.if.end81.i_crit_edge:           ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81.i

if.then78.i:                                      ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #13
  %flag79.i = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 24
  %362 = ptrtoint ptr %flag79.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %flag79.i, align 8
  %or80.i = or i32 %363, 4194304
  store i32 %or80.i, ptr %flag79.i, align 8
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.then78.i, %land.lhs.true74.i.if.end81.i_crit_edge, %land.lhs.true66.i.if.end81.i_crit_edge, %if.end57.i.if.end81.i_crit_edge
  %364 = ptrtoint ptr %seq_ctrl62.i to i32
  call void @__asan_load2_noabort(i32 %364)
  %365 = load i16, ptr %seq_ctrl62.i, align 2
  %366 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store2_noabort(i32 %366)
  store i16 %365, ptr %arrayidx60.i, align 2
  %arrayidx88.i = getelementptr %struct.iwl_mvm_rxq_dup_data, ptr %328, i32 %queue, i32 1, i32 %tid.0.i
  %367 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_store1_noabort(i32 %367)
  store i8 %345, ptr %arrayidx88.i, align 1
  %flag89.i = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 24
  %368 = ptrtoint ptr %flag89.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %flag89.i, align 8
  %or90.i = or i32 %369, 2048
  store i32 %or90.i, ptr %flag89.i, align 8
  br label %if.end440

if.end440:                                        ; preds = %if.end81.i, %if.then29.i, %do.end.i985
  %370 = ptrtoint ptr %mac_flags2 to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %mac_flags2, align 1
  %372 = and i8 %371, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %372)
  %tobool444.not = icmp eq i8 %372, 0
  br i1 %tobool444.not, label %if.end440.if.end499_crit_edge, label %land.lhs.true445

if.end440.if.end499_crit_edge:                    ; preds = %if.end440
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end499

land.lhs.true445:                                 ; preds = %if.end440
  %373 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %373)
  %374 = load i16, ptr %add.ptr, align 2
  %375 = and i16 %374, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %375)
  %cmp.i997 = icmp eq i16 %375, -30720
  br i1 %cmp.i997, label %if.then481.critedge, label %do.end466, !prof !149

do.end466:                                        ; preds = %land.lhs.true445
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1951, i32 noundef 9, ptr noundef null) #11
  br label %if.end499

if.then481.critedge:                              ; preds = %land.lhs.true445
  %376 = and i16 %374, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %376)
  %cmp.i.i998 = icmp eq i16 %376, 3
  %retval.0.v.i = select i1 %cmp.i.i998, i32 30, i32 24
  %retval.0.i999 = getelementptr i8, ptr %add.ptr, i32 %retval.0.v.i
  %377 = ptrtoint ptr %retval.0.i999 to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %retval.0.i999, align 1
  %379 = and i8 %378, 127
  store i8 %379, ptr %retval.0.i999, align 1
  %380 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %trans, align 4
  %trans_cfg487 = getelementptr inbounds %struct.iwl_trans, ptr %381, i32 0, i32 3
  %382 = ptrtoint ptr %trans_cfg487 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %trans_cfg487, align 4
  %device_family488 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %383, i32 0, i32 1
  %384 = ptrtoint ptr %device_family488 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %device_family488, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %385)
  %cmp489 = icmp eq i32 %385, 17
  br i1 %cmp489, label %if.then491, label %if.then481.critedge.if.end499_crit_edge

if.then481.critedge.if.end499_crit_edge:          ; preds = %if.then481.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end499

if.then491:                                       ; preds = %if.then481.critedge
  %addr3 = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr, i32 0, i32 4
  call fastcc void @iwl_mvm_flip_address(ptr noundef %addr3)
  %386 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %386)
  %387 = load i16, ptr %add.ptr, align 2
  %388 = and i16 %387, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %388)
  %cmp.i1000 = icmp eq i16 %388, 3
  br i1 %cmp.i1000, label %if.then495, label %if.then491.if.end499_crit_edge

if.then491.if.end499_crit_edge:                   ; preds = %if.then491
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end499

if.then495:                                       ; preds = %if.then491
  call void @__sanitizer_cov_trace_pc() #13
  %addr4 = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr, i32 0, i32 6
  call fastcc void @iwl_mvm_flip_address(ptr noundef %addr4)
  br label %if.end499

if.end499:                                        ; preds = %if.then495, %if.then491.if.end499_crit_edge, %if.then481.critedge.if.end499_crit_edge, %do.end466, %if.end440.if.end499_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %conv346)
  %cmp501.not = icmp eq i8 %conv346, 127
  br i1 %cmp501.not, label %if.end499.if.end511_crit_edge, label %if.then503

if.end499.if.end511_crit_edge:                    ; preds = %if.end499
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end511

if.then503:                                       ; preds = %if.end499
  %389 = ptrtoint ptr %reorder_data to i32
  call void @__asan_loadN_noabort(i32 %389, i32 4)
  %390 = load i32, ptr %reorder_data, align 1
  %391 = call i32 @llvm.bswap.i32(i32 %390)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %392 = load volatile i32, ptr @jiffies, align 128
  %393 = call i32 @llvm.read_register.i32(metadata !135) #11
  %and.i.i.i.i.i.i = and i32 %393, -16384
  %394 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %394, i32 0, i32 1
  %395 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %396, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !146
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i1001 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i1001, label %if.then503.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i1003

if.then503.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.then503
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i1003:                            ; preds = %if.then503
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i1002 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i1002, label %land.lhs.true.i.i1003.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i1003.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i1003
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i1003
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i1003.rcu_read_lock.exit.i_crit_edge, %if.then503.rcu_read_lock.exit.i_crit_edge
  %idxprom.i = zext i8 %conv346 to i32
  %arrayidx.i1004 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 167, i32 %idxprom.i
  %397 = ptrtoint ptr %arrayidx.i1004 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load volatile ptr, ptr %arrayidx.i1004, align 4
  %call.i1005 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1005)
  %tobool.not.i1006 = icmp eq i32 %call.i1005, 0
  br i1 %tobool.not.i1006, label %land.lhs.true.i1007, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i

land.lhs.true.i1007:                              ; preds = %rcu_read_lock.exit.i
  %call2.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i1007.do.end7.i_crit_edge, label %land.lhs.true4.i1008

land.lhs.true.i1007.do.end7.i_crit_edge:          ; preds = %land.lhs.true.i1007
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i

land.lhs.true4.i1008:                             ; preds = %land.lhs.true.i1007
  %.b37.i = load i1, ptr @iwl_mvm_agg_rx_received.__warned, align 1
  br i1 %.b37.i, label %land.lhs.true4.i1008.do.end7.i_crit_edge, label %if.then.i1009

land.lhs.true4.i1008.do.end7.i_crit_edge:         ; preds = %land.lhs.true4.i1008
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i

if.then.i1009:                                    ; preds = %land.lhs.true4.i1008
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_agg_rx_received.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1151, ptr noundef nonnull @.str.1) #11
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i1009, %land.lhs.true4.i1008.do.end7.i_crit_edge, %land.lhs.true.i1007.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %tobool9.not.i1010 = icmp eq ptr %398, null
  br i1 %tobool9.not.i1010, label %do.end14.i, label %if.end17.i

do.end14.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %399 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %400, i32 noundef 16777216, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_agg_rx_received, ptr noundef nonnull @.str.40, i32 noundef %idxprom.i, i32 noundef %391) #11
  br label %out.i

if.end17.i:                                       ; preds = %do.end7.i
  %timeout18.i = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %398, i32 0, i32 4
  %401 = ptrtoint ptr %timeout18.i to i32
  call void @__asan_load2_noabort(i32 %401)
  %402 = load i16, ptr %timeout18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %402)
  %tobool19.not.i = icmp eq i16 %402, 0
  br i1 %tobool19.not.i, label %if.end17.i.out.i_crit_edge, label %if.end21.i1011

if.end17.i.out.i_crit_edge:                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end21.i1011:                                   ; preds = %if.end17.i
  %last_rx.i = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %398, i32 0, i32 6
  %403 = ptrtoint ptr %last_rx.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %last_rx.i, align 16
  %conv23.i = zext i16 %402 to i32
  %mul.i = shl nuw nsw i32 %conv23.i, 10
  %call3.i.i = call i32 @__usecs_to_jiffies(i32 noundef %mul.i) #11
  %add.i1015 = sub i32 %404, %392
  %sub.i1016 = add i32 %add.i1015, %call3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i1016)
  %cmp.i1017 = icmp slt i32 %sub.i1016, 0
  br i1 %cmp.i1017, label %if.then26.i, label %if.end21.i1011.out.i_crit_edge

if.end21.i1011.out.i_crit_edge:                   ; preds = %if.end21.i1011
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then26.i:                                      ; preds = %if.end21.i1011
  call void @__sanitizer_cov_trace_pc() #13
  %405 = ptrtoint ptr %last_rx.i to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 %392, ptr %last_rx.i, align 16
  br label %out.i

out.i:                                            ; preds = %if.then26.i, %if.end21.i1011.out.i_crit_edge, %if.end17.i.out.i_crit_edge, %do.end14.i
  %call.i40.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i40.i, label %out.i.iwl_mvm_agg_rx_received.exit_crit_edge, label %land.lhs.true.i43.i

out.i.iwl_mvm_agg_rx_received.exit_crit_edge:     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_agg_rx_received.exit

land.lhs.true.i43.i:                              ; preds = %out.i
  %call1.i41.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41.i)
  %tobool.not.i42.i = icmp eq i32 %call1.i41.i, 0
  br i1 %tobool.not.i42.i, label %land.lhs.true.i43.i.iwl_mvm_agg_rx_received.exit_crit_edge, label %land.lhs.true2.i45.i

land.lhs.true.i43.i.iwl_mvm_agg_rx_received.exit_crit_edge: ; preds = %land.lhs.true.i43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_agg_rx_received.exit

land.lhs.true2.i45.i:                             ; preds = %land.lhs.true.i43.i
  %.b4.i44.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i44.i, label %land.lhs.true2.i45.i.iwl_mvm_agg_rx_received.exit_crit_edge, label %if.then.i46.i

land.lhs.true2.i45.i.iwl_mvm_agg_rx_received.exit_crit_edge: ; preds = %land.lhs.true2.i45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_agg_rx_received.exit

if.then.i46.i:                                    ; preds = %land.lhs.true2.i45.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #11
  br label %iwl_mvm_agg_rx_received.exit

iwl_mvm_agg_rx_received.exit:                     ; preds = %if.then.i46.i, %land.lhs.true2.i45.i.iwl_mvm_agg_rx_received.exit_crit_edge, %land.lhs.true.i43.i.iwl_mvm_agg_rx_received.exit_crit_edge, %out.i.iwl_mvm_agg_rx_received.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !147
  %406 = call i32 @llvm.read_register.i32(metadata !135) #11
  %and.i.i.i.i.i47.i = and i32 %406, -16384
  %407 = inttoptr i32 %and.i.i.i.i.i47.i to ptr
  %preempt_count.i.i.i.i48.i = getelementptr inbounds %struct.thread_info, ptr %407, i32 0, i32 1
  %408 = ptrtoint ptr %preempt_count.i.i.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load volatile i32, ptr %preempt_count.i.i.i.i48.i, align 4
  %sub.i.i.i.i = add i32 %409, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i48.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %if.end511

cleanup:                                          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree_skb_reason(ptr noundef nonnull %call.i947, i32 noundef 0) #11
  br label %out

if.end511:                                        ; preds = %iwl_mvm_agg_rx_received.exit, %if.end499.if.end511_crit_edge, %if.end323.if.end511_crit_edge
  br i1 %cmp111, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end511
  call void @__sanitizer_cov_trace_pc() #13
  %call514 = call zeroext i1 @iwl_he_is_sgi(i32 noundef %rate_n_flags.1) #11
  %conv515 = zext i1 %call514 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end511
  call void @__sanitizer_cov_trace_pc() #13
  %and516 = and i32 %rate_n_flags.1, 1048576
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond517 = phi i32 [ %conv515, %cond.true ], [ %and516, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond517)
  %tobool518.not = icmp eq i32 %cond517, 0
  %or.cond941 = select i1 %cmp131, i1 true, i1 %tobool518.not
  br i1 %or.cond941, label %cond.end.if.end530_crit_edge, label %if.then525

cond.end.if.end530_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end530

if.then525:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %enc_flags526 = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 30
  %410 = ptrtoint ptr %enc_flags526 to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %enc_flags526, align 2
  %412 = or i8 %411, 4
  store i8 %412, ptr %enc_flags526, align 2
  br label %if.end530

if.end530:                                        ; preds = %if.then525, %cond.end.if.end530_crit_edge
  %and531 = and i32 %rate_n_flags.1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and531)
  %tobool532.not = icmp eq i32 %and531, 0
  br i1 %tobool532.not, label %if.end530.if.end538_crit_edge, label %if.then533

if.end530.if.end538_crit_edge:                    ; preds = %if.end530
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end538

if.then533:                                       ; preds = %if.end530
  call void @__sanitizer_cov_trace_pc() #13
  %enc_flags534 = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 30
  %413 = ptrtoint ptr %enc_flags534 to i32
  call void @__asan_load1_noabort(i32 %413)
  %414 = load i8, ptr %enc_flags534, align 2
  %415 = or i8 %414, 64
  store i8 %415, ptr %enc_flags534, align 2
  br label %if.end538

if.end538:                                        ; preds = %if.then533, %if.end530.if.end538_crit_edge
  %416 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %416, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %and, label %if.else591 [
    i32 512, label %if.then541
    i32 768, label %if.then561
  ]

if.then541:                                       ; preds = %if.end538
  call void @__sanitizer_cov_trace_pc() #13
  %encoding = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 31
  %417 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %417, i32 2)
  %bf.load545 = load i16, ptr %encoding, align 1
  %bf.clear546 = and i16 %bf.load545, 16383
  %bf.set547 = or i16 %bf.clear546, 16384
  store i16 %bf.set547, ptr %encoding, align 1
  %and548 = lshr i32 %rate_n_flags.1, 1
  %shr549 = and i32 %and548, 8
  %and550 = and i32 %rate_n_flags.1, 7
  %or551 = or i32 %shr549, %and550
  %conv552 = trunc i32 %or551 to i8
  %rate_idx = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 33
  %418 = ptrtoint ptr %rate_idx to i32
  call void @__asan_store1_noabort(i32 %418)
  store i8 %conv552, ptr %rate_idx, align 1
  %419 = lshr i32 %rate_n_flags.1, 13
  %enc_flags554 = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 30
  %420 = ptrtoint ptr %enc_flags554 to i32
  call void @__asan_load1_noabort(i32 %420)
  %421 = load i8, ptr %enc_flags554, align 2
  %422 = trunc i32 %419 to i8
  %423 = and i8 %422, 16
  %conv557 = or i8 %421, %423
  store i8 %conv557, ptr %enc_flags554, align 2
  br label %if.end644

if.then561:                                       ; preds = %if.end538
  call void @__sanitizer_cov_trace_pc() #13
  %424 = trunc i32 %rate_n_flags.1 to i8
  %425 = lshr i8 %424, 4
  %426 = and i8 %425, 1
  %conv569 = add nuw nsw i8 %426, 1
  %nss = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 34
  %427 = ptrtoint ptr %nss to i32
  call void @__asan_store1_noabort(i32 %427)
  store i8 %conv569, ptr %nss, align 2
  %conv571 = and i8 %424, 15
  %rate_idx572 = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 33
  %428 = ptrtoint ptr %rate_idx572 to i32
  call void @__asan_store1_noabort(i32 %428)
  store i8 %conv571, ptr %rate_idx572, align 1
  %encoding573 = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 31
  %429 = ptrtoint ptr %encoding573 to i32
  call void @__asan_loadN_noabort(i32 %429, i32 2)
  %bf.load574 = load i16, ptr %encoding573, align 1
  %bf.clear575 = and i16 %bf.load574, 16383
  %bf.set576 = or i16 %bf.clear575, -32768
  store i16 %bf.set576, ptr %encoding573, align 1
  %430 = lshr i32 %rate_n_flags.1, 13
  %enc_flags579 = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 30
  %431 = ptrtoint ptr %enc_flags579 to i32
  call void @__asan_load1_noabort(i32 %431)
  %432 = load i8, ptr %enc_flags579, align 2
  %433 = trunc i32 %430 to i8
  %434 = and i8 %433, 16
  %and583 = lshr i32 %rate_n_flags.1, 12
  %435 = trunc i32 %and583 to i8
  %436 = and i8 %435, -128
  %conv582 = or i8 %436, %434
  %437 = or i8 %conv582, %432
  store i8 %437, ptr %enc_flags579, align 2
  br label %if.end644

if.else591:                                       ; preds = %if.end538
  br i1 %cmp111, label %if.else591.if.end644_crit_edge, label %if.then594

if.else591.if.end644_crit_edge:                   ; preds = %if.else591
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end644

if.then594:                                       ; preds = %if.else591
  %438 = ptrtoint ptr %band179 to i32
  call void @__asan_load1_noabort(i32 %438)
  %439 = load i8, ptr %band179, align 4
  %conv596 = zext i8 %439 to i32
  %call597 = call i32 @iwl_mvm_legacy_hw_idx_to_mac80211_idx(i32 noundef %rate_n_flags.1, i32 noundef %conv596) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call597)
  %440 = icmp ugt i32 %call597, 255
  br i1 %440, label %cleanup639, label %cleanup639.thread, !prof !148

cleanup639.thread:                                ; preds = %if.then594
  call void @__sanitizer_cov_trace_pc() #13
  %conv637 = trunc i32 %call597 to i8
  %rate_idx638 = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 33
  %441 = ptrtoint ptr %rate_idx638 to i32
  call void @__asan_store1_noabort(i32 %441)
  store i8 %conv637, ptr %rate_idx638, align 1
  br label %if.end644

cleanup639:                                       ; preds = %if.then594
  call void @__sanitizer_cov_trace_pc() #13
  %442 = ptrtoint ptr %band179 to i32
  call void @__asan_load1_noabort(i32 %442)
  %443 = load i8, ptr %band179, align 4
  %conv620 = zext i8 %443 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2001, i32 noundef 9, ptr noundef nonnull @.str.22, i32 noundef %rate_n_flags.1, i32 noundef %conv620) #11
  call void @kfree_skb_reason(ptr noundef nonnull %call.i947, i32 noundef 0) #11
  br label %out

if.end644:                                        ; preds = %cleanup639.thread, %if.else591.if.end644_crit_edge, %if.then561, %if.then541
  br i1 %tobool188.not, label %if.then646, label %if.end644.if.end684_crit_edge

if.end644.if.end684_crit_edge:                    ; preds = %if.end644
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end684

if.then646:                                       ; preds = %if.end644
  %444 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %444)
  %445 = load i16, ptr %add.ptr, align 2
  %446 = and i16 %445, -1024
  %447 = zext i16 %446 to i64
  call void @__sanitizer_cov_trace_switch(i64 %447, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %446, label %if.then646.if.end666_crit_edge [
    i16 -32768, label %if.then646.land.rhs654_crit_edge
    i16 20480, label %if.then646.land.rhs654_crit_edge1101
  ]

if.then646.land.rhs654_crit_edge1101:             ; preds = %if.then646
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs654

if.then646.land.rhs654_crit_edge:                 ; preds = %if.then646
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs654

if.then646.if.end666_crit_edge:                   ; preds = %if.then646
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end666

land.rhs654:                                      ; preds = %if.then646.land.rhs654_crit_edge, %if.then646.land.rhs654_crit_edge1101
  %sched_scan_pass_all = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 53
  %448 = ptrtoint ptr %sched_scan_pass_all to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %sched_scan_pass_all, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %449)
  %cmp655 = icmp eq i32 %449, 1
  br i1 %cmp655, label %if.then664, label %land.rhs654.if.end666_crit_edge, !prof !148

land.rhs654.if.end666_crit_edge:                  ; preds = %land.rhs654
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end666

if.then664:                                       ; preds = %land.rhs654
  call void @__sanitizer_cov_trace_pc() #13
  %450 = ptrtoint ptr %sched_scan_pass_all to i32
  call void @__asan_store4_noabort(i32 %450)
  store i32 2, ptr %sched_scan_pass_all, align 8
  br label %if.end666

if.end666:                                        ; preds = %if.then664, %land.rhs654.if.end666_crit_edge, %if.then646.if.end666_crit_edge
  %451 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %451)
  %452 = load i16, ptr %add.ptr, align 2
  %453 = and i16 %452, -1024
  %454 = zext i16 %453 to i64
  call void @__sanitizer_cov_trace_switch(i64 %454, ptr @__sancov_gen_cov_switch_values.55)
  switch i16 %453, label %if.end666.if.end684_crit_edge [
    i16 -32768, label %if.end666.if.then681_crit_edge
    i16 20480, label %if.end666.if.then681_crit_edge1102
  ], !prof !152

if.end666.if.then681_crit_edge1102:               ; preds = %if.end666
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then681

if.end666.if.then681_crit_edge:                   ; preds = %if.end666
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then681

if.end666.if.end684_crit_edge:                    ; preds = %if.end666
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end684

if.then681:                                       ; preds = %if.end666.if.then681_crit_edge, %if.end666.if.then681_crit_edge1102
  %call.i.i1022 = call i64 @ktime_get_with_offset(i32 noundef 1) #11
  %boottime_ns = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 8
  %455 = ptrtoint ptr %boottime_ns to i32
  call void @__asan_store8_noabort(i32 %455)
  store i64 %call.i.i1022, ptr %boottime_ns, align 8
  br label %if.end684

if.end684:                                        ; preds = %if.then681, %if.end666.if.end684_crit_edge, %if.end644.if.end684_crit_edge
  %call686 = call fastcc i32 @iwl_mvm_create_skb(ptr noundef %mvm, ptr noundef nonnull %call.i947, ptr noundef %add.ptr, i16 noundef zeroext %60, i8 noundef zeroext %crypt_len.21072, ptr noundef %rxb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call686)
  %tobool687.not = icmp eq i32 %call686, 0
  br i1 %tobool687.not, label %if.end689, label %if.then688

if.then688:                                       ; preds = %if.end684
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree_skb_reason(ptr noundef nonnull %call.i947, i32 noundef 0) #11
  br label %out

if.end689:                                        ; preds = %if.end684
  %data1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 19
  %456 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %data1.i.i, align 4
  %flag.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i947, i32 0, i32 3, i32 24
  %458 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %flag.i.i, align 8
  %and.i.i = and i32 %459, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i1023 = icmp eq i32 %and.i.i, 0
  %spec.select.idx.i.i = select i1 %tobool.not.i.i1023, i32 0, i32 12
  %spec.select.i.i1024 = getelementptr i8, ptr %457, i32 %spec.select.idx.i.i
  %and12.i.i = and i32 %459, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %tobool13.not.i.i = icmp eq i32 %and12.i.i, 0
  %data.1.idx.i.i = select i1 %tobool13.not.i.i, i32 0, i32 12
  %data.1.i.i = getelementptr i8, ptr %spec.select.i.i1024, i32 %data.1.idx.i.i
  %and18.i.i = lshr i32 %459, 26
  %460 = and i32 %and18.i.i, 4
  %data.2.i.i = getelementptr i8, ptr %data.1.i.i, i32 %460
  %and24.i.i = and i32 %459, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %tobool25.not.i.i = icmp eq i32 %and24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.end689.iwl_mvm_skb_get_hdr.exit.i_crit_edge, label %if.then26.i.i

if.end689.iwl_mvm_skb_get_hdr.exit.i_crit_edge:   ; preds = %if.end689
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_skb_get_hdr.exit.i

if.then26.i.i:                                    ; preds = %if.end689
  call void @__sanitizer_cov_trace_pc() #13
  %len.i.i = getelementptr inbounds %struct.ieee80211_vendor_radiotap, ptr %data.2.i.i, i32 0, i32 5
  %461 = ptrtoint ptr %len.i.i to i32
  call void @__asan_loadN_noabort(i32 %461, i32 2)
  %462 = load i16, ptr %len.i.i, align 1
  %conv.i.i1025 = zext i16 %462 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i1025, 12
  %pad.i.i = getelementptr inbounds %struct.ieee80211_vendor_radiotap, ptr %data.2.i.i, i32 0, i32 4
  %463 = ptrtoint ptr %pad.i.i to i32
  call void @__asan_load1_noabort(i32 %463)
  %464 = load i8, ptr %pad.i.i, align 1
  %conv27.i.i = zext i8 %464 to i32
  %add28.i.i = add nuw nsw i32 %add.i.i, %conv27.i.i
  %add.ptr29.i.i = getelementptr i8, ptr %data.2.i.i, i32 %add28.i.i
  br label %iwl_mvm_skb_get_hdr.exit.i

iwl_mvm_skb_get_hdr.exit.i:                       ; preds = %if.then26.i.i, %if.end689.iwl_mvm_skb_get_hdr.exit.i_crit_edge
  %data.3.i.i = phi ptr [ %add.ptr29.i.i, %if.then26.i.i ], [ %data.2.i.i, %if.end689.iwl_mvm_skb_get_hdr.exit.i_crit_edge ]
  %reorder_data.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 3
  %465 = ptrtoint ptr %reorder_data.i to i32
  call void @__asan_loadN_noabort(i32 %465, i32 4)
  %466 = load i32, ptr %reorder_data.i, align 1
  %467 = call i32 @llvm.bswap.i32(i32 %466) #11
  %468 = ptrtoint ptr %mac_flags2 to i32
  call void @__asan_load1_noabort(i32 %468)
  %469 = load i8, ptr %mac_flags2, align 1
  %470 = and i8 %469, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %470)
  %tobool.not.i1027 = icmp eq i8 %470, 0
  %amsdu_info.i1028 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %471 = ptrtoint ptr %amsdu_info.i1028 to i32
  call void @__asan_load1_noabort(i32 %471)
  %472 = load i8, ptr %amsdu_info.i1028, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %472)
  %tobool4.not.i = icmp sgt i8 %472, -1
  %473 = ptrtoint ptr %data.3.i.i to i32
  call void @__asan_load2_noabort(i32 %473)
  %474 = load i16, ptr %data.3.i.i, align 2
  %475 = and i16 %474, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %475)
  %cmp.i.i.i.i1029 = icmp eq i16 %475, 3
  %retval.0.v.i.i.i1030 = select i1 %cmp.i.i.i.i1029, i32 30, i32 24
  %retval.0.i.i.i1031 = getelementptr i8, ptr %data.3.i.i, i32 %retval.0.v.i.i.i1030
  %476 = ptrtoint ptr %retval.0.i.i.i1031 to i32
  call void @__asan_load1_noabort(i32 %476)
  %477 = load i8, ptr %retval.0.i.i.i1031, align 1
  %478 = and i8 %477, 15
  %479 = and i8 %472, 127
  %and11.i1032 = lshr i32 %467, 24
  %conv12.i = and i32 %and11.i1032, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %conv12.i)
  %cmp.i1033 = icmp eq i32 %conv12.i, 127
  br i1 %cmp.i1033, label %iwl_mvm_skb_get_hdr.exit.i.if.then691_crit_edge, label %if.end.i1035

iwl_mvm_skb_get_hdr.exit.i.if.then691_crit_edge:  ; preds = %iwl_mvm_skb_get_hdr.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then691

if.end.i1035:                                     ; preds = %iwl_mvm_skb_get_hdr.exit.i
  %cmp.i.i1034 = icmp ugt ptr %sta.1, inttoptr (i32 -4096 to ptr)
  %spec.select.i440.i = or i1 %tobool324.not, %cmp.i.i1034
  br i1 %spec.select.i440.i, label %land.rhs.i1036, label %if.end57.i1037

land.rhs.i1036:                                   ; preds = %if.end.i1035
  %.b434.i = load i1, ptr @iwl_mvm_reorder.__already_done, align 1
  br i1 %.b434.i, label %land.rhs.i1036.if.then691_crit_edge, label %if.then25.i, !prof !149

land.rhs.i1036.if.then691_crit_edge:              ; preds = %land.rhs.i1036
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then691

if.then25.i:                                      ; preds = %land.rhs.i1036
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_reorder.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 968, i32 noundef 9, ptr noundef nonnull @.str.42) #11
  br label %if.then691

if.end57.i1037:                                   ; preds = %if.end.i1035
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta.1, i32 0, i32 29
  %480 = and i16 %474, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31744, i16 %480)
  %cmp.i441.i = icmp eq i16 %480, -31744
  br i1 %cmp.i441.i, label %if.end65.i, label %land.lhs.true.i1038

land.lhs.true.i1038:                              ; preds = %if.end57.i1037
  %481 = and i16 %474, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %481)
  %cmp.i442.i = icmp eq i16 %481, -30720
  br i1 %cmp.i442.i, label %lor.lhs.false.i1041, label %land.lhs.true.i1038.if.then691_crit_edge

land.lhs.true.i1038.if.then691_crit_edge:         ; preds = %land.lhs.true.i1038
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then691

lor.lhs.false.i1041:                              ; preds = %land.lhs.true.i1038
  %addr1.i1039 = getelementptr inbounds %struct.ieee80211_hdr, ptr %data.3.i.i, i32 0, i32 2
  %482 = ptrtoint ptr %addr1.i1039 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %addr1.i1039, align 4
  %484 = and i32 %483, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %484)
  %tobool.i.i1040 = icmp eq i32 %484, 0
  %485 = and i16 %474, 19456
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %485)
  %cmp.i443.i = icmp eq i16 %485, 2048
  %or.cond482.i = select i1 %tobool.i.i1040, i1 %cmp.i443.i, i1 false
  br i1 %or.cond482.i, label %lor.lhs.false.i1041.if.end77.i_crit_edge, label %lor.lhs.false.i1041.if.then691_crit_edge, !prof !153

lor.lhs.false.i1041.if.then691_crit_edge:         ; preds = %lor.lhs.false.i1041
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then691

lor.lhs.false.i1041.if.end77.i_crit_edge:         ; preds = %lor.lhs.false.i1041
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77.i

if.end65.i:                                       ; preds = %if.end57.i1037
  %.old.i = and i16 %474, 19456
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %.old.i)
  %cmp.i443.old.i = icmp eq i16 %.old.i, 2048
  br i1 %cmp.i443.old.i, label %if.end65.i.if.end77.i_crit_edge, label %if.end65.i.if.then691_crit_edge, !prof !149

if.end65.i.if.then691_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then691

if.end65.i.if.end77.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.end65.i.if.end77.i_crit_edge, %lor.lhs.false.i1041.if.end77.i_crit_edge
  %arrayidx.i1042 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 167, i32 %conv12.i
  %486 = ptrtoint ptr %arrayidx.i1042 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load volatile ptr, ptr %arrayidx.i1042, align 4
  %call83.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i)
  %tobool84.not.i = icmp eq i32 %call83.i, 0
  br i1 %tobool84.not.i, label %land.lhs.true85.i, label %if.end77.i.do.end93.i_crit_edge

if.end77.i.do.end93.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end93.i

land.lhs.true85.i:                                ; preds = %if.end77.i
  %call86.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i)
  %tobool87.not.i = icmp eq i32 %call86.i, 0
  br i1 %tobool87.not.i, label %land.lhs.true85.i.do.end93.i_crit_edge, label %land.lhs.true88.i

land.lhs.true85.i.do.end93.i_crit_edge:           ; preds = %land.lhs.true85.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end93.i

land.lhs.true88.i:                                ; preds = %land.lhs.true85.i
  %.b432433.i = load i1, ptr @iwl_mvm_reorder.__warned, align 1
  br i1 %.b432433.i, label %land.lhs.true88.i.do.end93.i_crit_edge, label %if.then90.i

land.lhs.true88.i.do.end93.i_crit_edge:           ; preds = %land.lhs.true88.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end93.i

if.then90.i:                                      ; preds = %land.lhs.true88.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_reorder.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 982, ptr noundef nonnull @.str.1) #11
  br label %do.end93.i

do.end93.i:                                       ; preds = %if.then90.i, %land.lhs.true88.i.do.end93.i_crit_edge, %land.lhs.true85.i.do.end93.i_crit_edge, %if.end77.i.do.end93.i_crit_edge
  %tobool95.not.i = icmp eq ptr %487, null
  br i1 %tobool95.not.i, label %do.end100.i, label %if.end104.i

do.end100.i:                                      ; preds = %do.end93.i
  call void @__sanitizer_cov_trace_pc() #13
  %488 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %489, i32 noundef 16777216, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_reorder, ptr noundef nonnull @.str.40, i32 noundef %conv12.i, i32 noundef %467) #11
  br label %if.then691

if.end104.i:                                      ; preds = %do.end93.i
  %conv106.i = zext i8 %478 to i32
  %tid107.i = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %487, i32 0, i32 2
  %490 = ptrtoint ptr %tid107.i to i32
  call void @__asan_load1_noabort(i32 %490)
  %491 = load i8, ptr %tid107.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %478, i8 %491)
  %cmp109.not.i = icmp eq i8 %478, %491
  br i1 %cmp109.not.i, label %lor.rhs.i, label %if.end104.i.do.end130.i_crit_edge

if.end104.i.do.end130.i_crit_edge:                ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end130.i

lor.rhs.i:                                        ; preds = %if.end104.i
  %492 = ptrtoint ptr %drv_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %drv_priv.i.i, align 8
  %sta_id111.i = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %487, i32 0, i32 1
  %494 = ptrtoint ptr %sta_id111.i to i32
  call void @__asan_load1_noabort(i32 %494)
  %495 = load i8, ptr %sta_id111.i, align 8
  %conv112.i = zext i8 %495 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %493, i32 %conv112.i)
  %cmp113.not.i = icmp eq i32 %493, %conv112.i
  br i1 %cmp113.not.i, label %if.end153.i, label %lor.rhs.i.do.end130.i_crit_edge, !prof !149

lor.rhs.i.do.end130.i_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end130.i

do.end130.i:                                      ; preds = %lor.rhs.i.do.end130.i_crit_edge, %if.end104.i.do.end130.i_crit_edge
  %sta_id132.i = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %487, i32 0, i32 1
  %496 = ptrtoint ptr %sta_id132.i to i32
  call void @__asan_load1_noabort(i32 %496)
  %497 = load i8, ptr %sta_id132.i, align 8
  %conv133.i = zext i8 %497 to i32
  %conv135.i = zext i8 %491 to i32
  %498 = ptrtoint ptr %drv_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %drv_priv.i.i, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 993, i32 noundef 9, ptr noundef nonnull @.str.43, i32 noundef %conv12.i, i32 noundef %conv133.i, i32 noundef %conv135.i, i32 noundef %499, i32 noundef %conv106.i) #11
  br label %if.then691

if.end153.i:                                      ; preds = %lor.rhs.i
  %500 = trunc i32 %467 to i16
  %conv155.i = and i16 %500, 4095
  %and156.i = lshr i32 %467, 12
  %501 = trunc i32 %and156.i to i16
  %conv158.i = and i16 %501, 4095
  %arrayidx159.i = getelementptr %struct.iwl_mvm_baid_data, ptr %487, i32 0, i32 11, i32 %queue
  %entries_per_queue.i = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %487, i32 0, i32 5
  %502 = ptrtoint ptr %entries_per_queue.i to i32
  call void @__asan_load2_noabort(i32 %502)
  %503 = load i16, ptr %entries_per_queue.i, align 2
  %conv161.i = zext i16 %503 to i32
  %mul.i1043 = mul i32 %conv161.i, %queue
  %arrayidx162.i = getelementptr %struct.iwl_mvm_baid_data, ptr %487, i32 0, i32 12, i32 %mul.i1043
  %lock.i = getelementptr %struct.iwl_mvm_baid_data, ptr %487, i32 0, i32 11, i32 %queue, i32 9
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #11
  %valid.i = getelementptr %struct.iwl_mvm_baid_data, ptr %487, i32 0, i32 11, i32 %queue, i32 8
  %504 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %504)
  %505 = load i8, ptr %valid.i, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %505)
  %tobool163.not.i = icmp eq i8 %505, 0
  br i1 %tobool163.not.i, label %if.then164.i, label %if.end153.i.if.end171.i_crit_edge

if.end153.i.if.end171.i_crit_edge:                ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171.i

if.then164.i:                                     ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %467)
  %tobool166.not.i = icmp sgt i32 %467, -1
  br i1 %tobool166.not.i, label %if.end169.i, label %if.then167.i

if.then167.i:                                     ; preds = %if.then164.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #11
  br label %if.then691

if.end169.i:                                      ; preds = %if.then164.i
  call void @__sanitizer_cov_trace_pc() #13
  %506 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %506)
  store i8 1, ptr %valid.i, align 1
  br label %if.end171.i

if.end171.i:                                      ; preds = %if.end169.i, %if.end153.i.if.end171.i_crit_edge
  %507 = ptrtoint ptr %data.3.i.i to i32
  call void @__asan_load2_noabort(i32 %507)
  %508 = load i16, ptr %data.3.i.i, align 2
  %509 = and i16 %508, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31744, i16 %509)
  %cmp.i444.i = icmp eq i16 %509, -31744
  br i1 %cmp.i444.i, label %if.then174.i, label %if.end175.i

if.then174.i:                                     ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @iwl_mvm_release_frames(ptr noundef %mvm, ptr noundef nonnull %sta.1, ptr noundef %napi, ptr noundef nonnull %487, ptr noundef %arrayidx159.i, i16 noundef zeroext %conv155.i, i32 noundef 0) #11
  br label %drop.i

if.end175.i:                                      ; preds = %if.end171.i
  %510 = ptrtoint ptr %arrayidx159.i to i32
  call void @__asan_load2_noabort(i32 %510)
  %511 = load i16, ptr %arrayidx159.i, align 128
  %buf_size.i = getelementptr %struct.iwl_mvm_baid_data, ptr %487, i32 0, i32 11, i32 %queue, i32 2
  %512 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load2_noabort(i32 %512)
  %513 = load i16, ptr %buf_size.i, align 4
  %add.i1044 = add i16 %513, %511
  %conv.i.i.i = zext i16 %conv155.i to i32
  %conv1.i.i.i1045 = zext i16 %add.i1044 to i32
  %sub.i.i.i1046 = sub nsw i32 %conv.i.i.i, %conv1.i.i.i1045
  %and.i.i.i = and i32 %sub.i.i.i1046, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %and.i.i.i)
  %cmp.i.i.i1047 = icmp ugt i32 %and.i.i.i, 2048
  br i1 %cmp.i.i.i1047, label %iwl_mvm_is_sn_less.exit.i, label %if.end175.i.if.then189.i_crit_edge

if.end175.i.if.then189.i_crit_edge:               ; preds = %if.end175.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then189.i

iwl_mvm_is_sn_less.exit.i:                        ; preds = %if.end175.i
  %conv1.i7.i.i = zext i16 %511 to i32
  %sub.i8.i.i = sub nsw i32 %conv.i.i.i, %conv1.i7.i.i
  %and.i9.i.i = and i32 %sub.i8.i.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %and.i9.i.i)
  %cmp.i10.i.i = icmp ult i32 %and.i9.i.i, 2049
  br i1 %cmp.i10.i.i, label %lor.lhs.false181.i, label %iwl_mvm_is_sn_less.exit.i.if.then189.i_crit_edge

iwl_mvm_is_sn_less.exit.i.if.then189.i_crit_edge: ; preds = %iwl_mvm_is_sn_less.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then189.i

lor.lhs.false181.i:                               ; preds = %iwl_mvm_is_sn_less.exit.i
  %sub.i.i = sub nsw i32 %and156.i, %conv1.i.i.i1045
  %and.i446.i = and i32 %sub.i.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %and.i446.i)
  %cmp.i447.i = icmp ugt i32 %and.i446.i, 2048
  br i1 %cmp.i447.i, label %lor.lhs.false181.i.if.end195.i_crit_edge, label %lor.lhs.false181.i.if.then189.i_crit_edge

lor.lhs.false181.i.if.then189.i_crit_edge:        ; preds = %lor.lhs.false181.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then189.i

lor.lhs.false181.i.if.end195.i_crit_edge:         ; preds = %lor.lhs.false181.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end195.i

if.then189.i:                                     ; preds = %lor.lhs.false181.i.if.then189.i_crit_edge, %iwl_mvm_is_sn_less.exit.i.if.then189.i_crit_edge, %if.end175.i.if.then189.i_crit_edge
  %sub.i450.i = sub nsw i32 %and156.i, %conv.i.i.i
  %and.i451.i = and i32 %sub.i450.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %and.i451.i)
  %cmp.i452.i = icmp ugt i32 %and.i451.i, 2048
  %conv158.conv155.i = select i1 %cmp.i452.i, i16 %conv158.i, i16 %conv155.i
  call fastcc void @iwl_mvm_release_frames(ptr noundef %mvm, ptr noundef nonnull %sta.1, ptr noundef %napi, ptr noundef nonnull %487, ptr noundef %arrayidx159.i, i16 noundef zeroext %conv158.conv155.i, i32 noundef 1) #11
  br label %if.end195.i

if.end195.i:                                      ; preds = %if.then189.i, %lor.lhs.false181.i.if.end195.i_crit_edge
  %514 = ptrtoint ptr %device_timestamp to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %device_timestamp, align 8
  %consec_oldsn_ampdu_gp2.i.i = getelementptr %struct.iwl_mvm_baid_data, ptr %487, i32 0, i32 11, i32 %queue, i32 12
  %516 = ptrtoint ptr %consec_oldsn_ampdu_gp2.i.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load i32, ptr %consec_oldsn_ampdu_gp2.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %517, i32 %515)
  %cmp.not.i.i1048 = icmp eq i32 %517, %515
  %consec_oldsn_prev_drop3.i.i = getelementptr %struct.iwl_mvm_baid_data, ptr %487, i32 0, i32 11, i32 %queue, i32 13
  %518 = ptrtoint ptr %consec_oldsn_prev_drop3.i.i to i32
  call void @__asan_load1_noabort(i32 %518)
  %bf.load4.i.i = load i8, ptr %consec_oldsn_prev_drop3.i.i, align 4
  br i1 %cmp.not.i.i1048, label %if.else.i.i1051, label %if.then.i.i1049

if.then.i.i1049:                                  ; preds = %if.end195.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load4.i.i)
  %tobool.not.i453.i = icmp sgt i8 %bf.load4.i.i, -1
  br i1 %tobool.not.i453.i, label %if.then1.i.i, label %if.then.i.i1049.if.end.i.i1050_crit_edge

if.then.i.i1049.if.end.i.i1050_crit_edge:         ; preds = %if.then.i.i1049
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1050

if.then1.i.i:                                     ; preds = %if.then.i.i1049
  call void @__sanitizer_cov_trace_pc() #13
  %consec_oldsn_drops.i.i = getelementptr %struct.iwl_mvm_baid_data, ptr %487, i32 0, i32 11, i32 %queue, i32 11
  %519 = ptrtoint ptr %consec_oldsn_drops.i.i to i32
  call void @__asan_store4_noabort(i32 %519)
  store i32 0, ptr %consec_oldsn_drops.i.i, align 4
  br label %if.end.i.i1050

if.end.i.i1050:                                   ; preds = %if.then1.i.i, %if.then.i.i1049.if.end.i.i1050_crit_edge
  %520 = ptrtoint ptr %consec_oldsn_ampdu_gp2.i.i to i32
  call void @__asan_store4_noabort(i32 %520)
  store i32 %515, ptr %consec_oldsn_ampdu_gp2.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %467)
  %tobool11.not.old.i.i = icmp sgt i32 %467, -1
  br i1 %tobool11.not.old.i.i, label %if.end.i.i1050.iwl_mvm_oldsn_workaround.exit.i_crit_edge, label %if.end.i.i1050.if.end13.i.i_crit_edge

if.end.i.i1050.if.end13.i.i_crit_edge:            ; preds = %if.end.i.i1050
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i.i

if.end.i.i1050.iwl_mvm_oldsn_workaround.exit.i_crit_edge: ; preds = %if.end.i.i1050
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_oldsn_workaround.exit.i

if.else.i.i1051:                                  ; preds = %if.end195.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load4.i.i)
  %tobool7.not.i.i = icmp slt i8 %bf.load4.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %467)
  %tobool11.not.i.i = icmp sgt i32 %467, -1
  %or.cond.i.i = or i1 %tobool11.not.i.i, %tobool7.not.i.i
  br i1 %or.cond.i.i, label %if.else.i.i1051.iwl_mvm_oldsn_workaround.exit.i_crit_edge, label %if.else.i.i1051.if.end13.i.i_crit_edge

if.else.i.i1051.if.end13.i.i_crit_edge:           ; preds = %if.else.i.i1051
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i.i

if.else.i.i1051.iwl_mvm_oldsn_workaround.exit.i_crit_edge: ; preds = %if.else.i.i1051
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_oldsn_workaround.exit.i

if.end13.i.i:                                     ; preds = %if.else.i.i1051.if.end13.i.i_crit_edge, %if.end.i.i1050.if.end13.i.i_crit_edge
  %521 = ptrtoint ptr %consec_oldsn_prev_drop3.i.i to i32
  call void @__asan_load1_noabort(i32 %521)
  %bf.load15.i.i = load i8, ptr %consec_oldsn_prev_drop3.i.i, align 4
  %bf.set.i.i = or i8 %bf.load15.i.i, -128
  store i8 %bf.set.i.i, ptr %consec_oldsn_prev_drop3.i.i, align 4
  %consec_oldsn_drops16.i.i = getelementptr %struct.iwl_mvm_baid_data, ptr %487, i32 0, i32 11, i32 %queue, i32 11
  %522 = ptrtoint ptr %consec_oldsn_drops16.i.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %consec_oldsn_drops16.i.i, align 4
  %inc.i.i = add i32 %523, 1
  store i32 %inc.i.i, ptr %consec_oldsn_drops16.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %inc.i.i)
  %cmp18.i.i = icmp eq i32 %inc.i.i, 20
  br i1 %cmp18.i.i, label %do.end.i.i1052, label %if.end13.i.i.iwl_mvm_oldsn_workaround.exit.i_crit_edge

if.end13.i.i.iwl_mvm_oldsn_workaround.exit.i_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_oldsn_workaround.exit.i

do.end.i.i1052:                                   ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %524 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %mvm, align 8
  %addr.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta.1, i32 0, i32 1
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %525, ptr noundef nonnull @.str.44, i32 noundef 20, ptr noundef %addr.i.i, i32 noundef %queue, i32 noundef %conv106.i) #11
  %vif.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta.1, i32 17, i32 28, i32 10
  %526 = ptrtoint ptr %vif.i.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %vif.i.i, align 8
  %shl.i.i = shl nuw nsw i32 1, %conv106.i
  %conv.i454.i = trunc i32 %shl.i.i to i16
  call void @ieee80211_stop_rx_ba_session(ptr noundef %527, i16 noundef zeroext %conv.i454.i, ptr noundef %addr.i.i) #11
  %528 = ptrtoint ptr %consec_oldsn_prev_drop3.i.i to i32
  call void @__asan_load1_noabort(i32 %528)
  %bf.load26.i.i = load i8, ptr %consec_oldsn_prev_drop3.i.i, align 4
  %bf.clear27.i.i = and i8 %bf.load26.i.i, 127
  store i8 %bf.clear27.i.i, ptr %consec_oldsn_prev_drop3.i.i, align 4
  %529 = ptrtoint ptr %consec_oldsn_drops16.i.i to i32
  call void @__asan_store4_noabort(i32 %529)
  store i32 0, ptr %consec_oldsn_drops16.i.i, align 4
  br label %iwl_mvm_oldsn_workaround.exit.i

iwl_mvm_oldsn_workaround.exit.i:                  ; preds = %do.end.i.i1052, %if.end13.i.i.iwl_mvm_oldsn_workaround.exit.i_crit_edge, %if.else.i.i1051.iwl_mvm_oldsn_workaround.exit.i_crit_edge, %if.end.i.i1050.iwl_mvm_oldsn_workaround.exit.i_crit_edge
  %530 = ptrtoint ptr %arrayidx159.i to i32
  call void @__asan_load2_noabort(i32 %530)
  %531 = load i16, ptr %arrayidx159.i, align 128
  %conv.i455.i = zext i16 %conv158.i to i32
  %conv1.i456.i = zext i16 %531 to i32
  %sub.i457.i = sub nsw i32 %conv.i455.i, %conv1.i456.i
  %and.i458.i = and i32 %sub.i457.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %and.i458.i)
  %cmp.i459.i = icmp ugt i32 %and.i458.i, 2048
  br i1 %cmp.i459.i, label %iwl_mvm_oldsn_workaround.exit.i.drop.i_crit_edge, label %if.end200.i

iwl_mvm_oldsn_workaround.exit.i.drop.i_crit_edge: ; preds = %iwl_mvm_oldsn_workaround.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop.i

if.end200.i:                                      ; preds = %iwl_mvm_oldsn_workaround.exit.i
  %num_stored.i = getelementptr %struct.iwl_mvm_baid_data, ptr %487, i32 0, i32 11, i32 %queue, i32 1
  %532 = ptrtoint ptr %num_stored.i to i32
  call void @__asan_load2_noabort(i32 %532)
  %533 = load i16, ptr %num_stored.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %533)
  %tobool201.not.i = icmp eq i16 %533, 0
  br i1 %tobool201.not.i, label %land.lhs.true202.i, label %if.end200.i.if.end257.i_crit_edge

if.end200.i.if.end257.i_crit_edge:                ; preds = %if.end200.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end257.i

land.lhs.true202.i:                               ; preds = %if.end200.i
  %sub.i462.i = sub nsw i32 %conv.i455.i, %conv.i.i.i
  %and.i463.i = and i32 %sub.i462.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %and.i463.i)
  %cmp.i464.i = icmp ugt i32 %and.i463.i, 2048
  br i1 %cmp.i464.i, label %if.then205.i, label %land.lhs.true231.i

if.then205.i:                                     ; preds = %land.lhs.true202.i
  %sub.i.i467.i = sub nsw i32 %conv1.i456.i, %conv.i.i.i
  %and.i.i468.i = and i32 %sub.i.i467.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %and.i.i468.i)
  %cmp.i.i469.i = icmp ugt i32 %and.i.i468.i, 2048
  br i1 %cmp.i.i469.i, label %iwl_mvm_is_sn_less.exit476.i, label %if.then205.i.if.end226.i_crit_edge

if.then205.i.if.end226.i_crit_edge:               ; preds = %if.then205.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end226.i

iwl_mvm_is_sn_less.exit476.i:                     ; preds = %if.then205.i
  %534 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load2_noabort(i32 %534)
  %535 = load i16, ptr %buf_size.i, align 4
  %sub.i470.i = sub i16 %500, %535
  %conv1.i7.i471.i = zext i16 %sub.i470.i to i32
  %sub.i8.i472.i = sub nsw i32 %conv1.i456.i, %conv1.i7.i471.i
  %and.i9.i473.i = and i32 %sub.i8.i472.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %and.i9.i473.i)
  %cmp.i10.i474.i = icmp ult i32 %and.i9.i473.i, 2049
  %tobool4.not.not.i = xor i1 %tobool4.not.i, true
  %brmerge.i = select i1 %tobool.not.i1027, i1 true, i1 %tobool4.not.not.i
  %or.cond.i1053 = select i1 %cmp.i10.i474.i, i1 %brmerge.i, i1 false
  br i1 %or.cond.i1053, label %if.end224.i, label %iwl_mvm_is_sn_less.exit476.i.if.end226.i_crit_edge

iwl_mvm_is_sn_less.exit476.i.if.end226.i_crit_edge: ; preds = %iwl_mvm_is_sn_less.exit476.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end226.i

if.end224.i:                                      ; preds = %iwl_mvm_is_sn_less.exit476.i
  call void @__sanitizer_cov_trace_pc() #13
  %536 = ptrtoint ptr %arrayidx159.i to i32
  call void @__asan_store2_noabort(i32 %536)
  store i16 %conv155.i, ptr %arrayidx159.i, align 128
  br label %if.end226.i

if.end226.i:                                      ; preds = %if.end224.i, %iwl_mvm_is_sn_less.exit476.i.if.end226.i_crit_edge, %if.then205.i.if.end226.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #11
  br label %if.then691

land.lhs.true231.i:                               ; preds = %land.lhs.true202.i
  call void @__sanitizer_cov_trace_cmp2(i16 %conv158.i, i16 %531)
  %cmp235.i = icmp eq i16 %conv158.i, %531
  br i1 %cmp235.i, label %if.then237.i, label %land.lhs.true231.i.if.end257.i_crit_edge

land.lhs.true231.i.if.end257.i_crit_edge:         ; preds = %land.lhs.true231.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end257.i

if.then237.i:                                     ; preds = %land.lhs.true231.i
  %tobool4.not.not436.i = xor i1 %tobool4.not.i, true
  %brmerge437.i = select i1 %tobool.not.i1027, i1 true, i1 %tobool4.not.not436.i
  br i1 %brmerge437.i, label %if.end251.i, label %if.then237.i.if.end255.i_crit_edge

if.then237.i.if.end255.i_crit_edge:               ; preds = %if.then237.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end255.i

if.end251.i:                                      ; preds = %if.then237.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i.i.i1054 = add i16 %501, 1
  %and.i.i477.i = and i16 %add.i.i.i1054, 4095
  %537 = ptrtoint ptr %arrayidx159.i to i32
  call void @__asan_store2_noabort(i32 %537)
  store i16 %and.i.i477.i, ptr %arrayidx159.i, align 128
  br label %if.end255.i

if.end255.i:                                      ; preds = %if.end251.i, %if.then237.i.if.end255.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #11
  br label %if.then691

if.end257.i:                                      ; preds = %land.lhs.true231.i.if.end257.i_crit_edge, %if.end200.i.if.end257.i_crit_edge
  %538 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load2_noabort(i32 %538)
  %539 = load i16, ptr %buf_size.i, align 4
  %540 = urem i16 %conv158.i, %539
  %rem.i = zext i16 %540 to i32
  %arrayidx261.i = getelementptr %struct.iwl_mvm_reorder_buf_entry, ptr %arrayidx162.i, i32 %rem.i
  %prev.i.i = getelementptr inbounds %struct.anon.65, ptr %arrayidx261.i, i32 0, i32 1
  %541 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load volatile ptr, ptr %prev.i.i, align 4
  %cmp.i478.i = icmp eq ptr %542, %arrayidx261.i
  %tobool263.not483.i = icmp eq ptr %542, null
  %tobool263.not.i = or i1 %tobool263.not483.i, %cmp.i478.i
  %tobool.not.not.i = xor i1 %tobool.not.i1027, true
  %brmerge438.i = select i1 %tobool263.not.i, i1 true, i1 %tobool.not.not.i
  br i1 %brmerge438.i, label %if.else.i1055, label %if.end257.i.drop.i_crit_edge

if.end257.i.drop.i_crit_edge:                     ; preds = %if.end257.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop.i

if.else.i1055:                                    ; preds = %if.end257.i
  br i1 %tobool263.not.i, label %if.else.i1055.if.end280.i_crit_edge, label %land.lhs.true268.i

if.else.i1055.if.end280.i_crit_edge:              ; preds = %if.else.i1055
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end280.i

land.lhs.true268.i:                               ; preds = %if.else.i1055
  %last_amsdu.i = getelementptr %struct.iwl_mvm_baid_data, ptr %487, i32 0, i32 11, i32 %queue, i32 4
  %543 = ptrtoint ptr %last_amsdu.i to i32
  call void @__asan_load2_noabort(i32 %543)
  %544 = load i16, ptr %last_amsdu.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %conv158.i, i16 %544)
  %cmp271.not.i = icmp eq i16 %conv158.i, %544
  br i1 %cmp271.not.i, label %lor.lhs.false273.i, label %land.lhs.true268.i.drop.i_crit_edge

land.lhs.true268.i.drop.i_crit_edge:              ; preds = %land.lhs.true268.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop.i

lor.lhs.false273.i:                               ; preds = %land.lhs.true268.i
  %last_sub_index.i = getelementptr %struct.iwl_mvm_baid_data, ptr %487, i32 0, i32 11, i32 %queue, i32 5
  %545 = ptrtoint ptr %last_sub_index.i to i32
  call void @__asan_load1_noabort(i32 %545)
  %546 = load i8, ptr %last_sub_index.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %546, i8 %479)
  %cmp276.not.i = icmp ult i8 %546, %479
  br i1 %cmp276.not.i, label %lor.lhs.false273.i.if.end280.i_crit_edge, label %lor.lhs.false273.i.drop.i_crit_edge

lor.lhs.false273.i.drop.i_crit_edge:              ; preds = %lor.lhs.false273.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop.i

lor.lhs.false273.i.if.end280.i_crit_edge:         ; preds = %lor.lhs.false273.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end280.i

if.end280.i:                                      ; preds = %lor.lhs.false273.i.if.end280.i_crit_edge, %if.else.i1055.if.end280.i_crit_edge
  %547 = ptrtoint ptr %call.i947 to i32
  call void @__asan_store4_noabort(i32 %547)
  store volatile ptr %arrayidx261.i, ptr %call.i947, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.44, ptr %call.i947, i32 0, i32 1
  %548 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %548)
  store volatile ptr %542, ptr %prev10.i.i.i.i, align 4
  %549 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %549)
  store volatile ptr %call.i947, ptr %prev.i.i, align 4
  %550 = ptrtoint ptr %542 to i32
  call void @__asan_store4_noabort(i32 %550)
  store volatile ptr %call.i947, ptr %542, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %arrayidx261.i, i32 0, i32 1
  %551 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load i32, ptr %qlen.i.i.i.i, align 4
  %add.i.i.i.i1056 = add i32 %552, 1
  store volatile i32 %add.i.i.i.i1056, ptr %qlen.i.i.i.i, align 4
  %553 = ptrtoint ptr %num_stored.i to i32
  call void @__asan_load2_noabort(i32 %553)
  %554 = load i16, ptr %num_stored.i, align 2
  %inc.i = add i16 %554, 1
  store i16 %inc.i, ptr %num_stored.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %555 = load volatile i32, ptr @jiffies, align 128
  %reorder_time.i = getelementptr inbounds %struct._iwl_mvm_reorder_buf_entry, ptr %arrayidx261.i, i32 0, i32 1
  %556 = ptrtoint ptr %reorder_time.i to i32
  call void @__asan_store4_noabort(i32 %556)
  store i32 %555, ptr %reorder_time.i, align 8
  br i1 %tobool.not.i1027, label %if.end280.i.if.then296.i_crit_edge, label %if.then288.i

if.end280.i.if.then296.i_crit_edge:               ; preds = %if.end280.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then296.i

if.then288.i:                                     ; preds = %if.end280.i
  %last_amsdu289.i = getelementptr %struct.iwl_mvm_baid_data, ptr %487, i32 0, i32 11, i32 %queue, i32 4
  %557 = ptrtoint ptr %last_amsdu289.i to i32
  call void @__asan_store2_noabort(i32 %557)
  store i16 %conv158.i, ptr %last_amsdu289.i, align 4
  %last_sub_index290.i = getelementptr %struct.iwl_mvm_baid_data, ptr %487, i32 0, i32 11, i32 %queue, i32 5
  %558 = ptrtoint ptr %last_sub_index290.i to i32
  call void @__asan_store1_noabort(i32 %558)
  store i8 %479, ptr %last_sub_index290.i, align 2
  br i1 %tobool4.not.i, label %if.then288.i.if.end297.i_crit_edge, label %if.then288.i.if.then296.i_crit_edge

if.then288.i.if.then296.i_crit_edge:              ; preds = %if.then288.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then296.i

if.then288.i.if.end297.i_crit_edge:               ; preds = %if.then288.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end297.i

if.then296.i:                                     ; preds = %if.then288.i.if.then296.i_crit_edge, %if.end280.i.if.then296.i_crit_edge
  call fastcc void @iwl_mvm_release_frames(ptr noundef %mvm, ptr noundef nonnull %sta.1, ptr noundef %napi, ptr noundef nonnull %487, ptr noundef %arrayidx159.i, i16 noundef zeroext %conv155.i, i32 noundef 1) #11
  br label %if.end297.i

if.end297.i:                                      ; preds = %if.then296.i, %if.then288.i.if.end297.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #11
  br label %out

drop.i:                                           ; preds = %lor.lhs.false273.i.drop.i_crit_edge, %land.lhs.true268.i.drop.i_crit_edge, %if.end257.i.drop.i_crit_edge, %iwl_mvm_oldsn_workaround.exit.i.drop.i_crit_edge, %if.then174.i
  call void @kfree_skb_reason(ptr noundef nonnull %call.i947, i32 noundef 0) #11
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #11
  br label %out

if.then691:                                       ; preds = %if.end255.i, %if.end226.i, %if.then167.i, %do.end130.i, %do.end100.i, %if.end65.i.if.then691_crit_edge, %lor.lhs.false.i1041.if.then691_crit_edge, %land.lhs.true.i1038.if.then691_crit_edge, %if.then25.i, %land.rhs.i1036.if.then691_crit_edge, %iwl_mvm_skb_get_hdr.exit.i.if.then691_crit_edge
  call fastcc void @iwl_mvm_pass_packet_to_mac80211(ptr noundef %mvm, ptr noundef %napi, ptr noundef nonnull %call.i947, i32 noundef %queue, ptr noundef %sta.1)
  br label %out

out:                                              ; preds = %if.then691, %drop.i, %if.end297.i, %if.then688, %cleanup639, %cleanup, %if.then322
  %call.i1058 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i1058, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i1061

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i1061:                              ; preds = %out
  %call1.i1059 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i1059)
  %tobool.not.i1060 = icmp eq i32 %call1.i1059, 0
  br i1 %tobool.not.i1060, label %land.lhs.true.i1061.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i1063

land.lhs.true.i1061.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i1061
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i1063:                             ; preds = %land.lhs.true.i1061
  %.b4.i1062 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i1062, label %land.lhs.true2.i1063.rcu_read_unlock.exit_crit_edge, label %if.then.i1064

land.lhs.true2.i1063.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i1063
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i1064:                                    ; preds = %land.lhs.true2.i1063
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i1064, %land.lhs.true2.i1063.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i1061.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !147
  %559 = call i32 @llvm.read_register.i32(metadata !135) #11
  %and.i.i.i.i.i1065 = and i32 %559, -16384
  %560 = inttoptr i32 %and.i.i.i.i.i1065 to ptr
  %preempt_count.i.i.i.i1066 = getelementptr inbounds %struct.thread_info, ptr %560, i32 0, i32 1
  %561 = ptrtoint ptr %preempt_count.i.i.i.i1066 to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load volatile i32, ptr %preempt_count.i.i.i.i1066, align 4
  %sub.i.i.i1067 = add i32 %562, -1
  store volatile i32 %sub.i.i.i1067, ptr %preempt_count.i.i.i.i1066, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cleanup693

cleanup693:                                       ; preds = %rcu_read_unlock.exit, %do.end89, %do.end68, %do.end, %entry.cleanup693_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %phy_data) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_fw_lookup_notif_ver(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_new_rate_from_v1(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_rx_he(ptr nocapture noundef readonly %mvm, ptr noundef %skb, ptr nocapture noundef readonly %phy_data, i32 noundef %rate_n_flags, i16 noundef zeroext %phy_info, i32 noundef %queue) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %rate_n_flags, 25165824
  %call.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 12) #11
  %0 = call ptr @memcpy(ptr %call.i, ptr @iwl_mvm_rx_he.known, i32 12)
  %flag = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %1 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flag, align 8
  %or = or i32 %2, 67108864
  store i32 %or, ptr %flag, align 8
  %3 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phy_data, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %4, label %entry.if.end_crit_edge [
    i32 7, label %entry.if.then_crit_edge
    i32 9, label %entry.if.then_crit_edge264
  ]

entry.if.then_crit_edge264:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge264
  %call.i256 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 12) #11
  %6 = call ptr @memcpy(ptr %call.i256, ptr @iwl_mvm_rx_he.mu_known, i32 12)
  %7 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flag, align 8
  %or6 = or i32 %8, 134217728
  store i32 %or6, ptr %flag, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %he_mu.0 = phi ptr [ %call.i256, %if.then ], [ null, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %queue)
  %tobool.not = icmp eq i32 %queue, 0
  %9 = and i16 %phy_info, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool8.not = icmp eq i16 %9, 0
  %or.cond = and i1 %tobool.not, %tobool8.not
  br i1 %or.cond, label %if.then9, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then9:                                         ; preds = %if.end
  %10 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flag, align 8
  %or13 = or i32 %11, 33554944
  store i32 %or13, ptr %flag, align 8
  %d0 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, ptr %phy_data, i32 0, i32 1
  %12 = ptrtoint ptr %d0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %d0, align 4
  %and14 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then9.if.end20_crit_edge, label %if.then16

if.then9.if.end20_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then16:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %or18 = or i32 %11, 50332160
  %14 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or18, ptr %flag, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.then9.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %conv21 = zext i16 %phy_info to i32
  %and22 = and i32 %conv21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end56_crit_edge, label %if.then24

if.end20.if.end56_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.then24:                                        ; preds = %if.end20
  %15 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %phy_data, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %16, label %if.then24.sw.epilog.i_crit_edge [
    i32 0, label %if.then24.if.end25_crit_edge
    i32 1, label %if.then24.if.end25_crit_edge265
    i32 2, label %if.then24.if.end25_crit_edge266
    i32 3, label %if.then24.if.end25_crit_edge267
    i32 4, label %if.then24.if.end25_crit_edge268
    i32 5, label %if.then24.if.end25_crit_edge269
    i32 10, label %sw.bb1.i
    i32 6, label %if.then24.sw.bb36.i_crit_edge
    i32 7, label %if.then24.sw.bb36.i_crit_edge270
    i32 9, label %if.then24.sw.bb36.i_crit_edge271
    i32 8, label %if.then24.sw.bb36.i_crit_edge272
  ]

if.then24.sw.bb36.i_crit_edge272:                 ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb36.i

if.then24.sw.bb36.i_crit_edge271:                 ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb36.i

if.then24.sw.bb36.i_crit_edge270:                 ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb36.i

if.then24.sw.bb36.i_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb36.i

if.then24.if.end25_crit_edge269:                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then24.if.end25_crit_edge268:                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then24.if.end25_crit_edge267:                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then24.if.end25_crit_edge266:                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then24.if.end25_crit_edge265:                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then24.if.end25_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then24.sw.epilog.i_crit_edge:                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %call.i, align 2
  %20 = or i16 %19, 60
  store i16 %20, ptr %call.i, align 2
  %d2.i = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, ptr %phy_data, i32 0, i32 3
  %21 = ptrtoint ptr %d2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %d2.i, align 4
  %sh.diff312.i = lshr i32 %22, 16
  %tr.sh.diff313.i = trunc i32 %sh.diff312.i to i16
  %23 = and i16 %tr.sh.diff313.i, 3840
  %data4.i = getelementptr inbounds %struct.ieee80211_radiotap_he, ptr %call.i, i32 0, i32 3
  %24 = ptrtoint ptr %data4.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %data4.i, align 2
  %or716.i = or i16 %23, %25
  store i16 %or716.i, ptr %data4.i, align 2
  %26 = load i32, ptr %d2.i, align 4
  %sh.diff314.i = lshr i32 %26, 16
  %tr.sh.diff315.i = trunc i32 %sh.diff314.i to i16
  %27 = and i16 %tr.sh.diff315.i, -4096
  %or1617.i = or i16 %27, %or716.i
  store i16 %or1617.i, ptr %data4.i, align 2
  %28 = load i32, ptr %d2.i, align 4
  %sum.shift316.i = lshr i32 %28, 16
  %29 = trunc i32 %sum.shift316.i to i16
  %30 = and i16 %29, 15
  %or2518.i = or i16 %30, %or1617.i
  store i16 %or2518.i, ptr %data4.i, align 2
  %31 = load i32, ptr %d2.i, align 4
  %sum.shift317.i = lshr i32 %31, 16
  %conv8.i57318.i = trunc i32 %sum.shift317.i to i16
  %32 = and i16 %conv8.i57318.i, 240
  %or3419.i = or i16 %32, %or2518.i
  store i16 %or3419.i, ptr %data4.i, align 2
  br label %sw.bb36.i

sw.bb36.i:                                        ; preds = %sw.bb1.i, %if.then24.sw.bb36.i_crit_edge, %if.then24.sw.bb36.i_crit_edge270, %if.then24.sw.bb36.i_crit_edge271, %if.then24.sw.bb36.i_crit_edge272
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %call.i, align 2
  %35 = or i16 %34, 1153
  store i16 %35, ptr %call.i, align 2
  %data2.i = getelementptr inbounds %struct.ieee80211_radiotap_he, ptr %call.i, i32 0, i32 1
  %36 = ptrtoint ptr %data2.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %data2.i, align 2
  %38 = or i16 %37, 27648
  store i16 %38, ptr %data2.i, align 2
  %d0.i = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, ptr %phy_data, i32 0, i32 1
  %39 = ptrtoint ptr %d0.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %d0.i, align 4
  %sh.diff.i = lshr i32 %40, 18
  %tr.sh.diff.i = trunc i32 %sh.diff.i to i16
  %41 = and i16 %tr.sh.diff.i, 16128
  %data3.i = getelementptr inbounds %struct.ieee80211_radiotap_he, ptr %call.i, i32 0, i32 2
  %42 = ptrtoint ptr %data3.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %data3.i, align 2
  %or491.i = or i16 %41, %43
  store i16 %or491.i, ptr %data3.i, align 2
  %44 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %phy_data, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %45, label %if.then.i257 [
    i32 8, label %sw.bb36.i.if.end.i_crit_edge
    i32 10, label %sw.bb36.i.if.end.i_crit_edge273
  ]

sw.bb36.i.if.end.i_crit_edge273:                  ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

sw.bb36.i.if.end.i_crit_edge:                     ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i257:                                     ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #13
  %47 = or i16 %34, 5249
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %call.i, align 2
  %49 = ptrtoint ptr %d0.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %d0.i, align 4
  %sh.diff310.i = lshr i32 %50, 10
  %tr.sh.diff311.i = trunc i32 %sh.diff310.i to i16
  %conv8.i83.i = and i16 %tr.sh.diff311.i, -32768
  %or6715.i = or i16 %conv8.i83.i, %or491.i
  %51 = ptrtoint ptr %data3.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %or6715.i, ptr %data3.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i257, %sw.bb36.i.if.end.i_crit_edge, %sw.bb36.i.if.end.i_crit_edge273
  %52 = ptrtoint ptr %d0.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %d0.i, align 4
  %54 = trunc i32 %53 to i16
  %55 = lshr i16 %54, 6
  %56 = and i16 %55, 64
  %57 = ptrtoint ptr %data3.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %data3.i, align 2
  %or762.i = or i16 %56, %58
  store i16 %or762.i, ptr %data3.i, align 2
  %59 = load i32, ptr %d0.i, align 4
  %60 = trunc i32 %59 to i16
  %61 = lshr i16 %60, 9
  %62 = and i16 %61, 48
  %data5.i = getelementptr inbounds %struct.ieee80211_radiotap_he, ptr %call.i, i32 0, i32 4
  %63 = ptrtoint ptr %data5.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %data5.i, align 2
  %or843.i = or i16 %62, %64
  store i16 %or843.i, ptr %data5.i, align 2
  %65 = load i32, ptr %d0.i, align 4
  %66 = trunc i32 %65 to i16
  %67 = lshr i16 %66, 8
  %68 = and i16 %67, 128
  %or934.i = or i16 %68, %or843.i
  store i16 %or934.i, ptr %data5.i, align 2
  %d1.i = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, ptr %phy_data, i32 0, i32 2
  %69 = ptrtoint ptr %d1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %d1.i, align 4
  %sum.shift.i = lshr i32 %70, 29
  %conv8.i135301.i = trunc i32 %sum.shift.i to i16
  %or1015.i = or i16 %or934.i, %conv8.i135301.i
  store i16 %or1015.i, ptr %data5.i, align 2
  %71 = load i32, ptr %d0.i, align 4
  %72 = and i32 %71, 14683904
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #11
  %sum.shift276.i = lshr exact i32 %73, 13
  %74 = trunc i32 %sum.shift276.i to i16
  %data6.i = getelementptr inbounds %struct.ieee80211_radiotap_he, ptr %call.i, i32 0, i32 5
  %75 = ptrtoint ptr %data6.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %data6.i, align 2
  %or1096.i = or i16 %76, %74
  store i16 %or1096.i, ptr %data6.i, align 2
  %77 = ptrtoint ptr %d0.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %d0.i, align 4
  %.tr.i = trunc i32 %78 to i16
  %79 = shl i16 %.tr.i, 12
  %conv8.i161.i = and i16 %79, 4096
  %or1187.i = or i16 %conv8.i161.i, %or1096.i
  store i16 %or1187.i, ptr %data6.i, align 2
  %80 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pr.i = load i32, ptr %phy_data, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end.i, %if.then24.sw.epilog.i_crit_edge
  %81 = phi i32 [ %16, %if.then24.sw.epilog.i_crit_edge ], [ %.pr.i, %if.end.i ]
  %82 = zext i32 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %81, label %sw.epilog.i.sw.epilog135.i_crit_edge [
    i32 9, label %sw.epilog.i.sw.bb121.i_crit_edge
    i32 7, label %sw.epilog.i.sw.bb121.i_crit_edge274
    i32 6, label %sw.epilog.i.sw.bb121.i_crit_edge275
  ]

sw.epilog.i.sw.bb121.i_crit_edge275:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb121.i

sw.epilog.i.sw.bb121.i_crit_edge274:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb121.i

sw.epilog.i.sw.bb121.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb121.i

sw.epilog.i.sw.epilog135.i_crit_edge:             ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog135.i

sw.bb121.i:                                       ; preds = %sw.epilog.i.sw.bb121.i_crit_edge, %sw.epilog.i.sw.bb121.i_crit_edge274, %sw.epilog.i.sw.bb121.i_crit_edge275
  %83 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %call.i, align 2
  %85 = or i16 %84, 4
  store i16 %85, ptr %call.i, align 2
  %d0126.i = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, ptr %phy_data, i32 0, i32 1
  %86 = ptrtoint ptr %d0126.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %d0126.i, align 4
  %sh.diff302.i = lshr i32 %87, 8
  %tr.sh.diff303.i = trunc i32 %sh.diff302.i to i16
  %88 = and i16 %tr.sh.diff303.i, 3840
  %data4131.i = getelementptr inbounds %struct.ieee80211_radiotap_he, ptr %call.i, i32 0, i32 3
  %89 = ptrtoint ptr %data4131.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %data4131.i, align 2
  %or1338.i = or i16 %88, %90
  store i16 %or1338.i, ptr %data4131.i, align 2
  br label %sw.epilog135.i

sw.epilog135.i:                                   ; preds = %sw.bb121.i, %sw.epilog.i.sw.epilog135.i_crit_edge
  %91 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %phy_data, align 4
  %93 = zext i32 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %92, label %sw.epilog135.i.if.end25_crit_edge [
    i32 9, label %sw.bb137.i
    i32 7, label %sw.epilog135.i.sw.bb159.i_crit_edge
    i32 8, label %sw.epilog135.i.sw.bb178.i_crit_edge
    i32 10, label %sw.epilog135.i.sw.bb178.i_crit_edge276
    i32 6, label %sw.bb179.i
  ]

sw.epilog135.i.sw.bb178.i_crit_edge276:           ; preds = %sw.epilog135.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb178.i

sw.epilog135.i.sw.bb178.i_crit_edge:              ; preds = %sw.epilog135.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb178.i

sw.epilog135.i.sw.bb159.i_crit_edge:              ; preds = %sw.epilog135.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb159.i

sw.epilog135.i.if.end25_crit_edge:                ; preds = %sw.epilog135.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

sw.bb137.i:                                       ; preds = %sw.epilog135.i
  %d4.i = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, ptr %phy_data, i32 0, i32 5
  %94 = ptrtoint ptr %d4.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %d4.i, align 4
  %96 = shl i16 %95, 13
  %97 = and i16 %96, 8192
  %98 = ptrtoint ptr %he_mu.0 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %he_mu.0, align 2
  %or14212.i = or i16 %97, %99
  store i16 %or14212.i, ptr %he_mu.0, align 2
  %100 = load i16, ptr %d4.i, align 4
  %101 = lshr i16 %100, 4
  %102 = and i16 %101, 3840
  %or15013.i = or i16 %102, %or14212.i
  store i16 %or15013.i, ptr %he_mu.0, align 2
  %103 = load i16, ptr %d4.i, align 4
  %104 = lshr i16 %103, 1
  %105 = and i16 %104, 3
  %flags2.i = getelementptr inbounds %struct.ieee80211_radiotap_he_mu, ptr %he_mu.0, i32 0, i32 1
  %106 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %flags2.i, align 2
  %or15714.i = or i16 %105, %107
  store i16 %or15714.i, ptr %flags2.i, align 2
  %d2.i.i = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, ptr %phy_data, i32 0, i32 3
  %108 = ptrtoint ptr %d2.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %d2.i.i, align 4
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #11
  %d3.i.i = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, ptr %phy_data, i32 0, i32 4
  %111 = ptrtoint ptr %d3.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %d3.i.i, align 4
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #11
  %114 = ptrtoint ptr %d4.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %d4.i, align 4
  %116 = tail call i16 @llvm.bswap.i16(i16 %115) #11
  %conv.i250.i = zext i16 %116 to i32
  %117 = and i32 %conv.i250.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool.not.i251.i = icmp eq i32 %117, 0
  br i1 %tobool.not.i251.i, label %sw.bb137.i.do.end136.i.i_crit_edge, label %if.then.i252.i

sw.bb137.i.do.end136.i.i_crit_edge:               ; preds = %sw.bb137.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end136.i.i

if.then.i252.i:                                   ; preds = %sw.bb137.i
  call void @__sanitizer_cov_trace_pc() #13
  %118 = shl i16 %116, 5
  %119 = and i16 %118, 32
  %120 = or i16 %or15013.i, %119
  %or382.i.i = or i16 %120, 17
  %121 = ptrtoint ptr %he_mu.0 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %or382.i.i, ptr %he_mu.0, align 2
  %conv58.i.i = trunc i32 %110 to i8
  %ru_ch1.i.i = getelementptr inbounds %struct.ieee80211_radiotap_he_mu, ptr %he_mu.0, i32 0, i32 2
  %122 = ptrtoint ptr %ru_ch1.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv58.i.i, ptr %ru_ch1.i.i, align 2
  %conv77.i.i = trunc i32 %113 to i8
  %arrayidx79.i.i = getelementptr %struct.ieee80211_radiotap_he_mu, ptr %he_mu.0, i32 0, i32 2, i32 1
  %123 = ptrtoint ptr %arrayidx79.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv77.i.i, ptr %arrayidx79.i.i, align 1
  %and96.i.i = lshr i32 %110, 8
  %conv98.i.i = trunc i32 %and96.i.i to i8
  %arrayidx100.i.i = getelementptr %struct.ieee80211_radiotap_he_mu, ptr %he_mu.0, i32 0, i32 2, i32 2
  %124 = ptrtoint ptr %arrayidx100.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv98.i.i, ptr %arrayidx100.i.i, align 2
  %and117.i.i = lshr i32 %113, 8
  %conv119.i.i = trunc i32 %and117.i.i to i8
  %arrayidx121.i.i = getelementptr %struct.ieee80211_radiotap_he_mu, ptr %he_mu.0, i32 0, i32 2, i32 3
  %125 = ptrtoint ptr %arrayidx121.i.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv119.i.i, ptr %arrayidx121.i.i, align 1
  br label %do.end136.i.i

do.end136.i.i:                                    ; preds = %if.then.i252.i, %sw.bb137.i.do.end136.i.i_crit_edge
  %126 = and i32 %conv.i250.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool141.not.i.i = icmp eq i32 %126, 0
  %and142.i.i = and i32 %rate_n_flags, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142.i.i)
  %cmp.not.i.i = icmp eq i32 %and142.i.i, 0
  %or.cond.i.i = or i1 %cmp.not.i.i, %tobool141.not.i.i
  br i1 %or.cond.i.i, label %do.end136.i.i.sw.bb159.i_crit_edge, label %if.then144.i.i

do.end136.i.i.sw.bb159.i_crit_edge:               ; preds = %do.end136.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb159.i

if.then144.i.i:                                   ; preds = %do.end136.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %127 = ptrtoint ptr %he_mu.0 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %he_mu.0, align 2
  %129 = or i16 %128, -32766
  store i16 %129, ptr %he_mu.0, align 2
  %130 = shl i16 %116, 2
  %131 = and i16 %130, 8
  %or1721.i.i = or i16 %131, %or15714.i
  %132 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %or1721.i.i, ptr %flags2.i, align 2
  %and190.i.i = lshr i32 %110, 16
  %conv192.i.i = trunc i32 %and190.i.i to i8
  %ru_ch2.i.i = getelementptr inbounds %struct.ieee80211_radiotap_he_mu, ptr %he_mu.0, i32 0, i32 3
  %133 = ptrtoint ptr %ru_ch2.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv192.i.i, ptr %ru_ch2.i.i, align 2
  %and210.i.i = lshr i32 %113, 16
  %conv212.i.i = trunc i32 %and210.i.i to i8
  %arrayidx214.i.i = getelementptr %struct.ieee80211_radiotap_he_mu, ptr %he_mu.0, i32 0, i32 3, i32 1
  %134 = ptrtoint ptr %arrayidx214.i.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv212.i.i, ptr %arrayidx214.i.i, align 1
  %shr232.i.i = lshr i32 %110, 24
  %conv233.i.i = trunc i32 %shr232.i.i to i8
  %arrayidx235.i.i = getelementptr %struct.ieee80211_radiotap_he_mu, ptr %he_mu.0, i32 0, i32 3, i32 2
  %135 = ptrtoint ptr %arrayidx235.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %conv233.i.i, ptr %arrayidx235.i.i, align 2
  %shr253.i.i = lshr i32 %113, 24
  %conv254.i.i = trunc i32 %shr253.i.i to i8
  %arrayidx256.i.i = getelementptr %struct.ieee80211_radiotap_he_mu, ptr %he_mu.0, i32 0, i32 3, i32 3
  %136 = ptrtoint ptr %arrayidx256.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %conv254.i.i, ptr %arrayidx256.i.i, align 1
  br label %sw.bb159.i

sw.bb159.i:                                       ; preds = %if.then144.i.i, %do.end136.i.i.sw.bb159.i_crit_edge, %sw.epilog135.i.sw.bb159.i_crit_edge
  %d1160.i = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, ptr %phy_data, i32 0, i32 2
  %137 = ptrtoint ptr %d1160.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %d1160.i, align 4
  %sh.diff306.i = lshr i32 %138, 13
  %tr.sh.diff307.i = trunc i32 %sh.diff306.i to i16
  %conv8.i224.i = and i16 %tr.sh.diff307.i, -4096
  %flags2165.i = getelementptr inbounds %struct.ieee80211_radiotap_he_mu, ptr %he_mu.0, i32 0, i32 1
  %139 = ptrtoint ptr %flags2165.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %flags2165.i, align 2
  %or16710.i = or i16 %conv8.i224.i, %140
  store i16 %or16710.i, ptr %flags2165.i, align 2
  %141 = load i32, ptr %d1160.i, align 4
  %sh.diff308.i = lshr i32 %141, 13
  %tr.sh.diff309.i = trunc i32 %sh.diff308.i to i16
  %142 = and i16 %tr.sh.diff309.i, 2048
  %or17611.i = or i16 %142, %or16710.i
  store i16 %or17611.i, ptr %flags2165.i, align 2
  br label %sw.bb178.i

sw.bb178.i:                                       ; preds = %sw.bb159.i, %sw.epilog135.i.sw.bb178.i_crit_edge, %sw.epilog135.i.sw.bb178.i_crit_edge276
  %d1.i.i = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, ptr %phy_data, i32 0, i32 2
  %143 = ptrtoint ptr %d1.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %d1.i.i, align 4
  %sum.shift.i.i = lshr i32 %144, 17
  %div4.i184185186.i.i = trunc i32 %sum.shift.i.i to i8
  %div4.i184185.i.i = and i8 %div4.i184185186.i.i, 127
  %and.i253.i = and i32 %rate_n_flags, 12582912
  %bw.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 31
  %145 = ptrtoint ptr %bw.i.i to i32
  call void @__asan_loadN_noabort(i32 %145, i32 2)
  %bf.load.i.i = load i16, ptr %bw.i.i, align 1
  %bf.clear.i.i = and i16 %bf.load.i.i, -14337
  %bf.set.i.i = or i16 %bf.clear.i.i, 12288
  store i16 %bf.set.i.i, ptr %bw.i.i, align 1
  %146 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %call.i, align 2
  %148 = or i16 %147, 64
  store i16 %148, ptr %call.i, align 2
  %trunc.i.i = trunc i32 %sum.shift.i.i to i7
  %149 = zext i7 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.61)
  switch i7 %trunc.i.i, label %sw.bb178.i.le16_encode_bits.exit.i.i_crit_edge [
    i7 0, label %sw.bb178.i.sw.bb.i.i_crit_edge
    i7 1, label %sw.bb178.i.sw.bb.i.i_crit_edge277
    i7 2, label %sw.bb178.i.sw.bb.i.i_crit_edge278
    i7 3, label %sw.bb178.i.sw.bb.i.i_crit_edge279
    i7 4, label %sw.bb178.i.sw.bb.i.i_crit_edge280
    i7 5, label %sw.bb178.i.sw.bb.i.i_crit_edge281
    i7 6, label %sw.bb178.i.sw.bb.i.i_crit_edge282
    i7 7, label %sw.bb178.i.sw.bb.i.i_crit_edge283
    i7 8, label %sw.bb178.i.sw.bb.i.i_crit_edge284
    i7 9, label %sw.bb178.i.sw.bb.i.i_crit_edge285
    i7 10, label %sw.bb178.i.sw.bb.i.i_crit_edge286
    i7 11, label %sw.bb178.i.sw.bb.i.i_crit_edge287
    i7 12, label %sw.bb178.i.sw.bb.i.i_crit_edge288
    i7 13, label %sw.bb178.i.sw.bb.i.i_crit_edge289
    i7 14, label %sw.bb178.i.sw.bb.i.i_crit_edge290
    i7 15, label %sw.bb178.i.sw.bb.i.i_crit_edge291
    i7 16, label %sw.bb178.i.sw.bb.i.i_crit_edge292
    i7 17, label %sw.bb178.i.sw.bb.i.i_crit_edge293
    i7 18, label %sw.bb178.i.sw.bb.i.i_crit_edge294
    i7 19, label %sw.bb178.i.sw.bb.i.i_crit_edge295
    i7 20, label %sw.bb178.i.sw.bb.i.i_crit_edge296
    i7 21, label %sw.bb178.i.sw.bb.i.i_crit_edge297
    i7 22, label %sw.bb178.i.sw.bb.i.i_crit_edge298
    i7 23, label %sw.bb178.i.sw.bb.i.i_crit_edge299
    i7 24, label %sw.bb178.i.sw.bb.i.i_crit_edge300
    i7 25, label %sw.bb178.i.sw.bb.i.i_crit_edge301
    i7 26, label %sw.bb178.i.sw.bb.i.i_crit_edge302
    i7 27, label %sw.bb178.i.sw.bb.i.i_crit_edge303
    i7 28, label %sw.bb178.i.sw.bb.i.i_crit_edge304
    i7 29, label %sw.bb178.i.sw.bb.i.i_crit_edge305
    i7 30, label %sw.bb178.i.sw.bb.i.i_crit_edge306
    i7 31, label %sw.bb178.i.sw.bb.i.i_crit_edge307
    i7 32, label %sw.bb178.i.sw.bb.i.i_crit_edge308
    i7 33, label %sw.bb178.i.sw.bb.i.i_crit_edge309
    i7 34, label %sw.bb178.i.sw.bb.i.i_crit_edge310
    i7 35, label %sw.bb178.i.sw.bb.i.i_crit_edge311
    i7 36, label %sw.bb178.i.sw.bb.i.i_crit_edge312
    i7 37, label %sw.bb178.i.sw.bb7.i.i_crit_edge
    i7 38, label %sw.bb178.i.sw.bb7.i.i_crit_edge313
    i7 39, label %sw.bb178.i.sw.bb7.i.i_crit_edge314
    i7 40, label %sw.bb178.i.sw.bb7.i.i_crit_edge315
    i7 41, label %sw.bb178.i.sw.bb7.i.i_crit_edge316
    i7 42, label %sw.bb178.i.sw.bb7.i.i_crit_edge317
    i7 43, label %sw.bb178.i.sw.bb7.i.i_crit_edge318
    i7 44, label %sw.bb178.i.sw.bb7.i.i_crit_edge319
    i7 45, label %sw.bb178.i.sw.bb7.i.i_crit_edge320
    i7 46, label %sw.bb178.i.sw.bb7.i.i_crit_edge321
    i7 47, label %sw.bb178.i.sw.bb7.i.i_crit_edge322
    i7 48, label %sw.bb178.i.sw.bb7.i.i_crit_edge323
    i7 49, label %sw.bb178.i.sw.bb7.i.i_crit_edge324
    i7 50, label %sw.bb178.i.sw.bb7.i.i_crit_edge325
    i7 51, label %sw.bb178.i.sw.bb7.i.i_crit_edge326
    i7 52, label %sw.bb178.i.sw.bb7.i.i_crit_edge327
    i7 53, label %sw.bb178.i.sw.bb14.i.i_crit_edge
    i7 54, label %sw.bb178.i.sw.bb14.i.i_crit_edge328
    i7 55, label %sw.bb178.i.sw.bb14.i.i_crit_edge329
    i7 56, label %sw.bb178.i.sw.bb14.i.i_crit_edge330
    i7 57, label %sw.bb178.i.sw.bb14.i.i_crit_edge331
    i7 58, label %sw.bb178.i.sw.bb14.i.i_crit_edge332
    i7 59, label %sw.bb178.i.sw.bb14.i.i_crit_edge333
    i7 60, label %sw.bb178.i.sw.bb14.i.i_crit_edge334
    i7 61, label %sw.bb178.i.sw.bb22.i.i_crit_edge
    i7 62, label %sw.bb178.i.sw.bb22.i.i_crit_edge335
    i7 63, label %sw.bb178.i.sw.bb22.i.i_crit_edge336
    i7 -64, label %sw.bb178.i.sw.bb22.i.i_crit_edge337
    i7 -63, label %sw.bb178.i.sw.bb30.i.i_crit_edge
    i7 -62, label %sw.bb178.i.sw.bb30.i.i_crit_edge338
    i7 -61, label %sw.bb38.i.i
    i7 -60, label %sw.bb43.i.i
  ]

sw.bb178.i.sw.bb30.i.i_crit_edge338:              ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb30.i.i

sw.bb178.i.sw.bb30.i.i_crit_edge:                 ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb30.i.i

sw.bb178.i.sw.bb22.i.i_crit_edge337:              ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb22.i.i

sw.bb178.i.sw.bb22.i.i_crit_edge336:              ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb22.i.i

sw.bb178.i.sw.bb22.i.i_crit_edge335:              ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb22.i.i

sw.bb178.i.sw.bb22.i.i_crit_edge:                 ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb22.i.i

sw.bb178.i.sw.bb14.i.i_crit_edge334:              ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb14.i.i

sw.bb178.i.sw.bb14.i.i_crit_edge333:              ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb14.i.i

sw.bb178.i.sw.bb14.i.i_crit_edge332:              ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb14.i.i

sw.bb178.i.sw.bb14.i.i_crit_edge331:              ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb14.i.i

sw.bb178.i.sw.bb14.i.i_crit_edge330:              ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb14.i.i

sw.bb178.i.sw.bb14.i.i_crit_edge329:              ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb14.i.i

sw.bb178.i.sw.bb14.i.i_crit_edge328:              ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb14.i.i

sw.bb178.i.sw.bb14.i.i_crit_edge:                 ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb14.i.i

sw.bb178.i.sw.bb7.i.i_crit_edge327:               ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i.i

sw.bb178.i.sw.bb7.i.i_crit_edge326:               ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i.i

sw.bb178.i.sw.bb7.i.i_crit_edge325:               ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i.i

sw.bb178.i.sw.bb7.i.i_crit_edge324:               ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i.i

sw.bb178.i.sw.bb7.i.i_crit_edge323:               ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i.i

sw.bb178.i.sw.bb7.i.i_crit_edge322:               ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i.i

sw.bb178.i.sw.bb7.i.i_crit_edge321:               ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i.i

sw.bb178.i.sw.bb7.i.i_crit_edge320:               ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i.i

sw.bb178.i.sw.bb7.i.i_crit_edge319:               ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i.i

sw.bb178.i.sw.bb7.i.i_crit_edge318:               ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i.i

sw.bb178.i.sw.bb7.i.i_crit_edge317:               ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i.i

sw.bb178.i.sw.bb7.i.i_crit_edge316:               ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i.i

sw.bb178.i.sw.bb7.i.i_crit_edge315:               ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i.i

sw.bb178.i.sw.bb7.i.i_crit_edge314:               ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i.i

sw.bb178.i.sw.bb7.i.i_crit_edge313:               ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i.i

sw.bb178.i.sw.bb7.i.i_crit_edge:                  ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i.i

sw.bb178.i.sw.bb.i.i_crit_edge312:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge311:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge310:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge309:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge308:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge307:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge306:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge305:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge304:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge303:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge302:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge301:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge300:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge299:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge298:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge297:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge296:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge295:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge294:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge293:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge292:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge291:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge290:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge289:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge288:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge287:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge286:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge285:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge284:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge283:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge282:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge281:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge280:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge279:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge278:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge277:                ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.sw.bb.i.i_crit_edge:                   ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb178.i.le16_encode_bits.exit.i.i_crit_edge:   ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %le16_encode_bits.exit.i.i

sw.bb.i.i:                                        ; preds = %sw.bb178.i.sw.bb.i.i_crit_edge, %sw.bb178.i.sw.bb.i.i_crit_edge277, %sw.bb178.i.sw.bb.i.i_crit_edge278, %sw.bb178.i.sw.bb.i.i_crit_edge279, %sw.bb178.i.sw.bb.i.i_crit_edge280, %sw.bb178.i.sw.bb.i.i_crit_edge281, %sw.bb178.i.sw.bb.i.i_crit_edge282, %sw.bb178.i.sw.bb.i.i_crit_edge283, %sw.bb178.i.sw.bb.i.i_crit_edge284, %sw.bb178.i.sw.bb.i.i_crit_edge285, %sw.bb178.i.sw.bb.i.i_crit_edge286, %sw.bb178.i.sw.bb.i.i_crit_edge287, %sw.bb178.i.sw.bb.i.i_crit_edge288, %sw.bb178.i.sw.bb.i.i_crit_edge289, %sw.bb178.i.sw.bb.i.i_crit_edge290, %sw.bb178.i.sw.bb.i.i_crit_edge291, %sw.bb178.i.sw.bb.i.i_crit_edge292, %sw.bb178.i.sw.bb.i.i_crit_edge293, %sw.bb178.i.sw.bb.i.i_crit_edge294, %sw.bb178.i.sw.bb.i.i_crit_edge295, %sw.bb178.i.sw.bb.i.i_crit_edge296, %sw.bb178.i.sw.bb.i.i_crit_edge297, %sw.bb178.i.sw.bb.i.i_crit_edge298, %sw.bb178.i.sw.bb.i.i_crit_edge299, %sw.bb178.i.sw.bb.i.i_crit_edge300, %sw.bb178.i.sw.bb.i.i_crit_edge301, %sw.bb178.i.sw.bb.i.i_crit_edge302, %sw.bb178.i.sw.bb.i.i_crit_edge303, %sw.bb178.i.sw.bb.i.i_crit_edge304, %sw.bb178.i.sw.bb.i.i_crit_edge305, %sw.bb178.i.sw.bb.i.i_crit_edge306, %sw.bb178.i.sw.bb.i.i_crit_edge307, %sw.bb178.i.sw.bb.i.i_crit_edge308, %sw.bb178.i.sw.bb.i.i_crit_edge309, %sw.bb178.i.sw.bb.i.i_crit_edge310, %sw.bb178.i.sw.bb.i.i_crit_edge311, %sw.bb178.i.sw.bb.i.i_crit_edge312
  %150 = ptrtoint ptr %bw.i.i to i32
  call void @__asan_loadN_noabort(i32 %150, i32 2)
  %bf.load4.i.i = load i16, ptr %bw.i.i, align 1
  %bf.clear5.i.i = and i16 %bf.load4.i.i, -1793
  store i16 %bf.clear5.i.i, ptr %bw.i.i, align 1
  br label %le16_encode_bits.exit.i.i

sw.bb7.i.i:                                       ; preds = %sw.bb178.i.sw.bb7.i.i_crit_edge, %sw.bb178.i.sw.bb7.i.i_crit_edge313, %sw.bb178.i.sw.bb7.i.i_crit_edge314, %sw.bb178.i.sw.bb7.i.i_crit_edge315, %sw.bb178.i.sw.bb7.i.i_crit_edge316, %sw.bb178.i.sw.bb7.i.i_crit_edge317, %sw.bb178.i.sw.bb7.i.i_crit_edge318, %sw.bb178.i.sw.bb7.i.i_crit_edge319, %sw.bb178.i.sw.bb7.i.i_crit_edge320, %sw.bb178.i.sw.bb7.i.i_crit_edge321, %sw.bb178.i.sw.bb7.i.i_crit_edge322, %sw.bb178.i.sw.bb7.i.i_crit_edge323, %sw.bb178.i.sw.bb7.i.i_crit_edge324, %sw.bb178.i.sw.bb7.i.i_crit_edge325, %sw.bb178.i.sw.bb7.i.i_crit_edge326, %sw.bb178.i.sw.bb7.i.i_crit_edge327
  %151 = ptrtoint ptr %bw.i.i to i32
  call void @__asan_loadN_noabort(i32 %151, i32 2)
  %bf.load9.i.i = load i16, ptr %bw.i.i, align 1
  %bf.clear10.i.i = and i16 %bf.load9.i.i, -1793
  %bf.set11.i.i = or i16 %bf.clear10.i.i, 256
  store i16 %bf.set11.i.i, ptr %bw.i.i, align 1
  %conv13.i.i = add nsw i8 %div4.i184185.i.i, -37
  br label %le16_encode_bits.exit.i.i

sw.bb14.i.i:                                      ; preds = %sw.bb178.i.sw.bb14.i.i_crit_edge, %sw.bb178.i.sw.bb14.i.i_crit_edge328, %sw.bb178.i.sw.bb14.i.i_crit_edge329, %sw.bb178.i.sw.bb14.i.i_crit_edge330, %sw.bb178.i.sw.bb14.i.i_crit_edge331, %sw.bb178.i.sw.bb14.i.i_crit_edge332, %sw.bb178.i.sw.bb14.i.i_crit_edge333, %sw.bb178.i.sw.bb14.i.i_crit_edge334
  %152 = ptrtoint ptr %bw.i.i to i32
  call void @__asan_loadN_noabort(i32 %152, i32 2)
  %bf.load16.i.i = load i16, ptr %bw.i.i, align 1
  %bf.clear17.i.i = and i16 %bf.load16.i.i, -1793
  %bf.set18.i.i = or i16 %bf.clear17.i.i, 512
  store i16 %bf.set18.i.i, ptr %bw.i.i, align 1
  %conv21.i.i = add nsw i8 %div4.i184185.i.i, -53
  br label %le16_encode_bits.exit.i.i

sw.bb22.i.i:                                      ; preds = %sw.bb178.i.sw.bb22.i.i_crit_edge, %sw.bb178.i.sw.bb22.i.i_crit_edge335, %sw.bb178.i.sw.bb22.i.i_crit_edge336, %sw.bb178.i.sw.bb22.i.i_crit_edge337
  %153 = ptrtoint ptr %bw.i.i to i32
  call void @__asan_loadN_noabort(i32 %153, i32 2)
  %bf.load24.i.i = load i16, ptr %bw.i.i, align 1
  %bf.clear25.i.i = and i16 %bf.load24.i.i, -1793
  %bf.set26.i.i = or i16 %bf.clear25.i.i, 768
  store i16 %bf.set26.i.i, ptr %bw.i.i, align 1
  %conv29.i.i = add nsw i8 %div4.i184185.i.i, -61
  br label %le16_encode_bits.exit.i.i

sw.bb30.i.i:                                      ; preds = %sw.bb178.i.sw.bb30.i.i_crit_edge, %sw.bb178.i.sw.bb30.i.i_crit_edge338
  %154 = ptrtoint ptr %bw.i.i to i32
  call void @__asan_loadN_noabort(i32 %154, i32 2)
  %bf.load32.i.i = load i16, ptr %bw.i.i, align 1
  %bf.clear33.i.i = and i16 %bf.load32.i.i, -1793
  %bf.set34.i.i = or i16 %bf.clear33.i.i, 1024
  store i16 %bf.set34.i.i, ptr %bw.i.i, align 1
  %conv37.i.i = add nsw i8 %div4.i184185.i.i, -65
  br label %le16_encode_bits.exit.i.i

sw.bb38.i.i:                                      ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  %155 = ptrtoint ptr %bw.i.i to i32
  call void @__asan_loadN_noabort(i32 %155, i32 2)
  %bf.load40.i.i = load i16, ptr %bw.i.i, align 1
  %bf.clear41.i.i = and i16 %bf.load40.i.i, -1793
  %bf.set42.i.i = or i16 %bf.clear41.i.i, 1280
  store i16 %bf.set42.i.i, ptr %bw.i.i, align 1
  br label %le16_encode_bits.exit.i.i

sw.bb43.i.i:                                      ; preds = %sw.bb178.i
  call void @__sanitizer_cov_trace_pc() #13
  %156 = ptrtoint ptr %bw.i.i to i32
  call void @__asan_loadN_noabort(i32 %156, i32 2)
  %bf.load45.i.i = load i16, ptr %bw.i.i, align 1
  %bf.clear46.i.i = and i16 %bf.load45.i.i, -1793
  %bf.set47.i.i = or i16 %bf.clear46.i.i, 1536
  store i16 %bf.set47.i.i, ptr %bw.i.i, align 1
  br label %le16_encode_bits.exit.i.i

le16_encode_bits.exit.i.i:                        ; preds = %sw.bb43.i.i, %sw.bb38.i.i, %sw.bb30.i.i, %sw.bb22.i.i, %sw.bb14.i.i, %sw.bb7.i.i, %sw.bb.i.i, %sw.bb178.i.le16_encode_bits.exit.i.i_crit_edge
  %offs.0.i.i = phi i8 [ 0, %sw.bb178.i.le16_encode_bits.exit.i.i_crit_edge ], [ 0, %sw.bb43.i.i ], [ 0, %sw.bb38.i.i ], [ %conv37.i.i, %sw.bb30.i.i ], [ %conv29.i.i, %sw.bb22.i.i ], [ %conv21.i.i, %sw.bb14.i.i ], [ %conv13.i.i, %sw.bb7.i.i ], [ %div4.i184185.i.i, %sw.bb.i.i ]
  %157 = and i8 %offs.0.i.i, 63
  %and528.i.i.i = zext i8 %157 to i16
  %data2.i.i = getelementptr inbounds %struct.ieee80211_radiotap_he, ptr %call.i, i32 0, i32 1
  %158 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %data2.i.i, align 2
  %or52158.i.i = or i16 %159, %and528.i.i.i
  %160 = or i16 %or52158.i.i, 320
  store i16 %160, ptr %data2.i.i, align 2
  %161 = ptrtoint ptr %d1.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %d1.i.i, align 4
  %and59.i.i = and i32 %162, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i.i)
  %tobool.not.i255.i = icmp eq i32 %and59.i.i, 0
  br i1 %tobool.not.i255.i, label %le16_encode_bits.exit.i.i.do.end84.i.i_crit_edge, label %if.then.i256.i

le16_encode_bits.exit.i.i.do.end84.i.i_crit_edge: ; preds = %le16_encode_bits.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end84.i.i

if.then.i256.i:                                   ; preds = %le16_encode_bits.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %163 = or i16 %or52158.i.i, 448
  %164 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %163, ptr %data2.i.i, align 2
  br label %do.end84.i.i

do.end84.i.i:                                     ; preds = %if.then.i256.i, %le16_encode_bits.exit.i.i.do.end84.i.i_crit_edge
  %tobool85.not.i.i = icmp eq ptr %he_mu.0, null
  br i1 %tobool85.not.i.i, label %if.else.i.i, label %do.end101.i.i

do.end101.i.i:                                    ; preds = %do.end84.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %165 = trunc i32 %rate_n_flags to i16
  %166 = lshr i16 %165, 3
  %167 = and i16 %166, 768
  %flags2.i257.i = getelementptr inbounds %struct.ieee80211_radiotap_he_mu, ptr %he_mu.0, i32 0, i32 1
  br label %if.end137.sink.split.i.i

if.else.i.i:                                      ; preds = %do.end84.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582912, i32 %and.i253.i)
  %cmp.i.i = icmp eq i32 %and.i253.i, 12582912
  br i1 %cmp.i.i, label %do.end125.i.i, label %if.else.i.i.if.end25_crit_edge

if.else.i.i.if.end25_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

do.end125.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %168 = trunc i32 %rate_n_flags to i16
  %169 = shl i16 %168, 3
  %170 = and i16 %169, -16384
  %171 = or i16 %170, 8192
  %data6.i.i = getelementptr inbounds %struct.ieee80211_radiotap_he, ptr %call.i, i32 0, i32 5
  br label %if.end137.sink.split.i.i

if.end137.sink.split.i.i:                         ; preds = %do.end125.i.i, %do.end101.i.i
  %data6.sink188.i.i = phi ptr [ %data6.i.i, %do.end125.i.i ], [ %flags2.i257.i, %do.end101.i.i ]
  %.sink187.i.i = phi i16 [ %171, %do.end125.i.i ], [ %167, %do.end101.i.i ]
  %172 = ptrtoint ptr %data6.sink188.i.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %data6.sink188.i.i, align 2
  br label %sw.epilog194.sink.split.i

sw.bb179.i:                                       ; preds = %sw.epilog135.i
  call void @__sanitizer_cov_trace_pc() #13
  %174 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %call.i, align 2
  %176 = or i16 %175, 2048
  store i16 %176, ptr %call.i, align 2
  %d0184.i = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, ptr %phy_data, i32 0, i32 1
  %177 = ptrtoint ptr %d0184.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %d0184.i, align 4
  %sh.diff304.i = lshr i32 %178, 10
  %tr.sh.diff305.i = trunc i32 %sh.diff304.i to i16
  %179 = and i16 %tr.sh.diff305.i, 16384
  %data3189.i = getelementptr inbounds %struct.ieee80211_radiotap_he, ptr %call.i, i32 0, i32 2
  %180 = ptrtoint ptr %data3189.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %data3189.i, align 2
  br label %sw.epilog194.sink.split.i

sw.epilog194.sink.split.i:                        ; preds = %sw.bb179.i, %if.end137.sink.split.i.i
  %.sink187.i.sink.i = phi i16 [ %.sink187.i.i, %if.end137.sink.split.i.i ], [ %181, %sw.bb179.i ]
  %.sink.i = phi i16 [ %173, %if.end137.sink.split.i.i ], [ %179, %sw.bb179.i ]
  %data6.sink188.i.sink.i = phi ptr [ %data6.sink188.i.i, %if.end137.sink.split.i.i ], [ %data3189.i, %sw.bb179.i ]
  %or134159.i.i = or i16 %.sink.i, %.sink187.i.sink.i
  %182 = ptrtoint ptr %data6.sink188.i.sink.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %or134159.i.i, ptr %data6.sink188.i.sink.i, align 2
  br label %if.end25

if.end25:                                         ; preds = %sw.epilog194.sink.split.i, %if.else.i.i.if.end25_crit_edge, %sw.epilog135.i.if.end25_crit_edge, %if.then24.if.end25_crit_edge, %if.then24.if.end25_crit_edge265, %if.then24.if.end25_crit_edge266, %if.then24.if.end25_crit_edge267, %if.then24.if.end25_crit_edge268, %if.then24.if.end25_crit_edge269
  %183 = and i32 %conv21, 288
  call void @__sanitizer_cov_trace_const_cmp4(i32 288, i32 %183)
  %184 = icmp eq i32 %183, 288
  %185 = and i1 %tobool.not, %184
  br i1 %185, label %if.then35, label %if.end25.if.end56_crit_edge

if.end25.if.end56_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.then35:                                        ; preds = %if.end25
  %and37 = lshr i32 %conv21, 6
  %and37.lobit = and i32 %and37, 1
  %ampdu_toggle = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 21
  %186 = ptrtoint ptr %ampdu_toggle to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %ampdu_toggle, align 4, !range !145
  %188 = zext i8 %187 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and37.lobit, i32 %188)
  %cmp43.not = icmp eq i32 %and37.lobit, %188
  br i1 %cmp43.not, label %if.then35.if.end56_crit_edge, label %if.then45

if.then35.if.end56_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.then45:                                        ; preds = %if.then35
  %189 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %flag, align 8
  %or47 = or i32 %190, 33554432
  store i32 %or47, ptr %flag, align 8
  %d048 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, ptr %phy_data, i32 0, i32 1
  %191 = ptrtoint ptr %d048 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %d048, align 4
  %and49 = and i32 %192, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.then45.if.end56_crit_edge, label %if.then51

if.then45.if.end56_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.then51:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  %or53 = or i32 %190, 50331648
  %193 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %or53, ptr %flag, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %if.then45.if.end56_crit_edge, %if.then35.if.end56_crit_edge, %if.end25.if.end56_crit_edge, %if.end20.if.end56_crit_edge
  %194 = and i32 %rate_n_flags, 92274688
  call void @__sanitizer_cov_trace_const_cmp4(i32 75497472, i32 %194)
  %.not = icmp eq i32 %194, 75497472
  br i1 %.not, label %if.then62, label %if.end56.if.end66_crit_edge

if.end56.if.end66_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

if.then62:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  %bw = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 31
  %195 = ptrtoint ptr %bw to i32
  call void @__asan_loadN_noabort(i32 %195, i32 2)
  %bf.load = load i16, ptr %bw, align 1
  %bf.clear = and i16 %bf.load, -16129
  %bf.set65 = or i16 %bf.clear, 12800
  store i16 %bf.set65, ptr %bw, align 1
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %if.end56.if.end66_crit_edge
  %196 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %196, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %and, label %if.end66.if.end76_crit_edge [
    i32 8388608, label %if.end66.if.then72_crit_edge
    i32 0, label %if.end66.if.then72_crit_edge339
  ]

if.end66.if.then72_crit_edge339:                  ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then72

if.end66.if.then72_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then72

if.end66.if.end76_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

if.then72:                                        ; preds = %if.end66.if.then72_crit_edge, %if.end66.if.then72_crit_edge339
  %197 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %call.i, align 2
  %199 = or i16 %198, 64
  store i16 %199, ptr %call.i, align 2
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %if.end66.if.end76_crit_edge
  %200 = trunc i32 %rate_n_flags to i8
  %201 = lshr i8 %200, 4
  %202 = and i8 %201, 1
  %conv81 = add nuw nsw i8 %202, 1
  %nss = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 34
  %203 = ptrtoint ptr %nss to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %conv81, ptr %nss, align 2
  %conv83 = and i8 %200, 15
  %rate_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %204 = ptrtoint ptr %rate_idx to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %conv83, ptr %rate_idx, align 1
  %encoding = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 31
  %205 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %205, i32 2)
  %bf.load84 = load i16, ptr %encoding, align 1
  %206 = lshr i32 %rate_n_flags, 13
  %enc_flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 30
  %207 = ptrtoint ptr %enc_flags to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %enc_flags, align 2
  %209 = trunc i32 %206 to i8
  %210 = and i8 %209, 16
  %conv90 = or i8 %208, %210
  %and91 = and i32 %rate_n_flags, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  %211 = or i8 %conv90, -128
  %spec.select = select i1 %tobool92.not, i8 %conv90, i8 %211
  %212 = ptrtoint ptr %enc_flags to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %spec.select, ptr %enc_flags, align 2
  %213 = and i8 %209, 32
  %bf.shl = zext i8 %213 to i16
  %bf.set86 = and i16 %bf.load84, 16351
  %bf.clear104 = or i16 %bf.set86, %bf.shl
  %bf.set105 = or i16 %bf.clear104, -16384
  %214 = ptrtoint ptr %encoding to i32
  call void @__asan_storeN_noabort(i32 %214, i32 2)
  store i16 %bf.set105, ptr %encoding, align 1
  %sh.diff248 = lshr exact i32 %and, 15
  %215 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %call.i, align 2
  %217 = trunc i32 %sh.diff248 to i16
  %conv121 = or i16 %216, %217
  store i16 %conv121, ptr %call.i, align 2
  br i1 %tobool92.not, label %if.end76.if.end128_crit_edge, label %if.then124

if.end76.if.end128_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end128

if.then124:                                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  %data5 = getelementptr inbounds %struct.ieee80211_radiotap_he, ptr %call.i, i32 0, i32 4
  %218 = ptrtoint ptr %data5 to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %data5, align 2
  %220 = or i16 %219, 64
  store i16 %220, ptr %data5, align 2
  br label %if.end128

if.end128:                                        ; preds = %if.then124, %if.end76.if.end128_crit_edge
  %and129 = lshr i32 %rate_n_flags, 20
  %shr130 = and i32 %and129, 7
  %221 = zext i32 %shr130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %221, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %shr130, label %if.end128.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb147
    i32 2, label %sw.bb161
    i32 3, label %sw.bb175
    i32 4, label %sw.bb180
  ]

if.end128.sw.epilog_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 25165824, i32 %and)
  %cmp131 = icmp eq i32 %and, 25165824
  %222 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %222, i32 2)
  %bf.load134 = load i16, ptr %encoding, align 1
  %bf.clear135 = and i16 %bf.load134, -193
  %bf.set136 = or i16 %bf.clear135, 64
  %storemerge251 = select i1 %cmp131, i16 %bf.set136, i16 %bf.clear135
  store i16 %storemerge251, ptr %encoding, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %and)
  %cmp142 = icmp eq i32 %and, 16777216
  %. = select i1 %cmp142, i8 -64, i8 64
  br label %sw.epilog

sw.bb147:                                         ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 25165824, i32 %and)
  %cmp148 = icmp eq i32 %and, 25165824
  %223 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %223, i32 2)
  %bf.load152 = load i16, ptr %encoding, align 1
  %bf.clear153 = and i16 %bf.load152, -193
  %bf.set154 = or i16 %bf.clear153, 64
  %storemerge = select i1 %cmp148, i16 %bf.set154, i16 %bf.clear153
  store i16 %storemerge, ptr %encoding, align 1
  br label %sw.epilog

sw.bb161:                                         ; preds = %if.end128
  call void @__sanitizer_cov_trace_const_cmp4(i32 25165824, i32 %and)
  %cmp162 = icmp eq i32 %and, 25165824
  %224 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %224, i32 2)
  %bf.load166 = load i16, ptr %encoding, align 1
  %bf.clear167 = and i16 %bf.load166, -193
  br i1 %cmp162, label %if.then164, label %if.else169

if.then164:                                       ; preds = %sw.bb161
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set168 = or i16 %bf.clear167, 128
  %225 = ptrtoint ptr %encoding to i32
  call void @__asan_storeN_noabort(i32 %225, i32 2)
  store i16 %bf.set168, ptr %encoding, align 1
  br label %sw.epilog

if.else169:                                       ; preds = %sw.bb161
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set173 = or i16 %bf.clear167, 64
  %226 = ptrtoint ptr %encoding to i32
  call void @__asan_storeN_noabort(i32 %226, i32 2)
  store i16 %bf.set173, ptr %encoding, align 1
  br label %sw.epilog

sw.bb175:                                         ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #13
  %227 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %227, i32 2)
  %bf.load177 = load i16, ptr %encoding, align 1
  %bf.clear178 = and i16 %bf.load177, -193
  %bf.set179 = or i16 %bf.clear178, 128
  store i16 %bf.set179, ptr %encoding, align 1
  br label %sw.epilog

sw.bb180:                                         ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #13
  %228 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %228, i32 2)
  %bf.load182 = load i16, ptr %encoding, align 1
  %bf.clear183 = and i16 %bf.load182, -193
  store i16 %bf.clear183, ptr %encoding, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb180, %sw.bb175, %if.else169, %if.then164, %sw.bb147, %sw.bb, %if.end128.sw.epilog_crit_edge
  %ltf.0 = phi i8 [ -64, %sw.bb180 ], [ -64, %sw.bb175 ], [ -64, %if.then164 ], [ -128, %if.else169 ], [ -128, %sw.bb147 ], [ %., %sw.bb ], [ 0, %if.end128.sw.epilog_crit_edge ]
  %conv8.i = zext i8 %ltf.0 to i16
  %229 = shl nuw i16 %conv8.i, 8
  %data5188 = getelementptr inbounds %struct.ieee80211_radiotap_he, ptr %call.i, i32 0, i32 4
  %230 = ptrtoint ptr %data5188 to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %data5188, align 2
  %or190250 = or i16 %229, %231
  store i16 %or190250, ptr %data5188, align 2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_add_rtap_sniffer_config(ptr nocapture noundef readonly %mvm, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_aid = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 173
  %0 = ptrtoint ptr %cur_aid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cur_aid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 16) #11
  %align = getelementptr inbounds %struct.ieee80211_vendor_radiotap, ptr %call1, i32 0, i32 1
  %2 = ptrtoint ptr %align to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %align, align 1
  %oui = getelementptr inbounds %struct.ieee80211_vendor_radiotap, ptr %call1, i32 0, i32 2
  %3 = ptrtoint ptr %oui to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -10, ptr %oui, align 1
  %arrayidx3 = getelementptr %struct.ieee80211_vendor_radiotap, ptr %call1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 84, ptr %arrayidx3, align 1
  %arrayidx5 = getelementptr %struct.ieee80211_vendor_radiotap, ptr %call1, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 37, ptr %arrayidx5, align 1
  %subns = getelementptr inbounds %struct.ieee80211_vendor_radiotap, ptr %call1, i32 0, i32 3
  %6 = ptrtoint ptr %subns to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %subns, align 1
  %7 = ptrtoint ptr %call1 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 1, ptr %call1, align 1
  %len = getelementptr inbounds %struct.ieee80211_vendor_radiotap, ptr %call1, i32 0, i32 5
  %8 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 2, ptr %len, align 1
  %pad = getelementptr inbounds %struct.ieee80211_vendor_radiotap, ptr %call1, i32 0, i32 4
  %9 = ptrtoint ptr %pad to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %pad, align 1
  %data = getelementptr inbounds %struct.ieee80211_vendor_radiotap, ptr %call1, i32 0, i32 6
  %10 = ptrtoint ptr %cur_aid to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cur_aid, align 2
  %12 = ptrtoint ptr %data to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %data, align 1
  %add.ptr = getelementptr i8, ptr %data, i32 2
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 0, ptr %add.ptr, align 1
  %flag = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %14 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flag, align 8
  %or = or i32 %15, 1048576
  store i32 %or, ptr %flag, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta_by_ifaddr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_sta_modify_disable_tx_ap(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_stations_atomic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @iwl_mvm_rx_get_sta_block_tx(ptr nocapture noundef %data, ptr nocapture noundef readonly %sta) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vif = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 28, i32 10
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif, align 8
  %vif1 = getelementptr inbounds %struct.iwl_rx_sta_csa, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %vif1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vif1, align 4
  %cmp.not = icmp eq ptr %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %disable_tx = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i, i32 0, i32 19
  %4 = ptrtoint ptr %disable_tx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %disable_tx, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_modify_all_sta_disable_tx(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs_update_last_rssi(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_vif_to_wdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_fw_dbg_collect_trig(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_flip_address(ptr nocapture noundef %addr) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %addr, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %arrayidx.1 = getelementptr i8, ptr %addr, i32 4
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.1, align 1
  %arrayidx.2 = getelementptr i8, ptr %addr, i32 3
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.2, align 1
  %arrayidx.3 = getelementptr i8, ptr %addr, i32 2
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.3, align 1
  %arrayidx.4 = getelementptr i8, ptr %addr, i32 1
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.4, align 1
  %mac_addr.sroa.11.4.insert.ext = zext i8 %9 to i16
  %mac_addr.sroa.11.4.insert.shift = shl nuw i16 %mac_addr.sroa.11.4.insert.ext, 8
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %addr, align 1
  %mac_addr.sroa.11.5.insert.ext = zext i8 %11 to i16
  %mac_addr.sroa.11.5.insert.insert13 = or i16 %mac_addr.sroa.11.4.insert.shift, %mac_addr.sroa.11.5.insert.ext
  %mac_addr.sroa.0.sroa.9.0.insert.ext = zext i8 %7 to i32
  %mac_addr.sroa.0.sroa.7.0.insert.ext = zext i8 %5 to i32
  %mac_addr.sroa.0.sroa.7.0.insert.shift = shl nuw nsw i32 %mac_addr.sroa.0.sroa.7.0.insert.ext, 8
  %mac_addr.sroa.0.sroa.7.0.insert.insert = or i32 %mac_addr.sroa.0.sroa.7.0.insert.shift, %mac_addr.sroa.0.sroa.9.0.insert.ext
  %mac_addr.sroa.0.sroa.5.0.insert.ext = zext i8 %3 to i32
  %mac_addr.sroa.0.sroa.5.0.insert.shift = shl nuw nsw i32 %mac_addr.sroa.0.sroa.5.0.insert.ext, 16
  %mac_addr.sroa.0.sroa.5.0.insert.insert = or i32 %mac_addr.sroa.0.sroa.7.0.insert.insert, %mac_addr.sroa.0.sroa.5.0.insert.shift
  %mac_addr.sroa.0.sroa.0.0.insert.ext = zext i8 %1 to i32
  %mac_addr.sroa.0.sroa.0.0.insert.shift = shl nuw i32 %mac_addr.sroa.0.sroa.0.0.insert.ext, 24
  %mac_addr.sroa.0.sroa.0.0.insert.insert = or i32 %mac_addr.sroa.0.sroa.5.0.insert.insert, %mac_addr.sroa.0.sroa.0.0.insert.shift
  store i32 %mac_addr.sroa.0.sroa.0.0.insert.insert, ptr %addr, align 4
  store i16 %mac_addr.sroa.11.5.insert.insert13, ptr %arrayidx.1, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iwl_he_is_sgi(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_legacy_hw_idx_to_mac80211_idx(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_create_skb(ptr nocapture noundef readonly %mvm, ptr noundef %skb, ptr noundef %hdr, i16 noundef zeroext %len, i8 noundef zeroext %crypt_len, ptr nocapture noundef %rxb) unnamed_addr #0 align 64 {
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
  %6 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hdr, align 2
  %call1 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %7) #14
  %mac_flags1 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %mac_flags1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mac_flags1, align 1
  %10 = lshr i8 %9, 3
  %shl = and i8 %10, 30
  %mac_flags2 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, ptr %data, i32 0, i32 2
  %11 = ptrtoint ptr %mac_flags2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mac_flags2, align 1
  %13 = and i8 %12, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %sub = add i16 %len, -2
  %14 = lshr exact i8 %13, 4
  %15 = zext i8 %14 to i32
  %spec.select234 = select i1 %tobool.not, i16 %len, i16 %sub
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %shl)
  %tobool8.not = icmp eq i8 %shl, 0
  br i1 %tobool8.not, label %entry.if.end87_crit_edge, label %land.lhs.true

entry.if.end87_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

land.lhs.true:                                    ; preds = %entry
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags.i, align 4
  %20 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not = icmp eq i32 %20, 0
  br i1 %tobool.i.not, label %if.then10, label %land.lhs.true.if.end87_crit_edge

land.lhs.true.if.end87_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.then10:                                        ; preds = %land.lhs.true
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %5, align 1
  %23 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool12.not = icmp eq i32 %23, 0
  br i1 %tobool12.not, label %if.then13, label %if.then10.if.end45_crit_edge

if.then10.if.end45_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_cmp1(i8 %shl, i8 %crypt_len)
  %cmp = icmp ult i8 %shl, %crypt_len
  br i1 %cmp, label %do.end, label %if.end40, !prof !148

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 145, i32 noundef 9, ptr noundef null) #11
  br label %cleanup176

if.end40:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %sub43 = sub i8 %shl, %crypt_len
  br label %if.end45

if.end45:                                         ; preds = %if.end40, %if.then10.if.end45_crit_edge
  %mic_crc_len.0 = phi i8 [ %shl, %if.then10.if.end45_crit_edge ], [ %sub43, %if.end40 ]
  %24 = zext i8 %mic_crc_len.0 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %spec.select234, i16 %24)
  %cmp49 = icmp ult i16 %spec.select234, %24
  br i1 %cmp49, label %do.end66, label %cleanup, !prof !148

do.end66:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #11
  br label %cleanup176

cleanup:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %conv86 = sub i16 %spec.select234, %24
  br label %if.end87

if.end87:                                         ; preds = %cleanup, %land.lhs.true.if.end87_crit_edge, %entry.if.end87_crit_edge
  %len.addr.2 = phi i16 [ %spec.select234, %land.lhs.true.if.end87_crit_edge ], [ %conv86, %cleanup ], [ %spec.select234, %entry.if.end87_crit_edge ]
  %conv88 = zext i16 %len.addr.2 to i32
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %25 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not.i = icmp eq i32 %26, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.end87.skb_tailroom.exit_crit_edge

if.end87.skb_tailroom.exit_crit_edge:             ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %27 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %29 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.end87.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %if.end87.skb_tailroom.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %conv88)
  %cmp90.not = icmp slt i32 %cond.i, %conv88
  %conv93 = zext i8 %crypt_len to i32
  %add = add i32 %call1, %conv93
  %add94 = add i32 %add, 8
  %cond = select i1 %cmp90.not, i32 %add94, i32 %conv88
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %add)
  %cmp97 = icmp ult i32 %cond, %add
  br i1 %cmp97, label %skb_tailroom.exit.cleanup176_crit_edge, label %if.end106, !prof !148

skb_tailroom.exit.cleanup176_crit_edge:           ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup176

if.end106:                                        ; preds = %skb_tailroom.exit
  %call.i237 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %add) #11
  %31 = call ptr @memcpy(ptr %call.i237, ptr %hdr, i32 %add)
  %add.ptr = getelementptr i8, ptr %hdr, i32 %add
  %add.ptr108 = getelementptr i8, ptr %add.ptr, i32 %15
  %sub109 = sub i32 %cond, %add
  %call.i238 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %sub109) #11
  %32 = call ptr @memcpy(ptr %call.i238, ptr %add.ptr108, i32 %sub109)
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %33 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load = load i16, ptr %ip_summed, align 8
  %34 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %34)
  %cmp112 = icmp eq i16 %34, 1024
  br i1 %cmp112, label %land.lhs.true114, label %if.end106.if.end164_crit_edge

if.end106.if.end164_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

land.lhs.true114:                                 ; preds = %if.end106
  %trans = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 1
  %35 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %trans, align 4
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %40)
  %cmp115 = icmp ult i32 %40, 20
  br i1 %cmp115, label %if.then117, label %land.lhs.true114.if.end164_crit_edge

land.lhs.true114.if.end164_crit_edge:             ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

if.then117:                                       ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub109)
  %cmp121 = icmp ult i32 %sub109, 8
  br i1 %cmp121, label %if.then117.if.then159_crit_edge, label %lor.lhs.false, !prof !148

if.then117.if.then159_crit_edge:                  ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then159

lor.lhs.false:                                    ; preds = %if.then117
  %41 = ptrtoint ptr %add.ptr108 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr108, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rfc1042_header to i32))
  %43 = load i32, ptr @rfc1042_header, align 4
  %xor.i = xor i32 %43, %42
  %add.ptr.i = getelementptr i8, ptr %add.ptr108, i32 4
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %add.ptr.i, align 2
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x i8], ptr @rfc1042_header, i32 0, i32 4) to i32))
  %46 = load i16, ptr getelementptr inbounds ([6 x i8], ptr @rfc1042_header, i32 0, i32 4), align 2
  %xor31.i = xor i16 %46, %45
  %xor3.i = zext i16 %xor31.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %lor.rhs, label %lor.lhs.false.if.then159_crit_edge, !prof !149

lor.lhs.false.if.then159_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then159

lor.rhs:                                          ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct.anon.172, ptr %add.ptr108, i32 0, i32 1
  %47 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %type, align 1
  %49 = zext i16 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.64)
  switch i16 %48, label %lor.rhs.if.then159_crit_edge [
    i16 2048, label %lor.rhs.if.end164_crit_edge
    i16 2054, label %lor.rhs.if.end164_crit_edge246
    i16 -31011, label %lor.rhs.if.end164_crit_edge247
    i16 -32512, label %lor.rhs.if.end164_crit_edge248
    i16 -30578, label %lor.rhs.if.end164_crit_edge249
    i16 -30451, label %lor.rhs.if.end164_crit_edge250
  ]

lor.rhs.if.end164_crit_edge250:                   ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

lor.rhs.if.end164_crit_edge249:                   ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

lor.rhs.if.end164_crit_edge248:                   ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

lor.rhs.if.end164_crit_edge247:                   ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

lor.rhs.if.end164_crit_edge246:                   ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

lor.rhs.if.end164_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

lor.rhs.if.then159_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then159

if.then159:                                       ; preds = %lor.rhs.if.then159_crit_edge, %lor.lhs.false.if.then159_crit_edge, %if.then117.if.then159_crit_edge
  %bf.clear162 = and i16 %bf.load, -1537
  %50 = ptrtoint ptr %ip_summed to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %bf.clear162, ptr %ip_summed, align 8
  br label %if.end164

if.end164:                                        ; preds = %if.then159, %lor.rhs.if.end164_crit_edge, %lor.rhs.if.end164_crit_edge246, %lor.rhs.if.end164_crit_edge247, %lor.rhs.if.end164_crit_edge248, %lor.rhs.if.end164_crit_edge249, %lor.rhs.if.end164_crit_edge250, %land.lhs.true114.if.end164_crit_edge, %if.end106.if.end164_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv88)
  %tobool167.not = icmp eq i32 %cond, %conv88
  br i1 %tobool167.not, label %if.end164.cleanup176_crit_edge, label %if.then168

if.end164.cleanup176_crit_edge:                   ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup176

if.then168:                                       ; preds = %if.end164
  %sub166 = sub i32 %conv88, %cond
  %add.ptr169 = getelementptr i8, ptr %hdr, i32 %cond
  %add.ptr170 = getelementptr i8, ptr %add.ptr169, i32 %15
  %51 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rxb, align 4
  %call.i239 = tail call ptr @page_address(ptr noundef %52) #11
  %53 = ptrtoint ptr %call.i239 to i32
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr170 to i32
  %add173 = sub i32 %sub.ptr.lhs.cast, %53
  %_page_stolen.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 2
  %54 = ptrtoint ptr %_page_stolen.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %_page_stolen.i, align 4
  %55 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rxb, align 4
  %57 = getelementptr inbounds %struct.page, ptr %56, i32 0, i32 1
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %57, align 4
  %and.i.i.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !149

if.then.i.i.i:                                    ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i = add i32 %59, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %56 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %60, %if.end.i.i.i ]
  %61 = inttoptr i32 %retval.0.i.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %61, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  %62 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  %add.i.i.i = add i32 %63, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i.i)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i, 128
  br i1 %cmp.i.i.i, label %if.then.i1.i.i, label %do.end5.i.i.i, !prof !148

if.then.i1.i.i:                                   ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %61, ptr noundef nonnull @.str.41) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #11, !srcloc !154
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit.i.i
  %call.i.i.i.i9.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #11, !srcloc !155
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@iwl_mvm_create_skb, %if.then.i.i.i.i.i)) #11
          to label %rxb_steal_page.exit [label %if.then.i.i.i.i.i], !srcloc !156

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__page_ref_mod(ptr noundef %61, i32 noundef 1) #11
  br label %rxb_steal_page.exit

rxb_steal_page.exit:                              ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i
  %65 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rxb, align 4
  %truesize = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 4
  %67 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %truesize, align 4
  tail call void @skb_add_rx_frag(ptr noundef %skb, i32 noundef 0, ptr noundef %66, i32 noundef %add173, i32 noundef %sub166, i32 noundef %68) #11
  br label %cleanup176

cleanup176:                                       ; preds = %rxb_steal_page.exit, %if.end164.cleanup176_crit_edge, %skb_tailroom.exit.cleanup176_crit_edge, %do.end66, %do.end
  %retval.1 = phi i32 [ -22, %skb_tailroom.exit.cleanup176_crit_edge ], [ 0, %rxb_steal_page.exit ], [ 0, %if.end164.cleanup176_crit_edge ], [ -22, %do.end66 ], [ -22, %do.end ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_pass_packet_to_mac80211(ptr nocapture noundef readonly %mvm, ptr noundef %napi, ptr noundef %skb, i32 noundef %queue, ptr noundef %sta) unnamed_addr #0 align 64 {
entry:
  %pn.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1.i.i, align 4
  %flag.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %2 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flag.i.i, align 8
  %and.i.i = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.idx.i.i = select i1 %tobool.not.i.i, i32 0, i32 12
  %spec.select.i.i = getelementptr i8, ptr %1, i32 %spec.select.idx.i.i
  %and12.i.i = and i32 %3, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %tobool13.not.i.i = icmp eq i32 %and12.i.i, 0
  %data.1.idx.i.i = select i1 %tobool13.not.i.i, i32 0, i32 12
  %data.1.i.i = getelementptr i8, ptr %spec.select.i.i, i32 %data.1.idx.i.i
  %and18.i.i = lshr i32 %3, 26
  %4 = and i32 %and18.i.i, 4
  %data.2.i.i = getelementptr i8, ptr %data.1.i.i, i32 %4
  %and24.i.i = and i32 %3, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %tobool25.not.i.i = icmp eq i32 %and24.i.i, 0
  br i1 %tobool25.not.i.i, label %entry.iwl_mvm_skb_get_hdr.exit.i_crit_edge, label %if.then26.i.i

entry.iwl_mvm_skb_get_hdr.exit.i_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_skb_get_hdr.exit.i

if.then26.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %len.i.i = getelementptr inbounds %struct.ieee80211_vendor_radiotap, ptr %data.2.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %len.i.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %len.i.i, align 1
  %conv.i.i = zext i16 %6 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 12
  %pad.i.i = getelementptr inbounds %struct.ieee80211_vendor_radiotap, ptr %data.2.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %pad.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pad.i.i, align 1
  %conv27.i.i = zext i8 %8 to i32
  %add28.i.i = add nuw nsw i32 %add.i.i, %conv27.i.i
  %add.ptr29.i.i = getelementptr i8, ptr %data.2.i.i, i32 %add28.i.i
  br label %iwl_mvm_skb_get_hdr.exit.i

iwl_mvm_skb_get_hdr.exit.i:                       ; preds = %if.then26.i.i, %entry.iwl_mvm_skb_get_hdr.exit.i_crit_edge
  %data.3.i.i = phi ptr [ %add.ptr29.i.i, %if.then26.i.i ], [ %data.2.i.i, %entry.iwl_mvm_skb_get_hdr.exit.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %pn.i) #11
  %9 = getelementptr inbounds [6 x i8], ptr %pn.i, i32 0, i32 1
  %10 = getelementptr inbounds [6 x i8], ptr %pn.i, i32 0, i32 2
  %11 = getelementptr inbounds [6 x i8], ptr %pn.i, i32 0, i32 3
  %12 = getelementptr inbounds [6 x i8], ptr %pn.i, i32 0, i32 4
  %13 = getelementptr inbounds [6 x i8], ptr %pn.i, i32 0, i32 5
  %14 = ptrtoint ptr %data.3.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %data.3.i.i, align 2
  %16 = and i16 %15, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %16)
  %cmp.i.i = icmp eq i16 %16, 2048
  br i1 %cmp.i.i, label %lor.lhs.false.i, label %iwl_mvm_skb_get_hdr.exit.i.if.else_crit_edge

iwl_mvm_skb_get_hdr.exit.i.if.else_crit_edge:     ; preds = %iwl_mvm_skb_get_hdr.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

lor.lhs.false.i:                                  ; preds = %iwl_mvm_skb_get_hdr.exit.i
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %data.3.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr1.i, align 4
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not.i = icmp eq i32 %19, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %lor.lhs.false.i.if.else_crit_edge

lor.lhs.false.i.if.else_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.end.i:                                         ; preds = %lor.lhs.false.i
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %queue)
  %cmp.i = icmp eq i32 %queue, 0
  %or.cond.i = or i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end.i.if.else_crit_edge, label %if.end7.i

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.end7.i:                                        ; preds = %if.end.i
  %tobool.not.i117.i = icmp eq ptr %sta, null
  %cmp.i118.i = icmp ugt ptr %sta, inttoptr (i32 -4096 to ptr)
  %spec.select.i119.i = or i1 %tobool.not.i117.i, %cmp.i118.i
  br i1 %spec.select.i119.i, label %do.end.i, label %if.end13.i

do.end.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %21, i32 noundef 8192, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_check_pn, ptr noundef nonnull @.str.45) #11
  br label %if.then

if.end13.i:                                       ; preds = %if.end7.i
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %call16.i = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %15) #14
  %add.ptr.i = getelementptr i8, ptr %data.3.i.i, i32 %call16.i
  %arrayidx.i = getelementptr i8, ptr %add.ptr.i, i32 3
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %24 = lshr i8 %23, 6
  %idxprom.i = zext i8 %24 to i32
  %arrayidx22.i = getelementptr %struct.iwl_mvm_sta, ptr %drv_priv.i.i, i32 0, i32 14, i32 %idxprom.i
  %25 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %arrayidx22.i, align 4
  %call24.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %land.lhs.true.i, label %if.end13.i.do.end33.i_crit_edge

if.end13.i.do.end33.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33.i

land.lhs.true.i:                                  ; preds = %if.end13.i
  %call26.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true.i.do.end33.i_crit_edge, label %land.lhs.true28.i

land.lhs.true.i.do.end33.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33.i

land.lhs.true28.i:                                ; preds = %land.lhs.true.i
  %.b116.i = load i1, ptr @iwl_mvm_check_pn.__warned, align 1
  br i1 %.b116.i, label %land.lhs.true28.i.do.end33.i_crit_edge, label %if.then30.i

land.lhs.true28.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_check_pn.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 82, ptr noundef nonnull @.str.1) #11
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then30.i, %land.lhs.true28.i.do.end33.i_crit_edge, %land.lhs.true.i.do.end33.i_crit_edge, %if.end13.i.do.end33.i_crit_edge
  %tobool35.not.i = icmp eq ptr %26, null
  br i1 %tobool35.not.i, label %do.end33.i.if.then_crit_edge, label %if.end37.i

do.end33.i.if.then_crit_edge:                     ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end37.i:                                       ; preds = %do.end33.i
  %27 = ptrtoint ptr %data.3.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %data.3.i.i, align 2
  %29 = and i16 %28, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %29)
  %cmp.i120.i = icmp eq i16 %29, -30720
  br i1 %cmp.i120.i, label %if.end42.i, label %if.end37.i.if.end47.i_crit_edge

if.end37.i.if.end47.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47.i

if.end42.i:                                       ; preds = %if.end37.i
  %30 = and i16 %28, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %30)
  %cmp.i.i.i.i = icmp eq i16 %30, 3
  %retval.0.v.i.i.i = select i1 %cmp.i.i.i.i, i32 30, i32 24
  %retval.0.i.i.i = getelementptr i8, ptr %data.3.i.i, i32 %retval.0.v.i.i.i
  %31 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %retval.0.i.i.i, align 1
  %33 = and i8 %32, 15
  %phi.cast.i = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %33)
  %cmp44.i = icmp ugt i8 %33, 7
  br i1 %cmp44.i, label %if.end42.i.if.then_crit_edge, label %if.end42.i.if.end47.i_crit_edge

if.end42.i.if.end47.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47.i

if.end42.i.if.then_crit_edge:                     ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end47.i:                                       ; preds = %if.end42.i.if.end47.i_crit_edge, %if.end37.i.if.end47.i_crit_edge
  %tid.0123.i = phi i32 [ %phi.cast.i, %if.end42.i.if.end47.i_crit_edge ], [ 0, %if.end37.i.if.end47.i_crit_edge ]
  %arrayidx48.i = getelementptr i8, ptr %add.ptr.i, i32 7
  %34 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx48.i, align 1
  %36 = ptrtoint ptr %pn.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %pn.i, align 1
  %arrayidx50.i = getelementptr i8, ptr %add.ptr.i, i32 6
  %37 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx50.i, align 1
  %39 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %9, align 1
  %arrayidx52.i = getelementptr i8, ptr %add.ptr.i, i32 5
  %40 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx52.i, align 1
  %42 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %10, align 1
  %arrayidx54.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %43 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx54.i, align 1
  %45 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %11, align 1
  %arrayidx56.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %46 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx56.i, align 1
  %48 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %12, align 1
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %add.ptr.i, align 1
  %51 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %13, align 1
  %arrayidx61.i = getelementptr %struct.iwl_mvm_key_pn, ptr %26, i32 0, i32 2, i32 %queue
  %arrayidx64.i = getelementptr [8 x [6 x i8]], ptr %arrayidx61.i, i32 0, i32 %tid.0123.i
  %call66.i = call i32 @memcmp(ptr noundef nonnull dereferenceable(6) %pn.i, ptr noundef dereferenceable(6) %arrayidx64.i, i32 noundef 6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %cmp67.i = icmp slt i32 %call66.i, 0
  br i1 %cmp67.i, label %if.end47.i.if.then_crit_edge, label %if.end70.i

if.end47.i.if.then_crit_edge:                     ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end70.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %tobool71.not.i = icmp eq i32 %call66.i, 0
  br i1 %tobool71.not.i, label %land.lhs.true72.i, label %if.end70.i.if.end77.i_crit_edge

if.end70.i.if.end77.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77.i

land.lhs.true72.i:                                ; preds = %if.end70.i
  %52 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flag.i.i, align 8
  %and74.i = and i32 %53, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  br i1 %tobool75.not.i, label %land.lhs.true72.i.if.then_crit_edge, label %land.lhs.true72.i.if.end77.i_crit_edge

land.lhs.true72.i.if.end77.i_crit_edge:           ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77.i

land.lhs.true72.i.if.then_crit_edge:              ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end77.i:                                       ; preds = %land.lhs.true72.i.if.end77.i_crit_edge, %if.end70.i.if.end77.i_crit_edge
  %54 = call ptr @memcpy(ptr %arrayidx64.i, ptr %pn.i, i32 6)
  %55 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flag.i.i, align 8
  %or.i = or i32 %56, 1024
  store i32 %or.i, ptr %flag.i.i, align 8
  br label %if.else

if.then:                                          ; preds = %land.lhs.true72.i.if.then_crit_edge, %if.end47.i.if.then_crit_edge, %if.end42.i.if.then_crit_edge, %do.end33.i.if.then_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %pn.i) #11
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %if.end

if.else:                                          ; preds = %if.end77.i, %if.end.i.if.else_crit_edge, %lor.lhs.false.i.if.else_crit_edge, %iwl_mvm_skb_get_hdr.exit.i.if.else_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %pn.i) #11
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %57 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_rx_napi(ptr noundef %58, ptr noundef %sta, ptr noundef %skb, ptr noundef %napi) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rx_monitor_no_data(ptr noundef %mvm, ptr noundef %napi, ptr nocapture noundef readonly %rxb, i32 noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  %phy_data = alloca %struct.iwl_mvm_rx_phy_data, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i321 = tail call ptr @page_address(ptr noundef %1) #11
  %2 = ptrtoint ptr %call.i321 to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  %rate = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 3
  %6 = ptrtoint ptr %rate to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %rate, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %on_air_rise_time = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2
  %9 = ptrtoint ptr %on_air_rise_time to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %on_air_rise_time, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %rssi1 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %12 = ptrtoint ptr %rssi1 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %rssi1, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %data, align 1
  %17 = lshr i32 %16, 24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %phy_data) #11
  %18 = getelementptr inbounds i8, ptr %phy_data, i32 20
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %18, align 4
  %phy_info3 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 3, i32 1
  %arrayidx = getelementptr %struct.iwl_rx_packet, ptr %5, i32 4
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %arrayidx, align 1
  %22 = lshr i32 %21, 4
  %div4.i338 = and i32 %22, 15
  %23 = ptrtoint ptr %phy_data to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div4.i338, ptr %phy_data, align 4
  %d0 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, ptr %phy_data, i32 0, i32 1
  %24 = ptrtoint ptr %phy_info3 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %phy_info3, align 1
  %26 = ptrtoint ptr %d0 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %d0, align 4
  %d1 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, ptr %phy_data, i32 0, i32 2
  %27 = ptrtoint ptr %d1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %21, ptr %d1, align 4
  %d2 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, ptr %phy_data, i32 0, i32 3
  %28 = ptrtoint ptr %d2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %d2, align 4
  %d3 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, ptr %phy_data, i32 0, i32 4
  %29 = ptrtoint ptr %d3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %d3, align 4
  %d4 = getelementptr inbounds %struct.iwl_mvm_rx_phy_data, ptr %phy_data, i32 0, i32 5
  %30 = ptrtoint ptr %d4 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %d4, align 4
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %31 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fw, align 8
  %call9 = tail call zeroext i8 @iwl_fw_lookup_notif_ver(ptr noundef %32, i8 noundef zeroext 5, i8 noundef zeroext -11, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call9)
  %cmp = icmp ult i8 %call9, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %34, i32 noundef 8192, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_monitor_no_data, ptr noundef nonnull @.str.23, i32 noundef %8) #11
  %call14 = tail call i32 @iwl_new_rate_from_v1(i32 noundef %8) #11
  %35 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %36, i32 noundef 8192, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_monitor_no_data, ptr noundef nonnull @.str.24, i32 noundef %call14) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %rate_n_flags.0 = phi i32 [ %call14, %do.end ], [ %8, %entry.if.end_crit_edge ]
  %and22 = and i32 %rate_n_flags.0, 1792
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %5, align 1
  %39 = and i32 %38, -12648448
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #11
  %sub.i = add nsw i32 %40, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %sub.i)
  %cmp24 = icmp ult i32 %sub.i, 36
  br i1 %cmp24, label %if.end.cleanup224_crit_edge, label %if.end28, !prof !148

if.end.cleanup224_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup224

if.end28:                                         ; preds = %if.end
  %status = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %41 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %status, align 4
  %43 = and i32 %42, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool30.not = icmp eq i32 %43, 0
  br i1 %tobool30.not, label %if.end38, label %if.end28.cleanup224_crit_edge, !prof !149

if.end28.cleanup224_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup224

if.end38:                                         ; preds = %if.end28
  %and41 = lshr i32 %14, 8
  %and44 = lshr i32 %14, 16
  %call.i322 = tail call ptr @__alloc_skb(i32 noundef 128, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool48.not = icmp eq ptr %call.i322, null
  br i1 %tobool48.not, label %do.end53, label %if.end57

do.end53:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %45, i32 noundef 0, ptr noundef nonnull @.str.19) #11
  br label %cleanup224

if.end57:                                         ; preds = %if.end38
  %flag = getelementptr inbounds %struct.sk_buff, ptr %call.i322, i32 0, i32 3, i32 24
  %46 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flag, align 8
  %or = or i32 %47, 536870912
  store i32 %or, ptr %flag, align 8
  %trunc = trunc i32 %17 to i8
  %switch.tableidx = add i8 %trunc, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %48 = icmp ult i8 %switch.tableidx, 3
  %switch.cast = zext i8 %switch.tableidx to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 65792, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %.sink = select i1 %48, i8 %switch.masked, i8 -1
  %zero_length_psdu_type61 = getelementptr inbounds %struct.sk_buff, ptr %call.i322, i32 0, i32 3, i32 45
  %49 = ptrtoint ptr %zero_length_psdu_type61 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %.sink, ptr %zero_length_psdu_type61, align 1
  %and62 = and i32 %rate_n_flags.0, 14336
  %50 = zext i32 %and62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %and62, label %if.end57.sw.epilog74_crit_edge [
    i32 6144, label %sw.bb69
    i32 2048, label %if.end57.sw.epilog74.sink.split_crit_edge
    i32 4096, label %sw.bb64
  ]

if.end57.sw.epilog74.sink.split_crit_edge:        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog74.sink.split

if.end57.sw.epilog74_crit_edge:                   ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog74

sw.bb64:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog74.sink.split

sw.bb69:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog74.sink.split

sw.epilog74.sink.split:                           ; preds = %sw.bb69, %sw.bb64, %if.end57.sw.epilog74.sink.split_crit_edge
  %.sink341 = phi i16 [ 10240, %sw.bb69 ], [ 8192, %sw.bb64 ], [ 6144, %if.end57.sw.epilog74.sink.split_crit_edge ]
  %bw = getelementptr inbounds %struct.sk_buff, ptr %call.i322, i32 0, i32 3, i32 31
  %51 = ptrtoint ptr %bw to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %bf.load71 = load i16, ptr %bw, align 1
  %bf.clear72 = and i16 %bf.load71, -14337
  %bf.set73 = or i16 %bf.clear72, %.sink341
  store i16 %bf.set73, ptr %bw, align 1
  br label %sw.epilog74

sw.epilog74:                                      ; preds = %sw.epilog74.sink.split, %if.end57.sw.epilog74_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and22)
  %cmp75 = icmp eq i32 %and22, 1024
  br i1 %cmp75, label %if.then77, label %sw.epilog74.if.end78_crit_edge

sw.epilog74.if.end78_crit_edge:                   ; preds = %sw.epilog74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

if.then77:                                        ; preds = %sw.epilog74
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @iwl_mvm_rx_he(ptr noundef %mvm, ptr noundef nonnull %call.i322, ptr noundef nonnull %phy_data, i32 noundef %rate_n_flags.0, i16 noundef zeroext 256, i32 noundef %queue)
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %sw.epilog74.if.end78_crit_edge
  %.off.i = add nsw i32 %div4.i338, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 8
  br i1 %switch.i, label %sw.bb.i, label %if.end78.iwl_mvm_decode_lsig.exit_crit_edge

if.end78.iwl_mvm_decode_lsig.exit_crit_edge:      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_mvm_decode_lsig.exit

sw.bb.i:                                          ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i323 = tail call ptr @skb_put(ptr noundef nonnull %call.i322, i32 noundef 4) #11
  %52 = ptrtoint ptr %call1.i323 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 512, ptr %call1.i323, align 2
  %53 = and i32 %21, 65295
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #11
  %55 = lshr exact i32 %54, 12
  %conv8.i.i = trunc i32 %55 to i16
  %56 = tail call i16 @llvm.bswap.i16(i16 %conv8.i.i) #11
  %data2.i = getelementptr inbounds %struct.ieee80211_radiotap_lsig, ptr %call1.i323, i32 0, i32 1
  %57 = ptrtoint ptr %data2.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %data2.i, align 2
  %58 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flag, align 8
  %or.i = or i32 %59, 268435456
  store i32 %or.i, ptr %flag, align 8
  br label %iwl_mvm_decode_lsig.exit

iwl_mvm_decode_lsig.exit:                         ; preds = %sw.bb.i, %if.end78.iwl_mvm_decode_lsig.exit_crit_edge
  %device_timestamp = getelementptr inbounds %struct.sk_buff, ptr %call.i322, i32 0, i32 3, i32 16
  %60 = ptrtoint ptr %device_timestamp to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %11, ptr %device_timestamp, align 8
  %conv79 = and i32 %and44, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %conv79)
  %cmp80 = icmp ugt i32 %conv79, 14
  %conv82 = zext i1 %cmp80 to i8
  %band = getelementptr inbounds %struct.sk_buff, ptr %call.i322, i32 0, i32 3, i32 36
  %61 = ptrtoint ptr %band to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv82, ptr %band, align 4
  %conv85 = zext i1 %cmp80 to i32
  %call.i324 = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv79, i32 noundef %conv85) #11
  %div.i = udiv i32 %call.i324, 1000
  %conv87 = trunc i32 %div.i to i16
  %freq = getelementptr inbounds %struct.sk_buff, ptr %call.i322, i32 0, i32 3, i32 28
  %62 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %62)
  %bf.load88 = load i16, ptr %freq, align 4
  %bf.shl = shl i16 %conv87, 3
  %bf.clear89 = and i16 %bf.load88, 7
  %bf.set90 = or i16 %bf.shl, %bf.clear89
  store i16 %bf.set90, ptr %freq, align 4
  %conv91 = and i32 %14, 255
  %conv92 = and i32 %and41, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv91)
  %tobool.not.i325 = icmp eq i32 %conv91, 0
  %sub.i326 = sub nsw i32 0, %conv91
  %spec.select.i = select i1 %tobool.not.i325, i32 -128, i32 %sub.i326
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv92)
  %tobool1.not.i = icmp eq i32 %conv92, 0
  %sub3.i = sub nsw i32 0, %conv92
  %cond6.i = select i1 %tobool1.not.i, i32 -128, i32 %sub3.i
  %63 = tail call i32 @llvm.smax.i32(i32 %spec.select.i, i32 %cond6.i) #11
  %64 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %65, i32 noundef 536870912, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_get_signal_strength, ptr noundef nonnull @.str.35, i32 noundef %spec.select.i, i32 noundef %cond6.i, i32 noundef %63) #11
  %conv.i = trunc i32 %63 to i8
  %signal.i = getelementptr inbounds %struct.sk_buff, ptr %call.i322, i32 0, i32 3, i32 38
  %66 = ptrtoint ptr %signal.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv.i, ptr %signal.i, align 2
  %and.i327 = lshr i32 %rate_n_flags.0, 14
  %67 = trunc i32 %and.i327 to i8
  %conv14.i = and i8 %67, 3
  %chains.i = getelementptr inbounds %struct.sk_buff, ptr %call.i322, i32 0, i32 3, i32 39
  %68 = ptrtoint ptr %chains.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv14.i, ptr %chains.i, align 1
  %conv15.i = trunc i32 %spec.select.i to i8
  %chain_signal.i = getelementptr inbounds %struct.sk_buff, ptr %call.i322, i32 0, i32 3, i32 40
  %69 = ptrtoint ptr %chain_signal.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv15.i, ptr %chain_signal.i, align 8
  %conv16.i = trunc i32 %cond6.i to i8
  %arrayidx18.i = getelementptr %struct.sk_buff, ptr %call.i322, i32 0, i32 3, i32 41
  %70 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv16.i, ptr %arrayidx18.i, align 1
  %71 = tail call i32 @llvm.read_register.i32(metadata !135) #11
  %and.i.i.i.i.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %74, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !146
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %iwl_mvm_decode_lsig.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

iwl_mvm_decode_lsig.exit.rcu_read_lock.exit_crit_edge: ; preds = %iwl_mvm_decode_lsig.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %iwl_mvm_decode_lsig.exit
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %iwl_mvm_decode_lsig.exit.rcu_read_lock.exit_crit_edge
  br i1 %cmp75, label %cond.true, label %cond.false

cond.true:                                        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call95 = tail call zeroext i1 @iwl_he_is_sgi(i32 noundef %rate_n_flags.0) #11
  %conv96 = zext i1 %call95 to i32
  br label %cond.end

cond.false:                                       ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %and97 = and i32 %rate_n_flags.0, 1048576
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond98 = phi i32 [ %conv96, %cond.true ], [ %and97, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %cmp100 = icmp eq i32 %and22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond98)
  %tobool99.not = icmp eq i32 %cond98, 0
  %or.cond = select i1 %cmp100, i1 true, i1 %tobool99.not
  br i1 %or.cond, label %cond.end.if.end108_crit_edge, label %if.then104

cond.end.if.end108_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

if.then104:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %enc_flags = getelementptr inbounds %struct.sk_buff, ptr %call.i322, i32 0, i32 3, i32 30
  %75 = ptrtoint ptr %enc_flags to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %enc_flags, align 2
  %77 = or i8 %76, 4
  store i8 %77, ptr %enc_flags, align 2
  br label %if.end108

if.end108:                                        ; preds = %if.then104, %cond.end.if.end108_crit_edge
  %and109 = and i32 %rate_n_flags.0, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.end108.if.end116_crit_edge, label %if.then111

if.end108.if.end116_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end116

if.then111:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  %enc_flags112 = getelementptr inbounds %struct.sk_buff, ptr %call.i322, i32 0, i32 3, i32 30
  %78 = ptrtoint ptr %enc_flags112 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %enc_flags112, align 2
  %80 = or i8 %79, 64
  store i8 %80, ptr %enc_flags112, align 2
  br label %if.end116

if.end116:                                        ; preds = %if.then111, %if.end108.if.end116_crit_edge
  %81 = zext i32 %and22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %and22, label %if.else167 [
    i32 512, label %if.then119
    i32 768, label %if.then138
  ]

if.then119:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  %encoding = getelementptr inbounds %struct.sk_buff, ptr %call.i322, i32 0, i32 3, i32 31
  %82 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %82, i32 2)
  %bf.load123 = load i16, ptr %encoding, align 1
  %bf.clear124 = and i16 %bf.load123, 16383
  %bf.set125 = or i16 %bf.clear124, 16384
  store i16 %bf.set125, ptr %encoding, align 1
  %and126 = lshr i32 %rate_n_flags.0, 1
  %shr127 = and i32 %and126, 8
  %and128 = and i32 %rate_n_flags.0, 7
  %or129 = or i32 %shr127, %and128
  %conv130 = trunc i32 %or129 to i8
  %rate_idx = getelementptr inbounds %struct.sk_buff, ptr %call.i322, i32 0, i32 3, i32 33
  %83 = ptrtoint ptr %rate_idx to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv130, ptr %rate_idx, align 1
  %84 = lshr i32 %rate_n_flags.0, 13
  %enc_flags132 = getelementptr inbounds %struct.sk_buff, ptr %call.i322, i32 0, i32 3, i32 30
  %85 = ptrtoint ptr %enc_flags132 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %enc_flags132, align 2
  %87 = trunc i32 %84 to i8
  %88 = and i8 %87, 16
  %conv135 = or i8 %86, %88
  store i8 %conv135, ptr %enc_flags132, align 2
  br label %if.end223

if.then138:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  %89 = trunc i32 %rate_n_flags.0 to i8
  %conv144 = and i8 %89, 15
  %rate_idx145 = getelementptr inbounds %struct.sk_buff, ptr %call.i322, i32 0, i32 3, i32 33
  %90 = ptrtoint ptr %rate_idx145 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv144, ptr %rate_idx145, align 1
  %encoding146 = getelementptr inbounds %struct.sk_buff, ptr %call.i322, i32 0, i32 3, i32 31
  %91 = ptrtoint ptr %encoding146 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 2)
  %bf.load147 = load i16, ptr %encoding146, align 1
  %bf.clear148 = and i16 %bf.load147, 16383
  %bf.set149 = or i16 %bf.clear148, -32768
  store i16 %bf.set149, ptr %encoding146, align 1
  %92 = lshr i32 %rate_n_flags.0, 13
  %enc_flags152 = getelementptr inbounds %struct.sk_buff, ptr %call.i322, i32 0, i32 3, i32 30
  %93 = ptrtoint ptr %enc_flags152 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %enc_flags152, align 2
  %95 = trunc i32 %92 to i8
  %96 = and i8 %95, 16
  %and156 = lshr i32 %rate_n_flags.0, 12
  %97 = trunc i32 %and156 to i8
  %98 = and i8 %97, -128
  %conv155 = or i8 %98, %96
  %99 = or i8 %conv155, %94
  store i8 %99, ptr %enc_flags152, align 2
  %rx_vec = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 4, i32 1
  %100 = ptrtoint ptr %rx_vec to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %101 = load i32, ptr %rx_vec, align 1
  %102 = trunc i32 %101 to i8
  %103 = lshr i8 %102, 3
  %104 = and i8 %103, 7
  %conv166 = add nuw nsw i8 %104, 1
  %nss = getelementptr inbounds %struct.sk_buff, ptr %call.i322, i32 0, i32 3, i32 34
  %105 = ptrtoint ptr %nss to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv166, ptr %nss, align 2
  br label %if.end223

if.else167:                                       ; preds = %if.end116
  br i1 %cmp75, label %if.then170, label %if.else177

if.then170:                                       ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #13
  %rx_vec171 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 4, i32 1
  %106 = ptrtoint ptr %rx_vec171 to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %rx_vec171, align 1
  %108 = and i32 %107, 32771
  %109 = tail call i32 @llvm.bswap.i32(i32 %108)
  %div4.i320340 = lshr exact i32 %109, 23
  %110 = trunc i32 %div4.i320340 to i8
  %conv175 = add nuw nsw i8 %110, 1
  %nss176 = getelementptr inbounds %struct.sk_buff, ptr %call.i322, i32 0, i32 3, i32 34
  %111 = ptrtoint ptr %nss176 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv175, ptr %nss176, align 2
  br label %if.end223

if.else177:                                       ; preds = %if.else167
  %112 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %band, align 4
  %conv180 = zext i8 %113 to i32
  %call181 = tail call i32 @iwl_mvm_legacy_hw_idx_to_mac80211_idx(i32 noundef %rate_n_flags.0, i32 noundef %conv180) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call181)
  %114 = icmp ugt i32 %call181, 255
  br i1 %114, label %cleanup, label %cleanup.thread, !prof !148

cleanup.thread:                                   ; preds = %if.else177
  call void @__sanitizer_cov_trace_pc() #13
  %conv219 = trunc i32 %call181 to i8
  %rate_idx220 = getelementptr inbounds %struct.sk_buff, ptr %call.i322, i32 0, i32 3, i32 33
  %115 = ptrtoint ptr %rate_idx220 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv219, ptr %rate_idx220, align 1
  br label %if.end223

cleanup:                                          ; preds = %if.else177
  call void @__sanitizer_cov_trace_pc() #13
  %116 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %band, align 4
  %conv203 = zext i8 %117 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2177, i32 noundef 9, ptr noundef nonnull @.str.22, i32 noundef %rate_n_flags.0, i32 noundef %conv203) #11
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i322, i32 noundef 0) #11
  br label %out

if.end223:                                        ; preds = %cleanup.thread, %if.then170, %if.then138, %if.then119
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %118 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_rx_napi(ptr noundef %119, ptr noundef null, ptr noundef nonnull %call.i322, ptr noundef %napi) #11
  br label %out

out:                                              ; preds = %if.end223, %cleanup
  %call.i328 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i328, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i331

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i331:                               ; preds = %out
  %call1.i329 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i329)
  %tobool.not.i330 = icmp eq i32 %call1.i329, 0
  br i1 %tobool.not.i330, label %land.lhs.true.i331.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i333

land.lhs.true.i331.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i331
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i333:                              ; preds = %land.lhs.true.i331
  %.b4.i332 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i332, label %land.lhs.true2.i333.rcu_read_unlock.exit_crit_edge, label %if.then.i334

land.lhs.true2.i333.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i333
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i334:                                     ; preds = %land.lhs.true2.i333
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i334, %land.lhs.true2.i333.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i331.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !147
  %120 = tail call i32 @llvm.read_register.i32(metadata !135) #11
  %and.i.i.i.i.i335 = and i32 %120, -16384
  %121 = inttoptr i32 %and.i.i.i.i.i335 to ptr
  %preempt_count.i.i.i.i336 = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %preempt_count.i.i.i.i336 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %preempt_count.i.i.i.i336, align 4
  %sub.i.i.i = add i32 %123, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i336, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cleanup224

cleanup224:                                       ; preds = %rcu_read_unlock.exit, %do.end53, %if.end28.cleanup224_crit_edge, %if.end.cleanup224_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %phy_data) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_napi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rx_frame_release(ptr noundef %mvm, ptr noundef %napi, ptr nocapture noundef readonly %rxb, i32 noundef %queue) local_unnamed_addr #0 align 64 {
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
  %8 = and i32 %7, -62980096
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %8)
  %cmp = icmp eq i32 %8, 67108864
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !148

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data, align 2
  %nssn = getelementptr inbounds %struct.iwl_frame_release, ptr %data, i32 0, i32 2
  %11 = ptrtoint ptr %nssn to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %nssn, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  tail call fastcc void @iwl_mvm_release_frames_from_notif(ptr noundef %mvm, ptr noundef %napi, i8 noundef zeroext %10, i16 noundef zeroext %13, i32 noundef %queue, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_release_frames_from_notif(ptr noundef %mvm, ptr noundef %napi, i8 noundef zeroext %baid, i16 noundef zeroext %nssn, i32 noundef %queue, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mvm, align 8
  %conv = zext i8 %baid to i32
  %conv2 = zext i16 %nssn to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 67108864, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_release_frames_from_notif, ptr noundef nonnull @.str.46, i32 noundef %conv, i32 noundef %conv2) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %baid)
  %cmp8 = icmp ugt i8 %baid, 31
  br i1 %cmp8, label %land.rhs, label %if.end50

land.rhs:                                         ; preds = %entry
  %.b211 = load i1, ptr @iwl_mvm_release_frames_from_notif.__already_done, align 1
  br i1 %.b211, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !149

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_release_frames_from_notif.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 784, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end50:                                         ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !135) #11
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !146
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.end50.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end50.rcu_read_lock.exit_crit_edge:            ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end50
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end50.rcu_read_lock.exit_crit_edge
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 167, i32 %conv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx, align 4
  %call = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool56.not = icmp eq i32 %call, 0
  br i1 %tobool56.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end64_crit_edge

rcu_read_lock.exit.do.end64_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end64

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call57 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %land.lhs.true.do.end64_crit_edge, label %land.lhs.true59

land.lhs.true.do.end64_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end64

land.lhs.true59:                                  ; preds = %land.lhs.true
  %.b205210 = load i1, ptr @iwl_mvm_release_frames_from_notif.__warned, align 1
  br i1 %.b205210, label %land.lhs.true59.do.end64_crit_edge, label %if.then61

land.lhs.true59.do.end64_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end64

if.then61:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_release_frames_from_notif.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 789, ptr noundef nonnull @.str.1) #11
  br label %do.end64

do.end64:                                         ; preds = %if.then61, %land.lhs.true59.do.end64_crit_edge, %land.lhs.true.do.end64_crit_edge, %rcu_read_lock.exit.do.end64_crit_edge
  %tobool66.not = icmp eq ptr %7, null
  br i1 %tobool66.not, label %if.then67, label %if.end102

if.then67:                                        ; preds = %do.end64
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool69.not = icmp eq i32 %and, 0
  br i1 %tobool69.not, label %do.end87, label %if.then67.out_crit_edge, !prof !148

if.then67.out_crit_edge:                          ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end87:                                         ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 792, i32 noundef 9, ptr noundef nonnull @.str.47, i32 noundef %conv) #11
  br label %out

if.end102:                                        ; preds = %do.end64
  %sta_id = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %sta_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sta_id, align 8
  %idxprom107 = zext i8 %9 to i32
  %arrayidx108 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %idxprom107
  %10 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %arrayidx108, align 4
  %call110 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %land.lhs.true112, label %if.end102.do.end120_crit_edge

if.end102.do.end120_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end120

land.lhs.true112:                                 ; preds = %if.end102
  %call113 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %land.lhs.true112.do.end120_crit_edge, label %land.lhs.true115

land.lhs.true112.do.end120_crit_edge:             ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end120

land.lhs.true115:                                 ; preds = %land.lhs.true112
  %.b206209 = load i1, ptr @iwl_mvm_release_frames_from_notif.__warned.48, align 1
  br i1 %.b206209, label %land.lhs.true115.do.end120_crit_edge, label %if.then117

land.lhs.true115.do.end120_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end120

if.then117:                                       ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_release_frames_from_notif.__warned.48, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 796, ptr noundef nonnull @.str.1) #11
  br label %do.end120

do.end120:                                        ; preds = %if.then117, %land.lhs.true115.do.end120_crit_edge, %land.lhs.true112.do.end120_crit_edge, %if.end102.do.end120_crit_edge
  %tobool.not.i214 = icmp eq ptr %11, null
  %cmp.i = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i214, %cmp.i
  br i1 %spec.select.i, label %land.rhs131, label %if.end179.critedge

land.rhs131:                                      ; preds = %do.end120
  %.b207208 = load i1, ptr @iwl_mvm_release_frames_from_notif.__already_done.49, align 1
  br i1 %.b207208, label %land.rhs131.out_crit_edge, label %if.then142, !prof !149

land.rhs131.out_crit_edge:                        ; preds = %land.rhs131
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then142:                                       ; preds = %land.rhs131
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_release_frames_from_notif.__already_done.49, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 797, i32 noundef 9, ptr noundef null) #11
  br label %out

if.end179.critedge:                               ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx181 = getelementptr %struct.iwl_mvm_baid_data, ptr %7, i32 0, i32 11, i32 %queue
  %lock = getelementptr %struct.iwl_mvm_baid_data, ptr %7, i32 0, i32 11, i32 %queue, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  tail call fastcc void @iwl_mvm_release_frames(ptr noundef %mvm, ptr noundef nonnull %11, ptr noundef %napi, ptr noundef nonnull %7, ptr noundef %arrayidx181, i16 noundef zeroext %nssn, i32 noundef %flags)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  br label %out

out:                                              ; preds = %if.end179.critedge, %if.then142, %land.rhs131.out_crit_edge, %do.end87, %if.then67.out_crit_edge
  %call.i215 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i215, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i218

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i218:                               ; preds = %out
  %call1.i216 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i216)
  %tobool.not.i217 = icmp eq i32 %call1.i216, 0
  br i1 %tobool.not.i217, label %land.lhs.true.i218.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i220

land.lhs.true.i218.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i218
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i220:                              ; preds = %land.lhs.true.i218
  %.b4.i219 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i219, label %land.lhs.true2.i220.rcu_read_unlock.exit_crit_edge, label %if.then.i221

land.lhs.true2.i220.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i220
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i221:                                     ; preds = %land.lhs.true2.i220
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i221, %land.lhs.true2.i220.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i218.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !147
  %12 = tail call i32 @llvm.read_register.i32(metadata !135) #11
  %and.i.i.i.i.i222 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i222 to ptr
  %preempt_count.i.i.i.i223 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i223 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i223, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i223, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_rx_bar_frame_release(ptr noundef %mvm, ptr noundef %napi, ptr nocapture noundef readonly %rxb, i32 noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i165 = tail call ptr @page_address(ptr noundef %1) #11
  %2 = ptrtoint ptr %call.i165 to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  %ba_info = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %6 = ptrtoint ptr %ba_info to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %ba_info, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #11
  %and.i = lshr i32 %8, 24
  %div4.i176 = and i32 %and.i, 63
  %9 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %data, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  %div4.i163.lhs.trunc = lshr i32 %11, 4
  %div4.i163175177 = and i32 %div4.i163.lhs.trunc, 31
  %and.i164 = and i32 %11, 15
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %5, align 1
  %14 = and i32 %13, -12648448
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  %sub.i = add nsw i32 %15, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i)
  %cmp = icmp ult i32 %sub.i, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !148

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %div4.i176)
  %cmp10 = icmp ugt i32 %div4.i176, 31
  br i1 %cmp10, label %land.rhs, label %if.end57

land.rhs:                                         ; preds = %if.end
  %.b159 = load i1, ptr @iwl_mvm_rx_bar_frame_release.__already_done, align 1
  br i1 %.b159, label %land.rhs.cleanup_crit_edge, label %if.then25, !prof !149

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then25:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_rx_bar_frame_release.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2222, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end57:                                         ; preds = %if.end
  %16 = tail call i32 @llvm.read_register.i32(metadata !135) #11
  %and.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !146
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.end57.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end57.rcu_read_lock.exit_crit_edge:            ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end57
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 696, ptr noundef nonnull @.str.28) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end57.rcu_read_lock.exit_crit_edge
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 167, i32 %div4.i176
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %arrayidx, align 4
  %call63 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end72_crit_edge

rcu_read_lock.exit.do.end72_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end72

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call65 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %land.lhs.true.do.end72_crit_edge, label %land.lhs.true67

land.lhs.true.do.end72_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end72

land.lhs.true67:                                  ; preds = %land.lhs.true
  %.b157158 = load i1, ptr @iwl_mvm_rx_bar_frame_release.__warned, align 1
  br i1 %.b157158, label %land.lhs.true67.do.end72_crit_edge, label %if.then69

land.lhs.true67.do.end72_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end72

if.then69:                                        ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_rx_bar_frame_release.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2226, ptr noundef nonnull @.str.1) #11
  br label %do.end72

do.end72:                                         ; preds = %if.then69, %land.lhs.true67.do.end72_crit_edge, %land.lhs.true.do.end72_crit_edge, %rcu_read_lock.exit.do.end72_crit_edge
  %tobool74.not = icmp eq ptr %21, null
  br i1 %tobool74.not, label %do.end79, label %if.end82

do.end79:                                         ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %23, i32 noundef 16777216, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_rx_bar_frame_release, ptr noundef nonnull @.str.25, i32 noundef %div4.i176) #11
  br label %out

if.end82:                                         ; preds = %do.end72
  %tid84 = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %tid84 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %tid84, align 1
  %conv = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i164, i32 %conv)
  %cmp85.not = icmp eq i32 %and.i164, %conv
  br i1 %cmp85.not, label %lor.rhs87, label %if.end82.do.end108_crit_edge

if.end82.do.end108_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end108

lor.rhs87:                                        ; preds = %if.end82
  %sta_id88 = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %sta_id88 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sta_id88, align 8
  %conv89 = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div4.i163175177, i32 %conv89)
  %cmp90.not = icmp eq i32 %div4.i163175177, %conv89
  br i1 %cmp90.not, label %if.end128.critedge, label %lor.rhs87.do.end108_crit_edge, !prof !149

lor.rhs87.do.end108_crit_edge:                    ; preds = %lor.rhs87
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end108

do.end108:                                        ; preds = %lor.rhs87.do.end108_crit_edge, %if.end82.do.end108_crit_edge
  %sta_id109 = getelementptr inbounds %struct.iwl_mvm_baid_data, ptr %21, i32 0, i32 1
  %28 = ptrtoint ptr %sta_id109 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sta_id109, align 8
  %conv110 = zext i8 %29 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2237, i32 noundef 9, ptr noundef nonnull @.str.26, i32 noundef %div4.i176, i32 noundef %conv110, i32 noundef %conv, i32 noundef %div4.i163175177, i32 noundef %and.i164) #11
  br label %out

if.end128.critedge:                               ; preds = %lor.rhs87
  call void @__sanitizer_cov_trace_pc() #13
  %conv129 = trunc i32 %div4.i176 to i8
  %30 = trunc i32 %8 to i16
  %conv130 = and i16 %30, 4095
  tail call fastcc void @iwl_mvm_release_frames_from_notif(ptr noundef %mvm, ptr noundef %napi, i8 noundef zeroext %conv129, i16 noundef zeroext %conv130, i32 noundef %queue, i32 noundef 0)
  br label %out

out:                                              ; preds = %if.end128.critedge, %do.end108, %do.end79
  %call.i166 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i166, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i169

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i169:                               ; preds = %out
  %call1.i167 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i167)
  %tobool.not.i168 = icmp eq i32 %call1.i167, 0
  br i1 %tobool.not.i168, label %land.lhs.true.i169.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i171

land.lhs.true.i169.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i169
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i171:                              ; preds = %land.lhs.true.i169
  %.b4.i170 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i170, label %land.lhs.true2.i171.rcu_read_unlock.exit_crit_edge, label %if.then.i172

land.lhs.true2.i171.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i171
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i172:                                     ; preds = %land.lhs.true2.i171
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 724, ptr noundef nonnull @.str.29) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i172, %land.lhs.true2.i171.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i169.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !147
  %31 = tail call i32 @llvm.read_register.i32(metadata !135) #11
  %and.i.i.i.i.i173 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i173 to ptr
  %preempt_count.i.i.i.i174 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i174 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i174, align 4
  %sub.i.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i174, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.then25, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
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
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
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
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_rx_mgmt_prot(ptr noundef readonly %sta, ptr nocapture noundef readonly %hdr, ptr nocapture noundef readonly %desc, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %desc, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  %and = and i32 %status, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %hdr, align 2
  %5 = and i16 %4, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %5)
  %cmp.i = icmp eq i16 %5, -32768
  br i1 %cmp.i, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %and4 = and i32 %status, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %and7 = and i32 %status, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %and9 = and i32 %status, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %not.tobool8.not = xor i1 %tobool8.not, true
  %6 = and i1 %tobool10.not, %not.tobool8.not
  br i1 %6, label %if.end6.cleanup_crit_edge, label %if.end15, !prof !149

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %tobool16.not = icmp eq ptr %sta, null
  br i1 %tobool16.not, label %if.end15.cleanup_crit_edge, label %if.end18

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.end15
  %vif = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 17, i32 28, i32 10
  %7 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vif, align 8
  %bcn_prot = getelementptr inbounds %struct.ieee80211_vif, ptr %8, i32 2, i32 1, i32 26, i32 2
  %9 = ptrtoint ptr %bcn_prot to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %bcn_prot, align 8
  %call22 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true, label %if.end18.do.end31_crit_edge

if.end18.do.end31_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31

land.lhs.true:                                    ; preds = %if.end18
  %call24 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true.do.end31_crit_edge, label %land.lhs.true26

land.lhs.true.do.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31

land.lhs.true26:                                  ; preds = %land.lhs.true
  %.b149 = load i1, ptr @iwl_mvm_rx_mgmt_prot.__warned, align 1
  br i1 %.b149, label %land.lhs.true26.do.end31_crit_edge, label %if.then28

land.lhs.true26.do.end31_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31

if.then28:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_rx_mgmt_prot.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 340, ptr noundef nonnull @.str.1) #11
  br label %do.end31

do.end31:                                         ; preds = %if.then28, %land.lhs.true26.do.end31_crit_edge, %land.lhs.true.do.end31_crit_edge, %if.end18.do.end31_crit_edge
  %tobool33.not = icmp eq ptr %10, null
  br i1 %tobool33.not, label %if.then34, label %do.end31.if.end58_crit_edge

do.end31.if.end58_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then34:                                        ; preds = %do.end31
  %arrayidx41 = getelementptr %struct.ieee80211_vif, ptr %8, i32 2, i32 1, i32 26, i32 3
  %11 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %arrayidx41, align 4
  %call43 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %land.lhs.true45, label %if.then34.do.end53_crit_edge

if.then34.do.end53_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end53

land.lhs.true45:                                  ; preds = %if.then34
  %call46 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %land.lhs.true45.do.end53_crit_edge, label %land.lhs.true48

land.lhs.true45.do.end53_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end53

land.lhs.true48:                                  ; preds = %land.lhs.true45
  %.b145148 = load i1, ptr @iwl_mvm_rx_mgmt_prot.__warned.37, align 1
  br i1 %.b145148, label %land.lhs.true48.do.end53_crit_edge, label %if.then50

land.lhs.true48.do.end53_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end53

if.then50:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_rx_mgmt_prot.__warned.37, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 342, ptr noundef nonnull @.str.1) #11
  br label %do.end53

do.end53:                                         ; preds = %if.then50, %land.lhs.true48.do.end53_crit_edge, %land.lhs.true45.do.end53_crit_edge, %if.then34.do.end53_crit_edge
  %tobool55.not = icmp eq ptr %12, null
  br i1 %tobool55.not, label %do.end53.cleanup_crit_edge, label %do.end53.if.end58_crit_edge

do.end53.if.end58_crit_edge:                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

do.end53.cleanup_crit_edge:                       ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end58:                                         ; preds = %do.end53.if.end58_crit_edge, %do.end31.if.end58_crit_edge
  %key.0 = phi ptr [ %10, %do.end31.if.end58_crit_edge ], [ %12, %do.end53.if.end58_crit_edge ]
  %icv_len = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key.0, i32 0, i32 2
  %13 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %icv_len, align 4
  %conv59 = zext i8 %14 to i32
  %add60 = add nuw nsw i32 %conv59, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add60, i32 %conv)
  %cmp61 = icmp ugt i32 %add60, %conv
  br i1 %cmp61, label %if.end58.cleanup_crit_edge, label %if.end64

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end64:                                         ; preds = %if.end58
  %sub = add nsw i32 %conv, -8
  %sub68 = sub nsw i32 %sub, %conv59
  %arrayidx69 = getelementptr i8, ptr %hdr, i32 %sub68
  %15 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %16 to i32
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key.0, i32 0, i32 5
  %17 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %keyidx, align 1
  %conv71 = sext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv70, i32 %conv71)
  %cmp72.not = icmp eq i32 %conv70, %conv71
  br i1 %cmp72.not, label %if.end64.if.end109_crit_edge, label %if.then74

if.end64.if.end109_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

if.then74:                                        ; preds = %if.end64
  %19 = and i8 %16, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %19)
  %switch = icmp eq i8 %19, 6
  br i1 %switch, label %if.end83, label %if.then74.cleanup_crit_edge

if.then74.cleanup_crit_edge:                      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end83:                                         ; preds = %if.then74
  %sub91 = add nsw i32 %conv70, -6
  %arrayidx92 = getelementptr [2 x ptr], ptr %bcn_prot, i32 0, i32 %sub91
  %20 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %arrayidx92, align 4
  %call94 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %land.lhs.true96, label %if.end83.do.end104_crit_edge

if.end83.do.end104_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end104

land.lhs.true96:                                  ; preds = %if.end83
  %call97 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %land.lhs.true96.do.end104_crit_edge, label %land.lhs.true99

land.lhs.true96.do.end104_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end104

land.lhs.true99:                                  ; preds = %land.lhs.true96
  %.b146147 = load i1, ptr @iwl_mvm_rx_mgmt_prot.__warned.38, align 1
  br i1 %.b146147, label %land.lhs.true99.do.end104_crit_edge, label %if.then101

land.lhs.true99.do.end104_crit_edge:              ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end104

if.then101:                                       ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @iwl_mvm_rx_mgmt_prot.__warned.38, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 360, ptr noundef nonnull @.str.1) #11
  br label %do.end104

do.end104:                                        ; preds = %if.then101, %land.lhs.true99.do.end104_crit_edge, %land.lhs.true96.do.end104_crit_edge, %if.end83.do.end104_crit_edge
  %tobool106.not = icmp eq ptr %21, null
  br i1 %tobool106.not, label %do.end104.cleanup_crit_edge, label %do.end104.if.end109_crit_edge

do.end104.if.end109_crit_edge:                    ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

do.end104.cleanup_crit_edge:                      ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end109:                                        ; preds = %do.end104.if.end109_crit_edge, %if.end64.if.end109_crit_edge
  %key.1 = phi ptr [ %21, %do.end104.if.end109_crit_edge ], [ %key.0, %if.end64.if.end109_crit_edge ]
  br i1 %tobool8.not, label %if.then112, label %if.else

if.then112:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ieee80211_key_mic_failure(ptr noundef nonnull %key.1) #11
  br label %cleanup

if.else:                                          ; preds = %if.end109
  br i1 %tobool10.not, label %if.else.cleanup_crit_edge, label %if.then115

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then115:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ieee80211_key_replay(ptr noundef nonnull %key.1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then115, %if.else.cleanup_crit_edge, %if.then112, %do.end104.cleanup_crit_edge, %if.then74.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %do.end53.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -1, %if.end3.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ -1, %if.end15.cleanup_crit_edge ], [ -1, %do.end53.cleanup_crit_edge ], [ -1, %if.end58.cleanup_crit_edge ], [ -1, %if.then74.cleanup_crit_edge ], [ -1, %do.end104.cleanup_crit_edge ], [ -1, %if.else.cleanup_crit_edge ], [ -1, %if.then115 ], [ -1, %if.then112 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_key_mic_failure(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_key_replay(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_add_rx_frag(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_rx_ba_session(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone willreturn }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50, !52, !54, !56, !58, !59, !61, !63, !64, !65, !67, !68, !70, !71, !73, !75, !77, !79, !81, !83, !85, !86, !88, !89, !91, !93, !95, !97, !99, !101, !103, !104, !106, !108, !109, !111, !113, !115, !117, !119, !120, !122, !124, !125, !127, !129, !131, !133}
!llvm.named.register.sp = !{!135}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 710, i32 9}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__func__.iwl_mvm_reorder_timer_expired, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 714, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 831, i32 6}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 839, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 845, i32 3}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 848, i32 7}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 855, i32 7}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 863, i32 3}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 867, i32 3}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__func__.iwl_mvm_rx_mpdu_mq, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 1691, i32 3}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 1721, i32 3}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 1729, i32 3}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 1747, i32 3}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 1790, i32 3}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 1854, i32 8}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 1855, i32 10}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 1877, i32 4}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 1999, i32 7}
!47 = !{ptr @__func__.iwl_mvm_rx_monitor_no_data, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 2058, i32 3}
!49 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 2061, i32 3}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 2221, i32 6}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 2226, i32 14}
!56 = !{ptr @__func__.iwl_mvm_rx_bar_frame_release, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 2228, i32 3}
!58 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 2234, i32 6}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!63 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 743, i32 6}
!70 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 748, i32 12}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 749, i32 6}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 752, i32 8}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 753, i32 6}
!79 = !{ptr @iwl_mvm_rx_he.known, !80, !"known", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 1468, i32 44}
!81 = !{ptr @iwl_mvm_rx_he.mu_known, !82, !"mu_known", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 1476, i32 47}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 1639, i32 3}
!85 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @__func__.iwl_mvm_get_signal_strength, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 284, i32 2}
!88 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 465, i32 4}
!91 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 340, i32 8}
!93 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 342, i32 9}
!95 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 360, i32 9}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/../fw/dbg.h", i32 121, i32 3}
!99 = distinct !{null, !100, !"__warned", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 1151, i32 9}
!101 = !{ptr @__func__.iwl_mvm_agg_rx_received, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 1153, i32 3}
!103 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!106 = distinct !{null, !107, !"__already_done", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 967, i32 6}
!108 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!109 = distinct !{null, !110, !"__warned", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 982, i32 14}
!111 = !{ptr @__func__.iwl_mvm_reorder, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 984, i32 3}
!113 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 990, i32 6}
!115 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 914, i32 3}
!117 = !{ptr @__func__.iwl_mvm_check_pn, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 72, i32 3}
!119 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!120 = distinct !{null, !121, !"__warned", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 82, i32 11}
!122 = !{ptr @__func__.iwl_mvm_release_frames_from_notif, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 780, i32 2}
!124 = !{ptr @.str.46, !123, !"<string literal>", i1 false, i1 false}
!125 = distinct !{null, !126, !"__already_done", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 783, i32 6}
!127 = distinct !{null, !128, !"__warned", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 789, i32 12}
!129 = !{ptr @.str.47, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 791, i32 3}
!131 = distinct !{null, !132, !"__warned", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 796, i32 8}
!133 = distinct !{null, !134, !"__already_done", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/rxmq.c", i32 797, i32 6}
!135 = !{!"sp"}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{i8 0, i8 2}
!146 = !{i64 2149732947}
!147 = !{i64 2149733213}
!148 = !{!"branch_weights", i32 1, i32 2000}
!149 = !{!"branch_weights", i32 2000, i32 1}
!150 = !{!"branch_weights", i32 1, i32 4001}
!151 = !{!"auto-init"}
!152 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!153 = !{!"branch_weights", i32 2000, i32 2002}
!154 = !{i64 2153396109, i64 2153396593, i64 2153396146, i64 2153396202, i64 2153396236, i64 2153396260, i64 2153396301, i64 2153396322, i64 2153396350, i64 2153396384}
!155 = !{i64 2148436310, i64 2148436336, i64 2148436365, i64 2148436399, i64 2148436430, i64 2148436453}
!156 = !{i64 2148918125, i64 2148918130, i64 2148918143, i64 2148918187, i64 2148918221, i64 2148918242}
